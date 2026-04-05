<?php
require_once __DIR__ . '/app.moneytap/config/database.php';
$conn = getConnection();

$queries = [
    // Customers table updates
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS collateral_type ENUM('Movable', 'Immovable') NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS collateral_sub_type VARCHAR(50) NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS upi_location VARCHAR(100) NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS square_mtrs VARCHAR(50) NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS doc_loan_clearance VARCHAR(255) NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS doc_power_of_attorney VARCHAR(255) NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS doc_guarantor_letter VARCHAR(255) NULL",
    
    // Loan portfolio table updates
    "ALTER TABLE loan_portfolio ADD COLUMN IF NOT EXISTS mgmt_fee_first_month_only TINYINT(1) DEFAULT 0",
    "ALTER TABLE loan_portfolio ADD COLUMN IF NOT EXISTS mgmt_fee_is_disbursed TINYINT(1) DEFAULT 0"
];

foreach ($queries as $sql) {
    if ($conn->query($sql)) {
        echo "Successfully executed: $sql\n";
    } else {
        echo "Error executing $sql: " . $conn->error . "\n";
    }
}
?>
