-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2017 at 07:36 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_passpod`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_message`
--

CREATE TABLE `additional_message` (
  `SERVER_ID` varchar(20) NOT NULL,
  `MESSAGE_CONTENT` varchar(160) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_code` varchar(50) NOT NULL,
  `agent_id` varchar(50) NOT NULL,
  `id_type` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `office_phone` varchar(20) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `contact_phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `commission_pct` decimal(18,2) DEFAULT NULL,
  `join_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `account_manager` varchar(100) DEFAULT NULL,
  `contract_no` varchar(100) DEFAULT NULL,
  `payment_note` varchar(100) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `bank_acc_no` varchar(50) DEFAULT NULL,
  `bank_acc_name` varchar(50) DEFAULT NULL,
  `cobrand_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `asset_id` varchar(50) NOT NULL,
  `asset_name` varchar(100) DEFAULT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `purchase_price` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `cobrand_id` varchar(50) DEFAULT NULL,
  `dealer_id` varchar(50) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `event_note` varchar(200) DEFAULT NULL,
  `warehouse` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`asset_id`, `asset_name`, `purchase_date`, `supplier`, `purchase_price`, `status`, `cobrand_id`, `dealer_id`, `event_date`, `event_note`, `warehouse`) VALUES
('SB10002', 'Modem', '2017-11-26 00:00:00', 'simgo', 100000, '1', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cobrand`
--

CREATE TABLE `cobrand` (
  `cobrand_id` varchar(20) NOT NULL,
  `cobrand_name` varchar(100) NOT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `deposit` decimal(20,0) NOT NULL,
  `ar` decimal(20,0) NOT NULL,
  `sms_internal_reply` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(50) DEFAULT NULL,
  `country_region` varchar(50) DEFAULT NULL,
  `selling_price` decimal(18,2) DEFAULT NULL,
  `cost` decimal(18,2) DEFAULT NULL,
  `country_rank` int(11) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `vendor_price_plan` varchar(50) DEFAULT NULL,
  `offset_time` int(11) DEFAULT NULL,
  `iso_code` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `country_region`, `selling_price`, `cost`, `country_rank`, `note`, `status`, `vendor_price_plan`, `offset_time`, `iso_code`) VALUES
(2, 'Singapore', 'Asia', '45000.00', '2.00', NULL, NULL, 'Active', NULL, -8, 'SG');

-- --------------------------------------------------------

--
-- Table structure for table `country_iso`
--

CREATE TABLE `country_iso` (
  `country_code` varchar(50) NOT NULL,
  `iso_code` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courier`
--

CREATE TABLE `courier` (
  `courier_id` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `dealer_id` varchar(20) NOT NULL,
  `dealer_name` varchar(100) NOT NULL,
  `cobrand_id` varchar(20) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `deposit` decimal(20,0) NOT NULL,
  `ar` decimal(20,0) NOT NULL,
  `transaction_type` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_log`
--

CREATE TABLE `email_log` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `mail_date` datetime DEFAULT NULL,
  `mail_to` varchar(100) DEFAULT NULL,
  `mail_subject` varchar(200) DEFAULT NULL,
  `mail_content` varchar(2000) DEFAULT NULL,
  `mail_response` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdis_parameter`
--

CREATE TABLE `mdis_parameter` (
  `id` int(5) NOT NULL,
  `parameter` varchar(30) DEFAULT NULL,
  `value1` varchar(30) DEFAULT NULL,
  `value2` varchar(30) DEFAULT NULL,
  `value3` varchar(30) DEFAULT NULL,
  `value4` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdis_parameter`
--

INSERT INTO `mdis_parameter` (`id`, `parameter`, `value1`, `value2`, `value3`, `value4`) VALUES
(1, 'kurs', '13500', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mutasibcabisnis`
--

CREATE TABLE `mutasibcabisnis` (
  `NoUrut` int(11) NOT NULL,
  `NoRekening` varchar(15) DEFAULT NULL,
  `TanggalBCA` varchar(30) DEFAULT NULL,
  `Keterangan` varchar(400) DEFAULT NULL,
  `Cabang` varchar(10) DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `DbCr` varchar(2) DEFAULT NULL,
  `SaldoAkhir` float DEFAULT NULL,
  `TanggalTarikan` datetime DEFAULT NULL,
  `NamaRekeningTransfer` varchar(400) DEFAULT NULL,
  `NoTiket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_asset`
--

CREATE TABLE `order_asset` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `asset_id` varchar(50) NOT NULL,
  `assigned_date` datetime NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `upload_status` varchar(20) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `return_remarks` varchar(300) DEFAULT NULL,
  `vendor_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_country_summary`
--

CREATE TABLE `order_country_summary` (
  `id` int(11) NOT NULL,
  `rent_year_month` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `date_1` decimal(18,4) DEFAULT NULL,
  `date_2` decimal(18,4) DEFAULT NULL,
  `date_3` decimal(18,4) DEFAULT NULL,
  `date_4` decimal(18,4) DEFAULT NULL,
  `date_5` decimal(18,4) DEFAULT NULL,
  `date_6` decimal(18,4) DEFAULT NULL,
  `date_7` decimal(18,4) DEFAULT NULL,
  `date_8` decimal(18,4) DEFAULT NULL,
  `date_9` decimal(18,4) DEFAULT NULL,
  `date_10` decimal(18,4) DEFAULT NULL,
  `date_11` decimal(18,4) DEFAULT NULL,
  `date_12` decimal(18,4) DEFAULT NULL,
  `date_13` decimal(18,4) DEFAULT NULL,
  `date_14` decimal(18,4) DEFAULT NULL,
  `date_15` decimal(18,4) DEFAULT NULL,
  `date_16` decimal(18,4) DEFAULT NULL,
  `date_17` decimal(18,4) DEFAULT NULL,
  `date_18` decimal(18,4) DEFAULT NULL,
  `date_19` decimal(18,4) DEFAULT NULL,
  `date_20` decimal(18,4) DEFAULT NULL,
  `date_21` decimal(18,4) DEFAULT NULL,
  `date_22` decimal(18,4) DEFAULT NULL,
  `date_23` decimal(18,4) DEFAULT NULL,
  `date_24` decimal(18,4) DEFAULT NULL,
  `date_25` decimal(18,4) DEFAULT NULL,
  `date_26` decimal(18,4) DEFAULT NULL,
  `date_27` decimal(18,4) DEFAULT NULL,
  `date_28` decimal(18,4) DEFAULT NULL,
  `date_29` decimal(18,4) DEFAULT NULL,
  `date_30` decimal(18,4) DEFAULT NULL,
  `date_31` decimal(18,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_line` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `selling_unit_price` decimal(18,2) DEFAULT NULL,
  `selling_amount` decimal(18,2) DEFAULT NULL,
  `estimated_cost` decimal(18,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `upload_status` varchar(20) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `order_line`, `country_name`, `start_date`, `end_date`, `days`, `selling_unit_price`, `selling_amount`, `estimated_cost`, `status`, `upload_status`, `upload_date`) VALUES
(1, 2, 1, 'Singapore', '2017-12-21 00:00:00', '2017-12-21 00:00:00', 1, '45000.00', '45000.00', '27000.00', 'New', NULL, NULL),
(6, 2, 2, 'Singapore', '2017-12-22 00:00:00', '2017-12-25 00:00:00', 4, '45000.00', '180000.00', '108000.00', 'New', NULL, NULL),
(7, 2, 3, 'Singapore', '2017-12-26 00:00:00', '2017-12-27 00:00:00', 2, '45000.00', '90000.00', '54000.00', 'New', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail_country`
--

CREATE TABLE `order_detail_country` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_line` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `iso_code` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_event`
--

CREATE TABLE `order_event` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `event_name` varchar(200) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_event`
--

INSERT INTO `order_event` (`id`, `order_id`, `event_name`, `event_date`, `username`) VALUES
(1, 2, 'New Order', '2017-12-20 15:23:37', 'adit');

-- --------------------------------------------------------

--
-- Table structure for table `order_head`
--

CREATE TABLE `order_head` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `cobrand_id` varchar(50) DEFAULT NULL,
  `dealer_id` varchar(50) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `order_status` varchar(20) DEFAULT NULL,
  `order_source` varchar(50) DEFAULT NULL,
  `order_priority` varchar(50) DEFAULT NULL,
  `order_quantity` int(11) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `delivery_address` varchar(400) DEFAULT NULL,
  `delivery_kecamatan` varchar(50) DEFAULT NULL,
  `delivery_kelurahan` varchar(50) DEFAULT NULL,
  `delivery_city` varchar(30) DEFAULT NULL,
  `delivery_province` varchar(50) DEFAULT NULL,
  `delivery_zip` varchar(10) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `contact_wa` varchar(20) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `bank_acc_no` varchar(50) DEFAULT NULL,
  `bank_acc_name` varchar(200) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `deposit_amount` decimal(18,2) DEFAULT NULL,
  `admin_fee` decimal(18,2) DEFAULT NULL,
  `deposit_status` varchar(50) DEFAULT NULL,
  `discount` decimal(18,2) DEFAULT NULL,
  `total_amount` decimal(18,2) NOT NULL,
  `payment_id` varchar(50) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_channel` varchar(50) DEFAULT NULL,
  `payment_amount` decimal(18,2) DEFAULT NULL,
  `payment_note` varchar(200) DEFAULT NULL,
  `agent_code` varchar(50) DEFAULT NULL,
  `order_note` varchar(200) DEFAULT NULL,
  `delivery_courier` varchar(50) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `delivery_note` varchar(200) DEFAULT NULL,
  `received_note` varchar(200) DEFAULT NULL,
  `return_address` varchar(400) DEFAULT NULL,
  `return_kelurahan` varchar(50) DEFAULT NULL,
  `return_kecamatan` varchar(50) DEFAULT NULL,
  `return_city` varchar(50) DEFAULT NULL,
  `return_province` varchar(50) DEFAULT NULL,
  `return_zip` varchar(5) DEFAULT NULL,
  `return_courier` varchar(50) DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `return_note` varchar(200) DEFAULT NULL,
  `return_print_flag` varchar(10) DEFAULT NULL,
  `print_flag` varchar(10) DEFAULT NULL,
  `trip_feedback` varchar(20) DEFAULT NULL,
  `trip_feedback_note` varchar(2000) DEFAULT NULL,
  `customer_note` varchar(2000) DEFAULT NULL,
  `know_from` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_head`
--

INSERT INTO `order_head` (`id`, `order_id`, `cobrand_id`, `dealer_id`, `order_date`, `order_status`, `order_source`, `order_priority`, `order_quantity`, `customer_name`, `delivery_address`, `delivery_kecamatan`, `delivery_kelurahan`, `delivery_city`, `delivery_province`, `delivery_zip`, `contact_phone`, `contact_wa`, `email_address`, `bank_name`, `bank_acc_no`, `bank_acc_name`, `payment_method`, `deposit_amount`, `admin_fee`, `deposit_status`, `discount`, `total_amount`, `payment_id`, `payment_date`, `payment_channel`, `payment_amount`, `payment_note`, `agent_code`, `order_note`, `delivery_courier`, `delivery_date`, `delivery_note`, `received_note`, `return_address`, `return_kelurahan`, `return_kecamatan`, `return_city`, `return_province`, `return_zip`, `return_courier`, `return_date`, `return_note`, `return_print_flag`, `print_flag`, `trip_feedback`, `trip_feedback_note`, `customer_note`, `know_from`) VALUES
(2, 'WB500001', NULL, NULL, '2017-12-20 15:23:37', 'New', 'Walk In', 'Very Urgent', 1, 'Aditya Renaldi', 'Cirebon', 'Talun', 'Wanasaba', 'Cirebon', 'West Java', '45133', '081221432980', '081221432980', 'aditrenaldi8@gmail.com', 'BCA', '08123456798', 'Aditya Renaldi', 'Transfer', '500000.00', '25000.00', NULL, '0.00', '840000.00', NULL, NULL, NULL, NULL, NULL, 'PASS', 'sangat urgent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

CREATE TABLE `order_payment` (
  `id` int(11) NOT NULL,
  `trx_id` varchar(50) NOT NULL,
  `trx_date` datetime NOT NULL,
  `order_id` int(11) NOT NULL,
  `internal_id` varchar(200) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `from_bank` varchar(50) DEFAULT NULL,
  `amount` decimal(18,2) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `email_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_usage`
--

CREATE TABLE `order_usage` (
  `id` int(11) NOT NULL,
  `usage_date` datetime NOT NULL,
  `asset_id` varchar(20) NOT NULL,
  `usage_kb` decimal(18,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_usage_summary`
--

CREATE TABLE `order_usage_summary` (
  `id` int(11) NOT NULL,
  `usage_year_month` int(11) NOT NULL,
  `asset_id` varchar(50) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `date_1` decimal(18,4) DEFAULT NULL,
  `date_2` decimal(18,4) DEFAULT NULL,
  `date_3` decimal(18,4) DEFAULT NULL,
  `date_4` decimal(18,4) DEFAULT NULL,
  `date_5` decimal(18,4) DEFAULT NULL,
  `date_6` decimal(18,4) DEFAULT NULL,
  `date_7` decimal(18,4) DEFAULT NULL,
  `date_8` decimal(18,4) DEFAULT NULL,
  `date_9` decimal(18,4) DEFAULT NULL,
  `date_10` decimal(18,4) DEFAULT NULL,
  `date_11` decimal(18,4) DEFAULT NULL,
  `date_12` decimal(18,4) DEFAULT NULL,
  `date_13` decimal(18,4) DEFAULT NULL,
  `date_14` decimal(18,4) DEFAULT NULL,
  `date_15` decimal(18,4) DEFAULT NULL,
  `date_16` decimal(18,4) DEFAULT NULL,
  `date_17` decimal(18,4) DEFAULT NULL,
  `date_18` decimal(18,4) DEFAULT NULL,
  `date_19` decimal(18,4) DEFAULT NULL,
  `date_20` decimal(18,4) DEFAULT NULL,
  `date_21` decimal(18,4) DEFAULT NULL,
  `date_22` decimal(18,4) DEFAULT NULL,
  `date_23` decimal(18,4) DEFAULT NULL,
  `date_24` decimal(18,4) DEFAULT NULL,
  `date_25` decimal(18,4) DEFAULT NULL,
  `date_26` decimal(18,4) DEFAULT NULL,
  `date_27` decimal(18,4) DEFAULT NULL,
  `date_28` decimal(18,4) DEFAULT NULL,
  `date_29` decimal(18,4) DEFAULT NULL,
  `date_30` decimal(18,4) DEFAULT NULL,
  `date_31` decimal(18,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `session_name` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `session_level` varchar(20) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `blocked` varchar(1) DEFAULT NULL,
  `failed` int(11) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `support_id` varchar(30) NOT NULL,
  `asset_id` varchar(30) DEFAULT NULL,
  `order_id` varchar(30) DEFAULT NULL,
  `report_date` datetime DEFAULT NULL,
  `problem_type` varchar(30) DEFAULT NULL,
  `problem` varchar(2000) DEFAULT NULL,
  `support_solution` varchar(2000) DEFAULT NULL,
  `vendor_solution` varchar(2000) DEFAULT NULL,
  `vendor_solve_date` datetime DEFAULT NULL,
  `remarks` varchar(2000) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `input_by` varchar(50) DEFAULT NULL,
  `closed_by` varchar(50) DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test1` varchar(2000) DEFAULT NULL,
  `test2` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usersession` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userlevel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocked` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `usersession`, `userlevel`, `password`, `blocked`, `failed`, `lastlogin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'adit', 'adit', 'developer', '$2y$10$ricH9E/EgeE91ESsRsSWruGrCBaGQBDAhpXyjLEY4SxdjTQV1siRG', NULL, NULL, NULL, 'vbJmkfJd7OFPrl0IrSF9Ly9V3dWDAhYdRWiriFAaT949OyJZH3NNURl38goG', '2017-12-05 20:58:12', '2017-12-05 20:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `vd_data`
--

CREATE TABLE `vd_data` (
  `id` int(11) NOT NULL,
  `vd_name` varchar(20) NOT NULL,
  `dealer_id` varchar(20) NOT NULL,
  `bank_id` varchar(20) NOT NULL,
  `autorisation_code` varchar(20) NOT NULL,
  `settlement_date` int(11) DEFAULT NULL,
  `next_transaction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vd_sms_incoming`
--

CREATE TABLE `vd_sms_incoming` (
  `transid` varchar(50) NOT NULL,
  `msisdn` varchar(20) NOT NULL,
  `trx_time` datetime NOT NULL,
  `sms` varchar(200) NOT NULL,
  `sms_reply` varchar(400) DEFAULT NULL,
  `transaction_id` varchar(10) DEFAULT NULL,
  `processed` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_message`
--
ALTER TABLE `additional_message`
  ADD PRIMARY KEY (`SERVER_ID`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_code`);

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `cobrand`
--
ALTER TABLE `cobrand`
  ADD PRIMARY KEY (`cobrand_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `country_iso`
--
ALTER TABLE `country_iso`
  ADD PRIMARY KEY (`country_code`);

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`courier_id`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`dealer_id`);

--
-- Indexes for table `email_log`
--
ALTER TABLE `email_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdis_parameter`
--
ALTER TABLE `mdis_parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasibcabisnis`
--
ALTER TABLE `mutasibcabisnis`
  ADD PRIMARY KEY (`NoUrut`);

--
-- Indexes for table `order_asset`
--
ALTER TABLE `order_asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_country_summary`
--
ALTER TABLE `order_country_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail_country`
--
ALTER TABLE `order_detail_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_event`
--
ALTER TABLE `order_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_head`
--
ALTER TABLE `order_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trx_id` (`trx_id`);

--
-- Indexes for table `order_usage`
--
ALTER TABLE `order_usage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_usage_summary`
--
ALTER TABLE `order_usage_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`support_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_usersession_unique` (`usersession`);

--
-- Indexes for table `vd_data`
--
ALTER TABLE `vd_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdis_parameter`
--
ALTER TABLE `mdis_parameter`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mutasibcabisnis`
--
ALTER TABLE `mutasibcabisnis`
  MODIFY `NoUrut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_asset`
--
ALTER TABLE `order_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_country_summary`
--
ALTER TABLE `order_country_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_detail_country`
--
ALTER TABLE `order_detail_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_event`
--
ALTER TABLE `order_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_head`
--
ALTER TABLE `order_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_payment`
--
ALTER TABLE `order_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_usage`
--
ALTER TABLE `order_usage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_usage_summary`
--
ALTER TABLE `order_usage_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vd_data`
--
ALTER TABLE `vd_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
