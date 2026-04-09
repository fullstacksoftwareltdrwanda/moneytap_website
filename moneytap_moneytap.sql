SET FOREIGN_KEY_CHECKS = 0;

-- 1. Clear all financial records and logs to start from zero money
DELETE FROM `ledger`;
ALTER TABLE `ledger` AUTO_INCREMENT = 1;

DELETE FROM `expenses`;
ALTER TABLE `expenses` AUTO_INCREMENT = 1;

DELETE FROM `assets`;
ALTER TABLE `assets` AUTO_INCREMENT = 1;

DELETE FROM `application_fees`;
ALTER TABLE `application_fees` AUTO_INCREMENT = 1;

DELETE FROM `loan_application_fees`;
ALTER TABLE `loan_application_fees` AUTO_INCREMENT = 1;

DELETE FROM `activity_logs`;
ALTER TABLE `activity_logs` AUTO_INCREMENT = 1;

DELETE FROM `pending_approvals`;
ALTER TABLE `pending_approvals` AUTO_INCREMENT = 1;

-- 2. Clear all loan related tables
DELETE FROM `loan_payment_adjustments`;
ALTER TABLE `loan_payment_adjustments` AUTO_INCREMENT = 1;

DELETE FROM `loan_payment_variance`;
ALTER TABLE `loan_payment_variance` AUTO_INCREMENT = 1;

DELETE FROM `loan_payments`;
ALTER TABLE `loan_payments` AUTO_INCREMENT = 1;

DELETE FROM `loan_instalments`;
ALTER TABLE `loan_instalments` AUTO_INCREMENT = 1;

DELETE FROM `loan_transactions`;
ALTER TABLE `loan_transactions` AUTO_INCREMENT = 1;

DELETE FROM `loan_requests`;
ALTER TABLE `loan_requests` AUTO_INCREMENT = 1;

DELETE FROM `loan_portfolio`;
ALTER TABLE `loan_portfolio` AUTO_INCREMENT = 1;

-- 3. Reset Customer financial totals back to 0
UPDATE `customers` SET 
    `current_balance` = 0.00, 
    `total_loans` = 0.00, 
    `total_paid` = 0.00, 
    `total_disbursed` = 0.00, 
    `total_outstanding` = 0.00;

SET FOREIGN_KEY_CHECKS = 1;
