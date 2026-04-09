<?php
require_once __DIR__ . '/../config/database.php';
$conn = getConnection();
if (!$conn) die("Database connection failed");

// Auto-initialize table if missing
$conn->query("CREATE TABLE IF NOT EXISTS loan_requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    loan_amount DECIMAL(15, 2) NOT NULL,
    total_disbursed DECIMAL(15, 2) NOT NULL,
    interest_rate DECIMAL(5, 2) NOT NULL,
    number_of_instalments INT NOT NULL,
    management_fee_rate DECIMAL(5, 2) NOT NULL DEFAULT 5.50,
    deduct_fee_from_disbursed TINYINT(1) DEFAULT 1,
    mgmt_fee_first_month_only TINYINT(1) DEFAULT 0,
    requested_amount DECIMAL(15, 2) DEFAULT 0.00,
    is_requested_paid_upfront TINYINT(1) DEFAULT 0,
    status ENUM('Pending', 'Approved', 'Rejected', 'Disbursed') DEFAULT 'Pending',
    admin_note TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
)");

// Ensure partial payment column exists
$conn->query("ALTER TABLE loan_requests ADD COLUMN IF NOT EXISTS requested_amount_paid DECIMAL(15, 2) DEFAULT 0.00");

function parseMoney($moneyString) {
    return floatval(str_replace(',', '', $moneyString));
}

function formatMoney($amount, $decimals = 0) {
    return number_format($amount, $decimals, '.', ',');
}

$success_message = '';
$error_message = '';

// Get customer ID from URL or POST
$customer_id = isset($_GET['cid']) ? intval($_GET['cid']) : (isset($_POST['customer_id']) ? intval($_POST['customer_id']) : 0);

// Fetch customer logic
$customer_name = '';
$pre_requested_amount = 0;
$pre_loan_duration = 6;
if ($customer_id > 0) {
    $c_stmt = $conn->prepare("SELECT customer_name, requested_amount, loan_duration FROM customers WHERE customer_id = ?");
    $c_stmt->bind_param("i", $customer_id);
    $c_stmt->execute();
    $c_res = $c_stmt->get_result();
    if ($c_row = $c_res->fetch_assoc()) {
        $customer_name = $c_row['customer_name'];
        $pre_requested_amount = $c_row['requested_amount'];
        $pre_loan_duration = $c_row['loan_duration'] ?: 6;
    }
}

// Handle Form Submission
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit_request'])) {
    $cid = intval($_POST['customer_id']);
    $amt = parseMoney($_POST['loan_amount']);
    $rate = floatval($_POST['interest_rate']);
    $inst = intval($_POST['duration']);
    $mgmt_r = floatval($_POST['mgmt_fee_rate']);
    $deduct_f = isset($_POST['deduct_fee']) ? 1 : 0;
    $mgmt_first = isset($_POST['mgmt_first_month']) ? 1 : 0;
    
    $req_amt = parseMoney($_POST['requested_amount_fee']);
    $req_paid = parseMoney($_POST['req_amt_paid'] ?? '0');
    
    // VALIDATION: Prevent overpayment
    if ($req_paid > $req_amt) {
        $error_message = "Error: Amount paid upfront (FRW " . formatMoney($req_paid) . ") cannot exceed the total fee (FRW " . formatMoney($req_amt) . ").";
        $cid = 0; // Trigger error block below
    }

    $is_paid_fully = ($req_paid >= $req_amt) ? 1 : 0;
    $total_d = $amt; 
    
    if ($cid <= 0 || $amt <= 0) {
        if (!$error_message) $error_message = "Please select a member and enter a valid loan amount.";
    } else {
        $prep = "INSERT INTO loan_requests (customer_id, loan_amount, total_disbursed, interest_rate, number_of_instalments, 
                                         management_fee_rate, deduct_fee_from_disbursed, mgmt_fee_first_month_only, 
                                         requested_amount, requested_amount_paid, is_requested_paid_upfront, status) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'Pending')";
        $stmt = $conn->prepare($prep);
        $stmt->bind_param("idddidddddi", $cid, $amt, $total_d, $rate, $inst, $mgmt_r, $deduct_f, $mgmt_first, $req_amt, $req_paid, $is_paid_fully);
        
        
        if ($stmt->execute()) {
            $new_request_id = $conn->insert_id;
            
            // --- IMMEDIATE LEDGER RECORDING for full 2% Processing Fee ---
            if ($req_amt > 0) {
                require_once __DIR__ . '/../includes/approval_helper.php';
                $p_date = date('Y-m-d');
                $narration = "Processing Fee (2%) - Req #" . $new_request_id;
                // ONLY record manual ledger entries if cash was ACTUALLY paid upfront
                if ($req_paid > 0) {
                    $c_beg = _helper_getBeginningBalance($conn, '1101', $p_date);
                    // 1. Debit Cash (1101) for the part paid now
                    _helper_createLedgerEntry($conn, [
                        'transaction_date' => $p_date,
                        'class' => 'Assets',
                        'account_code' => '1101',
                        'account_name' => 'Cash on Hand',
                        'particular' => 'Processing Fee (Upfront Payment)',
                        'voucher_number' => 'REQ-' . $new_request_id,
                        'narration' => $narration,
                        'beginning_balance' => $c_beg,
                        'debit_amount' => $req_paid,
                        'credit_amount' => 0,
                        'movement' => $req_paid,
                        'ending_balance' => $c_beg + $req_paid,
                        'reference_type' => 'loan_request_fee',
                        'reference_id' => $new_request_id,
                        'created_by' => $_SESSION['user_id'] ?? 1
                    ]);

                    // 2. Credit Fee Income (4203) ONLY for the part actually paid
                    $r_inc_beg = _helper_getBeginningBalance($conn, '4203', $p_date);
                    _helper_createLedgerEntry($conn, [
                        'transaction_date' => $p_date,
                        'class' => 'Fee Income',
                        'account_code' => '4203',
                        'account_name' => 'Requested Amount Income (2%)',
                        'particular' => 'Processing Fee Recognized (Upfront)',
                        'voucher_number' => 'REQ-' . $new_request_id,
                        'narration' => $narration,
                        'beginning_balance' => $r_inc_beg,
                        'debit_amount' => 0,
                        'credit_amount' => $req_paid,
                        'movement' => $req_paid,
                        'ending_balance' => $r_inc_beg + $req_paid,
                        'reference_type' => 'loan_request_fee',
                        'reference_id' => $new_request_id,
                        'created_by' => $_SESSION['user_id'] ?? 1
                    ]);
                }
            }
            $success_message = "Loan request submitted successfully for review!";
            echo "<script>setTimeout(() => window.location.href='?page=loan_requests', 2000);</script>";
        } else {
            $error_message = "Error: " . $stmt->error;
        }
    }
}

// Fetch all approved members for selection if not pre-selected
$members = $conn->query("SELECT customer_id, customer_name, customer_code FROM customers WHERE status = 'Approved' ORDER BY customer_name ASC");

?>

<div class="row mb-4 animate-in">
    <div class="col-12 py-3 d-flex justify-content-between align-items-center">
        <div>
            <h2 class="h4 fw-bold text-primary mb-1"><i class="bi bi-file-earmark-plus-fill me-2"></i> Create Loan Request</h2>
            <p class="text-muted small">Enter the loan parameters for review and assessment.</p>
        </div>
        <a href="?page=customers" class="btn btn-outline-secondary btn-sm rounded-pill px-3">
            <i class="bi bi-arrow-left"></i> Back to Members
        </a>
    </div>
</div>

<?php if ($success_message): ?>
    <div class="alert alert-success border-0 shadow-sm rounded-4 mb-4" role="alert">
        <i class="bi bi-check-circle-fill me-2"></i> <?php echo $success_message; ?>
    </div>
<?php endif; ?>

<?php if ($error_message): ?>
    <div class="alert alert-danger border-0 shadow-sm rounded-4 mb-4" role="alert">
        <i class="bi bi-exclamation-triangle-fill me-2"></i> <?php echo $error_message; ?>
    </div>
<?php endif; ?>

<div class="row">
    <div class="col-lg-10 mx-auto">
        <div class="card border-0 shadow-premium rounded-5 overflow-hidden glass-card">
            <div class="card-header bg-gradient-primary text-white py-4 px-5 border-0">
                <div class="d-flex align-items-center">
                    <div class="icon-box-white me-3">
                        <i class="bi bi-calculator fs-4"></i>
                    </div>
                    <div>
                        <h5 class="mb-0 fw-bold">Loan Study & Parameters</h5>
                        <p class="mb-0 opacity-75 small uppercase tracking-wider">Fill in the details for risk assessment</p>
                    </div>
                </div>
            </div>
            <div class="card-body p-5">
                <form method="POST" id="loanRequestForm">
                    <div class="row g-4">
                        <!-- Member Selection -->
                        <div class="col-md-12">
                            <label class="form-label fw-bold text-dark d-flex justify-content-between">
                                <span>Target Member</span>
                                <span class="text-primary small">Locked for security</span>
                            </label>
                            <?php if ($customer_id > 0): ?>
                            <!-- Pre-selected Customer View -->
                            <div class="p-3 bg-light rounded-4 border-dashed d-flex align-items-center justify-content-between" style="color: #000 !important;">
                                <div class="d-flex align-items-center">
                                    <div class="avatar-sm bg-primary text-white me-3"><?php echo strtoupper(substr($customer_name, 0, 1) ?: 'C'); ?></div>
                                    <div>
                                        <div class="fw-bold fs-5" style="color: #000 !important;"><?php echo htmlspecialchars($customer_name); ?></div>
                                        <div class="text-muted x-small">ID #<?php echo $customer_id; ?></div>
                                    </div>
                                </div>
                                <a href="?page=add_loan_request" class="btn btn-sm btn-outline-secondary rounded-pill">Change</a>
                            </div>
                            <input type="hidden" name="customer_id" value="<?php echo $customer_id; ?>">
                            <?php else: ?>
                            <!-- Searchable Dropdown if no CID -->
                            <select name="customer_id" class="form-select rounded-4 py-3 shadow-none border-2 border-primary-soft select2-active" style="color: #000 !important; font-weight: 700 !important;" required>
                                <option value="" style="color: #000 !important;">Choose a member to study...</option>
                                <?php 
                                $cust_sql = "SELECT customer_id, customer_name, customer_code FROM customers WHERE status = 'Approved' ORDER BY customer_name";
                                $cust_res = $conn->query($cust_sql);
                                while ($c = $cust_res->fetch_assoc()):
                                ?>
                                    <option value="<?php echo $c['customer_id']; ?>" style="color: #000 !important;">
                                        <?php echo htmlspecialchars($c['customer_name']) . " (" . $c['customer_code'] . ")"; ?>
                                    </option>
                                <?php endwhile; ?>
                            </select>
                            <?php endif; ?>
                        </div>

                        <!-- Loan Amount & Rate -->
                        <div class="col-md-6 mt-5">
                            <label class="form-label fw-bold text-dark">Loan Principal (RWF)</label>
                            <div class="input-group">
                                <span class="input-group-text bg-white border-end-0 rounded-start-4 ps-3 py-3 text-muted">FRW</span>
                                <input type="text" name="loan_amount" id="loan_amount" class="form-control border-start-0 rounded-end-4 py-3 fw-bold fs-5" placeholder="0.00" onkeyup="formatAndCalc()" value="<?php echo number_format($pre_requested_amount); ?>">
                            </div>
                        </div>
                        
                        <div class="col-md-3 mt-5">
                            <label class="form-label fw-bold text-dark">Interest Rate (%)</label>
                            <input type="number" step="0.01" name="interest_rate" class="form-control rounded-4 py-3 fw-bold" value="5.5">
                        </div>

                        <div class="col-md-3 mt-5">
                            <label class="form-label fw-bold text-dark">Duration (Months)</label>
                            <input type="number" name="duration" class="form-control rounded-4 py-3 fw-bold" value="<?php echo $pre_loan_duration; ?>">
                        </div>

                        <!-- Fees Section Header -->
                        <div class="col-12 mt-5">
                            <div class="d-flex align-items-center">
                                <hr class="flex-grow-1 op-20">
                                <span class="px-3 small text-muted fw-bold uppercase tracking-wider">Management & Processing Fees</span>
                                <hr class="flex-grow-1 op-20">
                            </div>
                        </div>

                        <div class="col-md-4 mt-4">
                            <label class="form-label fw-bold text-dark">Management Fee (%)</label>
                            <input type="number" step="0.1" name="mgmt_fee_rate" id="mgmt_rate" class="form-control rounded-4 py-3" value="5.5" onchange="formatAndCalc()">
                        </div>

                        <div class="col-md-8 mt-4">
                            <label class="form-label fw-bold text-dark opacity-0">Options</label>
                            <div class="d-flex gap-3 h-100 align-items-center">
                                <div class="form-check form-switch card-style-check p-2 px-3 rounded-4 flex-grow-1 bg-light border">
                                    <input class="form-check-input ms-0 me-2" type="checkbox" name="deduct_fee" id="deduct_fee" checked>
                                    <label class="form-check-label small fw-bold mt-1" for="deduct_fee">Deduct from Disbursed</label>
                                </div>
                                <div class="form-check form-switch card-style-check p-2 px-3 rounded-4 flex-grow-1 bg-light border">
                                    <input class="form-check-input ms-0 me-2" type="checkbox" name="mgmt_first_month" id="mgmt_first_month">
                                    <label class="form-check-label small fw-bold mt-1" for="mgmt_first_month">First Month Only</label>
                                </div>
                            </div>
                        </div>

                        <!-- Requested Amount (The 2% Fee) -->
                        <div class="col-12 mt-5">
                            <div class="p-4 bg-primary-soft rounded-5 border-2 border-dashed border-primary">
                                <div class="row g-4 align-items-center">
                                    <div class="col-md-4">
                                        <label class="form-label fw-black text-primary uppercase" style="font-size: 0.7rem; letter-spacing: 1px; color: #000 !important;">Total 2% Fee (Calculated)</label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-white border-0 rounded-start-4 ps-3 py-3 text-primary"><i class="bi bi-tag-fill"></i></span>
                                            <input type="text" name="requested_amount_fee" id="requested_amount_fee" class="form-control border-0 rounded-end-4 py-3 fw-black text-primary fs-5 shadow-sm" style="color: #0d6efd !important;" readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="form-label fw-black text-success uppercase" style="font-size: 0.7rem; letter-spacing: 1px; color: #000 !important;">Amount Paid Upfront</label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-white border-0 rounded-start-4 ps-3 py-3 text-success"><i class="bi bi-cash-stack"></i></span>
                                            <input type="text" name="req_amt_paid" id="req_amt_paid" class="form-control border-0 rounded-end-4 py-3 fw-black text-success fs-5 shadow-sm" style="color: #198754 !important;" placeholder="0" onkeyup="formatMoneyInput(this); updateSummary()">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="form-label fw-black text-danger uppercase" style="font-size: 0.7rem; letter-spacing: 1px; color: #000 !important;">Remaining to Loan</label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-white border-0 rounded-start-4 ps-3 py-3 text-danger"><i class="bi bi-plus-circle"></i></span>
                                            <input type="text" id="req_amt_remaining" class="form-control border-0 rounded-end-4 py-3 fw-black text-danger fs-5 shadow-sm bg-light" style="color: #dc3545 !important;" readonly placeholder="0">
                                            <input type="hidden" name="is_requested_paid_upfront" id="is_requested_paid_upfront" value="0">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Summary Reveal -->
                        <div class="col-12 mt-5 animate-slide-up" id="summaryBox" style="display:none;">
                            <div class="p-4 rounded-5 bg-dark text-white shadow-lg d-flex justify-content-between align-items-center">
                                <div>
                                    <small class="text-white-50 uppercase tracking-widest fw-bold">Est. Total to Repay</small>
                                    <div class="h2 mb-0 fw-black text-brand-primary" id="totalRepayText">FRW 0</div>
                                </div>
                                <div class="text-end">
                                    <div class="small mb-1"><i class="bi bi-info-circle me-1"></i> Pre-Approval Simulation</div>
                                    <span class="badge bg-white text-dark rounded-pill px-3 py-2 fw-bold" id="disburseBadge">Disbursed: FRW 0</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 mt-5 text-center">
                            <button type="submit" name="submit_request" class="btn btn-primary btn-xl rounded-pill px-5 py-3 fw-black shadow-lg hover-scale">
                                <i class="bi bi-send-check me-2"></i> SUBMIT FOR STUDY
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<style>
.bg-gradient-primary { background: linear-gradient(135deg, #0d6efd 0%, #004dc7 100%); }
.glass-card { backdrop-filter: blur(10px); background: rgba(255, 255, 255, 0.95); }
.shadow-premium { box-shadow: 0 40px 80px rgba(0,0,0,0.1) !important; }
.bg-primary-soft { background-color: #f0f7ff; }
.border-primary-soft { border-color: #cfe2ff; }
.bg-success-soft { background-color: #e6f7ec; }
.icon-box-white { width: 50px; height: 50px; background: rgba(255,255,255,0.2); border-radius: 15px; display: flex; align-items: center; justify-content: center; }
.avatar-sm { width: 40px; height: 40px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: bold; }
.card-style-check { cursor: pointer; transition: all 0.2s; }
.card-style-check:hover { background-color: #fff !important; border-color: #0d6efd !important; }
.fw-black { font-weight: 900 !important; }
.btn-xl { font-size: 1.1rem; }
.hover-scale { transition: transform 0.2s; }
.hover-scale:hover { transform: translateY(-5px); }

@keyframes slideUp { from { transform: translateY(20px); opacity: 0; } to { transform: translateY(0); opacity: 1; } }
.animate-in { animation: slideUp 0.4s ease-out; }
.animate-slide-up { animation: slideUp 0.6s ease-out; }

:root {
    color-scheme: light !important;
}

/* Select2 Custom Styling for Premium Look & Visibility */
.select2-container--default .select2-selection--single {
    height: 60px !important;
    background-color: #fff !important;
    border: 2px solid #cfe2ff !important;
    border-radius: 1rem !important;
    padding: 12px !important;
    transition: all 0.2s;
}

/* BRUTE FORCE VISIBILITY FIX */
#loanRequestForm .form-label, 
#loanRequestForm label,
#loanRequestForm .fw-bold, 
#loanRequestForm .fw-black,
#loanRequestForm .text-dark,
#loanRequestForm .form-control,
#loanRequestForm .form-select,
#loanRequestForm select,
#loanRequestForm option,
.select2-selection__rendered,
.select2-results__option,
.select2-search__field {
    color: #000000 !important;
    font-weight: 700 !important;
    text-shadow: none !important;
    -webkit-text-fill-color: #000000 !important;
}

#loanRequestForm .text-muted {
    color: #444444 !important;
}

#loanRequestForm .avatar-sm {
    color: #ffffff !important;
}

/* Select2 Specifics */
.select2-container--default .select2-selection--single .select2-selection__rendered {
    color: #000000 !important;
    font-weight: 700 !important;
    line-height: 34px !important;
}
.select2-container--default .select2-selection--single .select2-selection__arrow {
    height: 58px !important;
}
.select2-dropdown {
    border-radius: 1rem !important;
    border: 2px solid #cfe2ff !important;
    box-shadow: 0 15px 35px rgba(0,0,0,0.1) !important;
    overflow: hidden;
}
.select2-results__option {
    padding: 12px 20px !important;
    font-weight: 500 !important;
}
.select2-results__option--highlighted[aria-selected] {
    background-color: #0d6efd !important;
    color: #fff !important; /* White text looks better when highlighted */
}
</style>

<script>
function formatMoney(num) {
    return num.toLocaleString('en-US', { minimumFractionDigits: 0, maximumFractionDigits: 0 });
}

function parseMoney(str) {
    return parseFloat(str.replace(/,/g, '')) || 0;
}

function formatAndCalc() {
    const input = document.getElementById('loan_amount');
    let val = parseMoney(input.value);
    if (isNaN(val)) val = 0;
    
    // Auto-calc Requested Amount (2%)
    const reqField = document.getElementById('requested_amount_fee');
    const reqAmt = Math.round(val * 0.02);
    reqField.value = formatMoney(reqAmt);
    
    updateSummary();
}

function updateSummary() {
    const amount = parseMoney(document.getElementById('loan_amount').value);
    if (amount <= 0) {
        document.getElementById('summaryBox').style.display = 'none';
        return;
    }
    
    document.getElementById('summaryBox').style.display = 'block';
    
    const mgmtRate = parseFloat(document.getElementById('mgmt_rate').value) || 0;
    const deductFee = document.getElementById('deduct_fee').checked;
    
    // Processing Fee (2%) Logic
    const fullReqAmt = Math.round(amount * 0.02);
    document.getElementById('requested_amount_fee').value = formatMoney(fullReqAmt);
    
    const reqPaidNow = parseMoney(document.getElementById('req_amt_paid').value);
    
    if (reqPaidNow > fullReqAmt) {
        alert("The amount paid upfront cannot be greater than the required 2% fee (FRW " + formatMoney(fullReqAmt) + ")");
        document.getElementById('req_amt_paid').value = formatMoney(fullReqAmt);
        updateSummary();
        return;
    }
    
    const remaining = Math.max(0, fullReqAmt - reqPaidNow);
    document.getElementById('req_amt_remaining').value = formatMoney(remaining);
    
    // Set internal flag for "Upfront" (1 if fully paid)
    document.getElementById('is_requested_paid_upfront').value = (reqPaidNow >= fullReqAmt) ? '1' : '0';
    
    let disbursed = amount;
    if (deductFee) {
        disbursed -= (amount * (mgmtRate / 100));
    }
    
    document.getElementById('totalRepayText').innerText = 'FRW ' + formatMoney(amount);
    document.getElementById('disburseBadge').innerText = 'Disbursed: FRW ' + formatMoney(disbursed);
}

function formatMoneyInput(el) {
    let cursor = el.selectionStart;
    let oldVal = el.value;
    let val = parseMoney(el.value);
    if (isNaN(val)) {
        el.value = '';
        return;
    }
    el.value = formatMoney(val);
    let diff = el.value.length - oldVal.length;
    el.setSelectionRange(cursor + diff, cursor + diff);
}

// Input formatting for loan_amount
document.getElementById('loan_amount').addEventListener('input', function (e) {
    let cursor = this.selectionStart;
    let oldVal = this.value;
    let val = parseMoney(this.value);
    if (isNaN(val)) {
        this.value = '';
        return;
    }
    this.value = formatMoney(val);
    
    // Adjust cursor position
    let diff = this.value.length - oldVal.length;
    this.setSelectionRange(cursor + diff, cursor + diff);
});

// Failsafe for visibility in Edge/Chrome with Dark Mode extensions
setInterval(() => {
    const selectors = [
        '#loanRequestForm select', 
        '#loanRequestForm .form-select',
        '#loanRequestForm label', 
        '#loanRequestForm .fw-bold',
        '.select2-selection__rendered',
        '.select2-results__option'
    ];
    selectors.forEach(sel => {
        document.querySelectorAll(sel).forEach(el => {
            el.style.color = '#000000';
            el.style.setProperty('color', '#000000', 'important');
        });
    });
}, 500);
</script>
