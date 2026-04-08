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

// Handle Actions (Approve/Reject)
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['request_action'])) {
    $request_id = intval($_POST['request_id']);
    $action = $_POST['request_action'];
    $note = $conn->real_escape_string($_POST['admin_note'] ?? '');
    
    $new_status = ($action === 'approve') ? 'Approved' : 'Rejected';
    
    $stmt = $conn->prepare("UPDATE loan_requests SET status = ?, admin_note = ? WHERE id = ?");
    $stmt->bind_param("ssi", $new_status, $note, $request_id);
    
    if ($stmt->execute()) {
        $success_message = "Loan request successfully " . strtolower($new_status) . "!";
    } else {
        $error_message = "Failed to update request: " . $conn->error;
    }
}

// Fetch requests
$search = isset($_GET['search']) ? trim($_GET['search']) : '';
$status_filter = isset($_GET['status']) ? $_GET['status'] : 'Pending';

$query = "SELECT lr.*, c.customer_name, c.customer_code 
          FROM loan_requests lr
          JOIN customers c ON lr.customer_id = c.customer_id";

$where = [];
if ($status_filter) {
    $where[] = "lr.status = '$status_filter'";
}
if ($search) {
    $where[] = "(c.customer_name LIKE '%$search%' OR c.customer_code LIKE '%$search%')";
}

if (!empty($where)) {
    $query .= " WHERE " . implode(" AND ", $where);
}

$query .= " ORDER BY lr.created_at DESC";
$requests = $conn->query($query);
?>

<div class="row mb-4">
        <div class="d-flex justify-content-between align-items-center">
            <div>
                <h2 class="h4 fw-bold text-primary mb-1"><i class="bi bi-file-earmark-bar-graph-fill me-2"></i> Loan Requests Terminal</h2>
                <p class="text-muted small">Review, study, and approve loan applications before disbursement.</p>
            </div>
            <a href="?page=add_loan_request" class="btn btn-primary rounded-pill px-4 fw-black shadow-sm">
                <i class="bi bi-plus-lg me-2"></i> NEW LOAN REQUEST
            </a>
        </div>
</div>

<?php if ($success_message): ?>
    <div class="alert alert-success border-0 shadow-sm rounded-4 mb-4"><?php echo $success_message; ?></div>
<?php endif; ?>

<div class="row mb-4">
    <div class="col-md-8">
        <ul class="nav nav-pills glass-pills p-1 rounded-4 mb-4 gap-2">
            <li class="nav-item">
                <a class="nav-link rounded-4 py-2 px-4 fw-bold <?php echo $status_filter == 'Pending' ? 'active' : ''; ?>" href="?page=loan_requests&status=Pending">Pending Review</a>
            </li>
            <li class="nav-item">
                <a class="nav-link rounded-4 py-2 px-4 fw-bold <?php echo $status_filter == 'Approved' ? 'active' : ''; ?>" href="?page=loan_requests&status=Approved">Approved</a>
            </li>
            <li class="nav-item">
                <a class="nav-link rounded-4 py-2 px-4 fw-bold <?php echo $status_filter == 'Rejected' ? 'active' : ''; ?>" href="?page=loan_requests&status=Rejected">Rejected</a>
            </li>
            <li class="nav-item">
                <a class="nav-link rounded-4 py-2 px-4 fw-bold <?php echo $status_filter == 'Disbursed' ? 'active' : ''; ?>" href="?page=loan_requests&status=Disbursed">Disbursed</a>
            </li>
        </ul>
    </div>
    <div class="col-md-4">
        <form method="GET" class="d-flex">
            <input type="hidden" name="page" value="loan_requests">
            <input type="hidden" name="status" value="<?php echo $status_filter; ?>">
            <div class="input-group">
                <input type="text" name="search" class="form-control rounded-start-4 py-2 ps-3 border-2 border-primary-soft shadow-none" placeholder="Search by name or ID..." value="<?php echo htmlspecialchars($search); ?>">
                <button class="btn btn-primary rounded-end-4 px-4" type="submit"><i class="bi bi-search"></i></button>
            </div>
        </form>
    </div>
</div>

<div class="row">
    <div class="col-12">
        <div class="card border-0 shadow-premium rounded-5 overflow-hidden">
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-hover align-middle mb-0">
                        <thead class="bg-light-blue py-3">
                            <tr class="uppercase text-muted x-small tracking-widest fw-black">
                                <th class="ps-4">Request #</th>
                                <th>Date Submitted</th>
                                <th>Member Details</th>
                                <th class="text-end">Loan Amount</th>
                                <th class="text-center">Terms</th>
                                <th class="text-end">2% Processing Fee</th>
                                <th class="text-center pe-4">Study Verdict</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if ($requests && $requests->num_rows > 0): ?>
                                <?php while($req = $requests->fetch_assoc()): 
                                    $date = date('d M Y', strtotime($req['created_at']));
                                    $time = date('H:i', strtotime($req['created_at']));
                                ?>
                                <tr class="request-row clickable-row" data-id="<?php echo $req['id']; ?>">
                                    <td class="ps-4">
                                        <span class="badge bg-brand-primary text-white p-2 rounded-3 fw-bold">REQ-<?php echo str_pad($req['id'], 3, '0', STR_PAD_LEFT); ?></span>
                                    </td>
                                    <td>
                                        <div class="fw-bold"><?php echo $date; ?></div>
                                        <div class="text-muted x-small"><?php echo $time; ?></div>
                                    </td>
                                    <td>
                                        <div class="fw-black text-dark"><?php echo htmlspecialchars($req['customer_name']); ?></div>
                                        <div class="text-primary x-small fw-bold"><?php echo $req['customer_code']; ?></div>
                                    </td>
                                    <td class="text-end fw-black fs-6">
                                        FRW <?php echo number_format($req['loan_amount']); ?>
                                    </td>
                                    <td class="text-center">
                                        <div class="badge bg-light text-dark border p-2 rounded-3 fw-bold">
                                            <?php echo $req['number_of_instalments']; ?> Month(s) @ <?php echo $req['interest_rate']; ?>%
                                        </div>
                                    </td>
                                    <td class="text-end">
                                        <div class="fw-bold text-success">FRW <?php echo number_format($req['requested_amount']); ?></div>
                                        <div class="x-small <?php echo $req['is_requested_paid_upfront'] ? 'text-primary' : 'text-muted'; ?>">
                                            <?php echo $req['is_requested_paid_upfront'] ? '<i class="bi bi-lightning-fill"></i> UPFRONT' : 'IN INSTALLMENTS'; ?>
                                        </div>
                                    </td>
                                    <td class="text-center pe-4">
                                        <?php if ($req['status'] == 'Pending'): ?>
                                            <div class="btn-group btn-group-sm rounded-pill overflow-hidden shadow-sm">
                                                <button type="button" class="btn btn-success px-3 fw-bold" onclick="showDecisionModal(<?php echo $req['id']; ?>, 'approve')">APPROVE</button>
                                                <button type="button" class="btn btn-danger px-3 fw-bold" onclick="showDecisionModal(<?php echo $req['id']; ?>, 'reject')">REJECT</button>
                                            </div>
                                        <?php elseif ($req['status'] == 'Approved'): ?>
                                            <a href="?page=addloan&req_id=<?php echo $req['id']; ?>" class="btn btn-brand-primary btn-sm rounded-pill px-4 fw-black">
                                                <i class="bi bi-cash-stack"></i> DISBURSE NOW
                                            </a>
                                        <?php elseif ($req['status'] == 'Disbursed'): ?>
                                            <span class="badge bg-success-soft text-success px-4 py-2 border border-success border-opacity-25 rounded-pill fw-bold">
                                                <i class="bi bi-check-circle-fill me-1"></i> COMPLETED
                                            </span>
                                        <?php else: ?>
                                            <span class="badge bg-danger-soft text-danger px-4 py-2 border border-danger border-opacity-25 rounded-pill fw-bold">
                                                REJECTED
                                            </span>
                                        <?php endif; ?>
                                    </td>
                                </tr>
                                <?php endwhile; ?>
                            <?php else: ?>
                                <tr><td colspan="7" class="text-center py-5 text-muted">No requests found for this category.</td></tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Decision Modal -->
<div class="modal fade" id="decisionModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content rounded-5 border-0 shadow-lg p-3">
            <div class="modal-header border-0">
                <h5 class="modal-title fw-black" id="modalTitle">Process Request</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <form method="POST">
                <div class="modal-body py-0">
                    <input type="hidden" name="request_id" id="modal_req_id">
                    <input type="hidden" name="request_action" id="modal_action">
                    
                    <div id="modal_alert" class="alert p-3 rounded-4 mb-3 border-0"></div>
                    
                    <div class="mb-3">
                        <label class="form-label small fw-bold text-muted uppercase">Internal Note / Justification</label>
                        <textarea name="admin_note" class="form-control rounded-4 p-3 border-2" rows="3" placeholder="Add details about the study or reasons for decision..."></textarea>
                    </div>
                </div>
                <div class="modal-footer border-0">
                    <button type="button" class="btn btn-light rounded-pill px-4" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-brand-primary rounded-pill px-5 fw-black" id="modalActionBtn">Confirm Decision</button>
                </div>
            </form>
        </div>
    </div>
</div>

<style>
.bg-light-blue { background-color: #f8fbff; }
.glass-pills { background: rgba(230, 240, 255, 0.5); backdrop-filter: blur(5px); display: inline-flex; }
.nav-pills .nav-link { color: #555; transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1); }
.nav-pills .nav-link.active { background-color: #0d6efd; color: #fff; box-shadow: 0 10px 20px rgba(13, 110, 253, 0.3); }
.shadow-premium { box-shadow: 0 30px 60px rgba(0,0,0,0.08); }
.bg-brand-primary { background-color: #0d6efd; }
.btn-brand-primary { background-color: #0d6efd; color: white; border: none; }
.btn-brand-primary:hover { background-color: #0056b3; transform: translateY(-2px); box-shadow: 0 5px 15px rgba(13, 110, 253, 0.4); }
.bg-success-soft { background-color: #e6f7ec; color: #198754; }
.bg-danger-soft { background-color: #feecec; color: #dc3545; }
.fw-black { font-weight: 900 !important; }
.tracking-widest { letter-spacing: 0.1em; }
.request-row { transition: all 0.2s; border-left: 5px solid transparent; }
.request-row:hover { background-color: #fbfdff !important; border-left-color: #0d6efd; }
.x-small { font-size: 11px; }

@keyframes fadeIn { from { opacity: 0; transform: translateY(10px); } to { opacity: 1; transform: translateY(0); } }
.animate-in { animation: fadeIn 0.4s ease-out; }
</style>

<script>
function showDecisionModal(id, action) {
    const modal = new bootstrap.Modal(document.getElementById('decisionModal'));
    document.getElementById('modal_req_id').value = id;
    document.getElementById('modal_action').value = action;
    
    const title = document.getElementById('modalTitle');
    const alert = document.getElementById('modal_alert');
    const btn = document.getElementById('modalActionBtn');
    
    if (action === 'approve') {
        title.innerText = 'Study Approval';
        alert.className = 'alert alert-success p-3 rounded-4 mb-3 border-0';
        alert.innerText = 'Approving this request will allow the loan to be disbursed. This indicates you have reviewed the risks and member profile.';
        btn.className = 'btn btn-success rounded-pill px-5 fw-black';
    } else {
        title.innerText = 'Loan Rejection';
        alert.className = 'alert alert-danger p-3 rounded-4 mb-3 border-0';
        alert.innerText = 'Rejecting this request will mark it as closed and prevent disbursement. Please provide a reason to help the secretary understand.';
        btn.className = 'btn btn-danger rounded-pill px-5 fw-black';
    }
    
    modal.show();
}
</script>
