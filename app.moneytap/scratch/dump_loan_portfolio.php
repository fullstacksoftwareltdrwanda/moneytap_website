<?php
require_once 'config/database.php';
$conn = getConnection();
$result = $conn->query("DESCRIBE loan_portfolio");
while ($row = $result->fetch_assoc()) {
    print_r($row);
}
