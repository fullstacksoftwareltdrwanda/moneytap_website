<?php
require_once __DIR__ . '/../app.moneytap/config/database.php';
$conn = getConnection();

$columns_to_add = [
    'requested_amount' => 'DECIMAL(15, 2) DEFAULT 0.00',
    'is_requested_paid_upfront' => 'TINYINT(1) DEFAULT 0',
    'requested_amount_status' => "ENUM('Pending', 'Paid', 'Added to Installment') DEFAULT 'Pending'"
];

foreach ($columns_to_add as $col => $type) {
    $res = $conn->query("SHOW COLUMNS FROM loan_portfolio LIKE '$col'");
    if ($res->num_rows == 0) {
        echo "Adding column $col to loan_portfolio...\n";
        $conn->query("ALTER TABLE loan_portfolio ADD $col $type");
    } else {
        echo "Column $col already exists.\n";
    }
}

// Also check loan_instalments for requested_amount_paid
$res = $conn->query("SHOW COLUMNS FROM loan_instalments LIKE 'requested_amount_paid'");
if ($res->num_rows == 0) {
    echo "Adding column requested_amount_paid to loan_instalments...\n";
    $conn->query("ALTER TABLE loan_instalments ADD requested_amount_paid DECIMAL(15, 2) DEFAULT 0.00 AFTER requested_amount");
}

echo "Done.\n";
