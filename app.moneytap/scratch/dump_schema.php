<?php
require_once 'config/database.php';
$conn = getConnection();
$result = $conn->query("DESCRIBE customers");
while ($row = $result->fetch_assoc()) {
    print_r($row);
}
