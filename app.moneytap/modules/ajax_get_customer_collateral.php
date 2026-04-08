<?php
require_once __DIR__ . '/../config/database.php';
$conn = getConnection();

if (isset($_GET['customer_id'])) {
    $customer_id = intval($_GET['customer_id']);
    $stmt = $conn->prepare("SELECT collateral_type, collateral_sub_type, upi_location, square_mtrs FROM customers WHERE customer_id = ?");
    $stmt->bind_param("i", $customer_id);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($row = $result->fetch_assoc()) {
        echo json_encode($row);
    } else {
        echo json_encode(['error' => 'Customer not found']);
    }
    $stmt->close();
} else {
    echo json_encode(['error' => 'No customer ID provided']);
}
