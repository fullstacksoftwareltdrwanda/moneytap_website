<?php
require 'app.moneytap/config/database.php';
$c = getConnection();
$r = $c->query('DESCRIBE customers');
while($row = $r->fetch_assoc()) {
    echo $row['Field'] . ' ' . $row['Type'] . PHP_EOL;
}
