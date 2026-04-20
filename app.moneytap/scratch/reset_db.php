<?php
require_once __DIR__ . '/../config/database.php';
$conn = getConnection();
if (!$conn) die("Connection failed");

$conn->query("SET FOREIGN_KEY_CHECKS = 0");

$tables = [
    'loan_payments',
    'loan_instalments',
    'loan_portfolio',
    'loan_transactions',
    'ledger',
    'pending_approvals',
    'loan_requests',
    'activity_logs',
    'assets',
    'expenses',
    'loan_payment_adjustments',
    'loan_payment_variance',
    'application_fees'
];

foreach ($tables as $table) {
    if ($conn->query("TRUNCATE TABLE $table")) {
        echo "Truncated $table\n";
    } else {
        echo "Error truncating $table: " . $conn->error . "\n";
    }
}

// Reset customer balances
$conn->query("UPDATE customers SET current_balance = 0, total_loans = 0, total_paid = 0");
echo "Reset customer balances to zero\n";

$conn->query("SET FOREIGN_KEY_CHECKS = 1");
echo "Database reset complete.\n";
?>
