-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2026 at 06:46 AM
-- Server version: 5.7.44
-- PHP Version: 8.1.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moneytap_moneytap`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `action_type` varchar(50) NOT NULL,
  `entity_type` varchar(50) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `description` text,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `username`, `action_type`, `entity_type`, `entity_id`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(28, 1, 'director', 'login', 'user', 1, 'User director logged in successfully.', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 13:02:28'),
(29, 1, 'director', 'login', 'user', 1, 'User director logged in successfully.', '2c0f:eb68:690:4900:ec43:40fd:7633:3b9b', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 14:14:11'),
(30, 1, 'director', 'login', 'user', 1, 'User director logged in successfully.', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:05:32'),
(31, 1, 'director', 'login', 'user', 1, 'User director logged in successfully.', '87.58.105.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:05:35'),
(32, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260423-151230 for jean claude UTAZIRUBANDA', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:14:33'),
(33, 1, 'director', 'create', 'loan', 1, 'Approved creation of loan: LN-20260423-151230 with Requested Amount PAID UPFRONT', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:17:14'),
(34, 1, 'director', 'submit_approval', 'loan', 1, 'Submitted edit loan for approval: Update loan LN-20260423-151230 for jean claude UTAZIRUBANDA', '87.58.105.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:26:09'),
(35, 1, 'director', 'submit_approval', 'loan', 1, 'Submitted edit loan for approval: Update loan LN-20260423-151230 for jean claude UTAZIRUBANDA', '87.58.105.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:27:09'),
(36, 1, 'director', 'submit_approval', 'loan', 1, 'Submitted edit loan for approval: Update loan LN-20260423-151230 for jean claude UTAZIRUBANDA', '87.58.105.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:29:50'),
(37, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260423-153231 for KABERA Telesphore', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:37:37'),
(38, 1, 'director', 'create', 'loan', 2, 'Approved creation of loan: LN-20260423-153231 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:38:23'),
(39, 1, 'director', 'login', 'user', 1, 'User director logged in successfully.', '2c0f:eb68:690:4900:606d:410e:746d:5465', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-04-23 15:44:32'),
(40, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260423-154301 for Esther BATAMURIZA', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:45:48'),
(41, 1, 'director', 'create', 'loan', 3, 'Approved creation of loan: LN-20260423-154301 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:46:20'),
(42, 1, 'director', 'submit_approval', 'customer', 143, 'Submitted delete customer for approval: Delete customer: Lael Britt', '147.161.163.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:47:12'),
(43, 1, 'director', 'submit_approval', 'customer', 143, 'Submitted delete customer for approval: Delete customer: Lael Britt', '147.161.163.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:47:34'),
(44, 1, 'director', 'submit_approval', 'customer', 143, 'Submitted delete customer for approval: Delete customer: Lael Britt', '147.161.163.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:47:50'),
(45, 1, 'director', 'submit_approval', 'customer', 201, 'Submitted edit customer for approval: Edit customer: TWIZERIMANA Jean Baptiste', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:52:20'),
(46, 1, 'director', 'submit_approval', 'customer', 201, 'Submitted edit customer for approval: Edit customer: TWIZERIMANA Jean Baptiste', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:52:26'),
(47, 1, 'director', 'submit_approval', 'customer', 201, 'Submitted edit customer for approval: Edit customer: TWIZERIMANA Jean Baptiste', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:53:26'),
(48, 1, 'director', 'submit_approval', 'customer', 201, 'Submitted edit customer for approval: Edit customer: TWIZERIMANA Jean Baptiste', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:53:29'),
(49, 1, 'director', 'submit_approval', 'customer', 201, 'Submitted edit customer for approval: Edit customer: TWIZERIMANA Jean Baptiste', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:53:34'),
(50, 1, 'director', 'submit_approval', 'customer', 143, 'Submitted delete customer for approval: Delete customer: Lael Britt', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:54:17'),
(51, 1, 'director', 'submit_approval', 'customer', 143, 'Submitted delete customer for approval: Delete customer: Lael Britt', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:57:35'),
(52, 1, 'director', 'submit_approval', 'customer', 201, 'Submitted edit customer for approval: Edit customer: TWIZERIMANA Jean Baptiste', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:58:14'),
(53, 1, 'director', 'submit_approval', 'customer', 201, 'Submitted edit customer for approval: Edit customer: TWIZERIMANA Jean Baptiste', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 15:58:37'),
(54, 1, 'director', 'submit_approval', 'customer', 201, 'Submitted edit customer for approval: Edit customer: TWIZERIMANA Jean Baptiste', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-23 16:01:14'),
(55, 1, 'director', 'login', 'user', 1, 'User director logged in successfully.', '197.157.187.182', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-04-23 19:25:18'),
(56, 1, 'director', 'login', 'user', 1, 'User director logged in successfully.', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 07:20:51'),
(57, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-073550 for SHEMA Clement', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 07:42:14'),
(58, 1, 'director', 'create', 'loan', 4, 'Approved creation of loan: LN-20260424-073550 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 07:43:25'),
(59, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-074655 for NTARIBI Theogene', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 07:50:21'),
(60, 1, 'director', 'create', 'loan', 5, 'Approved creation of loan: LN-20260424-074655 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 07:51:10'),
(61, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-080257 for UWITONZE Clarisse', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:08:34'),
(62, 1, 'director', 'create', 'loan', 6, 'Approved creation of loan: LN-20260424-080257 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:09:05'),
(63, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-081458 for NIYONZIMA Michel', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:17:24'),
(64, 1, 'director', 'create', 'loan', 7, 'Approved creation of loan: LN-20260424-081458 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:17:54'),
(65, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-082346 for NIYOMUKIZA Seth', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:25:59'),
(66, 1, 'director', 'create', 'loan', 8, 'Approved creation of loan: LN-20260424-082346 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:26:30'),
(67, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-083017 for BYIRINGIRO Honorine', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:32:38'),
(68, 1, 'director', 'create', 'loan', 9, 'Approved creation of loan: LN-20260424-083017 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:33:00'),
(69, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-083723 for MUGUNGA Prince Cedrick', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:39:25'),
(70, 1, 'director', 'create', 'loan', 10, 'Approved creation of loan: LN-20260424-083723 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:39:44'),
(71, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-085132 for NAHIMANA Brigitte', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:53:29'),
(72, 1, 'director', 'create', 'loan', 11, 'Approved creation of loan: LN-20260424-085132 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:53:44'),
(73, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-085808 for RIZINDE Vital', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 08:59:58'),
(74, 1, 'director', 'create', 'loan', 12, 'Approved creation of loan: LN-20260424-085808 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 09:00:25'),
(75, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-090747 for UWAMARIYA Aliane', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 09:10:18'),
(76, 1, 'director', 'create', 'loan', 13, 'Approved creation of loan: LN-20260424-090747 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 09:10:57'),
(77, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-092905 for MIHIRA Joyce', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 09:31:45'),
(78, 1, 'director', 'create', 'loan', 14, 'Approved creation of loan: LN-20260424-092905 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 09:31:59'),
(79, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-094909 for KANKINDI Aisha', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 09:54:12'),
(80, 1, 'director', 'create', 'loan', 15, 'Approved creation of loan: LN-20260424-094909 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 09:54:47'),
(81, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-095920 for MUNYAMPETA Joseph', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 10:04:25'),
(82, 1, 'director', 'create', 'loan', 16, 'Approved creation of loan: LN-20260424-095920 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 10:04:46'),
(83, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-100813 for UWIZEYE Pofia', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 10:12:29'),
(84, 1, 'director', 'create', 'loan', 17, 'Approved creation of loan: LN-20260424-100813 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 10:12:56'),
(85, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-101614 for NIYONKURU Zephanie', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 10:23:06'),
(86, 1, 'director', 'create', 'loan', 18, 'Approved creation of loan: LN-20260424-101614 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 10:23:29'),
(87, 1, 'director', 'login', 'user', 1, 'User director logged in successfully.', '197.157.186.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-04-24 10:27:41'),
(88, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-102640 for MUGIRANEZA Edson', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 10:31:44'),
(89, 1, 'director', 'submit_approval', 'customer', 0, 'Submitted add customer for approval: Add new customer: Testing Docs', '197.157.186.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-04-24 10:31:44'),
(90, 1, 'director', 'create', 'customer', 203, 'Approved creation of customer: Testing Docs', '197.157.186.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-04-24 10:31:58'),
(91, 1, 'director', 'create', 'loan', 19, 'Approved creation of loan: LN-20260424-102640 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 10:32:15'),
(92, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-103741 for MUKANOHERI Berthe', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 10:48:46'),
(93, 1, 'director', 'create', 'loan', 20, 'Approved creation of loan: LN-20260424-103741 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 10:48:59'),
(94, 1, 'director', 'submit_approval', 'customer', 203, 'Submitted edit customer for approval: Edit customer: Testing Docs', '197.157.186.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-04-24 11:07:22'),
(95, 1, 'director', 'update', 'customer', 203, 'Approved update of customer: Testing Docs', '197.157.186.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-04-24 11:08:21'),
(96, 1, 'director', 'submit_approval', 'customer', 203, 'Submitted delete customer for approval: Delete customer: Testing Docs', '197.157.186.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-04-24 11:08:52'),
(97, 1, 'director', 'delete', 'customer', 203, 'Approved deletion of customer and all related data (ID: 203)', '197.157.186.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-04-24 11:09:01'),
(98, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-111533 for MUHOZA MAYURU Eric', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 11:18:33'),
(99, 1, 'director', 'create', 'loan', 21, 'Approved creation of loan: LN-20260424-111533 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 11:19:15'),
(100, 1, 'director', 'submit_approval', 'loan', 0, 'Submitted add loan for approval: Add loan LN-20260424-112831 for TWIZERIMANA Jean Baptiste', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 11:29:49'),
(101, 1, 'director', 'create', 'loan', 22, 'Approved creation of loan: LN-20260424-112831 with Requested Amount Subtracted from amount given', '197.157.186.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-24 11:30:15');

-- --------------------------------------------------------

--
-- Table structure for table `application_fees`
--

CREATE TABLE `application_fees` (
  `application_fee_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `fee_reference` varchar(50) NOT NULL,
  `fee_date` date NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `income_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `vat_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(50) DEFAULT 'Cash',
  `notes` text,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `asset_id` int(11) NOT NULL,
  `asset_number` varchar(20) NOT NULL,
  `category` varchar(50) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `description` text,
  `serial_number` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `assigned_user` varchar(100) DEFAULT NULL,
  `acquisition_date` date NOT NULL,
  `acquisition_value` decimal(15,2) NOT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `additions` decimal(15,2) DEFAULT '0.00',
  `lifespan_years` int(11) NOT NULL,
  `depreciation_rate` decimal(5,2) NOT NULL,
  `asset_condition` varchar(1000) DEFAULT NULL,
  `monthly_depreciation` decimal(15,2) DEFAULT NULL,
  `daily_depreciation` decimal(15,2) DEFAULT NULL,
  `accumulated_depreciation` decimal(15,2) DEFAULT '0.00',
  `reporting_date` date DEFAULT NULL,
  `disposal_date` date DEFAULT NULL,
  `disposal_value` decimal(15,2) DEFAULT NULL,
  `disposal_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `account_id` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `account_code` varchar(10) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `sub_type` varchar(50) DEFAULT NULL,
  `normal_balance` varchar(10) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`account_id`, `class`, `account_code`, `account_name`, `account_type`, `sub_type`, `normal_balance`, `is_active`, `created_at`, `updated_at`) VALUES
(19, 'Balance Sheet', '1250', 'Loan Offset Control Account', 'Asset', 'Current Asset', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(20, 'Balance Sheet', '1301', 'Prepaid Interest Receivable', 'Asset', 'Current Asset', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(21, 'Balance Sheet', '1302', 'Prepaid Monitoring Fees', 'Asset', 'Current Asset', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(22, 'Balance Sheet', '1303', 'Prepaid Monitoring Fees VAT', 'Asset', 'Current Asset', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(23, 'Balance Sheet', '1304', 'Prepaid Rent', 'Asset', 'Current Asset', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(24, 'Balance Sheet', '1305', 'Prepaid Insurance', 'Asset', 'Current Asset', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(25, 'Balance Sheet', '1306', 'Due from Shareholders', 'Asset', 'Current Asset', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(26, 'Balance Sheet', '1401', 'Office Furniture', 'Asset', 'Fixed Asset', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(29, 'Balance Sheet', '1404', 'Motor Vehicle', 'Asset', 'Fixed Asset', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(30, 'Balance Sheet', '1405', 'Accumulated Depreciation', 'Asset', 'Fixed Asset', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(31, 'Balance Sheet', '2101', 'Accounts Payable', 'Liability', 'Current Liability', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(33, 'Balance Sheet', '2103', 'Accrued Salaries', 'Liability', 'Current Liability', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(34, 'Balance Sheet', '2104', 'Accrued Withholding Tax Payable', 'Liability', 'Current Liability', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(37, 'Balance Sheet', '2107', 'Acrrued Pension', 'Liability', 'Current Liability', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(38, 'Balance Sheet', '2108', 'Accrued Maternity Leave', 'Liability', 'Current Liability', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(39, 'Balance Sheet', '2109', 'Accrued Mutuel', 'Liability', 'Current Liability', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(40, 'Balance Sheet', '2201', 'Loan Payable – Banks', 'Liability', 'Long-term Liability', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(41, 'Balance Sheet', '2202', 'Loan Payable – Other Institutions', 'Liability', 'Long-term Liability', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(45, 'Balance Sheet', '2402', 'Deferred Monitoring Fees', 'Liability', 'Current Liability', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(46, 'Balance Sheet', '2403', 'Deferred VAT', 'Liability', 'Current Liability', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(50, 'Balance Sheet', '2408', 'Loan Overpayment Liability', 'Liability', 'Current Liability', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(51, 'Balance Sheet', '2409', 'Refunds Payable', 'Liability', 'Current Liability', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(54, 'Balance Sheet', '3103', 'Current Year Earnings/Loss', 'Equity', 'Retained Earnings', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(55, 'Balance Sheet', '3104', 'Capital Reserve', 'Equity', 'Other Equity', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(56, 'Income Statement', '4101', 'Interest Income', 'Revenue', 'Operating Revenue', 'Credit', 1, '2026-01-08 11:30:22', '2026-03-18 10:18:51'),
(58, 'Income Statement', '4201', 'Management Fee Income', 'Revenue', 'Operating Revenue', 'Credit', 0, '2026-01-08 11:30:22', '2026-04-20 09:27:15'),
(61, 'Income Statement', '4204', 'Application Fees', 'Revenue', 'Operating Revenue', 'Credit', 0, '2026-01-08 11:30:22', '2026-04-20 09:27:15'),
(62, 'Income Statement', '4205', 'Penalty Charges', 'Revenue', 'Operating Revenue', 'Credit', 1, '2026-01-08 11:30:22', '2026-03-18 10:18:51'),
(63, 'Income Statement', '4301', 'Impairment Recovery (Provision Reversal Income)', 'Revenue', 'Operating Revenue', 'Credit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(64, 'Income Statement', '5101', 'Salaries & Wages', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(65, 'Income Statement', '5102', 'Staff Training & Development', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(66, 'Income Statement', '5103', 'Transport & Travel', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(67, 'Income Statement', '5104', 'Rent', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(70, 'Income Statement', '5107', 'Communication (Internet, Phone)', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(71, 'Income Statement', '5108', 'Insurance', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(77, 'Income Statement', '5202', 'Consulting Services', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(78, 'Income Statement', '5203', 'Audit & Accounting Services', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(79, 'Income Statement', '5250', 'IT and Communication', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(80, 'Income Statement', '5261', 'Office Equipment Repairs', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(81, 'Income Statement', '5262', 'Building Maintenance', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(82, 'Income Statement', '5263', 'Vehicle Maintenance', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(83, 'Income Statement', '5264', 'Office Partition', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(84, 'Income Statement', '5265', 'Office Branding', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(85, 'Income Statement', '5270', 'Marketing & Advertising Expense', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(86, 'Income Statement', '5275', 'Branding and Design Expenses', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(87, 'Income Statement', '5301', 'Loan Interest Expense', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(88, 'Income Statement', '5302', 'Bank Charges', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(90, 'Income Statement', '5401', 'Depreciation – Furniture', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(91, 'Income Statement', '5402', 'Depreciation – Equipment', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(92, 'Income Statement', '5403', 'Loan Loss Provision Expense', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(93, 'Income Statement', '5501', 'Loan Loss Expense – Principal', 'Expense', 'Operating Expense', 'Debit', 1, '2026-01-08 11:30:22', '2026-01-08 11:30:22'),
(108, 'Balance Sheet', '1101', 'Cash on hand', 'Asset', 'Current Asset', 'Debit', 1, '2026-02-25 12:38:28', '2026-03-04 11:02:01'),
(109, 'Balance Sheet', '1102', 'Bank Account', 'Asset', 'Current Asset', 'Debit', 1, '2026-03-03 16:02:51', '2026-03-04 11:02:17'),
(110, 'Income Statement', '5976', 'Refreshment', 'Expense', 'Operating Expense', 'Debit', 1, '2026-03-03 17:01:16', '2026-03-03 17:01:16'),
(111, 'Income Statement', '5500', 'Office Supplies Expense', 'Expense', 'Operating Expense', 'Debit', 1, '2026-03-04 10:28:31', '2026-03-04 10:28:31'),
(112, 'Income Statement', '5510', 'Utilities Expense', 'Expense', 'Operating Expense', 'Debit', 1, '2026-03-04 12:53:04', '2026-03-04 12:53:04'),
(113, 'Income Statement', '5001', 'Cleaning & Sanitation Expense', 'Expense', 'Operating Expense', 'Debit', 1, '2026-03-04 13:04:06', '2026-03-04 13:04:06'),
(114, 'Income Statement', '5002', 'Security Expense', 'Expense', 'Operating Expense', 'Debit', 1, '2026-03-04 13:18:30', '2026-03-04 13:18:30'),
(115, 'Balance Sheet', '3001', 'Capital', 'Equity', 'Capital Stock', 'Credit', 1, '2026-03-05 11:21:42', '2026-03-05 11:21:42'),
(116, 'Income Statement', '5003', 'Internet Expence', 'Expense', 'Administrative Expense', 'Debit', 1, '2026-03-09 09:07:43', '2026-03-09 09:07:43'),
(117, 'Income Statement', '5004', 'fee Charges', 'Expense', 'Non-operating Expense', 'Debit', 1, '2026-03-09 12:55:54', '2026-03-09 12:55:54'),
(118, 'Income Statement', '5005', 'Office Equipment Maintenance', 'Expense', 'Operating Expense', 'Debit', 1, '2026-03-10 09:55:39', '2026-03-10 09:55:39'),
(119, 'Income Statement', '5006', 'Relocation expenses', 'Expense', 'Operating Expense', 'Debit', 1, '2026-03-11 09:27:20', '2026-03-11 09:27:20'),
(120, 'Income Statement', '5007', 'Recovery Expense', 'Expense', 'Operating Expense', 'Debit', 1, '2026-03-12 08:21:11', '2026-03-12 08:21:11'),
(121, 'Income Statement', '5008', 'Board of Directors Allowances', 'Expense', 'Operating Expense', 'Debit', 1, '2026-03-16 09:07:50', '2026-03-16 09:07:50'),
(122, 'Income Statement', '5009', 'Board Meeting Expenses', 'Expense', 'Operating Expense', 'Debit', 1, '2026-03-16 09:23:53', '2026-03-16 09:23:53'),
(123, 'Income Statement', '5010', 'Software Development Expense', 'Expense', 'Operating Expense', 'Debit', 1, '2026-03-17 10:24:45', '2026-03-17 10:24:45'),
(124, 'Balance Sheet', '1103', 'Mobile Money Account', 'Asset', 'Current Asset', 'Debit', 1, '2026-03-18 10:08:12', '2026-03-18 10:08:12'),
(125, 'Balance Sheet', '1201', 'Loans to Customers', 'Asset', 'Current Asset', 'Debit', 1, '2026-03-23 20:29:51', '2026-03-23 20:29:51'),
(126, 'Fee Income', '4202', 'Disbursement Processing Fee Income', NULL, NULL, 'Credit', 1, '2026-04-20 09:27:15', '2026-04-20 09:27:15'),
(127, 'Fee Income', '4203', 'Requested Amount Income (2%)', NULL, NULL, 'Credit', 1, '2026-04-20 09:27:15', '2026-04-20 09:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_place` text COLLATE utf8mb4_unicode_ci,
  `id_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci DEFAULT 'Male',
  `date_of_birth` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT 'gracelending',
  `father_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marriage_type` enum('Single','Married','Divorced') COLLATE utf8mb4_unicode_ci DEFAULT 'Single',
  `spouse` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_occupation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `location` text COLLATE utf8mb4_unicode_ci,
  `project` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_location` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caution_location` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_amount` decimal(15,2) DEFAULT '0.00',
  `loan_duration` int(11) DEFAULT '0',
  `province` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sector` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'admin',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT '1',
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Approved',
  `doc_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'National ID Path',
  `doc_contract` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Work Contract Path',
  `doc_statement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Bank Statement Path',
  `doc_payslip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Payslip Path',
  `doc_marital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Marital Status Cert Path',
  `doc_rdb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RDB Certificate Path',
  `has_guarantor` enum('Yes','No') COLLATE utf8mb4_unicode_ci DEFAULT 'No',
  `guarantor_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guarantor_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guarantor_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guarantor_occupation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `risk_rating` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `total_loans` decimal(15,2) DEFAULT '0.00',
  `total_paid` decimal(15,2) DEFAULT '0.00',
  `rejection_reason` text COLLATE utf8mb4_unicode_ci,
  `correction_fields` text COLLATE utf8mb4_unicode_ci,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `client_resubmitted` tinyint(1) DEFAULT '0',
  `resubmitted_fields` text COLLATE utf8mb4_unicode_ci,
  `total_disbursed` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_outstanding` decimal(15,2) NOT NULL DEFAULT '0.00',
  `last_loan_date` date DEFAULT NULL,
  `record_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `collateral_type` enum('Movable','Immovable') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collateral_sub_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upi_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square_mtrs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_loan_clearance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_power_of_attorney` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_guarantor_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_code`, `customer_name`, `birth_place`, `id_number`, `account_number`, `occupation`, `gender`, `date_of_birth`, `phone`, `email`, `organization`, `father_name`, `mother_name`, `marriage_type`, `spouse`, `spouse_id`, `spouse_occupation`, `spouse_phone`, `address`, `location`, `project`, `project_location`, `caution_location`, `loan_type`, `requested_amount`, `loan_duration`, `province`, `district`, `sector`, `cell`, `village`, `created_by`, `created_at`, `updated_at`, `is_active`, `status`, `doc_id`, `doc_contract`, `doc_statement`, `doc_payslip`, `doc_marital`, `doc_rdb`, `has_guarantor`, `guarantor_name`, `guarantor_id`, `guarantor_phone`, `guarantor_occupation`, `tin_number`, `risk_rating`, `current_balance`, `total_loans`, `total_paid`, `rejection_reason`, `correction_fields`, `admin_note`, `client_resubmitted`, `resubmitted_fields`, `total_disbursed`, `total_outstanding`, `last_loan_date`, `record_date`, `collateral_type`, `collateral_sub_type`, `upi_location`, `square_mtrs`, `doc_loan_clearance`, `doc_power_of_attorney`, `doc_guarantor_letter`) VALUES
(143, 'CUST-02/0', 'Lael Britt', 'N/A', '537', '941', 'Voluptates maiores d', 'Female', '1988-01-20', '+1 (998) 628-2468', 'vasi@mailinator.com', 'MoneyTap Ecosystem', 'Martin Delacruz', 'Lisandra Ford', 'Married', '', '', '', '', 'Voluptatem Ut nihil', '', 'Voluptatem aliquip e', '', 'Qui vel commodi plac', 'Salon', 0.00, 0, NULL, NULL, NULL, NULL, NULL, 'director', '2026-04-02 07:35:24', '2026-04-22 10:43:58', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '', '', '', '', NULL, NULL, 7750000.00, 7750000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2001-10-17 00:00:00', '', '', '', '', NULL, NULL, NULL),
(144, 'CUST-0032', 'jean claude UTAZIRUBANDA', 'N/A', '1198780164385145', 'n/a', 'salary earner', 'Male', '1987-12-07', '0786166001', 'uclaudio1987@gmail.com', 'MoneyTap Ecosystem', '', '', 'Single', '', '', '', '', '', 'Nyabikenke, Nyarurama, Gatenga, Kicukiro, Kigali', '', '', '', 'Personal Loan', 0.00, 0, 'Kigali', 'Kicukiro', 'Gatenga', 'Nyarurama', 'Nyabikenke', 'director', '2026-04-15 04:32:51', '2026-04-23 10:17:14', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'No', '', '', '', '', NULL, NULL, 2940000.00, 2940000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', '', '', '', '', NULL, NULL, NULL),
(149, 'CUST-0003', 'NTARIBI Theogene', 'N/A', '1197980101634077', '4011112111093', 'salary earner', 'Male', '1979-12-25', '0788409097', 'tntaribi@gmail.com', 'MoneyTap Ecosystem', '', '', 'Married', 'MWIBONERE Yvonne', '1198270153054091', 'entrepreneur', '0788584050', '', 'Nyakagezi, Rudashya, Ndera, Gasabo, Kigali', '', '', 'Nyamiyaga/Kigarama/Kigarama/Kirehe/Eastern', 'Agricultural', 0.00, 0, 'Kigali', 'Gasabo', 'Ndera', 'Rudashya', 'Nyakagezi', 'director', '2026-04-15 04:53:43', '2026-04-24 02:51:10', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'MWIBONERE Yvonne', '1198270153054091', '0788584050', 'entrepreneur', NULL, NULL, 1920000.00, 1920000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', '', '', '', '', NULL, NULL, NULL),
(157, 'CUST-0033', 'Esther BATAMURIZA', 'N/A', '1197270090474029', '100185509332', 'entrepreneur', 'Female', '1972-10-11', '0785030009', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Married', 'BUTERA NKURUNZIZA Eugene', '1196880075546150', 'entrepreneur', '0787957465', '', 'Rusenyi, Murama, Kinyinya, Gasabo, Kigali', '', '', 'Mirama I / Nyagatare/Nyagatare/Nyagatare/Eastern', 'Business Loan', 0.00, 0, 'Kigali', 'Gasabo', 'Kinyinya', 'Murama', 'Rusenyi', 'director', '2026-04-15 05:08:33', '2026-04-23 10:46:20', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'sebiraza john', '1199480164157274', '0783133076', 'driver', NULL, NULL, 6720000.00, 6720000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', '', '', '', '', NULL, NULL, NULL),
(159, 'CUST-0034', 'UWITONZE Clarisse', 'N/A', '1198270023179112', '4012111678821', 'self employed', 'Female', '1982-09-08', '0783254924', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Single', '', '', '', '', '', 'Kicukiro, Kicukiro, Kicukiro, Kicukiro, Kigali', '', '', 'Karamba I , Rugendabari, Mukarange,Kayonza,Eastern', 'Business Loan', 0.00, 6, 'Kigali', 'Kicukiro', 'Kicukiro', 'Kicukiro', 'Kicukiro', 'director', '2026-04-15 05:08:37', '2026-04-24 03:09:05', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'MUKANKURANGA Pelagie', '1195670044645023', '0791658895', 'self employed', NULL, NULL, 1920000.00, 1920000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Immovable', 'Land', '5/04/04/05/4681    , 5/04/04/05/4683    , 5/04/04/05/2971', '4295, 1296, 527', NULL, NULL, NULL),
(161, 'CUST-0035', 'NIYONZIMA Michel', 'N/A', '1198380159223133', 'n/a', 'self employed', 'Male', '1983-08-03', '0788459428', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Married', 'NIYOYABIKOZE Thabia', '1199270126487323', 'self-employed', '', '', 'Nyakariba, Nyamugari, Gatsata, Gasabo, Kigali', '', '', '', 'Business Loan', 0.00, 3, 'Kigali', 'Gasabo', 'Gatsata', 'Nyamugari', 'Nyakariba', 'director', '2026-04-15 05:18:39', '2026-04-24 03:17:54', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'NIYOYABIKOZE Thabia', '1199270126487323', '', 'self-employed', NULL, NULL, 9600000.00, 9600000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', '', '', '', '', NULL, NULL, NULL),
(163, 'CUST-0036', 'SHEMA Clement', 'N/A', '1199180148271200', '000600696921061', 'self employed', 'Male', '1991-01-01', '0788393580', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Single', '', '', '', '', '', 'Nyabigugu, Murinja, Gahanga, Kicukiro, Kigali', '', '', '', 'Personal Loan', 0.00, 4, 'Kigali', 'Kicukiro', 'Gahanga', 'Murinja', 'Nyabigugu', 'director', '2026-04-15 05:52:43', '2026-04-24 02:43:24', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'No', '', '', '', '', NULL, NULL, 24000000.00, 24000000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Movable', '', '', '', NULL, NULL, NULL),
(165, 'CUST-0037', 'BYIRINGIRO Honorine', 'N/A', '1199870046844154', '100100514235', 'salary earner', 'Female', '1998-10-14', '0787876721', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Single', '', '', '', '', '', 'Gatenga, Gatenga, Gatenga, Kicukiro, Kigali', '', '', 'Gahembe/Maranyundo/Nyamata/Bugesera/Eastern', 'Personal Loan', 0.00, 3, 'Kigali', 'Kicukiro', 'Gatenga', 'Gatenga', 'Gatenga', 'director', '2026-04-15 06:16:16', '2026-04-24 03:33:00', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'MANIRAGIRE Jean d\'Amour', '1199280222423459', '0788326300', 'salary earner', NULL, NULL, 2880000.00, 2880000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Immovable', 'Land', '5/07/10/03/637', '519', NULL, NULL, NULL),
(167, 'CUST-0038', 'KABERA Telesphore', 'N/A', '1197580006253174', '211-245-742151060', 'self employed', 'Male', NULL, '0788563298', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Married', 'UMULISA Liliane', '1198270013551019', 'self-employed', '0788771872', '', 'Bwiza, Kabuga II, Rusororo, Gasabo, Kigali', '', '', 'Mwurire/Kiyovu/Ndego/Kayonza/Eastern', 'Business Loan', 0.00, 2, 'Kigali', 'Gasabo', 'Rusororo', 'Kabuga II', 'Bwiza', 'director', '2026-04-15 06:27:38', '2026-04-23 10:38:23', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'UMULISA Liliane', '1198270013551019', '0788771872', 'self-employed', NULL, NULL, 19200000.00, 19200000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Immovable', 'Land', '5/04/08/04/5125', '70556', NULL, NULL, NULL),
(169, 'CUST-0039', 'NIYOMUKIZA Seth', 'N/A', '1198780060304374', 'n/a', 'self employed', 'Male', '0000-00-00', '0788393580', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Single', '', '', '', '', '', 'Nyakariba, Nyamugari, Gatsata, Gasabo, Kigali', '', '', '', 'Personal Loan', 0.00, 0, 'Kigali', 'Gasabo', 'Gatsata', 'Nyamugari', 'Nyakariba', 'director', '2026-04-15 06:33:01', '2026-04-24 03:26:30', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'No', '', '', '', '', NULL, NULL, 1920000.00, 1920000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', '', '', '', '', NULL, NULL, NULL),
(171, 'CUST-0040', 'MUGUNGA Prince Cedrick', 'N/A', '1199280002358231', '100016209621', 'self employed', 'Male', NULL, '0788229197', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Single', '', '', '', '', '', 'Kigarama, Gatare, Niboye, Kicukiro, Kigali', '', '', '', 'Business Loan', 0.00, 3, 'Kigali', 'Kicukiro', 'Niboye', 'Gatare', 'Kigarama', 'director', '2026-04-15 07:04:41', '2026-04-24 03:39:44', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'No', '', '', '', '', NULL, NULL, 3840000.00, 3840000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Movable', '', '', '', NULL, NULL, NULL),
(173, 'CUST-0041', 'KANKINDI Aisha', 'N/A', '1199470160564031', '4005111297569', 'self employed', 'Male', '1994-10-09', '0788358262', 'kaishakanny@gmail.com', 'MoneyTap Ecosystem', '', '', 'Married', 'NSENGIYUMVA Muhamad', '1198980003007024', 'National Army', '0788551945', '', 'Kabeza, Kanzenze, Ntarama, Bugesera, East', '', '', '', '', 0.00, 3, 'East', 'Bugesera', 'Ntarama', 'Kanzenze', 'Kabeza', 'director', '2026-04-15 07:32:38', '2026-04-24 04:54:47', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'NSENGIYUMVA Muhamad', '1198980003007024', '0788551945', 'National Army', NULL, NULL, 4800000.00, 4800000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Immovable', 'Land', '5/07/07/04/4106', '1458', NULL, NULL, NULL),
(175, 'CUST-0042', 'NAHIMANA Brigitte', 'N/A', '1198370008515069', '002560777420319', 'self employed', 'Female', '1983-08-24', '0788649662', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Married', 'NKIZINKIKO Hemed', '1198880001360393', 'self-employed', '0788575683', '', 'Amakawa, Kabuye, Jabana, Gasabo, Kigali', '', '', '', 'Business Loan', 0.00, 3, 'Kigali', 'Gasabo', 'Jabana', 'Kabuye', 'Amakawa', 'director', '2026-04-15 07:40:54', '2026-04-24 03:53:44', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'NKIZINKIKO Hemed', '1198880001360393', '0788575683', 'self-employed', NULL, NULL, 9600000.00, 9600000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Movable', '', '', '', NULL, NULL, NULL),
(177, 'CUST-0043', 'UWIMANA Aliane', 'N/A', '1199470089649337', '100046123918', 'self employed', 'Female', '1994-01-01', '0783117509', 'uwimanariane@gmail.com', 'MoneyTap Ecosystem', '', '', 'Single', '', '', '', '', '', 'Buhoro, Niboye, Niboye, Kicukiro, Kigali', '', '', '', 'Personal Loan', 0.00, 2, 'Kigali', 'Kicukiro', 'Niboye', 'Niboye', 'Buhoro', 'director', '2026-04-15 07:51:02', '2026-04-15 07:51:02', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'No', '', '', '', '', NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Movable', '', '', '', NULL, NULL, NULL),
(179, 'CUST-0044', 'RIZINDE Vital', 'N/A', '1197980123571041', '100044502946', 'self employed', 'Male', '1979-07-15', '0788647617', 'muhetorindevital@gmail.com', 'MoneyTap Ecosystem', '', '', 'Single', '', '', '', '', '', 'Itunda, Rubirizi, Kanombe, Kicukiro, Kigali', '', '', '', 'Business Loan', 0.00, 2, 'Kigali', 'Kicukiro', 'Kanombe', 'Rubirizi', 'Itunda', 'director', '2026-04-15 07:57:54', '2026-04-24 04:00:25', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'No', '', '', '', '', NULL, NULL, 4800000.00, 4800000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Movable', '', '', '', NULL, NULL, NULL),
(181, 'CUST-0045', 'MIHIRA Joyce', 'N/A', '1199170182596046', '100003434774', 'self employed', 'Male', '1991-12-06', '0736111063', 'joyglove007@gmail.com', 'MoneyTap Ecosystem', '', '', 'Single', '', '', '', '', '', 'Nyirabwana, Kibagabaga, Kimironko, Gasabo, Kigali', '', '', 'Bweramana/Bukora/Nyamugari/Kirehe/Eastern', 'Business Loan', 0.00, 3, 'Kigali', 'Gasabo', 'Kimironko', 'Kibagabaga', 'Nyirabwana', 'director', '2026-04-15 08:10:29', '2026-04-24 04:31:59', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'KANYEMERA FARED', '1199380068764122', '0782614605', 'self employed', NULL, NULL, 4320000.00, 4320000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Immovable', 'Land', '5/05/11/01/3502', '19853', NULL, NULL, NULL),
(183, 'CUST-0046', 'MUNYAMPETA Joseph', 'N/A', '1198480035360174', '4005111181768', 'self employed', 'Male', '1984-01-01', '0788439818', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Divorced', '', '', '', '', '', 'Tetero, Tetero, Muhima, Nyarugenge, Kigali', '', '', 'Iterambere/Narurenzi/Mageragere/Nyarugenge/Kigali city', 'Personal Loan', 0.00, 3, 'Kigali', 'Nyarugenge', 'Muhima', 'Tetero', 'Tetero', 'director', '2026-04-15 08:25:09', '2026-04-24 05:04:46', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'No', '', '', '', '', NULL, NULL, 2400000.00, 2400000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Immovable', 'Land', '01/0105/06/7450', '345', NULL, NULL, NULL),
(185, 'CUST-0047', 'UWIZEYE Pofia', 'N/A', '1196270069187052', '20504390445001', 'self employed', 'Female', '1962-01-01', '0783954987', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Single', '', '', '', '', '', 'Umucyo, Kamashashi, Nyarugunga, Kicukiro, Kigali', '', '', 'Kabarore I/Kabarore/Kabarore/Gatsibo/Eastern', 'Business Loan', 0.00, 3, 'Kigali', 'Kicukiro', 'Nyarugunga', 'Kamashashi', 'Umucyo', 'director', '2026-04-15 08:33:34', '2026-04-24 05:12:56', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'MURORUNKWERE Scovia', '1199670219226023', '0789549871', 'self-employed', NULL, NULL, 9600000.00, 9600000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Immovable', 'Land', '5/03/04/01/1669', '435', NULL, NULL, NULL),
(187, 'CUST-0048', 'NIYONKURU Zephanie', 'N/A', '1198580012656032', '25043353007', 'self employed', 'Male', '1985-02-26', '0788304330', 'zniyonkuru@gmail.com', 'MoneyTap Ecosystem', '', '', 'Single', '', '', '', '', '', 'Nyirabwana, Kibagabaga, Kimironko, Gasabo, Kigali', '', '', '', 'Business Loan', 0.00, 3, 'Kigali', 'Gasabo', 'Kimironko', 'Kibagabaga', 'Nyirabwana', 'director', '2026-04-15 08:45:26', '2026-04-24 05:23:29', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'NIYONZIMA Michel', '1198380159223133', '0788459428', 'self employed', NULL, NULL, 9600000.00, 9600000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', '', '', '', '', NULL, NULL, NULL),
(189, 'CUST-0049', 'MUGIRANEZA Edson', 'N/A', '1197980016189142', '4012101371872', 'Motar', 'Male', '1979-08-12', '0788530071', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Married', 'UWANYUZE Frida', '1197870015528104', 'self-employed', '0788516512', '', 'Kiyanja, Kagasa, Gahanga, Kicukiro, Kigali', '', '', 'Kiyanya/Kagasa/Gahanga/Kicukiro/Kigali City', 'Personal Loan', 0.00, 3, 'Kigali', 'Kicukiro', 'Gahanga', 'Kagasa', 'Kiyanja', 'director', '2026-04-15 08:53:33', '2026-04-24 05:32:15', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'UWANYUZE Frida', '1197870015528104', '0788516512', 'self-employed', NULL, NULL, 960000.00, 960000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Immovable', 'Land', '1/03/01/02/2541', '202', NULL, NULL, NULL),
(191, 'CUST-0050', 'MUKANOHERI Berthe', 'N/A', '1198970199610180', '20157416001', 'self employed', 'Female', '1989-12-25', '0788249673', 'noellberthe@gmail.com', 'MoneyTap Ecosystem', '', '', 'Married', 'ITEGEKWANANDE Gerard', '1198580067363269', 'self-employed', '0788789665', '', 'Kabeza, Cyimo, Masaka, Kicukiro, Kigali', '', '', 'Kabeza/Cyimo/Masaka/Kicukiro/Kgali City', 'Business Loan', 0.00, 4, 'Kigali', 'Kicukiro', 'Masaka', 'Cyimo', 'Kabeza', 'director', '2026-04-15 09:02:16', '2026-04-24 05:48:59', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'ITEGEKWANANDE Gerard', '1198580067363269', '0788789665', 'self-employed', NULL, NULL, 19200000.00, 19200000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Immovable', 'Land', '', '', NULL, NULL, NULL),
(193, 'CUST-0051', 'MUHOZA MAYURU Eric', 'N/A', '1199480107574183', '4009111338225', 'self employed', 'Male', '1994-08-06', '0788250488', 'mayurue@gmail.com', 'MoneyTap Ecosystem', '', '', 'Married', 'NTAKIRUTIKI Emma', '1199470141175144', 'self-employed', '0788412164', '', 'Kigarama, Nyagahinga, Rusororo, Gasabo, Kigali', '', '', 'Kigarama/Nyagahinga/Rusororo/Gasabo/Kiali city', 'Personal Loan', 0.00, 2, 'Kigali', 'Gasabo', 'Rusororo', 'Nyagahinga', 'Kigarama', 'director', '2026-04-15 09:11:57', '2026-04-24 06:19:15', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'NTAKIRUTIKI Emma', '1199470141175144', '0788412164', 'self-employed', NULL, NULL, 19200000.00, 19200000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', 'Immovable', 'Land', '1/02/14/07/3023', '301', NULL, NULL, NULL),
(195, 'CUST-0052', 'AHISHAKIYE Jean de Dieu', 'N/A', '1198480195584200', '4003201367288', 'self employed', 'Male', '1984-12-31', '0783490754', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Married', 'Kaneza Olive', '', 'self-employed', '', '', 'Kigarama, Nkusi, Jali, Gasabo, Kigali', '', '', '', '', 0.00, 0, 'Kigali', 'Gasabo', 'Jali', 'Nkusi', 'Kigarama', 'director', '2026-04-15 09:43:52', '2026-04-22 03:20:56', 1, 'Approved', '', '', '', '', '', '', 'No', '', '', '', '', NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-15 00:00:00', '', '', '', '', '', '', ''),
(197, 'CUST-0053', 'MUHIRE Jean Baptiste', 'N/A', '1198880143970179', '', 'self employed', 'Male', '1988-10-01', '0788273993', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Married', 'MUKANTWARI Solange', '11990702025566051', 'self-employed', '', '', 'Majanja, Kabukuba, Juru, Bugesera, East', '', '', '', '', 0.00, 0, 'East', 'Bugesera', 'Juru', 'Kabukuba', 'Majanja', 'director', '2026-04-16 05:10:53', '2026-04-16 05:10:53', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'No', '', '', '', '', NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-16 00:00:00', '', '', '', '', NULL, NULL, NULL),
(199, 'CUST-0054', 'UWAMARIYA Aliane', 'N/A', '1198770184249140', '1019021103284', 'self employed', 'Female', '1987-08-25', '0788711595', 'na@na.com', 'MoneyTap Ecosystem', '', '', 'Married', 'NTIGURIRWA Pierre Claver', '1198080164390305', 'self-employed', '0788301895', '', 'Kinyana, Nunga, Gahanga, Kicukiro, Kigali', '', '', '', '', 0.00, 0, 'Kigali', 'Kicukiro', 'Gahanga', 'Nunga', 'Kinyana', 'director', '2026-04-16 05:27:49', '2026-04-24 04:10:57', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'No', '', '', '', '', NULL, NULL, 10560000.00, 10560000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-16 00:00:00', '', '', '', '', NULL, NULL, NULL),
(201, 'CUST-0055', 'TWIZERIMANA Jean Baptiste', 'N/A', '1197380089366120', '477378276110278', 'National Army', 'Male', '1973-06-08', '0788676523', 'twizerimana2017@gmail.com', 'MoneyTap Ecosystem', '', '', 'Single', '', '', '', '', '', 'Rugazi, Ruyenzi, Runda, Kamonyi, South', '', '', '', 'Asset Financing', 0.00, 2, 'South', 'Kamonyi', 'Runda', 'Ruyenzi', 'Rugazi', 'director', '2026-04-22 07:23:44', '2026-04-24 06:30:15', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 'No', '', '', '', '', NULL, NULL, 1920000.00, 1920000.00, 0.00, NULL, NULL, NULL, 0, NULL, 0.00, 0.00, NULL, '2026-04-22 00:00:00', 'Movable', '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` int(11) NOT NULL,
  `expense_reference` varchar(50) NOT NULL,
  `expense_date` date NOT NULL,
  `account_code` varchar(20) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `expense_amount` decimal(15,2) NOT NULL,
  `payment_type` enum('cash','bank') DEFAULT 'bank',
  `description` text,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ledger`
--

CREATE TABLE `ledger` (
  `ledger_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `class` varchar(50) NOT NULL,
  `account_code` varchar(10) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `particular` varchar(255) NOT NULL,
  `voucher_number` varchar(50) DEFAULT NULL,
  `narration` text,
  `beginning_balance` decimal(15,2) DEFAULT '0.00',
  `debit_amount` decimal(15,2) DEFAULT '0.00',
  `credit_amount` decimal(15,2) DEFAULT '0.00',
  `movement` decimal(15,2) DEFAULT '0.00',
  `ending_balance` decimal(15,2) DEFAULT '0.00',
  `reference_type` varchar(50) DEFAULT NULL,
  `reference_id` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sequence_number` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ledger`
--

INSERT INTO `ledger` (`ledger_id`, `transaction_date`, `class`, `account_code`, `account_name`, `particular`, `voucher_number`, `narration`, `beginning_balance`, `debit_amount`, `credit_amount`, `movement`, `ending_balance`, `reference_type`, `reference_id`, `created_by`, `created_at`, `updated_at`, `sequence_number`) VALUES
(1, '2026-04-23', 'Assets', '1101', 'Cash on Hand', 'Processing Fee (Upfront Payment)', 'REQ-14', 'Processing Fee (2%) - Req #14', 0.00, 40000.00, 0.00, 40000.00, 40000.00, 'loan_request_fee', '14', 1, '2026-04-23 14:20:15', '2026-04-23 14:20:15', 0),
(2, '2026-04-23', 'Fee Income', '4203', 'Requested Amount Income (2%)', 'Processing Fee Recognized (Upfront)', 'REQ-14', 'Processing Fee (2%) - Req #14', 0.00, 0.00, 40000.00, 40000.00, 40000.00, 'loan_request_fee', '14', 1, '2026-04-23 14:20:15', '2026-04-23 14:20:15', 0),
(3, '2026-04-23', 'Assets', '1101', 'Cash on Hand', 'Processing Fee (Upfront Payment)', 'REQ-15', 'Processing Fee (2%) - Req #15', 40000.00, 60000.00, 0.00, 60000.00, 100000.00, 'loan_request_fee', '15', 1, '2026-04-23 15:08:46', '2026-04-23 15:08:46', 0),
(4, '2026-04-23', 'Fee Income', '4203', 'Requested Amount Income (2%)', 'Processing Fee Recognized (Upfront)', 'REQ-15', 'Processing Fee (2%) - Req #15', 40000.00, 0.00, 60000.00, 60000.00, 100000.00, 'loan_request_fee', '15', 1, '2026-04-23 15:08:46', '2026-04-23 15:08:46', 0),
(5, '2026-04-23', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260423-151230', 'Loan Disbursement - LN-20260423-151230', 0.00, 3000000.00, 0.00, 3000000.00, 3000000.00, 'loan_disbursement', '1', 1, '2026-04-23 15:17:14', '2026-04-23 15:17:14', 0),
(6, '2026-04-23', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260423-151230', 'Loan Disbursement - LN-20260423-151230', 0.00, 0.00, 2940000.00, -2940000.00, -2940000.00, 'loan_disbursement', '1', 1, '2026-04-23 15:17:14', '2026-04-23 15:17:14', 0),
(7, '2026-04-23', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260423-151230', 'Loan Disbursement - LN-20260423-151230', 0.00, 0.00, 60000.00, 60000.00, 60000.00, 'loan_disbursement', '1', 1, '2026-04-23 15:17:14', '2026-04-23 15:17:14', 0),
(8, '2026-03-05', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260423-153231', 'Loan Disbursement - LN-20260423-153231', 0.00, 20000000.00, 0.00, 20000000.00, 20000000.00, 'loan_disbursement', '2', 1, '2026-04-23 15:38:23', '2026-04-23 15:38:23', 0),
(9, '2026-03-05', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260423-153231', 'Loan Disbursement - LN-20260423-153231', 0.00, 0.00, 18800000.00, -18800000.00, -18800000.00, 'loan_disbursement', '2', 1, '2026-04-23 15:38:23', '2026-04-23 15:38:23', 0),
(10, '2026-03-05', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260423-153231', 'Loan Disbursement - LN-20260423-153231', 0.00, 0.00, 400000.00, 400000.00, 400000.00, 'loan_disbursement', '2', 1, '2026-04-23 15:38:23', '2026-04-23 15:38:23', 0),
(11, '2026-03-05', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260423-153231', 'Loan Disbursement - LN-20260423-153231', 0.00, 0.00, 400000.00, 400000.00, 400000.00, 'loan_disbursement', '2', 1, '2026-04-23 15:38:23', '2026-04-23 15:38:23', 0),
(12, '2026-03-05', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260423-153231', 'Loan Disbursement - LN-20260423-153231', 0.00, 400000.00, 0.00, 400000.00, 400000.00, 'loan_disbursement', '2', 1, '2026-04-23 15:38:23', '2026-04-23 15:38:23', 0),
(13, '2026-02-26', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260423-154301', 'Loan Disbursement - LN-20260423-154301', 0.00, 7000000.00, 0.00, 7000000.00, 7000000.00, 'loan_disbursement', '3', 1, '2026-04-23 15:46:20', '2026-04-23 15:46:20', 0),
(14, '2026-02-26', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260423-154301', 'Loan Disbursement - LN-20260423-154301', 0.00, 0.00, 6580000.00, -6580000.00, -6580000.00, 'loan_disbursement', '3', 1, '2026-04-23 15:46:20', '2026-04-23 15:46:20', 0),
(15, '2026-02-26', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260423-154301', 'Loan Disbursement - LN-20260423-154301', 0.00, 0.00, 140000.00, 140000.00, 140000.00, 'loan_disbursement', '3', 1, '2026-04-23 15:46:20', '2026-04-23 15:46:20', 0),
(16, '2026-02-26', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260423-154301', 'Loan Disbursement - LN-20260423-154301', 0.00, 0.00, 140000.00, 140000.00, 140000.00, 'loan_disbursement', '3', 1, '2026-04-23 15:46:20', '2026-04-23 15:46:20', 0),
(17, '2026-02-26', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260423-154301', 'Loan Disbursement - LN-20260423-154301', 0.00, 140000.00, 0.00, 140000.00, 140000.00, 'loan_disbursement', '3', 1, '2026-04-23 15:46:20', '2026-04-23 15:46:20', 0),
(18, '2026-03-03', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-073550', 'Loan Disbursement - LN-20260424-073550', 7000000.00, 25000000.00, 0.00, 25000000.00, 32000000.00, 'loan_disbursement', '4', 1, '2026-04-24 07:43:25', '2026-04-24 07:43:25', 0),
(19, '2026-03-03', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-073550', 'Loan Disbursement - LN-20260424-073550', -6580000.00, 0.00, 23500000.00, -23500000.00, -30080000.00, 'loan_disbursement', '4', 1, '2026-04-24 07:43:25', '2026-04-24 07:43:25', 0),
(20, '2026-03-03', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-073550', 'Loan Disbursement - LN-20260424-073550', 140000.00, 0.00, 500000.00, 500000.00, 640000.00, 'loan_disbursement', '4', 1, '2026-04-24 07:43:25', '2026-04-24 07:43:25', 0),
(21, '2026-03-03', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-073550', 'Loan Disbursement - LN-20260424-073550', 140000.00, 0.00, 500000.00, 500000.00, 640000.00, 'loan_disbursement', '4', 1, '2026-04-24 07:43:25', '2026-04-24 07:43:25', 0),
(22, '2026-03-03', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-073550', 'Loan Disbursement - LN-20260424-073550', 140000.00, 500000.00, 0.00, 500000.00, 640000.00, 'loan_disbursement', '4', 1, '2026-04-24 07:43:25', '2026-04-24 07:43:25', 0),
(23, '2026-03-03', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-074655', 'Loan Disbursement - LN-20260424-074655', 32000000.00, 2000000.00, 0.00, 2000000.00, 34000000.00, 'loan_disbursement', '5', 1, '2026-04-24 07:51:10', '2026-04-24 07:51:10', 0),
(24, '2026-03-03', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-074655', 'Loan Disbursement - LN-20260424-074655', -30080000.00, 0.00, 1880000.00, -1880000.00, -31960000.00, 'loan_disbursement', '5', 1, '2026-04-24 07:51:10', '2026-04-24 07:51:10', 0),
(25, '2026-03-03', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-074655', 'Loan Disbursement - LN-20260424-074655', 640000.00, 0.00, 40000.00, 40000.00, 680000.00, 'loan_disbursement', '5', 1, '2026-04-24 07:51:10', '2026-04-24 07:51:10', 0),
(26, '2026-03-03', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-074655', 'Loan Disbursement - LN-20260424-074655', 640000.00, 0.00, 40000.00, 40000.00, 680000.00, 'loan_disbursement', '5', 1, '2026-04-24 07:51:10', '2026-04-24 07:51:10', 0),
(27, '2026-03-03', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-074655', 'Loan Disbursement - LN-20260424-074655', 640000.00, 40000.00, 0.00, 40000.00, 680000.00, 'loan_disbursement', '5', 1, '2026-04-24 07:51:10', '2026-04-24 07:51:10', 0),
(28, '2026-03-03', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-080257', 'Loan Disbursement - LN-20260424-080257', 34000000.00, 2000000.00, 0.00, 2000000.00, 36000000.00, 'loan_disbursement', '6', 1, '2026-04-24 08:09:05', '2026-04-24 08:09:05', 0),
(29, '2026-03-03', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-080257', 'Loan Disbursement - LN-20260424-080257', -31960000.00, 0.00, 1880000.00, -1880000.00, -33840000.00, 'loan_disbursement', '6', 1, '2026-04-24 08:09:05', '2026-04-24 08:09:05', 0),
(30, '2026-03-03', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-080257', 'Loan Disbursement - LN-20260424-080257', 680000.00, 0.00, 40000.00, 40000.00, 720000.00, 'loan_disbursement', '6', 1, '2026-04-24 08:09:05', '2026-04-24 08:09:05', 0),
(31, '2026-03-03', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-080257', 'Loan Disbursement - LN-20260424-080257', 680000.00, 0.00, 40000.00, 40000.00, 720000.00, 'loan_disbursement', '6', 1, '2026-04-24 08:09:05', '2026-04-24 08:09:05', 0),
(32, '2026-03-03', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-080257', 'Loan Disbursement - LN-20260424-080257', 680000.00, 40000.00, 0.00, 40000.00, 720000.00, 'loan_disbursement', '6', 1, '2026-04-24 08:09:05', '2026-04-24 08:09:05', 0),
(33, '2026-02-26', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-081458', 'Loan Disbursement - LN-20260424-081458', 7000000.00, 10000000.00, 0.00, 10000000.00, 17000000.00, 'loan_disbursement', '7', 1, '2026-04-24 08:17:54', '2026-04-24 08:17:54', 0),
(34, '2026-02-26', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-081458', 'Loan Disbursement - LN-20260424-081458', -6580000.00, 0.00, 9400000.00, -9400000.00, -15980000.00, 'loan_disbursement', '7', 1, '2026-04-24 08:17:54', '2026-04-24 08:17:54', 0),
(35, '2026-02-26', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-081458', 'Loan Disbursement - LN-20260424-081458', 140000.00, 0.00, 200000.00, 200000.00, 340000.00, 'loan_disbursement', '7', 1, '2026-04-24 08:17:54', '2026-04-24 08:17:54', 0),
(36, '2026-02-26', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-081458', 'Loan Disbursement - LN-20260424-081458', 140000.00, 0.00, 200000.00, 200000.00, 340000.00, 'loan_disbursement', '7', 1, '2026-04-24 08:17:54', '2026-04-24 08:17:54', 0),
(37, '2026-02-26', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-081458', 'Loan Disbursement - LN-20260424-081458', 140000.00, 200000.00, 0.00, 200000.00, 340000.00, 'loan_disbursement', '7', 1, '2026-04-24 08:17:54', '2026-04-24 08:17:54', 0),
(38, '2026-03-11', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-082346', 'Loan Disbursement - LN-20260424-082346', 20000000.00, 2000000.00, 0.00, 2000000.00, 22000000.00, 'loan_disbursement', '8', 1, '2026-04-24 08:26:30', '2026-04-24 08:26:30', 0),
(39, '2026-03-11', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-082346', 'Loan Disbursement - LN-20260424-082346', -18800000.00, 0.00, 1880000.00, -1880000.00, -20680000.00, 'loan_disbursement', '8', 1, '2026-04-24 08:26:30', '2026-04-24 08:26:30', 0),
(40, '2026-03-11', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-082346', 'Loan Disbursement - LN-20260424-082346', 400000.00, 0.00, 40000.00, 40000.00, 440000.00, 'loan_disbursement', '8', 1, '2026-04-24 08:26:30', '2026-04-24 08:26:30', 0),
(41, '2026-03-11', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-082346', 'Loan Disbursement - LN-20260424-082346', 400000.00, 0.00, 40000.00, 40000.00, 440000.00, 'loan_disbursement', '8', 1, '2026-04-24 08:26:30', '2026-04-24 08:26:30', 0),
(42, '2026-03-11', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-082346', 'Loan Disbursement - LN-20260424-082346', 400000.00, 40000.00, 0.00, 40000.00, 440000.00, 'loan_disbursement', '8', 1, '2026-04-24 08:26:30', '2026-04-24 08:26:30', 0),
(43, '2026-03-13', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-083017', 'Loan Disbursement - LN-20260424-083017', 22000000.00, 3000000.00, 0.00, 3000000.00, 25000000.00, 'loan_disbursement', '9', 1, '2026-04-24 08:33:00', '2026-04-24 08:33:00', 0),
(44, '2026-03-13', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-083017', 'Loan Disbursement - LN-20260424-083017', -20680000.00, 0.00, 2820000.00, -2820000.00, -23500000.00, 'loan_disbursement', '9', 1, '2026-04-24 08:33:00', '2026-04-24 08:33:00', 0),
(45, '2026-03-13', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-083017', 'Loan Disbursement - LN-20260424-083017', 440000.00, 0.00, 60000.00, 60000.00, 500000.00, 'loan_disbursement', '9', 1, '2026-04-24 08:33:00', '2026-04-24 08:33:00', 0),
(46, '2026-03-13', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-083017', 'Loan Disbursement - LN-20260424-083017', 440000.00, 0.00, 60000.00, 60000.00, 500000.00, 'loan_disbursement', '9', 1, '2026-04-24 08:33:00', '2026-04-24 08:33:00', 0),
(47, '2026-03-13', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-083017', 'Loan Disbursement - LN-20260424-083017', 440000.00, 60000.00, 0.00, 60000.00, 500000.00, 'loan_disbursement', '9', 1, '2026-04-24 08:33:00', '2026-04-24 08:33:00', 0),
(48, '2026-03-17', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-083723', 'Loan Disbursement - LN-20260424-083723', 25000000.00, 4000000.00, 0.00, 4000000.00, 29000000.00, 'loan_disbursement', '10', 1, '2026-04-24 08:39:44', '2026-04-24 08:39:44', 0),
(49, '2026-03-17', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-083723', 'Loan Disbursement - LN-20260424-083723', -23500000.00, 0.00, 3760000.00, -3760000.00, -27260000.00, 'loan_disbursement', '10', 1, '2026-04-24 08:39:44', '2026-04-24 08:39:44', 0),
(50, '2026-03-17', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-083723', 'Loan Disbursement - LN-20260424-083723', 500000.00, 0.00, 80000.00, 80000.00, 580000.00, 'loan_disbursement', '10', 1, '2026-04-24 08:39:44', '2026-04-24 08:39:44', 0),
(51, '2026-03-17', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-083723', 'Loan Disbursement - LN-20260424-083723', 500000.00, 0.00, 80000.00, 80000.00, 580000.00, 'loan_disbursement', '10', 1, '2026-04-24 08:39:44', '2026-04-24 08:39:44', 0),
(52, '2026-03-17', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-083723', 'Loan Disbursement - LN-20260424-083723', 500000.00, 80000.00, 0.00, 80000.00, 580000.00, 'loan_disbursement', '10', 1, '2026-04-24 08:39:44', '2026-04-24 08:39:44', 0),
(53, '2026-03-27', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-085132', 'Loan Disbursement - LN-20260424-085132', 29000000.00, 10000000.00, 0.00, 10000000.00, 39000000.00, 'loan_disbursement', '11', 1, '2026-04-24 08:53:44', '2026-04-24 08:53:44', 0),
(54, '2026-03-27', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-085132', 'Loan Disbursement - LN-20260424-085132', -27260000.00, 0.00, 9400000.00, -9400000.00, -36660000.00, 'loan_disbursement', '11', 1, '2026-04-24 08:53:44', '2026-04-24 08:53:44', 0),
(55, '2026-03-27', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-085132', 'Loan Disbursement - LN-20260424-085132', 580000.00, 0.00, 200000.00, 200000.00, 780000.00, 'loan_disbursement', '11', 1, '2026-04-24 08:53:44', '2026-04-24 08:53:44', 0),
(56, '2026-03-27', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-085132', 'Loan Disbursement - LN-20260424-085132', 580000.00, 0.00, 200000.00, 200000.00, 780000.00, 'loan_disbursement', '11', 1, '2026-04-24 08:53:44', '2026-04-24 08:53:44', 0),
(57, '2026-03-27', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-085132', 'Loan Disbursement - LN-20260424-085132', 580000.00, 200000.00, 0.00, 200000.00, 780000.00, 'loan_disbursement', '11', 1, '2026-04-24 08:53:44', '2026-04-24 08:53:44', 0),
(58, '2026-03-28', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-085808', 'Loan Disbursement - LN-20260424-085808', 39000000.00, 5000000.00, 0.00, 5000000.00, 44000000.00, 'loan_disbursement', '12', 1, '2026-04-24 09:00:25', '2026-04-24 09:00:25', 0),
(59, '2026-03-28', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-085808', 'Loan Disbursement - LN-20260424-085808', -36660000.00, 0.00, 4700000.00, -4700000.00, -41360000.00, 'loan_disbursement', '12', 1, '2026-04-24 09:00:25', '2026-04-24 09:00:25', 0),
(60, '2026-03-28', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-085808', 'Loan Disbursement - LN-20260424-085808', 780000.00, 0.00, 100000.00, 100000.00, 880000.00, 'loan_disbursement', '12', 1, '2026-04-24 09:00:25', '2026-04-24 09:00:25', 0),
(61, '2026-03-28', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-085808', 'Loan Disbursement - LN-20260424-085808', 780000.00, 0.00, 100000.00, 100000.00, 880000.00, 'loan_disbursement', '12', 1, '2026-04-24 09:00:25', '2026-04-24 09:00:25', 0),
(62, '2026-03-28', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-085808', 'Loan Disbursement - LN-20260424-085808', 780000.00, 100000.00, 0.00, 100000.00, 880000.00, 'loan_disbursement', '12', 1, '2026-04-24 09:00:25', '2026-04-24 09:00:25', 0),
(63, '2026-03-30', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-090747', 'Loan Disbursement - LN-20260424-090747', 44000000.00, 11000000.00, 0.00, 11000000.00, 55000000.00, 'loan_disbursement', '13', 1, '2026-04-24 09:10:57', '2026-04-24 09:10:57', 0),
(64, '2026-03-30', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-090747', 'Loan Disbursement - LN-20260424-090747', -41360000.00, 0.00, 10340000.00, -10340000.00, -51700000.00, 'loan_disbursement', '13', 1, '2026-04-24 09:10:57', '2026-04-24 09:10:57', 0),
(65, '2026-03-30', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-090747', 'Loan Disbursement - LN-20260424-090747', 880000.00, 0.00, 220000.00, 220000.00, 1100000.00, 'loan_disbursement', '13', 1, '2026-04-24 09:10:57', '2026-04-24 09:10:57', 0),
(66, '2026-03-30', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-090747', 'Loan Disbursement - LN-20260424-090747', 880000.00, 0.00, 220000.00, 220000.00, 1100000.00, 'loan_disbursement', '13', 1, '2026-04-24 09:10:57', '2026-04-24 09:10:57', 0),
(67, '2026-03-30', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-090747', 'Loan Disbursement - LN-20260424-090747', 880000.00, 220000.00, 0.00, 220000.00, 1100000.00, 'loan_disbursement', '13', 1, '2026-04-24 09:10:57', '2026-04-24 09:10:57', 0),
(68, '2026-03-31', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-092905', 'Loan Disbursement - LN-20260424-092905', 55000000.00, 4500000.00, 0.00, 4500000.00, 59500000.00, 'loan_disbursement', '14', 1, '2026-04-24 09:31:59', '2026-04-24 09:31:59', 0),
(69, '2026-03-31', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-092905', 'Loan Disbursement - LN-20260424-092905', -51700000.00, 0.00, 4230000.00, -4230000.00, -55930000.00, 'loan_disbursement', '14', 1, '2026-04-24 09:31:59', '2026-04-24 09:31:59', 0),
(70, '2026-03-31', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-092905', 'Loan Disbursement - LN-20260424-092905', 1100000.00, 0.00, 90000.00, 90000.00, 1190000.00, 'loan_disbursement', '14', 1, '2026-04-24 09:31:59', '2026-04-24 09:31:59', 0),
(71, '2026-03-31', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-092905', 'Loan Disbursement - LN-20260424-092905', 1100000.00, 0.00, 90000.00, 90000.00, 1190000.00, 'loan_disbursement', '14', 1, '2026-04-24 09:31:59', '2026-04-24 09:31:59', 0),
(72, '2026-03-31', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-092905', 'Loan Disbursement - LN-20260424-092905', 1100000.00, 90000.00, 0.00, 90000.00, 1190000.00, 'loan_disbursement', '14', 1, '2026-04-24 09:31:59', '2026-04-24 09:31:59', 0),
(73, '2026-03-31', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-094909', 'Loan Disbursement - LN-20260424-094909', 59500000.00, 5000000.00, 0.00, 5000000.00, 64500000.00, 'loan_disbursement', '15', 1, '2026-04-24 09:54:47', '2026-04-24 09:54:47', 0),
(74, '2026-03-31', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-094909', 'Loan Disbursement - LN-20260424-094909', -55930000.00, 0.00, 4700000.00, -4700000.00, -60630000.00, 'loan_disbursement', '15', 1, '2026-04-24 09:54:47', '2026-04-24 09:54:47', 0),
(75, '2026-03-31', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-094909', 'Loan Disbursement - LN-20260424-094909', 1190000.00, 0.00, 100000.00, 100000.00, 1290000.00, 'loan_disbursement', '15', 1, '2026-04-24 09:54:47', '2026-04-24 09:54:47', 0),
(76, '2026-03-31', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-094909', 'Loan Disbursement - LN-20260424-094909', 1190000.00, 0.00, 100000.00, 100000.00, 1290000.00, 'loan_disbursement', '15', 1, '2026-04-24 09:54:47', '2026-04-24 09:54:47', 0),
(77, '2026-03-31', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-094909', 'Loan Disbursement - LN-20260424-094909', 1190000.00, 100000.00, 0.00, 100000.00, 1290000.00, 'loan_disbursement', '15', 1, '2026-04-24 09:54:47', '2026-04-24 09:54:47', 0),
(78, '2026-04-01', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-095920', 'Loan Disbursement - LN-20260424-095920', 64500000.00, 2500000.00, 0.00, 2500000.00, 67000000.00, 'loan_disbursement', '16', 1, '2026-04-24 10:04:46', '2026-04-24 10:04:46', 0),
(79, '2026-04-01', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-095920', 'Loan Disbursement - LN-20260424-095920', -60630000.00, 0.00, 2350000.00, -2350000.00, -62980000.00, 'loan_disbursement', '16', 1, '2026-04-24 10:04:46', '2026-04-24 10:04:46', 0),
(80, '2026-04-01', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-095920', 'Loan Disbursement - LN-20260424-095920', 1290000.00, 0.00, 50000.00, 50000.00, 1340000.00, 'loan_disbursement', '16', 1, '2026-04-24 10:04:46', '2026-04-24 10:04:46', 0),
(81, '2026-04-01', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-095920', 'Loan Disbursement - LN-20260424-095920', 1290000.00, 0.00, 50000.00, 50000.00, 1340000.00, 'loan_disbursement', '16', 1, '2026-04-24 10:04:46', '2026-04-24 10:04:46', 0),
(82, '2026-04-01', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-095920', 'Loan Disbursement - LN-20260424-095920', 1290000.00, 50000.00, 0.00, 50000.00, 1340000.00, 'loan_disbursement', '16', 1, '2026-04-24 10:04:46', '2026-04-24 10:04:46', 0),
(83, '2026-04-03', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-100813', 'Loan Disbursement - LN-20260424-100813', 67000000.00, 10000000.00, 0.00, 10000000.00, 77000000.00, 'loan_disbursement', '17', 1, '2026-04-24 10:12:56', '2026-04-24 10:12:56', 0),
(84, '2026-04-03', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-100813', 'Loan Disbursement - LN-20260424-100813', -62980000.00, 0.00, 9400000.00, -9400000.00, -72380000.00, 'loan_disbursement', '17', 1, '2026-04-24 10:12:56', '2026-04-24 10:12:56', 0),
(85, '2026-04-03', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-100813', 'Loan Disbursement - LN-20260424-100813', 1340000.00, 0.00, 200000.00, 200000.00, 1540000.00, 'loan_disbursement', '17', 1, '2026-04-24 10:12:56', '2026-04-24 10:12:56', 0),
(86, '2026-04-03', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-100813', 'Loan Disbursement - LN-20260424-100813', 1340000.00, 0.00, 200000.00, 200000.00, 1540000.00, 'loan_disbursement', '17', 1, '2026-04-24 10:12:56', '2026-04-24 10:12:56', 0),
(87, '2026-04-03', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-100813', 'Loan Disbursement - LN-20260424-100813', 1340000.00, 200000.00, 0.00, 200000.00, 1540000.00, 'loan_disbursement', '17', 1, '2026-04-24 10:12:56', '2026-04-24 10:12:56', 0),
(88, '2026-04-03', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-101614', 'Loan Disbursement - LN-20260424-101614', 77000000.00, 10000000.00, 0.00, 10000000.00, 87000000.00, 'loan_disbursement', '18', 1, '2026-04-24 10:23:29', '2026-04-24 10:23:29', 0),
(89, '2026-04-03', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-101614', 'Loan Disbursement - LN-20260424-101614', -72380000.00, 0.00, 9400000.00, -9400000.00, -81780000.00, 'loan_disbursement', '18', 1, '2026-04-24 10:23:29', '2026-04-24 10:23:29', 0),
(90, '2026-04-03', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-101614', 'Loan Disbursement - LN-20260424-101614', 1540000.00, 0.00, 200000.00, 200000.00, 1740000.00, 'loan_disbursement', '18', 1, '2026-04-24 10:23:29', '2026-04-24 10:23:29', 0),
(91, '2026-04-03', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-101614', 'Loan Disbursement - LN-20260424-101614', 1540000.00, 0.00, 200000.00, 200000.00, 1740000.00, 'loan_disbursement', '18', 1, '2026-04-24 10:23:29', '2026-04-24 10:23:29', 0),
(92, '2026-04-03', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-101614', 'Loan Disbursement - LN-20260424-101614', 1540000.00, 200000.00, 0.00, 200000.00, 1740000.00, 'loan_disbursement', '18', 1, '2026-04-24 10:23:29', '2026-04-24 10:23:29', 0),
(93, '2026-04-11', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-102640', 'Loan Disbursement - LN-20260424-102640', 87000000.00, 1000000.00, 0.00, 1000000.00, 88000000.00, 'loan_disbursement', '19', 1, '2026-04-24 10:32:15', '2026-04-24 10:32:15', 0),
(94, '2026-04-11', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-102640', 'Loan Disbursement - LN-20260424-102640', -81780000.00, 0.00, 940000.00, -940000.00, -82720000.00, 'loan_disbursement', '19', 1, '2026-04-24 10:32:15', '2026-04-24 10:32:15', 0),
(95, '2026-04-11', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-102640', 'Loan Disbursement - LN-20260424-102640', 1740000.00, 0.00, 20000.00, 20000.00, 1760000.00, 'loan_disbursement', '19', 1, '2026-04-24 10:32:15', '2026-04-24 10:32:15', 0),
(96, '2026-04-11', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-102640', 'Loan Disbursement - LN-20260424-102640', 1740000.00, 0.00, 20000.00, 20000.00, 1760000.00, 'loan_disbursement', '19', 1, '2026-04-24 10:32:15', '2026-04-24 10:32:15', 0),
(97, '2026-04-11', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-102640', 'Loan Disbursement - LN-20260424-102640', 1740000.00, 20000.00, 0.00, 20000.00, 1760000.00, 'loan_disbursement', '19', 1, '2026-04-24 10:32:15', '2026-04-24 10:32:15', 0),
(98, '2026-04-03', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-103741', 'Loan Disbursement - LN-20260424-103741', 87000000.00, 20000000.00, 0.00, 20000000.00, 107000000.00, 'loan_disbursement', '20', 1, '2026-04-24 10:48:59', '2026-04-24 10:48:59', 0),
(99, '2026-04-03', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-103741', 'Loan Disbursement - LN-20260424-103741', -81780000.00, 0.00, 18800000.00, -18800000.00, -100580000.00, 'loan_disbursement', '20', 1, '2026-04-24 10:48:59', '2026-04-24 10:48:59', 0),
(100, '2026-04-03', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-103741', 'Loan Disbursement - LN-20260424-103741', 1740000.00, 0.00, 400000.00, 400000.00, 2140000.00, 'loan_disbursement', '20', 1, '2026-04-24 10:48:59', '2026-04-24 10:48:59', 0),
(101, '2026-04-03', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-103741', 'Loan Disbursement - LN-20260424-103741', 1740000.00, 0.00, 400000.00, 400000.00, 2140000.00, 'loan_disbursement', '20', 1, '2026-04-24 10:48:59', '2026-04-24 10:48:59', 0),
(102, '2026-04-03', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-103741', 'Loan Disbursement - LN-20260424-103741', 1740000.00, 400000.00, 0.00, 400000.00, 2140000.00, 'loan_disbursement', '20', 1, '2026-04-24 10:48:59', '2026-04-24 10:48:59', 0),
(103, '2026-04-14', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-111533', 'Loan Disbursement - LN-20260424-111533', 88000000.00, 20000000.00, 0.00, 20000000.00, 108000000.00, 'loan_disbursement', '21', 1, '2026-04-24 11:19:15', '2026-04-24 11:19:15', 0),
(104, '2026-04-14', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-111533', 'Loan Disbursement - LN-20260424-111533', -82720000.00, 0.00, 18800000.00, -18800000.00, -101520000.00, 'loan_disbursement', '21', 1, '2026-04-24 11:19:15', '2026-04-24 11:19:15', 0),
(105, '2026-04-14', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-111533', 'Loan Disbursement - LN-20260424-111533', 1760000.00, 0.00, 400000.00, 400000.00, 2160000.00, 'loan_disbursement', '21', 1, '2026-04-24 11:19:15', '2026-04-24 11:19:15', 0),
(106, '2026-04-14', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-111533', 'Loan Disbursement - LN-20260424-111533', 1760000.00, 0.00, 400000.00, 400000.00, 2160000.00, 'loan_disbursement', '21', 1, '2026-04-24 11:19:15', '2026-04-24 11:19:15', 0),
(107, '2026-04-14', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-111533', 'Loan Disbursement - LN-20260424-111533', 1760000.00, 400000.00, 0.00, 400000.00, 2160000.00, 'loan_disbursement', '21', 1, '2026-04-24 11:19:15', '2026-04-24 11:19:15', 0),
(108, '2026-04-22', 'Assets', '1201', 'Loans to Customers', 'Loan Portfolio Addition', 'LN-20260424-112831', 'Loan Disbursement - LN-20260424-112831', 108000000.00, 2000000.00, 0.00, 2000000.00, 110000000.00, 'loan_disbursement', '22', 1, '2026-04-24 11:30:15', '2026-04-24 11:30:15', 0),
(109, '2026-04-22', 'Assets', '1102', 'Bank Account', 'Disbursement Payment', 'LN-20260424-112831', 'Loan Disbursement - LN-20260424-112831', -101520000.00, 0.00, 1880000.00, -1880000.00, -103400000.00, 'loan_disbursement', '22', 1, '2026-04-24 11:30:15', '2026-04-24 11:30:15', 0),
(110, '2026-04-22', 'Revenue', '4201', 'Processing Fee Income', 'Upfront Processing Fee', 'LN-20260424-112831', 'Loan Disbursement - LN-20260424-112831', 2160000.00, 0.00, 40000.00, 40000.00, 2200000.00, 'loan_disbursement', '22', 1, '2026-04-24 11:30:15', '2026-04-24 11:30:15', 0),
(111, '2026-04-22', 'Revenue', '4203', 'Requested Amount Income (2%)', 'Processing Fee Income (Initial Recognition)', 'LN-20260424-112831', 'Loan Disbursement - LN-20260424-112831', 2160000.00, 0.00, 40000.00, 40000.00, 2200000.00, 'loan_disbursement', '22', 1, '2026-04-24 11:30:15', '2026-04-24 11:30:15', 0),
(112, '2026-04-22', 'Assets', '1202', 'Requested Amount Receivable', 'Accrued Processing Fee (Subtracted from amount given)', 'LN-20260424-112831', 'Loan Disbursement - LN-20260424-112831', 2160000.00, 40000.00, 0.00, 40000.00, 2200000.00, 'loan_disbursement', '22', 1, '2026-04-24 11:30:15', '2026-04-24 11:30:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loan_application_fees`
--

CREATE TABLE `loan_application_fees` (
  `id` int(11) NOT NULL,
  `loan_number` varchar(50) DEFAULT NULL,
  `applicant_name` varchar(255) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `fee_amount` decimal(15,2) DEFAULT NULL,
  `payment_status` enum('Paid','Pending','Refunded') DEFAULT 'Pending',
  `payment_date` date DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loan_instalments`
--

CREATE TABLE `loan_instalments` (
  `instalment_id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `loan_number` varchar(50) NOT NULL,
  `instalment_number` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `payment_date` date DEFAULT NULL,
  `opening_balance` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Principal balance at start of period',
  `closing_balance` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Principal balance at end of period',
  `principal_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Principal portion of payment',
  `interest_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Interest portion of payment',
  `management_fee` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Management fee for this instalment',
  `total_payment` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Total payment required (principal + interest + mgmt fee)',
  `paid_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Amount actually paid',
  `principal_paid` decimal(15,2) NOT NULL DEFAULT '0.00',
  `interest_paid` decimal(15,2) NOT NULL DEFAULT '0.00',
  `management_fee_paid` decimal(15,2) NOT NULL DEFAULT '0.00',
  `balance_remaining` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Unpaid portion of this instalment',
  `days_overdue` int(11) NOT NULL DEFAULT '0',
  `penalty_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `penalty_paid` decimal(15,2) NOT NULL DEFAULT '0.00',
  `status` enum('Pending','Partially Paid','Fully Paid','Overdue') NOT NULL DEFAULT 'Pending',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `overdue_ledger_recorded` tinyint(1) DEFAULT '0',
  `ninety_day_recorded` tinyint(1) DEFAULT '0',
  `monitoring_fee_net` decimal(15,2) DEFAULT '0.00',
  `monitoring_fee_vat` decimal(15,2) DEFAULT '0.00',
  `monitoring_fee_total` decimal(15,2) DEFAULT '0.00',
  `provision_calculated` tinyint(1) DEFAULT '0',
  `provision_amount` decimal(15,2) DEFAULT '0.00',
  `provision_date` date DEFAULT NULL,
  `suspension_recorded` tinyint(1) DEFAULT '0',
  `requested_amount` decimal(15,2) DEFAULT '0.00',
  `requested_amount_paid` decimal(15,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_instalments`
--

INSERT INTO `loan_instalments` (`instalment_id`, `loan_id`, `loan_number`, `instalment_number`, `due_date`, `payment_date`, `opening_balance`, `closing_balance`, `principal_amount`, `interest_amount`, `management_fee`, `total_payment`, `paid_amount`, `principal_paid`, `interest_paid`, `management_fee_paid`, `balance_remaining`, `days_overdue`, `penalty_amount`, `penalty_paid`, `status`, `created_by`, `created_at`, `updated_at`, `overdue_ledger_recorded`, `ninety_day_recorded`, `monitoring_fee_net`, `monitoring_fee_vat`, `monitoring_fee_total`, `provision_calculated`, `provision_amount`, `provision_date`, `suspension_recorded`, `requested_amount`, `requested_amount_paid`) VALUES
(1, 1, 'LN-20260423-151230', 1, '2026-05-23', NULL, 3000000.00, 2500000.00, 500000.00, 150000.00, 0.00, 650000.00, 0.00, 0.00, 0.00, 0.00, 650000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-23 15:17:14', '2026-04-23 15:17:14', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(2, 1, 'LN-20260423-151230', 2, '2026-06-23', NULL, 2500000.00, 2000000.00, 500000.00, 150000.00, 0.00, 650000.00, 0.00, 0.00, 0.00, 0.00, 650000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-23 15:17:14', '2026-04-23 15:17:14', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(3, 1, 'LN-20260423-151230', 3, '2026-07-23', NULL, 2000000.00, 1500000.00, 500000.00, 150000.00, 0.00, 650000.00, 0.00, 0.00, 0.00, 0.00, 650000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-23 15:17:14', '2026-04-23 15:17:14', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(4, 1, 'LN-20260423-151230', 4, '2026-08-23', NULL, 1500000.00, 1000000.00, 500000.00, 150000.00, 0.00, 650000.00, 0.00, 0.00, 0.00, 0.00, 650000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-23 15:17:14', '2026-04-23 15:17:14', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(5, 1, 'LN-20260423-151230', 5, '2026-09-23', NULL, 1000000.00, 500000.00, 500000.00, 150000.00, 0.00, 650000.00, 0.00, 0.00, 0.00, 0.00, 650000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-23 15:17:14', '2026-04-23 15:17:14', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(6, 1, 'LN-20260423-151230', 6, '2026-10-23', NULL, 500000.00, 0.00, 500000.00, 150000.00, 0.00, 650000.00, 0.00, 0.00, 0.00, 0.00, 650000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-23 15:17:14', '2026-04-23 15:17:14', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(7, 2, 'LN-20260423-153231', 1, '2026-04-05', NULL, 20000000.00, 10000000.00, 10000000.00, 1000000.00, 0.00, 11000000.00, 0.00, 0.00, 0.00, 0.00, 11000000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-23 15:38:23', '2026-04-23 15:38:23', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(8, 2, 'LN-20260423-153231', 2, '2026-05-05', NULL, 10000000.00, 0.00, 10000000.00, 1000000.00, 0.00, 11000000.00, 0.00, 0.00, 0.00, 0.00, 11000000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-23 15:38:23', '2026-04-23 15:38:23', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(9, 3, 'LN-20260423-154301', 1, '2026-03-26', NULL, 7000000.00, 4666666.67, 2333333.33, 350000.00, 0.00, 2683333.33, 0.00, 0.00, 0.00, 0.00, 2683333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-23 15:46:20', '2026-04-23 15:46:20', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(10, 3, 'LN-20260423-154301', 2, '2026-04-26', NULL, 4666666.67, 2333333.34, 2333333.33, 350000.00, 0.00, 2683333.33, 0.00, 0.00, 0.00, 0.00, 2683333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-23 15:46:20', '2026-04-23 15:46:20', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(11, 3, 'LN-20260423-154301', 3, '2026-05-26', NULL, 2333333.34, 0.00, 2333333.34, 350000.00, 0.00, 2683333.34, 0.00, 0.00, 0.00, 0.00, 2683333.34, 0, 0.00, 0.00, 'Pending', 1, '2026-04-23 15:46:20', '2026-04-23 15:46:20', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(12, 4, 'LN-20260424-073550', 1, '2026-04-03', NULL, 25000000.00, 18750000.00, 6250000.00, 1250000.00, 0.00, 7500000.00, 0.00, 0.00, 0.00, 0.00, 7500000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 07:43:24', '2026-04-24 07:43:24', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(13, 4, 'LN-20260424-073550', 2, '2026-05-03', NULL, 18750000.00, 12500000.00, 6250000.00, 1250000.00, 0.00, 7500000.00, 0.00, 0.00, 0.00, 0.00, 7500000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 07:43:24', '2026-04-24 07:43:24', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(14, 4, 'LN-20260424-073550', 3, '2026-06-03', NULL, 12500000.00, 6250000.00, 6250000.00, 1250000.00, 0.00, 7500000.00, 0.00, 0.00, 0.00, 0.00, 7500000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 07:43:24', '2026-04-24 07:43:24', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(15, 4, 'LN-20260424-073550', 4, '2026-07-03', NULL, 6250000.00, 0.00, 6250000.00, 1250000.00, 0.00, 7500000.00, 0.00, 0.00, 0.00, 0.00, 7500000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 07:43:24', '2026-04-24 07:43:24', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(16, 5, 'LN-20260424-074655', 1, '2026-04-03', NULL, 2000000.00, 1666666.67, 333333.33, 100000.00, 0.00, 433333.33, 0.00, 0.00, 0.00, 0.00, 433333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 07:51:10', '2026-04-24 07:51:10', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(17, 5, 'LN-20260424-074655', 2, '2026-05-03', NULL, 1666666.67, 1333333.34, 333333.33, 100000.00, 0.00, 433333.33, 0.00, 0.00, 0.00, 0.00, 433333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 07:51:10', '2026-04-24 07:51:10', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(18, 5, 'LN-20260424-074655', 3, '2026-06-03', NULL, 1333333.34, 1000000.01, 333333.33, 100000.00, 0.00, 433333.33, 0.00, 0.00, 0.00, 0.00, 433333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 07:51:10', '2026-04-24 07:51:10', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(19, 5, 'LN-20260424-074655', 4, '2026-07-03', NULL, 1000000.01, 666666.68, 333333.33, 100000.00, 0.00, 433333.33, 0.00, 0.00, 0.00, 0.00, 433333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 07:51:10', '2026-04-24 07:51:10', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(20, 5, 'LN-20260424-074655', 5, '2026-08-03', NULL, 666666.68, 333333.35, 333333.33, 100000.00, 0.00, 433333.33, 0.00, 0.00, 0.00, 0.00, 433333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 07:51:10', '2026-04-24 07:51:10', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(21, 5, 'LN-20260424-074655', 6, '2026-09-03', NULL, 333333.35, 0.00, 333333.35, 100000.00, 0.00, 433333.35, 0.00, 0.00, 0.00, 0.00, 433333.35, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 07:51:10', '2026-04-24 07:51:10', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(22, 6, 'LN-20260424-080257', 1, '2026-04-03', NULL, 2000000.00, 1666666.67, 333333.33, 100000.00, 0.00, 433333.33, 0.00, 0.00, 0.00, 0.00, 433333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:09:05', '2026-04-24 08:09:05', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(23, 6, 'LN-20260424-080257', 2, '2026-05-03', NULL, 1666666.67, 1333333.34, 333333.33, 100000.00, 0.00, 433333.33, 0.00, 0.00, 0.00, 0.00, 433333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:09:05', '2026-04-24 08:09:05', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(24, 6, 'LN-20260424-080257', 3, '2026-06-03', NULL, 1333333.34, 1000000.01, 333333.33, 100000.00, 0.00, 433333.33, 0.00, 0.00, 0.00, 0.00, 433333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:09:05', '2026-04-24 08:09:05', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(25, 6, 'LN-20260424-080257', 4, '2026-07-03', NULL, 1000000.01, 666666.68, 333333.33, 100000.00, 0.00, 433333.33, 0.00, 0.00, 0.00, 0.00, 433333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:09:05', '2026-04-24 08:09:05', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(26, 6, 'LN-20260424-080257', 5, '2026-08-03', NULL, 666666.68, 333333.35, 333333.33, 100000.00, 0.00, 433333.33, 0.00, 0.00, 0.00, 0.00, 433333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:09:05', '2026-04-24 08:09:05', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(27, 6, 'LN-20260424-080257', 6, '2026-09-03', NULL, 333333.35, 0.00, 333333.35, 100000.00, 0.00, 433333.35, 0.00, 0.00, 0.00, 0.00, 433333.35, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:09:05', '2026-04-24 08:09:05', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(28, 7, 'LN-20260424-081458', 1, '2026-03-26', NULL, 10000000.00, 7500000.00, 2500000.00, 500000.00, 0.00, 3000000.00, 0.00, 0.00, 0.00, 0.00, 3000000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:17:54', '2026-04-24 08:17:54', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(29, 7, 'LN-20260424-081458', 2, '2026-04-26', NULL, 7500000.00, 5000000.00, 2500000.00, 500000.00, 0.00, 3000000.00, 0.00, 0.00, 0.00, 0.00, 3000000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:17:54', '2026-04-24 08:17:54', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(30, 7, 'LN-20260424-081458', 3, '2026-05-26', NULL, 5000000.00, 2500000.00, 2500000.00, 500000.00, 0.00, 3000000.00, 0.00, 0.00, 0.00, 0.00, 3000000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:17:54', '2026-04-24 08:17:54', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(31, 7, 'LN-20260424-081458', 4, '2026-06-26', NULL, 2500000.00, 0.00, 2500000.00, 500000.00, 0.00, 3000000.00, 0.00, 0.00, 0.00, 0.00, 3000000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:17:54', '2026-04-24 08:17:54', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(32, 8, 'LN-20260424-082346', 1, '2026-04-11', NULL, 2000000.00, 1333333.33, 666666.67, 100000.00, 0.00, 766666.67, 0.00, 0.00, 0.00, 0.00, 766666.67, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:26:30', '2026-04-24 08:26:30', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(33, 8, 'LN-20260424-082346', 2, '2026-05-11', NULL, 1333333.33, 666666.66, 666666.67, 100000.00, 0.00, 766666.67, 0.00, 0.00, 0.00, 0.00, 766666.67, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:26:30', '2026-04-24 08:26:30', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(34, 8, 'LN-20260424-082346', 3, '2026-06-11', NULL, 666666.66, 0.00, 666666.66, 100000.00, 0.00, 766666.66, 0.00, 0.00, 0.00, 0.00, 766666.66, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:26:30', '2026-04-24 08:26:30', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(35, 9, 'LN-20260424-083017', 1, '2026-04-13', NULL, 3000000.00, 2000000.00, 1000000.00, 150000.00, 0.00, 1150000.00, 0.00, 0.00, 0.00, 0.00, 1150000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:33:00', '2026-04-24 08:33:00', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(36, 9, 'LN-20260424-083017', 2, '2026-05-13', NULL, 2000000.00, 1000000.00, 1000000.00, 150000.00, 0.00, 1150000.00, 0.00, 0.00, 0.00, 0.00, 1150000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:33:00', '2026-04-24 08:33:00', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(37, 9, 'LN-20260424-083017', 3, '2026-06-13', NULL, 1000000.00, 0.00, 1000000.00, 150000.00, 0.00, 1150000.00, 0.00, 0.00, 0.00, 0.00, 1150000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:33:00', '2026-04-24 08:33:00', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(38, 10, 'LN-20260424-083723', 1, '2026-04-17', NULL, 4000000.00, 2666666.67, 1333333.33, 200000.00, 0.00, 1533333.33, 0.00, 0.00, 0.00, 0.00, 1533333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:39:44', '2026-04-24 08:39:44', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(39, 10, 'LN-20260424-083723', 2, '2026-05-17', NULL, 2666666.67, 1333333.34, 1333333.33, 200000.00, 0.00, 1533333.33, 0.00, 0.00, 0.00, 0.00, 1533333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:39:44', '2026-04-24 08:39:44', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(40, 10, 'LN-20260424-083723', 3, '2026-06-17', NULL, 1333333.34, 0.00, 1333333.34, 200000.00, 0.00, 1533333.34, 0.00, 0.00, 0.00, 0.00, 1533333.34, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:39:44', '2026-04-24 08:39:44', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(41, 11, 'LN-20260424-085132', 1, '2026-04-27', NULL, 10000000.00, 6666666.67, 3333333.33, 500000.00, 0.00, 3833333.33, 0.00, 0.00, 0.00, 0.00, 3833333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:53:44', '2026-04-24 08:53:44', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(42, 11, 'LN-20260424-085132', 2, '2026-05-27', NULL, 6666666.67, 3333333.34, 3333333.33, 500000.00, 0.00, 3833333.33, 0.00, 0.00, 0.00, 0.00, 3833333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:53:44', '2026-04-24 08:53:44', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(43, 11, 'LN-20260424-085132', 3, '2026-06-27', NULL, 3333333.34, 0.00, 3333333.34, 500000.00, 0.00, 3833333.34, 0.00, 0.00, 0.00, 0.00, 3833333.34, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 08:53:44', '2026-04-24 08:53:44', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(44, 12, 'LN-20260424-085808', 1, '2026-04-28', NULL, 5000000.00, 2500000.00, 2500000.00, 250000.00, 0.00, 2750000.00, 0.00, 0.00, 0.00, 0.00, 2750000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 09:00:25', '2026-04-24 09:00:25', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(45, 12, 'LN-20260424-085808', 2, '2026-05-28', NULL, 2500000.00, 0.00, 2500000.00, 250000.00, 0.00, 2750000.00, 0.00, 0.00, 0.00, 0.00, 2750000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 09:00:25', '2026-04-24 09:00:25', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(46, 13, 'LN-20260424-090747', 1, '2026-04-30', NULL, 11000000.00, 5500000.00, 5500000.00, 550000.00, 0.00, 6050000.00, 0.00, 0.00, 0.00, 0.00, 6050000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 09:10:57', '2026-04-24 09:10:57', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(47, 13, 'LN-20260424-090747', 2, '2026-05-30', NULL, 5500000.00, 0.00, 5500000.00, 550000.00, 0.00, 6050000.00, 0.00, 0.00, 0.00, 0.00, 6050000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 09:10:57', '2026-04-24 09:10:57', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(48, 14, 'LN-20260424-092905', 1, '2026-05-01', NULL, 4500000.00, 3000000.00, 1500000.00, 225000.00, 0.00, 1725000.00, 0.00, 0.00, 0.00, 0.00, 1725000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 09:31:59', '2026-04-24 09:31:59', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(49, 14, 'LN-20260424-092905', 2, '2026-05-31', NULL, 3000000.00, 1500000.00, 1500000.00, 225000.00, 0.00, 1725000.00, 0.00, 0.00, 0.00, 0.00, 1725000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 09:31:59', '2026-04-24 09:31:59', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(50, 14, 'LN-20260424-092905', 3, '2026-07-01', NULL, 1500000.00, 0.00, 1500000.00, 225000.00, 0.00, 1725000.00, 0.00, 0.00, 0.00, 0.00, 1725000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 09:31:59', '2026-04-24 09:31:59', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(51, 15, 'LN-20260424-094909', 1, '2026-05-01', NULL, 5000000.00, 3333333.33, 1666666.67, 250000.00, 0.00, 1916666.67, 0.00, 0.00, 0.00, 0.00, 1916666.67, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 09:54:47', '2026-04-24 09:54:47', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(52, 15, 'LN-20260424-094909', 2, '2026-05-31', NULL, 3333333.33, 1666666.66, 1666666.67, 250000.00, 0.00, 1916666.67, 0.00, 0.00, 0.00, 0.00, 1916666.67, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 09:54:47', '2026-04-24 09:54:47', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(53, 15, 'LN-20260424-094909', 3, '2026-07-01', NULL, 1666666.66, 0.00, 1666666.66, 250000.00, 0.00, 1916666.66, 0.00, 0.00, 0.00, 0.00, 1916666.66, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 09:54:47', '2026-04-24 09:54:47', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(54, 16, 'LN-20260424-095920', 1, '2026-05-01', NULL, 2500000.00, 1666666.67, 833333.33, 125000.00, 0.00, 958333.33, 0.00, 0.00, 0.00, 0.00, 958333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:04:46', '2026-04-24 10:04:46', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(55, 16, 'LN-20260424-095920', 2, '2026-06-01', NULL, 1666666.67, 833333.34, 833333.33, 125000.00, 0.00, 958333.33, 0.00, 0.00, 0.00, 0.00, 958333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:04:46', '2026-04-24 10:04:46', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(56, 16, 'LN-20260424-095920', 3, '2026-07-01', NULL, 833333.34, 0.00, 833333.34, 125000.00, 0.00, 958333.34, 0.00, 0.00, 0.00, 0.00, 958333.34, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:04:46', '2026-04-24 10:04:46', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(57, 17, 'LN-20260424-100813', 1, '2026-05-03', NULL, 10000000.00, 6666666.67, 3333333.33, 500000.00, 0.00, 3833333.33, 0.00, 0.00, 0.00, 0.00, 3833333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:12:56', '2026-04-24 10:12:56', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(58, 17, 'LN-20260424-100813', 2, '2026-06-03', NULL, 6666666.67, 3333333.34, 3333333.33, 500000.00, 0.00, 3833333.33, 0.00, 0.00, 0.00, 0.00, 3833333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:12:56', '2026-04-24 10:12:56', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(59, 17, 'LN-20260424-100813', 3, '2026-07-03', NULL, 3333333.34, 0.00, 3333333.34, 500000.00, 0.00, 3833333.34, 0.00, 0.00, 0.00, 0.00, 3833333.34, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:12:56', '2026-04-24 10:12:56', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(60, 18, 'LN-20260424-101614', 1, '2026-05-03', NULL, 10000000.00, 6666666.67, 3333333.33, 500000.00, 0.00, 3833333.33, 0.00, 0.00, 0.00, 0.00, 3833333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:23:29', '2026-04-24 10:23:29', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(61, 18, 'LN-20260424-101614', 2, '2026-06-03', NULL, 6666666.67, 3333333.34, 3333333.33, 500000.00, 0.00, 3833333.33, 0.00, 0.00, 0.00, 0.00, 3833333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:23:29', '2026-04-24 10:23:29', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(62, 18, 'LN-20260424-101614', 3, '2026-07-03', NULL, 3333333.34, 0.00, 3333333.34, 500000.00, 0.00, 3833333.34, 0.00, 0.00, 0.00, 0.00, 3833333.34, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:23:29', '2026-04-24 10:23:29', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(63, 19, 'LN-20260424-102640', 1, '2026-05-11', NULL, 1000000.00, 666666.67, 333333.33, 50000.00, 0.00, 383333.33, 0.00, 0.00, 0.00, 0.00, 383333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:32:15', '2026-04-24 10:32:15', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(64, 19, 'LN-20260424-102640', 2, '2026-06-11', NULL, 666666.67, 333333.34, 333333.33, 50000.00, 0.00, 383333.33, 0.00, 0.00, 0.00, 0.00, 383333.33, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:32:15', '2026-04-24 10:32:15', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(65, 19, 'LN-20260424-102640', 3, '2026-07-11', NULL, 333333.34, 0.00, 333333.34, 50000.00, 0.00, 383333.34, 0.00, 0.00, 0.00, 0.00, 383333.34, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:32:15', '2026-04-24 10:32:15', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(66, 20, 'LN-20260424-103741', 1, '2026-05-03', NULL, 20000000.00, 15000000.00, 5000000.00, 1000000.00, 0.00, 6000000.00, 0.00, 0.00, 0.00, 0.00, 6000000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:48:59', '2026-04-24 10:48:59', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(67, 20, 'LN-20260424-103741', 2, '2026-06-03', NULL, 15000000.00, 10000000.00, 5000000.00, 1000000.00, 0.00, 6000000.00, 0.00, 0.00, 0.00, 0.00, 6000000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:48:59', '2026-04-24 10:48:59', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(68, 20, 'LN-20260424-103741', 3, '2026-07-03', NULL, 10000000.00, 5000000.00, 5000000.00, 1000000.00, 0.00, 6000000.00, 0.00, 0.00, 0.00, 0.00, 6000000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:48:59', '2026-04-24 10:48:59', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(69, 20, 'LN-20260424-103741', 4, '2026-08-03', NULL, 5000000.00, 0.00, 5000000.00, 1000000.00, 0.00, 6000000.00, 0.00, 0.00, 0.00, 0.00, 6000000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 10:48:59', '2026-04-24 10:48:59', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(70, 21, 'LN-20260424-111533', 1, '2026-05-14', NULL, 20000000.00, 10000000.00, 10000000.00, 1000000.00, 0.00, 11000000.00, 0.00, 0.00, 0.00, 0.00, 11000000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 11:19:15', '2026-04-24 11:19:15', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(71, 21, 'LN-20260424-111533', 2, '2026-06-14', NULL, 10000000.00, 0.00, 10000000.00, 1000000.00, 0.00, 11000000.00, 0.00, 0.00, 0.00, 0.00, 11000000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 11:19:15', '2026-04-24 11:19:15', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(72, 22, 'LN-20260424-112831', 1, '2026-05-22', NULL, 2000000.00, 1000000.00, 1000000.00, 100000.00, 0.00, 1100000.00, 0.00, 0.00, 0.00, 0.00, 1100000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 11:30:15', '2026-04-24 11:30:15', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00),
(73, 22, 'LN-20260424-112831', 2, '2026-06-22', NULL, 1000000.00, 0.00, 1000000.00, 100000.00, 0.00, 1100000.00, 0.00, 0.00, 0.00, 0.00, 1100000.00, 0, 0.00, 0.00, 'Pending', 1, '2026-04-24 11:30:15', '2026-04-24 11:30:15', 0, 0, 0.00, 0.00, 0.00, 0, 0.00, NULL, 0, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `loan_payments`
--

CREATE TABLE `loan_payments` (
  `payment_id` int(11) NOT NULL,
  `loan_instalment_id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `month_paid` varchar(200) DEFAULT NULL,
  `payment_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `beginning_balance` decimal(15,2) DEFAULT '0.00',
  `payment_amount` decimal(15,2) NOT NULL,
  `interest_amount` decimal(15,2) DEFAULT '0.00',
  `principal_amount` decimal(15,2) DEFAULT '0.00',
  `monitoring_fee` decimal(15,2) DEFAULT '0.00',
  `days_overdue` int(11) DEFAULT '0',
  `penalties` decimal(15,2) DEFAULT '0.00',
  `final_payment` decimal(15,2) DEFAULT '0.00',
  `payment_method` varchar(50) DEFAULT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `adjustment_id` int(40) DEFAULT NULL,
  `payment_evidence` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loan_payment_adjustments`
--

CREATE TABLE `loan_payment_adjustments` (
  `adjustment_id` bigint(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `instalment_id` int(11) NOT NULL,
  `instalment_number` int(11) NOT NULL,
  `record_date` date NOT NULL,
  `adjustment_amount` decimal(15,2) NOT NULL,
  `adjustment_type` varchar(100) NOT NULL DEFAULT 'ADJUSTMENT',
  `status` varchar(200) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loan_payment_variance`
--

CREATE TABLE `loan_payment_variance` (
  `variance_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `loan_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instalment_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `expected_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `actual_amount_paid` decimal(15,2) NOT NULL DEFAULT '0.00',
  `variance_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `variance_type` enum('overpayment','underpayment','prepayment','exact_payment') COLLATE utf8mb4_unicode_ci NOT NULL,
  `principal_expected` decimal(15,2) DEFAULT '0.00',
  `principal_paid` decimal(15,2) DEFAULT '0.00',
  `principal_variance` decimal(15,2) DEFAULT '0.00',
  `interest_expected` decimal(15,2) DEFAULT '0.00',
  `interest_paid` decimal(15,2) DEFAULT '0.00',
  `interest_variance` decimal(15,2) DEFAULT '0.00',
  `monitoring_fee_expected` decimal(15,2) DEFAULT '0.00',
  `monitoring_fee_paid` decimal(15,2) DEFAULT '0.00',
  `monitoring_fee_variance` decimal(15,2) DEFAULT '0.00',
  `penalty_expected` decimal(15,2) DEFAULT '0.00',
  `penalty_paid` decimal(15,2) DEFAULT '0.00',
  `penalty_variance` decimal(15,2) DEFAULT '0.00',
  `unallocated_balance` decimal(15,2) DEFAULT '0.00',
  `allocated_balance` decimal(15,2) DEFAULT '0.00',
  `is_prepayment` tinyint(1) DEFAULT '0',
  `instalments_covered` int(11) DEFAULT '0',
  `prepayment_discount` decimal(15,2) DEFAULT '0.00',
  `status` enum('pending','allocated','partially_allocated','refunded','carried_forward') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `allocation_notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_portfolio`
--

CREATE TABLE `loan_portfolio` (
  `loan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `loan_number` varchar(50) NOT NULL,
  `loan_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Principal amount given to customer',
  `management_fee_rate` decimal(5,2) NOT NULL DEFAULT '5.50' COMMENT 'Management fee percentage (5.5%)',
  `management_fee_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Management fee (5.5% of loan amount)',
  `total_disbursed` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Loan amount + Management fee',
  `interest_rate` decimal(5,2) NOT NULL COMMENT 'Monthly interest rate percentage',
  `number_of_instalments` int(11) NOT NULL,
  `disbursement_date` date NOT NULL,
  `maturity_date` date NOT NULL,
  `total_interest` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Sum of all interest payments',
  `total_management_fees` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Total management fees across all instalments',
  `total_payment` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Total to be paid (principal + interest + mgmt fees)',
  `monthly_payment` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Fixed monthly payment amount (after 1st instalment)',
  `principal_outstanding` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Remaining principal balance',
  `interest_outstanding` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Remaining interest to be paid',
  `total_outstanding` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Total remaining balance',
  `total_paid` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_principal_paid` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_interest_paid` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_management_fees_paid` decimal(15,2) NOT NULL DEFAULT '0.00',
  `accrued_interest` decimal(15,2) NOT NULL DEFAULT '0.00',
  `accrued_days` int(11) NOT NULL DEFAULT '0',
  `accrued_management_fees` decimal(15,2) NOT NULL DEFAULT '0.00',
  `deferred_management_fees` decimal(15,2) NOT NULL DEFAULT '0.00',
  `days_overdue` int(11) NOT NULL DEFAULT '0',
  `penalties` decimal(15,2) NOT NULL DEFAULT '0.00',
  `cash_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `bank_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `collateral_type` varchar(50) DEFAULT NULL,
  `collateral_description` text,
  `collateral_value` decimal(15,2) DEFAULT '0.00',
  `collateral_net_value` decimal(15,2) DEFAULT '0.00',
  `provisional_rate` decimal(5,2) NOT NULL DEFAULT '1.00',
  `general_provision` decimal(15,2) NOT NULL DEFAULT '0.00',
  `net_book_value` decimal(15,2) NOT NULL DEFAULT '0.00',
  `loan_status` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_provision_date` date DEFAULT NULL,
  `record_date` date DEFAULT NULL,
  `deduct_fee_from_disbursed` decimal(50,6) DEFAULT NULL,
  `is_topup` tinyint(1) NOT NULL DEFAULT '0',
  `topup_type` enum('increasing','decreasing') DEFAULT NULL,
  `mgmt_fee_first_month_only` tinyint(1) DEFAULT '0',
  `mgmt_fee_is_disbursed` tinyint(1) DEFAULT '0',
  `requested_amount` decimal(15,2) DEFAULT '0.00',
  `is_requested_paid_upfront` tinyint(1) DEFAULT '0',
  `requested_amount_status` varchar(50) DEFAULT 'Pending',
  `requested_amount_paid_upfront` decimal(15,2) DEFAULT '0.00',
  `loan_purpose` text,
  `economic_center` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_portfolio`
--

INSERT INTO `loan_portfolio` (`loan_id`, `customer_id`, `loan_number`, `loan_amount`, `management_fee_rate`, `management_fee_amount`, `total_disbursed`, `interest_rate`, `number_of_instalments`, `disbursement_date`, `maturity_date`, `total_interest`, `total_management_fees`, `total_payment`, `monthly_payment`, `principal_outstanding`, `interest_outstanding`, `total_outstanding`, `total_paid`, `total_principal_paid`, `total_interest_paid`, `total_management_fees_paid`, `accrued_interest`, `accrued_days`, `accrued_management_fees`, `deferred_management_fees`, `days_overdue`, `penalties`, `cash_amount`, `bank_amount`, `collateral_type`, `collateral_description`, `collateral_value`, `collateral_net_value`, `provisional_rate`, `general_provision`, `net_book_value`, `loan_status`, `created_by`, `created_at`, `updated_at`, `last_provision_date`, `record_date`, `deduct_fee_from_disbursed`, `is_topup`, `topup_type`, `mgmt_fee_first_month_only`, `mgmt_fee_is_disbursed`, `requested_amount`, `is_requested_paid_upfront`, `requested_amount_status`, `requested_amount_paid_upfront`, `loan_purpose`, `economic_center`) VALUES
(1, 144, 'LN-20260423-151230', 2940000.00, 2.00, 60000.00, 3000000.00, 5.00, 6, '2026-04-23', '2026-10-23', 900000.00, 0.00, 3900000.00, 650000.00, 3000000.00, 900000.00, 3900000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 2940000.00, 'Movable', 'yrugtkhy', 1.00, 5000000.00, 1.00, 30000.00, 3870000.00, 'Active', 1, '2026-04-23 15:17:14', '2026-04-23 15:17:14', NULL, NULL, 1.000000, 0, NULL, 0, 0, 60000.00, 1, 'Paid', 60000.00, 'agriculture', 'Agriculture/Livestock/Fishing'),
(2, 167, 'LN-20260423-153231', 19200000.00, 2.00, 400000.00, 20000000.00, 5.00, 2, '2026-03-05', '2026-06-23', 2000000.00, 0.00, 22000000.00, 11000000.00, 20000000.00, 2000000.00, 22000000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 19200000.00, 'Immovable', 'fam | Type: Land', 120000000.00, 19600000.00, 1.00, 200000.00, 21800000.00, 'Active', 1, '2026-04-23 15:38:23', '2026-04-23 15:38:23', NULL, NULL, 1.000000, 0, NULL, 0, 0, 400000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'tender', 'Agriculture/Livestock/Fishing'),
(3, 157, 'LN-20260423-154301', 6720000.00, 2.00, 140000.00, 7000000.00, 5.00, 3, '2026-02-26', '2026-05-26', 1050000.00, 0.00, 8050000.00, 2683333.33, 7000000.00, 1050000.00, 8050000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 6720000.00, 'Immovable', '', 16000000.00, 12000000.00, 1.00, 70000.00, 7980000.00, 'Active', 1, '2026-04-23 15:46:20', '2026-04-23 15:46:20', NULL, NULL, 1.000000, 0, NULL, 0, 0, 140000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Others', 'Other'),
(4, 163, 'LN-20260424-073550', 24000000.00, 2.00, 500000.00, 25000000.00, 5.00, 4, '2026-03-03', '2026-07-03', 5000000.00, 0.00, 30000000.00, 7500000.00, 25000000.00, 5000000.00, 30000000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 24000000.00, 'Movable', '', 60000000.00, 50000000.00, 1.00, 250000.00, 29750000.00, 'Active', 1, '2026-04-24 07:43:24', '2026-04-24 07:43:24', NULL, NULL, 1.000000, 0, NULL, 0, 0, 500000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Commerce', 'Commerce/Restaurant'),
(5, 149, 'LN-20260424-074655', 1920000.00, 2.00, 40000.00, 2000000.00, 5.00, 6, '2026-03-03', '2026-09-03', 600000.00, 0.00, 2600000.00, 433333.33, 2000000.00, 600000.00, 2600000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 1920000.00, 'Immovable', 'Land', 8076000.00, 5653200.00, 1.00, 20000.00, 2580000.00, 'Active', 1, '2026-04-24 07:51:10', '2026-04-24 07:51:10', NULL, NULL, 1.000000, 0, NULL, 0, 0, 40000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Livestock', 'Agriculture/Livestock/Fishing'),
(6, 159, 'LN-20260424-080257', 1920000.00, 2.00, 40000.00, 2000000.00, 5.00, 6, '2026-03-03', '2026-09-03', 600000.00, 0.00, 2600000.00, 433333.33, 2000000.00, 600000.00, 2600000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 1920000.00, 'Immovable', 'Land', 5797555.00, 4058289.00, 1.00, 20000.00, 2580000.00, 'Active', 1, '2026-04-24 08:09:05', '2026-04-24 08:09:05', NULL, NULL, 1.000000, 0, NULL, 0, 0, 40000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Commerce', 'Commerce/Restaurant'),
(7, 161, 'LN-20260424-081458', 9600000.00, 2.00, 200000.00, 10000000.00, 5.00, 4, '2026-02-26', '2026-06-26', 2000000.00, 0.00, 12000000.00, 3000000.00, 10000000.00, 2000000.00, 12000000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 9600000.00, 'Movable', 'Other assets', 21000000.00, 20000000.00, 1.00, 100000.00, 11900000.00, 'Active', 1, '2026-04-24 08:17:54', '2026-04-24 08:17:54', NULL, NULL, 1.000000, 0, NULL, 0, 0, 200000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Commerce', 'Commerce/Restaurant'),
(8, 169, 'LN-20260424-082346', 1920000.00, 2.00, 40000.00, 2000000.00, 5.00, 3, '2026-03-11', '2026-06-11', 300000.00, 0.00, 2300000.00, 766666.67, 2000000.00, 300000.00, 2300000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 1920000.00, '', 'Other assets', 4200000.00, 4000000.00, 1.00, 20000.00, 2280000.00, 'Active', 1, '2026-04-24 08:26:30', '2026-04-24 08:26:30', NULL, NULL, 1.000000, 0, NULL, 0, 0, 40000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Others', 'Other'),
(9, 165, 'LN-20260424-083017', 2880000.00, 2.00, 60000.00, 3000000.00, 5.00, 3, '2026-03-13', '2026-06-13', 450000.00, 0.00, 3450000.00, 1150000.00, 3000000.00, 450000.00, 3450000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 2880000.00, 'Immovable', 'Land', 15570000.00, 10899000.00, 1.00, 30000.00, 3420000.00, 'Active', 1, '2026-04-24 08:33:00', '2026-04-24 08:33:00', NULL, NULL, 1.000000, 0, NULL, 0, 0, 60000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Commerce', 'Commerce/Restaurant'),
(10, 171, 'LN-20260424-083723', 3840000.00, 2.00, 80000.00, 4000000.00, 5.00, 3, '2026-03-17', '2026-06-17', 600000.00, 0.00, 4600000.00, 1533333.33, 4000000.00, 600000.00, 4600000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 3840000.00, 'Movable', 'Car', 8300000.00, 8000000.00, 1.00, 40000.00, 4560000.00, 'Active', 1, '2026-04-24 08:39:44', '2026-04-24 08:39:44', NULL, NULL, 1.000000, 0, NULL, 0, 0, 80000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Commerce', 'Commerce/Restaurant'),
(11, 175, 'LN-20260424-085132', 9600000.00, 2.00, 200000.00, 10000000.00, 5.00, 3, '2026-03-27', '2026-06-26', 1500000.00, 0.00, 11500000.00, 3833333.33, 10000000.00, 1500000.00, 11500000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 9600000.00, 'Movable', 'Car', 22000000.00, 20000000.00, 1.00, 100000.00, 11400000.00, 'Active', 1, '2026-04-24 08:53:44', '2026-04-24 08:53:44', NULL, NULL, 1.000000, 0, NULL, 0, 0, 200000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Commerce', 'Commerce/Restaurant'),
(12, 179, 'LN-20260424-085808', 4800000.00, 2.00, 100000.00, 5000000.00, 5.00, 2, '2026-03-28', '2026-05-28', 500000.00, 0.00, 5500000.00, 2750000.00, 5000000.00, 500000.00, 5500000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 4800000.00, 'Movable', 'Car', 11000000.00, 10000000.00, 1.00, 50000.00, 5450000.00, 'Active', 1, '2026-04-24 09:00:25', '2026-04-24 09:00:25', NULL, NULL, 1.000000, 0, NULL, 0, 0, 100000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Commerce', 'Commerce/Restaurant'),
(13, 199, 'LN-20260424-090747', 10560000.00, 2.00, 220000.00, 11000000.00, 5.00, 2, '2026-03-30', '2026-05-30', 1100000.00, 0.00, 12100000.00, 6050000.00, 11000000.00, 1100000.00, 12100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 10560000.00, 'Movable', 'Car', 24000000.00, 22000000.00, 1.00, 110000.00, 11990000.00, 'Active', 1, '2026-04-24 09:10:57', '2026-04-24 09:10:57', NULL, NULL, 1.000000, 0, NULL, 0, 0, 220000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Other', 'Other'),
(14, 181, 'LN-20260424-092905', 4320000.00, 2.00, 90000.00, 4500000.00, 5.00, 3, '2026-03-31', '2026-06-30', 675000.00, 0.00, 5175000.00, 1725000.00, 4500000.00, 675000.00, 5175000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 4320000.00, 'Immovable', 'Land', 19853000.00, 13897100.00, 1.00, 45000.00, 5130000.00, 'Active', 1, '2026-04-24 09:31:59', '2026-04-24 09:31:59', NULL, NULL, 1.000000, 0, NULL, 0, 0, 90000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Commerce', 'Commerce/Restaurant'),
(15, 173, 'LN-20260424-094909', 4800000.00, 2.00, 100000.00, 5000000.00, 5.00, 3, '2026-03-31', '2026-06-30', 750000.00, 0.00, 5750000.00, 1916666.67, 5000000.00, 750000.00, 5750000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 4800000.00, 'Immovable', 'Agriculture | Type: Land, UPI: 5/07/07/04/4106, Size: 1458', 21870000.00, 15309000.00, 1.00, 50000.00, 5700000.00, 'Active', 1, '2026-04-24 09:54:47', '2026-04-24 09:54:47', NULL, NULL, 1.000000, 0, NULL, 0, 0, 100000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Commerce', 'Commerce/Restaurant'),
(16, 183, 'LN-20260424-095920', 2400000.00, 2.00, 50000.00, 2500000.00, 5.00, 3, '2026-04-01', '2026-07-01', 375000.00, 0.00, 2875000.00, 958333.33, 2500000.00, 375000.00, 2875000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 2400000.00, 'Immovable', 'Type: Land, UPI: 1/01/05/06/7450, Size: 345', 17250009.00, 12075000.00, 1.00, 25000.00, 2850000.00, 'Active', 1, '2026-04-24 10:04:46', '2026-04-24 10:04:46', NULL, NULL, 1.000000, 0, NULL, 0, 0, 50000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Other', 'Other'),
(17, 185, 'LN-20260424-100813', 9600000.00, 2.00, 200000.00, 10000000.00, 5.00, 3, '2026-04-03', '2026-07-03', 1500000.00, 0.00, 11500000.00, 3833333.33, 10000000.00, 1500000.00, 11500000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 9600000.00, 'Immovable', 'Type: Land, UPI: 5/03/04/01/1669, Size: 435', 45063900.00, 31544730.00, 1.00, 100000.00, 11400000.00, 'Active', 1, '2026-04-24 10:12:56', '2026-04-24 10:12:56', NULL, NULL, 1.000000, 0, NULL, 0, 0, 200000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Commerce', 'Commerce/Restaurant'),
(18, 187, 'LN-20260424-101614', 9600000.00, 2.00, 200000.00, 10000000.00, 5.00, 3, '2026-04-03', '2026-07-03', 1500000.00, 0.00, 11500000.00, 3833333.33, 10000000.00, 1500000.00, 11500000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 9600000.00, 'Movable', 'Others', 21000000.00, 20000000.00, 1.00, 100000.00, 11400000.00, 'Active', 1, '2026-04-24 10:23:29', '2026-04-24 10:23:29', NULL, NULL, 1.000000, 0, NULL, 0, 0, 200000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Commerce', 'Commerce/Restaurant'),
(19, 189, 'LN-20260424-102640', 960000.00, 2.00, 20000.00, 1000000.00, 5.00, 3, '2026-04-11', '2026-07-11', 150000.00, 0.00, 1150000.00, 383333.33, 1000000.00, 150000.00, 1150000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 960000.00, 'Immovable', 'Type: Land, UPI: 1/03/01/02/2541, Size: 204', 15499940.00, 10849958.00, 1.00, 10000.00, 1140000.00, 'Active', 1, '2026-04-24 10:32:15', '2026-04-24 10:32:15', NULL, NULL, 1.000000, 0, NULL, 0, 0, 20000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Other', 'Other'),
(20, 191, 'LN-20260424-103741', 19200000.00, 2.00, 400000.00, 20000000.00, 5.00, 4, '2026-04-03', '2026-08-03', 4000000.00, 0.00, 24000000.00, 6000000.00, 20000000.00, 4000000.00, 24000000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 19200000.00, 'Immovable', 'Type: Land, UPI: 1/03/08/02/2431, Size: 277', 150171009.00, 105119706.00, 1.00, 200000.00, 23800000.00, 'Active', 1, '2026-04-24 10:48:59', '2026-04-24 10:48:59', NULL, NULL, 1.000000, 0, NULL, 0, 0, 400000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Commerce', 'Commerce/Restaurant'),
(21, 193, 'LN-20260424-111533', 19200000.00, 2.00, 400000.00, 20000000.00, 5.00, 2, '2026-04-14', '2026-06-14', 2000000.00, 0.00, 22000000.00, 11000000.00, 20000000.00, 2000000.00, 22000000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 19200000.00, 'Immovable', 'Type: Land, UPI: 1/02/14/07/3023, Size: 301', 214714129.00, 150299890.00, 1.00, 200000.00, 21800000.00, 'Active', 1, '2026-04-24 11:19:15', '2026-04-24 11:19:15', NULL, NULL, 1.000000, 0, NULL, 0, 0, 400000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Contruction', 'Public work'),
(22, 201, 'LN-20260424-112831', 1920000.00, 2.00, 40000.00, 2000000.00, 5.00, 2, '2026-04-22', '2026-06-22', 200000.00, 0.00, 2200000.00, 1100000.00, 2000000.00, 200000.00, 2200000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 1920000.00, 'Movable', '', 4500000.00, 4000000.00, 1.00, 20000.00, 2180000.00, 'Active', 1, '2026-04-24 11:30:15', '2026-04-24 11:30:15', NULL, NULL, 1.000000, 0, NULL, 0, 0, 40000.00, 1, 'Paid (Deducted from Loan)', 0.00, 'Other', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `loan_requests`
--

CREATE TABLE `loan_requests` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `loan_amount` decimal(15,2) NOT NULL,
  `total_disbursed` decimal(15,2) NOT NULL,
  `interest_rate` decimal(5,2) NOT NULL,
  `number_of_instalments` int(11) NOT NULL,
  `management_fee_rate` decimal(5,2) NOT NULL DEFAULT '5.50',
  `deduct_fee_from_disbursed` tinyint(1) DEFAULT '1',
  `mgmt_fee_first_month_only` tinyint(1) DEFAULT '0',
  `requested_amount` decimal(15,2) DEFAULT '0.00',
  `is_requested_paid_upfront` tinyint(1) DEFAULT '0',
  `status` enum('Pending','Approved','Rejected','Disbursed') COLLATE utf8_unicode_ci DEFAULT 'Pending',
  `admin_note` text COLLATE utf8_unicode_ci,
  `loan_purpose` text COLLATE utf8_unicode_ci,
  `economic_center` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `requested_amount_paid` decimal(15,2) DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loan_requests`
--

INSERT INTO `loan_requests` (`id`, `customer_id`, `loan_amount`, `total_disbursed`, `interest_rate`, `number_of_instalments`, `management_fee_rate`, `deduct_fee_from_disbursed`, `mgmt_fee_first_month_only`, `requested_amount`, `is_requested_paid_upfront`, `status`, `admin_note`, `loan_purpose`, `economic_center`, `created_at`, `updated_at`, `requested_amount_paid`) VALUES
(13, 143, 2000000.00, 2000000.00, 5.00, 6, 2.00, 1, 1, 40000.00, 0, 'Approved', '', 'agriculture', 'Agriculture/Livestock/Fishing', '2026-04-23 14:15:45', '2026-04-23 14:15:54', 0.00),
(14, 143, 2000000.00, 2000000.00, 5.00, 6, 2.00, 1, 1, 40000.00, 1, 'Approved', 'good', 'description', 'Agriculture/Livestock/Fishing', '2026-04-23 14:20:15', '2026-04-23 14:20:32', 40000.00),
(15, 144, 3000000.00, 3000000.00, 5.00, 6, 2.00, 1, 1, 60000.00, 1, 'Disbursed', 'good', 'agriculture', 'Agriculture/Livestock/Fishing', '2026-04-23 15:08:46', '2026-04-23 15:14:33', 60000.00),
(16, 167, 20000000.00, 20000000.00, 5.00, 2, 2.00, 1, 1, 400000.00, 0, 'Disbursed', 'aproved', 'tender', 'Agriculture/Livestock/Fishing', '2026-04-23 15:22:21', '2026-04-23 15:37:37', 0.00),
(17, 157, 7000000.00, 7000000.00, 5.00, 3, 2.00, 1, 1, 140000.00, 0, 'Disbursed', '', 'Others', 'Other', '2026-04-23 15:41:40', '2026-04-23 15:45:48', 0.00),
(18, 163, 25000000.00, 25000000.00, 5.00, 4, 2.00, 1, 1, 500000.00, 0, 'Disbursed', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 07:32:28', '2026-04-24 07:42:14', 0.00),
(19, 149, 2000000.00, 2000000.00, 5.00, 6, 2.00, 1, 1, 40000.00, 0, 'Disbursed', '', 'Livestock', 'Agriculture/Livestock/Fishing', '2026-04-24 07:46:12', '2026-04-24 07:50:21', 0.00),
(20, 159, 2000000.00, 2000000.00, 5.00, 6, 2.00, 1, 1, 40000.00, 0, 'Disbursed', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 08:02:27', '2026-04-24 08:08:34', 0.00),
(21, 161, 10000000.00, 10000000.00, 5.00, 4, 2.00, 1, 1, 200000.00, 0, 'Disbursed', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 08:14:31', '2026-04-24 08:17:24', 0.00),
(22, 169, 2000000.00, 2000000.00, 5.00, 3, 2.00, 1, 1, 40000.00, 0, 'Disbursed', '', 'Others', 'Other', '2026-04-24 08:23:10', '2026-04-24 08:25:59', 0.00),
(23, 165, 3000000.00, 3000000.00, 5.00, 3, 2.00, 1, 1, 60000.00, 0, 'Disbursed', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 08:29:51', '2026-04-24 08:32:38', 0.00),
(24, 171, 4000000.00, 4000000.00, 5.00, 3, 2.00, 1, 1, 80000.00, 0, 'Disbursed', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 08:37:00', '2026-04-24 08:39:25', 0.00),
(25, 175, 10000000.00, 10000000.00, 5.00, 3, 5.00, 1, 1, 200000.00, 0, 'Approved', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 08:44:31', '2026-04-24 08:44:40', 0.00),
(26, 175, 10000000.00, 10000000.00, 5.00, 3, 2.00, 1, 1, 200000.00, 0, 'Disbursed', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 08:51:12', '2026-04-24 08:53:29', 0.00),
(27, 179, 5000000.00, 5000000.00, 5.00, 2, 2.00, 1, 1, 100000.00, 0, 'Disbursed', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 08:57:43', '2026-04-24 08:59:58', 0.00),
(28, 177, 11000000.00, 11000000.00, 5.00, 2, 5.00, 1, 1, 220000.00, 0, 'Approved', '', 'Other', 'Other', '2026-04-24 09:04:22', '2026-04-24 09:04:30', 0.00),
(29, 199, 11000000.00, 11000000.00, 5.00, 2, 2.00, 1, 1, 220000.00, 0, 'Disbursed', '', 'Other', 'Other', '2026-04-24 09:07:29', '2026-04-24 09:10:18', 0.00),
(30, 181, 4500000.00, 4500000.00, 5.00, 5, 2.00, 1, 1, 90000.00, 0, 'Approved', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 09:15:14', '2026-04-24 09:15:21', 0.00),
(31, 181, 4500000.00, 4500000.00, 5.00, 3, 5.00, 1, 1, 90000.00, 0, 'Approved', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 09:25:46', '2026-04-24 09:25:57', 0.00),
(32, 181, 4500000.00, 4500000.00, 5.00, 3, 2.00, 1, 1, 90000.00, 0, 'Disbursed', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 09:28:47', '2026-04-24 09:31:45', 0.00),
(33, 173, 5000000.00, 5000000.00, 5.00, 3, 2.00, 1, 1, 100000.00, 0, 'Disbursed', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 09:48:53', '2026-04-24 09:54:12', 0.00),
(34, 183, 2500000.00, 2500000.00, 5.00, 3, 2.00, 1, 1, 50000.00, 0, 'Disbursed', '', 'Other', 'Other', '2026-04-24 09:58:57', '2026-04-24 10:04:25', 0.00),
(35, 185, 10000000.00, 10000000.00, 5.00, 3, 2.00, 1, 1, 200000.00, 0, 'Disbursed', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 10:07:53', '2026-04-24 10:12:29', 0.00),
(36, 187, 10000000.00, 10000000.00, 5.00, 3, 2.00, 1, 1, 200000.00, 0, 'Disbursed', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 10:15:50', '2026-04-24 10:23:06', 0.00),
(37, 189, 1000000.00, 1000000.00, 5.00, 3, 2.00, 1, 1, 20000.00, 0, 'Disbursed', '', 'Other', 'Other', '2026-04-24 10:26:19', '2026-04-24 10:31:44', 0.00),
(38, 191, 20000000.00, 20000000.00, 5.00, 4, 2.00, 1, 1, 400000.00, 0, 'Disbursed', '', 'Commerce', 'Commerce/Restaurant', '2026-04-24 10:36:23', '2026-04-24 10:48:46', 0.00),
(39, 193, 20000000.00, 20000000.00, 5.00, 2, 2.00, 1, 1, 400000.00, 0, 'Disbursed', '', 'Contruction', 'Public work', '2026-04-24 11:15:12', '2026-04-24 11:18:33', 0.00),
(40, 201, 2000000.00, 2000000.00, 5.00, 2, 2.00, 1, 1, 40000.00, 0, 'Disbursed', '', 'Other', 'Other', '2026-04-24 11:28:13', '2026-04-24 11:29:49', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `loan_transactions`
--

CREATE TABLE `loan_transactions` (
  `transaction_id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `loan_number` varchar(50) NOT NULL,
  `transaction_type` enum('Disbursement','Payment','Fee','Adjustment','Write-off','Recovery') NOT NULL,
  `transaction_date` date NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `description` text,
  `reference_number` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_transactions`
--

INSERT INTO `loan_transactions` (`transaction_id`, `loan_id`, `loan_number`, `transaction_type`, `transaction_date`, `amount`, `description`, `reference_number`, `created_by`, `created_at`) VALUES
(4, 1, 'LN-20260423-151230', 'Disbursement', '2026-04-23', 3000000.00, 'Loan disbursement', NULL, 1, '2026-04-23 15:17:14'),
(5, 2, 'LN-20260423-153231', 'Disbursement', '2026-03-05', 20000000.00, 'Loan disbursement', NULL, 1, '2026-04-23 15:38:23'),
(6, 3, 'LN-20260423-154301', 'Disbursement', '2026-02-26', 7000000.00, 'Loan disbursement', NULL, 1, '2026-04-23 15:46:20'),
(7, 4, 'LN-20260424-073550', 'Disbursement', '2026-03-03', 25000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 07:43:24'),
(8, 5, 'LN-20260424-074655', 'Disbursement', '2026-03-03', 2000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 07:51:10'),
(9, 6, 'LN-20260424-080257', 'Disbursement', '2026-03-03', 2000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 08:09:05'),
(10, 7, 'LN-20260424-081458', 'Disbursement', '2026-02-26', 10000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 08:17:54'),
(11, 8, 'LN-20260424-082346', 'Disbursement', '2026-03-11', 2000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 08:26:30'),
(12, 9, 'LN-20260424-083017', 'Disbursement', '2026-03-13', 3000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 08:33:00'),
(13, 10, 'LN-20260424-083723', 'Disbursement', '2026-03-17', 4000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 08:39:44'),
(14, 11, 'LN-20260424-085132', 'Disbursement', '2026-03-27', 10000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 08:53:44'),
(15, 12, 'LN-20260424-085808', 'Disbursement', '2026-03-28', 5000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 09:00:25'),
(16, 13, 'LN-20260424-090747', 'Disbursement', '2026-03-30', 11000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 09:10:57'),
(17, 14, 'LN-20260424-092905', 'Disbursement', '2026-03-31', 4500000.00, 'Loan disbursement', NULL, 1, '2026-04-24 09:31:59'),
(18, 15, 'LN-20260424-094909', 'Disbursement', '2026-03-31', 5000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 09:54:47'),
(19, 16, 'LN-20260424-095920', 'Disbursement', '2026-04-01', 2500000.00, 'Loan disbursement', NULL, 1, '2026-04-24 10:04:46'),
(20, 17, 'LN-20260424-100813', 'Disbursement', '2026-04-03', 10000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 10:12:56'),
(21, 18, 'LN-20260424-101614', 'Disbursement', '2026-04-03', 10000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 10:23:29'),
(22, 19, 'LN-20260424-102640', 'Disbursement', '2026-04-11', 1000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 10:32:15'),
(23, 20, 'LN-20260424-103741', 'Disbursement', '2026-04-03', 20000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 10:48:59'),
(24, 21, 'LN-20260424-111533', 'Disbursement', '2026-04-14', 20000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 11:19:15'),
(25, 22, 'LN-20260424-112831', 'Disbursement', '2026-04-22', 2000000.00, 'Loan disbursement', NULL, 1, '2026-04-24 11:30:15');

-- --------------------------------------------------------

--
-- Table structure for table `pending_approvals`
--

CREATE TABLE `pending_approvals` (
  `approval_id` int(11) NOT NULL,
  `action_type` varchar(20) NOT NULL,
  `entity_type` varchar(30) NOT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `action_data` longtext NOT NULL,
  `description` varchar(255) NOT NULL,
  `submitted_by` varchar(100) NOT NULL,
  `submitted_by_role` varchar(50) NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `reviewed_by` varchar(100) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `review_notes` text,
  `submitted_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending_approvals`
--

INSERT INTO `pending_approvals` (`approval_id`, `action_type`, `entity_type`, `entity_id`, `action_data`, `description`, `submitted_by`, `submitted_by_role`, `status`, `reviewed_by`, `reviewed_at`, `review_notes`, `submitted_at`) VALUES
(9, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260423-151230\",\"customer_id\":144,\"loan_amount\":2940000,\"total_disbursed\":3000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":60000,\"number_of_instalments\":6,\"disbursement_date\":\"2026-04-23\",\"maturity_date\":\"2026-10-23\",\"total_interest\":900000,\"total_management_fees\":0,\"total_payment\":3900000,\"monthly_payment\":650000,\"cash_amount\":0,\"bank_amount\":2940000,\"collateral_type\":\"Movable\",\"collateral_description\":\"yrugtkhy\",\"collateral_value\":1,\"collateral_net_value\":5000000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":60000,\"requested_amount_paid_upfront\":60000,\"is_requested_paid_upfront\":1,\"requested_amount_status\":\"Paid\",\"loan_purpose\":\"agriculture\",\"economic_center\":\"Agriculture\\/Livestock\\/Fishing\",\"request_id\":15,\"submitted_by\":\"director\"}', 'Add loan LN-20260423-151230 for jean claude UTAZIRUBANDA', 'director', 'Director', 'approved', 'director', '2026-04-23 10:17:14', '', '2026-04-23 10:14:33'),
(10, 'edit', 'loan', 1, '{\"loan_id\":1,\"customer_id\":144,\"loan_number\":\"LN-20260423-151230\",\"loan_amount\":2940000,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"management_fee_rate\":2,\"management_fee_amount\":60000,\"total_disbursed\":3000000,\"interest_rate\":5,\"number_of_instalments\":6,\"disbursement_date\":\"2026-02-13\",\"maturity_date\":\"2026-08-12\",\"total_interest\":900000,\"total_management_fees\":0,\"total_payment\":3900000,\"monthly_payment\":650000,\"principal_outstanding\":3000000,\"interest_outstanding\":900000,\"total_outstanding\":3900000,\"cash_amount\":0,\"bank_amount\":2940000,\"collateral_type\":\"\",\"collateral_description\":\"yrugtkhy\",\"collateral_value\":1,\"collateral_net_value\":5000000,\"provisional_rate\":1,\"general_provision\":30000,\"net_book_value\":3870000,\"accrued_days\":16,\"loan_status\":\"Active\",\"requested_amount\":60000,\"is_requested_paid_upfront\":1,\"old_loan_amount\":2940000,\"old_customer_id\":144}', 'Update loan LN-20260423-151230 for jean claude UTAZIRUBANDA', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:26:09'),
(11, 'edit', 'loan', 1, '{\"loan_id\":1,\"customer_id\":144,\"loan_number\":\"LN-20260423-151230\",\"loan_amount\":2940000,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"management_fee_rate\":2,\"management_fee_amount\":60000,\"total_disbursed\":3000000,\"interest_rate\":5,\"number_of_instalments\":6,\"disbursement_date\":\"2026-02-13\",\"maturity_date\":\"2026-08-12\",\"total_interest\":900000,\"total_management_fees\":0,\"total_payment\":3900000,\"monthly_payment\":650000,\"principal_outstanding\":3000000,\"interest_outstanding\":900000,\"total_outstanding\":3900000,\"cash_amount\":0,\"bank_amount\":2940000,\"collateral_type\":\"\",\"collateral_description\":\"yrugtkhy\",\"collateral_value\":1,\"collateral_net_value\":5000000,\"provisional_rate\":1,\"general_provision\":30000,\"net_book_value\":3870000,\"accrued_days\":16,\"loan_status\":\"Active\",\"requested_amount\":60000,\"is_requested_paid_upfront\":1,\"old_loan_amount\":2940000,\"old_customer_id\":144}', 'Update loan LN-20260423-151230 for jean claude UTAZIRUBANDA', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:27:09'),
(12, 'edit', 'loan', 1, '{\"loan_id\":1,\"customer_id\":144,\"loan_number\":\"LN-20260423-151230\",\"loan_amount\":2940000,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"management_fee_rate\":2,\"management_fee_amount\":60000,\"total_disbursed\":3000000,\"interest_rate\":5,\"number_of_instalments\":6,\"disbursement_date\":\"2026-02-13\",\"maturity_date\":\"2026-08-12\",\"total_interest\":900000,\"total_management_fees\":0,\"total_payment\":3900000,\"monthly_payment\":650000,\"principal_outstanding\":3000000,\"interest_outstanding\":900000,\"total_outstanding\":3900000,\"cash_amount\":0,\"bank_amount\":2940000,\"collateral_type\":\"\",\"collateral_description\":\"yrugtkhy\",\"collateral_value\":1,\"collateral_net_value\":5000000,\"provisional_rate\":1,\"general_provision\":30000,\"net_book_value\":3870000,\"accrued_days\":16,\"loan_status\":\"Active\",\"requested_amount\":60000,\"is_requested_paid_upfront\":1,\"old_loan_amount\":2940000,\"old_customer_id\":144}', 'Update loan LN-20260423-151230 for jean claude UTAZIRUBANDA', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:29:50'),
(13, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260423-153231\",\"customer_id\":167,\"loan_amount\":19200000,\"total_disbursed\":20000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":400000,\"number_of_instalments\":2,\"disbursement_date\":\"2026-03-05\",\"maturity_date\":\"2026-06-23\",\"total_interest\":2000000,\"total_management_fees\":0,\"total_payment\":22000000,\"monthly_payment\":11000000,\"cash_amount\":0,\"bank_amount\":19200000,\"collateral_type\":\"Immovable\",\"collateral_description\":\"fam | Type: Land\",\"collateral_value\":120000000,\"collateral_net_value\":19600000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":400000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"tender\",\"economic_center\":\"Agriculture\\/Livestock\\/Fishing\",\"request_id\":16,\"submitted_by\":\"director\"}', 'Add loan LN-20260423-153231 for KABERA Telesphore', 'director', 'Director', 'approved', 'director', '2026-04-23 10:38:23', 'hfgj', '2026-04-23 10:37:37'),
(14, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260423-154301\",\"customer_id\":157,\"loan_amount\":6720000,\"total_disbursed\":7000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":140000,\"number_of_instalments\":3,\"disbursement_date\":\"2026-02-26\",\"maturity_date\":\"2026-05-26\",\"total_interest\":1050000,\"total_management_fees\":0,\"total_payment\":8050000,\"monthly_payment\":2683333.33000000007450580596923828125,\"cash_amount\":0,\"bank_amount\":6720000,\"collateral_type\":\"Immovable\",\"collateral_description\":\"\",\"collateral_value\":16000000,\"collateral_net_value\":12000000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":140000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Others\",\"economic_center\":\"Other\",\"request_id\":17,\"submitted_by\":\"director\"}', 'Add loan LN-20260423-154301 for Esther BATAMURIZA', 'director', 'Director', 'approved', 'director', '2026-04-23 10:46:20', '', '2026-04-23 10:45:48'),
(15, 'delete', 'customer', 143, '{\"customer_id\":143,\"customer_name\":\"Lael Britt\",\"customer_code\":\"CUST-02\\/0\",\"action_note\":\"Permanent deletion of customer and all related records\"}', 'Delete customer: Lael Britt', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:47:12'),
(16, 'delete', 'customer', 143, '{\"customer_id\":143,\"customer_name\":\"Lael Britt\",\"customer_code\":\"CUST-02\\/0\",\"action_note\":\"Permanent deletion of customer and all related records\"}', 'Delete customer: Lael Britt', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:47:34'),
(17, 'delete', 'customer', 143, '{\"customer_id\":143,\"customer_name\":\"Lael Britt\",\"customer_code\":\"CUST-02\\/0\",\"action_note\":\"Permanent deletion of customer and all related records\"}', 'Delete customer: Lael Britt', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:47:50'),
(18, 'edit', 'customer', 201, '{\"customer_code\":\"CUST-0055\",\"customer_name\":\"TWIZERIMANA Jean Baptiste\",\"birth_place\":\"N\\/A\",\"id_number\":\"1197380089366120\",\"account_number\":\"477378276110278\",\"occupation\":\"National Army\",\"gender\":\"Male\",\"date_of_birth\":\"1973-06-08\",\"phone\":\"0788676523\",\"father_name\":\"\",\"mother_name\":\"\",\"spouse\":\"\",\"spouse_occupation\":\"\",\"spouse_phone\":\"\",\"marriage_type\":\"Single\",\"address\":\"\",\"province\":\"South\",\"district\":\"Kamonyi\",\"sector\":\"Runda\",\"cell\":\"Ruyenzi\",\"village\":\"Rugazi\",\"location\":\"Rugazi, Ruyenzi, Runda, Kamonyi, South\",\"project\":\"\",\"project_location\":\"\",\"caution_location\":\"\",\"email\":\"twizerimana2017@gmail.com\",\"organization\":\"MoneyTap Ecosystem\",\"collateral_type\":\"Movable\",\"collateral_sub_type\":\"\",\"upi_location\":\"\",\"square_mtrs\":\"\",\"doc_id\":\"\",\"doc_contract\":\"\",\"doc_statement\":\"\",\"doc_payslip\":\"\",\"doc_marital\":\"\",\"doc_rdb\":\"\",\"doc_loan_clearance\":\"\",\"doc_power_of_attorney\":\"\",\"doc_guarantor_letter\":\"\",\"requested_amount\":0,\"loan_duration\":0}', 'Edit customer: TWIZERIMANA Jean Baptiste', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:52:20'),
(19, 'edit', 'customer', 201, '{\"customer_code\":\"CUST-0055\",\"customer_name\":\"TWIZERIMANA Jean Baptiste\",\"birth_place\":\"N\\/A\",\"id_number\":\"1197380089366120\",\"account_number\":\"477378276110278\",\"occupation\":\"National Army\",\"gender\":\"Male\",\"date_of_birth\":\"1973-06-08\",\"phone\":\"0788676523\",\"father_name\":\"\",\"mother_name\":\"\",\"spouse\":\"\",\"spouse_occupation\":\"\",\"spouse_phone\":\"\",\"marriage_type\":\"Single\",\"address\":\"\",\"province\":\"South\",\"district\":\"Kamonyi\",\"sector\":\"Runda\",\"cell\":\"Ruyenzi\",\"village\":\"Rugazi\",\"location\":\"Rugazi, Ruyenzi, Runda, Kamonyi, South\",\"project\":\"\",\"project_location\":\"\",\"caution_location\":\"\",\"email\":\"twizerimana2017@gmail.com\",\"organization\":\"MoneyTap Ecosystem\",\"collateral_type\":\"Movable\",\"collateral_sub_type\":\"\",\"upi_location\":\"\",\"square_mtrs\":\"\",\"doc_id\":\"\",\"doc_contract\":\"\",\"doc_statement\":\"\",\"doc_payslip\":\"\",\"doc_marital\":\"\",\"doc_rdb\":\"\",\"doc_loan_clearance\":\"\",\"doc_power_of_attorney\":\"\",\"doc_guarantor_letter\":\"\",\"requested_amount\":0,\"loan_duration\":0}', 'Edit customer: TWIZERIMANA Jean Baptiste', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:52:26'),
(20, 'edit', 'customer', 201, '{\"customer_code\":\"CUST-0055\",\"customer_name\":\"TWIZERIMANA Jean Baptiste\",\"birth_place\":\"N\\/A\",\"id_number\":\"1197380089366120\",\"account_number\":\"477378276110278\",\"occupation\":\"National Army\",\"gender\":\"Male\",\"date_of_birth\":\"1973-06-08\",\"phone\":\"0788676523\",\"father_name\":\"\",\"mother_name\":\"\",\"spouse\":\"\",\"spouse_occupation\":\"\",\"spouse_phone\":\"\",\"marriage_type\":\"Single\",\"address\":\"\",\"province\":\"South\",\"district\":\"Kamonyi\",\"sector\":\"Runda\",\"cell\":\"Ruyenzi\",\"village\":\"Rugazi\",\"location\":\"Rugazi, Ruyenzi, Runda, Kamonyi, South\",\"project\":\"\",\"project_location\":\"\",\"caution_location\":\"\",\"email\":\"twizerimana2017@gmail.com\",\"organization\":\"MoneyTap Ecosystem\",\"collateral_type\":\"Movable\",\"collateral_sub_type\":\"\",\"upi_location\":\"\",\"square_mtrs\":\"\",\"doc_id\":\"doc_id_1776959606_2065.pdf\",\"doc_contract\":\"\",\"doc_statement\":\"\",\"doc_payslip\":\"\",\"doc_marital\":\"\",\"doc_rdb\":\"\",\"doc_loan_clearance\":\"\",\"doc_power_of_attorney\":\"\",\"doc_guarantor_letter\":\"\",\"requested_amount\":0,\"loan_duration\":0}', 'Edit customer: TWIZERIMANA Jean Baptiste', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:53:26'),
(21, 'edit', 'customer', 201, '{\"customer_code\":\"CUST-0055\",\"customer_name\":\"TWIZERIMANA Jean Baptiste\",\"birth_place\":\"N\\/A\",\"id_number\":\"1197380089366120\",\"account_number\":\"477378276110278\",\"occupation\":\"National Army\",\"gender\":\"Male\",\"date_of_birth\":\"1973-06-08\",\"phone\":\"0788676523\",\"father_name\":\"\",\"mother_name\":\"\",\"spouse\":\"\",\"spouse_occupation\":\"\",\"spouse_phone\":\"\",\"marriage_type\":\"Single\",\"address\":\"\",\"province\":\"South\",\"district\":\"Kamonyi\",\"sector\":\"Runda\",\"cell\":\"Ruyenzi\",\"village\":\"Rugazi\",\"location\":\"Rugazi, Ruyenzi, Runda, Kamonyi, South\",\"project\":\"\",\"project_location\":\"\",\"caution_location\":\"\",\"email\":\"twizerimana2017@gmail.com\",\"organization\":\"MoneyTap Ecosystem\",\"collateral_type\":\"Movable\",\"collateral_sub_type\":\"\",\"upi_location\":\"\",\"square_mtrs\":\"\",\"doc_id\":\"\",\"doc_contract\":\"\",\"doc_statement\":\"\",\"doc_payslip\":\"\",\"doc_marital\":\"\",\"doc_rdb\":\"\",\"doc_loan_clearance\":\"\",\"doc_power_of_attorney\":\"\",\"doc_guarantor_letter\":\"\",\"requested_amount\":0,\"loan_duration\":0}', 'Edit customer: TWIZERIMANA Jean Baptiste', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:53:29'),
(22, 'edit', 'customer', 201, '{\"customer_code\":\"CUST-0055\",\"customer_name\":\"TWIZERIMANA Jean Baptiste\",\"birth_place\":\"N\\/A\",\"id_number\":\"1197380089366120\",\"account_number\":\"477378276110278\",\"occupation\":\"National Army\",\"gender\":\"Male\",\"date_of_birth\":\"1973-06-08\",\"phone\":\"0788676523\",\"father_name\":\"\",\"mother_name\":\"\",\"spouse\":\"\",\"spouse_occupation\":\"\",\"spouse_phone\":\"\",\"marriage_type\":\"Single\",\"address\":\"\",\"province\":\"South\",\"district\":\"Kamonyi\",\"sector\":\"Runda\",\"cell\":\"Ruyenzi\",\"village\":\"Rugazi\",\"location\":\"Rugazi, Ruyenzi, Runda, Kamonyi, South\",\"project\":\"\",\"project_location\":\"\",\"caution_location\":\"\",\"email\":\"twizerimana2017@gmail.com\",\"organization\":\"MoneyTap Ecosystem\",\"collateral_type\":\"Movable\",\"collateral_sub_type\":\"\",\"upi_location\":\"\",\"square_mtrs\":\"\",\"doc_id\":\"\",\"doc_contract\":\"\",\"doc_statement\":\"\",\"doc_payslip\":\"\",\"doc_marital\":\"\",\"doc_rdb\":\"\",\"doc_loan_clearance\":\"\",\"doc_power_of_attorney\":\"\",\"doc_guarantor_letter\":\"\",\"requested_amount\":0,\"loan_duration\":0}', 'Edit customer: TWIZERIMANA Jean Baptiste', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:53:34'),
(23, 'delete', 'customer', 143, '{\"customer_id\":143,\"customer_name\":\"Lael Britt\",\"customer_code\":\"CUST-02\\/0\",\"action_note\":\"Permanent deletion of customer and all related records\"}', 'Delete customer: Lael Britt', 'director', 'Director', 'rejected', 'director', '2026-04-23 10:56:28', '', '2026-04-23 10:54:17'),
(24, 'delete', 'customer', 143, '{\"customer_id\":143,\"customer_name\":\"Lael Britt\",\"customer_code\":\"CUST-02\\/0\",\"action_note\":\"Permanent deletion of customer and all related records\"}', 'Delete customer: Lael Britt', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:57:35'),
(25, 'edit', 'customer', 201, '{\"customer_code\":\"CUST-0055\",\"customer_name\":\"TWIZERIMANA Jean Baptiste\",\"birth_place\":\"N\\/A\",\"id_number\":\"1197380089366120\",\"account_number\":\"477378276110278\",\"occupation\":\"National Army\",\"gender\":\"Male\",\"date_of_birth\":\"1973-06-08\",\"phone\":\"0788676523\",\"father_name\":\"\",\"mother_name\":\"\",\"spouse\":\"\",\"spouse_occupation\":\"\",\"spouse_phone\":\"\",\"marriage_type\":\"Single\",\"address\":\"\",\"province\":\"\",\"district\":\"\",\"sector\":\"\",\"cell\":\"\",\"village\":\"\",\"location\":\"Rugazi, Ruyenzi, Runda, Kamonyi, South\",\"project\":\"\",\"project_location\":\"\",\"caution_location\":\"\",\"email\":\"twizerimana2017@gmail.com\",\"organization\":\"MoneyTap Ecosystem\",\"collateral_type\":\"Movable\",\"collateral_sub_type\":\"\",\"upi_location\":\"\",\"square_mtrs\":\"\",\"doc_id\":\"doc_id_1776959894_1407.pdf\",\"doc_contract\":\"\",\"doc_statement\":\"\",\"doc_payslip\":\"\",\"doc_marital\":\"\",\"doc_rdb\":\"\",\"doc_loan_clearance\":\"\",\"doc_power_of_attorney\":\"\",\"doc_guarantor_letter\":\"\",\"requested_amount\":0,\"loan_duration\":0}', 'Edit customer: TWIZERIMANA Jean Baptiste', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 10:58:14'),
(26, 'edit', 'customer', 201, '{\"customer_code\":\"CUST-0055\",\"customer_name\":\"TWIZERIMANA Jean Baptiste\",\"birth_place\":\"N\\/A\",\"id_number\":\"1197380089366120\",\"account_number\":\"477378276110278\",\"occupation\":\"National Army\",\"gender\":\"Male\",\"date_of_birth\":\"1973-06-08\",\"phone\":\"0788676523\",\"father_name\":\"\",\"mother_name\":\"\",\"spouse\":\"\",\"spouse_occupation\":\"\",\"spouse_phone\":\"\",\"marriage_type\":\"Single\",\"address\":\"\",\"province\":\"\",\"district\":\"\",\"sector\":\"\",\"cell\":\"\",\"village\":\"\",\"location\":\"Rugazi, Ruyenzi, Runda, Kamonyi, South\",\"project\":\"\",\"project_location\":\"\",\"caution_location\":\"\",\"email\":\"twizerimana2017@gmail.com\",\"organization\":\"MoneyTap Ecosystem\",\"collateral_type\":\"Movable\",\"collateral_sub_type\":\"\",\"upi_location\":\"\",\"square_mtrs\":\"\",\"doc_id\":\"doc_id_1776959917_4777.pdf\",\"doc_contract\":\"\",\"doc_statement\":\"\",\"doc_payslip\":\"\",\"doc_marital\":\"\",\"doc_rdb\":\"\",\"doc_loan_clearance\":\"\",\"doc_power_of_attorney\":\"\",\"doc_guarantor_letter\":\"\",\"requested_amount\":0,\"loan_duration\":0}', 'Edit customer: TWIZERIMANA Jean Baptiste', 'director', 'Director', 'rejected', 'director', '2026-04-24 06:19:54', '', '2026-04-23 10:58:37'),
(27, 'edit', 'customer', 201, '{\"customer_code\":\"CUST-0055\",\"customer_name\":\"TWIZERIMANA Jean Baptiste\",\"birth_place\":\"N\\/A\",\"id_number\":\"1197380089366120\",\"account_number\":\"477378276110278\",\"occupation\":\"National Army\",\"gender\":\"Male\",\"date_of_birth\":\"1973-06-08\",\"phone\":\"0788676523\",\"father_name\":\"\",\"mother_name\":\"\",\"spouse\":\"\",\"spouse_occupation\":\"\",\"spouse_phone\":\"\",\"marriage_type\":\"Single\",\"address\":\"\",\"province\":\"South\",\"district\":\"Kamonyi\",\"sector\":\"Runda\",\"cell\":\"Ruyenzi\",\"village\":\"Rugazi\",\"location\":\"Rugazi, Ruyenzi, Runda, Kamonyi, South\",\"project\":\"\",\"project_location\":\"\",\"caution_location\":\"\",\"email\":\"twizerimana2017@gmail.com\",\"organization\":\"MoneyTap Ecosystem\",\"collateral_type\":\"Movable\",\"collateral_sub_type\":\"\",\"upi_location\":\"\",\"square_mtrs\":\"\",\"doc_id\":\"doc_id_1776960074_8171.pdf\",\"doc_contract\":\"\",\"doc_statement\":\"\",\"doc_payslip\":\"\",\"doc_marital\":\"\",\"doc_rdb\":\"\",\"doc_loan_clearance\":\"\",\"doc_power_of_attorney\":\"\",\"doc_guarantor_letter\":\"\",\"requested_amount\":0,\"loan_duration\":0}', 'Edit customer: TWIZERIMANA Jean Baptiste', 'director', 'Director', 'pending', NULL, NULL, NULL, '2026-04-23 11:01:14'),
(28, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-073550\",\"customer_id\":163,\"loan_amount\":24000000,\"total_disbursed\":25000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":500000,\"number_of_instalments\":4,\"disbursement_date\":\"2026-03-03\",\"maturity_date\":\"2026-07-03\",\"total_interest\":5000000,\"total_management_fees\":0,\"total_payment\":30000000,\"monthly_payment\":7500000,\"cash_amount\":0,\"bank_amount\":24000000,\"collateral_type\":\"Movable\",\"collateral_description\":\"\",\"collateral_value\":60000000,\"collateral_net_value\":50000000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":500000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Commerce\",\"economic_center\":\"Commerce\\/Restaurant\",\"request_id\":18,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-073550 for SHEMA Clement', 'director', 'Director', 'approved', 'director', '2026-04-24 02:43:25', '', '2026-04-24 02:42:14'),
(29, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-074655\",\"customer_id\":149,\"loan_amount\":1920000,\"total_disbursed\":2000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":40000,\"number_of_instalments\":6,\"disbursement_date\":\"2026-03-03\",\"maturity_date\":\"2026-09-03\",\"total_interest\":600000,\"total_management_fees\":0,\"total_payment\":2600000,\"monthly_payment\":433333.3300000000162981450557708740234375,\"cash_amount\":0,\"bank_amount\":1920000,\"collateral_type\":\"Immovable\",\"collateral_description\":\"Land\",\"collateral_value\":8076000,\"collateral_net_value\":5653200,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":40000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Livestock\",\"economic_center\":\"Agriculture\\/Livestock\\/Fishing\",\"request_id\":19,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-074655 for NTARIBI Theogene', 'director', 'Director', 'approved', 'director', '2026-04-24 02:51:10', '', '2026-04-24 02:50:21'),
(30, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-080257\",\"customer_id\":159,\"loan_amount\":1920000,\"total_disbursed\":2000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":40000,\"number_of_instalments\":6,\"disbursement_date\":\"2026-03-03\",\"maturity_date\":\"2026-09-03\",\"total_interest\":600000,\"total_management_fees\":0,\"total_payment\":2600000,\"monthly_payment\":433333.3300000000162981450557708740234375,\"cash_amount\":0,\"bank_amount\":1920000,\"collateral_type\":\"Immovable\",\"collateral_description\":\"Land\",\"collateral_value\":5797555,\"collateral_net_value\":4058289,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":40000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Commerce\",\"economic_center\":\"Commerce\\/Restaurant\",\"request_id\":20,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-080257 for UWITONZE Clarisse', 'director', 'Director', 'approved', 'director', '2026-04-24 03:09:05', '', '2026-04-24 03:08:34'),
(31, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-081458\",\"customer_id\":161,\"loan_amount\":9600000,\"total_disbursed\":10000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":200000,\"number_of_instalments\":4,\"disbursement_date\":\"2026-02-26\",\"maturity_date\":\"2026-06-26\",\"total_interest\":2000000,\"total_management_fees\":0,\"total_payment\":12000000,\"monthly_payment\":3000000,\"cash_amount\":0,\"bank_amount\":9600000,\"collateral_type\":\"Movable\",\"collateral_description\":\"Other assets\",\"collateral_value\":21000000,\"collateral_net_value\":20000000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":200000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Commerce\",\"economic_center\":\"Commerce\\/Restaurant\",\"request_id\":21,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-081458 for NIYONZIMA Michel', 'director', 'Director', 'approved', 'director', '2026-04-24 03:17:54', '', '2026-04-24 03:17:24'),
(32, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-082346\",\"customer_id\":169,\"loan_amount\":1920000,\"total_disbursed\":2000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":40000,\"number_of_instalments\":3,\"disbursement_date\":\"2026-03-11\",\"maturity_date\":\"2026-06-11\",\"total_interest\":300000,\"total_management_fees\":0,\"total_payment\":2300000,\"monthly_payment\":766666.670000000041909515857696533203125,\"cash_amount\":0,\"bank_amount\":1920000,\"collateral_type\":\"\",\"collateral_description\":\"Other assets\",\"collateral_value\":4200000,\"collateral_net_value\":4000000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":40000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Others\",\"economic_center\":\"Other\",\"request_id\":22,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-082346 for NIYOMUKIZA Seth', 'director', 'Director', 'approved', 'director', '2026-04-24 03:26:30', '', '2026-04-24 03:25:59'),
(33, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-083017\",\"customer_id\":165,\"loan_amount\":2880000,\"total_disbursed\":3000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":60000,\"number_of_instalments\":3,\"disbursement_date\":\"2026-03-13\",\"maturity_date\":\"2026-06-13\",\"total_interest\":450000,\"total_management_fees\":0,\"total_payment\":3450000,\"monthly_payment\":1150000,\"cash_amount\":0,\"bank_amount\":2880000,\"collateral_type\":\"Immovable\",\"collateral_description\":\"Land\",\"collateral_value\":15570000,\"collateral_net_value\":10899000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":60000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Commerce\",\"economic_center\":\"Commerce\\/Restaurant\",\"request_id\":23,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-083017 for BYIRINGIRO Honorine', 'director', 'Director', 'approved', 'director', '2026-04-24 03:33:00', '', '2026-04-24 03:32:38'),
(34, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-083723\",\"customer_id\":171,\"loan_amount\":3840000,\"total_disbursed\":4000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":80000,\"number_of_instalments\":3,\"disbursement_date\":\"2026-03-17\",\"maturity_date\":\"2026-06-17\",\"total_interest\":600000,\"total_management_fees\":0,\"total_payment\":4600000,\"monthly_payment\":1533333.33000000007450580596923828125,\"cash_amount\":0,\"bank_amount\":3840000,\"collateral_type\":\"Movable\",\"collateral_description\":\"Car\",\"collateral_value\":8300000,\"collateral_net_value\":8000000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":80000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Commerce\",\"economic_center\":\"Commerce\\/Restaurant\",\"request_id\":24,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-083723 for MUGUNGA Prince Cedrick', 'director', 'Director', 'approved', 'director', '2026-04-24 03:39:44', '', '2026-04-24 03:39:25'),
(35, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-085132\",\"customer_id\":175,\"loan_amount\":9600000,\"total_disbursed\":10000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":200000,\"number_of_instalments\":3,\"disbursement_date\":\"2026-03-27\",\"maturity_date\":\"2026-06-26\",\"total_interest\":1500000,\"total_management_fees\":0,\"total_payment\":11500000,\"monthly_payment\":3833333.33000000007450580596923828125,\"cash_amount\":0,\"bank_amount\":9600000,\"collateral_type\":\"Movable\",\"collateral_description\":\"Car\",\"collateral_value\":22000000,\"collateral_net_value\":20000000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":200000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Commerce\",\"economic_center\":\"Commerce\\/Restaurant\",\"request_id\":26,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-085132 for NAHIMANA Brigitte', 'director', 'Director', 'approved', 'director', '2026-04-24 03:53:44', '', '2026-04-24 03:53:29'),
(36, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-085808\",\"customer_id\":179,\"loan_amount\":4800000,\"total_disbursed\":5000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":100000,\"number_of_instalments\":2,\"disbursement_date\":\"2026-03-28\",\"maturity_date\":\"2026-05-28\",\"total_interest\":500000,\"total_management_fees\":0,\"total_payment\":5500000,\"monthly_payment\":2750000,\"cash_amount\":0,\"bank_amount\":4800000,\"collateral_type\":\"Movable\",\"collateral_description\":\"Car\",\"collateral_value\":11000000,\"collateral_net_value\":10000000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":100000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Commerce\",\"economic_center\":\"Commerce\\/Restaurant\",\"request_id\":27,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-085808 for RIZINDE Vital', 'director', 'Director', 'approved', 'director', '2026-04-24 04:00:25', '', '2026-04-24 03:59:58'),
(37, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-090747\",\"customer_id\":199,\"loan_amount\":10560000,\"total_disbursed\":11000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":220000,\"number_of_instalments\":2,\"disbursement_date\":\"2026-03-30\",\"maturity_date\":\"2026-05-30\",\"total_interest\":1100000,\"total_management_fees\":0,\"total_payment\":12100000,\"monthly_payment\":6050000,\"cash_amount\":0,\"bank_amount\":10560000,\"collateral_type\":\"Movable\",\"collateral_description\":\"Car\",\"collateral_value\":24000000,\"collateral_net_value\":22000000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":220000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Other\",\"economic_center\":\"Other\",\"request_id\":29,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-090747 for UWAMARIYA Aliane', 'director', 'Director', 'approved', 'director', '2026-04-24 04:10:57', '', '2026-04-24 04:10:18'),
(38, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-092905\",\"customer_id\":181,\"loan_amount\":4320000,\"total_disbursed\":4500000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":90000,\"number_of_instalments\":3,\"disbursement_date\":\"2026-03-31\",\"maturity_date\":\"2026-06-30\",\"total_interest\":675000,\"total_management_fees\":0,\"total_payment\":5175000,\"monthly_payment\":1725000,\"cash_amount\":0,\"bank_amount\":4320000,\"collateral_type\":\"Immovable\",\"collateral_description\":\"Land\",\"collateral_value\":19853000,\"collateral_net_value\":13897100,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":90000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Commerce\",\"economic_center\":\"Commerce\\/Restaurant\",\"request_id\":32,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-092905 for MIHIRA Joyce', 'director', 'Director', 'approved', 'director', '2026-04-24 04:31:59', '', '2026-04-24 04:31:45'),
(39, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-094909\",\"customer_id\":173,\"loan_amount\":4800000,\"total_disbursed\":5000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":100000,\"number_of_instalments\":3,\"disbursement_date\":\"2026-03-31\",\"maturity_date\":\"2026-06-30\",\"total_interest\":750000,\"total_management_fees\":0,\"total_payment\":5750000,\"monthly_payment\":1916666.66999999992549419403076171875,\"cash_amount\":0,\"bank_amount\":4800000,\"collateral_type\":\"Immovable\",\"collateral_description\":\"Agriculture | Type: Land, UPI: 5\\/07\\/07\\/04\\/4106, Size: 1458\",\"collateral_value\":21870000,\"collateral_net_value\":15309000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":100000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Commerce\",\"economic_center\":\"Commerce\\/Restaurant\",\"request_id\":33,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-094909 for KANKINDI Aisha', 'director', 'Director', 'approved', 'director', '2026-04-24 04:54:47', '', '2026-04-24 04:54:12'),
(40, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-095920\",\"customer_id\":183,\"loan_amount\":2400000,\"total_disbursed\":2500000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":50000,\"number_of_instalments\":3,\"disbursement_date\":\"2026-04-01\",\"maturity_date\":\"2026-07-01\",\"total_interest\":375000,\"total_management_fees\":0,\"total_payment\":2875000,\"monthly_payment\":958333.329999999958090484142303466796875,\"cash_amount\":0,\"bank_amount\":2400000,\"collateral_type\":\"Immovable\",\"collateral_description\":\"Type: Land, UPI: 1\\/01\\/05\\/06\\/7450, Size: 345\",\"collateral_value\":17250009,\"collateral_net_value\":12075000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":50000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Other\",\"economic_center\":\"Other\",\"request_id\":34,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-095920 for MUNYAMPETA Joseph', 'director', 'Director', 'approved', 'director', '2026-04-24 05:04:46', '', '2026-04-24 05:04:25'),
(41, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-100813\",\"customer_id\":185,\"loan_amount\":9600000,\"total_disbursed\":10000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":200000,\"number_of_instalments\":3,\"disbursement_date\":\"2026-04-03\",\"maturity_date\":\"2026-07-03\",\"total_interest\":1500000,\"total_management_fees\":0,\"total_payment\":11500000,\"monthly_payment\":3833333.33000000007450580596923828125,\"cash_amount\":0,\"bank_amount\":9600000,\"collateral_type\":\"Immovable\",\"collateral_description\":\"Type: Land, UPI: 5\\/03\\/04\\/01\\/1669, Size: 435\",\"collateral_value\":45063900,\"collateral_net_value\":31544730,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":200000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Commerce\",\"economic_center\":\"Commerce\\/Restaurant\",\"request_id\":35,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-100813 for UWIZEYE Pofia', 'director', 'Director', 'approved', 'director', '2026-04-24 05:12:56', '', '2026-04-24 05:12:29'),
(42, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-101614\",\"customer_id\":187,\"loan_amount\":9600000,\"total_disbursed\":10000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":200000,\"number_of_instalments\":3,\"disbursement_date\":\"2026-04-03\",\"maturity_date\":\"2026-07-03\",\"total_interest\":1500000,\"total_management_fees\":0,\"total_payment\":11500000,\"monthly_payment\":3833333.33000000007450580596923828125,\"cash_amount\":0,\"bank_amount\":9600000,\"collateral_type\":\"Movable\",\"collateral_description\":\"Others\",\"collateral_value\":21000000,\"collateral_net_value\":20000000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":200000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Commerce\",\"economic_center\":\"Commerce\\/Restaurant\",\"request_id\":36,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-101614 for NIYONKURU Zephanie', 'director', 'Director', 'approved', 'director', '2026-04-24 05:23:29', '', '2026-04-24 05:23:06'),
(43, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-102640\",\"customer_id\":189,\"loan_amount\":960000,\"total_disbursed\":1000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":20000,\"number_of_instalments\":3,\"disbursement_date\":\"2026-04-11\",\"maturity_date\":\"2026-07-11\",\"total_interest\":150000,\"total_management_fees\":0,\"total_payment\":1150000,\"monthly_payment\":383333.3300000000162981450557708740234375,\"cash_amount\":0,\"bank_amount\":960000,\"collateral_type\":\"Immovable\",\"collateral_description\":\"Type: Land, UPI: 1\\/03\\/01\\/02\\/2541, Size: 204\",\"collateral_value\":15499940,\"collateral_net_value\":10849958,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":20000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Other\",\"economic_center\":\"Other\",\"request_id\":37,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-102640 for MUGIRANEZA Edson', 'director', 'Director', 'approved', 'director', '2026-04-24 05:32:15', '', '2026-04-24 05:31:44'),
(44, 'add', 'customer', 0, '{\"customer_code\":\"CUST-0003\",\"customer_name\":\"Testing Docs\",\"birth_place\":\"N\\/A\",\"id_number\":\"1234567891234567\",\"account_number\":\"\",\"occupation\":\"\",\"gender\":\"Male\",\"date_of_birth\":null,\"record_date\":\"2026-04-24\",\"phone\":\"0781262526\",\"email\":\"ishimweghislain82@gmail.com\",\"organization\":\"MoneyTap Ecosystem\",\"father_name\":\"\",\"mother_name\":\"\",\"marriage_type\":\"Single\",\"spouse\":\"\",\"spouse_id\":\"\",\"spouse_occupation\":\"\",\"spouse_phone\":\"\",\"address\":\"ruyenzi\",\"province\":\"\",\"district\":\"\",\"sector\":\"\",\"cell\":\"\",\"village\":\"\",\"location\":\"\",\"project\":\"\",\"project_location\":\"\",\"caution_location\":\"\",\"loan_type\":\"\",\"created_by\":\"director\",\"has_guarantor\":\"No\",\"guarantor_name\":\"\",\"guarantor_id\":\"\",\"guarantor_phone\":\"\",\"guarantor_occupation\":\"\",\"collateral_type\":\"\",\"collateral_sub_type\":\"\",\"upi_location\":\"\",\"square_mtrs\":\"\",\"doc_id\":\"uploads\\/documents\\/doc_id_1777026704_66.pdf\",\"doc_contract\":\"uploads\\/documents\\/doc_contract_1777026704_84.png\",\"doc_statement\":\"uploads\\/documents\\/doc_statement_1777026704_98.pdf\",\"doc_payslip\":\"uploads\\/documents\\/doc_payslip_1777026704_47.png\",\"doc_marital\":\"uploads\\/documents\\/doc_marital_1777026704_33.pdf\",\"doc_rdb\":\"uploads\\/documents\\/doc_rdb_1777026704_65.png\",\"doc_loan_clearance\":\"uploads\\/documents\\/doc_loan_clearance_1777026704_17.pdf\",\"doc_power_of_attorney\":\"uploads\\/documents\\/doc_power_of_attorney_1777026704_32.png\",\"doc_guarantor_letter\":null,\"requested_amount\":0,\"loan_duration\":0}', 'Add new customer: Testing Docs', 'director', 'Director', 'approved', 'director', '2026-04-24 05:31:58', '', '2026-04-24 05:31:44'),
(45, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-103741\",\"customer_id\":191,\"loan_amount\":19200000,\"total_disbursed\":20000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":400000,\"number_of_instalments\":4,\"disbursement_date\":\"2026-04-03\",\"maturity_date\":\"2026-08-03\",\"total_interest\":4000000,\"total_management_fees\":0,\"total_payment\":24000000,\"monthly_payment\":6000000,\"cash_amount\":0,\"bank_amount\":19200000,\"collateral_type\":\"Immovable\",\"collateral_description\":\"Type: Land, UPI: 1\\/03\\/08\\/02\\/2431, Size: 277\",\"collateral_value\":150171009,\"collateral_net_value\":105119706,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":400000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Commerce\",\"economic_center\":\"Commerce\\/Restaurant\",\"request_id\":38,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-103741 for MUKANOHERI Berthe', 'director', 'Director', 'approved', 'director', '2026-04-24 05:48:59', '', '2026-04-24 05:48:46'),
(46, 'edit', 'customer', 203, '{\"customer_code\":\"CUST-0056\",\"customer_name\":\"Testing Docs\",\"birth_place\":\"N\\/A\",\"id_number\":\"1234567891234567\",\"account_number\":\"\",\"occupation\":\"\",\"gender\":\"Male\",\"date_of_birth\":null,\"phone\":\"0781262526\",\"father_name\":\"\",\"mother_name\":\"\",\"spouse\":\"\",\"spouse_occupation\":\"\",\"spouse_phone\":\"\",\"marriage_type\":\"Single\",\"address\":\"ruyenzi\",\"province\":\"\",\"district\":\"\",\"sector\":\"\",\"cell\":\"\",\"village\":\"\",\"location\":\"\",\"project\":\"\",\"project_location\":\"\",\"caution_location\":\"\",\"email\":\"ishimweghislain82@gmail.com\",\"organization\":\"MoneyTap Ecosystem\",\"collateral_type\":\"\",\"collateral_sub_type\":\"\",\"upi_location\":\"\",\"square_mtrs\":\"\",\"doc_id\":\"uploads\\/documents\\/doc_id_1777026704_66.pdf\",\"doc_contract\":\"uploads\\/documents\\/doc_contract_1777026704_84.png\",\"doc_statement\":\"uploads\\/documents\\/doc_statement_1777026704_98.pdf\",\"doc_payslip\":\"uploads\\/documents\\/doc_payslip_1777026704_47.png\",\"doc_marital\":\"uploads\\/documents\\/doc_marital_1777026704_33.pdf\",\"doc_rdb\":\"uploads\\/documents\\/doc_rdb_1777026704_65.png\",\"doc_loan_clearance\":\"uploads\\/documents\\/doc_loan_clearance_1777026704_17.pdf\",\"doc_power_of_attorney\":\"uploads\\/documents\\/doc_power_of_attorney_1777028842_3273.webp\",\"doc_guarantor_letter\":\"\",\"requested_amount\":0,\"loan_duration\":0}', 'Edit customer: Testing Docs', 'director', 'Director', 'approved', 'director', '2026-04-24 06:08:21', '', '2026-04-24 06:07:22'),
(47, 'delete', 'customer', 203, '{\"customer_id\":203,\"customer_name\":\"Testing Docs\",\"customer_code\":\"CUST-0056\",\"action_note\":\"Permanent deletion of customer and all related records\"}', 'Delete customer: Testing Docs', 'director', 'Director', 'approved', 'director', '2026-04-24 06:09:01', '', '2026-04-24 06:08:52'),
(48, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-111533\",\"customer_id\":193,\"loan_amount\":19200000,\"total_disbursed\":20000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":400000,\"number_of_instalments\":2,\"disbursement_date\":\"2026-04-14\",\"maturity_date\":\"2026-06-14\",\"total_interest\":2000000,\"total_management_fees\":0,\"total_payment\":22000000,\"monthly_payment\":11000000,\"cash_amount\":0,\"bank_amount\":19200000,\"collateral_type\":\"Immovable\",\"collateral_description\":\"Type: Land, UPI: 1\\/02\\/14\\/07\\/3023, Size: 301\",\"collateral_value\":214714129,\"collateral_net_value\":150299890,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":400000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Contruction\",\"economic_center\":\"Public work\",\"request_id\":39,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-111533 for MUHOZA MAYURU Eric', 'director', 'Director', 'approved', 'director', '2026-04-24 06:19:15', '', '2026-04-24 06:18:33'),
(49, 'add', 'loan', 0, '{\"loan_number\":\"LN-20260424-112831\",\"customer_id\":201,\"loan_amount\":1920000,\"total_disbursed\":2000000,\"interest_rate\":5,\"management_fee_rate\":2,\"management_fee\":40000,\"number_of_instalments\":2,\"disbursement_date\":\"2026-04-22\",\"maturity_date\":\"2026-06-22\",\"total_interest\":200000,\"total_management_fees\":0,\"total_payment\":2200000,\"monthly_payment\":1100000,\"cash_amount\":0,\"bank_amount\":1920000,\"collateral_type\":\"Movable\",\"collateral_description\":\"\",\"collateral_value\":4500000,\"collateral_net_value\":4000000,\"is_topup\":0,\"topup_type\":null,\"deduct_fee_from_disbursed\":1,\"mgmt_fee_first_month_only\":0,\"mgmt_fee_is_disbursed\":0,\"requested_amount\":40000,\"requested_amount_paid_upfront\":0,\"is_requested_paid_upfront\":0,\"requested_amount_status\":\"Added to Installment\",\"loan_purpose\":\"Other\",\"economic_center\":\"Other\",\"request_id\":40,\"submitted_by\":\"director\"}', 'Add loan LN-20260424-112831 for TWIZERIMANA Jean Baptiste', 'director', 'Director', 'approved', 'director', '2026-04-24 06:30:15', '', '2026-04-24 06:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `full_name`, `email`, `is_active`, `created_at`) VALUES
(1, 'director', '$2y$10$7H4M5WL6tCFnmOqhoYq.iesWfQKZDZl6RvVvntLduz13CwmOYftIC', 'Director', 'Company Director', 'director@gracelending.rw', 1, '2026-03-10 09:53:36'),
(2, 'md', '$2y$12$ecP129QBOikbBaZEp/.swup3kbd1FT9FEvRErygvJTPagr1Rka1kq', 'MD', 'Managing Director', 'md@gracelending.rw', 1, '2026-03-10 09:53:36'),
(3, 'accountant', '$2y$12$ecP129QBOikbBaZEp/.swup3kbd1FT9FEvRErygvJTPagr1Rka1kq', 'Accountant', 'Senior Accountant', 'accountant@gracelending.rw', 1, '2026-03-10 09:53:36'),
(4, 'secretary', '$2y$12$ecP129QBOikbBaZEp/.swup3kbd1FT9FEvRErygvJTPagr1Rka1kq', 'Secretary', 'Company Secretary', 'secretary@gracelending.rw', 1, '2026-03-10 09:53:36'),
(5, 'developerwilly', '$2y$12$AVnPsQrdA0pn.L23zMejWOgx1QoOj383bISQj067yHPpqG7m7iAZe', 'Developer', 'Willy Developer', 'willy@gracelending.rw', 1, '2026-03-10 11:42:13'),
(6, 'developerghis', '$2y$12$AVnPsQrdA0pn.L23zMejWOgx1QoOj383bISQj067yHPpqG7m7iAZe', 'Developer', 'Ghislain Developer', 'ghis@gracelending.rw', 1, '2026-03-10 11:42:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `action_type` (`action_type`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `application_fees`
--
ALTER TABLE `application_fees`
  ADD PRIMARY KEY (`application_fee_id`),
  ADD UNIQUE KEY `fee_reference` (`fee_reference`),
  ADD KEY `idx_customer` (`customer_id`),
  ADD KEY `idx_fee_date` (`fee_date`),
  ADD KEY `idx_reference` (`fee_reference`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`asset_id`),
  ADD UNIQUE KEY `asset_number` (`asset_number`);

--
-- Indexes for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `account_code` (`account_code`),
  ADD KEY `idx_account_code` (`account_code`),
  ADD KEY `idx_account_type` (`account_type`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `uq_customer_code` (`customer_code`),
  ADD KEY `idx_id_number` (`id_number`),
  ADD KEY `idx_customer_code` (`customer_code`),
  ADD KEY `idx_phone` (`phone`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expense_id`),
  ADD UNIQUE KEY `expense_reference` (`expense_reference`),
  ADD KEY `idx_expense_date` (`expense_date`),
  ADD KEY `idx_account_code` (`account_code`);

--
-- Indexes for table `ledger`
--
ALTER TABLE `ledger`
  ADD PRIMARY KEY (`ledger_id`),
  ADD KEY `idx_transaction_date` (`transaction_date`),
  ADD KEY `idx_account_code` (`account_code`),
  ADD KEY `idx_voucher_number` (`voucher_number`),
  ADD KEY `idx_reference` (`reference_type`,`reference_id`),
  ADD KEY `idx_ledger_sequence` (`account_code`,`transaction_date`,`sequence_number`);

--
-- Indexes for table `loan_application_fees`
--
ALTER TABLE `loan_application_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_instalments`
--
ALTER TABLE `loan_instalments`
  ADD PRIMARY KEY (`instalment_id`),
  ADD KEY `loan_id` (`loan_id`),
  ADD KEY `loan_number` (`loan_number`),
  ADD KEY `instalment_number` (`instalment_number`),
  ADD KEY `due_date` (`due_date`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_instalment_dates` (`due_date`,`payment_date`),
  ADD KEY `idx_instalment_status` (`loan_id`,`status`);

--
-- Indexes for table `loan_payments`
--
ALTER TABLE `loan_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `loan_instalment_id` (`loan_instalment_id`),
  ADD KEY `idx_loan_id` (`loan_id`),
  ADD KEY `idx_payment_date` (`payment_date`);

--
-- Indexes for table `loan_payment_adjustments`
--
ALTER TABLE `loan_payment_adjustments`
  ADD PRIMARY KEY (`adjustment_id`),
  ADD KEY `fk_loan` (`loan_id`),
  ADD KEY `idx_customer_loan` (`customer_id`,`loan_id`),
  ADD KEY `idx_instalment` (`instalment_id`),
  ADD KEY `idx_record_date` (`record_date`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `loan_payment_variance`
--
ALTER TABLE `loan_payment_variance`
  ADD PRIMARY KEY (`variance_id`),
  ADD KEY `idx_payment_id` (`payment_id`),
  ADD KEY `idx_loan_id` (`loan_id`),
  ADD KEY `idx_instalment_id` (`instalment_id`),
  ADD KEY `idx_customer_id` (`customer_id`),
  ADD KEY `idx_variance_type` (`variance_type`),
  ADD KEY `idx_unallocated_balance` (`unallocated_balance`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `loan_portfolio`
--
ALTER TABLE `loan_portfolio`
  ADD PRIMARY KEY (`loan_id`),
  ADD UNIQUE KEY `loan_number` (`loan_number`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `loan_status` (`loan_status`),
  ADD KEY `disbursement_date` (`disbursement_date`),
  ADD KEY `idx_loan_customer` (`customer_id`,`loan_status`),
  ADD KEY `idx_loan_dates` (`disbursement_date`,`maturity_date`);

--
-- Indexes for table `loan_requests`
--
ALTER TABLE `loan_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `loan_transactions`
--
ALTER TABLE `loan_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `idx_loan_id` (`loan_id`),
  ADD KEY `idx_transaction_date` (`transaction_date`),
  ADD KEY `idx_transaction_type` (`transaction_type`);

--
-- Indexes for table `pending_approvals`
--
ALTER TABLE `pending_approvals`
  ADD PRIMARY KEY (`approval_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `application_fees`
--
ALTER TABLE `application_fees`
  MODIFY `application_fee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ledger`
--
ALTER TABLE `ledger`
  MODIFY `ledger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `loan_application_fees`
--
ALTER TABLE `loan_application_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_instalments`
--
ALTER TABLE `loan_instalments`
  MODIFY `instalment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `loan_payments`
--
ALTER TABLE `loan_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_payment_adjustments`
--
ALTER TABLE `loan_payment_adjustments`
  MODIFY `adjustment_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_payment_variance`
--
ALTER TABLE `loan_payment_variance`
  MODIFY `variance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_portfolio`
--
ALTER TABLE `loan_portfolio`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `loan_requests`
--
ALTER TABLE `loan_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `loan_transactions`
--
ALTER TABLE `loan_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pending_approvals`
--
ALTER TABLE `pending_approvals`
  MODIFY `approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loan_instalments`
--
ALTER TABLE `loan_instalments`
  ADD CONSTRAINT `loan_instalments_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `loan_portfolio` (`loan_id`) ON DELETE CASCADE;

--
-- Constraints for table `loan_payments`
--
ALTER TABLE `loan_payments`
  ADD CONSTRAINT `loan_payments_ibfk_1` FOREIGN KEY (`loan_instalment_id`) REFERENCES `loan_instalments` (`instalment_id`),
  ADD CONSTRAINT `loan_payments_ibfk_2` FOREIGN KEY (`loan_id`) REFERENCES `loan_portfolio` (`loan_id`);

--
-- Constraints for table `loan_payment_adjustments`
--
ALTER TABLE `loan_payment_adjustments`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_instalment` FOREIGN KEY (`instalment_id`) REFERENCES `loan_instalments` (`instalment_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_loan` FOREIGN KEY (`loan_id`) REFERENCES `loan_portfolio` (`loan_id`) ON UPDATE CASCADE;

--
-- Constraints for table `loan_transactions`
--
ALTER TABLE `loan_transactions`
  ADD CONSTRAINT `loan_transactions_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `loan_portfolio` (`loan_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
