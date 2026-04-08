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
    $loan_amount = floatval(str_replace(',', '', $_POST['loan_amount']));
    $interest_rate = floatval($_POST['interest_rate']);
    $duration = intval($_POST['duration']);
    $mgmt_rate = floatval($_POST['mgmt_fee_rate']);
    $deduct_fee = isset($_POST['deduct_fee']) ? 1 : 0;
    $mgmt_first_month = isset($_POST['mgmt_first_month']) ? 1 : 0;
    
    // Requested Amount logic (2%)
    $req_amt = floatval(str_replace(',', '', $_POST['requested_amount_fee']));
    $req_upfront = isset($_POST['req_upfront']) ? 1 : 0;
    
    if ($cid <= 0 || $loan_amount <= 0) {
        $error_message = "Please select a member and enter a valid loan amount.";
    } else {
        // Calculate total disbursed if needed for persistence
        $total_disbursed = $loan_amount; // For now assuming simple case
        
        $sql = "INSERT INTO loan_requests 
                (customer_id, loan_amount, total_disbursed, interest_rate, number_of_instalments, 
                 management_fee_rate, deduct_fee_from_disbursed, mgmt_fee_first_month_only, 
                 requested_amount, is_requested_paid_upfront, status) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'Pending')";
        
        $stmt = $conn->prepare($sql);
        if ($stmt) {
            $stmt->bind_param("idddiididi", 
                $cid, $loan_amount, $total_disbursed, $interest_rate, $duration, 
                $mgmt_rate, $deduct_fee, $mgmt_first_month, 
                $req_amt, $req_upfront
            );
            
            if ($stmt->execute()) {
                $new_request_id = $conn->insert_id;

                // --- IMMEDIATE LEDGER RECORDING for 2% Processing Fee if paid upfront ---
                if ($req_upfront && $req_amt > 0) {
                    require_once __DIR__ . '/../includes/approval_helper.php';
                    
                    $p_date = date('Y-m-d');
                    $narration = "Processing Fee (2%) - Request #" . $new_request_id . " (Customer ID: $cid)";
                    
                    // 1. Recognize Income (4203)
                    $r_inc_beg = _helper_getBeginningBalance($conn, '4203', $p_date);
                    _helper_createLedgerEntry($conn, [
                        'transaction_date' => $p_date,
                        'class' => 'Revenue',
                        'account_code' => '4203',
                        'account_name' => 'Requested Amount Income (2%)',
                        'particular' => 'Processing Fee Income',
                        'voucher_number' => 'REQ-' . $new_request_id,
                        'narration' => $narration,
                        'beginning_balance' => $r_inc_beg,
                        'debit_amount' => 0,
                        'credit_amount' => $req_amt,
                        'movement' => $req_amt,
                        'ending_balance' => $r_inc_beg + $req_amt,
                        'reference_type' => 'loan_request_fee',
                        'reference_id' => $new_request_id,
                        'created_by' => $_SESSION['user_id'] ?? 1
                    ]);

                    // 2. Debit Cash (1101) - since they paid upfront
                    $c_beg = _helper_getBeginningBalance($conn, '1101', $p_date);
                    _helper_createLedgerEntry($conn, [
                        'transaction_date' => $p_date,
                        'class' => 'Assets',
                        'account_code' => '1101',
                        'account_name' => 'Cash on Hand',
                        'particular' => 'Processing Fee Received Upfront',
                        'voucher_number' => 'REQ-' . $new_request_id,
                        'narration' => $narration,
                        'beginning_balance' => $c_beg,
                        'debit_amount' => $req_amt,
                        'credit_amount' => 0,
                        'movement' => $req_amt,
                        'ending_balance' => $c_beg + $req_amt,
                        'reference_type' => 'loan_request_fee',
                        'reference_id' => $new_request_id,
                        'created_by' => $_SESSION['user_id'] ?? 1
                    ]);
                }

                $success_message = "Loan request submitted successfully for review!";
                echo "<script>setTimeout(() => window.location.href='?page=loan_requests', 2000);</script>";
            } else {
                $error_message = "Error: " . $stmt->error;
            }
        } else {
            $error_message = "Prepare failed: " . $conn->error;
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
                                <div class="p-3 bg-light rounded-4 border-dashed d-flex align-items-center justify-content-between">
                                    <div class="d-flex align-items-center">
                                        <div class="avatar-sm bg-primary text-white me-3"><?php echo strtoupper(substr($customer_name, 0, 1)); ?></div>
                                        <div>
                                            <div class="fw-bold"><?php echo htmlspecialchars($customer_name); ?></div>
                                            <div class="text-muted x-small">ID #<?php echo $customer_id; ?></div>
                                        </div>
                                    </div>
                                    <input type="hidden" name="customer_id" value="<?php echo $customer_id; ?>">
                                    <span class="badge bg-success-soft text-success px-3">VERIFIED</span>
                                </div>
                            <?php else: ?>
                                <select name="customer_id" class="form-select rounded-4 py-3 shadow-none border-2 border-primary-soft select2-active">
                                    <option value="">-- Choose Member --</option>
                                    <?php while($m = $members->fetch_assoc()): ?>
                                        <option value="<?php echo $m['customer_id']; ?>"><?php echo htmlspecialchars($m['customer_name'] . ' ('.$m['customer_code'].')'); ?></option>
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
                                    <div class="col-md-6">
                                        <label class="form-label fw-black text-primary uppercase" style="font-size: 0.7rem; letter-spacing: 1px;">Requested Amount (2% Processing Fee)</label>
                                        <div class="input-group">
                                            <span class="input-group-text bg-white border-0 rounded-start-4 ps-3 py-3 text-primary"><i class="bi bi-tag-fill"></i></span>
                                            <input type="text" name="requested_amount_fee" id="requested_amount_fee" class="form-control border-0 rounded-end-4 py-3 fw-black text-primary fs-5 shadow-sm" placeholder="0.00">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-check form-switch card-style-check p-3 rounded-4 bg-white shadow-sm border-0 mt-4">
                                            <input class="form-check-input ms-0 me-3" type="checkbox" name="req_upfront" id="req_upfront" onchange="updateSummary()">
                                            <label class="form-check-label fw-bold text-dark mt-1" for="req_upfront">Pay Upfront (Immediate Income)</label>
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
    const reqAmt = parseMoney(document.getElementById('requested_amount_fee').value);
    const reqUpfront = document.getElementById('req_upfront').checked;
    
    let disbursed = amount;
    if (deductFee) {
        disbursed -= (amount * (mgmtRate / 100));
    }
    
    // If 2% is paid upfront, it doesn't affect disbursed but it's an immediate cost to client
    // Note: Usually 2% is paid ON TOP or deducted. The user asked for it to be like a fee.
    
    document.getElementById('totalRepayText').innerText = 'FRW ' + formatMoney(amount);
    document.getElementById('disburseBadge').innerText = 'Disbursed: FRW ' + formatMoney(disbursed);
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
</script>
