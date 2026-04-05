<?php
// Define DB for CLI
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'moneytap_moneytap');

$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
$result = $conn->query("SHOW COLUMNS FROM customers");
while ($row = $result->fetch_assoc()) {
    echo $row['Field'] . "\n";
}
?>
