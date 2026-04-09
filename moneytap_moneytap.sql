SET FOREIGN_KEY_CHECKS = 0;

-- 1. Clear all financial records and logs to start from zero money
TRUNCATE TABLE `ledger`;
TRUNCATE TABLE `expenses`;
TRUNCATE TABLE `assets`;
TRUNCATE TABLE `application_fees`;
TRUNCATE TABLE `loan_application_fees`;
TRUNCATE TABLE `activity_logs`;
TRUNCATE TABLE `pending_approvals`;

-- 2. Clear all loan related tables (Approved, Rejected, Disbursements, Payments, etc.)
TRUNCATE TABLE `loan_requests`;
TRUNCATE TABLE `loan_portfolio`;
TRUNCATE TABLE `loan_instalments`;
TRUNCATE TABLE `loan_payments`;
TRUNCATE TABLE `loan_payment_adjustments`;
TRUNCATE TABLE `loan_payment_variance`;
TRUNCATE TABLE `loan_transactions`;

-- 3. Reset Customer financial totals back to 0 (Keep the actual customers intact)
UPDATE `customers` SET 
    `current_balance` = 0.00, 
    `total_loans` = 0.00, 
    `total_paid` = 0.00, 
    `total_disbursed` = 0.00, 
    `total_outstanding` = 0.00;

SET FOREIGN_KEY_CHECKS = 1;
