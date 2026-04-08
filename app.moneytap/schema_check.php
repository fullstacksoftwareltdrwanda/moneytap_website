<?php
require_once __DIR__ . '/config/database.php';
$conn = getConnection();
if (!$conn) die("Fail");

$r = $conn->query("DESCRIBE customers");
while($row = $r->fetch_assoc()) echo json_encode($row).PHP_EOL;

$r = $conn->query("SHOW TABLES");
while($row = $r->fetch_row()) echo $row[0].PHP_EOL;
?>
