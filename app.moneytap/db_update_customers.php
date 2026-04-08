<?php
require_once __DIR__ . '/config/database.php';
$conn = getConnection();
if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}

$queries = [
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS record_date DATE NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS collateral_type VARCHAR(50) NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS collateral_sub_type VARCHAR(50) NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS upi_location VARCHAR(100) NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS square_mtrs VARCHAR(50) NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS doc_loan_clearance VARCHAR(255) NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS doc_power_of_attorney VARCHAR(255) NULL",
    "ALTER TABLE customers ADD COLUMN IF NOT EXISTS doc_guarantor_letter VARCHAR(255) NULL"
];

foreach ($queries as $q) {
    if (mysqli_query($conn, $q)) {
        echo "Executed: $q\n";
    } else {
        echo "Error executing $q: " . mysqli_error($conn) . "\n";
    }
}

echo "Done.\n";
