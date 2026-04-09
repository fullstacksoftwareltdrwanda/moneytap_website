<?php
session_start();
require_once 'config/database.php';
$conn = getConnection();

$login_error = false;

// Handle PHP side login to set session
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['username']) && isset($_POST['password'])) {
    $username = trim($_POST['username']);
    $password = $_POST['password'];
    
    // Check user in database
    $stmt = $conn->prepare("SELECT user_id, username, password, role, full_name, email, is_active FROM users WHERE username = ? LIMIT 1");
    if ($stmt) {
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if ($result && $result->num_rows === 1) {
            $user = $result->fetch_assoc();
            
            // Verify password and check if active
            if ($user['is_active'] == 1 && password_verify($password, $user['password'])) {
                $_SESSION['user_id'] = $user['user_id'];
                $_SESSION['username'] = $user['username'];
                $_SESSION['user_name'] = $user['full_name']; // Display name
                $_SESSION['full_name'] = $user['full_name'];
                $_SESSION['email'] = $user['email'];
                $_SESSION['role'] = $user['role'];
                $_SESSION['loggedIn'] = true;
                
                require_once 'includes/activity_logger.php';
                logActivity($conn, 'login', 'user', $user['user_id'], "User {$_SESSION['username']} logged in successfully.");

                // Output for JS to catch and set localStorage (for backward compatibility)
                echo "<script>
                    localStorage.setItem('authSession', JSON.stringify(" . json_encode([
                        'username' => $user['username'],
                        'loggedIn' => true,
                        'timestamp' => time() * 1000,
                        'role' => $user['role']
                    ]) . "));
                    localStorage.setItem('authExpiry', 'session');
                    window.location.href = 'index.php';
                </script>";
                exit;
            } else {
                $login_error = true;
            }
        } else {
            $login_error = true;
        }
        $stmt->close();
    } else {
        $login_error = true;
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Identity Hub | Moneytap</title>
    <link rel="icon" href="https://moneytap.rw/images/favicon.png" type="image/png">
    <link rel="shortcut icon" href="https://moneytap.rw/images/favicon.png" type="image/png">
    <link rel="apple-touch-icon" href="https://moneytap.rw/images/favicon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #00D094;
            --brand-dark: #00B37E;
            --accent: #6366F1;
        }
        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Plus Jakarta Sans', sans-serif;
            overflow: hidden;
            background: #f8fafc; /* Professional light background */
            font-size: 15px;
        }
        
        .glass-panel {
            position: absolute;
            bottom: 8%;
            left: 8%;
            background: rgba(255, 255, 255, 0.85); /* More opaque for light theme */
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            padding: 32px;
            border-radius: 24px;
            border: 1px solid rgba(255, 255, 255, 0.5);
            color: #1e293b; /* Dark text for light panel */
            z-index: 10;
            max-width: 380px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
        }
        
        .glass-panel h3 {
            margin: 0;
            font-weight: 800;
            letter-spacing: 0.5px;
            font-size: 1.8rem;
        }

        .top-nav-link {
            position: absolute;
            top: 24px;
            right: 32px;
            background: rgba(255, 255, 255, 0.05);
            padding: 8px 20px;
            border-radius: 50px;
            color: #94A3B8;
            text-decoration: none;
            font-size: 0.85rem;
            font-weight: 700;
            display: flex;
            align-items: center;
            border: 1px solid rgba(255, 255, 255, 0.1);
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }
        .top-nav-link:hover {
            color: white;
            background: rgba(255, 255, 255, 0.1);
            border-color: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }
        .top-nav-link i {
            margin-right: 6px;
            font-size: 1.3rem;
            line-height: 0;
        }
        
        .footer-branding {
            position: absolute;
            bottom: 24px;
            color: #94a3b8;
            font-size: 0.8rem;
            font-weight: 500;
            letter-spacing: 0.05em;
        }
        .footer-branding span {
            color: #475569;
            font-weight: 700;
        }
        .login-wrapper {
            display: flex;
            height: 100vh;
            width: 100%;
        }
        .login-side-image {
            flex: 1.2;
            background: url('https://images.unsplash.com/photo-1554224155-6726b3ff858f?auto=format&fit=crop&q=80&w=2000') no-repeat center center;
            background-size: cover;
            position: relative;
            display: none; /* Hidden on mobile */
        }
        @media (min-width: 992px) {
            .login-side-image { display: block; }
        }
        .login-side-image::after {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(to right, rgba(248, 250, 252, 0.2), rgba(248, 250, 252, 0));
        }
        .login-side-content {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 40px;
            background: #ffffff;
            position: relative;
            color: #1e293b;
        }
        .login-container {
            width: 100%;
            max-width: 380px; /* Reduced from 440px */
        }
        .logo-box {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, #00D094 0%, #6366F1 100%);
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 24px;
            box-shadow: 0 10px 30px rgba(0, 208, 148, 0.3);
        }
        .login-header h2 {
            font-weight: 800;
            color: #1e293b;
            font-size: 2rem;
            margin-bottom: 8px;
            letter-spacing: -0.04em;
        }
        .login-header p {
            color: #94A3B8;
            margin-bottom: 32px;
            font-weight: 500;
            font-size: 1rem;
        }
        .form-label {
            font-weight: 800;
            color: #94A3B8;
            font-size: 0.7rem;
            text-transform: uppercase;
            letter-spacing: 0.1em;
            margin-bottom: 10px;
        }
        .input-group {
            border: 1px solid #e2e8f0;
            border-radius: 16px;
            transition: all 0.3s;
            background: #f8fafc;
            overflow: hidden;
            padding: 2px;
        }
        .input-group:focus-within {
            border-color: var(--primary);
            background: rgba(255, 255, 255, 0.05);
            box-shadow: 0 0 0 4px rgba(0, 208, 148, 0.1);
        }
        .input-group-text {
            background: transparent;
            border: none;
            color: #64748B;
            padding-left: 20px;
        }
        .form-control {
            border: none;
            padding: 14px 20px;
            font-weight: 600;
            font-size: 0.95rem;
            background: transparent;
            color: #1e293b !important;
        }
        .form-control::placeholder {
            color: #475569;
        }
        .form-control:focus {
            box-shadow: none;
            background: transparent;
        }
        .btn-login {
            background: #0f172a; /* Solid dark blue for premium feel */
            color: #ffffff;
            border: none;
            padding: 16px;
            border-radius: 16px;
            font-weight: 800;
            width: 100%;
            margin-top: 10px;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }
        .btn-login:hover {
            background: #1e293b;
            transform: translateY(-2px);
            box-shadow: 0 12px 24px rgba(15, 23, 42, 0.2);
        }
        .back-link {
            margin-top: 32px;
            display: inline-flex;
            align-items: center;
            color: #64748B;
            text-decoration: none;
            font-weight: 800;
            font-size: 0.8rem;
            transition: all 0.2s;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }
        .back-link:hover {
            color: var(--primary);
        }
        .back-link i {
            margin-right: 8px;
            transition: transform 0.2s;
        }
        .back-link:hover i {
            transform: translateX(-4px);
        }
        .alert {
            font-size: 0.85rem;
            font-weight: 700;
            border-radius: 14px;
            padding: 16px;
            border: 1px solid rgba(220, 38, 38, 0.2);
            background: rgba(220, 38, 38, 0.1);
            color: #ef4444;
            margin-top: 24px;
        }
        .form-check-input {
            background-color: #f8fafc;
            border-color: #e2e8f0;
        }
        .form-check-input:checked {
            background-color: var(--primary);
            border-color: var(--primary);
        }
    </style>
</head>
<body>
    <div class="login-wrapper">
        <div class="login-side-image">
            <div class="glass-panel">
                <h3>Moneytap</h3>
                <div class="mt-2">
                    <p style="font-weight: 700; font-size: 1.05rem; margin-bottom: 5px;">Your Smart Financial Partner</p>
                    <p style="font-size: 1.15rem; line-height: 1.4;">Simplify Your Accounting<br>& Loan Management</p>
                </div>
            </div>
        </div>
        <div class="login-side-content">
            <a href="https://moneytap.rw/" class="top-nav-link">
                <i class="bi bi-arrow-left-short"></i> Main Website
            </a>
            <div class="login-container">
                <div class="logo-box">
                    <i class="bi bi-cpu-fill text-dark fs-3"></i>
                </div>
                <div class="login-header">
                    <h2>Welcome back to your Accounting Loan MS</h2>
                    <p>Enter your credentials to securely access your portal</p>
                </div>
                
                <form id="loginForm" method="POST">
                    <div class="mb-4">
                        <label class="form-label">Identifier</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="bi bi-person"></i></span>
                            <input type="text" class="form-control" name="username" id="username" placeholder="Username or Email" required>
                        </div>
                    </div>
                    
                    <div class="mb-4">
                        <label class="form-label">Passkey</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="bi bi-shield-lock"></i></span>
                            <input type="password" class="form-control" name="password" id="password" placeholder="••••••••" required>
                        </div>
                    </div>

                    <div class="d-flex justify-content-between align-items-center mb-4">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="rememberMe">
                            <label class="form-check-label small fw-bold text-muted" for="rememberMe">Secure session preservation</label>
                        </div>
                    </div>
                    
                    <button type="submit" class="btn btn-login">
                        Authenticate <i class="bi bi-arrow-right ms-2"></i>
                    </button>
                    
                    <?php if ($login_error === true && $_SERVER['REQUEST_METHOD'] === 'POST'): ?>
                    <div class="alert" id="errorAlert">
                        <i class="bi bi-exclamation-triangle-fill me-2"></i> Authentication failed. Check credentials.
                    </div>
                    <?php endif; ?>
                </form>
            </div>
            
            <div class="footer-branding">
                powered by <span>Fullstack LTD</span>
            </div>
        </div>
    </div>

    <script>
        // Check login state
        const authSession = localStorage.getItem('authSession');
        if (authSession) {
            const session = JSON.parse(authSession);
            const expiry = localStorage.getItem('authExpiry');
            if (!(expiry !== 'session' && expiry && new Date().getTime() > parseInt(expiry)) && session.loggedIn) {
                window.location.href = 'index.php';
            }
        }
    </script>
</body>
</html>
