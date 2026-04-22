<?php
require_once __DIR__ . '/../app.moneytap/config/database.php';

$conn = getConnection();
if (!$conn) {
    die("Connection failed");
}

echo "Starting Database Reset...\n";

// Disable foreign key checks to allow truncation
$conn->query("SET FOREIGN_KEY_CHECKS = 0");

$tables_to_clear = [
    'loan_portfolio',
    'loan_instalments',
    'loan_payments',
    'loan_transactions',
    'loan_requests',
    'ledger',
    'journal_entries',
    'journal_lines',
    'accounting_entries',
    'pending_approvals',
    'notifications',
    'activity_logs'
];

foreach ($tables_to_clear as $table) {
    echo "Clearing table: $table... ";
    if ($conn->query("TRUNCATE TABLE $table")) {
        echo "OK\n";
    } else {
        // Fallback to DELETE if TRUNCATE fails due to FK
        if ($conn->query("DELETE FROM $table")) {
            $conn->query("ALTER TABLE $table AUTO_INCREMENT = 1");
            echo "OK (Deleted)\n";
        } else {
            echo "FAILED: " . $conn->error . "\n";
        }
    }
}

// Optional: Reset customer balance fields if they exist
$conn->query("UPDATE customers SET status = 'Approved' WHERE status = 'Disbursed'");

$conn->query("SET FOREIGN_KEY_CHECKS = 1");

echo "\nReset Complete. Loans and Ledger are now empty.\n";
?>
