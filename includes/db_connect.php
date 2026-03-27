<?php
// Database configuration
// Detect environment
$is_local = ($_SERVER['SERVER_NAME'] === 'localhost' || $_SERVER['REMOTE_ADDR'] === '127.0.0.1' || $_SERVER['REMOTE_ADDR'] === '::1');
$is_hosted = (isset($_SERVER['HTTP_HOST']) && strpos($_SERVER['HTTP_HOST'], 'moneytap.rw') !== false);

if (!$is_hosted && $is_local) {
    // Local XAMPP MySQL Configuration
    define('DB_HOST', 'localhost');
    define('DB_USER', 'root');
    define('DB_PASS', '');
    define('DB_NAME', 'moneytap_moneytap'); 
}
else {
    // Hosted Configuration — Official MoneyTap Access
    define('DB_HOST', 'localhost');
    define('DB_USER', 'moneytap_moneytap');
    define('DB_PASS', 'X@vHmO*+KfSS');
    define('DB_NAME', 'moneytap_moneytap');
}

/**
 * Get database connection
 */
function getWebsiteConnection()
{
    try {
        $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

        if ($conn->connect_error) {
            throw new Exception("Connection failed: " . $conn->connect_error);
        }

        $conn->set_charset("utf8mb4");
        return $conn;
    }
    catch (Exception $e) {
        // Log error and return null
        error_log("Website DB Connection Error: " . $e->getMessage());
        return null;
    }
}
?>
