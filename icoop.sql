-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2022 at 03:42 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icoop`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_closure`
--

CREATE TABLE `account_closure` (
  `ac_id` int(11) NOT NULL,
  `ac_staff_id` text DEFAULT NULL,
  `ac_effective_date` date DEFAULT NULL,
  `ac_mailing` text DEFAULT NULL,
  `ac_email` text DEFAULT NULL,
  `ac_phone` text DEFAULT NULL,
  `ac_a_date` date DEFAULT NULL,
  `ac_by` text NOT NULL,
  `ac_verify_comment` text DEFAULT NULL,
  `ac_verify_by` text DEFAULT NULL,
  `ac_verify_date` date DEFAULT NULL,
  `ac_approve_comment` text DEFAULT NULL,
  `ac_approve_by` text DEFAULT NULL,
  `ac_approve_date` date DEFAULT NULL,
  `ac_discard_comment` text DEFAULT NULL,
  `ac_discard_by` text DEFAULT NULL,
  `ac_discard_date` date DEFAULT NULL,
  `ac_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_closure`
--

INSERT INTO `account_closure` (`ac_id`, `ac_staff_id`, `ac_effective_date`, `ac_mailing`, `ac_email`, `ac_phone`, `ac_a_date`, `ac_by`, `ac_verify_comment`, `ac_verify_by`, `ac_verify_date`, `ac_approve_comment`, `ac_approve_by`, `ac_approve_date`, `ac_discard_comment`, `ac_discard_by`, `ac_discard_date`, `ac_status`) VALUES
(1, 'cs006', '2021-03-13', 'est', 'oki@yahoo.com', '022', '2021-03-12', 'administrator@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `application_id` int(11) NOT NULL,
  `application_staff_id` text NOT NULL,
  `application_first_name` text NOT NULL,
  `application_last_name` text NOT NULL,
  `application_other_name` text DEFAULT NULL,
  `application_gender` text DEFAULT NULL,
  `application_department_id` text NOT NULL,
  `application_location_id` text NOT NULL,
  `application_payroll_group_id` text NOT NULL,
  `application_dob` text NOT NULL,
  `application_email` text NOT NULL,
  `application_address` text DEFAULT NULL,
  `application_city` text NOT NULL,
  `application_state_id` text NOT NULL,
  `application_telephone` text NOT NULL,
  `application_kin_fullname` text DEFAULT NULL,
  `application_kin_address` text DEFAULT NULL,
  `application_kin_email` text DEFAULT NULL,
  `application_kin_phone` text DEFAULT NULL,
  `application_kin_relationship` text DEFAULT NULL,
  `application_bank_id` int(11) NOT NULL,
  `application_account_number` text NOT NULL,
  `application_bank_branch` text NOT NULL,
  `application_sort_code` text NOT NULL,
  `application_date` date DEFAULT NULL,
  `application_savings` double DEFAULT NULL,
  `application_verify_by` text NOT NULL,
  `application_verify_date` date NOT NULL,
  `application_verify_comment` text DEFAULT NULL,
  `application_approved_by` text NOT NULL,
  `application_approved_date` date NOT NULL,
  `application_approved_comment` text DEFAULT NULL,
  `application_discarded_by` text NOT NULL,
  `application_discarded_date` date NOT NULL,
  `application_discarded_reason` text NOT NULL,
  `application_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`application_id`, `application_staff_id`, `application_first_name`, `application_last_name`, `application_other_name`, `application_gender`, `application_department_id`, `application_location_id`, `application_payroll_group_id`, `application_dob`, `application_email`, `application_address`, `application_city`, `application_state_id`, `application_telephone`, `application_kin_fullname`, `application_kin_address`, `application_kin_email`, `application_kin_phone`, `application_kin_relationship`, `application_bank_id`, `application_account_number`, `application_bank_branch`, `application_sort_code`, `application_date`, `application_savings`, `application_verify_by`, `application_verify_date`, `application_verify_comment`, `application_approved_by`, `application_approved_date`, `application_approved_comment`, `application_discarded_by`, `application_discarded_date`, `application_discarded_reason`, `application_status`) VALUES
(1, '12345', 'Oki-Peter', 'Ejiroghene', '', 'male', '1', '1', '1', '2020-12-16', 'peterejiro@outlook.com', '12', 'abuja', '38', '08134395652', 'atakpor sylvia', '12', 'peterejiro96@gmail.com', '08134395652', NULL, 1, '0150176481', 'benin', '64532165132', '2020-12-18', 5000, 'administrator administrator', '2020-12-21', '', 'administrator administrator', '2020-12-21', 'ok', '', '0000-00-00', '', 2),
(3, 'cs006', 'Mason', 'Oki', 'Tega', 'male', '1', '1', '1', '1996-06-16', 'masonoki@yahoo.com', 'test', 'benin', '12', '08033553752', 'peterejiro96@gmail.com', 'test', NULL, '08090945451', 'sibling', 1, '21321321321', 'benin', '456', '2021-01-26', 500000, 'administrator administrator', '2021-03-12', '', 'administrator administrator', '2021-03-12', '', '', '0000-00-00', '', 2),
(5, 'eng1303449', 'Jason', 'Jason', 'Jason', 'male', '1', '1', '1', '1996-06-16', 'jason.j@gmail.com', 'kbwa', 'Kubwa', '15', '0899999999', 'jason.j', 'Kubwa', 'jason.j@gmail.com', '', 'sibling', 1, '0150176481', 'uselu', '01888888888', '2021-07-12', 100000, 'administrator administrator', '2021-07-12', 'ok', 'administrator administrator', '2021-07-12', 'ok', '', '0000-00-00', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `bank_id` int(11) NOT NULL,
  `bank_name` text NOT NULL,
  `sort_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`bank_id`, `bank_name`, `sort_code`) VALUES
(1, 'Guaranty Trust Bank', ''),
(2, 'Zenith Bank', '');

-- --------------------------------------------------------

--
-- Table structure for table `bulksms`
--

CREATE TABLE `bulksms` (
  `bulksms_id` int(11) NOT NULL,
  `sender_id` text DEFAULT NULL,
  `receivers` text DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bulksms`
--

INSERT INTO `bulksms` (`bulksms_id`, `sender_id`, `receivers`, `message`) VALUES
(1, 'Connexxion', '2348032404359, 2349028383737', 'Type message here'),
(2, 'CSwitch', '23490129404', 'Compose SMS'),
(3, 'Levels', '2348032404359', 'Leave message'),
(4, 'JAG', '2348032404359', 'SMS received?'),
(5, 'JAG', '2348032404359', 'SMS received?'),
(6, 'iCoop', '2348032404359', 'iCoop messaging system'),
(7, 'PAGG', '2348032404359', 'ss'),
(8, 'CSwitch', '2348032404359', 'hello'),
(9, 'JAG', '2348032404359', 'ssss');

-- --------------------------------------------------------

--
-- Table structure for table `coas`
--

CREATE TABLE `coas` (
  `coa_id` int(11) NOT NULL,
  `account_name` text NOT NULL,
  `account_type` int(11) NOT NULL,
  `bank` int(11) NOT NULL DEFAULT 0,
  `glcode` int(11) NOT NULL,
  `parent_account` int(11) NOT NULL DEFAULT 0,
  `type` text DEFAULT NULL COMMENT '0=General, 1=Detail',
  `note` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coas`
--

INSERT INTO `coas` (`coa_id`, `account_name`, `account_type`, `bank`, `glcode`, `parent_account`, `type`, `note`, `created_at`) VALUES
(1, 'Assets', 1, 0, 1, 0, '0', NULL, '2021-03-09 11:39:04'),
(2, 'Liability', 2, 0, 2, 0, '0', NULL, '2021-03-09 11:39:04'),
(3, 'Equity', 3, 0, 3, 0, '0', NULL, '2021-03-09 11:39:47'),
(4, 'Revenue', 4, 0, 4, 0, '0', NULL, '2021-03-09 11:39:47'),
(5, 'Expenses', 5, 0, 5, 0, '0', NULL, '2021-03-09 11:40:05'),
(6, 'Current Assets ', 1, 0, 110, 1, '0', NULL, '2021-03-09 11:41:24'),
(7, 'Cash In Hand  ', 1, 0, 11010, 110, '0', NULL, '2021-03-09 11:44:59'),
(8, 'Petty Cash/Imprest Account  ', 1, 0, 1101001, 11010, '1', NULL, '2021-03-09 11:47:01'),
(9, 'Cash in Bank', 1, 0, 11011, 110, '0', NULL, '2021-03-09 11:48:34'),
(10, 'Current Account  ', 1, 0, 1101110, 11011, '0', NULL, '2021-03-09 11:51:17'),
(11, 'Zenith Bank Current Account  ', 1, 1, 110111001, 1101110, '1', NULL, '2021-03-09 11:53:19'),
(12, 'First City Monument Bank Current Account  ', 1, 1, 110111002, 1101110, '1', NULL, '2021-03-09 11:59:07'),
(13, 'GTBank Current Account  ', 1, 1, 110111003, 1101110, '1', NULL, '2021-03-09 12:01:55'),
(14, 'Account Receivable  ', 1, 0, 11013, 110, '0', NULL, '2021-03-09 12:02:43'),
(15, 'Trade Debtors ', 1, 0, 1101301, 11013, '1', NULL, '2021-03-09 12:03:24'),
(16, 'Trade Debtors (Appliances) ', 1, 0, 1101302, 11013, '1', NULL, '2021-03-09 12:04:24'),
(17, 'Inventory  ', 1, 0, 11014, 110, '0', NULL, '2021-03-09 12:05:17'),
(18, 'Stock (Food Items) ', 1, 0, 1101404, 11014, '1', NULL, '2021-03-09 12:06:15'),
(19, 'Other Current Assets  ', 1, 0, 11016, 110, '0', NULL, '2021-03-09 12:06:42'),
(20, 'Payroll Clearing  ', 1, 0, 1101601, 11016, '1', NULL, '2021-03-09 12:07:17'),
(21, 'Payroll Clearing - Retiree ', 1, 0, 1101602, 11016, '1', NULL, '2021-03-09 12:07:48'),
(22, 'Fixed Assets and Intangibles  ', 1, 0, 111, 1, '0', NULL, '2021-03-09 12:08:29'),
(23, 'Office Furniture ', 1, 0, 11111, 111, '1', NULL, '2021-03-09 12:09:09'),
(24, 'M.Vehicles & Equipments  ', 1, 0, 11112, 111, '1', NULL, '2021-03-09 12:09:40'),
(25, 'Computer Equipment  ', 1, 0, 11113, 111, '0', NULL, '2021-03-09 12:10:07'),
(26, 'Computer Hardware  ', 1, 0, 1111301, 11113, '1', NULL, '2021-03-09 12:10:58'),
(27, 'Computer Software- Intangible  ', 1, 0, 1111302, 11113, '1', NULL, '2021-03-09 12:11:25'),
(28, 'Office Equipment ', 1, 0, 11114, 111, '1', NULL, '2021-03-09 12:11:54'),
(29, 'Other Assets  ', 1, 0, 113, 1, '0', NULL, '2021-03-09 12:12:25'),
(30, 'Deposits  ', 1, 0, 11301, 113, '1', NULL, '2021-03-09 12:13:02'),
(31, 'Investment  ', 1, 0, 11302, 113, '0', NULL, '2021-03-09 12:13:29'),
(32, 'Investment in Shares  ', 1, 0, 1130201, 11302, '1', NULL, '2021-03-09 12:14:02'),
(33, 'Fixed Deposit ', 1, 0, 1130202, 11302, '1', NULL, '2021-03-09 12:14:30'),
(34, 'Loan  ', 1, 0, 11303, 113, '0', NULL, '2021-03-09 12:15:00'),
(35, 'Normal Loan ', 1, 0, 1130301, 11303, '1', NULL, '2021-03-09 12:15:34'),
(36, 'Car Loan', 1, 0, 1130302, 11303, '1', NULL, '2021-03-09 12:16:03'),
(37, 'Regular Loan', 1, 0, 1130303, 11303, '1', NULL, '2021-03-09 12:16:43'),
(38, 'Account Receivables ', 1, 0, 11304, 113, '0', NULL, '2021-03-09 12:17:12'),
(39, 'Receivables ', 1, 0, 1130401, 11304, '1', NULL, '2021-03-09 12:17:46'),
(40, 'Upload Exceptions ', 1, 0, 114, 1, '0', NULL, '2021-03-09 12:18:25'),
(41, 'Loan Exceptions ', 1, 0, 11402, 114, '1', NULL, '2021-03-09 12:18:49'),
(42, 'Interest Waived ', 1, 0, 11403, 114, '1', NULL, '2021-03-09 12:19:12'),
(43, 'Current Liabilities  ', 2, 0, 210, 2, '0', NULL, '2021-03-09 12:19:52'),
(44, 'PROV. FOR BAD DEBT ', 2, 0, 21016, 210, '1', NULL, '2021-03-09 12:20:21'),
(45, 'Tear Loan Balance (Creditors) ', 2, 0, 21017, 210, '1', NULL, '2021-03-09 12:21:06'),
(46, 'Proposed Divided Payable  ', 2, 0, 21027, 210, '1', NULL, '2021-03-09 12:21:29'),
(47, 'Bank Loan Interest ', 2, 0, 21048, 210, '1', NULL, '2021-03-09 12:21:53'),
(48, 'Unearned Interest on Normal Loan ', 2, 0, 21049, 210, '1', NULL, '2021-03-09 12:22:16'),
(49, 'Unearned Interest on Car Loan ', 2, 0, 21050, 210, '1', NULL, '2021-03-09 12:22:43'),
(50, 'Unearned Interest on Regular Loan ', 2, 0, 21051, 210, '1', NULL, '2021-03-09 12:23:09'),
(51, 'Non-Current Liabilities  ', 2, 0, 211, 2, '0', NULL, '2021-03-09 12:23:36'),
(52, 'Members Savings  ', 2, 0, 21114, 211, '1', NULL, '2021-03-09 12:24:04'),
(53, 'Share Capital ', 2, 0, 21115, 211, '1', NULL, '2021-03-09 12:24:32'),
(54, 'Member Target Savings ', 2, 0, 21121, 211, '1', NULL, '2021-03-09 12:25:00'),
(55, 'Member Bundle Savings ', 2, 0, 21122, 211, '1', NULL, '2021-03-09 12:25:29'),
(56, 'Retiree Savings ', 2, 0, 21123, 211, '1', NULL, '2021-03-09 12:26:14'),
(57, 'Retirement Bundle Scheme Interest Payable ', 2, 0, 21124, 211, '1', NULL, '2021-03-09 12:26:39'),
(58, 'Trade Creditors ', 2, 0, 212, 2, '0', NULL, '2021-03-09 12:27:07'),
(59, 'Owel Industrial LTD ', 2, 0, 21201, 212, '1', NULL, '2021-03-09 12:27:33'),
(60, 'Damian Okojie ', 2, 0, 21202, 212, '1', NULL, '2021-03-09 12:28:05'),
(61, 'Ufondu L. N ', 2, 0, 21203, 212, '1', NULL, '2021-03-09 12:28:41'),
(62, 'Share Capital Contribution  ', 3, 0, 310, 3, '0', NULL, '2021-03-09 12:29:12'),
(63, 'Owner\'s Capital  ', 3, 0, 31010, 310, '1', NULL, '2021-03-09 12:29:48'),
(64, 'Retained Earnings  ', 3, 0, 31011, 310, '1', NULL, '2021-03-09 12:30:45'),
(65, 'Revenue Reserve  ', 3, 0, 31012, 310, '1', NULL, '2021-03-09 12:31:10'),
(66, 'Prior Year Adjustment  ', 3, 0, 31013, 310, '1', NULL, '2021-03-09 12:31:35'),
(67, 'Capital Reserve  ', 3, 0, 31014, 310, '1', NULL, '2021-03-09 12:31:59'),
(68, 'Education Fund Reserve  ', 3, 0, 31015, 310, '1', NULL, '2021-03-09 12:32:22'),
(69, 'Reserve Fund ', 3, 0, 31016, 310, '1', NULL, '2021-03-09 12:32:48'),
(70, 'General Reserve ', 3, 0, 31017, 310, '1', NULL, '2021-03-09 12:33:20'),
(71, 'Sales  ', 4, 0, 410, 4, '0', NULL, '2021-03-09 12:34:02'),
(72, 'Cash Sales  ', 4, 0, 41010, 410, '0', NULL, '2021-03-09 12:34:42'),
(73, 'Sales of Rice & Oil  ', 4, 0, 4101001, 41010, '1', NULL, '2021-03-09 12:35:10'),
(74, 'Credit Sales  ', 4, 0, 41011, 410, '0', NULL, '2021-03-09 12:35:41'),
(75, 'Sales of Rice & Oil - Credit Sales  ', 4, 0, 4101101, 41011, '1', NULL, '2021-03-09 12:36:07'),
(76, 'Other income', 4, 0, 413, 4, '0', NULL, '2021-03-09 12:36:36'),
(77, 'Sales Disposal for Fixed Assets  ', 4, 0, 41301, 413, '1', NULL, '2021-03-09 12:37:02'),
(78, 'Interest on Special Loans  ', 4, 0, 41302, 413, '1', NULL, '2021-03-09 12:37:27'),
(79, 'Interest On Current Accounts  ', 4, 0, 41303, 413, '1', NULL, '2021-03-09 12:37:51'),
(80, 'Interest On WITHDRAWALS ', 4, 0, 41304, 413, '1', NULL, '2021-03-09 12:38:26'),
(81, 'Dividend Received  ', 4, 0, 41305, 413, '1', NULL, '2021-03-09 12:38:47'),
(82, 'Membership fee  ', 4, 0, 41306, 413, '1', NULL, '2021-03-09 12:39:14'),
(83, 'Fixed Assets Disposal  ', 4, 0, 41307, 4, '1', NULL, '2021-03-09 12:39:41'),
(84, 'Interest on Car Loan ', 4, 0, 41308, 413, '1', NULL, '2021-03-09 12:40:06'),
(85, 'Interest on Regular Loan ', 4, 0, 41309, 413, '1', NULL, '2021-03-09 12:40:28'),
(86, 'Interest on Normal Loan', 4, 0, 41310, 413, '1', NULL, '2021-03-09 12:40:50'),
(87, 'FIXED DEPOSIT INTEREST RECEIVED ', 4, 0, 41311, 413, '1', NULL, '2021-03-09 12:41:15'),
(88, 'Dividend Received ON INVESTMENTS ', 4, 0, 41312, 413, '1', NULL, '2021-03-09 12:42:44'),
(89, 'Bus Hiring ', 4, 0, 41313, 413, '1', NULL, '2021-03-09 12:43:15'),
(90, 'Cost of Goods Sold  ', 5, 0, 510, 5, '0', NULL, '2021-03-09 12:43:39'),
(91, 'Sales Expences  ', 5, 0, 51002, 510, '1', NULL, '2021-03-09 12:44:04'),
(92, 'Purchase ', 5, 0, 51004, 510, '1', NULL, '2021-03-09 12:44:32'),
(93, 'Operating Expenses  ', 5, 0, 511, 5, '0', NULL, '2021-03-09 12:45:01'),
(94, 'Supplies  ', 5, 0, 51101, 511, '1', NULL, '2021-03-09 12:45:26'),
(95, 'Rent Subsidy ', 5, 0, 51102, 511, '1', NULL, '2021-03-09 12:45:51'),
(96, 'Utilities  ', 5, 0, 51103, 511, '1', NULL, '2021-03-09 12:46:14'),
(97, 'Electricity and Water  ', 5, 0, 51104, 511, '1', NULL, '2021-03-09 12:46:37'),
(98, 'Maintenance  ', 5, 0, 51105, 511, '1', NULL, '2021-03-09 12:46:56'),
(99, 'Repair  ', 5, 0, 51106, 511, '1', NULL, '2021-03-09 12:47:15'),
(100, 'Telephone, Fax and Postages / Stationery ', 5, 0, 51107, 511, '1', NULL, '2021-03-09 12:47:40'),
(101, 'Advertising and Publicity  ', 5, 0, 51108, 511, '1', NULL, '2021-03-09 12:48:02'),
(102, 'Tools and Small Parts  ', 5, 0, 51109, 511, '1', NULL, '2021-03-09 12:48:22'),
(103, 'Management Expenses  ', 5, 0, 51110, 511, '1', NULL, '2021-03-09 12:48:44'),
(104, 'Printing and Stationeries  ', 5, 0, 51111, 511, '1', NULL, '2021-03-09 12:49:23'),
(105, 'Entertainment  ', 5, 0, 51112, 511, '1', NULL, '2021-03-09 12:49:56'),
(106, 'Internal Audit/Consultancy  ', 5, 0, 51113, 511, '1', NULL, '2021-03-09 12:50:27'),
(107, 'External Audit Fees  ', 5, 0, 51114, 511, '1', NULL, '2021-03-09 12:50:52'),
(108, 'Admin Expenses  ', 5, 0, 51115, 511, '1', NULL, '2021-03-09 13:18:45'),
(109, 'Professional/Legal Fees  ', 5, 0, 51117, 511, '1', NULL, '2021-03-09 13:19:04'),
(110, 'Statutory Auditors Expenses  ', 5, 0, 51118, 511, '1', NULL, '2021-03-09 13:19:26'),
(111, 'Public Relations  ', 5, 0, 51119, 511, '1', NULL, '2021-03-09 13:19:44'),
(112, 'Facility/Mgt Charges for GTB  ', 5, 0, 51120, 511, '1', NULL, '2021-03-09 13:20:06'),
(113, 'Interent Facility  ', 5, 0, 51121, 511, '1', NULL, '2021-03-09 13:20:26'),
(114, 'Vehicles Maintenance  ', 5, 0, 51122, 511, '1', NULL, '2021-03-09 13:20:46'),
(115, 'Computer Accessories  ', 5, 0, 51123, 511, '1', NULL, '2021-03-09 13:21:05'),
(116, 'Insurance  ', 5, 0, 51124, 511, '1', NULL, '2021-03-09 13:21:24'),
(117, 'Diesel for Generating set  ', 5, 0, 51125, 511, '1', NULL, '2021-03-09 13:21:44'),
(118, 'Office Expenses  ', 5, 0, 51126, 511, '1', NULL, '2021-03-09 13:22:04'),
(119, 'Stationeries ', 5, 0, 51127, 511, '1', NULL, '2021-03-09 13:22:26'),
(120, 'Human Resource  ', 5, 0, 512, 5, '0', NULL, '2021-03-09 13:23:04'),
(121, 'Salary and Wages  ', 5, 0, 51201, 512, '1', NULL, '2021-03-09 13:23:25'),
(122, 'NHIS ', 5, 0, 51202, 512, '1', NULL, '2021-03-09 13:23:48'),
(123, 'Overtime  ', 5, 0, 51203, 512, '1', NULL, '2021-03-09 13:24:12'),
(124, 'Transport and Travelling  ', 5, 0, 51204, 512, '1', NULL, '2021-03-09 13:24:30'),
(125, 'Business trip  ', 5, 0, 51205, 512, '1', NULL, '2021-03-09 13:24:51'),
(126, 'Medical Expenses - HMO ', 5, 0, 51206, 512, '1', NULL, '2021-03-09 13:25:12'),
(127, 'Training and Development  ', 5, 0, 51207, 512, '1', NULL, '2021-03-09 13:25:39'),
(128, 'Housing Allowance  ', 5, 0, 51209, 512, '1', NULL, '2021-03-09 13:25:57'),
(129, 'Meal Subsidy  ', 5, 0, 51210, 512, '1', NULL, '2021-03-09 13:26:16'),
(130, 'Office Cleaning and Maintenance  ', 5, 0, 51211, 512, '1', NULL, '2021-03-09 13:26:35'),
(131, 'Salary Arrears  ', 5, 0, 51212, 512, '1', NULL, '2021-03-09 13:26:57'),
(132, 'Charity/ Condolence / Donation/ Gift ', 5, 0, 51213, 512, '1', NULL, '2021-03-09 13:27:16'),
(133, 'Staff Pensions (employers contribution)  ', 5, 0, 51214, 512, '1', NULL, '2021-03-09 13:27:34'),
(134, 'Transport Allowance  ', 5, 0, 51215, 512, '1', NULL, '2021-03-09 13:27:55'),
(135, 'Insurance premium  ', 5, 0, 51216, 512, '1', NULL, '2021-03-09 13:28:16'),
(136, 'Depreciation  ', 5, 0, 513, 5, '0', NULL, '2021-03-09 13:28:43'),
(137, 'Plant, Property & Equipment  ', 5, 0, 51301, 513, '1', NULL, '2021-03-09 13:29:12'),
(138, 'Furniture & Fixtures  ', 5, 0, 51302, 513, '1', NULL, '2021-03-09 13:29:29'),
(139, 'Vehicles  ', 5, 0, 51303, 513, '1', NULL, '2021-03-09 13:29:48'),
(140, 'Intangibles  ', 5, 0, 51304, 513, '1', NULL, '2021-03-09 13:30:15'),
(141, 'Computer  ', 5, 0, 51305, 513, '1', NULL, '2021-03-09 13:30:36'),
(142, 'Communication Equipment  ', 5, 0, 51306, 513, '1', NULL, '2021-03-09 13:30:54'),
(143, 'Computerization (Hardware/Software) ', 5, 0, 51307, 513, '1', NULL, '2021-03-09 13:31:13'),
(144, 'Office Equipment  ', 5, 0, 51308, 513, '1', NULL, '2021-03-09 13:31:32'),
(145, 'Finance Cost  ', 5, 0, 514, 5, '0', NULL, '2021-03-09 13:31:59'),
(146, 'Interest on Bank loans  ', 5, 0, 51401, 514, '1', NULL, '2021-03-09 13:32:20'),
(147, 'Bank Charges  ', 5, 0, 51402, 514, '1', NULL, '2021-03-09 13:32:40'),
(148, 'Penalty  ', 5, 0, 51403, 514, '1', NULL, '2021-03-09 13:33:00'),
(149, 'PREPAYMENT- MGT/PROC. FEE ', 5, 0, 51404, 514, '1', NULL, '2021-03-09 13:33:18'),
(150, 'Other Expenses  ', 5, 0, 515, 5, '0', NULL, '2021-03-09 13:33:52'),
(151, 'Legal fee  ', 5, 0, 51501, 515, '1', NULL, '2021-03-09 13:34:13'),
(152, 'Bonus ', 5, 0, 51502, 515, '1', NULL, '2021-03-09 13:34:31'),
(153, 'Extension Charges on Term Loan ', 5, 0, 51503, 515, '1', NULL, '2021-03-09 13:34:51'),
(154, '2014 XMAS Gift ', 5, 0, 51504, 515, '1', NULL, '2021-03-09 13:35:10'),
(155, 'Donation Paid ', 5, 0, 51505, 515, '1', NULL, '2021-03-09 13:35:28'),
(156, 'Book Keepers Fee ', 5, 0, 51506, 515, '1', NULL, '2021-03-09 13:35:48'),
(157, 'Seminar ', 5, 0, 51507, 515, '1', NULL, '2021-03-09 13:36:06'),
(158, 'Renovation ', 5, 0, 51508, 515, '1', NULL, '2021-03-09 13:36:25'),
(159, 'AGM Expenses ', 5, 0, 51509, 515, '1', NULL, '2021-03-09 13:36:47'),
(160, 'COOP MANOR PROJECT ', 5, 0, 51510, 515, '1', NULL, '2021-03-09 13:37:07'),
(161, 'Termination of Target Savings ', 5, 0, 51511, 5, '1', NULL, '2021-03-09 13:37:31'),
(162, 'STAFF PAYE (TAX) ', 5, 0, 51512, 5, '1', NULL, '2021-03-09 13:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `contribution_type`
--

CREATE TABLE `contribution_type` (
  `contribution_type_id` int(11) NOT NULL,
  `contribution_type_name` text NOT NULL,
  `contribution_type_regular` int(11) DEFAULT NULL,
  `contribution_type_glcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contribution_type`
--

INSERT INTO `contribution_type` (`contribution_type_id`, `contribution_type_name`, `contribution_type_regular`, `contribution_type_glcode`) VALUES
(1, 'Regular Savings', 1, '21114'),
(3, 'Target Savings', NULL, '21121'),
(4, 'Share Capital', NULL, '21115'),
(5, 'Save for Rent', NULL, '21114');

-- --------------------------------------------------------

--
-- Table structure for table `cooperators`
--

CREATE TABLE `cooperators` (
  `cooperator_id` int(11) NOT NULL,
  `cooperator_application_id` int(11) NOT NULL,
  `cooperator_staff_id` text NOT NULL,
  `cooperator_username` text DEFAULT NULL,
  `cooperator_password` text DEFAULT NULL,
  `cooperator_first_name` text NOT NULL,
  `cooperator_last_name` text NOT NULL,
  `cooperator_other_name` text DEFAULT NULL,
  `cooperator_gender` text NOT NULL,
  `cooperator_department_id` text NOT NULL,
  `cooperator_location_id` text NOT NULL,
  `cooperator_payroll_group_id` text NOT NULL,
  `cooperator_dob` text NOT NULL,
  `cooperator_email` text NOT NULL,
  `cooperator_address` text NOT NULL,
  `cooperator_city` text NOT NULL,
  `cooperator_state_id` text NOT NULL,
  `cooperator_telephone` text NOT NULL,
  `cooperator_kin_fullname` text DEFAULT NULL,
  `cooperator_kin_address` text DEFAULT NULL,
  `cooperator_kin_email` text DEFAULT NULL,
  `cooperator_kin_phone` text DEFAULT NULL,
  `cooperator_kin_relationship` text DEFAULT NULL,
  `cooperator_bank_id` int(11) NOT NULL,
  `cooperator_account_number` text NOT NULL,
  `cooperator_bank_branch` text NOT NULL,
  `cooperator_sort_code` text NOT NULL,
  `cooperator_date` date NOT NULL,
  `cooperator_savings` double NOT NULL,
  `cooperator_verify_by` text NOT NULL,
  `cooperator_verify_date` date NOT NULL,
  `cooperator_verify_comment` text DEFAULT NULL,
  `cooperator_approved_by` text NOT NULL,
  `cooperator_approved_date` date NOT NULL,
  `cooperator_approved_comment` text DEFAULT NULL,
  `cooperator_discarded_by` text NOT NULL,
  `cooperator_discarded_date` date NOT NULL,
  `cooperator_discarded_reason` text NOT NULL,
  `cooperator_status` int(11) NOT NULL COMMENT '0 == frozen\r\n\r\n2 == active\r\n\r\n3 == closed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cooperators`
--

INSERT INTO `cooperators` (`cooperator_id`, `cooperator_application_id`, `cooperator_staff_id`, `cooperator_username`, `cooperator_password`, `cooperator_first_name`, `cooperator_last_name`, `cooperator_other_name`, `cooperator_gender`, `cooperator_department_id`, `cooperator_location_id`, `cooperator_payroll_group_id`, `cooperator_dob`, `cooperator_email`, `cooperator_address`, `cooperator_city`, `cooperator_state_id`, `cooperator_telephone`, `cooperator_kin_fullname`, `cooperator_kin_address`, `cooperator_kin_email`, `cooperator_kin_phone`, `cooperator_kin_relationship`, `cooperator_bank_id`, `cooperator_account_number`, `cooperator_bank_branch`, `cooperator_sort_code`, `cooperator_date`, `cooperator_savings`, `cooperator_verify_by`, `cooperator_verify_date`, `cooperator_verify_comment`, `cooperator_approved_by`, `cooperator_approved_date`, `cooperator_approved_comment`, `cooperator_discarded_by`, `cooperator_discarded_date`, `cooperator_discarded_reason`, `cooperator_status`) VALUES
(1, 1, '12345', NULL, '$2y$10$eWOEcmAxtEP0MuQXLpYGGeAUWW8lFALkaJ0R5BIYwFHMDLcoXnbsC', 'Oki-Peter', 'Ejiroghene', '', 'male', '1', '1', '1', '2020-12-16', 'peterejiro@outlook.com', '12', 'abuja', '38', '08134395652', 'atakpor sylvia', '12', 'peterejiro96@gmail.com', '08134395652', NULL, 1, '0150176481', 'benin', '64532165132', '2020-12-18', 5000, 'administrator administrator', '2020-12-21', '', 'administrator administrator', '2020-12-21', 'ok', '', '0000-00-00', '', 2),
(2, 3, 'cs006', NULL, '$2y$10$84qMzIr8Y/gPvBo8fjiyK.07jiWnInA49Yi6OodJfWDUgPNwaUMY.', '', 'Oki', 'Tega', 'male', '1', '1', '1', '1996-06-16', 'masonoki@yahoo.com', 'test', 'benin', '12', '08033553752', 'peterejiro96@gmail.com', 'test', NULL, '08090945451', 'sibling', 1, '0818682885', 'benin', '456', '2021-01-26', 500000, 'administrator administrator', '2021-03-12', '', 'administrator administrator', '2021-03-12', '', '', '0000-00-00', '', 2),
(4, 5, 'eng1303449', NULL, '$2y$10$S8dOSkpm/WOmlsSvd0Aoeu4MOD2QwldkpUwNEF5YWoQnZOFYjBN16', 'Jason', 'Jason', 'Jason', 'male', '1', '1', '1', '1996-06-16', 'jason.j@gmail.com', 'kbwa', 'Kubwa', '15', '0899999999', 'jason.j', 'Kubwa', 'jason.j@gmail.com', '', 'sibling', 2, '2191339190', 'uselu', '01888888888', '2021-07-12', 100000, 'administrator administrator', '2021-07-12', 'ok', 'administrator administrator', '2021-07-12', 'ok', '', '0000-00-00', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `coop_banks`
--

CREATE TABLE `coop_banks` (
  `coop_bank_id` int(11) NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `branch` varchar(50) DEFAULT 'No branch',
  `account_no` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `glcode` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coop_banks`
--

INSERT INTO `coop_banks` (`coop_bank_id`, `bank_id`, `branch`, `account_no`, `description`, `glcode`, `created_at`) VALUES
(1, 1, 'Sit molestiae labore', '090877809', 'Voluptatem id vel ut', 110111001, NULL),
(2, 1, 'Asokoro', '5643435679', 'GT Current Bank', 110111003, NULL),
(3, 1, 'Asokoro', '0028451665', 'Savings account', 303, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_receivables`
--

CREATE TABLE `customer_receivables` (
  `customer_receivable_id` int(11) NOT NULL,
  `cr_transaction_date` datetime DEFAULT NULL,
  `cr_coop_bank_id` int(11) DEFAULT NULL,
  `cr_amount` double DEFAULT 0,
  `cr_purpose` text DEFAULT NULL,
  `cr_gl_cr` int(11) DEFAULT NULL,
  `cr_customer_setup_id` int(11) DEFAULT NULL,
  `cr_verify` int(11) DEFAULT 0 COMMENT '1=verified,0=unverified',
  `cr_approve` int(11) DEFAULT 0 COMMENT '1=approved,0=not approved',
  `cr_approved_by` text DEFAULT NULL,
  `cr_verified_by` text DEFAULT NULL,
  `cr_date_verified` datetime DEFAULT NULL,
  `cr_date_approved` datetime DEFAULT NULL,
  `cr_approve_comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_receivables`
--

INSERT INTO `customer_receivables` (`customer_receivable_id`, `cr_transaction_date`, `cr_coop_bank_id`, `cr_amount`, `cr_purpose`, `cr_gl_cr`, `cr_customer_setup_id`, `cr_verify`, `cr_approve`, `cr_approved_by`, `cr_verified_by`, `cr_date_verified`, `cr_date_approved`, `cr_approve_comment`) VALUES
(1, '2021-03-04 00:00:00', 1, 12000, 'pur', 10101, 1, 1, 1, 'Joseph', 'Joseph', NULL, NULL, NULL),
(2, '2021-07-14 00:00:00', 1, 5000000000, 'Salary for july', NULL, 2, 1, 1, '2', '2', NULL, '2021-07-14 13:15:49', NULL),
(3, '2021-08-02 00:00:00', 1, 4500000, 'batch ', NULL, 2, 1, 1, '2', '2', NULL, '2021-08-02 12:41:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_setups`
--

CREATE TABLE `customer_setups` (
  `customer_setup_id` int(11) NOT NULL,
  `customer_name` text DEFAULT NULL,
  `contact_person` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone_no` text DEFAULT NULL,
  `gl_account_code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_setups`
--

INSERT INTO `customer_setups` (`customer_setup_id`, `customer_name`, `contact_person`, `email`, `phone_no`, `gl_account_code`) VALUES
(1, 'Test', 'Person', 'ten@gmam.com', '928282', '10101'),
(2, 'Payroll', 'Payroll Officer', 'payro@p.com', '080999999', '1101601');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` bigint(20) NOT NULL,
  `department_name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `created_at`) VALUES
(1, 'Information Technology', '2020-12-14 01:42:37'),
(2, 'Human Resource', '2020-12-14 01:42:48'),
(3, 'Marketing', '2020-12-14 01:42:56'),
(4, 'Account', '2020-12-14 01:43:10'),
(5, 'Administration', '2020-12-14 01:43:19'),
(6, 'Software Development', '2020-12-17 10:32:46'),
(7, 'Business Development', '2020-12-17 10:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `entry_payment_details`
--

CREATE TABLE `entry_payment_details` (
  `entry_payment_d_detail_id` int(11) NOT NULL,
  `entry_payment_d_master_id` int(11) DEFAULT NULL,
  `entry_payment_d_payee_bank` int(11) DEFAULT NULL,
  `entry_payment_d_payee_name` text DEFAULT NULL,
  `entry_payment_d_amount` double DEFAULT 0,
  `entry_payment_d_bank_name` text DEFAULT NULL,
  `entry_payment_d_account_no` text DEFAULT NULL,
  `entry_payment_d_reference_no` text DEFAULT NULL,
  `entry_payment_d_gl_account_no` int(11) DEFAULT NULL,
  `third_party_payment_entry_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entry_payment_details`
--

INSERT INTO `entry_payment_details` (`entry_payment_d_detail_id`, `entry_payment_d_master_id`, `entry_payment_d_payee_bank`, `entry_payment_d_payee_name`, `entry_payment_d_amount`, `entry_payment_d_bank_name`, `entry_payment_d_account_no`, `entry_payment_d_reference_no`, `entry_payment_d_gl_account_no`, `third_party_payment_entry_id`) VALUES
(7, 3, 2, 'Ejiroghene', 100000, 'Zenith Bank', '2198889669', 'po/4589', 1101001, 4),
(8, 3, 1, 'Oki-Peter', 50000, 'Guaranty Trust Bank', '0150176481', 'paymen/09/12', 1101301, 3),
(9, 3, 2, 'Oki-Peter', 5000000, 'Zenith Bank', '0150176481', 'payment/07/21', 21016, 2);

-- --------------------------------------------------------

--
-- Table structure for table `entry_payment_masters`
--

CREATE TABLE `entry_payment_masters` (
  `entry_payment_master_id` int(11) NOT NULL,
  `entry_payment_bank_id` int(11) DEFAULT NULL,
  `entry_payment_payable_date` datetime DEFAULT NULL,
  `entry_payment_cheque_no` text DEFAULT NULL,
  `entry_payment_verified` int(11) DEFAULT 0 COMMENT '0=unverified,1=verified',
  `entry_payment_amount` double DEFAULT 0,
  `entry_payment_verified_by` text DEFAULT NULL,
  `entry_payment_approved` int(11) DEFAULT 0 COMMENT '0=not approved, 1=approved',
  `entry_payment_date_verified` date DEFAULT NULL,
  `entry_payment_approved_by` text DEFAULT NULL,
  `entry_payment_approved_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entry_payment_masters`
--

INSERT INTO `entry_payment_masters` (`entry_payment_master_id`, `entry_payment_bank_id`, `entry_payment_payable_date`, `entry_payment_cheque_no`, `entry_payment_verified`, `entry_payment_amount`, `entry_payment_verified_by`, `entry_payment_approved`, `entry_payment_date_verified`, `entry_payment_approved_by`, `entry_payment_approved_date`) VALUES
(3, 1, '2021-07-15 00:00:00', 'coa/09/123', 1, 5150000, '2', 1, NULL, 'administrator', '2021-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `exceptions`
--

CREATE TABLE `exceptions` (
  `exception_id` int(11) NOT NULL,
  `exception_staff_id` text NOT NULL,
  `exception_transaction_date` date NOT NULL,
  `exception_amount` text NOT NULL,
  `exception_ref_code` text NOT NULL,
  `exception_staff_name` text DEFAULT NULL,
  `exception_reason` text NOT NULL,
  `exception_month` int(11) NOT NULL,
  `exception_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exceptions`
--

INSERT INTO `exceptions` (`exception_id`, `exception_staff_id`, `exception_transaction_date`, `exception_amount`, `exception_ref_code`, `exception_staff_name`, `exception_reason`, `exception_month`, `exception_year`) VALUES
(1, 'css00077', '2021-08-02', '159000', '1627901977', 'kyl', 'Member does not exist', 8, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `gls`
--

CREATE TABLE `gls` (
  `gl_id` int(11) NOT NULL,
  `glcode` int(11) NOT NULL,
  `posted_by` text NOT NULL,
  `narration` text NOT NULL,
  `gl_description` text NOT NULL,
  `gl_transaction_date` date DEFAULT NULL,
  `dr_amount` double NOT NULL DEFAULT 0,
  `cr_amount` double NOT NULL DEFAULT 0,
  `ref_no` text DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `ob` double NOT NULL DEFAULT 0,
  `created_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gls`
--

INSERT INTO `gls` (`gl_id`, `glcode`, `posted_by`, `narration`, `gl_description`, `gl_transaction_date`, `dr_amount`, `cr_amount`, `ref_no`, `bank`, `ob`, `created_at`) VALUES
(1, 21114, 'administrator', 'Regular Savings for May', 'Staff id:eng1303449, Staff Name: Jason Contribution Type:Regular Savings', '2021-07-12', 0, 1500000, '1626093975', 0, 0, '2021-07-12'),
(2, 1101601, 'administrator', 'Regular Savings for May', 'Staff id:eng1303449, Staff Name: Jason Contribution Type:Regular Savings', '2021-07-12', 1500000, 0, '1626093975', 0, 0, '2021-07-12'),
(3, 21114, 'administrator', 'Regular Savings for May', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-07-12', 0, 1500000, '1626093975', 0, 0, '2021-07-12'),
(4, 1101601, 'administrator', 'Regular Savings for May', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-07-12', 1500000, 0, '1626093975', 0, 0, '2021-07-12'),
(5, 21114, 'administrator', 'Regular Savings for May', 'Staff id:cs006, Staff Name: Oki Contribution Type:Regular Savings', '2021-07-12', 0, 1500000, '1626093975', 0, 0, '2021-07-12'),
(6, 1101601, 'administrator', 'Regular Savings for May', 'Staff id:cs006, Staff Name: Oki Contribution Type:Regular Savings', '2021-07-12', 1500000, 0, '1626093975', 0, 0, '2021-07-12'),
(7, 21121, 'administrator', 'Target Savings for May', 'Staff id:eng1303449, Staff Name: Jason Contribution Type:Target Savings', '2021-07-12', 0, 1500000, '1626093998', 0, 0, '2021-07-12'),
(8, 1101601, 'administrator', 'Target Savings for May', 'Staff id:eng1303449, Staff Name: Jason Contribution Type:Target Savings', '2021-07-12', 1500000, 0, '1626093998', 0, 0, '2021-07-12'),
(9, 21121, 'administrator', 'Target Savings for May', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Target Savings', '2021-07-12', 0, 1500000, '1626093998', 0, 0, '2021-07-12'),
(10, 1101601, 'administrator', 'Target Savings for May', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Target Savings', '2021-07-12', 1500000, 0, '1626093998', 0, 0, '2021-07-12'),
(11, 21121, 'administrator', 'Target Savings for May', 'Staff id:cs006, Staff Name: Oki Contribution Type:Target Savings', '2021-07-12', 0, 1500000, '1626093998', 0, 0, '2021-07-12'),
(12, 1101601, 'administrator', 'Target Savings for May', 'Staff id:cs006, Staff Name: Oki Contribution Type:Target Savings', '2021-07-12', 1500000, 0, '1626093998', 0, 0, '2021-07-12'),
(13, 21114, 'administrator', 'Regular Savings for June', 'Staff id:eng1303449, Staff Name: Jason Contribution Type:Regular Savings', '2021-07-12', 0, 1500000, '1626094025', 0, 0, '2021-07-12'),
(14, 1101601, 'administrator', 'Regular Savings for June', 'Staff id:eng1303449, Staff Name: Jason Contribution Type:Regular Savings', '2021-07-12', 1500000, 0, '1626094025', 0, 0, '2021-07-12'),
(15, 21114, 'administrator', 'Regular Savings for June', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-07-12', 0, 1500000, '1626094025', 0, 0, '2021-07-12'),
(16, 1101601, 'administrator', 'Regular Savings for June', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-07-12', 1500000, 0, '1626094025', 0, 0, '2021-07-12'),
(17, 21114, 'administrator', 'Regular Savings for June', 'Staff id:cs006, Staff Name: Oki Contribution Type:Regular Savings', '2021-07-12', 0, 1500000, '1626094025', 0, 0, '2021-07-12'),
(18, 1101601, 'administrator', 'Regular Savings for June', 'Staff id:cs006, Staff Name: Oki Contribution Type:Regular Savings', '2021-07-12', 1500000, 0, '1626094025', 0, 0, '2021-07-12'),
(19, 21121, 'administrator', 'Target Savings for June', 'Staff id:eng1303449, Staff Name: Jason Contribution Type:Target Savings', '2021-07-12', 0, 1500000, '1626094048', 0, 0, '2021-07-12'),
(20, 1101601, 'administrator', 'Target Savings for June', 'Staff id:eng1303449, Staff Name: Jason Contribution Type:Target Savings', '2021-07-12', 1500000, 0, '1626094048', 0, 0, '2021-07-12'),
(21, 21121, 'administrator', 'Target Savings for June', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Target Savings', '2021-07-12', 0, 1500000, '1626094048', 0, 0, '2021-07-12'),
(22, 1101601, 'administrator', 'Target Savings for June', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Target Savings', '2021-07-12', 1500000, 0, '1626094048', 0, 0, '2021-07-12'),
(23, 21121, 'administrator', 'Target Savings for June', 'Staff id:cs006, Staff Name: Oki Contribution Type:Target Savings', '2021-07-12', 0, 1500000, '1626094048', 0, 0, '2021-07-12'),
(24, 1101601, 'administrator', 'Target Savings for June', 'Staff id:cs006, Staff Name: Oki Contribution Type:Target Savings', '2021-07-12', 1500000, 0, '1626094048', 0, 0, '2021-07-12'),
(45, 110111001, 'administrator', 'Cash Advancement disbursement', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Loan id:1', '2021-07-13', 0, 500000, '1626182873', 1, 0, '2021-07-13'),
(46, 1130303, 'administrator', 'Cash Advancement disbursement ', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Loan id:1', '2021-07-13', 517500, 0, '1626182873', 0, 0, '2021-07-13'),
(47, 21051, 'administrator', 'Cash Advancement disbursement', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Loan id:1', '2021-07-13', 0, 17500, '1626182873', 0, 0, '2021-07-13'),
(48, 110111001, 'administrator', 'Normal Loan disbursement', 'Staff id:eng1303449, Staff Name:Jason Jason Loan id:4', '2021-07-13', 0, 1800000, '1626182873', 1, 0, '2021-07-13'),
(49, 1130301, 'administrator', 'Normal Loan disbursement ', 'Staff id:eng1303449, Staff Name:Jason Jason Loan id:4', '2021-07-13', 1841400, 0, '1626182873', 0, 0, '2021-07-13'),
(50, 21049, 'administrator', 'Normal Loan disbursement', 'Staff id:eng1303449, Staff Name:Jason Jason Loan id:4', '2021-07-13', 0, 41400, '1626182873', 0, 0, '2021-07-13'),
(51, 21114, 'administrator', 'Withdrawal from Regular Savings', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-07-13', 500000, 0, '1626182873', 0, 0, '2021-07-13'),
(52, 21114, 'administrator', 'Charges on withdrawal from Regular Savings', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-07-13', 25000, 0, '1626182873', 0, 0, '2021-07-13'),
(53, 110111001, 'administrator', 'Withdrawal from Regular Savings', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-07-13', 0, 500000, '1626182873', 1, 0, '2021-07-13'),
(54, 41304, 'administrator', 'Charges on withdrawal from Regular Savings', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-07-13', 0, 25000, '1626182873', 0, 0, '2021-07-13'),
(55, 21114, 'administrator', 'Withdrawal from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-13', 500000, 0, '1626182873', 0, 0, '2021-07-13'),
(56, 21114, 'administrator', 'Charges on withdrawal from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-13', 25000, 0, '1626182873', 0, 0, '2021-07-13'),
(57, 110111001, 'administrator', 'Withdrawal from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-13', 0, 500000, '1626182873', 1, 0, '2021-07-13'),
(58, 41304, 'administrator', 'Charges on withdrawal from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-13', 0, 25000, '1626182873', 0, 0, '2021-07-13'),
(59, 110111001, 'administrator', 'External Receipt Payment', 'Staff id:eng1303449, Staff Name:Jason Jason', '2021-07-13', 100000, 0, '1626183902', 1, 0, '2021-07-13'),
(60, 21114, 'administrator', 'External receipt contribution', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution:Regular Savings', '2021-07-13', 0, 50000, '1626183902', 0, 0, '2021-07-13'),
(61, 1130301, 'administrator', 'Loan repayment from external receipt', 'Staff id:eng1303449, Staff Name:Jason Jason Loan id:4', '2021-07-13', 0, 50000, '1626183902', 0, 0, '2021-07-13'),
(62, 21114, 'administrator', 'Journal Transfer from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:1', '2021-07-13', 100000, 0, '1626184033', 0, 0, '2021-07-13'),
(63, 1130301, 'administrator', 'Loan repayment via journal transfer from: Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Loan Id:4', '2021-07-13', 0, 50000, '1626184033', 0, 0, '2021-07-13'),
(64, 21121, 'administrator', 'Contribution via journal transfer into Target Savingsfrom Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason', '2021-07-13', 0, 50000, '1626184033', 0, 0, '2021-07-13'),
(65, 21114, 'administrator', 'reconciliation -(Savings Reconciliation)', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-13', 0, 50000, '1626184209', 0, 0, '2021-07-13'),
(66, 110111003, 'administrator', 'reconciliation -(Savings Reconciliation)', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-13', 50000, 0, '1626184209', 1, 0, '2021-07-13'),
(67, 1130303, 'administrator', 'loan reconciliation -(Loans Reconciliation)', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Loan id:1', '2021-07-13', 50000, 0, '1626184307', 0, 0, '2021-07-13'),
(68, 110111003, 'administrator', 'loan reconciliation -(Loans Reconciliation)', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Loan id:1', '2021-07-13', 0, 50000, '1626184307', 1, 0, '2021-07-13'),
(69, 1101601, 'administrator', 'Loan repayment on Cash Advancement for July, 2021 loan id:1', 'Staff id:12345, Staff Name:Oki-Peter Loan id:1', '2021-07-14', 150000, 0, '1626185520', 0, 0, '2021-07-13'),
(70, 1130303, 'administrator', 'Loan repayment on Cash Advancement for July, 2021 loan id:1', 'Staff id:12345, Staff Name:Oki-Peter Loan id:1', '2021-07-14', 0, 150000, '1626185520', 0, 0, '2021-07-13'),
(71, 1101601, 'administrator', 'Loan repayment on Normal Loan for August, 2021 loan id:4', 'Staff id:eng1303449, Staff Name:Jason Loan id:4', '2021-07-14', 150000, 0, '1626185781', 0, 0, '2021-07-13'),
(72, 1130301, 'administrator', 'Loan repayment on Normal Loan for August, 2021 loan id:4', 'Staff id:eng1303449, Staff Name:Jason Loan id:4', '2021-07-14', 0, 150000, '1626185781', 0, 0, '2021-07-13'),
(75, 1111302, 'administrator', 'computer Pheripherals', 'journal voucher', '2021-07-13', 50000, 0, 'JV12', 0, 0, '2021-07-13 00:00:00'),
(76, 110111003, 'administrator', 'computer pheripherals', 'journal voucher', '2021-07-13', 0, 50000, 'JV12', 1, 0, '2021-07-13 00:00:00'),
(85, 21114, 'administrator', 'Withdrawal from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-13', 50000, 0, '1626189623', 0, 0, '2021-07-13'),
(86, 21114, 'administrator', 'Charges on withdrawal from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-13', 2500, 0, '1626189623', 0, 0, '2021-07-13'),
(87, 110111001, 'administrator', 'Withdrawal from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-13', 0, 50000, '1626189623', 1, 0, '2021-07-13'),
(88, 41304, 'administrator', 'Charges on withdrawal from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-13', 0, 2500, '1626189623', 0, 0, '2021-07-13'),
(89, 110111001, 'administrator', 'Third Party Receipt from Payroll', 'Third Party Receipt from Payroll', '2021-07-14', 5000000000, 0, '1626264949', 1, 0, '2021-07-14'),
(90, 1101601, 'administrator', 'Third Party Receipt from Payroll', 'Third Party Receipt from Payroll', '2021-07-14', 0, 5000000000, '1626264949', 0, 0, '2021-07-14'),
(91, 21114, 'administrator', 'Withdrawal from Regular Savings', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-07-14', 50000, 0, '1626266007', 0, 0, '2021-07-14'),
(92, 21114, 'administrator', 'Charges on withdrawal from Regular Savings', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-07-14', 2500, 0, '1626266007', 0, 0, '2021-07-14'),
(93, 110111001, 'administrator', 'Withdrawal from Regular Savings', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-07-14', 0, 50000, '1626266007', 1, 0, '2021-07-14'),
(94, 41304, 'administrator', 'Charges on withdrawal from Regular Savings', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-07-14', 0, 2500, '1626266007', 0, 0, '2021-07-14'),
(95, 21114, 'administrator', 'Withdrawal from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-14', 5000, 0, '1626266007', 0, 0, '2021-07-14'),
(96, 21114, 'administrator', 'Charges on withdrawal from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-14', 250, 0, '1626266007', 0, 0, '2021-07-14'),
(97, 110111001, 'administrator', 'Withdrawal from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-14', 0, 5000, '1626266007', 1, 0, '2021-07-14'),
(98, 41304, 'administrator', 'Charges on withdrawal from Regular Savings', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-07-14', 0, 250, '1626266007', 0, 0, '2021-07-14'),
(107, 1101001, 'administrator', 'Third party payment to: Ejiroghene', 'Third party payment to: Ejiroghene', '2021-07-15', 100000, 0, '1626357715', 0, 0, '2021-07-15 15:01:55'),
(108, 1101301, 'administrator', 'Third party payment to: Oki-Peter', 'Third party payment to: Oki-Peter', '2021-07-15', 50000, 0, '1626357715', 0, 0, '2021-07-15 15:01:55'),
(109, 21016, 'administrator', 'Third party payment to: Oki-Peter', 'Third party payment to: Oki-Peter', '2021-07-15', 5000000, 0, '1626357715', 0, 0, '2021-07-15 15:01:55'),
(110, 110111001, 'administrator', 'Third party payment to: Ejiroghene,Oki-Peter,Oki-Peter', 'Third party payment to: Ejiroghene,Oki-Peter,Oki-Peter', '2021-07-15', 0, 5150000, '1626357715', 1, 0, '2021-07-15 15:01:55'),
(111, 21114, 'administrator', 'savings for july', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-08-02', 0, 1500000, '1627901977', 0, 0, '2021-08-02'),
(112, 1101601, 'administrator', 'savings for july', 'Staff id:eng1303449, Staff Name:Jason Jason Contribution Type:Regular Savings', '2021-08-02', 1500000, 0, '1627901977', 0, 0, '2021-08-02'),
(113, 21114, 'administrator', 'savings for july', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-08-02', 0, 1500000, '1627901977', 0, 0, '2021-08-02'),
(114, 1101601, 'administrator', 'savings for july', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:Regular Savings', '2021-08-02', 1500000, 0, '1627901977', 0, 0, '2021-08-02'),
(115, 21114, 'administrator', 'savings for july', 'Staff id:cs006, Staff Name: Oki Contribution Type:Regular Savings', '2021-08-02', 0, 1500000, '1627901977', 0, 0, '2021-08-02'),
(116, 1101601, 'administrator', 'savings for july', 'Staff id:cs006, Staff Name: Oki Contribution Type:Regular Savings', '2021-08-02', 1500000, 0, '1627901977', 0, 0, '2021-08-02'),
(117, 110111001, 'administrator', 'Third Party Receipt from Payroll', 'Third Party Receipt from Payroll', '2021-08-02', 4500000, 0, '1627904482', 1, 0, '2021-08-02'),
(118, 1101601, 'administrator', 'Third Party Receipt from Payroll', 'Third Party Receipt from Payroll', '2021-08-02', 0, 4500000, '1627904482', 0, 0, '2021-08-02'),
(119, 110111003, 'administrator', 'External Receipt Payment', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene', '2021-09-28', 1000000, 0, '1632828697', 1, 0, '2021-09-28'),
(120, 21114, 'administrator', 'External receipt contribution', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution:Regular Savings', '2021-09-28', 0, 700000, '1632828697', 0, 0, '2021-09-28'),
(121, 1130303, 'administrator', 'Loan repayment from external receipt', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Loan id:1', '2021-09-28', 0, 300000, '1632828697', 0, 0, '2021-09-28'),
(122, 21114, 'administrator', 'Journal Transfer from Regular Savings', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Contribution Type:1', '2021-09-28', 50000, 0, '1632829024', 0, 0, '2021-09-28'),
(123, 1130303, 'administrator', 'Loan repayment via journal transfer from: Regular Savings', 'Staff id:12345, Staff Name:Oki-Peter Ejiroghene Loan Id:1', '2021-09-28', 0, 50000, '1632829024', 0, 0, '2021-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `interest_routines`
--

CREATE TABLE `interest_routines` (
  `ir_id` int(11) NOT NULL,
  `ir_month` text NOT NULL,
  `ir_year` text NOT NULL,
  `ir_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interest_routines`
--

INSERT INTO `interest_routines` (`ir_id`, `ir_month`, `ir_year`, `ir_date`) VALUES
(1, '7', '2021', '2021-07-15'),
(2, '7', '2021', '2021-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `journal_transfer_detail`
--

CREATE TABLE `journal_transfer_detail` (
  `jtd_id` int(11) NOT NULL,
  `jtd_jtm_id` text DEFAULT NULL,
  `jtd_amount` double DEFAULT NULL,
  `jtd_type` int(11) DEFAULT NULL,
  `jtd_target` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journal_transfer_detail`
--

INSERT INTO `journal_transfer_detail` (`jtd_id`, `jtd_jtm_id`, `jtd_amount`, `jtd_type`, `jtd_target`) VALUES
(1, '1', 50000, 1, 4),
(2, '1', 50000, 2, 3),
(3, '2', 50000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `journal_transfer_master`
--

CREATE TABLE `journal_transfer_master` (
  `jtm_id` int(11) NOT NULL,
  `jtm_staff_id` text DEFAULT NULL,
  `jtm_date` date DEFAULT NULL,
  `jtm_amount` double DEFAULT NULL,
  `jtm_payment_method` int(11) DEFAULT NULL,
  `jtm_status` int(11) DEFAULT NULL,
  `jtm_ct_id` int(11) DEFAULT NULL,
  `jtm_verify_comment` text DEFAULT NULL,
  `jtm_verify_by` text DEFAULT NULL,
  `jtm_verify_date` date DEFAULT NULL,
  `jtm_approve_comment` text DEFAULT NULL,
  `jtm_approve_by` text DEFAULT NULL,
  `jtm_approve_date` date DEFAULT NULL,
  `jtm_discard_comment` text DEFAULT NULL,
  `jtm_discard_by` text DEFAULT NULL,
  `jtm_discard_date` date DEFAULT NULL,
  `jtm_a_date` date DEFAULT NULL,
  `jtm_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journal_transfer_master`
--

INSERT INTO `journal_transfer_master` (`jtm_id`, `jtm_staff_id`, `jtm_date`, `jtm_amount`, `jtm_payment_method`, `jtm_status`, `jtm_ct_id`, `jtm_verify_comment`, `jtm_verify_by`, `jtm_verify_date`, `jtm_approve_comment`, `jtm_approve_by`, `jtm_approve_date`, `jtm_discard_comment`, `jtm_discard_by`, `jtm_discard_date`, `jtm_a_date`, `jtm_by`) VALUES
(1, 'eng1303449', '2021-07-13', 100000, NULL, 2, 1, '', 'administrator administrator', '2021-07-13', '', 'administrator administrator', '2021-07-13', NULL, NULL, NULL, '2021-07-13', 'administrator'),
(2, '12345', '2021-09-28', 50000, NULL, 2, 1, '', 'administrator administrator', '2021-09-28', '', 'administrator administrator', '2021-09-28', NULL, NULL, NULL, '2021-09-28', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `journal_vouchers`
--

CREATE TABLE `journal_vouchers` (
  `journal_id` int(11) NOT NULL,
  `glcode` int(11) NOT NULL,
  `entry_by` text NOT NULL,
  `narration` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `dr_amount` double NOT NULL DEFAULT 0,
  `cr_amount` double NOT NULL DEFAULT 0,
  `ref_no` text DEFAULT NULL,
  `jv_date` datetime DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `posted` int(11) NOT NULL DEFAULT 0,
  `posted_date` datetime DEFAULT NULL,
  `trash` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `trash_by` text DEFAULT NULL,
  `trash_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journal_vouchers`
--

INSERT INTO `journal_vouchers` (`journal_id`, `glcode`, `entry_by`, `narration`, `name`, `dr_amount`, `cr_amount`, `ref_no`, `jv_date`, `entry_date`, `posted`, `posted_date`, `trash`, `created_at`, `trash_by`, `trash_date`) VALUES
(1, 1111302, 'administrator', 'computer Pheripherals', '', 50000, 0, 'JV88', '2021-07-13 00:00:00', '2021-07-13 00:00:00', 1, '2021-07-13 15:18:27', 0, NULL, NULL, NULL),
(2, 110111003, 'administrator', 'computer pheripherals', '', 0, 50000, 'JV88', '2021-07-13 00:00:00', '2021-07-13 00:00:00', 1, '2021-07-13 15:18:27', 0, NULL, NULL, NULL),
(3, 1111302, 'administrator', 'computer Pheripherals', '', 50000, 0, 'JV12', '2021-07-13 00:00:00', '2021-07-13 00:00:00', 1, '2021-07-13 15:22:33', 0, NULL, NULL, NULL),
(4, 110111003, 'administrator', 'computer pheripherals', '', 0, 50000, 'JV12', '2021-07-13 00:00:00', '2021-07-13 00:00:00', 1, '2021-07-13 15:22:33', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `loan_id` int(11) NOT NULL,
  `staff_id` text DEFAULT NULL,
  `loan_app_id` int(11) DEFAULT NULL,
  `loan_type` int(20) DEFAULT NULL,
  `amount` double DEFAULT 0,
  `interest` double DEFAULT NULL,
  `interest_rate` double DEFAULT NULL,
  `disburse` int(5) NOT NULL DEFAULT 0 COMMENT '0=not, 1=yes',
  `disburse_date` date NOT NULL,
  `paid_back` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes',
  `cart` int(11) DEFAULT 0,
  `scheduled` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=not scheduled, 1=scheduled',
  `created_at` datetime DEFAULT NULL,
  `encumbrance_amount` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`loan_id`, `staff_id`, `loan_app_id`, `loan_type`, `amount`, `interest`, `interest_rate`, `disburse`, `disburse_date`, `paid_back`, `cart`, `scheduled`, `created_at`, `encumbrance_amount`) VALUES
(1, '12345', 1, 1, 500000, 17500, 3.5, 1, '2021-07-13', 0, 1, 1, '2021-07-12 15:42:50', 0),
(4, 'eng1303449', 2, 2, 1800000, 10, 2.3, 1, '2021-07-13', 0, 1, 1, '2021-07-12 16:13:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loan_applications`
--

CREATE TABLE `loan_applications` (
  `loan_app_id` int(11) NOT NULL,
  `staff_id` text DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `amount` double DEFAULT 0,
  `loan_terms` text DEFAULT NULL,
  `guarantor` int(11) DEFAULT NULL,
  `guarantor_2` int(191) DEFAULT NULL,
  `loan_type` int(191) DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL,
  `verify_date` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `verify` int(11) DEFAULT 0,
  `approve` int(11) DEFAULT 0,
  `applied_date` datetime DEFAULT NULL,
  `applied_by` int(11) DEFAULT NULL,
  `verify_comment` text DEFAULT NULL,
  `approve_comment` text DEFAULT NULL,
  `decline_comment` text DEFAULT NULL,
  `unverify_comment` text DEFAULT NULL,
  `encumbrance_amount` double DEFAULT 0,
  `attachment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_applications`
--

INSERT INTO `loan_applications` (`loan_app_id`, `staff_id`, `name`, `duration`, `amount`, `loan_terms`, `guarantor`, `guarantor_2`, `loan_type`, `verified_by`, `verify_date`, `approved_by`, `approve_date`, `verify`, `approve`, `applied_date`, `applied_by`, `verify_comment`, `approve_comment`, `decline_comment`, `unverify_comment`, `encumbrance_amount`, `attachment`) VALUES
(1, '12345', ' Oki-Peter Ejiroghene', 5, 500000, NULL, 0, 0, 1, 0, '2021-07-12 15:41:52', 0, '2021-07-12 15:42:50', 1, 1, '2021-07-12 15:37:13', 0, '', '', NULL, NULL, 0, '1626100633_8a0dc4233e84b88f19e6.pdf'),
(2, 'eng1303449', '  Jason', 3, 1800000, NULL, 12345, 0, 2, 0, '2021-07-12 15:56:50', 0, '2021-07-12 16:13:11', 1, 1, '2021-07-12 15:56:39', 0, '', '', NULL, NULL, 0, '1626101799_827a9cc6267fdbcbd351.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `loan_exceptions`
--

CREATE TABLE `loan_exceptions` (
  `loan_exception_id` int(11) NOT NULL,
  `loan_exception_staff_id` text NOT NULL,
  `loan_exception_staff_name` text DEFAULT NULL,
  `loan_exception_transaction_date` date NOT NULL,
  `loan_exception_month` text DEFAULT NULL,
  `loan_exception_year` text DEFAULT NULL,
  `loan_exception_amount` text NOT NULL,
  `loan_exception_ref_code` text NOT NULL,
  `loan_exception_reason` text NOT NULL,
  `loan_exception_loan_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_exceptions`
--

INSERT INTO `loan_exceptions` (`loan_exception_id`, `loan_exception_staff_id`, `loan_exception_staff_name`, `loan_exception_transaction_date`, `loan_exception_month`, `loan_exception_year`, `loan_exception_amount`, `loan_exception_ref_code`, `loan_exception_reason`, `loan_exception_loan_type`) VALUES
(1, 'abcd', 'James Peter', '2021-02-16', '1', '2021', '6000', '1613471950', 'Member does not exist', '1'),
(2, '1234', 'oki-peter', '2021-02-16', '1', '2021', '6000', '1613471950', 'Member does not exist', '1'),
(3, '12546', 'oki-peter', '2021-02-16', '1', '2021', '8000', '1613471950', 'Member does not exist', '1'),
(4, 'abcd', 'James Peter', '2021-02-17', '1', '2021', '6000', '1613471982', 'Member does not exist', '2'),
(5, '1234', 'oki-peter', '2021-02-17', '1', '2021', '6000', '1613471982', 'Member does not exist', '2'),
(6, '12546', 'oki-peter', '2021-02-17', '1', '2021', '8000', '1613471982', 'Member does not exist', '2'),
(7, '12345', 'oki-peter', '2021-02-17', '1', '2021', '5000', '1613471982', 'Member does not have existing load', '2'),
(8, 'abcd', 'James Peter', '2021-03-01', '3', '2021', '6000', '1615371215', 'Member does not exist', '1'),
(9, '1234', 'oki-peter', '2021-03-01', '3', '2021', '6000', '1615371215', 'Member does not exist', '1'),
(10, '12546', 'oki-peter', '2021-03-01', '3', '2021', '8000', '1615371215', 'Member does not exist', '1');

-- --------------------------------------------------------

--
-- Table structure for table `loan_guarantors`
--

CREATE TABLE `loan_guarantors` (
  `loan_guarantor_id` int(11) NOT NULL,
  `loan_application_id` int(11) NOT NULL,
  `guarantor_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `confirm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_guarantors`
--

INSERT INTO `loan_guarantors` (`loan_guarantor_id`, `loan_application_id`, `guarantor_id`, `staff_id`, `confirm`) VALUES
(1, 9, 12345, 12345, 0),
(2, 9, 12345, 12345, 0),
(3, 10, 12345, 12345, 2),
(4, 10, 12345, 12345, 1),
(5, 11, 12345, 12345, 0),
(6, 11, 0, 12345, 0),
(7, 12, 12345, 12345, 0),
(8, 12, 0, 12345, 0),
(9, 13, 0, 12345, 0),
(10, 13, 0, 12345, 0),
(11, 5, 12345, 12345, 2),
(12, 5, 12345, 12345, 1),
(13, 8, 12345, 12345, 2),
(14, 8, 12345, 12345, 0),
(15, 9, 12345, 12345, 2),
(16, 9, 12345, 12345, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_repayments`
--

CREATE TABLE `loan_repayments` (
  `lr_id` int(11) NOT NULL,
  `lr_loan_id` int(11) NOT NULL,
  `lr_month` text NOT NULL,
  `lr_year` text NOT NULL,
  `lr_amount` double NOT NULL,
  `lr_narration` text NOT NULL,
  `lr_dctype` int(11) NOT NULL,
  `lr_ref` text NOT NULL,
  `lr_mi` double NOT NULL,
  `lr_mpr` double NOT NULL,
  `lr_interest` int(11) NOT NULL,
  `lr_interest_rate` double DEFAULT NULL,
  `lr_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_repayments`
--

INSERT INTO `loan_repayments` (`lr_id`, `lr_loan_id`, `lr_month`, `lr_year`, `lr_amount`, `lr_narration`, `lr_dctype`, `lr_ref`, `lr_mi`, `lr_mpr`, `lr_interest`, `lr_interest_rate`, `lr_date`) VALUES
(1, 1, '07', '2021', 17500, 'Interest on loan', 2, '1626182873', 0, 0, 1, NULL, '2021-07-13 14:27:53'),
(2, 4, '07', '2021', 41400, 'Interest on loan', 2, '1626182873', 0, 0, 1, NULL, '2021-07-13 14:27:53'),
(3, 4, '7', '2021', 50000, 'Loan repayment from external receipt', 1, '1626183902', 41400, 8600, 0, NULL, '2021-07-13'),
(4, 4, '7', '2021', 50000, 'Loan repayment from journal transfer', 1, '1626184033', 0, 50000, 0, NULL, '2021-07-13'),
(5, 1, '7', '2021', 50000, 'loan reconciliation -(Loans Reconciliation)', 2, '1626184307', 0, 0, 0, 3.5, '2021-07-13'),
(6, 1, '7', '2021', 150000, 'Loan repayment on Cash Advancement for July, 2021', 1, '1626185520', 17500, 132500, 0, NULL, '2021-07-14'),
(7, 4, '8', '2021', 150000, 'Loan repayment on Normal Loan for August, 2021', 1, '1626185781', 0, 150000, 0, NULL, '2021-07-14'),
(8, 1, '9', '2021', 300000, 'Loan repayment from external receipt', 1, '1632828697', 0, 300000, 0, NULL, '2021-09-28'),
(9, 1, '9', '2021', 50000, 'Loan repayment from journal transfer', 1, '1632829024', 0, 50000, 0, NULL, '2021-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `loan_setups`
--

CREATE TABLE `loan_setups` (
  `loan_setup_id` int(11) NOT NULL,
  `loan_description` text DEFAULT NULL,
  `age_qualification` int(11) DEFAULT 1,
  `psr` int(11) DEFAULT 0 COMMENT '0=no,1=yes',
  `psr_value` double DEFAULT 0,
  `min_credit_limit` double DEFAULT 0,
  `max_credit_limit` double DEFAULT 0,
  `max_repayment_periods` int(11) DEFAULT 1,
  `ls_interest_rate` text DEFAULT NULL,
  `interest_method` int(11) DEFAULT NULL COMMENT '1=Upfront, 2=reducing balance, 3=targetted',
  `interest_charge_type` tinyint(4) DEFAULT 1 COMMENT '1=flat,2=monthly,3=yearly',
  `commitment` int(11) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes',
  `commitment_value` double NOT NULL DEFAULT 0,
  `loan_gl_account_no` int(11) DEFAULT NULL,
  `loan_unearned_int_gl_account_no` int(11) DEFAULT NULL,
  `loan_int_income_gl_account_no` int(11) DEFAULT NULL,
  `loan_terms` text DEFAULT NULL,
  `status` int(5) NOT NULL DEFAULT 0 COMMENT '0=blocked, 1=active',
  `payable` int(5) NOT NULL DEFAULT 1 COMMENT '1=cash, 2=vendor',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_setups`
--

INSERT INTO `loan_setups` (`loan_setup_id`, `loan_description`, `age_qualification`, `psr`, `psr_value`, `min_credit_limit`, `max_credit_limit`, `max_repayment_periods`, `ls_interest_rate`, `interest_method`, `interest_charge_type`, `commitment`, `commitment_value`, `loan_gl_account_no`, `loan_unearned_int_gl_account_no`, `loan_int_income_gl_account_no`, `loan_terms`, `status`, `payable`, `created_date`) VALUES
(1, 'Cash Advancement', 1, 0, 0, 150000, 500000, 6, '3.5', 1, 1, 0, 0, 1130303, 21051, 41309, 'Loan setup for premium members only', 1, 1, NULL),
(2, 'Normal Loan', 1, 0, 0, 1500000, 2000000, 3, '2.3', 1, 1, 0, 0, 1130301, 21049, 41310, 'Terms and conditions apply', 1, 2, NULL),
(3, 'Tear Rubber (Car Loan)', 1, 1, 10, 1000000, 40000000, 12, '10', 1, 1, 0, 0, 1130302, 21050, 41308, 'You must have money', 1, 1, NULL),
(4, 'Festival', 13, 0, 0, 500000, 3000000, 12, '10', 2, 1, 0, 0, 1130301, 21049, 41302, '', 1, 1, NULL),
(6, 'Electronics loan', 5, 0, 0, 1500000, 10000000, 12, '10', 3, 1, 0, 0, 1130301, 21049, 41310, 'Must be a member for 5 months', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `location_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`) VALUES
(1, 'Maitama, Abuja'),
(2, 'Ikeja, Lagos'),
(3, 'AsAokoro, Abuja'),
(4, 'Garki, Abuja');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `mail_id` int(11) NOT NULL,
  `subject` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `sent_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`mail_id`, `subject`, `body`, `sent_by`, `created_at`) VALUES
(1, 'Content creation', 'Our company is currently in need of content creators. Interested persons should contact us via hr@connexxiongroup.com', 1, '2021-01-20 14:58:24'),
(2, 'Media house', 'Get the media house', 1, '2021-01-20 15:39:43'),
(3, '20th January, 2021', 'US inauguration day. The end of an era and the beginning of another!', 1, '2021-01-20 15:44:53'),
(4, 'Test mail', 'Check this out ASAP', 1, '2021-01-25 09:42:07'),
(5, 'Subject hello', 'Interest commission goes here...', 1, '2021-01-25 10:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `mail_receivers`
--

CREATE TABLE `mail_receivers` (
  `mail_receiver_id` int(11) NOT NULL,
  `mail_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mail_receivers`
--

INSERT INTO `mail_receivers` (`mail_receiver_id`, `mail_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-16-123931', 'App\\Database\\Migrations\\Applications', 'default', 'App', 1608124952, 1),
(2, '2020-12-16-132741', 'App\\Database\\Migrations\\Applications', 'default', 'App', 1608125327, 2),
(3, '2020-12-16-155416', 'App\\Database\\Migrations\\Applications', 'default', 'App', 1608134241, 3),
(4, '2020-12-16-164020', 'App\\Database\\Migrations\\Applications', 'default', 'App', 1608136927, 4),
(5, '2020-12-17-142848', 'App\\Database\\Migrations\\Applicationsupdatekinrelationship', 'default', 'App', 1608215384, 5),
(6, '2020-12-17-161713', 'App\\Database\\Migrations\\Bank', 'default', 'App', 1608222063, 6),
(7, '2020-12-17-161840', 'App\\Database\\Migrations\\Payrollgroup', 'default', 'App', 1608222063, 6),
(8, '2020-12-17-163348', 'App\\Database\\Migrations\\Location', 'default', 'App', 1608222898, 7),
(9, '2020-12-18-072816', 'App\\Database\\Migrations\\ApplicationDateCreated', 'default', 'App', 1608276913, 8),
(10, '2020-12-18-073548', 'App\\Database\\Migrations\\ApplicationDateCreatedupdate', 'default', 'App', 1608277033, 9),
(11, '2020-12-18-123929', 'App\\Database\\Migrations\\ApplicationSavings', 'default', 'App', 1608299621, 10),
(12, '2020-12-18-151946', 'App\\Database\\Migrations\\ApplicationDateVerifyComment', 'default', 'App', 1608304838, 11),
(13, '2020-12-21-083257', 'App\\Database\\Migrations\\Cooperators', 'default', 'App', 1608539949, 12),
(14, '2020-12-21-084738', 'App\\Database\\Migrations\\Cooperatorsusername', 'default', 'App', 1608540677, 13),
(15, '2020-12-22-083124', 'App\\Database\\Migrations\\Contributiontype', 'default', 'App', 1608635463, 14),
(16, '2020-12-22-083143', 'App\\Database\\Migrations\\Contributionpp', 'default', 'App', 1608635464, 14),
(17, '2020-12-22-111809', 'App\\Database\\Migrations\\Paymentsupdate', 'default', 'App', 1608636041, 15),
(18, '2020-12-30-100153', 'App\\Database\\Migrations\\CreateCoasTable', 'default', 'App', 1610366383, 16),
(19, '2020-12-30-101732', 'App\\Database\\Migrations\\CreateGlsTable', 'default', 'App', 1610366383, 16),
(20, '2020-12-31-074748', 'App\\Database\\Migrations\\CreateJournalVouchersTable', 'default', 'App', 1610366383, 16),
(21, '2020-12-31-125830', 'App\\Database\\Migrations\\CreatePolicyConfigsTable', 'default', 'App', 1610366384, 16),
(22, '2021-01-09-204907', 'App\\Database\\Migrations\\CreateLoanSetupsTable', 'default', 'App', 1610716948, 17),
(23, '2021-01-11-160655', 'App\\Database\\Migrations\\CreateCoopBanksTable', 'default', 'App', 1610716948, 17),
(24, '2021-01-12-095813', 'App\\Database\\Migrations\\CreateLoanApplicationTable', 'default', 'App', 1610716948, 17),
(25, '2021-01-14-144953', 'App\\Database\\Migrations\\CreateLoansTable', 'default', 'App', 1610716948, 17),
(26, '2021-01-15-080007', 'App\\Database\\Migrations\\CreateScheduleMastersTable', 'default', 'App', 1610716948, 17),
(27, '2021-01-15-080756', 'App\\Database\\Migrations\\CreateScheduleMasterDetailsTable', 'default', 'App', 1610716948, 17),
(28, '2021-01-15-150715', 'App\\Database\\Migrations\\PaymentDetailsdb', 'default', 'App', 1610723815, 18),
(29, '2021-01-15-151323', 'App\\Database\\Migrations\\TempPaymentDetailsdb', 'default', 'App', 1610723840, 19),
(30, '2021-01-15-220310', 'App\\Database\\Migrations\\PaymentDetailsdbUP', 'default', 'App', 1610748543, 20),
(31, '2021-01-15-220658', 'App\\Database\\Migrations\\TemppaymentDetailsdbUP', 'default', 'App', 1610748543, 20),
(32, '2021-01-15-223141', 'App\\Database\\Migrations\\Exception', 'default', 'App', 1610750018, 21),
(33, '2021-01-16-071234', 'App\\Database\\Migrations\\TemppaymentDetailsdbUPdate', 'default', 'App', 1610782533, 22),
(34, '2021-01-16-071240', 'App\\Database\\Migrations\\PaymentDetailsdbUPdate', 'default', 'App', 1610782533, 22),
(35, '2021-01-20-131103', 'App\\Database\\Migrations\\CreateMailsTable', 'default', 'App', 1611674255, 23),
(36, '2021-01-20-131809', 'App\\Database\\Migrations\\CreateMailReceiversTable', 'default', 'App', 1611674255, 23),
(37, '2021-01-20-152059', 'App\\Database\\Migrations\\CreateBulkSmsTable', 'default', 'App', 1611674255, 23),
(38, '2021-01-26-145639', 'App\\Database\\Migrations\\Withdrawt', 'default', 'App', 1611674255, 23),
(39, '2021-01-26-154350', 'App\\Database\\Migrations\\Withdrawupdate', 'default', 'App', 1611676260, 24),
(40, '2021-01-28-155316', 'App\\Database\\Migrations\\Withdrawstatus', 'default', 'App', 1611850008, 25),
(41, '2021-01-25-215312', 'App\\Database\\Migrations\\CreatePayableMastersTable', 'default', 'App', 1611937193, 26),
(42, '2021-01-25-220043', 'App\\Database\\Migrations\\CreatePayableDetailsTable', 'default', 'App', 1611937193, 26),
(43, '2021-02-02-110936', 'App\\Database\\Migrations\\Policyconfigupdates', 'default', 'App', 1612265077, 27),
(44, '2021-02-02-111801', 'App\\Database\\Migrations\\Withdrawdisbursed', 'default', 'App', 1612265097, 28),
(45, '2021-02-02-144622', 'App\\Database\\Migrations\\Withdrawdoc', 'default', 'App', 1612277260, 29),
(46, '2021-02-08-095403', 'App\\Database\\Migrations\\Interestmonth', 'default', 'App', 1612778596, 30),
(47, '2021-02-08-113302', 'App\\Database\\Migrations\\Loanrepayment', 'default', 'App', 1612784568, 31),
(48, '2021-02-09-133946', 'App\\Database\\Migrations\\Loansetupup', 'default', 'App', 1612879982, 32),
(49, '2021-02-09-141511', 'App\\Database\\Migrations\\Loanrepaymentupdateint', 'default', 'App', 1612880256, 33),
(50, '2021-02-09-142402', 'App\\Database\\Migrations\\Contributiontypesregular', 'default', 'App', 1612880714, 34),
(51, '2021-02-10-083032', 'App\\Database\\Migrations\\Temppaymentdetailssssupdate', 'default', 'App', 1612945960, 35),
(52, '2021-02-10-083043', 'App\\Database\\Migrations\\Exceptionupdatename', 'default', 'App', 1612945960, 35),
(53, '2021-02-10-091840', 'App\\Database\\Migrations\\Temploanrepayment', 'default', 'App', 1612949456, 36),
(54, '2021-02-10-091849', 'App\\Database\\Migrations\\Loanexception', 'default', 'App', 1612949456, 36),
(55, '2021-02-10-100953', 'App\\Database\\Migrations\\Temploanrepaymentupdate', 'default', 'App', 1612951894, 37),
(56, '2021-02-10-101149', 'App\\Database\\Migrations\\Loanexceptionupdate', 'default', 'App', 1612952022, 38),
(57, '2021-02-10-102701', 'App\\Database\\Migrations\\Temploanrepaymentupdateamount', 'default', 'App', 1612952858, 39),
(58, '2021-02-09-091750', 'App\\Database\\Migrations\\CreatePaymentCarts', 'default', 'App', 1613039856, 40),
(59, '2021-02-11-103100', 'App\\Database\\Migrations\\Withdrawstable', 'default', 'App', 1613039984, 41),
(60, '2021-02-15-161101', 'App\\Database\\Migrations\\ExceptionUpdates', 'default', 'App', 1613406588, 42),
(61, '2021-02-15-161149', 'App\\Database\\Migrations\\Temppdupdateseee', 'default', 'App', 1613406588, 42),
(62, '2021-02-15-161203', 'App\\Database\\Migrations\\Pdupdateseee', 'default', 'App', 1613406588, 42),
(63, '2021-02-15-163422', 'App\\Database\\Migrations\\Exceptionmonthyear', 'default', 'App', 1613406902, 43),
(64, '2021-02-16-092219', 'App\\Database\\Migrations\\Contributiontypecoa', 'default', 'App', 1613467949, 44),
(65, '2021-02-16-093020', 'App\\Database\\Migrations\\Loanexceptionnarration', 'default', 'App', 1613467949, 44),
(66, '2021-02-16-101011', 'App\\Database\\Migrations\\Loanexceptionloantype', 'default', 'App', 1613470297, 45),
(67, '2021-02-15-041940', 'App\\Database\\Migrations\\Thirdpartypaymententry', 'default', 'App', 1613753072, 46),
(68, '2021-02-15-101443', 'App\\Database\\Migrations\\Entrypaymentmasters', 'default', 'App', 1613753072, 46),
(69, '2021-02-15-111416', 'App\\Database\\Migrations\\Entrypaymentdetails', 'default', 'App', 1613753072, 46),
(70, '2021-02-19-163437', 'App\\Database\\Migrations\\Receipttable', 'default', 'App', 1613753072, 46),
(71, '2021-02-20-074124', 'App\\Database\\Migrations\\Receipttablecoopbank', 'default', 'App', 1613806957, 47),
(72, '2021-02-20-121620', 'App\\Database\\Migrations\\Receiptdetailtable', 'default', 'App', 1613823505, 48),
(73, '2021-02-26-093357', 'App\\Database\\Migrations\\CustomerSetupsTable', 'default', 'App', 1614677471, 49),
(74, '2021-03-01-104326', 'App\\Database\\Migrations\\CustomerReceivablesTable', 'default', 'App', 1614677471, 49),
(75, '2021-03-02-093516', 'App\\Database\\Migrations\\Receiptupdatesdates', 'default', 'App', 1614677952, 50),
(76, '2021-03-02-093944', 'App\\Database\\Migrations\\Receiptupdatesdateste', 'default', 'App', 1614678094, 51),
(77, '2021-03-04-124726', 'App\\Database\\Migrations\\Jvupdatetrashbytrashdate', 'default', 'App', 1614862164, 52),
(78, '2021-03-11-123558', 'App\\Database\\Migrations\\Journaltransfejtmaster', 'default', 'App', 1615469945, 53),
(79, '2021-03-11-124124', 'App\\Database\\Migrations\\Journaltransfejtdetail', 'default', 'App', 1615469945, 53),
(80, '2021-03-12-105055', 'App\\Database\\Migrations\\Accountclosure', 'default', 'App', 1615546800, 54),
(81, '2021-03-15-092149', 'App\\Database\\Migrations\\Paymentdetailspaymenttype', 'default', 'App', 1615800231, 55),
(82, '2021-03-15-143656', 'App\\Database\\Migrations\\Userupdate', 'default', 'App', 1615819131, 56),
(83, '2021-03-15-141345', 'App\\Database\\Migrations\\CreateSavingVariationsTable', 'default', 'App', 1615989597, 57),
(84, '2021-03-17-131226', 'App\\Database\\Migrations\\Reconciliation', 'default', 'App', 1615989597, 57),
(85, '2021-03-17-140446', 'App\\Database\\Migrations\\Reconciliationupdate', 'default', 'App', 1615990060, 58),
(86, '2021-03-18-071150', 'App\\Database\\Migrations\\Reconciliationrefno', 'default', 'App', 1616051611, 59),
(87, '2021-03-18-160923', 'App\\Database\\Migrations\\Reconciliationmimp', 'default', 'App', 1616083905, 60),
(88, '2021-03-19-083733', 'App\\Database\\Migrations\\Addencumbrancefield', 'default', 'App', 1616510078, 61),
(89, '2021-03-19-133346', 'App\\Database\\Migrations\\Addencumbrancefieldloanapp', 'default', 'App', 1616510078, 61);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `topic` text NOT NULL,
  `type` text NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `details` int(11) NOT NULL,
  `seen` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `topic`, `type`, `receiver_id`, `details`, `seen`, `created_at`) VALUES
(1, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 12345, 3, 1, '2021-03-26 11:19:23'),
(2, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 12345, 4, 1, '2021-03-26 11:19:23'),
(3, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 12345, 5, 1, '2021-03-26 13:33:11'),
(4, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 0, 6, 1, '2021-03-26 13:33:11'),
(5, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 12345, 7, 1, '2021-03-31 15:15:47'),
(6, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 0, 8, 0, '2021-03-31 15:15:47'),
(7, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 0, 9, 0, '2021-04-12 16:35:04'),
(8, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 0, 10, 0, '2021-04-12 16:35:04'),
(9, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 12345, 11, 1, '2021-04-13 10:58:14'),
(10, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 12345, 12, 1, '2021-04-13 10:58:14'),
(11, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 12345, 13, 1, '2021-04-16 10:45:51'),
(12, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 12345, 14, 1, '2021-04-16 10:45:51'),
(13, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 12345, 15, 1, '2021-05-07 08:04:19'),
(14, 'You have been selected as a guarantor for a loan', 'guarantor_notification', 12345, 16, 1, '2021-05-07 08:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `payable_details`
--

CREATE TABLE `payable_details` (
  `payable_detail_id` int(11) NOT NULL,
  `payable_master_id` int(11) DEFAULT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `payable_no` text DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payable_masters`
--

CREATE TABLE `payable_masters` (
  `payable_master_id` int(11) NOT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT 0,
  `receivers` text DEFAULT NULL,
  `payable_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `verified_date` datetime DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `approve_by` int(11) DEFAULT NULL,
  `returned` int(11) DEFAULT 0 COMMENT '0=off,1=on',
  `returned_by` int(11) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `payable_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `payment_staff_id` int(11) NOT NULL,
  `payment_amount` double NOT NULL,
  `payment_contribution_type_id` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_narration` text DEFAULT NULL,
  `payment_date` date NOT NULL,
  `payment_reference_code` text DEFAULT NULL,
  `payment_action_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_carts`
--

CREATE TABLE `payment_carts` (
  `payment_cart_id` int(11) NOT NULL,
  `payable_date` datetime DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `transaction_type` int(11) DEFAULT NULL COMMENT '1=loan,2=withdraw,3=closure'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `pd_id` int(11) NOT NULL,
  `pd_staff_id` text NOT NULL,
  `pd_transaction_date` date NOT NULL,
  `pd_narration` text NOT NULL,
  `pd_amount` double DEFAULT NULL,
  `pd_payment_type` int(11) DEFAULT NULL,
  `pd_drcrtype` int(11) NOT NULL,
  `pd_ct_id` int(11) DEFAULT NULL,
  `pd_pg_id` int(11) DEFAULT NULL,
  `pd_ref_code` text NOT NULL,
  `pd_month` int(11) NOT NULL,
  `pd_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`pd_id`, `pd_staff_id`, `pd_transaction_date`, `pd_narration`, `pd_amount`, `pd_payment_type`, `pd_drcrtype`, `pd_ct_id`, `pd_pg_id`, `pd_ref_code`, `pd_month`, `pd_year`) VALUES
(1, 'eng1303449', '2021-07-12', 'Regular Savings for May', 1500000, 3, 1, 1, 1, '1626093975', 5, 2021),
(2, '12345', '2021-07-12', 'Regular Savings for May', 1500000, 3, 1, 1, 1, '1626093975', 5, 2021),
(3, 'cs006', '2021-07-12', 'Regular Savings for May', 1500000, 3, 1, 1, 1, '1626093975', 5, 2021),
(4, 'eng1303449', '2021-07-12', 'Target Savings for May', 1500000, 3, 1, 3, 1, '1626093998', 5, 2021),
(5, '12345', '2021-07-12', 'Target Savings for May', 1500000, 3, 1, 3, 1, '1626093998', 5, 2021),
(6, 'cs006', '2021-07-12', 'Target Savings for May', 1500000, 3, 1, 3, 1, '1626093998', 5, 2021),
(7, 'eng1303449', '2021-07-12', 'Regular Savings for June', 1500000, 3, 1, 1, 1, '1626094025', 6, 2021),
(8, '12345', '2021-07-12', 'Regular Savings for June', 1500000, 3, 1, 1, 1, '1626094025', 6, 2021),
(9, 'cs006', '2021-07-12', 'Regular Savings for June', 1500000, 3, 1, 1, 1, '1626094025', 6, 2021),
(10, 'eng1303449', '2021-07-12', 'Target Savings for June', 1500000, 3, 1, 3, 1, '1626094048', 6, 2021),
(11, '12345', '2021-07-12', 'Target Savings for June', 1500000, 3, 1, 3, 1, '1626094048', 6, 2021),
(12, 'cs006', '2021-07-12', 'Target Savings for June', 1500000, 3, 1, 3, 1, '1626094048', 6, 2021),
(17, '12345', '2021-07-13', 'Withdrawal from Regular Savings', 500000, 1, 2, 1, 1, '1626182873', 7, 2021),
(18, '12345', '2021-07-13', 'Charges on withdrawal', 25000, 2, 2, 1, 1, '1626182873', 7, 2021),
(19, 'eng1303449', '2021-07-13', 'Withdrawal from Regular Savings', 500000, 1, 2, 1, 1, '1626182873', 7, 2021),
(20, 'eng1303449', '2021-07-13', 'Charges on withdrawal', 25000, 2, 2, 1, 1, '1626182873', 7, 2021),
(21, 'eng1303449', '2021-07-13', 'External receipt contribution', 50000, 5, 1, 1, 1, '1626183902', 7, 2021),
(22, 'eng1303449', '2021-07-13', 'Journal transfer', 100000, 4, 2, 1, 1, '1626184033', 7, 2021),
(23, 'eng1303449', '2021-07-13', 'Contribution via journal transfer', 50000, 4, 1, 3, 1, '1626184033', 7, 2021),
(24, 'eng1303449', '2021-07-13', 'reconciliation -(Savings Reconciliation)', 50000, 6, 1, 1, 1, '1626184209', 7, 2021),
(25, 'eng1303449', '2021-07-13', 'Withdrawal from Regular Savings', 50000, 1, 2, 1, 1, '1626189410', 7, 2021),
(26, 'eng1303449', '2021-07-13', 'Charges on withdrawal', 2500, 2, 2, 1, 1, '1626189410', 7, 2021),
(27, 'eng1303449', '2021-07-13', 'Withdrawal from Regular Savings', 50000, 1, 2, 1, 1, '1626189518', 7, 2021),
(28, 'eng1303449', '2021-07-13', 'Charges on withdrawal', 2500, 2, 2, 1, 1, '1626189518', 7, 2021),
(29, 'eng1303449', '2021-07-13', 'Withdrawal from Regular Savings', 50000, 1, 2, 1, 1, '1626189623', 7, 2021),
(30, 'eng1303449', '2021-07-13', 'Charges on withdrawal', 2500, 2, 2, 1, 1, '1626189623', 7, 2021),
(31, '12345', '2021-07-14', 'Withdrawal from Regular Savings', 50000, 1, 2, 1, 1, '1626266007', 7, 2021),
(32, '12345', '2021-07-14', 'Charges on withdrawal', 2500, 2, 2, 1, 1, '1626266007', 7, 2021),
(33, 'eng1303449', '2021-07-14', 'Withdrawal from Regular Savings', 5000, 1, 2, 1, 1, '1626266007', 7, 2021),
(34, 'eng1303449', '2021-07-14', 'Charges on withdrawal', 250, 2, 2, 1, 1, '1626266007', 7, 2021),
(35, 'eng1303449', '2021-08-02', 'savings for july', 1500000, 3, 1, 1, 1, '1627901977', 8, 2021),
(36, '12345', '2021-08-02', 'savings for july', 1500000, 3, 1, 1, 1, '1627901977', 8, 2021),
(37, 'cs006', '2021-08-02', 'savings for july', 1500000, 3, 1, 1, 1, '1627901977', 8, 2021),
(38, '12345', '2021-09-28', 'External receipt contribution', 700000, 5, 1, 1, 1, '1632828697', 9, 2021),
(39, '12345', '2021-09-28', 'Journal transfer', 50000, 4, 2, 1, 1, '1632829024', 9, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_groups`
--

CREATE TABLE `payroll_groups` (
  `pg_id` int(11) NOT NULL,
  `pg_name` text NOT NULL,
  `pg_gl_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payroll_groups`
--

INSERT INTO `payroll_groups` (`pg_id`, `pg_name`, `pg_gl_code`) VALUES
(1, 'Regular Staff', '1101601'),
(2, 'Contract Staff', '1101602');

-- --------------------------------------------------------

--
-- Table structure for table `policy_configs`
--

CREATE TABLE `policy_configs` (
  `policy_config_id` int(11) NOT NULL,
  `company_name` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `signature_1` text DEFAULT NULL,
  `signature_2` text DEFAULT NULL,
  `signature_3` text DEFAULT NULL,
  `minimum_saving` double NOT NULL DEFAULT 0,
  `registration_fee` double NOT NULL DEFAULT 0,
  `savings_interest_rate` double NOT NULL DEFAULT 0,
  `savings_withdrawal_charge` double NOT NULL DEFAULT 0,
  `max_withdrawal_amount` double DEFAULT NULL,
  `contribution_payroll_dr` int(11) DEFAULT NULL,
  `contribution_payroll_cr` int(11) DEFAULT NULL,
  `contribution_external_dr` int(11) DEFAULT NULL,
  `withdrawal_dr` int(11) DEFAULT NULL,
  `registration_fee_dr` int(11) DEFAULT NULL,
  `registration_fee_cr` int(11) DEFAULT NULL,
  `income_savings_withdrawal_charge_dr` int(11) DEFAULT NULL,
  `income_savings_withdrawal_charge_cr` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `policy_configs`
--

INSERT INTO `policy_configs` (`policy_config_id`, `company_name`, `logo`, `signature_1`, `signature_2`, `signature_3`, `minimum_saving`, `registration_fee`, `savings_interest_rate`, `savings_withdrawal_charge`, `max_withdrawal_amount`, `contribution_payroll_dr`, `contribution_payroll_cr`, `contribution_external_dr`, `withdrawal_dr`, `registration_fee_dr`, `registration_fee_cr`, `income_savings_withdrawal_charge_dr`, `income_savings_withdrawal_charge_cr`, `created_at`) VALUES
(1, 'Frederick and Morse Traders', 'icoop.png', '652', '733', '264', 5000, 1000, 7.5, 5, 80, NULL, 1, NULL, 10102, 4, 50505, 10102, 20203, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receipt_detail`
--

CREATE TABLE `receipt_detail` (
  `rd_id` int(11) NOT NULL,
  `rd_rm_id` text DEFAULT NULL,
  `rd_amount` double DEFAULT NULL,
  `rd_type` int(11) DEFAULT NULL,
  `rd_target` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receipt_detail`
--

INSERT INTO `receipt_detail` (`rd_id`, `rd_rm_id`, `rd_amount`, `rd_type`, `rd_target`) VALUES
(8, '5', 50000, 2, 1),
(9, '5', 50000, 1, 4),
(10, '6', 700000, 2, 1),
(11, '6', 300000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `receipt_master`
--

CREATE TABLE `receipt_master` (
  `rm_id` int(11) NOT NULL,
  `rm_staff_id` text DEFAULT NULL,
  `rm_date` date DEFAULT NULL,
  `rm_amount` double DEFAULT NULL,
  `rm_payment_method` int(11) DEFAULT NULL,
  `rm_coop_bank` int(11) NOT NULL,
  `rm_status` int(11) DEFAULT NULL,
  `rm_verify_comment` text DEFAULT NULL,
  `rm_verify_by` text DEFAULT NULL,
  `rm_verify_date` date DEFAULT NULL,
  `rm_approve_comment` text DEFAULT NULL,
  `rm_approve_by` text DEFAULT NULL,
  `rm_approve_date` date DEFAULT NULL,
  `rm_discard_comment` text DEFAULT NULL,
  `rm_discard_by` text DEFAULT NULL,
  `rm_discard_date` date DEFAULT NULL,
  `rm_a_date` date DEFAULT NULL,
  `rm_by` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receipt_master`
--

INSERT INTO `receipt_master` (`rm_id`, `rm_staff_id`, `rm_date`, `rm_amount`, `rm_payment_method`, `rm_coop_bank`, `rm_status`, `rm_verify_comment`, `rm_verify_by`, `rm_verify_date`, `rm_approve_comment`, `rm_approve_by`, `rm_approve_date`, `rm_discard_comment`, `rm_discard_by`, `rm_discard_date`, `rm_a_date`, `rm_by`) VALUES
(5, 'eng1303449', '2021-07-13', 100000, 1, 1, 2, '', 'administrator administrator', '2021-07-13', '', 'administrator administrator', '2021-07-13', NULL, NULL, NULL, '2021-07-13', 'administrator'),
(6, '12345', '2021-09-28', 1000000, 1, 2, 2, '', 'administrator administrator', '2021-09-28', '', 'administrator administrator', '2021-09-28', NULL, NULL, NULL, '2021-09-28', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `reconciliation`
--

CREATE TABLE `reconciliation` (
  `re_id` int(11) NOT NULL,
  `re_staff_id` text DEFAULT NULL,
  `re_type` text DEFAULT NULL COMMENT '1=savings, 2=loan',
  `re_narration` text DEFAULT NULL,
  `re_source` text DEFAULT NULL,
  `re_destination` text DEFAULT NULL,
  `re_amount` float DEFAULT NULL,
  `re_mpr` float NOT NULL,
  `re_mi` float NOT NULL,
  `re_dctype` int(11) DEFAULT NULL COMMENT '1=credit to source, 2=debit to source',
  `re_transaction_date` date DEFAULT NULL,
  `re_ref_no` text DEFAULT NULL,
  `re_by` text DEFAULT NULL,
  `re_date` date DEFAULT NULL,
  `re_verify_by` text DEFAULT NULL,
  `re_verify_date` date DEFAULT NULL,
  `re_verify_comment` text DEFAULT NULL,
  `re_approved_by` text DEFAULT NULL,
  `re_approved_date` text DEFAULT NULL,
  `re_approved_comment` text DEFAULT NULL,
  `re_discard_by` text DEFAULT NULL,
  `re_discard_comment` text DEFAULT NULL,
  `re_discard_date` date NOT NULL,
  `re_status` int(11) DEFAULT 0 COMMENT '0=pending, 1=verified 2=approved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reconciliation`
--

INSERT INTO `reconciliation` (`re_id`, `re_staff_id`, `re_type`, `re_narration`, `re_source`, `re_destination`, `re_amount`, `re_mpr`, `re_mi`, `re_dctype`, `re_transaction_date`, `re_ref_no`, `re_by`, `re_date`, `re_verify_by`, `re_verify_date`, `re_verify_comment`, `re_approved_by`, `re_approved_date`, `re_approved_comment`, `re_discard_by`, `re_discard_comment`, `re_discard_date`, `re_status`) VALUES
(1, 'eng1303449', '1', 'reconciliation -(Savings Reconciliation)', '1', '110111003', 50000, 0, 0, 1, '2021-07-13', '1626184209', 'administrator', '2021-07-13', 'administrator', '2021-07-13', '', 'administrator', '2021-07-13', '', NULL, NULL, '0000-00-00', 2),
(2, '12345', '2', 'loan reconciliation -(Loans Reconciliation)', '1', '110111003', 50000, 0, 0, 2, '2021-07-13', '1626184307', 'administrator', '2021-07-13', 'administrator', '2021-07-13', '', 'administrator', '2021-07-13', '', NULL, NULL, '0000-00-00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `saving_variations`
--

CREATE TABLE `saving_variations` (
  `saving_variation_id` int(11) NOT NULL,
  `sv_staff_id` text DEFAULT NULL,
  `ct_type_id` text DEFAULT NULL,
  `sv_month` text DEFAULT NULL,
  `sv_year` text DEFAULT NULL,
  `sv_status` int(11) DEFAULT NULL,
  `sv_applied_by` text DEFAULT NULL,
  `sv_date_verified` date DEFAULT NULL,
  `sv_verified_by` text DEFAULT NULL,
  `sv_approved_by` text DEFAULT NULL,
  `sv_date_approved` date DEFAULT NULL,
  `sv_is_active` int(11) DEFAULT 0 COMMENT '0=inactive,1=active',
  `sv_discard_by` text DEFAULT NULL,
  `sv_discard_date` date DEFAULT NULL,
  `sv_amount` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saving_variations`
--

INSERT INTO `saving_variations` (`saving_variation_id`, `sv_staff_id`, `ct_type_id`, `sv_month`, `sv_year`, `sv_status`, `sv_applied_by`, `sv_date_verified`, `sv_verified_by`, `sv_approved_by`, `sv_date_approved`, `sv_is_active`, `sv_discard_by`, `sv_discard_date`, `sv_amount`) VALUES
(1, '12345', NULL, '4', '2021', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_masters`
--

CREATE TABLE `schedule_masters` (
  `schedule_master_id` int(11) NOT NULL,
  `payable_date` date DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `amount` double NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `verified` int(11) NOT NULL DEFAULT 0,
  `verified_by` text DEFAULT NULL,
  `date_verified` datetime DEFAULT NULL,
  `approved` int(11) NOT NULL DEFAULT 0,
  `approved_by` text DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `attachment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule_masters`
--

INSERT INTO `schedule_masters` (`schedule_master_id`, `payable_date`, `creation_date`, `amount`, `bank_id`, `verified`, `verified_by`, `date_verified`, `approved`, `approved_by`, `approved_date`, `attachment`) VALUES
(3, '2021-07-13', '2021-07-13 13:03:08', 3300000, 1, 1, 'administrator', '2021-07-13 14:27:53', 1, 'administrator', '2021-07-13', NULL),
(4, '2021-07-13', '2021-07-13 16:16:05', 50000, 1, 1, 'administrator', '2021-07-13 16:20:23', 1, 'administrator', '2021-07-13', NULL),
(6, '2021-07-14', '2021-07-14 13:32:47', 55000, 1, 1, 'administrator', '2021-07-14 13:33:27', 1, 'administrator', '2021-07-14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_master_details`
--

CREATE TABLE `schedule_master_details` (
  `schedule_master_detail_id` int(11) NOT NULL,
  `schedule_master_id` bigint(20) DEFAULT NULL,
  `coop_id` text DEFAULT NULL,
  `amount` double DEFAULT 0,
  `loan_type` int(11) DEFAULT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `transaction_type` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule_master_details`
--

INSERT INTO `schedule_master_details` (`schedule_master_detail_id`, `schedule_master_id`, `coop_id`, `amount`, `loan_type`, `loan_id`, `transaction_type`) VALUES
(9, 3, '12345', 500000, 1, 1, 1),
(10, 3, 'eng1303449', 1800000, 2, 4, 1),
(11, 3, '12345', 500000, NULL, 1, 2),
(12, 3, 'eng1303449', 500000, NULL, 2, 2),
(13, 4, 'eng1303449', 50000, NULL, 3, 2),
(16, 6, '12345', 50000, NULL, 4, 2),
(17, 6, 'eng1303449', 5000, NULL, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` bigint(20) NOT NULL,
  `state_name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `state_name`, `created_at`) VALUES
(1, 'Abia', '2020-12-13 23:58:08'),
(2, 'Adamawa', '2020-12-13 23:59:13'),
(3, 'Akwa Ibom', '2020-12-14 00:19:21'),
(4, 'Anambra', '2020-12-14 00:19:41'),
(5, 'Bauchi', '2020-12-14 00:20:43'),
(6, 'Bayelsa', '2020-12-14 00:20:51'),
(7, 'Benue', '2020-12-14 00:21:51'),
(8, 'Borno', '2020-12-14 00:22:15'),
(9, 'Cross River', '2020-12-14 00:22:26'),
(10, 'Delta', '2020-12-14 00:22:33'),
(11, 'Ebonyi', '2020-12-14 00:22:42'),
(12, 'Edo', '2020-12-14 00:22:50'),
(13, 'Ekiti', '2020-12-14 00:22:59'),
(14, 'Enugu', '2020-12-14 00:23:08'),
(15, 'Federal Capital Territory', '2020-12-14 00:23:18'),
(16, 'Gombe', '2020-12-14 00:23:26'),
(17, 'Imo', '2020-12-14 00:23:38'),
(18, 'Jigawa', '2020-12-14 00:23:48'),
(19, 'Kaduna', '2020-12-14 00:23:57'),
(20, 'Kano', '2020-12-14 00:24:02'),
(21, 'Katsina', '2020-12-14 00:24:09'),
(22, 'Kebbi', '2020-12-14 00:24:18'),
(23, 'Kogi', '2020-12-14 00:24:22'),
(24, 'Kwara', '2020-12-14 00:24:30'),
(25, 'Lagos', '2020-12-14 00:24:38'),
(26, 'Nasarawa', '2020-12-14 00:24:47'),
(27, 'Niger', '2020-12-14 00:24:55'),
(28, 'Ogun', '2020-12-14 00:25:02'),
(29, 'Ondo', '2020-12-14 00:25:09'),
(30, 'Osun', '2020-12-14 00:25:18'),
(31, 'Oyo', '2020-12-14 00:25:26'),
(32, 'Plateau', '2020-12-14 00:25:34'),
(33, 'Rivers', '2020-12-14 00:25:42'),
(34, 'Sokoto', '2020-12-14 00:25:50'),
(35, 'Taraba', '2020-12-14 00:25:58'),
(36, 'Yobe', '2020-12-14 00:26:02'),
(37, 'Zamfara', '2020-12-14 00:26:07'),
(38, 'FC', '2020-12-17 10:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `temp_loan_repayment`
--

CREATE TABLE `temp_loan_repayment` (
  `temp_lr_id` int(11) NOT NULL,
  `temp_lr_staff_id` text NOT NULL,
  `temp_lr_staff_name` text DEFAULT NULL,
  `temp_lr_transaction_date` date NOT NULL,
  `temp_lr_narration` text NOT NULL,
  `temp_lr_amount` double DEFAULT NULL,
  `temp_lr_month` text DEFAULT NULL,
  `temp_lr_year` text DEFAULT NULL,
  `temp_lr_drcrtype` int(11) NOT NULL,
  `temp_lr_loan_id` int(11) NOT NULL,
  `temp_lr_ref_code` text NOT NULL,
  `temp_lr_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_payment_details`
--

CREATE TABLE `temp_payment_details` (
  `temp_pd_id` int(11) NOT NULL,
  `temp_pd_staff_id` text NOT NULL,
  `temp_pd_transaction_date` date NOT NULL,
  `temp_pd_narration` text NOT NULL,
  `temp_pd_amount` double DEFAULT NULL,
  `temp_pd_drcrtype` int(11) NOT NULL,
  `temp_pd_ct_id` int(11) DEFAULT NULL,
  `temp_pd_pg_id` int(11) DEFAULT NULL,
  `temp_pd_ref_code` text NOT NULL,
  `temp_pd_status` int(11) NOT NULL,
  `temp_pd_staff_name` text DEFAULT NULL,
  `temp_pd_month` int(11) NOT NULL,
  `temp_pd_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `third_party_payment_entries`
--

CREATE TABLE `third_party_payment_entries` (
  `third_party_payment_entry_id` int(11) NOT NULL,
  `entry_payment_date` date DEFAULT NULL,
  `entry_bank_id` int(11) DEFAULT NULL,
  `entry_amount` double DEFAULT 0,
  `entry_gl_account_no` int(11) DEFAULT NULL,
  `entry_reference_no` text DEFAULT NULL,
  `entry_narration` text DEFAULT NULL,
  `entry_payee_name` text DEFAULT NULL,
  `entry_payee_bank` int(11) DEFAULT NULL,
  `entry_bank_account_no` text DEFAULT NULL,
  `entry_sort_code` text DEFAULT NULL,
  `entry_approved` int(11) DEFAULT 0 COMMENT '0=not approved, 1=approved',
  `entry_approved_date` date DEFAULT NULL,
  `entry_approved_by` int(11) DEFAULT NULL,
  `entry_verified_by` text DEFAULT NULL,
  `entry_verified` int(11) DEFAULT 0,
  `entry_date_verified` text DEFAULT NULL,
  `cart` int(11) DEFAULT NULL COMMENT '0=not,1=in cart',
  `entry_attachment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `third_party_payment_entries`
--

INSERT INTO `third_party_payment_entries` (`third_party_payment_entry_id`, `entry_payment_date`, `entry_bank_id`, `entry_amount`, `entry_gl_account_no`, `entry_reference_no`, `entry_narration`, `entry_payee_name`, `entry_payee_bank`, `entry_bank_account_no`, `entry_sort_code`, `entry_approved`, `entry_approved_date`, `entry_approved_by`, `entry_verified_by`, `entry_verified`, `entry_date_verified`, `cart`, `entry_attachment`) VALUES
(2, '2021-07-14', 1, 5000000, 21016, 'payment/07/21', '', 'Oki-Peter', 2, '0150176481', '10125', 0, NULL, NULL, NULL, 0, NULL, 1, NULL),
(3, '2021-07-14', 1, 50000, 1101301, 'paymen/09/12', '', 'Oki-Peter', 1, '0150176481', '121212', 0, NULL, NULL, NULL, 0, NULL, 1, NULL),
(4, '2021-07-14', 2, 100000, 1101001, 'po/4589', 'olanrewaju', 'Ejiroghene', 2, '2198889669', '122323', 0, NULL, NULL, NULL, 0, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `first_name` varchar(26) NOT NULL,
  `last_name` varchar(26) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` text DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=users, 1=admin_user',
  `user_status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `username`, `password`, `user_type`, `user_status`, `created_at`) VALUES
(1, 'Joseph', 'ok', 'talktojoegee@gmail.com', 'joseph', '$2y$10$Bz.wkmcMXOssV1ndQTXmXOFHCDPG6HXH.YJiM5QIcox9yRlKNr8ne', 0, 1, '2020-12-13 17:46:15'),
(2, 'administrator', 'administrator', 'administrator@admin.com', 'administrator', '$2y$10$zdB9LIaUdHFdvXiYK3kEGOZGaQENJbVQrOFnQdioeSHkJghM7.tfK', 0, 0, '2020-12-16 13:43:49'),
(6, 'Ejiro', 'Peter', 'oki-peter@connexxiongroup.com', 'peterejiro', '$2y$10$F0MGODfuh2YEvkVWcoBWMO3XidntJDfM1gPgK.DHENEm/iNMt3PXe', 0, 1, '2021-03-15 16:36:18'),
(7, 'Ejiro', 'Peter', '', 'peterejiro96', '$2y$10$m4OfxooXV5SvIqQHgbsaZOZ/NVXtNfFuwPcYW/xNOmOBo3LBaCrae', 0, 1, '2021-03-15 16:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `withdraw_id` int(11) NOT NULL,
  `withdraw_staff_id` text NOT NULL,
  `withdraw_ct_id` text NOT NULL,
  `withdraw_amount` text NOT NULL,
  `withdraw_charges` double DEFAULT NULL,
  `withdraw_date` text DEFAULT NULL,
  `withdraw_narration` text DEFAULT NULL,
  `withdraw_status` int(11) DEFAULT NULL,
  `withdraw_doc` text DEFAULT NULL,
  `withdraw_verify_by` text NOT NULL,
  `withdraw_verify_comment` text NOT NULL,
  `withdraw_verify_date` date NOT NULL,
  `withdraw_approved_by` text NOT NULL,
  `withdraw_approved_date` date NOT NULL,
  `withdraw_approved_comment` text NOT NULL,
  `withdraw_discarded_by` text NOT NULL,
  `withdraw_discarded_date` date NOT NULL,
  `withdraw_discarded_comment` text NOT NULL,
  `withdraw_disbursed_date` date DEFAULT NULL,
  `cart` int(11) NOT NULL DEFAULT 0,
  `paid_back` int(11) NOT NULL DEFAULT 0,
  `disburse` int(11) NOT NULL DEFAULT 0,
  `scheduled` int(11) NOT NULL DEFAULT 0,
  `disburse_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`withdraw_id`, `withdraw_staff_id`, `withdraw_ct_id`, `withdraw_amount`, `withdraw_charges`, `withdraw_date`, `withdraw_narration`, `withdraw_status`, `withdraw_doc`, `withdraw_verify_by`, `withdraw_verify_comment`, `withdraw_verify_date`, `withdraw_approved_by`, `withdraw_approved_date`, `withdraw_approved_comment`, `withdraw_discarded_by`, `withdraw_discarded_date`, `withdraw_discarded_comment`, `withdraw_disbursed_date`, `cart`, `paid_back`, `disburse`, `scheduled`, `disburse_date`) VALUES
(1, '12345', '1', '500000', 25000, '2021-07-12', NULL, 2, '1626101024_ebbdd05d10ca3e9f1f50.pdf', 'administrator administrator', 'ok', '2021-07-12', 'administrator administrator', '2021-07-12', 'ok', '', '0000-00-00', '', NULL, 1, 0, 1, 1, '2021-07-13 14:27:53'),
(2, 'eng1303449', '1', '500000', 25000, '2021-07-12', NULL, 2, '1626101043_e99b479884b50486fd47.pdf', 'administrator administrator', 'ok', '2021-07-12', 'administrator administrator', '2021-07-12', 'ok', '', '0000-00-00', '', NULL, 1, 0, 1, 1, '2021-07-13 14:27:53'),
(3, 'eng1303449', '1', '50000', 2500, '2021-07-13', NULL, 2, '1626189326_9c4e6dfc6b3ab45b0ceb.pdf', 'administrator administrator', '', '2021-07-13', 'administrator administrator', '2021-07-13', '', '', '0000-00-00', '', NULL, 1, 0, 1, 1, '2021-07-13 16:20:23'),
(4, '12345', '1', '50000', 2500, '2021-07-14', NULL, 2, '1626265825_e6fc8f2fbabf369cdb5f.pdf', 'administrator administrator', '', '2021-07-14', 'administrator administrator', '2021-07-14', '', '', '0000-00-00', '', NULL, 1, 0, 1, 1, '2021-07-14 13:33:27'),
(5, 'eng1303449', '1', '5000', 250, '2021-07-14', NULL, 2, '1626265849_f8b3083933b7ce6c9254.pdf', 'administrator administrator', '', '2021-07-14', 'administrator administrator', '2021-07-14', '', '', '0000-00-00', '', NULL, 1, 0, 1, 1, '2021-07-14 13:33:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_closure`
--
ALTER TABLE `account_closure`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `bulksms`
--
ALTER TABLE `bulksms`
  ADD PRIMARY KEY (`bulksms_id`);

--
-- Indexes for table `coas`
--
ALTER TABLE `coas`
  ADD PRIMARY KEY (`coa_id`);

--
-- Indexes for table `contribution_type`
--
ALTER TABLE `contribution_type`
  ADD PRIMARY KEY (`contribution_type_id`);

--
-- Indexes for table `cooperators`
--
ALTER TABLE `cooperators`
  ADD PRIMARY KEY (`cooperator_id`);

--
-- Indexes for table `coop_banks`
--
ALTER TABLE `coop_banks`
  ADD PRIMARY KEY (`coop_bank_id`);

--
-- Indexes for table `customer_receivables`
--
ALTER TABLE `customer_receivables`
  ADD PRIMARY KEY (`customer_receivable_id`);

--
-- Indexes for table `customer_setups`
--
ALTER TABLE `customer_setups`
  ADD PRIMARY KEY (`customer_setup_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `entry_payment_details`
--
ALTER TABLE `entry_payment_details`
  ADD PRIMARY KEY (`entry_payment_d_detail_id`);

--
-- Indexes for table `entry_payment_masters`
--
ALTER TABLE `entry_payment_masters`
  ADD PRIMARY KEY (`entry_payment_master_id`);

--
-- Indexes for table `exceptions`
--
ALTER TABLE `exceptions`
  ADD PRIMARY KEY (`exception_id`);

--
-- Indexes for table `gls`
--
ALTER TABLE `gls`
  ADD PRIMARY KEY (`gl_id`);

--
-- Indexes for table `interest_routines`
--
ALTER TABLE `interest_routines`
  ADD PRIMARY KEY (`ir_id`);

--
-- Indexes for table `journal_transfer_detail`
--
ALTER TABLE `journal_transfer_detail`
  ADD PRIMARY KEY (`jtd_id`);

--
-- Indexes for table `journal_transfer_master`
--
ALTER TABLE `journal_transfer_master`
  ADD PRIMARY KEY (`jtm_id`);

--
-- Indexes for table `journal_vouchers`
--
ALTER TABLE `journal_vouchers`
  ADD PRIMARY KEY (`journal_id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `loan_applications`
--
ALTER TABLE `loan_applications`
  ADD PRIMARY KEY (`loan_app_id`);

--
-- Indexes for table `loan_exceptions`
--
ALTER TABLE `loan_exceptions`
  ADD PRIMARY KEY (`loan_exception_id`);

--
-- Indexes for table `loan_guarantors`
--
ALTER TABLE `loan_guarantors`
  ADD PRIMARY KEY (`loan_guarantor_id`);

--
-- Indexes for table `loan_repayments`
--
ALTER TABLE `loan_repayments`
  ADD PRIMARY KEY (`lr_id`);

--
-- Indexes for table `loan_setups`
--
ALTER TABLE `loan_setups`
  ADD PRIMARY KEY (`loan_setup_id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `mail_receivers`
--
ALTER TABLE `mail_receivers`
  ADD PRIMARY KEY (`mail_receiver_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `payable_details`
--
ALTER TABLE `payable_details`
  ADD PRIMARY KEY (`payable_detail_id`);

--
-- Indexes for table `payable_masters`
--
ALTER TABLE `payable_masters`
  ADD PRIMARY KEY (`payable_master_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_carts`
--
ALTER TABLE `payment_carts`
  ADD PRIMARY KEY (`payment_cart_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`pd_id`);

--
-- Indexes for table `payroll_groups`
--
ALTER TABLE `payroll_groups`
  ADD PRIMARY KEY (`pg_id`);

--
-- Indexes for table `policy_configs`
--
ALTER TABLE `policy_configs`
  ADD PRIMARY KEY (`policy_config_id`);

--
-- Indexes for table `receipt_detail`
--
ALTER TABLE `receipt_detail`
  ADD PRIMARY KEY (`rd_id`);

--
-- Indexes for table `receipt_master`
--
ALTER TABLE `receipt_master`
  ADD PRIMARY KEY (`rm_id`);

--
-- Indexes for table `reconciliation`
--
ALTER TABLE `reconciliation`
  ADD PRIMARY KEY (`re_id`);

--
-- Indexes for table `saving_variations`
--
ALTER TABLE `saving_variations`
  ADD PRIMARY KEY (`saving_variation_id`);

--
-- Indexes for table `schedule_masters`
--
ALTER TABLE `schedule_masters`
  ADD PRIMARY KEY (`schedule_master_id`);

--
-- Indexes for table `schedule_master_details`
--
ALTER TABLE `schedule_master_details`
  ADD PRIMARY KEY (`schedule_master_detail_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `temp_loan_repayment`
--
ALTER TABLE `temp_loan_repayment`
  ADD PRIMARY KEY (`temp_lr_id`);

--
-- Indexes for table `temp_payment_details`
--
ALTER TABLE `temp_payment_details`
  ADD PRIMARY KEY (`temp_pd_id`);

--
-- Indexes for table `third_party_payment_entries`
--
ALTER TABLE `third_party_payment_entries`
  ADD PRIMARY KEY (`third_party_payment_entry_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`email`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_closure`
--
ALTER TABLE `account_closure`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bulksms`
--
ALTER TABLE `bulksms`
  MODIFY `bulksms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coas`
--
ALTER TABLE `coas`
  MODIFY `coa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `contribution_type`
--
ALTER TABLE `contribution_type`
  MODIFY `contribution_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cooperators`
--
ALTER TABLE `cooperators`
  MODIFY `cooperator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coop_banks`
--
ALTER TABLE `coop_banks`
  MODIFY `coop_bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_receivables`
--
ALTER TABLE `customer_receivables`
  MODIFY `customer_receivable_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_setups`
--
ALTER TABLE `customer_setups`
  MODIFY `customer_setup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `entry_payment_details`
--
ALTER TABLE `entry_payment_details`
  MODIFY `entry_payment_d_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `entry_payment_masters`
--
ALTER TABLE `entry_payment_masters`
  MODIFY `entry_payment_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exceptions`
--
ALTER TABLE `exceptions`
  MODIFY `exception_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gls`
--
ALTER TABLE `gls`
  MODIFY `gl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `interest_routines`
--
ALTER TABLE `interest_routines`
  MODIFY `ir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `journal_transfer_detail`
--
ALTER TABLE `journal_transfer_detail`
  MODIFY `jtd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `journal_transfer_master`
--
ALTER TABLE `journal_transfer_master`
  MODIFY `jtm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `journal_vouchers`
--
ALTER TABLE `journal_vouchers`
  MODIFY `journal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loan_applications`
--
ALTER TABLE `loan_applications`
  MODIFY `loan_app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loan_exceptions`
--
ALTER TABLE `loan_exceptions`
  MODIFY `loan_exception_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loan_guarantors`
--
ALTER TABLE `loan_guarantors`
  MODIFY `loan_guarantor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `loan_repayments`
--
ALTER TABLE `loan_repayments`
  MODIFY `lr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `loan_setups`
--
ALTER TABLE `loan_setups`
  MODIFY `loan_setup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mail_receivers`
--
ALTER TABLE `mail_receivers`
  MODIFY `mail_receiver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payable_details`
--
ALTER TABLE `payable_details`
  MODIFY `payable_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payable_masters`
--
ALTER TABLE `payable_masters`
  MODIFY `payable_master_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_carts`
--
ALTER TABLE `payment_carts`
  MODIFY `payment_cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `payroll_groups`
--
ALTER TABLE `payroll_groups`
  MODIFY `pg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `policy_configs`
--
ALTER TABLE `policy_configs`
  MODIFY `policy_config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `receipt_detail`
--
ALTER TABLE `receipt_detail`
  MODIFY `rd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `receipt_master`
--
ALTER TABLE `receipt_master`
  MODIFY `rm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reconciliation`
--
ALTER TABLE `reconciliation`
  MODIFY `re_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `saving_variations`
--
ALTER TABLE `saving_variations`
  MODIFY `saving_variation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedule_masters`
--
ALTER TABLE `schedule_masters`
  MODIFY `schedule_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedule_master_details`
--
ALTER TABLE `schedule_master_details`
  MODIFY `schedule_master_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `temp_loan_repayment`
--
ALTER TABLE `temp_loan_repayment`
  MODIFY `temp_lr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `temp_payment_details`
--
ALTER TABLE `temp_payment_details`
  MODIFY `temp_pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `third_party_payment_entries`
--
ALTER TABLE `third_party_payment_entries`
  MODIFY `third_party_payment_entry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `withdraw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
