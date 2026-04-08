<?php
require_once __DIR__ . '/config/database.php';
$conn = getConnection();
if (!$conn) die("Connection failed");

$sql = "CREATE TABLE IF NOT EXISTS loan_requests (
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
)";

if ($conn->query($sql)) {
    echo "Table 'loan_requests' created successfully!";
} else {
    echo "Error creating table: " . $conn->error;
}
?>
