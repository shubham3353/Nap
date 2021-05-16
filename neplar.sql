-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 14, 2021 at 10:40 AM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neplar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_mobile` varchar(20) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `profile_img` varchar(255) NOT NULL,
  `admin_auth` int(11) NOT NULL DEFAULT '1001001'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_mobile`, `admin_password`, `profile_img`, `admin_auth`) VALUES
(3, 'Siddhu Singh', 'siddhukol@gmail.com', '', 'siddhu@7879', 'assets/admin/dist/img/pp.jfif', 1001001),
(4, 'ashu keshri', 'ashukeshri786@gmail.com', '', '123456', 'assets/admin/dist/img/avatar5.png', 1001001);

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_paid_percentage`
--

CREATE TABLE `affiliate_paid_percentage` (
  `id` int(11) NOT NULL,
  `set_percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affiliate_paid_percentage`
--

INSERT INTO `affiliate_paid_percentage` (`id`, `set_percentage`) VALUES
(1, 25);

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_query`
--

CREATE TABLE `affiliate_query` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `msg` text NOT NULL,
  `answer` text NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affiliate_query`
--

INSERT INTO `affiliate_query` (`id`, `user_id`, `msg`, `answer`, `user_status`) VALUES
(1, 1, 'Payment has not recived by  your side sir..!', 'Please. enter your bank details first in your profile section...', 2),
(2, 1, 'affilate code is not working..!!1', 'You got your solution within 24hrs...!!    yes', 2),
(3, 4, 'hi', 'You got your solution within 24hrs...!!', 404),
(4, 3, 'hello h r u', 'You got your solution within 24hrs...!!', 0);

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_transaction_details`
--

CREATE TABLE `affiliate_transaction_details` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `affiliate_code` bigint(20) NOT NULL,
  `purchased_user_name` varchar(1024) NOT NULL,
  `date` varchar(255) NOT NULL,
  `plan` varchar(255) NOT NULL,
  `plan_amt` bigint(20) NOT NULL,
  `given_percentage` int(11) NOT NULL,
  `given_amt` decimal(12,2) NOT NULL,
  `tran_status` int(11) NOT NULL DEFAULT '0',
  `pay_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affiliate_transaction_details`
--

INSERT INTO `affiliate_transaction_details` (`id`, `user_id`, `affiliate_code`, `purchased_user_name`, `date`, `plan`, `plan_amt`, `given_percentage`, `given_amt`, `tran_status`, `pay_description`) VALUES
(1, 1, 973301606390683, 'Siddhu Singh', '2020-12-21 15:31:31', 'Advance', 999, 20, 199.80, 0, ''),
(2, 1, 973301606390683, 'naman', '2020-12-21 15:31:31', 'Professional', 2999, 20, 599.80, 0, ''),
(3, 1, 973301606390683, 'rohit', '2020-12-23 16:20:00', 'Advance', 999, 20, 199.80, 0, ''),
(5, 2, 216851606806069, 'arup', '2020-12-23 06:43:25', 'Professional', 2999, 33, 989.67, 0, ''),
(6, 2, 216851606806069, 'arup', '2020-12-23 06:45:31', 'Professional', 2999, 33, 989.67, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_users`
--

CREATE TABLE `affiliate_users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `user_code` bigint(20) NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `phone` bigint(20) NOT NULL,
  `terms_condition` int(11) NOT NULL DEFAULT '0',
  `profile_img` varchar(1024) NOT NULL DEFAULT 'assets/admin/dist/img/avatar5.png',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `education` text NOT NULL,
  `country` text NOT NULL,
  `state` text NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `pan_no` text NOT NULL,
  `bank_no` text NOT NULL,
  `bank_name` varchar(1024) NOT NULL,
  `ifsc_code` text NOT NULL,
  `branch_code` text NOT NULL,
  `upi_address` text NOT NULL,
  `feedback` text NOT NULL,
  `paid_percent` int(11) NOT NULL,
  `paid_amt_user` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affiliate_users`
--

INSERT INTO `affiliate_users` (`id`, `name`, `user_code`, `password`, `email`, `phone`, `terms_condition`, `profile_img`, `user_status`, `education`, `country`, `state`, `dob`, `address`, `pan_no`, `bank_no`, `bank_name`, `ifsc_code`, `branch_code`, `upi_address`, `feedback`, `paid_percent`, `paid_amt_user`) VALUES
(1, 'ashu bhai', 973301606390683, '123456', 'ashukeshri786@gmail.com', 7024035562, 1, 'http://localhost/mainsite/affiliate_user_upload/back3.jpg', 0, '', '', '', '2020-11-12', '', '', '', '', '', '', '', 'Customer Support is not Good ..!!,Difficult to understand..!!', 33, 0),
(2, 'Ramesh ', 216851606806069, 'ramesh123', 'ramesh@gmail.com', 7024045572, 1, 'assets/admin/dist/img/avatar5.png', 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 33, 0),
(3, 'loka', 793031608545468, 'loka@123', 'loka@gmail.com', 1234567891, 1, 'assets/admin/dist/img/avatar5.png', 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 33, 0),
(6, 'na', 292981608547685, 'na@123', 'na@gmail.com', 1123456789, 1, 'assets/admin/dist/img/avatar5.png', 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 33, 0),
(7, 'monu', 268731608548883, 'monu@1234', 'monu@gmail.com', 1134567892, 1, 'assets/admin/dist/img/avatar5.png', 1, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 33, 0),
(8, 'car', 445691610207036, '123456', 'ho@gmail.com', 9578236558, 1, 'assets/admin/dist/img/avatar5.png', 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_land`
--

CREATE TABLE `agricultural_land` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agricultural_land`
--

INSERT INTO `agricultural_land` (`id`, `user_id`, `group_name`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'group_2', 'port_4', 'Assets', 'Agricultural Land', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'group_2', 'port_3', 'Assets', 'Agricultural Land', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00),
(3, 2, 'not_my_grp', 'aaa', 'Assets', 'Agricultural Land', 'Sell', '2020-10-06 00:00:00', 67.00, 89.00, 23.00, 45.00);

-- --------------------------------------------------------

--
-- Table structure for table `all_assets`
--

CREATE TABLE `all_assets` (
  `id` int(11) NOT NULL,
  `Assets` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_assets`
--

INSERT INTO `all_assets` (`id`, `Assets`) VALUES
(1, 'Investment'),
(2, 'Insurance'),
(3, 'Assets'),
(4, 'Emergency Fund'),
(5, 'Liability');

-- --------------------------------------------------------

--
-- Table structure for table `appliance_loan`
--

CREATE TABLE `appliance_loan` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `loan_bank_name` varchar(1024) NOT NULL,
  `loan_account_no` text NOT NULL,
  `loan_start_date` date NOT NULL,
  `loan_amount` decimal(13,2) NOT NULL,
  `loan_period` bigint(20) NOT NULL,
  `loan_end_date` date NOT NULL,
  `loan_emi_amt` decimal(13,2) NOT NULL,
  `loan_emi_date` date NOT NULL,
  `loan_total_emipaid` bigint(20) NOT NULL,
  `loan_processing_fees` decimal(13,2) NOT NULL,
  `loan_downpayment_amt` decimal(13,2) NOT NULL,
  `loan_balance_amt` decimal(13,2) NOT NULL,
  `loan_pre_emi_amt` decimal(13,2) NOT NULL,
  `loan_topup_amt` decimal(13,2) NOT NULL,
  `loan_Interest_rate_type` varchar(300) NOT NULL,
  `loan_fixed_rate_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_loan`
--

INSERT INTO `appliance_loan` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `loan_bank_name`, `loan_account_no`, `loan_start_date`, `loan_amount`, `loan_period`, `loan_end_date`, `loan_emi_amt`, `loan_emi_date`, `loan_total_emipaid`, `loan_processing_fees`, `loan_downpayment_amt`, `loan_balance_amt`, `loan_pre_emi_amt`, `loan_topup_amt`, `loan_Interest_rate_type`, `loan_fixed_rate_value`) VALUES
(5, 1, 'port_1', 'Liability', 'Appliance Loan', '3', '3', '2020-10-09', 3.00, 3, '2020-10-17', 3.00, '2020-10-18', 2, 2.00, 3.00, 3.00, 3.00, 3.00, 'Fixed', 5.00),
(6, 1, 'port_2', 'Liability', 'Appliance Loan', '3', '3', '2020-10-09', 3.00, 3, '2020-10-06', 3.00, '2020-10-16', 3, 3.00, 3.00, 3.00, 3.00, 3.00, 'Floating', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `art`
--

CREATE TABLE `art` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `art`
--

INSERT INTO `art` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'Art', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'Art', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `article_heading`
--

CREATE TABLE `article_heading` (
  `id` bigint(20) NOT NULL,
  `heading` text NOT NULL,
  `img_path` text NOT NULL,
  `points` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_heading`
--

INSERT INTO `article_heading` (`id`, `heading`, `img_path`, `points`) VALUES
(1, 'Now access your Portfolio from anywhere, anytime!', 'http://localhost/mainsite/upload/ARTICLE1.jpg', '&#10004; Manage Financial Portfolio and Asset allocation.\r\n&#10004; Track multiple Assets, portfolios and multiple groups.\r\n&#10004; Simplified Personal Accounting interface.\r\n&#10004; Personal, Multiple & Family Financial management.\r\n&#10004; Manage Loan & other liabilities effortlessly.\r\n&#10004; Get detailed reports of financial portfolio management.\r\n&#10004; Edit, modify or delete of any single entry.\r\n&#10004; Safe and secured data, no Spamming.\r\n&#10004; Cloud based software to access your data instantly.\r\n&#10004; Best for Advisors, CA, Professionals.\r\n&#10004; Free Regular updates for lifetime.\r\n&#10004; Best in class personal finance software.\r\n'),
(2, 'Covers all major investments available in India. ', 'http://localhost/mainsite/upload/art.jpg', '&#10004; Stock and ETF Management.\r\n&#10004; Mutual Fund Investment.\r\n&#10004; Insurance and ULIP Plan.\r\n&#10004; National Pension Scheme or NPS.\r\n&#10004; Post Office Saving Schemes.\r\n&#10004; Fixed and Assured Return Investments.\r\n&#10004; Loan Management.\r\n&#10004; NCD, Debenture & Corporate Bonds.\r\n&#10004; Sovereign Gold Bond.\r\n&#10004; PPF, EPF, SSY, SCSS, NSC, KVP.\r\n&#10004; Assets, Emergency Fund.\r\n&#10004; Cash in Wallet, Cash in Hand.\r\n\r\n'),
(3, 'Check consolidated wealth of multiple portfolios.', 'http://localhost/mainsite/upload/ARTICLE2.jpg', '&#10004; Maintain individual, family or client portfolio.\r\n&#10004; Investor can divide portfolios in different groups.\r\n&#10004; Advisor can maintain client portfolios group wise. \r\n&#10004; Group means i.e. city wise, State wise, Age wise etc.\r\n&#10004; Instant search option for portfolio and group.\r\n&#10004; Check Consolidated wealth statement instantly.\r\n&#10004; Daily updated portfolio management software for you.\r\n&#10004; Know your exact Net Worth or Net Wealth.\r\n&#10004; Designed for Indian investors.\r\n&#10004; Covers almost all asset classes in India.\r\n&#10004; Best for Professional, Advisor & CA.\r\n&#10004; Lifetime free updates & newer versions.\r\n\r\n'),
(4, 'Update and track your portfolios on-the-go. Be up-to-date always.', 'http://localhost/mainsite/upload/p.jpg', '&#10004; Interface is perfect in Window & Mac computers.\r\n&#10004; Market data is delayed by 15 minutes.\r\n&#10004; We updates NAV, LTP after market closes.\r\n&#10004; Check your Assets, Liability, Investments.\r\n&#10004; Check Emergency Fund, Cash in Hand value.\r\n&#10004; Check Reports, Capital Gain Statement etc.\r\n&#10004; Three Plans are available. Basic version is Free.\r\n&#10004; Advance version is best for Experienced Investors.\r\n&#10004; Professional version is best for CA and Advisors.\r\n&#10004; Yearly renew your plan at minimal cost.\r\n&#10004; Use PayPal or Paytm for payment.\r\n&#10004; You can join in our Free Affiliate Program.'),
(6, 'Additional Features at no extra cost.', 'http://ashu.neplar.in/upload/ARTICLE.PNG', '&#10004; Set important dates as reminder.\r\n&#10004; Set Financial Goal and attach investments.\r\n&#10004; Set Budget and check cash flow.\r\n&#10004; Import various *pdf files directly.\r\n&#10004; Import Share Contract Note (pdf).\r\n&#10004; Import Mutual Fund Consolidated A/C Statement (pdf).\r\n&#10004; Import NPS Statement (pdf).\r\n&#10004; Import NSDL-CAS Statement (pdf).\r\n&#10004; Free Budget / Book Keeping.\r\n&#10004; Import various XL Files.\r\n&#10004; Download reports in pdf.\r\n&#10004; Check various Reports and track trend.'),
(7, 'Earn up to Rs. 50,000/- per month as our Affiliate Partner.', '', '&#10004; Our affiliate partners are earning money.\r\n&#10004; There is no capping or upper limit. Earn limitless.\r\n&#10004; Signup and enter in your personal dashboard.\r\n&#10004; You will get one unique Coupon Code.\r\n&#10004; Share your Coupon Code.\r\n&#10004; Get commission every time if anyone purchase through your Coupon Code.\r\n&#10004; Get details of your referral earnings date wise.\r\n&#10004; Get commission directly to your Bank Account.\r\n&#10004; Get notification of new offers and discount to your dashboard.\r\n&#10004; No Fees, it is Free to join in Affiliate Program.\r\n ');

-- --------------------------------------------------------

--
-- Table structure for table `bike`
--

CREATE TABLE `bike` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bike`
--

INSERT INTO `bike` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'Bike', 'Buy', '2020-10-03 00:00:00', 0.00, 0.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'Bike', 'Sell', '2020-10-03 00:00:00', 0.00, 0.00, 12.00, 12.00),
(3, 1, 'port_4', 'Assets', 'Bike', 'Sell', '2020-10-02 00:00:00', 13.00, 12.00, 13.00, 14.00),
(4, 1, 'port_3', 'Assets', 'Bike', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00),
(5, 1, 'port_1', 'Assets', 'Bike', 'Buy', '2021-03-04 00:00:00', 25000.00, 1.00, 30000.00, 50000.00);

-- --------------------------------------------------------

--
-- Table structure for table `bike_insurance`
--

CREATE TABLE `bike_insurance` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `insurance_company_name` varchar(800) NOT NULL,
  `insurance_policy_name` varchar(1024) NOT NULL,
  `insurance_policy_no` text NOT NULL,
  `insurance_value` decimal(13,2) NOT NULL,
  `insurance_policy_start_date` date NOT NULL,
  `insurance_maturity_date` date NOT NULL,
  `insurance_maturity_benifits` varchar(200) NOT NULL,
  `insurance_lockin_period` date NOT NULL,
  `insurance_premium_date` date NOT NULL,
  `insurance_premium_amt` decimal(13,2) NOT NULL,
  `insurance_frequency` varchar(300) NOT NULL,
  `insurance_nextpremium_date` date NOT NULL,
  `insurance_premium_tenure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bike_insurance`
--

INSERT INTO `bike_insurance` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `insurance_company_name`, `insurance_policy_name`, `insurance_policy_no`, `insurance_value`, `insurance_policy_start_date`, `insurance_maturity_date`, `insurance_maturity_benifits`, `insurance_lockin_period`, `insurance_premium_date`, `insurance_premium_amt`, `insurance_frequency`, `insurance_nextpremium_date`, `insurance_premium_tenure`) VALUES
(1, 1, 'port_3', 'Insurance', 'Car Insurance', 'testing', 'test', '1234no', 12.00, '2020-10-07', '2020-10-16', 'Yes', '2020-10-15', '2020-10-13', 12.00, 'Yearly', '2020-10-09', 12),
(2, 1, 'port_2', 'Insurance', 'Car Insurance', 'testing', '12', '12', 12.00, '2020-10-17', '2020-10-15', 'No', '2020-10-08', '2020-10-22', 131.00, 'Yearly', '2020-10-21', 23);

-- --------------------------------------------------------

--
-- Table structure for table `bike_loan`
--

CREATE TABLE `bike_loan` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `loan_bank_name` varchar(1024) NOT NULL,
  `loan_account_no` text NOT NULL,
  `loan_start_date` date NOT NULL,
  `loan_amount` decimal(13,2) NOT NULL,
  `loan_period` bigint(20) NOT NULL,
  `loan_end_date` date NOT NULL,
  `loan_emi_amt` decimal(13,2) NOT NULL,
  `loan_emi_date` date NOT NULL,
  `loan_total_emipaid` bigint(20) NOT NULL,
  `loan_processing_fees` decimal(13,2) NOT NULL,
  `loan_downpayment_amt` decimal(13,2) NOT NULL,
  `loan_balance_amt` decimal(13,2) NOT NULL,
  `loan_pre_emi_amt` decimal(13,2) NOT NULL,
  `loan_topup_amt` decimal(13,2) NOT NULL,
  `loan_Interest_rate_type` varchar(300) NOT NULL,
  `loan_fixed_rate_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bike_loan`
--

INSERT INTO `bike_loan` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `loan_bank_name`, `loan_account_no`, `loan_start_date`, `loan_amount`, `loan_period`, `loan_end_date`, `loan_emi_amt`, `loan_emi_date`, `loan_total_emipaid`, `loan_processing_fees`, `loan_downpayment_amt`, `loan_balance_amt`, `loan_pre_emi_amt`, `loan_topup_amt`, `loan_Interest_rate_type`, `loan_fixed_rate_value`) VALUES
(5, 1, 'port_2', 'Liability', 'Bike Loan', '22', '22', '2020-10-07', 22.00, 4, '2020-10-10', 3.00, '2020-10-18', 3, 3.00, 44.00, 4.00, 4.00, 4.00, 'Fixed', 66.00);

-- --------------------------------------------------------

--
-- Table structure for table `bond`
--

CREATE TABLE `bond` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `stock_name` varchar(255) NOT NULL,
  `stock_transaction_type` varchar(300) NOT NULL,
  `stock_broker` varchar(1024) NOT NULL,
  `stock_date` date NOT NULL,
  `stock_contract_no` text NOT NULL,
  `stock_settlement_no` text NOT NULL,
  `stock_qty` decimal(13,2) NOT NULL,
  `stock_purchase_price` decimal(13,2) NOT NULL,
  `amt_invested` decimal(13,2) NOT NULL,
  `stock_brokerage` decimal(10,2) NOT NULL,
  `stock_net_rate` decimal(13,2) NOT NULL,
  `stock_tax_value` decimal(13,2) NOT NULL,
  `stock_cgst` decimal(10,2) NOT NULL,
  `stock_sgst` decimal(10,2) NOT NULL,
  `stock_igst` decimal(10,2) NOT NULL,
  `stock_exchange_transaction` decimal(10,2) NOT NULL,
  `stock_stt` decimal(10,2) NOT NULL,
  `stock_sebi_fee` decimal(10,2) NOT NULL,
  `stock_stamp_duty` decimal(10,2) NOT NULL,
  `stock_net_amt` decimal(10,2) NOT NULL,
  `overall_gain` decimal(12,2) NOT NULL,
  `gain_percentage` decimal(12,2) NOT NULL,
  `current_value` decimal(12,2) NOT NULL,
  `holding` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bond`
--

INSERT INTO `bond` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `stock_name`, `stock_transaction_type`, `stock_broker`, `stock_date`, `stock_contract_no`, `stock_settlement_no`, `stock_qty`, `stock_purchase_price`, `amt_invested`, `stock_brokerage`, `stock_net_rate`, `stock_tax_value`, `stock_cgst`, `stock_sgst`, `stock_igst`, `stock_exchange_transaction`, `stock_stt`, `stock_sebi_fee`, `stock_stamp_duty`, `stock_net_amt`, `overall_gain`, `gain_percentage`, `current_value`, `holding`) VALUES
(1, 1, 'port_3', 'Investment', 'Bond / Corporate Bond', 'TITAGARH WAGONS LTD', 'Sell', 'DHWAJA SHARES', '2020-12-22', 'ss664', '', 33.00, 33.00, 33.00, 33.00, 33.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 33.00, 3927.00, 3966.00, 3960.00, 33.33),
(2, 1, 'port_1', 'Investment', 'Bond / Corporate Bond', 'CONSTRONICS INFRA LTD', 'Sell', 'MEHTA VAKIL & CO.', '2020-11-03', '33', '66', 66.00, 66.00, 66.00, 66.00, 66.00, 66.00, 66.00, 66.00, 66.00, 66.00, 6.00, 6.00, 6.00, 6.00, 7854.00, 7933.00, 7920.00, 66.67),
(3, 2, 'aaa', 'Investment', 'Bond / Corporate Bond', 'ZIM LABORATORIES LTD', 'Buy', 'ADROIT COMMODITIES', '2020-11-01', '', '', 10.00, 100.00, 1000.00, 5.00, 1005.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1005.00, 200.00, 20.00, 1200.00, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `bond_ltp`
--

CREATE TABLE `bond_ltp` (
  `id` bigint(20) NOT NULL,
  `stock_name` varchar(1024) NOT NULL,
  `current_price` varchar(100) NOT NULL DEFAULT '1',
  `previous_day_price` varchar(100) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bond_ltp`
--

INSERT INTO `bond_ltp` (`id`, `stock_name`, `current_price`, `previous_day_price`, `cdate`) VALUES
(2, 'ABB INDIA LTD', '120', '25', '2021-01-05 09:06:44'),
(3, 'AEGIS LOGISTICS LTD', '120', '100', '2021-01-05 09:06:44'),
(4, 'AMARA RAJA BATTERIES LTD', '120', '', '2021-01-05 09:06:44'),
(5, 'AMBALAL SARABHAI ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(6, 'HOUSING DEVELOPMENT FINANCE CORP LTD', '120', '', '2021-01-05 09:06:44'),
(7, 'ANDHRA PETROCHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(8, 'ANSAL PROPERTIES AND INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(9, 'UTIQUE ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(10, 'ARUNA HOTELS LIMITED', '120', '', '2021-01-05 09:06:44'),
(11, 'BOMBAY DYEING AND MANUFACTURING COMPANY', '120', '', '2021-01-05 09:06:44'),
(12, 'ASIAN HOTELS (NORTH) LTD', '120', '', '2021-01-05 09:06:44'),
(13, 'ATUL LTD', '120', '', '2021-01-05 09:06:44'),
(14, 'ATV PROJECTS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(15, 'AUTOLITE INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(16, 'BAJAJ ELECTRICALS LTD', '120', '', '2021-01-05 09:06:44'),
(17, 'BAJAJ HINDUSTHAN SUGAR LTD', '120', '', '2021-01-05 09:06:44'),
(18, 'FORCE MOTORS LTD', '120', '', '2021-01-05 09:06:44'),
(19, 'BAJAJ FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(20, 'BALRAMPUR CHINI MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(21, 'BANCO PRODUCTS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(22, 'CENTURY TEXTILE AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(23, 'BANNARI AMMAN SUGARS LIMITED', '120', '', '2021-01-05 09:06:44'),
(24, 'BASF INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(25, 'BATA INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(26, 'BEML LTD', '120', '', '2021-01-05 09:06:44'),
(27, 'BHARAT ELECTRONICS LTD', '120', '', '2021-01-05 09:06:44'),
(28, 'BHANSALI ENGINEERING POLYMERS LTD.', '120', '', '2021-01-05 09:06:44'),
(29, 'TATA STEEL BSL LTD', '120', '', '2021-01-05 09:06:44'),
(30, 'BIHAR SPONGE IRON LTD', '120', '', '2021-01-05 09:06:44'),
(31, 'BIRLA CABLE LTD', '120', '', '2021-01-05 09:06:44'),
(32, 'BLUE STAR LTD', '120', '', '2021-01-05 09:06:44'),
(33, 'DISA INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(34, 'BNK CAPITAL MARKETS LTD', '120', '', '2021-01-05 09:06:44'),
(35, 'BPL LTD', '120', '', '2021-01-05 09:06:44'),
(36, 'ORIENTAL AROMATICS LTD', '120', '', '2021-01-05 09:06:44'),
(37, 'CENTURY EXTRUSIONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(38, 'CESC LTD', '120', '', '2021-01-05 09:06:44'),
(39, 'CHAMBAL FERTILISERS & CHEMICALS LIMITED', '120', '', '2021-01-05 09:06:44'),
(40, 'EXIDE INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(41, 'CIPLA LTD', '120', '', '2021-01-05 09:06:44'),
(42, 'DIC INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(43, 'CRISIL LTD.', '120', '', '2021-01-05 09:06:44'),
(44, 'CG POWER AND INDUSTRIAL SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(45, 'DABUR INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(46, 'DALMIA BHARAT SUGAR AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(47, 'ARVIND LIMITED', '120', '', '2021-01-05 09:06:44'),
(48, 'BALLARPUR INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(49, 'BHARAT HEAVY ELECTRICALS LIMITED', '120', '', '2021-01-05 09:06:44'),
(50, 'HINDUSTAN PETROLEUM CORPORATION LIMITED', '120', '', '2021-01-05 09:06:44'),
(51, 'IFCI LIMITED', '120', '', '2021-01-05 09:06:44'),
(52, 'MAHANAGAR TELEPHONE NIGAM LTD', '120', '', '2021-01-05 09:06:44'),
(53, 'MANGALORE REFINERY & PETROCHEMICALS LTD. FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(54, 'CHENNAI PETROLEUM CORPORATION LIMITED', '120', '', '2021-01-05 09:06:44'),
(55, 'RELIANCE CAPITAL LIMITED', '120', '', '2021-01-05 09:06:44'),
(56, 'STATE BANK OF INDIA', '120', '', '2021-01-05 09:06:44'),
(57, 'STEEL AUTHORITY OF INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(58, 'TITAN COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(59, 'IDBI BANK LTD', '120', '', '2021-01-05 09:06:44'),
(60, 'DCW LIMITED', '120', '', '2021-01-05 09:06:44'),
(61, 'DHAMPUR SUGAR MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(62, 'DIAMINES AND CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(63, 'ELANTAS BECK INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(64, 'DR.REDDY\'S LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(65, 'E.I.D-PARRY (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(66, 'PROCTER & GAMBLE HEALTH LTD', '120', '', '2021-01-05 09:06:44'),
(67, 'ELECTROSTEEL CASTINGS LIMITED', '120', '', '2021-01-05 09:06:44'),
(68, 'ESAB INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(69, 'ESSEL PROPACK LTD', '120', '', '2021-01-05 09:06:44'),
(70, 'ESTER INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(71, 'F G P LTD', '120', '', '2021-01-05 09:06:44'),
(72, 'PH CAPITAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(73, 'FINOLEX CABLES LTD', '120', '', '2021-01-05 09:06:44'),
(74, 'JOHN COCKERILL INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(75, 'UFLEX LTD', '120', '', '2021-01-05 09:06:44'),
(76, 'FOSECO INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(77, 'GOLDEN TOBACCO LTD.', '120', '', '2021-01-05 09:06:44'),
(78, 'GANESH BENZOPLAST LTD', '120', '', '2021-01-05 09:06:44'),
(79, 'GARDEN SILK MILLS LIMITED', '120', '', '2021-01-05 09:06:44'),
(80, 'METROGLOBAL LTD', '120', '', '2021-01-05 09:06:44'),
(81, 'GODFREY PHILLIPS INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(82, 'GODREJ INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(83, 'KANSAI NEROLAC PAINTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(84, 'GOODRICKE GROUP LTD.', '120', '', '2021-01-05 09:06:44'),
(85, 'GOODYEAR INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(86, 'GTN INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(87, 'GHCL LIMITED', '120', '', '2021-01-05 09:06:44'),
(88, 'GFL LTD', '120', '', '2021-01-05 09:06:44'),
(89, 'GUJARAT LEASE FINANCING LTD', '120', '', '2021-01-05 09:06:44'),
(90, 'HCL INFOSYSTEMS LIMITED', '120', '', '2021-01-05 09:06:44'),
(91, 'HDFC BANK LIMITED', '120', '', '2021-01-05 09:06:44'),
(92, 'HERO MOTOCORP LTD', '120', '', '2021-01-05 09:06:44'),
(93, 'HFCL LTD', '120', '', '2021-01-05 09:06:44'),
(94, 'HIMADRI SPECIALITY CHEMICAL LTD', '120', '', '2021-01-05 09:06:44'),
(95, 'HINDUSTAN CONSTRUCTION COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(96, 'HINDUSTAN OIL EXPLORATION COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(97, 'HSIL LTD', '120', '', '2021-01-05 09:06:44'),
(98, 'HINDUSTAN ZINC LTD', '120', '', '2021-01-05 09:06:44'),
(99, 'NXTDIGITAL LTD', '120', '', '2021-01-05 09:06:44'),
(100, 'HMT LTD', '120', '', '2021-01-05 09:06:44'),
(101, 'PRAG BOSIMI SYNTHETICS LTD', '120', '', '2021-01-05 09:06:44'),
(102, 'HLV LTD', '120', '', '2021-01-05 09:06:44'),
(103, 'IG PETROCHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(104, 'INDIA GLYCOLS LTD.', '120', '', '2021-01-05 09:06:44'),
(105, 'INDIA LEASE DEVELOPMENT ORD SHS', '120', '', '2021-01-05 09:06:44'),
(106, 'MARGO FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(107, 'INDO RAMA SYNTHETICS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(108, 'INFOSYS LTD', '120', '', '2021-01-05 09:06:44'),
(109, 'INGERSOLL RAND INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(110, 'INSILCO LTD', '120', '', '2021-01-05 09:06:44'),
(111, 'INTERNATIONAL TRAVEL HOUSE LTD.', '120', '', '2021-01-05 09:06:44'),
(112, 'ION EXCHANGE (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(113, 'AGRO TECH FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(114, 'JAIN IRRIGATION SYSTEMS LIMITED', '120', '', '2021-01-05 09:06:44'),
(115, 'JASCH INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(116, 'JCT LTD', '120', '', '2021-01-05 09:06:44'),
(117, 'JINDAL POLY FILMS LTD', '120', '', '2021-01-05 09:06:44'),
(118, 'JSW STEEL LIMITED FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(119, 'UMANG DAIRIES LTD', '120', '', '2021-01-05 09:06:44'),
(120, 'KAJARIA CERAMICS LIMITED', '120', '', '2021-01-05 09:06:44'),
(121, 'KAKATIYA CEMENT SUGAR AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(122, 'KALYANI STEELS LIMITED', '120', '', '2021-01-05 09:06:44'),
(123, 'WHIRLPOOL OF INDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(124, 'KG DENIM LTD', '120', '', '2021-01-05 09:06:44'),
(125, 'KINETIC ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(126, 'KIRLOSKAR BROTHERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(127, 'KIRLOSKAR INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(128, 'KIRLOSKAR FERROUS INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(129, 'ENVAIR ELECTRODYNE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(130, 'KOTAK MAHINDRA BANK LTD FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(131, 'KSB LTD', '120', '', '2021-01-05 09:06:44'),
(132, 'LG BALAKRISHNAN & BROS LTD', '120', '', '2021-01-05 09:06:44'),
(133, 'TRENT LTD', '120', '', '2021-01-05 09:06:44'),
(134, 'LAKSHMI MACHINE WORKS LTD', '120', '', '2021-01-05 09:06:44'),
(135, 'LIC HOUSING FINANCE LIMITED', '120', '', '2021-01-05 09:06:44'),
(136, 'UTTAM VALUE STEELS LTD', '120', '', '2021-01-05 09:06:44'),
(137, 'LUPIN LIMITED', '120', '', '2021-01-05 09:06:44'),
(138, 'LYKA LABS LIMITED', '120', '', '2021-01-05 09:06:44'),
(139, 'RAMCO CEMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(140, 'MAFATLAL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(141, 'MAHARASHTRA SEAMLESS LTD', '120', '', '2021-01-05 09:06:44'),
(142, 'MAHARASHTRA SCOOTERS LTD.', '120', '', '2021-01-05 09:06:44'),
(143, 'MAJESTIC AUTO LTD', '120', '', '2021-01-05 09:06:44'),
(144, 'MANALI PETROCHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(145, 'MAX FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(146, 'MID INDIA INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(147, 'MIRC ELECTRONICS LIMITED', '120', '', '2021-01-05 09:06:44'),
(148, 'CENTURY ENKA LIMITED', '120', '', '2021-01-05 09:06:44'),
(149, 'LORDS CHLORO ALKALI LIMITED(NDA)', '120', '', '2021-01-05 09:06:44'),
(150, 'SPICEJET LIMITED', '120', '', '2021-01-05 09:06:44'),
(151, 'MOREPEN LABORATORIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(152, 'MRF LIMITED', '120', '', '2021-01-05 09:06:44'),
(153, 'HEIDELBERGCEMENT INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(154, 'NCC LTD', '120', '', '2021-01-05 09:06:44'),
(155, 'VEDANTA LTD', '120', '', '2021-01-05 09:06:44'),
(156, 'NAHAR SPINNING MILLS LIMITED', '120', '', '2021-01-05 09:06:44'),
(157, 'NATIONAL PEROXIDE LTD', '120', '', '2021-01-05 09:06:44'),
(158, 'GRASIM INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(159, 'PIRAMAL ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(160, 'NIIT LIMITED', '120', '', '2021-01-05 09:06:44'),
(161, 'JAYKAY ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(162, 'NIRLON LIMITED', '120', '', '2021-01-05 09:06:44'),
(163, 'OIL & NATURAL GAS CORPORATION LIMITED', '120', '', '2021-01-05 09:06:44'),
(164, 'OIL COUNTRY TUBULAR LTD', '120', '', '2021-01-05 09:06:44'),
(165, 'ORIENTAL HOTELS LIMITED', '120', '', '2021-01-05 09:06:44'),
(166, 'OSWAL AGRO MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(167, 'INDIAN SUCROSE LTD', '120', '', '2021-01-05 09:06:44'),
(168, 'RELIANCE INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(169, 'PIL ITALICA LIFESTYLE LTD', '120', '', '2021-01-05 09:06:44'),
(170, 'PENTAMEDIA GRAPHICS LIMITED', '120', '', '2021-01-05 09:06:44'),
(171, 'RAYMOND LIMITED', '120', '', '2021-01-05 09:06:44'),
(172, 'PIDILITE INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(173, 'PIX TRANSMISSIONS LTD', '120', '', '2021-01-05 09:06:44'),
(174, 'BIRLA CORPORATION LIMITED', '120', '', '2021-01-05 09:06:44'),
(175, 'SURYA ROSHNI LTD', '120', '', '2021-01-05 09:06:44'),
(176, 'PRIME SECURITIES LTD.', '120', '', '2021-01-05 09:06:44'),
(177, 'PRISM JOHNSON LTD', '120', '', '2021-01-05 09:06:44'),
(178, 'RAIN INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(179, 'AMJ LAND HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(180, 'PUNJAB COMMUNICATIONS LTD', '120', '', '2021-01-05 09:06:44'),
(181, 'RSWM LTD.', '120', '', '2021-01-05 09:06:44'),
(182, 'RAJSHREE SUGARS & CHEMICALS LIMITED', '120', '', '2021-01-05 09:06:44'),
(183, 'RALLIS INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(184, 'SHREE RAMA NEWSPRINT LTD', '120', '', '2021-01-05 09:06:44'),
(185, 'RAMA PAPER MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(186, 'RAMA PETROCHEMICALS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(187, 'RAPICUT CARBIDES LTD', '120', '', '2021-01-05 09:06:44'),
(188, 'WELSPUN SPECIALTY SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(189, 'ROLTA INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(190, 'RUBFILA INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(191, 'RUCHI SOYA INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(192, 'SALORA INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(193, 'JINDAL SAW LIMITED', '120', '', '2021-01-05 09:06:44'),
(194, 'JK LAKSHMI CEMENT LIMITED', '120', '', '2021-01-05 09:06:44'),
(195, 'SHREE CEMENT LIMITED', '120', '', '2021-01-05 09:06:44'),
(196, 'RELIANCE INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(197, 'STEELCO GUJARAT LTD', '120', '', '2021-01-05 09:06:44'),
(198, 'TATA POWER COMPANY LIMITED', '120', '', '2021-01-05 09:06:44'),
(199, 'SPML INFRA LTD', '120', '', '2021-01-05 09:06:44'),
(200, 'SUNDRAM FASTENERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(201, 'SUNFLAG IRON & STEEL COMPANY LTD.', '120', '', '2021-01-05 09:06:44'),
(202, 'SUPREME PETROCHEM LTD.', '120', '', '2021-01-05 09:06:44'),
(203, 'SWARAJ ENGINES LIMITED', '120', '', '2021-01-05 09:06:44'),
(204, 'TATA ELXSI LIMITED', '120', '', '2021-01-05 09:06:44'),
(205, 'ACC LTD', '120', '', '2021-01-05 09:06:44'),
(206, 'THERMAX LIMITED', '120', '', '2021-01-05 09:06:44'),
(207, 'THIRUMALAI CHEMICALS LTD.', '120', '', '2021-01-05 09:06:44'),
(208, 'THOMAS COOK INDIA LTD FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(209, 'TIMEX GROUP INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(210, 'TOKYO PLAST INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(211, 'TORRENT PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(212, 'TRANSCHEM LTD', '120', '', '2021-01-05 09:06:44'),
(213, 'AMBUJA CEMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(214, 'UTL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(215, 'UNIPHOS ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(216, 'VARDHMAN HOLDINGS LIMITED', '120', '', '2021-01-05 09:06:44'),
(217, 'HINDALCO INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(218, 'WEST COAST PAPER MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(219, 'HINDUSTAN ORGANIC CHEMICALS LIMITED', '120', '', '2021-01-05 09:06:44'),
(220, 'PASUPATI ACRYLON LTD', '120', '', '2021-01-05 09:06:44'),
(221, 'KORE FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(222, 'PROCTER & GAMBLE HYGIENE & HEALTH CARE', '120', '', '2021-01-05 09:06:44'),
(223, 'MUKAND LIMITED FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(224, 'AGC NETWORKS LTD', '120', '', '2021-01-05 09:06:44'),
(225, 'UCAL FUEL SYSTEMS LIMITED', '120', '', '2021-01-05 09:06:44'),
(226, 'HARRISONS MALAYALAM LIMITED', '120', '', '2021-01-05 09:06:44'),
(227, 'FEDERAL BANK LTD', '120', '', '2021-01-05 09:06:44'),
(228, 'TATA STEEL LIMITED FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(229, 'SKF INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(230, 'ASHOK LEYLAND LTD', '120', '', '2021-01-05 09:06:44'),
(231, 'CUMMINS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(232, 'TATA COMMUNICATIONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(233, 'ABBOTT INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(234, 'BAJAJ HOLDINGS AND INVESTMENT LTD', '120', '', '2021-01-05 09:06:44'),
(235, 'BHARAT FORGE LTD', '120', '', '2021-01-05 09:06:44'),
(236, 'ESCORTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(237, 'HINDUSTAN MOTORS LIMITED', '120', '', '2021-01-05 09:06:44'),
(238, 'LARSEN & TOUBRO LIMITED', '120', '', '2021-01-05 09:06:44'),
(239, 'MAHINDRA & MAHINDRA LIMITED', '120', '', '2021-01-05 09:06:44'),
(240, 'BOSCH LTD', '120', '', '2021-01-05 09:06:44'),
(241, 'PREMIER LIMITED', '120', '', '2021-01-05 09:06:44'),
(242, 'BHARAT PETROLEUM CORP LTD', '120', '', '2021-01-05 09:06:44'),
(243, 'SIEMENS LTD', '120', '', '2021-01-05 09:06:44'),
(244, 'TATA MOTORS LIMITED FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(245, 'VOLTAS LIMITED', '120', '', '2021-01-05 09:06:44'),
(246, 'GREAT EASTERN SHIPPING COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(247, 'DEEPAK FRTLSRS AND PTRCHMCLS CORP LTD', '120', '', '2021-01-05 09:06:44'),
(248, 'EXCEL INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(249, 'GARWARE POLYESTER LTD', '120', '', '2021-01-05 09:06:44'),
(250, 'GLAXOSMITHKLINE PHARMACEUTICALS LIMITED', '120', '', '2021-01-05 09:06:44'),
(251, 'GUJARAT NARMADA VALLEY FERTLZRS&CHMS LTD', '120', '', '2021-01-05 09:06:44'),
(252, 'NOVARTIS INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(253, 'SANOFI INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(254, 'PFIZER LIMITED', '120', '', '2021-01-05 09:06:44'),
(255, 'GUJARAT STATE FERTILIZERS&CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(256, 'HINDUSTAN UNILEVER LTD', '120', '', '2021-01-05 09:06:44'),
(257, 'AKZO NOBEL INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(258, 'NOCIL LIMITED', '120', '', '2021-01-05 09:06:44'),
(259, 'TATA CHEMICALS LIMITED', '120', '', '2021-01-05 09:06:44'),
(260, 'TAMILNADU PETROPRODUCTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(261, 'ZUARI GLOBAL LTD', '120', '', '2021-01-05 09:06:44'),
(262, 'NESTLE INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(263, 'TATA CONSUMER PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(264, 'ASIAN PAINTS LTD', '120', '', '2021-01-05 09:06:44'),
(265, 'BRITANNIA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(266, 'COLGATE-PALMOLIVE (INDIA) LIMITED', '120', '', '2021-01-05 09:06:44'),
(267, 'EIH LIMITED', '120', '', '2021-01-05 09:06:44'),
(268, 'INDIAN HOTELS COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(269, 'CASTROL INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(270, 'ITC LTD', '120', '', '2021-01-05 09:06:44'),
(271, 'APOLLO TYRES LIMITED', '120', '', '2021-01-05 09:06:44'),
(272, 'CEAT LIMITED', '120', '', '2021-01-05 09:06:44'),
(273, 'MODI RUBBER LTD', '120', '', '2021-01-05 09:06:44'),
(274, 'FINOLEX INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(275, 'DALAL STREET INVESTMENTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(276, 'CENTRUM CAPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(277, 'TCI FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(278, 'INDUSTRIAL INVESTMENT TRUST LTD', '120', '', '2021-01-05 09:06:44'),
(279, 'INDUSTRIAL&PRUDENTIAL INVESTMENT CO LTD', '120', '', '2021-01-05 09:06:44'),
(280, 'TATA INVESTMENT CORPORATION LIMITED', '120', '', '2021-01-05 09:06:44'),
(281, 'PRISMX GLOBAL VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(282, 'MOTOR AND GENERAL FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(283, 'WALCHAND PEOPLEFIRST LTD', '120', '', '2021-01-05 09:06:44'),
(284, 'W H BRADY & CO. LTD', '120', '', '2021-01-05 09:06:44'),
(285, 'SHAILY ENGINEERING PLASTICS LTD', '120', '', '2021-01-05 09:06:44'),
(286, 'BOMBAY BURMAH TRADING CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(287, 'BOMBAY CYCLE AND MOTOR AGENCY LTD', '120', '', '2021-01-05 09:06:44'),
(288, 'GREAVES COTTON LTD', '120', '', '2021-01-05 09:06:44'),
(289, 'INDIA NIVESH LTD', '120', '', '2021-01-05 09:06:44'),
(290, 'COASTAL CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(291, 'CHOWGULE STEAMSHIPS LTD.', '120', '', '2021-01-05 09:06:44'),
(292, 'GLOBAL OFFSHORE SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(293, 'ASSOCIATED STONE INDUSTRIES (KOTAH) LTD', '120', '', '2021-01-05 09:06:44'),
(294, 'SAGAR CEMENTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(295, 'DECCAN CEMENTS LTD.', '120', '', '2021-01-05 09:06:44'),
(296, 'MANGALAM CEMENT LTD.', '120', '', '2021-01-05 09:06:44'),
(297, 'NCL INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(298, 'SAURASHTRA CEMENT LTD.', '120', '', '2021-01-05 09:06:44'),
(299, 'SHREE DIGVIJAY CEMENT COMPANY LTD.', '120', '', '2021-01-05 09:06:44'),
(300, 'BOROSIL RENEWABLES LTD', '120', '', '2021-01-05 09:06:44'),
(301, 'MARATHWADA REFRACTORIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(302, 'TRIVENI GLASS LTD', '120', '', '2021-01-05 09:06:44'),
(303, 'ANDHRA PAPER LTD', '120', '', '2021-01-05 09:06:44'),
(304, 'BALKRISHNA INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(305, 'ORIENT PAPER & INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(306, 'CITADEL REALTY DEVELOPERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(307, 'ROLLATAINERS LTD', '120', '', '2021-01-05 09:06:44'),
(308, 'SESHASAYEE PAPER & BOARDS LTD', '120', '', '2021-01-05 09:06:44'),
(309, 'NATH INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(310, 'SINTEX INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(311, 'DCM LTD.', '120', '', '2021-01-05 09:06:44'),
(312, 'FORBES & COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(313, 'H P COTTON TEXTILE MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(314, 'KATARE SPINNING MILLS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(315, 'KESORAM INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(316, 'LAKSHMI MILLS COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(317, 'VARDHMAN TEXTILES LTD.', '120', '', '2021-01-05 09:06:44'),
(318, 'MODERN INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(319, 'PENINSULA LAND LIMITED', '120', '', '2021-01-05 09:06:44'),
(320, 'PHOENIX MILLS LIMITED', '120', '', '2021-01-05 09:06:44'),
(321, 'MARATHON NEXTGEN REALTY LTD', '120', '', '2021-01-05 09:06:44'),
(322, 'RAJA BAHADUR INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(323, 'RELIANCE CHEMOTEX INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(324, 'THE RUBY MILLS LTD.', '120', '', '2021-01-05 09:06:44'),
(325, 'SIMPLEX REALTY LTD', '120', '', '2021-01-05 09:06:44'),
(326, 'SWAN ENERGY LTD', '120', '', '2021-01-05 09:06:44'),
(327, 'VICTORIA MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(328, 'SVARAJ TRADING AND AGENCIES LTD', '120', '', '2021-01-05 09:06:44'),
(329, 'ZODIAC VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(330, 'VEER ENERGY & INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(331, 'TILAK VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(332, 'SAHARA ONE MEDIA & ENTERTAINMENT LTD.', '120', '', '2021-01-05 09:06:44'),
(333, 'BANSWARA SYNTEX LTD.', '120', '', '2021-01-05 09:06:44'),
(334, 'SHRI DINESH MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(335, 'SRF LIMITED', '120', '', '2021-01-05 09:06:44'),
(336, 'SIYARAM SILK MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(337, 'FOMENTO RESORTS & HOTELS LTD(NDA)', '120', '', '2021-01-05 09:06:44'),
(338, 'SHREE MANUFACTURING ORD SHS', '120', '', '2021-01-05 09:06:44'),
(339, 'BHARAT BIJLEE LTD.', '120', '', '2021-01-05 09:06:44'),
(340, 'ELPRO INTERNATIONAL LIMITED', '120', '', '2021-01-05 09:06:44'),
(341, 'EMCO LTD.', '120', '', '2021-01-05 09:06:44'),
(342, 'GEE LTD', '120', '', '2021-01-05 09:06:44'),
(343, 'HIND RECTIFIERS LTD', '120', '', '2021-01-05 09:06:44'),
(344, 'INDO NATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(345, 'ZENSAR TECHNOLOGIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(346, 'JYOTI LTD.', '120', '', '2021-01-05 09:06:44'),
(347, 'JSL INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(348, 'KAYCEE INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(349, 'INDOKEM LTD', '120', '', '2021-01-05 09:06:44'),
(350, 'PANASONIC ENERGY INDIA CO LTD', '120', '', '2021-01-05 09:06:44'),
(351, 'NELCO LIMITED', '120', '', '2021-01-05 09:06:44'),
(352, 'PERMANENT MAGNETS LIMITED', '120', '', '2021-01-05 09:06:44'),
(353, 'HIGH ENERGY BATTERIES (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(354, 'STANDARD BATTERIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(355, 'UNIVERSAL CABLES LTD.', '120', '', '2021-01-05 09:06:44'),
(356, 'W.S. INDUSTRIES (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(357, 'DELTON CABLES LTD', '120', '', '2021-01-05 09:06:44'),
(358, 'LAKSHMI ELECTRICAL CONTROL SYSTEMS LTD', '120', '', '2021-01-05 09:06:44'),
(359, 'MODULEX CONSTRUCTION TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(360, 'DELTA MANUFACTURING LTD', '120', '', '2021-01-05 09:06:44'),
(361, 'RUTRON INTERNATIONAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(362, 'CONFIDENCE FINANCE AND TRADING LTD', '120', '', '2021-01-05 09:06:44'),
(363, 'RAVINDRA ENERGY LTD', '120', '', '2021-01-05 09:06:44'),
(364, 'EMPOWER INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(365, 'NYSSA CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(366, 'VINADITYA TRADING CO ORD SHS', '120', '', '2021-01-05 09:06:44'),
(367, 'KRISHNA VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(368, 'UNI ABEX ALLOY PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(369, 'SARDA ENERGY & MINERALS LIMITED', '120', '', '2021-01-05 09:06:44'),
(370, 'UNIVERSAL PRIME ALUMINIUM ORD SHS', '120', '', '2021-01-05 09:06:44'),
(371, 'GALADA POWER AND TELECOMMUNICATION LTD', '120', '', '2021-01-05 09:06:44'),
(372, 'INDIAN HUME PIPE COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(373, 'INVESTMENT & PRECISION CASTINGS LTD', '120', '', '2021-01-05 09:06:44'),
(374, 'INFORMED TECHNOLOGIES INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(375, 'KAIRA CAN CO LTD', '120', '', '2021-01-05 09:06:44'),
(376, 'ORIENT ABRASIVES LTD.', '120', '', '2021-01-05 09:06:44'),
(377, 'NATIONAL STANDARD (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(378, 'DUNCAN ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(379, 'SANDUR MANGANESE & IRON ORES LTD.', '120', '', '2021-01-05 09:06:44'),
(380, 'STOVEC INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(381, 'TAYO ROLLS LTD', '120', '', '2021-01-05 09:06:44'),
(382, 'TINPLATE COMPANY OF INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(383, 'CHOLAMANDALAM FINANCIAL HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(384, 'WELCAST STEELS LTD', '120', '', '2021-01-05 09:06:44'),
(385, 'AUTOMOTIVE AXLES LTD.', '120', '', '2021-01-05 09:06:44'),
(386, 'ATLAS CYCLES (HARYANA) LTD', '120', '', '2021-01-05 09:06:44'),
(387, 'AUTOMOBILE CORP OF GOA LTD', '120', '', '2021-01-05 09:06:44'),
(388, 'SETCO AUTOMOTIVE LIMITED', '120', '', '2021-01-05 09:06:44'),
(389, 'SCOOTERS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(390, 'TALBROS AUTOMOTIVE COMPONENTS LTD', '120', '', '2021-01-05 09:06:44'),
(391, 'ZF STEERING GEAR (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(392, 'SML ISUZU LTD', '120', '', '2021-01-05 09:06:44'),
(393, 'TIL LIMITED', '120', '', '2021-01-05 09:06:44'),
(394, 'EICHER MOTORS LTD', '120', '', '2021-01-05 09:06:44'),
(395, 'ALFRED HERBERT (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(396, 'CIMMCO LTD', '120', '', '2021-01-05 09:06:44'),
(397, 'VELJAN DENISON LIMITED', '120', '', '2021-01-05 09:06:44'),
(398, 'DYNAMATIC TECHNOLOGIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(399, 'GMM PFAUDLER LTD.', '120', '', '2021-01-05 09:06:44'),
(400, 'KIRLOSKAR PNEUMATIC COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(401, 'KPT INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(402, 'LAKSHMI AUTOMATIC LOOM WORKS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(403, 'MANUGRAPH INDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(404, 'NESCO LTD.', '120', '', '2021-01-05 09:06:44'),
(405, 'INTEGRA ENGINEERING INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(406, 'REVATHI EQUIPMENT LTD', '120', '', '2021-01-05 09:06:44'),
(407, 'TEXMACO INFRASTRUCTURE & HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(408, 'WENDT INDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(409, 'AXON VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(410, 'RESPONSIVE INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(411, 'MAHARASHTRA CORPORATION ORD SHS', '120', '', '2021-01-05 09:06:44'),
(412, 'DOLAT INVESTMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(413, 'WESTLIFE DEVELOPMENT LTD', '120', '', '2021-01-05 09:06:44'),
(414, 'ZEE ENTERTAINMENT ENTERPRISES LIMITED FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(415, 'SVP GLOBAL VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(416, 'SKYLINE MILLARS LTD', '120', '', '2021-01-05 09:06:44'),
(417, 'BIMETAL BEARINGS LIMITED', '120', '', '2021-01-05 09:06:44'),
(418, 'BHARAT GEARS LTD', '120', '', '2021-01-05 09:06:44'),
(419, 'BRADY & MORRIS ENGINEERING. COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(420, 'LA TIM METAL & INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(421, 'ELECON ENGINEERING COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(422, 'GRAUER & WEIL INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(423, 'GAJRA BEVEL GEARS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(424, 'HIM TEKNOFORGE LTD', '120', '', '2021-01-05 09:06:44'),
(425, 'GABRIEL INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(426, 'HERCULES HOISTS LTD.', '120', '', '2021-01-05 09:06:44'),
(427, 'HINDUSTAN EVEREST TOOLS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(428, 'IFB INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(429, 'SINGER INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(430, 'INTERNATIONAL COMBUSTIONS INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(431, 'FEDERAL-MOGUL GOETZE (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(432, 'JOSTS ENGINEERING COMAPNY LTD', '120', '', '2021-01-05 09:06:44'),
(433, 'SCHAEFFLER INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(434, 'RANE HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(435, 'SNL BEARINGS LTD', '120', '', '2021-01-05 09:06:44'),
(436, 'JAIPAN INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(437, 'MANGAL CREDIT AND FINCORP LTD', '120', '', '2021-01-05 09:06:44'),
(438, 'TRF LTD.', '120', '', '2021-01-05 09:06:44'),
(439, 'WPIL LTD', '120', '', '2021-01-05 09:06:44'),
(440, 'KENNAMETAL INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(441, 'TRITON VALVES LIMITED', '120', '', '2021-01-05 09:06:44'),
(442, 'PRAKASH INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(443, 'ARSHIYA LTD', '120', '', '2021-01-05 09:06:44'),
(444, 'GRINDWELL NORTON LTD', '120', '', '2021-01-05 09:06:44'),
(445, 'LAKSHMI PRECISION SCREWS LTD.', '120', '', '2021-01-05 09:06:44'),
(446, 'STANROSE MAFATLAL INVESTMENT&FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(447, 'GENESYS INTERNATIONAL CORP LTD', '120', '', '2021-01-05 09:06:44'),
(448, 'PANKAJ PIYUSH TRADE AND INVESTMENT ORD SHS', '120', '', '2021-01-05 09:06:44'),
(449, 'PARNAX LAB LTD', '120', '', '2021-01-05 09:06:44'),
(450, 'VISAGAR POLYTEX LTD', '120', '', '2021-01-05 09:06:44'),
(451, 'KANANI INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(452, 'GALAXY CLOUD KITCHENS LTD', '120', '', '2021-01-05 09:06:44'),
(453, 'ARIHANT SUPERSTRUCTURES LTD', '120', '', '2021-01-05 09:06:44'),
(454, 'BLISS GVS PHARMA LIMITED', '120', '', '2021-01-05 09:06:44'),
(455, 'INEOS STYROLUTION INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(456, 'ALEMBIC LIMITED', '120', '', '2021-01-05 09:06:44'),
(457, 'AMINES AND PLASTICIZERS LTD', '120', '', '2021-01-05 09:06:44'),
(458, 'ANUH PHARMA LTD', '120', '', '2021-01-05 09:06:44'),
(459, 'MODISON METALS LTD', '120', '', '2021-01-05 09:06:44'),
(460, 'BAYER CROPSCIENCE LTD', '120', '', '2021-01-05 09:06:44'),
(461, 'CHEMO PHARMA LABORATORIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(462, 'CLARIANT CHEMICALS (INDIA) LTD.', '120', '', '2021-01-05 09:06:44'),
(463, 'COROMANDEL INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(464, 'DEEPAK NITRITE LTD.', '120', '', '2021-01-05 09:06:44'),
(465, 'DHARAMSI MORARJI CHEMICAL CO LTD', '120', '', '2021-01-05 09:06:44'),
(466, 'FERMENTA BIOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(467, 'GOCL CORP LTD', '120', '', '2021-01-05 09:06:44'),
(468, 'JAYSHREE CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(469, 'JL MORISON INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(470, 'KANORIA CHEMICALS & INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(471, 'KELTECH ENERGIES LTD', '120', '', '2021-01-05 09:06:44'),
(472, 'NITTA GELATIN INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(473, 'MP AGRO INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(474, 'ORIENTAL CARBON AND CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(475, 'PHILLIPS CARBON BLACK LTD.', '120', '', '2021-01-05 09:06:44'),
(476, 'AMAL LTD', '120', '', '2021-01-05 09:06:44'),
(477, 'POLYCHEM LTD', '120', '', '2021-01-05 09:06:44'),
(478, 'PUNJAB CHEMICALS & CROP PROTECTION LTD', '120', '', '2021-01-05 09:06:44'),
(479, 'GUJCHEM DISTILLERS INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(480, 'SADHANA NITRO CHEM LTD', '120', '', '2021-01-05 09:06:44'),
(481, 'SUDARSHAN CHEMICAL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(482, 'ULTRAMARINE & PIGMENTS LTD.', '120', '', '2021-01-05 09:06:44'),
(483, 'TRANSPEK INDUSTRY LTD', '120', '', '2021-01-05 09:06:44'),
(484, 'UNICHEM LABORATORIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(485, 'MYSORE PETRO CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(486, 'ALKYL AMINES CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(487, 'TUTICORIN ALKALI CHEMICLS ND FRTLZRS LTD', '120', '', '2021-01-05 09:06:44'),
(488, 'ASTRAZENECA PHARMA INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(489, 'PUNJAB ALKALIES & CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(490, 'TANFAC INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(491, 'GUJARAT PETROSYNTHESE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(492, 'SWADESHI INDUSTRIES & LEASING LTD', '120', '', '2021-01-05 09:06:44'),
(493, 'GUJARAT THEMIS BIOSYN LTD', '120', '', '2021-01-05 09:06:44'),
(494, 'JAYSYNTH DYESTUFF INDIA LTD(NDA)', '120', '', '2021-01-05 09:06:44'),
(495, 'MAKERS LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(496, 'J B CHEMICALS AND PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(497, 'BLUE CHIP TEX INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(498, 'JAGATJIT INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(499, 'KESAR ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(500, 'TILAKNAGAR INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(501, 'RAVALGAON SUGAR FARM LTD', '120', '', '2021-01-05 09:06:44'),
(502, 'SAKTHI SUGARS LTD', '120', '', '2021-01-05 09:06:44'),
(503, 'WALCHANDNAGAR INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(504, 'KHODAY INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(505, 'IFB AGRO INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(506, 'DHARANI SUGARS AND CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(507, 'THIRU AROORAN SUGARS LTD.', '120', '', '2021-01-05 09:06:44'),
(508, 'KOTHARI FERMENTATION & BIOCHEM LTD', '120', '', '2021-01-05 09:06:44'),
(509, 'CAPROLACTAM CHEMICALS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(510, 'G M BREWERIES LTD', '120', '', '2021-01-05 09:06:44'),
(511, 'RANA SUGARS LTD.', '120', '', '2021-01-05 09:06:44'),
(512, 'PICCADILY SUGAR AND ALLIED INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(513, 'RIGA SUGAR CO LTD', '120', '', '2021-01-05 09:06:44'),
(514, 'SOM DISTILLERIES AND BREWERIES LTD', '120', '', '2021-01-05 09:06:44'),
(515, 'CJ GELATINE PRODUCTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(516, 'AMRIT CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(517, 'ASSOCIATED ALCOHOL AND BREWERIES LTD', '120', '', '2021-01-05 09:06:44'),
(518, 'FOODS AND INNS LTD', '120', '', '2021-01-05 09:06:44'),
(519, 'KOVILPATTI LAKSHMI ROLLER FLOUR MLLS LTD', '120', '', '2021-01-05 09:06:44'),
(520, 'MILKFOOD LIMITED', '120', '', '2021-01-05 09:06:44'),
(521, 'POLSON LTD', '120', '', '2021-01-05 09:06:44'),
(522, 'WIPRO LIMITED', '120', '', '2021-01-05 09:06:44'),
(523, 'ORIENT BEVERAGES LTD', '120', '', '2021-01-05 09:06:44'),
(524, 'DHANUKA AGRITECH LTD', '120', '', '2021-01-05 09:06:44'),
(525, 'TTK HEALTH CARE LTD', '120', '', '2021-01-05 09:06:44'),
(526, 'TGV SRAAC LTD', '120', '', '2021-01-05 09:06:44'),
(527, 'LIME CHEMICALS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(528, 'KANPUR PLASTIPACK LIMITED', '120', '', '2021-01-05 09:06:44'),
(529, 'TAINWALA CHEMICALS&PLASTICS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(530, 'JAGSONPAL PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(531, 'KHAITAN CHEMICALS AND FERTILIZERS LTD', '120', '', '2021-01-05 09:06:44'),
(532, 'NATIONAL OXYGEN LTD', '120', '', '2021-01-05 09:06:44'),
(533, 'GILLETTE INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(534, 'WIRES AND FABRIKS (SA) LTD', '120', '', '2021-01-05 09:06:44'),
(535, 'ANSAL HOUSING LTD', '120', '', '2021-01-05 09:06:44'),
(536, 'MAC CHARLES (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(537, 'PIONEER INVESTCORP LIMITED', '120', '', '2021-01-05 09:06:44'),
(538, 'ASHNOOR TEXTILE MILLS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(539, 'UNITECH LIMITED', '120', '', '2021-01-05 09:06:44'),
(540, 'V I P INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(541, 'DHRUV ESTATES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(542, 'FIBERWEB (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(543, 'LKP FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(544, 'BAJAJ STEEL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(545, 'GUJARAT HOTELS LTD', '120', '', '2021-01-05 09:06:44'),
(546, 'PARAMOUNT COSMETICS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(547, 'JINDAL HOTELS LTD', '120', '', '2021-01-05 09:06:44'),
(548, 'SIMMONDS MARSHALL LTD', '120', '', '2021-01-05 09:06:44'),
(549, 'B & A LTD', '120', '', '2021-01-05 09:06:44'),
(550, 'LEDO TEA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(551, 'HAWKINS COOKER LTD', '120', '', '2021-01-05 09:06:44'),
(552, 'WARREN TEA LTD', '120', '', '2021-01-05 09:06:44'),
(553, 'COCHIN MALABAR ESTATES AND INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(554, 'IST LTD.', '120', '', '2021-01-05 09:06:44'),
(555, 'COSMO FILMS LTD', '120', '', '2021-01-05 09:06:44'),
(556, 'APOLLO HOSPITALS ENTERPRISE LIMITED', '120', '', '2021-01-05 09:06:44'),
(557, 'NITIN CASTINGS LTD', '120', '', '2021-01-05 09:06:44'),
(558, 'SMIFS CAPITAL MARKETS LTD', '120', '', '2021-01-05 09:06:44'),
(559, 'EVEREST INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(560, 'GREYCELLS EDUCATION LIMITED', '120', '', '2021-01-05 09:06:44'),
(561, 'MSR INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(562, 'AYM SYNTEX LTD', '120', '', '2021-01-05 09:06:44'),
(563, 'PANASONIC CARBON INDIA CO LTD', '120', '', '2021-01-05 09:06:44'),
(564, 'FINKURVE FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(565, 'STERLING GUARANTY AND FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(566, 'SULABH ENGINEERS AND SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(567, 'NAVNEET EDUCATION LTD', '120', '', '2021-01-05 09:06:44'),
(568, 'SATRA PROPERTIES (INDIA) LTD.', '120', '', '2021-01-05 09:06:44'),
(569, 'AUSOM ENTERPRISE LIMITED(NDA)', '120', '', '2021-01-05 09:06:44'),
(570, 'RUCHI INFRASTRUCTURE LTD.', '120', '', '2021-01-05 09:06:44'),
(571, 'LANCOR HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(572, 'INDIAN INFOTECH AND SOFTWARE LTD', '120', '', '2021-01-05 09:06:44'),
(573, 'BANAS FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(574, 'VISAKA INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(575, 'HATHWAY BHAWANI CABLETEL AND DATACOM LTD', '120', '', '2021-01-05 09:06:44'),
(576, 'PRESSMAN ADVERTISING LTD', '120', '', '2021-01-05 09:06:44'),
(577, 'GUFIC BIOSCIENCES LTD', '120', '', '2021-01-05 09:06:44'),
(578, 'PHOTON CAPITAL ADVISORS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(579, 'GOVIND RUBBER LTD', '120', '', '2021-01-05 09:06:44'),
(580, 'GRP LTD', '120', '', '2021-01-05 09:06:44'),
(581, 'INDAG RUBBER LTD', '120', '', '2021-01-05 09:06:44'),
(582, 'MM RUBBER COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(583, 'PTL ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(584, 'TVS SRICHAKRA LIMITED', '120', '', '2021-01-05 09:06:44'),
(585, 'BENARES HOTELS LTD', '120', '', '2021-01-05 09:06:44'),
(586, 'BHAGAWATI OXYGEN ORD SHS', '120', '', '2021-01-05 09:06:44'),
(587, 'BOMBAY OXYGEN CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(588, 'CRAVATEX LTD', '120', '', '2021-01-05 09:06:44'),
(589, 'BERGER PAINTS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(590, 'CAPRIHANS INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(591, 'GRAPHITE INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(592, 'ITD CEMENTATION INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(593, 'EMPIRE INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(594, 'GRAVISS HOSPITALITY LTD', '120', '', '2021-01-05 09:06:44'),
(595, 'GARWARE TECHNICAL FIBRES LTD', '120', '', '2021-01-05 09:06:44'),
(596, 'GARWARE MARINE INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(597, 'GOA CARBON LTD', '120', '', '2021-01-05 09:06:44'),
(598, 'HARDCASTLE & WAUD MANUFACTURING CO LTD', '120', '', '2021-01-05 09:06:44'),
(599, 'HEG LIMITED', '120', '', '2021-01-05 09:06:44'),
(600, 'HINDUSTAN COMPOSITES LIMITED', '120', '', '2021-01-05 09:06:44'),
(601, 'HIL LTD', '120', '', '2021-01-05 09:06:44'),
(602, 'INTERNATIONAL CONVEYORS LTD', '120', '', '2021-01-05 09:06:44'),
(603, 'JAY SHREE TEA & INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(604, 'MODERN SHARES AND STOCKBROKERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(605, 'HUHTAMAKI PPL LTD', '120', '', '2021-01-05 09:06:44'),
(606, 'PREMIER SYNTHETICS LTD FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(607, 'R J SHAH AND CO ORD SHS', '120', '', '2021-01-05 09:06:44'),
(608, 'SHALIMAR PAINTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(609, 'HINDOOSTAN MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(610, 'SUPREME INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(611, 'VST INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(612, 'SWASTI VINAYAKA SYNTHETICS LTD', '120', '', '2021-01-05 09:06:44'),
(613, 'JINDAL DRILLING AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(614, 'SAKTHI FINANCE LIMITED', '120', '', '2021-01-05 09:06:44'),
(615, 'DEWAN HOUSING FINANCE CORPORATION LTD.', '120', '', '2021-01-05 09:06:44'),
(616, 'SAT INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(617, 'SHIVA TEXYARN LTD', '120', '', '2021-01-05 09:06:44'),
(618, 'QUADRANT TELEVENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(619, 'KAMANWALA HOUSING CONSTRUCTION LTD.', '120', '', '2021-01-05 09:06:44'),
(620, 'WALL STREET FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(621, 'ANJANI FOODS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(622, 'PARSHWANATH CORPORATION ORD SHS', '120', '', '2021-01-05 09:06:44'),
(623, 'MILLENNIUM ONLINE SOLUTIONS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(624, 'CAN FIN HOMES LTD', '120', '', '2021-01-05 09:06:44'),
(625, 'IL & FS INVESTMENT MANAGERS LTD', '120', '', '2021-01-05 09:06:44'),
(626, 'SHRIRAM TRANSPORT FINANCE COMPANY LTD.', '120', '', '2021-01-05 09:06:44'),
(627, 'CHOLAMANDALAM INVESTMENT AND FIN CO LTD', '120', '', '2021-01-05 09:06:44'),
(628, 'VLS FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(629, 'INDIA CEMENTS CAPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(630, 'AD MANUM FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(631, 'MEHTA INTEGRATED FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(632, 'VIDEOCON INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(633, 'SHRISTI INFRASTRUCTURE DEVELOPT CORP LTD', '120', '', '2021-01-05 09:06:44'),
(634, 'CREST VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(635, 'VAKRANGEE LTD', '120', '', '2021-01-05 09:06:44'),
(636, 'SYLPH TECHNOLOGIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(637, 'DHARANI FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(638, 'ALEXANDER STAMPS AND COIN LTD', '120', '', '2021-01-05 09:06:44'),
(639, 'INDBANK MERCHANT BANKING SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(640, 'BHARAT BHUSHAN FINANCE & CMDTY BRKRS LTD', '120', '', '2021-01-05 09:06:44'),
(641, 'CAPITAL TRUST LTD', '120', '', '2021-01-05 09:06:44'),
(642, 'USHAKIRAN FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(643, 'VIVO BIO TECH LTD', '120', '', '2021-01-05 09:06:44'),
(644, 'VEERHEALTH CARE LTD', '120', '', '2021-01-05 09:06:44'),
(645, 'PAN INDIA CORP LTD', '120', '', '2021-01-05 09:06:44'),
(646, 'SAHARA HOUSINGFINA CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(647, 'GSB FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(648, 'MORARKA FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(649, 'MONARCH NETWORTH CAPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(650, 'PRO FIN CAPITAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(651, 'TIMES GUARANTY LTD', '120', '', '2021-01-05 09:06:44'),
(652, 'SOM DATT FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(653, 'REGENCY TRUST ORD SHS', '120', '', '2021-01-05 09:06:44'),
(654, 'AVONMORE CAPITAL & MANAGEMENT SERVCS LTD', '120', '', '2021-01-05 09:06:44'),
(655, 'YASH MANAGEMENT AND SATELLITE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(656, 'ARIHANT CAPITAL MARKETS LTD', '120', '', '2021-01-05 09:06:44'),
(657, 'ISL CONSULTING LTD', '120', '', '2021-01-05 09:06:44'),
(658, 'DCM FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(659, 'IM+ CAPITALS LTD', '120', '', '2021-01-05 09:06:44'),
(660, 'SAMBHAAV MEDIA LTD', '120', '', '2021-01-05 09:06:44'),
(661, 'SUGAL AND DAMANI SHARE BROKERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(662, 'NETTLINX LTD', '120', '', '2021-01-05 09:06:44'),
(663, 'SCAN STEELS LTD', '120', '', '2021-01-05 09:06:44'),
(664, 'GIC HOUSING FINANCE LTD.', '120', '', '2021-01-05 09:06:44'),
(665, 'MATHEW EASOW RESEARCH SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(666, 'STANDARD CAPITAL MARKETS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(667, 'PARSHARTI INVESTMENT ORD SHS', '120', '', '2021-01-05 09:06:44'),
(668, 'CUBICAL FINANCIAL SERVICES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(669, 'RELIC TECHNOLOGIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(670, 'ESCORTS FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(671, 'BAID LEASING AND FINANCE CO LTD', '120', '', '2021-01-05 09:06:44'),
(672, 'VIPUL LTD.', '120', '', '2021-01-05 09:06:44'),
(673, 'KZ LEASING AND FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(674, 'TRC FINANCIAL SERVICES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(675, 'USHDEV INTERNATIONAL LTD.', '120', '', '2021-01-05 09:06:44'),
(676, 'UGRO CAPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(677, 'SHALIBHADRA FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(678, 'UPASANA FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(679, 'MUTHOOT CAPITAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(680, 'MASTER TRUST LTD', '120', '', '2021-01-05 09:06:44'),
(681, 'CNI RESEARCH LTD', '120', '', '2021-01-05 09:06:44'),
(682, 'SARASWATI COMMERCIAL (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(683, 'ROYAL INDIA CORPORATION ORD SHS', '120', '', '2021-01-05 09:06:44'),
(684, 'LUHARUKA MEDIA & INFRA LTD', '120', '', '2021-01-05 09:06:44'),
(685, 'VISHVPRABHA TRADING ORD SHS', '120', '', '2021-01-05 09:06:44'),
(686, 'DECCAN GOLD MINES LTD', '120', '', '2021-01-05 09:06:44'),
(687, 'UPL LTD FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(688, 'CRANES SOFTWARE INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(689, 'SIGNET INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(690, 'AVANCE TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(691, 'ABANS ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(692, 'VAMA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(693, 'SUNTECK REALTY LTD', '120', '', '2021-01-05 09:06:44'),
(694, 'PRISM MEDICO AND PHARMACY LTD', '120', '', '2021-01-05 09:06:44'),
(695, 'VERITAS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(696, 'JAI CORP LTD FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(697, 'ASHIRWAD CAPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(698, 'SWASTI VINAYAKA ART & HERITAGE CORP LTD', '120', '', '2021-01-05 09:06:44'),
(699, 'MEDIA MATRIX WORLDWIDE LTD', '120', '', '2021-01-05 09:06:44'),
(700, 'N2N TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(701, 'SHIRPUR GOLD REFINERY LTD', '120', '', '2021-01-05 09:06:44'),
(702, 'BHAGYANAGAR INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(703, 'SHANTAI INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(704, 'ARAVALI SECURITIES & FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(705, 'CRESSANDA SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(706, 'STARTECK FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(707, 'SHARDUL SECURITIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(708, 'APOLLO FINVEST INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(709, 'SHRI JAGDAMBA POLYMERS LTD', '120', '', '2021-01-05 09:06:44'),
(710, 'LLOYDS METALS AND ENERGY LTD', '120', '', '2021-01-05 09:06:44'),
(711, 'SHREE GLOBAL TRADEFIN LTD', '120', '', '2021-01-05 09:06:44'),
(712, 'BETEX INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(713, 'GARNET INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(714, 'SHALIMAR PRODUCTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(715, 'DONEAR INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(716, 'SUPER SALES INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(717, 'SEQUENT SCIENTIFIC LIMITED', '120', '', '2021-01-05 09:06:44'),
(718, 'STATE TRADING CORPORATION OF INDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(719, 'KOHINOOR FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(720, 'AVANTI FEEDS LTD', '120', '', '2021-01-05 09:06:44'),
(721, 'ZODIAC JRD MKJ LTD', '120', '', '2021-01-05 09:06:44'),
(722, 'PULSAR INTERNATIONAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(723, 'KEYNOTE FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(724, 'ADANI ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(725, 'HARIA EXPORTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(726, 'BHANDARI HOSIERY EXPORTS LTD(NDA)', '120', '', '2021-01-05 09:06:44'),
(727, 'RLF ORD SHS', '120', '', '2021-01-05 09:06:44'),
(728, 'SPINE TRADERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(729, 'ORBIT EXPORTS LIMITED.', '120', '', '2021-01-05 09:06:44'),
(730, 'SAVERA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(731, 'VBC FERRO ALLOYS LIMITED', '120', '', '2021-01-05 09:06:44'),
(732, 'TATA STEEL LONG PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(733, 'NAVA BHARAT VENTURES LIMITED', '120', '', '2021-01-05 09:06:44'),
(734, 'REMI EDELSTAHL TUBULARS LTD', '120', '', '2021-01-05 09:06:44'),
(735, 'G S AUTO INTERNATIONAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(736, 'TRANS FREIGHT CONTAINERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(737, 'SHIVALIK BIMETAL CONTROLS LTD', '120', '', '2021-01-05 09:06:44'),
(738, 'GANDHI SPECIAL TUBES LTD', '120', '', '2021-01-05 09:06:44'),
(739, 'AMFORGE INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(740, 'ORICON ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(741, 'BALASORE ALLOYS LIMITED', '120', '', '2021-01-05 09:06:44'),
(742, 'NATIONAL STEEL AND AGRO INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(743, 'UTTAM GALVA STEELS LTD.', '120', '', '2021-01-05 09:06:44'),
(744, 'PENNAR INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(745, 'JAY USHIN LTD', '120', '', '2021-01-05 09:06:44'),
(746, 'STEEL STRIPS WHEELS LTD.', '120', '', '2021-01-05 09:06:44'),
(747, 'MAN INDUSTRIES (INDIA) LIMITED', '120', '', '2021-01-05 09:06:44'),
(748, 'MODERN STEEL LTD', '120', '', '2021-01-05 09:06:44'),
(749, 'TERRASCOPE VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(750, 'SYNTHIKO FOILS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(751, 'GOLKONDA ALUMINIUM EXTRUSIONS LTD', '120', '', '2021-01-05 09:06:44');
INSERT INTO `bond_ltp` (`id`, `stock_name`, `current_price`, `previous_day_price`, `cdate`) VALUES
(752, 'METALYST FORGINGS LTD', '120', '', '2021-01-05 09:06:44'),
(753, 'GRAND FOUNDRY LTD', '120', '', '2021-01-05 09:06:44'),
(754, 'AJMERA REALTY & INFRA INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(755, 'COCHIN MINERALS AND RUTILE LTD', '120', '', '2021-01-05 09:06:44'),
(756, 'INDIA STEEL WORKS LIMITED', '120', '', '2021-01-05 09:06:44'),
(757, 'RAJKUMAR FORGE LIMITED', '120', '', '2021-01-05 09:06:44'),
(758, 'CARBORUNDUM UNIVERSAL LTD', '120', '', '2021-01-05 09:06:44'),
(759, 'MMTC LTD', '120', '', '2021-01-05 09:06:44'),
(760, 'VALLABH STEELS LTD', '120', '', '2021-01-05 09:06:44'),
(761, 'P.M. TELELINNKS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(762, 'SMITHS & FOUNDERS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(763, 'TATA METALIKS LIMITED', '120', '', '2021-01-05 09:06:44'),
(764, 'SHAH ALLOYS LTD.', '120', '', '2021-01-05 09:06:44'),
(765, 'MONNET ISPAT & ENERGY LTD.', '120', '', '2021-01-05 09:06:44'),
(766, 'ELANGO INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(767, 'KANISHK STEEL INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(768, 'SIMPLEX CASTING LTD', '120', '', '2021-01-05 09:06:44'),
(769, 'SHREE STEEL WIRE ROPES LTD', '120', '', '2021-01-05 09:06:44'),
(770, 'GUJARAT CONTAINERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(771, 'KALYANI FORGE LTD', '120', '', '2021-01-05 09:06:44'),
(772, 'PANCHMAHAL STEEL LTD.', '120', '', '2021-01-05 09:06:44'),
(773, 'SR INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(774, 'STEELCAST LTD', '120', '', '2021-01-05 09:06:44'),
(775, 'PITTI ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(776, 'GLITTEK GRANITES LTD', '120', '', '2021-01-05 09:06:44'),
(777, 'PRADEEP METALS LTD', '120', '', '2021-01-05 09:06:44'),
(778, 'GUJARAT NATURAL RESOURCES LTD', '120', '', '2021-01-05 09:06:44'),
(779, 'REAL STRIPS LTD', '120', '', '2021-01-05 09:06:44'),
(780, 'NOVA IRON AND STEEL LTD', '120', '', '2021-01-05 09:06:44'),
(781, 'HINDUSTAN COPPER LTD.', '120', '', '2021-01-05 09:06:44'),
(782, 'SRIKALAHASTHI PIPES LTD', '120', '', '2021-01-05 09:06:44'),
(783, 'NLC INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(784, 'SPECTRA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(785, 'JMT AUTO LTD', '120', '', '2021-01-05 09:06:44'),
(786, 'K I C METALIKS LTD', '120', '', '2021-01-05 09:06:44'),
(787, 'SOLID STONE CO LTD', '120', '', '2021-01-05 09:06:44'),
(788, 'SHILP GRAVURES LTD', '120', '', '2021-01-05 09:06:44'),
(789, 'WHITE ORGANIC AGRO LTD', '120', '', '2021-01-05 09:06:44'),
(790, 'ARO GRANITE INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(791, 'DEEPAK SPINNERS LTD', '120', '', '2021-01-05 09:06:44'),
(792, 'JBF INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(793, 'LOYAL TEXTILE MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(794, 'HIMATSINGKA SEIDE LIMITED', '120', '', '2021-01-05 09:06:44'),
(795, 'BSL LTD', '120', '', '2021-01-05 09:06:44'),
(796, 'P B M POLYTEX LTD', '120', '', '2021-01-05 09:06:44'),
(797, 'ADINATH TEXTILES LTD', '120', '', '2021-01-05 09:06:44'),
(798, 'KONARK SYNTHETIC LTD', '120', '', '2021-01-05 09:06:44'),
(799, 'SURYALATA SPINNING MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(800, 'T T LTD', '120', '', '2021-01-05 09:06:44'),
(801, 'WELSPUN INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(802, 'INDIAN ACRYLICS LTD', '120', '', '2021-01-05 09:06:44'),
(803, 'GANESHA ECOSPHERE LTD', '120', '', '2021-01-05 09:06:44'),
(804, 'CEETA INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(805, 'VARDHMAN POLYTEX LTD.', '120', '', '2021-01-05 09:06:44'),
(806, 'BLACK ROSE INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(807, 'SUMEET INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(808, 'BINNY LTD', '120', '', '2021-01-05 09:06:44'),
(809, 'SANGAM (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(810, 'IKAB SECURITIES AND INVESTMENT ORD SHS', '120', '', '2021-01-05 09:06:44'),
(811, 'KUSH INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(812, 'ZENITH FIBRES LTD', '120', '', '2021-01-05 09:06:44'),
(813, 'BHILWARA SPINNERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(814, 'AARVEE DENIMS & EXPORTS LTD.', '120', '', '2021-01-05 09:06:44'),
(815, 'ASHIMA LTD', '120', '', '2021-01-05 09:06:44'),
(816, 'PIONEER EMBROIDERIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(817, 'VIPPY SPIN PRO LTD', '120', '', '2021-01-05 09:06:44'),
(818, 'RAGHUVIR SYNTHETICS LTD', '120', '', '2021-01-05 09:06:44'),
(819, 'KAMADGIRI FASHION LTD', '120', '', '2021-01-05 09:06:44'),
(820, 'OMNITEX INDUSTRIES (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(821, 'PATSPIN INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(822, 'OVERSEAS SYNTHETICS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(823, 'NEO INFRACON LTD', '120', '', '2021-01-05 09:06:44'),
(824, 'PREMIER POLYFILM LTD(NDA)', '120', '', '2021-01-05 09:06:44'),
(825, 'YARN SYNDICATE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(826, 'ATLAS JEWELLERY INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(827, 'GARWARE SYNTHETICS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(828, 'SARUP INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(829, 'MANGALAM ORGANICS LTD', '120', '', '2021-01-05 09:06:44'),
(830, 'HINDUSTAN ADHESIVES LTD', '120', '', '2021-01-05 09:06:44'),
(831, 'SRI KPR INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(832, 'JYOTI RESINS AND ADHESIVES LTD', '120', '', '2021-01-05 09:06:44'),
(833, 'MAHALAXMI RUBTECH LTD', '120', '', '2021-01-05 09:06:44'),
(834, 'OSWAL YARNS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(835, 'WINSOME TEXTILE INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(836, 'MODERN INSULATORS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(837, 'ASAHI INDIA GLASS LTD', '120', '', '2021-01-05 09:06:44'),
(838, 'MURUDESHWAR CERAMICS LTD.', '120', '', '2021-01-05 09:06:44'),
(839, 'SAINT-GOBAIN SEKURIT INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(840, 'ANANT RAJ LTD', '120', '', '2021-01-05 09:06:44'),
(841, 'MADHUSUDAN INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(842, 'RESTILE CERAMICS LTD', '120', '', '2021-01-05 09:06:44'),
(843, 'MADHAV MARBLE & GRANITES LTD.', '120', '', '2021-01-05 09:06:44'),
(844, 'HINDUSTHAN NATIONAL GLASS & INDUSTRIES', '120', '', '2021-01-05 09:06:44'),
(845, 'HALDYN GLASS LTD', '120', '', '2021-01-05 09:06:44'),
(846, 'DUROPLY INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(847, 'MANGALAM TIMBER PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(848, 'SHREYANS INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(849, 'AGIO PAPER AND INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(850, 'STAR PAPER MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(851, 'YASH PAKKA LIMITED', '120', '', '2021-01-05 09:06:44'),
(852, 'SARDA PAPERS LTD', '120', '', '2021-01-05 09:06:44'),
(853, 'NATIONAL PLYWOOD INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(854, 'ARROW GREENTECH LTD', '120', '', '2021-01-05 09:06:44'),
(855, 'VISHNU CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(856, 'JUMBO BAG LTD', '120', '', '2021-01-05 09:06:44'),
(857, 'N R AGARWAL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(858, 'SHREE RAJESHWARANAND PAPER MILLS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(859, '3P LAND HOLDINGS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(860, 'SANGAL PAPERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(861, 'VENTURA TEXTILES LTD', '120', '', '2021-01-05 09:06:44'),
(862, 'SHREE KARTHIK PAPERS LTD', '120', '', '2021-01-05 09:06:44'),
(863, 'SOUTH INDIA PAPER MILLS LIMITED', '120', '', '2021-01-05 09:06:44'),
(864, 'SCANDENT IMAGING LTD', '120', '', '2021-01-05 09:06:44'),
(865, 'VINDHYA TELELINKS LTD', '120', '', '2021-01-05 09:06:44'),
(866, 'RUTTONSHA INTERNATIONAL RECTIFIER LTD', '120', '', '2021-01-05 09:06:44'),
(867, 'ADOR WELDING LTD.', '120', '', '2021-01-05 09:06:44'),
(868, 'SALZER ELECTRONICS LTD', '120', '', '2021-01-05 09:06:44'),
(869, 'JETKING INFOTRAIN LTD', '120', '', '2021-01-05 09:06:44'),
(870, 'IND AGIV COMMERCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(871, 'APLAB LTD', '120', '', '2021-01-05 09:06:44'),
(872, 'PCS TECHNOLOGY LTD', '120', '', '2021-01-05 09:06:44'),
(873, 'USHA MARTIN LIMITED', '120', '', '2021-01-05 09:06:44'),
(874, 'SPEL SEMICONDUCTOR LIMITED', '120', '', '2021-01-05 09:06:44'),
(875, 'SUBROS LIMITED', '120', '', '2021-01-05 09:06:44'),
(876, 'HONEYWELL AUTOMATION INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(877, 'SWITCHING TECHNOLOGY GUNTHER LTD', '120', '', '2021-01-05 09:06:44'),
(878, 'LUMAX INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(879, 'DIGISPICE TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(880, 'CALCOM VISION LTD', '120', '', '2021-01-05 09:06:44'),
(881, 'B C C FUBA INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(882, 'PRECISION ELECTRONICS LTD', '120', '', '2021-01-05 09:06:44'),
(883, 'HBL POWER SYSTEMS LTD', '120', '', '2021-01-05 09:06:44'),
(884, 'S AND S POWER SWITCHGEAR ORD SHS', '120', '', '2021-01-05 09:06:44'),
(885, 'GUJARAT POLY ELECTRONICS LTD', '120', '', '2021-01-05 09:06:44'),
(886, 'GUJARAT INDUSTRIES POWER COMPANY LIMITED', '120', '', '2021-01-05 09:06:44'),
(887, 'CMI LTD', '120', '', '2021-01-05 09:06:44'),
(888, 'MOTHERSON SUMI SYSTEMS LIMITED', '120', '', '2021-01-05 09:06:44'),
(889, 'MINDTECK (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(890, 'HAVELLS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(891, 'ACI INFOCOM LTD', '120', '', '2021-01-05 09:06:44'),
(892, 'INCAP ORD SHS', '120', '', '2021-01-05 09:06:44'),
(893, 'GUJARAT INTRUX LTD', '120', '', '2021-01-05 09:06:44'),
(894, 'IGARASHI MOTORS INDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(895, 'SYMPHONY LTD', '120', '', '2021-01-05 09:06:44'),
(896, 'VINTRON INFORMATICS LTD', '120', '', '2021-01-05 09:06:44'),
(897, 'VXL INSTRUMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(898, 'SHYAM TELECOM LIMITED', '120', '', '2021-01-05 09:06:44'),
(899, 'PATELS AIRTEMP (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(900, 'BUTTERFLY GANDHIMATHI APPLIANCES LTD', '120', '', '2021-01-05 09:06:44'),
(901, 'ATHENA GLOBAL TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(902, 'DUTRON POLYMERS LTD', '120', '', '2021-01-05 09:06:44'),
(903, 'R S SOFTWARE (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(904, 'MAGNA ELECTRO CASTINGS LTD', '120', '', '2021-01-05 09:06:44'),
(905, 'LINAKS MICROELECTRONICS LTD', '120', '', '2021-01-05 09:06:44'),
(906, 'ELNET TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(907, 'ACCEL LTD', '120', '', '2021-01-05 09:06:44'),
(908, 'WEBSOL ENERGY SYSTEM LTD', '120', '', '2021-01-05 09:06:44'),
(909, 'ROTO PUMPS LIMITED', '120', '', '2021-01-05 09:06:44'),
(910, 'TTK PRESTIGE LIMITED', '120', '', '2021-01-05 09:06:44'),
(911, 'D & H INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(912, 'RAJRATAN GLOBAL WIRE LTD', '120', '', '2021-01-05 09:06:44'),
(913, 'SURANA TELECOM AND POWER LTD', '120', '', '2021-01-05 09:06:44'),
(914, 'ONWARD TECHNOLOGIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(915, 'CENTUM ELECTRONICS LTD.', '120', '', '2021-01-05 09:06:44'),
(916, 'ALFA TRANSFORMERS LTD', '120', '', '2021-01-05 09:06:44'),
(917, 'STARLITE COMPONENTS LTD', '120', '', '2021-01-05 09:06:44'),
(918, 'NHC FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(919, 'TRIGYN TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(920, 'KEI INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(921, 'IMP POWERS LTD', '120', '', '2021-01-05 09:06:44'),
(922, 'KEERTHI INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(923, 'GUJARAT SIDHEE CEMENT LTD', '120', '', '2021-01-05 09:06:44'),
(924, 'SURAJ PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(925, 'ANJANI PORTLAND CEMENT LTD', '120', '', '2021-01-05 09:06:44'),
(926, 'MODI NATURALS LIMITED', '120', '', '2021-01-05 09:06:44'),
(927, 'TASTY BITE EATABLES LTD', '120', '', '2021-01-05 09:06:44'),
(928, 'RITESH INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(929, 'AVT NATURAL PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(930, 'HINDUSTAN FOODS LTD(NDA)', '120', '', '2021-01-05 09:06:44'),
(931, 'NAHAR INDUSTRIAL ENTERPRISES LIMITED', '120', '', '2021-01-05 09:06:44'),
(932, 'VADILAL ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(933, 'VADILAL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(934, 'ASHIANA AGRO INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(935, 'ADF FOODS LTD.', '120', '', '2021-01-05 09:06:44'),
(936, 'RETRO GREEN REVOLUTION ORD SHS', '120', '', '2021-01-05 09:06:44'),
(937, 'AJANTA SOYA LTD', '120', '', '2021-01-05 09:06:44'),
(938, 'WILLIAMSON MAGAR AND CO LTD', '120', '', '2021-01-05 09:06:44'),
(939, 'RICHIRICH INVENTURES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(940, 'SUPERIOR INDUSTRIAL ENTERPRISES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(941, 'SAPTARISHI AGRO INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(942, 'JVL AGRO INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(943, 'SANWARIA CONSUMER LTD', '120', '', '2021-01-05 09:06:44'),
(944, 'PRIMA AGRO LTD', '120', '', '2021-01-05 09:06:44'),
(945, 'TARAI FOODS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(946, 'MODERN DAIRIES LTD', '120', '', '2021-01-05 09:06:44'),
(947, 'BAMBINO AGRO INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(948, 'PRIME INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(949, 'VIKAS WSP LIMITED', '120', '', '2021-01-05 09:06:44'),
(950, 'POONA DAL AND OIL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(951, 'TRANSGLOBE FOODS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(952, 'ANIK INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(953, 'KSE LTD', '120', '', '2021-01-05 09:06:44'),
(954, 'NARBADA GEMS AND JEWELLERY LTD', '120', '', '2021-01-05 09:06:44'),
(955, 'VIRAT CRANE INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(956, 'IB INFOTECH ENTERPRISES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(957, 'CHORDIA FOOD PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(958, 'CIAN AGRO INDUSTRIES&INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(959, 'TAI INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(960, 'NK INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(961, 'NCC BLUE WATER PRODUCTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(962, 'ASIAN TEA AND EXPORTS LTD', '120', '', '2021-01-05 09:06:44'),
(963, 'HERITAGE FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(964, 'SIMRAN FARMS LTD', '120', '', '2021-01-05 09:06:44'),
(965, 'DFM FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(966, 'CCL PRODUCTS (INDIA) LIMITED', '120', '', '2021-01-05 09:06:44'),
(967, 'KELLTON TECH SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(968, 'SURYO FOODS AND INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(969, 'INTEGRATED PROTEINS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(970, 'MAHAAN FOODS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(971, 'RICO AUTO INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(972, 'OMAX AUTOS LIMITED', '120', '', '2021-01-05 09:06:44'),
(973, 'MUNJAL SHOWA LIMITED', '120', '', '2021-01-05 09:06:44'),
(974, 'JAMNA AUTO INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(975, 'SUNDARAM-CLAYTON LIMITED', '120', '', '2021-01-05 09:06:44'),
(976, 'JTEKT INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(977, 'MUNJAL AUTO INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(978, 'JAY BHARAT MARUTI LTD', '120', '', '2021-01-05 09:06:44'),
(979, 'RACL GEARTECH LTD', '120', '', '2021-01-05 09:06:44'),
(980, 'SAMKRG PISTONS AND RINGS LTD', '120', '', '2021-01-05 09:06:44'),
(981, 'SICAL LOGISTICS LTD.', '120', '', '2021-01-05 09:06:44'),
(982, 'RATNAMANI METALS AND TUBES LIMITED', '120', '', '2021-01-05 09:06:44'),
(983, 'VESUVIUS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(984, 'AUTOMOTIVE STAMPINGS AND ASSEMBLIES LTD', '120', '', '2021-01-05 09:06:44'),
(985, 'ARCEE INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(986, 'ABC INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(987, 'BALURGHAT TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(988, 'SIBAR AUTO PARTS LTD', '120', '', '2021-01-05 09:06:44'),
(989, 'SHREYAS SHIPPING & LOGISTICS LTD', '120', '', '2021-01-05 09:06:44'),
(990, 'STARLOG ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(991, 'EUROTEX INDUSTRIES AND EXPORTS LTD', '120', '', '2021-01-05 09:06:44'),
(992, 'INDO COUNT INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(993, 'MARAL OVERSEAS LIMITED', '120', '', '2021-01-05 09:06:44'),
(994, 'SOMA TEXTILES AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(995, 'KAKATIYA TEXTILES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(996, 'TRIDENT LTD', '120', '', '2021-01-05 09:06:44'),
(997, 'ALOK INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(998, 'PASARI SPINNING MILLS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(999, 'AMARJOTHI SPINNING MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(1000, 'OLYMPIA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1001, 'NAGREEKA EXPORTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1002, 'SUDITI INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1003, 'SHREE BHAVYA FABRICS LTD', '120', '', '2021-01-05 09:06:44'),
(1004, 'ADITYA SPINNERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1005, 'PRIME URBAN DEVELOPMENT INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1006, 'DHANLAXMI FABRICS LTD', '120', '', '2021-01-05 09:06:44'),
(1007, 'ZODIAC CLOTHING COMPANY LTD.', '120', '', '2021-01-05 09:06:44'),
(1008, 'INANNA FASHION AND TRENDS LTD', '120', '', '2021-01-05 09:06:44'),
(1009, 'SUPER SPINNING MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(1010, 'SEASONS FURNISHINGS LTD', '120', '', '2021-01-05 09:06:44'),
(1011, 'SIL INVESTMENTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1012, 'SURYALAKSHMI COTTON MILLS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1013, 'SAMTEX FASHIONS LTD', '120', '', '2021-01-05 09:06:44'),
(1014, 'DHANALAXMI ROTO SPINNERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1015, 'DAMODAR INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1016, 'UNIROYAL INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1017, 'TATIA GLOBAL VENNTURE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1018, 'SAMBANDAM SPINNING MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(1019, 'KITEX GARMENTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1020, 'CRANEX ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1021, 'BATLIBOI LTD.', '120', '', '2021-01-05 09:06:44'),
(1022, 'AUSTIN ENGINEERING CO LTD', '120', '', '2021-01-05 09:06:44'),
(1023, 'UNITED DRILLING TOOLS LTD', '120', '', '2021-01-05 09:06:44'),
(1024, 'FLUIDOMAT LTD', '120', '', '2021-01-05 09:06:44'),
(1025, 'EMA INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1026, 'WINDSOR MACHINES LTD', '120', '', '2021-01-05 09:06:44'),
(1027, 'SHANTHI GEARS LTD.', '120', '', '2021-01-05 09:06:44'),
(1028, 'HONDA INDIA POWER PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(1029, 'HI-TECH GEARS LTD', '120', '', '2021-01-05 09:06:44'),
(1030, 'ELGI EQUIPMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(1031, 'UNITED VAN DER HORST ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1032, 'KILBURN ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(1033, 'BIRLA PRECISION TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1034, 'YUKEN INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1035, 'TIMKEN INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(1036, 'VOITH PAPER FABRICS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1037, 'ARTSON ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(1038, 'SOLITAIRE MACHINE TOOLS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1039, 'DIAMOND POWER INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(1040, 'INDSIL HYDRO POWER AND MANGANESE LTD', '120', '', '2021-01-05 09:06:44'),
(1041, 'ITL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1042, 'FRONTIER SPRINGS LTD', '120', '', '2021-01-05 09:06:44'),
(1043, 'PRAJ INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1044, 'YOGI SUNG WON INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1045, 'HLE GLASCOAT LTD', '120', '', '2021-01-05 09:06:44'),
(1046, 'GUJARAT APOLLO INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1047, 'TANEJA AEROSPACE & AVIATION LTD.', '120', '', '2021-01-05 09:06:44'),
(1048, 'CONART ENGINEERS LTD', '120', '', '2021-01-05 09:06:44'),
(1049, 'MM FORGINGS LTD', '120', '', '2021-01-05 09:06:44'),
(1050, 'MAYUR UNIQUOTERS LTD', '120', '', '2021-01-05 09:06:44'),
(1051, 'CENLUB INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1052, 'RAJOO ENGINEERS LTD', '120', '', '2021-01-05 09:06:44'),
(1053, 'JMC PROJECTS (INDIA) LIMITED', '120', '', '2021-01-05 09:06:44'),
(1054, 'VEEJAY LAKSHMI ENGINEERING WORKS LTD', '120', '', '2021-01-05 09:06:44'),
(1055, 'AHMEDABAD STEELCRAFT ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1056, 'GE T&D INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1057, 'RAM RATNA WIRES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1058, 'JAYASWAL NECO INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1059, 'KALPATARU POWER TRANSMISSION LIMITED', '120', '', '2021-01-05 09:06:44'),
(1060, 'IFM IMPEX GLOBAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1061, 'CHANDNI TEXTILES ENGINEERING INDSTRS LTD', '120', '', '2021-01-05 09:06:44'),
(1062, 'T & I GLOBAL LTD', '120', '', '2021-01-05 09:06:44'),
(1063, 'CONTROL PRINT LTD', '120', '', '2021-01-05 09:06:44'),
(1064, 'ANSAL BUILDWELL LTD.', '120', '', '2021-01-05 09:06:44'),
(1065, 'WEIZMANN LTD', '120', '', '2021-01-05 09:06:44'),
(1066, 'BN RATHI SECURITIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1067, 'RISHI TECHTEX LTD', '120', '', '2021-01-05 09:06:44'),
(1068, 'SINCLAIRS HOTELS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1069, 'SAFARI INDUSTRIES INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1070, 'FUTURISTIC SECURITIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1071, 'SANCO TRANS LTD', '120', '', '2021-01-05 09:06:44'),
(1072, 'EIH ASSOCIATED HOTELS LTD.', '120', '', '2021-01-05 09:06:44'),
(1073, 'MEDI CAPS LTD', '120', '', '2021-01-05 09:06:44'),
(1074, 'OTCO INTERNATIONAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1075, 'MORGANITE CRUCIBLE (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1076, 'ABAN OFFSHORE LTD FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(1077, 'KOKUYO CAMLIN LTD', '120', '', '2021-01-05 09:06:44'),
(1078, 'BHARAT SEATS LTD', '120', '', '2021-01-05 09:06:44'),
(1079, 'CONTINENTAL PETROLEUMS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1080, 'MACHINO PLASTICS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1081, 'PEARL POLYMERS LTD', '120', '', '2021-01-05 09:06:44'),
(1082, 'VENKY\'S (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1083, 'ADVANI HOTELS AND RESORTS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1084, 'GV FILMS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1085, 'SUPERHOUSE LTD', '120', '', '2021-01-05 09:06:44'),
(1086, 'RAMA VISION ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1087, 'TCPL PACKAGING LTD', '120', '', '2021-01-05 09:06:44'),
(1088, 'BALMER LAWRIE AND COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(1089, 'KOVAI MEDICAL CENTER AND HOSPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(1090, 'ELDECO HOUSING AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1091, 'DCM SHRIRAM LTD', '120', '', '2021-01-05 09:06:44'),
(1092, 'DCM SHRIRAM INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1093, 'MAWANA SUGARS LTD', '120', '', '2021-01-05 09:06:44'),
(1094, 'MINI DIAMONDS INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1095, 'MAHA RASHTRA APEX CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(1096, 'NILKAMAL LTD.', '120', '', '2021-01-05 09:06:44'),
(1097, 'NAHAR POLY FILMS LTD', '120', '', '2021-01-05 09:06:44'),
(1098, '3M INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1099, 'JOHNSON CONTROLS-HTCH AR CNDTNG IND LTD', '120', '', '2021-01-05 09:06:44'),
(1100, 'JM FINANCIAL LIMITED', '120', '', '2021-01-05 09:06:44'),
(1101, 'ADC INDIA COMMUNICATIONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1102, 'TAMILNADU TELECOMMUNICATIONS LTD', '120', '', '2021-01-05 09:06:44'),
(1103, 'RELIANCE INDUSTRIAL INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(1104, 'SHARP INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1105, 'LINDE INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1106, 'IND BANK HOUSING LTD', '120', '', '2021-01-05 09:06:44'),
(1107, 'LOTUS CHOCOLATES CO LTD', '120', '', '2021-01-05 09:06:44'),
(1108, 'PACIFIC INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1109, 'CHENNAI MEENAKSHI MULTISPECLTY HSPTL LTD', '120', '', '2021-01-05 09:06:44'),
(1110, 'UNIVERSAL OFFICE AUTOMATION LTD', '120', '', '2021-01-05 09:06:44'),
(1111, 'APM INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1112, 'PRECISION WIRES INDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(1113, 'KRYPTON INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1114, 'NETWORK LTD', '120', '', '2021-01-05 09:06:44'),
(1115, 'MARTIN BURN ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1116, 'FUTURE ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(1117, 'INDIAN TONERS & DEVELOPERS LTD', '120', '', '2021-01-05 09:06:44'),
(1118, 'KUNSTOFFE INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1119, 'SHIPPING CORPORATION OF INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1120, 'SIKA INTERPLANT SYSTEMS LTD', '120', '', '2021-01-05 09:06:44'),
(1121, 'ITI LIMITED', '120', '', '2021-01-05 09:06:44'),
(1122, 'DREDGING CORPORATION OF INDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(1123, 'PHAARMASIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1124, 'PODDAR HOUSING AND DEVELOPMENT LTD', '120', '', '2021-01-05 09:06:44'),
(1125, 'NATIONAL FERTILIZERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1126, 'IP RINGS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1127, 'P I INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1128, 'PLASTIBLEND INDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(1129, 'WATERBASE LTD', '120', '', '2021-01-05 09:06:44'),
(1130, 'FLEX FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(1131, 'GOLKUNDA DIAMONDS AND JEWELLERY LTD', '120', '', '2021-01-05 09:06:44'),
(1132, 'APCOTEX INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1133, 'FORTIS MALAR HOSPITALS LTD', '120', '', '2021-01-05 09:06:44'),
(1134, 'MASTEK LTD', '120', '', '2021-01-05 09:06:44'),
(1135, 'EIMCO ELECON INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1136, 'SAYAJI HOTELS LTD', '120', '', '2021-01-05 09:06:44'),
(1137, 'ASHIANA HOUSING LTD.', '120', '', '2021-01-05 09:06:44'),
(1138, 'DHUNSERI VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(1139, 'IO SYSTEM ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1140, 'MAHINDRA EPC IRRIGATION LTD', '120', '', '2021-01-05 09:06:44'),
(1141, 'SREI INFRASTRUCTURE FINANCE LIMITED', '120', '', '2021-01-05 09:06:44'),
(1142, 'MITSHI INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1143, 'MAZDA LTD', '120', '', '2021-01-05 09:06:44'),
(1144, 'VICEROY HOTELS LTD.', '120', '', '2021-01-05 09:06:44'),
(1145, 'MENON BEARINGS LTD', '120', '', '2021-01-05 09:06:44'),
(1146, 'MUKAT PIPES LTD', '120', '', '2021-01-05 09:06:44'),
(1147, 'SIMPLEX INFRASTRUCTURE LIMITED', '120', '', '2021-01-05 09:06:44'),
(1148, 'INNOVATIVE TECH PACK LTD', '120', '', '2021-01-05 09:06:44'),
(1149, 'SUPER TANNERY LTD', '120', '', '2021-01-05 09:06:44'),
(1150, 'CONSTRONICS INFRA LTD', '120', '', '2021-01-05 09:06:44'),
(1151, 'AXTAL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1152, 'PRECISION CONTAINEURS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1153, 'AVI PRODUCTS INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1154, 'MAGMA FINCORP LTD', '120', '', '2021-01-05 09:06:44'),
(1155, 'HINDUSTAN FLUOROCARBONS LTD', '120', '', '2021-01-05 09:06:44'),
(1156, 'KINGFA SCIENCE AND TECHNOLGY (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1157, 'RAMA PHOSPHATES LTD', '120', '', '2021-01-05 09:06:44'),
(1158, 'VENLON ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(1159, 'POLYPLEX CORP LTD', '120', '', '2021-01-05 09:06:44'),
(1160, 'ALBERT DAVID LTD', '120', '', '2021-01-05 09:06:44'),
(1161, 'HARYANA LEATHER CHEMICALS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1162, 'ACRYSIL LTD', '120', '', '2021-01-05 09:06:44'),
(1163, 'KABRA EXTRUSION TECHNIK LIMITED', '120', '', '2021-01-05 09:06:44'),
(1164, 'VINYL CHEMICALS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1165, 'PEE CEE COSMA SOPE LTD', '120', '', '2021-01-05 09:06:44'),
(1166, 'TCM ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1167, 'IOL CHEMICALS AND PHARMACEUTICALS LTD.', '120', '', '2021-01-05 09:06:44'),
(1168, 'KESAR PETROPRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(1169, 'VINATI ORGANICS LTD', '120', '', '2021-01-05 09:06:44'),
(1170, 'AARTI INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1171, 'WANBURY LIMITED', '120', '', '2021-01-05 09:06:44'),
(1172, 'RESONANCE SPECIALTIES LTD', '120', '', '2021-01-05 09:06:44'),
(1173, 'RASHTRIYA CHEMICALS & FERTILIZERS LTD', '120', '', '2021-01-05 09:06:44'),
(1174, 'KOPRAN LIMITED', '120', '', '2021-01-05 09:06:44'),
(1175, 'AIMCO PESTICIDES LTD', '120', '', '2021-01-05 09:06:44'),
(1176, 'GUJARAT TERCE LABORATORIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1177, 'KABRA DRUGS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1178, 'SEYA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1179, 'JAYANT AGRO-ORGANICS LTD.', '120', '', '2021-01-05 09:06:44'),
(1180, 'BCL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1181, 'SHREE HARI CHEMICALS EXPORT LTD', '120', '', '2021-01-05 09:06:44'),
(1182, 'INDO BORAX AND CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1183, 'AARTI DRUGS LTD.', '120', '', '2021-01-05 09:06:44'),
(1184, 'BODAL CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1185, 'VIMTA LABS LTD', '120', '', '2021-01-05 09:06:44'),
(1186, 'BIOFIL CHEMICALS AND PHARMACEUTICALS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1187, 'ISHITA DRUGS AND INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1188, 'MARKSANS PHARMA LIMITED', '120', '', '2021-01-05 09:06:44'),
(1189, 'UNIVERSAL STARCH CHEM ALLIED ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1190, 'AAREY DRUGS AND PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1191, 'NORRIS MEDICINES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1192, 'CAMEX LTD', '120', '', '2021-01-05 09:06:44'),
(1193, 'KAVIT INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1194, 'SYNCOM FORMULATIONS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1195, 'RIDDHI SIDDHI GLUCO BIOLS LTD.', '120', '', '2021-01-05 09:06:44'),
(1196, 'SVC INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1197, 'IPCA LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(1198, 'KILITCH DRUGS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1199, 'CORAL LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(1200, 'BACIL PHARMA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1201, 'KREBS BIOCHEMICALS AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1202, 'KMC SPECIALITY HOSPITALS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1203, 'BHASKAR AGROCHEMICALS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1204, 'SUKHJIT STARCH AND CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1205, 'NEULAND LABORATORIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1206, 'PODDAR PIGMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(1207, 'PHARMAIDS PHARMACUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1208, 'VIVID GLOBAL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1209, 'PRIYA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1210, 'TIRUPATI STARCH AND CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1211, 'JD ORGOCHEM LTD', '120', '', '2021-01-05 09:06:44'),
(1212, 'ASHOK ALCO-CHEM LTD', '120', '', '2021-01-05 09:06:44'),
(1213, 'AKSHARCHEM (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1214, 'BERYL DRUGS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1215, 'INDIAN EXTRACTIONS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1216, 'GAGAN GASES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1217, 'SHUKRA PHARMACEUTICALS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1218, 'ALUFLUORIDE LTD', '120', '', '2021-01-05 09:06:44'),
(1219, 'ARCHIT ORGANOSYS LTD', '120', '', '2021-01-05 09:06:44'),
(1220, 'INDO AMINES LTD', '120', '', '2021-01-05 09:06:44'),
(1221, 'IND SWIFT LTD.', '120', '', '2021-01-05 09:06:44'),
(1222, 'NATURAL CAPSULES LTD', '120', '', '2021-01-05 09:06:44'),
(1223, 'WELCURE DRUGS & PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1224, 'BHARAT IMMUNOLOGICALS&BIOLOGCLS CORP LTD', '120', '', '2021-01-05 09:06:44'),
(1225, 'SAVITA OIL TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1226, 'HESTER BIOSCIENCES LTD', '120', '', '2021-01-05 09:06:44'),
(1227, 'KABSONS INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1228, 'BASANT AGRO TECH INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1229, 'SANDU PHARMACEUTICALS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1230, 'NACL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1231, 'VISTA PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1232, 'SUN PHARMACEUTICAL INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1233, 'TITAN BIOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(1234, 'JENBURKT PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1235, 'HIKAL LIMITED', '120', '', '2021-01-05 09:06:44'),
(1236, 'CAPLIN POINT LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(1237, 'LINK PHARMACHEM LTD', '120', '', '2021-01-05 09:06:44'),
(1238, 'COMBAT DRUGS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1239, 'WINTAC LTD', '120', '', '2021-01-05 09:06:44'),
(1240, 'NUTRAPLUS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1241, 'EMMESSAR BIOTECH AND NUTRITION ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1242, 'NGL FINE-CHEM LTD', '120', '', '2021-01-05 09:06:44'),
(1243, 'EVEREST ORGANICS LTD', '120', '', '2021-01-05 09:06:44'),
(1244, 'AUROBINDO PHARMA LTD', '120', '', '2021-01-05 09:06:44'),
(1245, 'PHYTO CHEM INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1246, 'NATCO PHARMA LTD.', '120', '', '2021-01-05 09:06:44'),
(1247, 'DYNAMIC INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1248, 'PANAMA PETROCHEM LTD.', '120', '', '2021-01-05 09:06:44'),
(1249, 'BAL PHARMA LTD', '120', '', '2021-01-05 09:06:44'),
(1250, 'BDH INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1251, 'JAUSS POLYMERS LTD', '120', '', '2021-01-05 09:06:44'),
(1252, 'CUBEX TUBINGS LTD.', '120', '', '2021-01-05 09:06:44'),
(1253, 'POLYMECHPLAST MACHINES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1254, 'GALAXY BEARINGS LTD', '120', '', '2021-01-05 09:06:44'),
(1255, 'RAVI LEELA GRANITES LTD', '120', '', '2021-01-05 09:06:44'),
(1256, 'SHERVANI INDUSTRIAL SYNDICATE LTD', '120', '', '2021-01-05 09:06:44'),
(1257, 'SUPERTEX INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1258, 'SHETRON LIMITED', '120', '', '2021-01-05 09:06:44'),
(1259, 'TRANSGENE BIOTEK LTD', '120', '', '2021-01-05 09:06:44'),
(1260, 'MPL PLASTICS LTD', '120', '', '2021-01-05 09:06:44'),
(1261, 'NIKHIL ADHESIVES LTD', '120', '', '2021-01-05 09:06:44'),
(1262, 'MULTIBASE INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1263, 'ANDREW YULE & CO. LTD.', '120', '', '2021-01-05 09:06:44'),
(1264, 'LUDLOW JUTE & SPECIALITIES LTD', '120', '', '2021-01-05 09:06:44'),
(1265, 'ASHRAM ONLINE.COM ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1266, 'Royal Cushion Vinyl Products Ltd', '120', '', '2021-01-05 09:06:44'),
(1267, 'HITECH CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(1268, 'BLOOM DEKOR LTD', '120', '', '2021-01-05 09:06:44'),
(1269, 'FILATEX INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(1270, 'STANDARD SURFACTANTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1271, 'MERCATOR LTD', '120', '', '2021-01-05 09:06:44'),
(1272, 'MORGAN VENTURES LTD.', '120', '', '2021-01-05 09:06:44'),
(1273, 'AMRAPALI INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1274, 'PREMIER EXPLOSIVES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1275, 'MOLD-TEK TECHNOLOGIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1276, 'CRESTCHEM ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1277, 'MPHASIS LTD.', '120', '', '2021-01-05 09:06:44'),
(1278, 'MEDINOVA DIAGNOSTIC SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1279, 'DIVYASHAKTI GRANITES LTD', '120', '', '2021-01-05 09:06:44'),
(1280, 'ORIENT PRESS LTD', '120', '', '2021-01-05 09:06:44'),
(1281, 'DURO PACK ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1282, 'SWARNSARITA GEMS LTD', '120', '', '2021-01-05 09:06:44'),
(1283, 'GANESH HOUSING CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(1284, 'NMDC LIMITED', '120', '', '2021-01-05 09:06:44'),
(1285, 'PATEL INTEGRATED LOGISTICS LTD', '120', '', '2021-01-05 09:06:44'),
(1286, 'ALPHAGEO (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1287, 'RITESH PROPERTIES AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1288, 'KKALPANA INDUSTRIES (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1289, 'OK PLAY INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1290, 'KRITI INDUSTRIES INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1291, 'ASM TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1292, 'VISION CINEMAS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1293, 'WINSOME BREWERIES LTD', '120', '', '2021-01-05 09:06:44'),
(1294, 'SOUTH ASIAN ENTERPRISES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1295, 'SKY INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1296, 'PHOENIX INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(1297, 'RISHIROOP LTD', '120', '', '2021-01-05 09:06:44'),
(1298, 'PROMACT PLASTICS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1299, 'DOLPHIN MEDICAL SERVICES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1300, 'ALPINE HOUSING DEVELOPMENT CORP LTD', '120', '', '2021-01-05 09:06:44'),
(1301, 'SANGHI INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1302, 'WORLDWIDE ALUMINIUM LTD', '120', '', '2021-01-05 09:06:44'),
(1303, 'MAXIMAA SYSTEM LTD', '120', '', '2021-01-05 09:06:44'),
(1304, 'SCANPOINT GEOMATICS LTD', '120', '', '2021-01-05 09:06:44'),
(1305, 'CHOKSI LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(1306, 'COUNTRY CLUB HOSPITALITY & HOLIDAYS LTD', '120', '', '2021-01-05 09:06:44'),
(1307, 'LONGVIEW TEA COMPANY ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1308, 'ENTERPRISE INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(1309, 'TECHINDIA NIRMAN LTD', '120', '', '2021-01-05 09:06:44'),
(1310, 'TPL PLASTECH LIMITED', '120', '', '2021-01-05 09:06:44'),
(1311, 'WIM PLAST LTD', '120', '', '2021-01-05 09:06:44'),
(1312, 'LIBERTY SHOES LTD.', '120', '', '2021-01-05 09:06:44'),
(1313, 'ELECTROTHERM (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1314, 'BLUE DART EXPRESS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1315, 'EXPO GAS CONTAINERS LTD', '120', '', '2021-01-05 09:06:44'),
(1316, 'NATIONAL PLASTIC INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1317, 'MFL INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1318, 'AJWA FUN WORLD AND RESORT ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1319, 'ROYALE MANOR HOTELS AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1320, 'MIRZA INTERNATIONAL LTD.', '120', '', '2021-01-05 09:06:44'),
(1321, 'TOURISM FINANCE CORPORATION OF INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1322, 'THAKKERS DEVELOPERS LTD', '120', '', '2021-01-05 09:06:44'),
(1323, 'BHARTIYA INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(1324, 'KAMAT HOTELS INDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(1325, 'FENOPLAST LTD', '120', '', '2021-01-05 09:06:44'),
(1326, 'ECOPLAST ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1327, 'ALCHEMIST LTD.', '120', '', '2021-01-05 09:06:44'),
(1328, 'GOPALA POLYPLAST LTD', '120', '', '2021-01-05 09:06:44'),
(1329, 'NICCO PARKS & RESORTS LTD', '120', '', '2021-01-05 09:06:44'),
(1330, 'NTC INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1331, 'SANDESH LTD', '120', '', '2021-01-05 09:06:44'),
(1332, 'GARNET CONSTRUCTION LTD', '120', '', '2021-01-05 09:06:44'),
(1333, 'GOLDIAM INTERNATIONAL LTD.', '120', '', '2021-01-05 09:06:44'),
(1334, 'BRIGHT BROTHERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1335, 'CORPORATE COURIER AND CARGO ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1336, 'NARMADA GELATINES LTD', '120', '', '2021-01-05 09:06:44'),
(1337, 'PG FOILS LTD', '120', '', '2021-01-05 09:06:44'),
(1338, 'VELAN HOTELS LTD', '120', '', '2021-01-05 09:06:44'),
(1339, 'HOWARD HOTELS LTD', '120', '', '2021-01-05 09:06:44'),
(1340, 'VALIANT COMMUNICATIONS LTD.', '120', '', '2021-01-05 09:06:44'),
(1341, 'DR AGARWALS EYE HOSPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(1342, 'GREENPLY INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1343, 'UNION QUALITY PLASTICS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1344, 'PSL LIMITED', '120', '', '2021-01-05 09:06:44'),
(1345, 'SEAMEC LTD.', '120', '', '2021-01-05 09:06:44'),
(1346, 'RAGHUNATH INTERNATIONAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1347, 'CHEVIOT COMPANY LTD.', '120', '', '2021-01-05 09:06:44'),
(1348, 'DAI ICHI KARKARIA LTD', '120', '', '2021-01-05 09:06:44'),
(1349, 'RAJESWARI INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(1350, 'CONFIDENCE PETROLEUM INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1351, 'SHELTER INFRA PROJECTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1352, 'ASHIRWAD STEELS AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1353, 'BANARAS BEADS LTD', '120', '', '2021-01-05 09:06:44'),
(1354, 'AREX INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1355, 'BILCARE LTD', '120', '', '2021-01-05 09:06:44'),
(1356, 'ISF ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1357, 'RISHI LASER LTD.', '120', '', '2021-01-05 09:06:44'),
(1358, '63 MOONS TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1359, 'SARLA PERFORMANCE FIBERS LTD.', '120', '', '2021-01-05 09:06:44'),
(1360, 'HIMALYA INTERNATIONAL LTD.', '120', '', '2021-01-05 09:06:44'),
(1361, 'PADMANABH INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1362, 'TWENTY FIRST CENTURY MANAGEMENT SERVICES', '120', '', '2021-01-05 09:06:44'),
(1363, 'HARIYANA SHIP BREAKERS LTD', '120', '', '2021-01-05 09:06:44'),
(1364, 'TYROON TEA CO LTD', '120', '', '2021-01-05 09:06:44'),
(1365, 'LA OPALA RG LIMITED', '120', '', '2021-01-05 09:06:44'),
(1366, 'STYLAM INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1367, 'VENUS REMEDIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1368, 'UNIPLY DECOR LTD', '120', '', '2021-01-05 09:06:44'),
(1369, 'DHOOT INDUSTRIAL FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(1370, 'SHRI BAJRANG ALLOYS LTD', '120', '', '2021-01-05 09:06:44'),
(1371, 'URJA GLOBAL LTD', '120', '', '2021-01-05 09:06:44'),
(1372, 'ASHAPURA MINECHEM LTD', '120', '', '2021-01-05 09:06:44'),
(1373, 'SHREE PACETRONIX ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1374, 'GUJARAT ALKALIES & CHEMICALS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1375, 'INDIA CEMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(1376, 'JK TYRE & INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1377, 'MANGALORE CHEMICALS & FERTILIZERS LTD.', '120', '', '2021-01-05 09:06:44'),
(1378, 'STANDARD INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1379, 'JUBILANT LIFE SCIENCES LTD', '120', '', '2021-01-05 09:06:44'),
(1380, 'INVESTMENT TRUST OF INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1381, 'SAMYAK INTERNATIONAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1382, 'ACKNIT INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1383, 'TITAN SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(1384, 'MOHOTA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1385, 'YASHRAJ CONTAINEURS LTD', '120', '', '2021-01-05 09:06:44'),
(1386, 'LORDS ISHWAR HOTELS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1387, 'CSL FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(1388, 'SANGHVI MOVERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1389, 'SELAN EXPLORATION TECHNOLOGY LTD.', '120', '', '2021-01-05 09:06:44'),
(1390, 'FRESHTROP FRUITS LTD', '120', '', '2021-01-05 09:06:44'),
(1391, 'FAZE THREE LTD', '120', '', '2021-01-05 09:06:44'),
(1392, 'VANTAGE CORPORATE SERVICES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1393, 'RAJ PACKAGING INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1394, 'PRIVI SPECIALITY CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1395, 'NATRAJ PROTEINS LTD', '120', '', '2021-01-05 09:06:44'),
(1396, 'SAMRAT PHARMACHEM LTD', '120', '', '2021-01-05 09:06:44'),
(1397, 'NPR FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(1398, 'NILE LIMITED', '120', '', '2021-01-05 09:06:44'),
(1399, 'UDAIPUR CEMENT WORKS LTD', '120', '', '2021-01-05 09:06:44'),
(1400, 'AMCO INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1401, 'OPTIEMUS INFRACOM LTD', '120', '', '2021-01-05 09:06:44'),
(1402, 'KISAN MOULDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(1403, 'VIJAY TEXTILES LTD', '120', '', '2021-01-05 09:06:44'),
(1404, 'GARODIA CHEMICALS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1405, 'KERALA AYURVEDA LIMITED', '120', '', '2021-01-05 09:06:44'),
(1406, 'MOHIT PAPER MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(1407, 'ODYSSEY TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1408, 'SURAT TEXTILE MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(1409, 'ATHARV ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(1410, 'CHROMATIC INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1411, 'FUNDVISER CAPITAL (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1412, 'THEMIS MEDICARE LTD', '120', '', '2021-01-05 09:06:44'),
(1413, 'KALLAM TEXTILES LTD', '120', '', '2021-01-05 09:06:44'),
(1414, 'BRAWN BIOTECH ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1415, 'KINGS INFRA VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(1416, 'AURO LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(1417, 'SUVEN LIFE SCIENCES LTD.', '120', '', '2021-01-05 09:06:44'),
(1418, 'ARYAMAN FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1419, 'KAY POWER AND PAPER ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1420, 'GLOBAL CAPITAL MARKETS LTD', '120', '', '2021-01-05 09:06:44'),
(1421, 'SAINIK FINANCE & INDUSTIRES LTD', '120', '', '2021-01-05 09:06:44'),
(1422, 'RICH UNIVERSE NETWORK ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1423, 'QUANTUM DIGITAL VISION INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1424, 'KOTHARI PRODUCTS LTD.', '120', '', '2021-01-05 09:06:44'),
(1425, 'PICCADILY AGRO INDS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1426, 'CHAMAN LAL SETIA EXPORTS LTD', '120', '', '2021-01-05 09:06:44'),
(1427, 'CHANDRA PRABHU INTERNATIONAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1428, 'KIMIA BIOSCIENCES LTD', '120', '', '2021-01-05 09:06:44'),
(1429, 'HINDUSTAN TIN WORKS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1430, 'GODAVARI DRUGS LTD', '120', '', '2021-01-05 09:06:44'),
(1431, 'PREMCO GLOBAL LTD', '120', '', '2021-01-05 09:06:44'),
(1432, 'MUKESH BABU FINANCIAL SERVICES LTD(NDA)', '120', '', '2021-01-05 09:06:44'),
(1433, 'GENUS POWER INFRASTRUCTURES LTD.', '120', '', '2021-01-05 09:06:44'),
(1434, 'ASIAN OILFIELD SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1435, 'UGAR SUGAR WORKS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1436, 'ORIENT BELL LTD', '120', '', '2021-01-05 09:06:44'),
(1437, 'NRB BEARINGS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1438, 'VAMSHI RUBBER ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1439, 'NILA INFRASTRUCTURES LTD', '120', '', '2021-01-05 09:06:44'),
(1440, 'DB (INTERNATIONAL) STOCK BROKERS LTD', '120', '', '2021-01-05 09:06:44'),
(1441, 'VINYOFLEX ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1442, 'VALLABH POLY PLAST INTERNATIONAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1443, 'JINDAL CAPITAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1444, 'EPIC ENERGY LTD', '120', '', '2021-01-05 09:06:44'),
(1445, 'SUMEDHA FISCAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1446, 'CHOKSI IMAGING LTD', '120', '', '2021-01-05 09:06:44'),
(1447, 'ADOR FONTECH LTD', '120', '', '2021-01-05 09:06:44'),
(1448, 'SHIVA GLOBAL AGRO INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1449, 'SIDDHA VENTURES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1450, 'SUMERU INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1451, 'RUNGTA IRRIGATION LTD', '120', '', '2021-01-05 09:06:44'),
(1452, 'VALSON INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1453, 'SABOO SODIUM CHLORO LTD', '120', '', '2021-01-05 09:06:44'),
(1454, 'TINNA RUBBER AND INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(1455, 'VIKRAM THERMO INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1456, 'AK CAPITAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1457, 'RELAXO FOOTWEARS LTD', '120', '', '2021-01-05 09:06:44'),
(1458, 'VIRAT INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1459, 'TERAI TEA CO LTD', '120', '', '2021-01-05 09:06:44'),
(1460, 'MARG LTD.', '120', '', '2021-01-05 09:06:44'),
(1461, 'COSCO INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1462, 'SHILPA MEDICARE LTD', '120', '', '2021-01-05 09:06:44'),
(1463, 'PARAMOUNT COMMUNICATIONS LTD.', '120', '', '2021-01-05 09:06:44'),
(1464, 'NCL RESEARCH AND FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1465, 'ARCHANA SOFTWARE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1466, 'LADDERUP FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(1467, 'U Y FINCORP LTD', '120', '', '2021-01-05 09:06:44'),
(1468, 'SWASTIKA INVESTMART LTD', '120', '', '2021-01-05 09:06:44'),
(1469, 'PRIMA PLASTICS LTD', '120', '', '2021-01-05 09:06:44'),
(1470, 'TELECANOR GLOBAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1471, 'GARG FURNACE LTD', '120', '', '2021-01-05 09:06:44'),
(1472, 'SAMPRE NUTRITIONS LTD', '120', '', '2021-01-05 09:06:44'),
(1473, 'AKAR AUTO INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1474, 'VIPUL ORGANICS LTD', '120', '', '2021-01-05 09:06:44'),
(1475, 'ECO RECYCLING LTD', '120', '', '2021-01-05 09:06:44'),
(1476, 'GOODLUCK INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1477, 'GOYAL ASSOCIATES LTD', '120', '', '2021-01-05 09:06:44'),
(1478, 'ZENITH HEALTH CARE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1479, 'SUPREME HOLDINGS&HOSPITALITY (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1480, 'LYKIS LTD', '120', '', '2021-01-05 09:06:44'),
(1481, 'PRIME PROPERTY DEVELOPMENT CORP. LTD.', '120', '', '2021-01-05 09:06:44'),
(1482, 'ZENLABS ETHICA LTD', '120', '', '2021-01-05 09:06:44'),
(1483, 'JAGAN LAMPS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1484, 'ALPS INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1485, 'NOVA PUBLICATIONS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1486, 'CORAL NEWSPRINTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1487, 'STERLING TOOLS LTD', '120', '', '2021-01-05 09:06:44'),
(1488, 'K L G CAPITAL SERVICES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1489, 'DYNAMIC PORTFOLIO MANAGEMENT AND SERVICES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1490, 'CEEJAY FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(1491, 'BHAGERIA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1492, 'KRBL LTD', '120', '', '2021-01-05 09:06:44'),
(1493, 'REFNOL RESINS AND CHEMICALS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1494, 'SSPDL LTD', '120', '', '2021-01-05 09:06:44'),
(1495, 'DAIKAFFIL CHEMICALS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1496, 'CIL SECURITIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1497, 'CLIO INFOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(1498, 'CUPID LTD', '120', '', '2021-01-05 09:06:44');
INSERT INTO `bond_ltp` (`id`, `stock_name`, `current_price`, `previous_day_price`, `cdate`) VALUES
(1499, 'SUNSHIELD CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1500, 'HIPOLIN ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1501, 'COSBOARD INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1502, 'CHEMBOND CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1503, 'CAPITAL INDIA FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(1504, 'SUPER CROP SAFE LTD', '120', '', '2021-01-05 09:06:44'),
(1505, 'ALKA INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1506, 'N G INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1507, 'J R FOODS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1508, 'REMSONS INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1509, 'STANPACKS INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1510, 'SRI ADHIKARI BROTHERS TV NETWORK LTD', '120', '', '2021-01-05 09:06:44'),
(1511, 'RAMINFO LTD', '120', '', '2021-01-05 09:06:44'),
(1512, 'SUNIL AGRO FOODS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1513, 'DIANA TEA COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(1514, 'VIKAS ECOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(1515, 'INDIAN OIL CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(1516, 'ALFA ICA INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1517, 'SHRI KESHAV CEMENTS & INFRA LIMITED', '120', '', '2021-01-05 09:06:44'),
(1518, 'INDIA HOME LOAN LTD', '120', '', '2021-01-05 09:06:44'),
(1519, 'JPT SECURITIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1520, 'ROOPA INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1521, 'UNIQUE ORGANICS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1522, 'BALAJI AMINES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1523, 'VISAGAR FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1524, 'LIBORD SECURITIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1525, 'COMPETENT AUTOMOBILES CO LTD', '120', '', '2021-01-05 09:06:44'),
(1526, 'DHANVANTRI JEEVAN REKHA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1527, 'CONTIL INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1528, 'VIJAY SOLVEX LTD', '120', '', '2021-01-05 09:06:44'),
(1529, 'ALANKIT LTD', '120', '', '2021-01-05 09:06:44'),
(1530, 'NIHAR INFO GLOBAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1531, 'UNITED CREDIT LTD', '120', '', '2021-01-05 09:06:44'),
(1532, 'OM METALS INFRAPROJECTS LTD.', '120', '', '2021-01-05 09:06:44'),
(1533, 'RUBRA MEDICAMENTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1534, 'ISHAN DYES AND CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1535, 'GOTHI PLASCON INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1536, 'AMAZE ENTERTECH ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1537, 'PATEL ENGINEERING LIMITED', '120', '', '2021-01-05 09:06:44'),
(1538, 'VIRTUALSOFT SYSTEMS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1539, 'INANI MARBLES AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1540, 'GEMSTONE INVESTMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(1541, 'MEDICAMEN BIOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(1542, 'ALICON CASTALLOY LTD', '120', '', '2021-01-05 09:06:44'),
(1543, 'EPSOM PROPERTIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1544, 'ALFAVISION OVERSEAS INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1545, 'CATVISION LTD', '120', '', '2021-01-05 09:06:44'),
(1546, 'ABM KNOWLEDGEWARE LTD', '120', '', '2021-01-05 09:06:44'),
(1547, 'EMAMI LTD', '120', '', '2021-01-05 09:06:44'),
(1548, 'KEMISTAR CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(1549, 'PRANAVADITYA SPINNING MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(1550, 'SYSCHEM INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1551, 'ARMAN FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1552, 'MIDAS INFRA TRADE LTD', '120', '', '2021-01-05 09:06:44'),
(1553, 'DHANADA CORPORATION ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1554, 'GLANCE FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1555, 'SHILCHAR TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1556, 'NUCLEUS SOFTWARE EXPORTS LTD.', '120', '', '2021-01-05 09:06:44'),
(1557, 'COLINZ LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(1558, 'NALIN LEASE FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1559, 'MANAPPURAM FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(1560, 'R T S POWER CORPN LTD', '120', '', '2021-01-05 09:06:44'),
(1561, 'COMFORT INTECH LTD', '120', '', '2021-01-05 09:06:44'),
(1562, 'ANJANI SYNTHETICS LTD', '120', '', '2021-01-05 09:06:44'),
(1563, 'XTGLOBAL INFOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(1564, 'DECO MICA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1565, 'RASI ELECTRODES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1566, 'VICTORY PAPER AND BOARDS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1567, 'DHRUVA CAPITAL SERVICES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1568, 'LINC PEN AND PLASTICS LTD', '120', '', '2021-01-05 09:06:44'),
(1569, 'PRIMA INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1570, 'ANERI FINCAP ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1571, 'INDIA GELATINE & CHEMICALS LTD.', '120', '', '2021-01-05 09:06:44'),
(1572, 'PARAGON FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(1573, 'PRATIKSHA CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1574, 'ESHA MEDIA RESEARCH LTD', '120', '', '2021-01-05 09:06:44'),
(1575, 'VST TILLERS TRACTORS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1576, 'B2B SOFTWARE TECHNOLOGIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1577, 'RADHE DEVELOPERS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1578, 'ELIXIR CAPITAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1579, 'PANKAJ POLYMERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1580, 'PG INDUSTRY ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1581, 'NATIONAL PLASTIC TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1582, 'NATIONAL FITTINGS LTD', '120', '', '2021-01-05 09:06:44'),
(1583, 'ARTEFACT PROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(1584, 'DHP INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1585, 'RRIL LTD', '120', '', '2021-01-05 09:06:44'),
(1586, 'AVAILABLE FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1587, 'MARUTI SECURITIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1588, 'SRI HAVISHA HOSPITALITY AND INFRASTRUCTURE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1589, 'ROSELABS FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(1590, 'KRETTO SYSCON LTD', '120', '', '2021-01-05 09:06:44'),
(1591, 'ZYDUS WELLNESS LTD', '120', '', '2021-01-05 09:06:44'),
(1592, 'AUROMA COKE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1593, 'JUMP NETWORKS LTD', '120', '', '2021-01-05 09:06:44'),
(1594, 'JAIHIND PROJECTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1595, 'BERVIN INVESTMENT AND LEASING ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1596, 'GUJARAT INVESTA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1597, 'INDIA INFRASPACE LTD', '120', '', '2021-01-05 09:06:44'),
(1598, 'CONTAINER CORPORATION OF INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1599, 'EASTERN TREADS LTD', '120', '', '2021-01-05 09:06:44'),
(1600, 'PANACEA BIOTEC LIMITED', '120', '', '2021-01-05 09:06:44'),
(1601, 'PEETI SECURITIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1602, 'CHOICE INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(1603, 'SHRIRAM ASSET MANAGEMENT CO LTD', '120', '', '2021-01-05 09:06:44'),
(1604, 'SPARC SYSTEMS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1605, 'BYKE HOSPITALITY LTD', '120', '', '2021-01-05 09:06:44'),
(1606, 'ARIHANT FOUNDATIONS & HOUSING LTD.', '120', '', '2021-01-05 09:06:44'),
(1607, 'HASTI FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(1608, 'UPSURGE INVESTMENT AND FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1609, 'SOURCE NATURAL FOODS&HERBAL SUPPLEMENTS', '120', '', '2021-01-05 09:06:44'),
(1610, 'ALMONDZ GLOBAL SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(1611, 'ZICOM ELECTRONIC SECURITY SYSTEMS LTD.', '120', '', '2021-01-05 09:06:44'),
(1612, 'ALCHEMIST CORPORATION ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1613, 'TUNI TEXTILE MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(1614, 'RADIX INDUSTRIES INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1615, 'KIRAN PRINT PACK ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1616, 'NARENDRA PROPERTIES LTD', '120', '', '2021-01-05 09:06:44'),
(1617, 'MEGA CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(1618, 'TAMILNADU NEWSPRINT & PAPERS LTD', '120', '', '2021-01-05 09:06:44'),
(1619, 'ADVENT COMPUTER SERVICES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1620, 'SHAKTI PUMPS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1621, 'SUNGOLD CAPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(1622, 'SAFFRON INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1623, 'PRAKASH WOOLLEN & SYNTHETIC MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(1624, 'GOLDSTONE TECHNOLOGIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1625, 'G R M OVERSEAS LTD', '120', '', '2021-01-05 09:06:44'),
(1626, 'MOHIT INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1627, 'POLYLINK POLYMERS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1628, 'MINAXI TEXTILES LTD', '120', '', '2021-01-05 09:06:44'),
(1629, 'CONTINENTAL CONTROLS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1630, 'DUKE OFFSHORE LTD', '120', '', '2021-01-05 09:06:44'),
(1631, 'CYBELE INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1632, 'CG VAK SOFTWARE AND EXPORTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1633, 'NAVKAR BUILDERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1634, 'MADHUCON PROJECTS LTD.', '120', '', '2021-01-05 09:06:44'),
(1635, 'SYBLY INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1636, 'RAJESH EXPORTS LTD.', '120', '', '2021-01-05 09:06:44'),
(1637, 'ESAAR (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1638, 'MARIS SPINNERS LTD', '120', '', '2021-01-05 09:06:44'),
(1639, 'INDERGIRI FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1640, 'EVEREADY INDUSTRIES INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1641, 'ORIENT TRADELINK ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1642, 'VIKAS PROPPANT & GRANITE LTD', '120', '', '2021-01-05 09:06:44'),
(1643, 'ACE SOFTWARE EXPORTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1644, 'HATSUN AGRO PRODUCT LTD', '120', '', '2021-01-05 09:06:44'),
(1645, 'RISHABH DIGHA STEEL&ALLIED PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(1646, 'MARUTI INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(1647, 'AVON LIFESCIENCES LTD', '120', '', '2021-01-05 09:06:44'),
(1648, 'JINDAL WORLDWIDE LTD.', '120', '', '2021-01-05 09:06:44'),
(1649, 'SOMANY CERAMICS LTD', '120', '', '2021-01-05 09:06:44'),
(1650, 'RTCL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1651, 'CORAL INDIA FINANCE & HOUSING LTD', '120', '', '2021-01-05 09:06:44'),
(1652, 'ASHUTOSH PAPER MILLS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1653, 'VAS INFRASTRUCTURE LTD (CN)', '120', '', '2021-01-05 09:06:44'),
(1654, 'BERYL SECURITIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1655, 'RAP MEDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(1656, 'DEVINE IMPEX ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1657, 'BAMPSL SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(1658, 'GENERIC PHARMASEC LTD', '120', '', '2021-01-05 09:06:44'),
(1659, 'CAPRI GLOBAL CAPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(1660, 'F D C LTD', '120', '', '2021-01-05 09:06:44'),
(1661, 'K G PETRO CHEM LTD', '120', '', '2021-01-05 09:06:44'),
(1662, 'MEYER APPAREL LTD', '120', '', '2021-01-05 09:06:44'),
(1663, 'CENTERAC TECHNOLOGIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1664, 'COUNTRY CONDO\'S LTD', '120', '', '2021-01-05 09:06:44'),
(1665, 'LINCOLN PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1666, 'SWORD AND SHIELD PHARMA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1667, 'MARICO LIMITED FULLY PAID ORD. SHRS', '120', '', '2021-01-05 09:06:44'),
(1668, 'TOKYO FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1669, 'MAHAVIR INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1670, 'MAYUR LEATHER PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(1671, 'KARUTURI GLOBAL LIMITED', '120', '', '2021-01-05 09:06:44'),
(1672, 'PRITHVI EXCHANGE (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1673, 'KHYATI MULTIMEDIA ENTERTAINMENT ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1674, 'RAINBOW FOUNDATIONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1675, 'TRICOM FRUIT PRODUCTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1676, 'VIDHI SPECIALTY FOOD INGREDIENTS LTD', '120', '', '2021-01-05 09:06:44'),
(1677, 'BHAGIRADHA CHEMICALS & INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1678, 'PANCHSHEEL ORGANICS LTD', '120', '', '2021-01-05 09:06:44'),
(1679, 'MENON PISTONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1680, 'GREENCREST FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1681, 'GENNEX LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(1682, 'GINI SILK MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(1683, 'PRAJAY ENGINEERS SYNDICATE LTD', '120', '', '2021-01-05 09:06:44'),
(1684, 'SUN TECHNO OVERSEAS LTD', '120', '', '2021-01-05 09:06:44'),
(1685, 'APOLLO PIPES LTD', '120', '', '2021-01-05 09:06:44'),
(1686, 'UNJHA FORMULATIONS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1687, 'POLY MEDICURE LTD.', '120', '', '2021-01-05 09:06:44'),
(1688, 'KACHCHH MINERALS LTD', '120', '', '2021-01-05 09:06:44'),
(1689, 'KCL INFRA PROJECTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1690, 'ATUL AUTO LTD', '120', '', '2021-01-05 09:06:44'),
(1691, 'PRERNA INFRABUILD LTD', '120', '', '2021-01-05 09:06:44'),
(1692, 'METAL COATINGS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1693, 'GANGA PAPERS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1694, 'TIRUPATI SARJAN LTD', '120', '', '2021-01-05 09:06:44'),
(1695, 'RODIUM REALTY LTD(NDA)', '120', '', '2021-01-05 09:06:44'),
(1696, 'NAGARJUNA AGRI TECH ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1697, 'LAHOTI OVERSEAS LTD', '120', '', '2021-01-05 09:06:44'),
(1698, 'ZENITH STEEL PIPES & INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1699, 'TRINITY LEAGUE INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1700, 'ASIAN STAR CO LTD', '120', '', '2021-01-05 09:06:44'),
(1701, 'ORIENTAL VENEER PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(1702, 'JOINDRE CAPITAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1703, 'BHARAT AGRI FERT & REALTY LTD', '120', '', '2021-01-05 09:06:44'),
(1704, 'UNITECH INTERNATIONAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1705, 'SACHETA METALS LTD', '120', '', '2021-01-05 09:06:44'),
(1706, 'POPULAR ESTATE MANAGEMENT LTD', '120', '', '2021-01-05 09:06:44'),
(1707, 'PIONEER DISTILLERIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1708, 'GUJARAT METALLIC COAL AND COKE LTD', '120', '', '2021-01-05 09:06:44'),
(1709, 'KWALITY LTD', '120', '', '2021-01-05 09:06:44'),
(1710, 'REXNORD ELECTRONICS AND CONTROLS LTD', '120', '', '2021-01-05 09:06:44'),
(1711, 'SAWACA BUSINESS MACHINES LTD', '120', '', '2021-01-05 09:06:44'),
(1712, 'CCL INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(1713, 'GALLOPS ENTERPRISE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1714, 'SWAGRUHA INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(1715, 'TWINSTAR INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1716, 'AGARWAL INDUSTRIAL CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(1717, 'DHAMPURE SPECIALITY SUGARS LTD', '120', '', '2021-01-05 09:06:44'),
(1718, '52 WEEKS ENTERTAINMENT LTD', '120', '', '2021-01-05 09:06:44'),
(1719, 'GOLDEN CARPETS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1720, 'VERTEX SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(1721, 'RIBA TEXTILES LTD', '120', '', '2021-01-05 09:06:44'),
(1722, 'CHARTERED LOGISTICS LTD', '120', '', '2021-01-05 09:06:44'),
(1723, 'AMBIKA COTTON MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(1724, 'HIND ALUMINIUM INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1725, 'SPECTRUM FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(1726, 'INDUCTO STEEL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1727, 'SAM INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1728, 'SHREEVATSAA FINANCE AND LEASING ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1729, 'POOJA ENTERTAINMENT AND FILMS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1730, 'GRAVITY INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1731, 'WELLESLEY CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(1732, 'FILATEX FASHIONS LTD', '120', '', '2021-01-05 09:06:44'),
(1733, 'SINDHU TRADE LINKS LTD', '120', '', '2021-01-05 09:06:44'),
(1734, 'JAIN STUDIOS LTD', '120', '', '2021-01-05 09:06:44'),
(1735, 'UNISTAR MULTIMEDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1736, 'ZENOTECH LABORATORIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1737, 'HINDUSTAN BIO SCIENCES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1738, 'FRONTLINE CORPORATION ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1739, 'SWELECT ENERGY SYSTEMS LTD', '120', '', '2021-01-05 09:06:44'),
(1740, 'WALLFORT FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1741, 'KDDL LTD', '120', '', '2021-01-05 09:06:44'),
(1742, 'ABHINAV CAPITAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1743, 'KILPEST INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1744, 'KSS LTD', '120', '', '2021-01-05 09:06:44'),
(1745, 'VANDANA KNITWEAR ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1746, 'SAGAR PRODUCTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(1747, 'MUKAND ENGINEERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1748, 'INDO-CITY INFOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(1749, 'SBEC SUGAR LTD', '120', '', '2021-01-05 09:06:44'),
(1750, 'BRIJLAXMI LEASING AND FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1751, 'BSEL INFRASTRUCTURE REALTY LIMITED', '120', '', '2021-01-05 09:06:44'),
(1752, 'RELIABLE VENTURES INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1753, 'HEXAWARE TECHNOLOGIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1754, 'BANK OF BARODA LTD', '120', '', '2021-01-05 09:06:44'),
(1755, 'MOHITE INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1756, 'ANDHRA CEMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(1757, 'SKM EGG PRODUCTS EXPORT (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1758, 'WELSPUN CORP LTD', '120', '', '2021-01-05 09:06:44'),
(1759, 'H.S.INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1760, 'BANK OF INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1761, 'INDRAPRASTHA MEDICAL CORPORATION LIMITED', '120', '', '2021-01-05 09:06:44'),
(1762, 'GAIL (INDIA) LIMITED', '120', '', '2021-01-05 09:06:44'),
(1763, 'VAIBHAV GLOBAL LTD', '120', '', '2021-01-05 09:06:44'),
(1764, 'TRESCON LTD', '120', '', '2021-01-05 09:06:44'),
(1765, 'GUJARAT STATE FINANCIAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1766, 'JK PAPER LTD.', '120', '', '2021-01-05 09:06:44'),
(1767, 'SAREGAMA INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(1768, 'ADROIT INFOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(1769, 'CYBERTECH SYSTEMS AND SOFTWARE LTD', '120', '', '2021-01-05 09:06:44'),
(1770, 'ICICI BANK LTD', '120', '', '2021-01-05 09:06:44'),
(1771, 'CYIENT LTD', '120', '', '2021-01-05 09:06:44'),
(1772, 'ENGINEERS INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(1773, 'DHANLAXMI BANK LIMITED', '120', '', '2021-01-05 09:06:44'),
(1774, 'GUJARAT MINERAL DEVELOPMENT CORPN LTD', '120', '', '2021-01-05 09:06:44'),
(1775, 'GAYATRI SUGARS LTD', '120', '', '2021-01-05 09:06:44'),
(1776, 'INDUSIND BANK LTD', '120', '', '2021-01-05 09:06:44'),
(1777, 'INDIA TOURISM DEVELOPMENT CORP LTD', '120', '', '2021-01-05 09:06:44'),
(1778, 'JAMMU & KASHMIR BANK LIMITED', '120', '', '2021-01-05 09:06:44'),
(1779, 'CITY UNION BANK LTD', '120', '', '2021-01-05 09:06:44'),
(1780, 'ARCHIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1781, 'AXIS BANK LTD', '120', '', '2021-01-05 09:06:44'),
(1782, 'HB STOCKHOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(1783, 'SOUTH INDIAN BANK LIMITED', '120', '', '2021-01-05 09:06:44'),
(1784, 'ENERGY DEVELOPMENT COMPANY LTD.', '120', '', '2021-01-05 09:06:44'),
(1785, 'SONATA SOFTWARE LIMITED', '120', '', '2021-01-05 09:06:44'),
(1786, 'BENGAL TEA AND FABRICS LTD', '120', '', '2021-01-05 09:06:44'),
(1787, 'NATIONAL ALUMINIUM COMPANY LIMITED', '120', '', '2021-01-05 09:06:44'),
(1788, 'INDIA NIPPON ELECTRICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1789, 'NALWA SONS INVESTMENTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1790, 'APAR INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1791, 'ACCELYA SOLUTIONS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1792, 'CYBERMATE INFOTEK ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1793, 'HCL TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1794, 'TCFC FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(1795, 'GEOJIT FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1796, 'JINDAL STEEL & POWER LIMITED', '120', '', '2021-01-05 09:06:44'),
(1797, 'BLB LTD', '120', '', '2021-01-05 09:06:44'),
(1798, 'GLENMARK PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1799, 'WOCKHARDT LIMITED', '120', '', '2021-01-05 09:06:44'),
(1800, 'TATA COFFEE LTD.', '120', '', '2021-01-05 09:06:44'),
(1801, 'IND SWIFT LABORATORIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1802, 'MELSTAR INFORMATION TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1803, 'GE POWER INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1804, 'SHREE RAMA MULTI TECH LTD', '120', '', '2021-01-05 09:06:44'),
(1805, 'MAHINDRA LIFESPACE DEVELOPERS LTD.', '120', '', '2021-01-05 09:06:44'),
(1806, 'VAARAD VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(1807, 'CADILA HEALTHCARE LTD', '120', '', '2021-01-05 09:06:44'),
(1808, 'SHIVA CEMENT LTD', '120', '', '2021-01-05 09:06:44'),
(1809, 'CINEVISTA LTD', '120', '', '2021-01-05 09:06:44'),
(1810, 'INTENSE TECHNOLOGIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1811, 'DANLAW TECHNOLOGIES INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(1812, 'BIOPAC INDIA CORP LTD', '120', '', '2021-01-05 09:06:44'),
(1813, 'AJANTA PHARMA LTD', '120', '', '2021-01-05 09:06:44'),
(1814, 'HB PORTFOLIO LTD', '120', '', '2021-01-05 09:06:44'),
(1815, 'HB ESTATE DEVELOPERS LTD', '120', '', '2021-01-05 09:06:44'),
(1816, 'COMPUCOM SOFTWARE LTD', '120', '', '2021-01-05 09:06:44'),
(1817, 'IZMO LTD', '120', '', '2021-01-05 09:06:44'),
(1818, 'TVS MOTOR COMPANY LIMITED', '120', '', '2021-01-05 09:06:44'),
(1819, 'SOFTSOL INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1820, 'GATI LTD', '120', '', '2021-01-05 09:06:44'),
(1821, 'SUBEX LTD.', '120', '', '2021-01-05 09:06:44'),
(1822, 'TRANSPORT CORPORATION OF INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(1823, 'PADMALAYA TELEFILMS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1824, 'AKSH OPTIFIBRE LIMITED', '120', '', '2021-01-05 09:06:44'),
(1825, 'TRIVENI ENGINEERING & INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1826, 'MUKTA ARTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1827, 'HIT KIT GLOBAL SOLUTIONS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1828, 'NAGPUR POWER AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1829, 'DYNACONS SYSTEMS & SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(1830, 'PNB GILTS LTD.', '120', '', '2021-01-05 09:06:44'),
(1831, 'BRIGHTCOM GROUP LTD', '120', '', '2021-01-05 09:06:44'),
(1832, 'RAMCO INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1833, 'RAMCO SYSTEMS LTD', '120', '', '2021-01-05 09:06:44'),
(1834, 'TATA TELESERVICES (MAHARASHTRA) LIMITED', '120', '', '2021-01-05 09:06:44'),
(1835, 'VIRINCHI LTD', '120', '', '2021-01-05 09:06:44'),
(1836, 'WEP SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(1837, 'STERLITE TECHNOLOGIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1838, 'TIPS INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1839, 'MRO-TEK REALITY LTD', '120', '', '2021-01-05 09:06:44'),
(1840, 'FIRSTOBJECT TECHNOLOGIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1841, 'BABA ARTS LTD', '120', '', '2021-01-05 09:06:44'),
(1842, 'BALAJI TELEFILMS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1843, 'TYCHE INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1844, 'CALIFORNIA SOFTWARE COMPANY LTD.', '120', '', '2021-01-05 09:06:44'),
(1845, 'PRITISH NANDY COMMUNICATIONS LTD', '120', '', '2021-01-05 09:06:44'),
(1846, 'INDIAN OVERSEAS BANK', '120', '', '2021-01-05 09:06:44'),
(1847, 'TAJ GVK HOTELS & RESORTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1848, 'OPTO CIRCUITS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1849, 'CREATIVE EYE LTD', '120', '', '2021-01-05 09:06:44'),
(1850, 'AXISCADES ENGINEERING TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1851, 'KONNDOR INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1852, 'BIRLASOFT LTD', '120', '', '2021-01-05 09:06:44'),
(1853, 'USG TECH SOLUTIONS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1854, 'SAVEN TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1855, 'AVANTEL LTD.', '120', '', '2021-01-05 09:06:44'),
(1856, 'MOSCHIP TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1857, 'MEGASOFT LTD', '120', '', '2021-01-05 09:06:44'),
(1858, 'TRANS CORP INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(1859, 'CEREBRA INTEGRATED TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1860, 'NEXT MEDIAWORKS LTD', '120', '', '2021-01-05 09:06:44'),
(1861, 'SMARTLINK HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(1862, 'GODREJ CONSUMER PRODUCTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1863, 'GENUS PRIME INFRA LTD', '120', '', '2021-01-05 09:06:44'),
(1864, 'BF UTILITIES LIMITD', '120', '', '2021-01-05 09:06:44'),
(1865, 'UNITED SPIRITS LTD', '120', '', '2021-01-05 09:06:44'),
(1866, 'SANMIT INFRA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1867, 'OLECTRA GREENTECH LTD', '120', '', '2021-01-05 09:06:44'),
(1868, 'MPS LTD', '120', '', '2021-01-05 09:06:44'),
(1869, 'RAINBOW DENIM LTD', '120', '', '2021-01-05 09:06:44'),
(1870, 'CERA SANITARYWARE LTD', '120', '', '2021-01-05 09:06:44'),
(1871, 'T. SPIRITUAL WORLD LTD', '120', '', '2021-01-05 09:06:44'),
(1872, 'BHARTI AIRTEL LIMITED', '120', '', '2021-01-05 09:06:44'),
(1873, 'SHALIMAR WIRES INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1874, 'COMPUAGE INFOCOM LTD', '120', '', '2021-01-05 09:06:44'),
(1875, 'GULSHAN POLYOLS LTD', '120', '', '2021-01-05 09:06:44'),
(1876, 'FAZE THREE AUTOFAB LTD', '120', '', '2021-01-05 09:06:44'),
(1877, 'PONNI SUGARS (ERODE) LTD', '120', '', '2021-01-05 09:06:44'),
(1878, 'PUNJAB NATIONAL BANK', '120', '', '2021-01-05 09:06:44'),
(1879, 'ORACLE FINANCIAL SERVICES SOFTWARE LTD.', '120', '', '2021-01-05 09:06:44'),
(1880, 'HAZOOR MULTI PROJECTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(1881, 'KAMA HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(1882, 'APTECH LTD', '120', '', '2021-01-05 09:06:44'),
(1883, 'UNION BANK OF INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1884, 'UNITED BREWERIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1885, 'ISMT LTD.', '120', '', '2021-01-05 09:06:44'),
(1886, 'NOIDA TOLL BRIDGE COMPANY LIMITED', '120', '', '2021-01-05 09:06:44'),
(1887, 'GRANULES INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1888, 'CANARA BANK LTD', '120', '', '2021-01-05 09:06:44'),
(1889, 'BALMER LAWRIE INVESTMENTS LTD.', '120', '', '2021-01-05 09:06:44'),
(1890, 'POKARNA LTD', '120', '', '2021-01-05 09:06:44'),
(1891, 'DIVI\'S LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(1892, 'ASTRA MICROWAVE PRODUCTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1893, 'RADICO KHAITAN LIMITED', '120', '', '2021-01-05 09:06:44'),
(1894, 'SHRIRAM CITY UNION FINANCE LIMITED', '120', '', '2021-01-05 09:06:44'),
(1895, 'MARUTI SUZUKI INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1896, 'RAJAPALAYAM MILLS LTD.', '120', '', '2021-01-05 09:06:44'),
(1897, 'NAVIN FLUORINE INTERNATIONAL LIMITED', '120', '', '2021-01-05 09:06:44'),
(1898, 'UCO BANK', '120', '', '2021-01-05 09:06:44'),
(1899, 'B.A.G FILMS & MEDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(1900, 'JINDAL STAINLESS LTD', '120', '', '2021-01-05 09:06:44'),
(1901, 'SUPRAJIT ENGINEERING LTD.', '120', '', '2021-01-05 09:06:44'),
(1902, 'TVS ELECTRONICS LTD (MERGED)', '120', '', '2021-01-05 09:06:44'),
(1903, 'INDRAPRASTHA GAS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1904, 'TV TODAY NETWORK LTD.', '120', '', '2021-01-05 09:06:44'),
(1905, 'PALRED TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1906, 'PETRONET LNG LTD', '120', '', '2021-01-05 09:06:44'),
(1907, 'BIOCON LTD', '120', '', '2021-01-05 09:06:44'),
(1908, 'PTC INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1909, 'BANK OF MAHARASHTRA LTD', '120', '', '2021-01-05 09:06:44'),
(1910, 'RAMKRISHNA FORGINGS LTD', '120', '', '2021-01-05 09:06:44'),
(1911, 'DATAMATICS GLOBAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(1912, 'NEW DELHI TELEVISION LIMITED', '120', '', '2021-01-05 09:06:44'),
(1913, 'STRIDES PHARMA SCIENCE LTD', '120', '', '2021-01-05 09:06:44'),
(1914, 'JAIPRAKASH ASSOCIATES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1915, 'ULTRATECH CEMENT LTD', '120', '', '2021-01-05 09:06:44'),
(1916, 'MINDA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1917, 'TATA CONSULTANCY SERVICES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1918, 'COFORGE LTD', '120', '', '2021-01-05 09:06:44'),
(1919, 'GP PETROLEUMS LTD', '120', '', '2021-01-05 09:06:44'),
(1920, 'CENTURY PLYBOARDS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1921, 'WELSPUN ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(1922, 'NTPC LIMITED', '120', '', '2021-01-05 09:06:44'),
(1923, 'SAL STEEL LTD.', '120', '', '2021-01-05 09:06:44'),
(1924, 'JBM AUTO LTD', '120', '', '2021-01-05 09:06:44'),
(1925, 'DWARIKESH SUGAR INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1926, 'INDOCO REMEDIES LTD', '120', '', '2021-01-05 09:06:44'),
(1927, 'VIP CLOTHING LTD', '120', '', '2021-01-05 09:06:44'),
(1928, 'XCHANGING SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(1929, 'JET AIRWAYS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(1930, 'MORARJEE TEXTILES LTD.', '120', '', '2021-01-05 09:06:44'),
(1931, 'GATEWAY DISTRIPARKS LTD.', '120', '', '2021-01-05 09:06:44'),
(1932, 'JINDAL PHOTO LIMITED', '120', '', '2021-01-05 09:06:44'),
(1933, 'PONDY OXIDES AND CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(1934, 'JAIPRAKASH POWER VENTURES LIMITED', '120', '', '2021-01-05 09:06:44'),
(1935, '3I INFOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(1936, 'MCNALLY BHARAT ENGINEERING COMPANY LTD.', '120', '', '2021-01-05 09:06:44'),
(1937, 'GOKALDAS EXPORTS LTD.', '120', '', '2021-01-05 09:06:44'),
(1938, 'ALLSEC TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1939, 'IIFL FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(1940, 'MANGALAM DRUGS AND ORGANICS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1941, 'SHOPPERS STOP LIMITED', '120', '', '2021-01-05 09:06:44'),
(1942, 'NANDAN DENIM LTD', '120', '', '2021-01-05 09:06:44'),
(1943, 'JSW HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(1944, 'J K CEMENT LTD', '120', '', '2021-01-05 09:06:44'),
(1945, 'BEEYU OVERSEAS LTD', '120', '', '2021-01-05 09:06:44'),
(1946, 'UNIPLY INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1947, 'YES BANK LIMITED', '120', '', '2021-01-05 09:06:44'),
(1948, 'NECTAR LIFE SCIENCES LTD', '120', '', '2021-01-05 09:06:44'),
(1949, 'MSP STEEL & POWER LTD', '120', '', '2021-01-05 09:06:44'),
(1950, 'SPL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(1951, 'KARNATAKA BANK LIMITED', '120', '', '2021-01-05 09:06:44'),
(1952, 'MCLEOD RUSSEL INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(1953, 'FACOR ALLOYS LTD', '120', '', '2021-01-05 09:06:44'),
(1954, 'IDFC LTD', '120', '', '2021-01-05 09:06:44'),
(1955, 'VIVIMED LABS LTD', '120', '', '2021-01-05 09:06:44'),
(1956, 'RANE (MADRAS) LIMITED', '120', '', '2021-01-05 09:06:44'),
(1957, 'HT MEDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1958, 'SASKEN TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(1959, 'FCS SOFTWARE SOLUTIONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1960, 'SUZLON ENERGY LTD', '120', '', '2021-01-05 09:06:44'),
(1961, 'AURIONPRO SOLUTIONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1962, 'SHREE RENUKA SUGARS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1963, 'KM SUGAR MILLS LTD.', '120', '', '2021-01-05 09:06:44'),
(1964, 'BANNARI AMMAN SPINNING MILLS LTD.', '120', '', '2021-01-05 09:06:44'),
(1965, 'BOMBAY RAYON FASHIONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1966, 'SORIL INFRA RESOURCES LTD', '120', '', '2021-01-05 09:06:44'),
(1967, 'AIA ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(1968, 'EVEREST KANTO CYLINDER LTD', '120', '', '2021-01-05 09:06:44'),
(1969, 'REPRO INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(1970, 'PVR LIMITED', '120', '', '2021-01-05 09:06:44'),
(1971, 'RAMSARUP INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(1972, 'RADHA MADHAV CORPORATION LIMITED', '120', '', '2021-01-05 09:06:44'),
(1973, 'PUNJ LLOYD LIMITED', '120', '', '2021-01-05 09:06:44'),
(1974, 'BARTRONICS INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(1975, 'CELEBRITY FASHIONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1976, 'EDUCOMP SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(1977, 'NITIN SPINNERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1978, 'ROYAL ORCHID HOTELS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1979, 'ENTERTAINMENT NETWORK (INDIA) LIMITED', '120', '', '2021-01-05 09:06:44'),
(1980, 'CELLA SPACE LTD', '120', '', '2021-01-05 09:06:44'),
(1981, 'GUJARAT STATE PETRONET LTD', '120', '', '2021-01-05 09:06:44'),
(1982, 'JAGRAN PRAKASHAN LTD', '120', '', '2021-01-05 09:06:44'),
(1983, 'INOX LEISURE LTD', '120', '', '2021-01-05 09:06:44'),
(1984, 'DYNEMIC PRODUCTS LTD.', '120', '', '2021-01-05 09:06:44'),
(1985, 'GVK POWER AND INFRASTRUCTURE LTD.', '120', '', '2021-01-05 09:06:44'),
(1986, 'SADBHAV ENGINEERING LIMITED', '120', '', '2021-01-05 09:06:44'),
(1987, 'RELIANCE COMMUNICATIONS LTD', '120', '', '2021-01-05 09:06:44'),
(1988, 'SAKUMA EXPORTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1989, 'KEC INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(1990, 'GILLANDERS ARBUTHNOT AND CO LTD', '120', '', '2021-01-05 09:06:44'),
(1991, 'INDO TECH TRANSFORMERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1992, 'B.L. KASHYAP AND SONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(1993, 'MAHINDRA & MAHINDRA FIN. SERVICES LTD.', '120', '', '2021-01-05 09:06:44'),
(1994, 'VISA STEEL LIMITED', '120', '', '2021-01-05 09:06:44'),
(1995, 'NITCO LIMITED', '120', '', '2021-01-05 09:06:44'),
(1996, 'MPDLLTD', '120', '', '2021-01-05 09:06:44'),
(1997, 'SOLAR INDUSTRIES INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(1998, 'GALLANTT METAL LIMITED', '120', '', '2021-01-05 09:06:44'),
(1999, 'MALU PAPER MILLS LTD.', '120', '', '2021-01-05 09:06:44'),
(2000, 'UTTAM SUGAR MILLS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2001, 'STL GLOBAL LTD.', '120', '', '2021-01-05 09:06:44'),
(2002, 'ROHIT FERRO-TECH LIMITED', '120', '', '2021-01-05 09:06:44'),
(2003, 'KEWAL KIRAN CLOTHING LIMITED', '120', '', '2021-01-05 09:06:44'),
(2004, 'SUN TV NETWORK LTD.', '120', '', '2021-01-05 09:06:44'),
(2005, 'GODAWARI POWER AND ISPAT LIMITED', '120', '', '2021-01-05 09:06:44'),
(2006, 'R SYSTEMS INTERNATIONAL LIMITED', '120', '', '2021-01-05 09:06:44'),
(2007, 'EMKAY GLOBAL FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2008, 'LOKESH MACHINES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2009, 'KAMDHENU LTD', '120', '', '2021-01-05 09:06:44'),
(2010, 'PAUSHAK LTD', '120', '', '2021-01-05 09:06:44'),
(2011, 'INDITRADE CAPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(2012, 'UNITY INFRAPROJECTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2013, 'PRIME FOCUS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2014, 'ALLCARGO LOGISTICS LTD', '120', '', '2021-01-05 09:06:44'),
(2015, 'EASUN REYROLLE LTD.', '120', '', '2021-01-05 09:06:44'),
(2016, 'GMR INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2017, 'TECH MAHINDRA LTD', '120', '', '2021-01-05 09:06:44'),
(2018, 'MAHINDRA CIE AUTOMOTIVE LTD', '120', '', '2021-01-05 09:06:44'),
(2019, 'VOLTAMP TRANSFORMERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2020, 'ATLANTA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2021, 'DEEP ENERGY RESOURCES LTD', '120', '', '2021-01-05 09:06:44'),
(2022, 'HOV SERVICES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2023, 'ACTION CONSTRUCTION EQUIPMENT LIMITED', '120', '', '2021-01-05 09:06:44'),
(2024, 'GEECEE VENTURES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2025, 'RICHA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2026, 'GAYATRI PROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2027, 'FIEM INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2028, 'JHS SVENDGAARD LABORATORIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2029, 'DCB BANK LTD', '120', '', '2021-01-05 09:06:44'),
(2030, 'GLOBAL VECTRA HELICORP LIMITED', '120', '', '2021-01-05 09:06:44'),
(2031, 'INSPIRISYS SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2032, 'GTL INFRASTRUCTURE LIMITED', '120', '', '2021-01-05 09:06:44'),
(2033, 'SHIVAM AUTOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(2034, 'INFO EDGE (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2035, 'TORRENT POWER LTD', '120', '', '2021-01-05 09:06:44'),
(2036, 'PARSVNATH DEVELOPERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2037, 'SUTLEJ TEXTILES AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2038, 'LT FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(2039, 'SOBHA LTD', '120', '', '2021-01-05 09:06:44'),
(2040, 'RUCHIRA PAPERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2041, 'TANLA SOLUTIONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2042, 'ZEE MEDIA CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(2043, 'SITI NETWORKS LTD', '120', '', '2021-01-05 09:06:44'),
(2044, 'LUMAX AUTO TECHNOLOGIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2045, 'AUTOLINE INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2046, 'NETWORK 18 MEDIA & INVESTMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(2047, 'HUBTOWN LTD', '120', '', '2021-01-05 09:06:44'),
(2048, 'TV18 BROADCAST LTD', '120', '', '2021-01-05 09:06:44'),
(2049, 'CAMBRIDGE TECHNOLOGY ENTERPRISES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2050, 'TECHNOCRAFT INDUSTRIES (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2051, 'REDINGTON (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2052, 'AI CHAMPDANY INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2053, 'CINELINE INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2054, 'PEARL GLOBAL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2055, 'FIRSTSOURCE SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2056, 'POWER FINANCE CORPORATION LIMITED', '120', '', '2021-01-05 09:06:44'),
(2057, 'AHLUWALIA CONTRACTS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2058, 'TRANSWARRANTY FINANCE LIMITED', '120', '', '2021-01-05 09:06:44'),
(2059, 'C & C CONSTRUCTIONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2060, 'INDIAN BANK', '120', '', '2021-01-05 09:06:44'),
(2061, 'SMS PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(2062, 'ORIENTAL TRIMEX LIMITED', '120', '', '2021-01-05 09:06:44'),
(2063, 'MINDTREE LTD', '120', '', '2021-01-05 09:06:44'),
(2064, 'E-LAND APPAREL LTD', '120', '', '2021-01-05 09:06:44'),
(2065, 'VODAFONE IDEA LTD', '120', '', '2021-01-05 09:06:44'),
(2066, 'EURO CERAMICS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2067, 'RAJ TELEVISION NETWORK LIMITED', '120', '', '2021-01-05 09:06:44'),
(2068, 'PAGE INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2069, 'AMD INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(2070, 'LEHAR FOOTWEARS LTD', '120', '', '2021-01-05 09:06:44'),
(2071, 'ASTRAL POLY TECHNIK LTD', '120', '', '2021-01-05 09:06:44'),
(2072, 'INDIABULLS REAL ESTATE LTD', '120', '', '2021-01-05 09:06:44'),
(2073, 'CAMLIN FINE SCIENCES LTD', '120', '', '2021-01-05 09:06:44'),
(2074, 'ICRA LTD', '120', '', '2021-01-05 09:06:44'),
(2075, 'DISH TV INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2076, 'SAHYADRI INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2077, 'SREE RAYALASEEMA HI STRENGTH HYPO LTD', '120', '', '2021-01-05 09:06:44'),
(2078, 'FORTIS HEALTHCARE LTD', '120', '', '2021-01-05 09:06:44'),
(2079, 'TGB BANQUETS AND HOTELS LTD', '120', '', '2021-01-05 09:06:44'),
(2080, 'DELTA CORP LTD', '120', '', '2021-01-05 09:06:44'),
(2081, 'MIC ELECTRONICS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2082, 'INSECTICIDES INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2083, 'MCDOWELL HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(2084, 'ASAHI SONGWON COLORS LUCKY LAMINATES LTD', '120', '', '2021-01-05 09:06:44'),
(2085, 'NITIN FIRE PROTECTION INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2086, 'HARYANA CAPFIN ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2087, 'TIME TECHNOPLAST LIMITED', '120', '', '2021-01-05 09:06:44'),
(2088, 'HINDUJA GLOBAL SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2089, 'NELCAST LIMITED', '120', '', '2021-01-05 09:06:44'),
(2090, 'MEGHMANI ORGANICS LTD.', '120', '', '2021-01-05 09:06:44'),
(2091, 'V2 RETAIL LTD', '120', '', '2021-01-05 09:06:44'),
(2092, 'DLF LTD', '120', '', '2021-01-05 09:06:44'),
(2093, 'TARMAT LTD', '120', '', '2021-01-05 09:06:44'),
(2094, 'ANKIT METAL & POWER LTD', '120', '', '2021-01-05 09:06:44'),
(2095, 'SUN PHARMA ADVANCED RESEARCH CO LTD', '120', '', '2021-01-05 09:06:44'),
(2096, 'HOUSING DEVELOPMENT & INFRASTRUCTURE', '120', '', '2021-01-05 09:06:44'),
(2097, 'SURYACHAKRA POWER CORPORATION LIMITED', '120', '', '2021-01-05 09:06:44'),
(2098, 'ALLIED DIGITAL SERVICES LTD.', '120', '', '2021-01-05 09:06:44'),
(2099, 'ALPA LABORATORIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2100, 'SIR SHADI LAL ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(2101, 'OMAXE LTD', '120', '', '2021-01-05 09:06:44'),
(2102, 'REFEX INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2103, 'CENTRAL BANK OF INDIA', '120', '', '2021-01-05 09:06:44'),
(2104, 'SEL MANUFACTURING COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2105, 'ASIAN GRANITO INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2106, 'KPR MILL LTD', '120', '', '2021-01-05 09:06:44'),
(2107, 'TAKE SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2108, 'PURAVANKARA LTD', '120', '', '2021-01-05 09:06:44'),
(2109, 'MOTILAL OSWAL FINANCIAL SERVICES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2110, 'VTM LTD(NDA)', '120', '', '2021-01-05 09:06:44'),
(2111, 'INDOWIND ENERGY LIMITED', '120', '', '2021-01-05 09:06:44'),
(2112, 'MAGNUM VENTURES LTD.', '120', '', '2021-01-05 09:06:44'),
(2113, 'POWER GRID CORPORATION OF INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2114, 'KAVERI SEED COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2115, 'PAISALO DIGITAL LTD', '120', '', '2021-01-05 09:06:44'),
(2116, 'SUPREME INFRASTRUCTURE INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2117, 'MAAN ALUMINIUM LTD', '120', '', '2021-01-05 09:06:44'),
(2118, 'IL&FS ENGG & CONST COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2119, 'PARLE INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2120, 'ARCOTECH LIMITED', '120', '', '2021-01-05 09:06:44'),
(2121, 'RELIGARE ENTERPRISES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2122, 'BARAK VALLEY CEMENTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2123, 'RATHI BARS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2124, 'ADANI PORTS AND SPECIAL ECONOMIC ZONE LD', '120', '', '2021-01-05 09:06:44'),
(2125, 'EDELWEISS FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2126, 'RENAISSANCE GLOBAL LTD', '120', '', '2021-01-05 09:06:44'),
(2127, 'KOLTE-PATIL DEVELOPERS LTD', '120', '', '2021-01-05 09:06:44'),
(2128, 'KAUSHALYA INFRASTRUCTURE DEV CORP LTD', '120', '', '2021-01-05 09:06:44'),
(2129, 'JYOTHY LABS LTD', '120', '', '2021-01-05 09:06:44'),
(2130, 'ECLERX SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2131, 'TRANSFORMERS & RECTIFIERS (INDIA) LTD.', '120', '', '2021-01-05 09:06:44'),
(2132, 'BRIGADE ENTERPRISES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2133, 'BGR ENERGY SYSTEMS LTD', '120', '', '2021-01-05 09:06:44'),
(2134, 'BURNPUR CEMENT LTD', '120', '', '2021-01-05 09:06:44'),
(2135, 'MANAKSIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2136, 'PORWAL AUTO COMPONENTS LTD', '120', '', '2021-01-05 09:06:44'),
(2137, 'PPAP AUTOMOTIVE LTD', '120', '', '2021-01-05 09:06:44'),
(2138, 'ARIES AGRO LTD', '120', '', '2021-01-05 09:06:44'),
(2139, 'KUANTUM PAPERS LTD', '120', '', '2021-01-05 09:06:44'),
(2140, 'RELIANCE POWER LTD', '120', '', '2021-01-05 09:06:44'),
(2141, 'J KUMAR INFRAPROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2142, 'CORDS CABLE INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(2143, 'KNR CONSTRUCTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2144, 'ONMOBILE GLOBAL LIMITED', '120', '', '2021-01-05 09:06:44'),
(2145, 'SHRIRAM EPC LIMITED', '120', '', '2021-01-05 09:06:44'),
(2146, 'BANG OVERSEAS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2147, 'IRB INFRASTRUCTURE DEVELOPERS LTD', '120', '', '2021-01-05 09:06:44'),
(2148, 'GSS INFOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(2149, 'NAHAR CAPITAL & FINANCIAL SERVICES LTD.', '120', '', '2021-01-05 09:06:44'),
(2150, 'V GUARD INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2151, 'REC LTD', '120', '', '2021-01-05 09:06:44'),
(2152, 'GOKAK TEXTILES LTD', '120', '', '2021-01-05 09:06:44'),
(2153, 'GAMMON INFRASTRUCTURE PROJECTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2154, 'INDIABULLS VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(2155, 'TITAGARH WAGONS LTD', '120', '', '2021-01-05 09:06:44'),
(2156, 'KIRI INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2157, 'SANKHYA INFOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(2158, 'ADITYA BIRLA MONEY LTD', '120', '', '2021-01-05 09:06:44'),
(2159, 'AISHWARYA TECHNOLOGIES AND TELECOM LTD', '120', '', '2021-01-05 09:06:44'),
(2160, 'JAI BALAJI INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(2161, 'BAJAJ AUTO LTD', '120', '', '2021-01-05 09:06:44'),
(2162, 'BAJAJ FINSERV LTD', '120', '', '2021-01-05 09:06:44'),
(2163, 'GOKUL REFOILS & SOLVENT LIMITED.', '120', '', '2021-01-05 09:06:44'),
(2164, 'RPG LIFE SCIENCES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2165, 'KOTAK MAHINDRA ETF', '120', '', '2021-01-05 09:06:44'),
(2166, 'NIRAJ CEMENT STRUCTURALS LTD.', '120', '', '2021-01-05 09:06:44'),
(2167, 'RANE BRAKE LININGS LTD', '120', '', '2021-01-05 09:06:44'),
(2168, 'RANE ENGINE VALVE LTD', '120', '', '2021-01-05 09:06:44'),
(2169, 'METKORE ALLOYS & INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2170, 'SEZAL GLASS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2171, 'ARCHIDPLY INDUSTRIES LIMITED.', '120', '', '2021-01-05 09:06:44'),
(2172, 'KSK ENERGY VENTURES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2173, 'LOTUS EYE HOSPITAL AND INSTITUTE LTD', '120', '', '2021-01-05 09:06:44'),
(2174, 'SOMI CONVEYOR BELTINGS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2175, 'LGB FORGE LIMITED', '120', '', '2021-01-05 09:06:44'),
(2176, 'OCL IRON AND STEEL LIMITED', '120', '', '2021-01-05 09:06:44'),
(2177, 'SICAGEN INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2178, '20 MICRONS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2179, 'WABCO INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2180, 'ALKALI METALS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2181, 'ISGEC HEAVY ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(2182, 'INDIAN METALS & FERRO ALLOYS LTD', '120', '', '2021-01-05 09:06:44'),
(2183, 'VEDVAAG SYSTEMS LTD', '120', '', '2021-01-05 09:06:44'),
(2184, 'MOLD-TEK PACKAGING LTD', '120', '', '2021-01-05 09:06:44'),
(2185, 'MAHINDRA HOLIDAYS & RESORTS INDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(2186, 'EXCEL REALTY N INFRA LTD', '120', '', '2021-01-05 09:06:44'),
(2187, 'BENGAL & ASSAM COMPANY LIMITED', '120', '', '2021-01-05 09:06:44'),
(2188, 'ADANI POWER LTD', '120', '', '2021-01-05 09:06:44'),
(2189, 'NHPC LIMITED', '120', '', '2021-01-05 09:06:44'),
(2190, 'SURYAAMBA SPINNING MILLS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2191, 'GLOBUS SPIRITS LTD', '120', '', '2021-01-05 09:06:44'),
(2192, 'OIL INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2193, 'RELIANCE NAVAL AND ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(2194, 'BHILWARA TECHNICAL TEXTILES LTD', '120', '', '2021-01-05 09:06:44'),
(2195, 'EXPLEO SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2196, 'RATTANINDIA POWER LTD', '120', '', '2021-01-05 09:06:44'),
(2197, 'DEN NETWORKS LTD', '120', '', '2021-01-05 09:06:44'),
(2198, 'ASTEC LIFESCIENCES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2199, 'COX & KINGS LTD', '120', '', '2021-01-05 09:06:44'),
(2200, 'D LINK INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2201, 'JSW ENERGY LTD', '120', '', '2021-01-05 09:06:44'),
(2202, 'ESSAR SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(2203, 'GODREJ PROPERTIES LTD', '120', '', '2021-01-05 09:06:44'),
(2204, 'DB CORP LTD', '120', '', '2021-01-05 09:06:44'),
(2205, 'MBL INFRASTRUCTURES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2206, 'JUBILANT FOODWORKS LTD', '120', '', '2021-01-05 09:06:44'),
(2207, 'VASCON ENGINEERS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2208, 'SYNCOM HEALTHCARE LIMITED', '120', '', '2021-01-05 09:06:44'),
(2209, 'THANGAMAYIL JEWELLERY LIMITED', '120', '', '2021-01-05 09:06:44'),
(2210, 'D B REALTY LTD', '120', '', '2021-01-05 09:06:44'),
(2211, 'EMMBI INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2212, 'HATHWAY CABLE AND DATACOM LIMITED', '120', '', '2021-01-05 09:06:44'),
(2213, 'ARSS INFRASTRUCTURE PROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2214, 'TEXMO PIPES AND PRODUCTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2215, 'SUNDARAM MULTI PAP LTD', '120', '', '2021-01-05 09:06:44'),
(2216, 'COROMANDEL ENGINEERING CO LTD', '120', '', '2021-01-05 09:06:44'),
(2217, 'ROSSELL INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2218, 'MAN INFRACONSTRUCTION LTD.', '120', '', '2021-01-05 09:06:44'),
(2219, 'TAMBOLI CAPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(2220, 'INVESCO INDIA GOLD EXCHANGE TRADED FUND', '120', '', '2021-01-05 09:06:44'),
(2221, 'DQ ENTERTAINMENT INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(2222, 'IL&FS TRANSPORTATION NETWORKS LTD', '120', '', '2021-01-05 09:06:44'),
(2223, 'PRADIP OVERSEAS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2224, 'PERSISTENT SYSTEMS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2225, 'INTRASOFT TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2226, 'GOENKA DIAMOND AND JEWELS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2227, 'KCP SUGAR AND INDUSTRIES CORP. LTD.', '120', '', '2021-01-05 09:06:44'),
(2228, 'KIRLOSKAR ELECTRIC COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2229, 'TALWALKARS BETTER VALUE FITNESS LTD', '120', '', '2021-01-05 09:06:44'),
(2230, 'NEL HOLDINGS SOUTH LTD', '120', '', '2021-01-05 09:06:44'),
(2231, 'GB GLOBAL LTD', '120', '', '2021-01-05 09:06:44'),
(2232, 'SJVN LTD', '120', '', '2021-01-05 09:06:44'),
(2233, 'JAYPEE INFRATECH LIMITED', '120', '', '2021-01-05 09:06:44'),
(2234, 'EMAMI PAPER MILLS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2235, 'KRITI NUTRIENTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2236, 'PARABOLIC DRUGS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2237, 'GKB OPHTHALMICS LTD', '120', '', '2021-01-05 09:06:44'),
(2238, 'TECHNOFAB ENGINEERING LTD', '120', '', '2021-01-05 09:06:44');
INSERT INTO `bond_ltp` (`id`, `stock_name`, `current_price`, `previous_day_price`, `cdate`) VALUES
(2239, 'HINDUSTAN MEDIA VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(2240, 'EMAMI REALTY LTD', '120', '', '2021-01-05 09:06:44'),
(2241, 'ASIAN HOTELS WEST LTD', '120', '', '2021-01-05 09:06:44'),
(2242, 'ASIAN HOTELS EAST LTD', '120', '', '2021-01-05 09:06:44'),
(2243, 'BAJAJ CONSUMER CARE LTD', '120', '', '2021-01-05 09:06:44'),
(2244, 'PRAKASH STEELAGE LIMITED', '120', '', '2021-01-05 09:06:44'),
(2245, 'GUJARAT PIPAVAV PORT LTD', '120', '', '2021-01-05 09:06:44'),
(2246, 'WELSPUN INVESTMENTS AND COMMERCIALS LTD', '120', '', '2021-01-05 09:06:44'),
(2247, 'INDOSOLAR LIMITED', '120', '', '2021-01-05 09:06:44'),
(2248, 'SASTASUNDAR VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(2249, 'CAREER POINT LTD', '120', '', '2021-01-05 09:06:44'),
(2250, 'EROS INTERNATIONAL MEDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2251, 'RAMKY INFRASTRUCTURE LIMITED', '120', '', '2021-01-05 09:06:44'),
(2252, 'ORIENT GREEN POWER COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2253, 'GALLANTT ISPAT LIMITED', '120', '', '2021-01-05 09:06:44'),
(2254, 'CANTABIL RETAIL INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2255, 'VA TECH WABAG LTD', '120', '', '2021-01-05 09:06:44'),
(2256, 'BEDMUTHA INDUSTRIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2257, 'ASHOKA BUILDCON LTD', '120', '', '2021-01-05 09:06:44'),
(2258, 'COMERIAL ENGIRS & BDY BLDS CO LIMITED', '120', '', '2021-01-05 09:06:44'),
(2259, 'OBEROI REALTY LIMITED.', '120', '', '2021-01-05 09:06:44'),
(2260, 'PRESTIGE ESTATES PROJECTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2261, 'GYSCOAL ALLOYS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2262, 'COAL INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2263, 'GRAVITA INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2264, 'RPP INFRA PROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2265, 'RDB REALTY & INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2266, 'MOIL LTD', '120', '', '2021-01-05 09:06:44'),
(2267, 'ZEE LEARN LTD', '120', '', '2021-01-05 09:06:44'),
(2268, 'KESAR TERMINALS & INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2269, 'A2Z INFRA ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(2270, 'KIRLOSKAR OIL ENGINES LTD', '120', '', '2021-01-05 09:06:44'),
(2271, 'RAVIKUMAR DISTILLERIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2272, 'PUNJAB AND SIND BANK', '120', '', '2021-01-05 09:06:44'),
(2273, 'FUTURE MARKET NETWORKS LTD', '120', '', '2021-01-05 09:06:44'),
(2274, 'SURANA SOLAR LTD', '120', '', '2021-01-05 09:06:44'),
(2275, 'SHEKHAWATI POLY-YARN LIMITED', '120', '', '2021-01-05 09:06:44'),
(2276, 'KALYANI INVESTMENT CO LTD', '120', '', '2021-01-05 09:06:44'),
(2277, 'BF INVESTMENT LTD', '120', '', '2021-01-05 09:06:44'),
(2278, 'SUMMIT SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(2279, 'INNOVASSYNTH INVESTMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(2280, 'STEL HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(2281, 'OMKAR SPECIALITY CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(2282, 'JUBILANT INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2283, 'BIL ENERGY SYSTEMS LTD', '120', '', '2021-01-05 09:06:44'),
(2284, 'TEXMACO RAIL AND ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(2285, 'INDIAN TERRAIN FASHIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2286, 'FINEOTEX CHEMICAL LTD', '120', '', '2021-01-05 09:06:44'),
(2287, 'DHUNSERI INVESTMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(2288, 'ZEN TECHNOLOGIES LIMITED', '120', '', '2021-01-05 09:06:44'),
(2289, 'LOVABLE LINGERIE LTD', '120', '', '2021-01-05 09:06:44'),
(2290, 'PTC INDIA FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2291, 'TCI DEVELOPERS LTD', '120', '', '2021-01-05 09:06:44'),
(2292, 'MUTHOOT FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2293, 'FUTURE CONSUMER LTD', '120', '', '2021-01-05 09:06:44'),
(2294, 'VMS INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2295, 'KARMA ENERGY LTD', '120', '', '2021-01-05 09:06:44'),
(2296, 'EBIXCASH WORLD MONEY INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2297, 'RUSHIL DECOR LTD', '120', '', '2021-01-05 09:06:44'),
(2298, 'ENKEI WHEELS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2299, 'KRIDHAN INFRA LTD', '120', '', '2021-01-05 09:06:44'),
(2300, 'INVENTURE GROWTH AND SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(2301, 'L&T FINANCE HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(2302, 'INDIABULLS INTEGRATED SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2303, 'TREE HOUSE EDUCATION AND ACCESSORIES LTD', '120', '', '2021-01-05 09:06:44'),
(2304, 'BROOKS LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(2305, 'RUPA & COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2306, 'TD POWER SYSTEMS LTD', '120', '', '2021-01-05 09:06:44'),
(2307, 'AXIS GOLD ETF', '120', '', '2021-01-05 09:06:44'),
(2308, 'ALEMBIC PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(2309, 'VASWANI INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2310, 'PG ELECTROPLAST LTD', '120', '', '2021-01-05 09:06:44'),
(2311, 'SETUBANDHAN INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2312, 'RDB RASAYANS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2313, 'TIJARIA POLYPIPES LTD', '120', '', '2021-01-05 09:06:44'),
(2314, 'ONELIFE CAPITAL ADVISORS LTD', '120', '', '2021-01-05 09:06:44'),
(2315, 'UJAAS ENERGY LTD', '120', '', '2021-01-05 09:06:44'),
(2316, 'TRIVENI TURBINE LTD', '120', '', '2021-01-05 09:06:44'),
(2317, 'INDO THAI SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(2318, 'ESSAR SHIPPING LTD', '120', '', '2021-01-05 09:06:44'),
(2319, 'IDBI GOLD EXCHANGE TRADED FUND', '120', '', '2021-01-05 09:06:44'),
(2320, 'APL APOLLO TUBES LTD', '120', '', '2021-01-05 09:06:44'),
(2321, 'GPT INFRAPROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2322, 'FERVENT SYNERGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2323, 'THOMAS SCOTT INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2324, 'TERA SOFTWARE LTD.', '120', '', '2021-01-05 09:06:44'),
(2325, 'PMC FINCORP LTD', '120', '', '2021-01-05 09:06:44'),
(2326, 'ALLIANCE INTEGRATED METALIKS LTD', '120', '', '2021-01-05 09:06:44'),
(2327, 'ORIENT REFRACTORIES LTD', '120', '', '2021-01-05 09:06:44'),
(2328, 'MULTI COMMODITY EXCHANGE OF INDIA LTD.', '120', '', '2021-01-05 09:06:44'),
(2329, 'SCHNEIDER ELECTRIC INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2330, 'NBCC (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2331, 'MT EDUCARE LTD', '120', '', '2021-01-05 09:06:44'),
(2332, 'HEXA TRADEX LTD', '120', '', '2021-01-05 09:06:44'),
(2333, 'MAX HEIGHTS INFRASTUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2334, 'TRIBHOVANDAS BHIMJI ZAVERI LTD', '120', '', '2021-01-05 09:06:44'),
(2335, 'VARDHMAN SPECIAL STEELS LTD', '120', '', '2021-01-05 09:06:44'),
(2336, 'LOOKS HEALTH SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2337, 'SPECIALITY RESTAURANTS LTD', '120', '', '2021-01-05 09:06:44'),
(2338, 'LYPSA GEMS & JEWELLERY LTD', '120', '', '2021-01-05 09:06:44'),
(2339, 'BIO GREEN PAPERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2340, 'RATTANINDIA INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2341, 'JTL INFRA LTD', '120', '', '2021-01-05 09:06:44'),
(2342, 'ADVANCE METERING TECHNOLOGY LTD', '120', '', '2021-01-05 09:06:44'),
(2343, 'NORTH EASTERN CARRYING CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(2344, 'SANGAM RENEWABLES LTD', '120', '', '2021-01-05 09:06:44'),
(2345, 'JUPITER INFOMEDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2346, 'DUCON INFRATECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2347, 'PROZONE INTU PROPERTIES LTD', '120', '', '2021-01-05 09:06:44'),
(2348, 'SRG HOUSING FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2349, 'LAKSHMI VILAS BANK LTD.', '120', '', '2021-01-05 09:06:44'),
(2350, 'COMFORT COMMOTRADE LTD', '120', '', '2021-01-05 09:06:44'),
(2351, 'ADITRI INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2352, 'BRONZE INFRATECH LTD', '120', '', '2021-01-05 09:06:44'),
(2353, 'INTELLIVATE CAPITAL ADVISORS LTD', '120', '', '2021-01-05 09:06:44'),
(2354, 'SUPREMEX SHINE STEELS LTD', '120', '', '2021-01-05 09:06:44'),
(2355, 'RAM MINERALS AND CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(2356, 'ZUARI AGRO CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(2357, 'STEEL EXCHANGE INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2358, 'TRIO MERCANTILE & TRADING LTD', '120', '', '2021-01-05 09:06:44'),
(2359, 'CIGNITI TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2360, 'CARE RATINGS LTD', '120', '', '2021-01-05 09:06:44'),
(2361, 'PC JEWELLER LTD', '120', '', '2021-01-05 09:06:44'),
(2362, 'BHARTI INFRATEL LTD', '120', '', '2021-01-05 09:06:44'),
(2363, 'V-MART RETAIL LTD', '120', '', '2021-01-05 09:06:44'),
(2364, 'NIBE LTD', '120', '', '2021-01-05 09:06:44'),
(2365, 'MUKTA AGRICULTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2366, 'MYSTIC ELECTRONICS LTD', '120', '', '2021-01-05 09:06:44'),
(2367, 'COMFORT FINCAP ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2368, 'SBI SENSEX ETF', '120', '', '2021-01-05 09:06:44'),
(2369, 'REPCO HOME FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2370, 'NRB INDUSTRIAL BEARINGS LTD', '120', '', '2021-01-05 09:06:44'),
(2371, 'SREELEATHERS LTD', '120', '', '2021-01-05 09:06:44'),
(2372, 'SHARDA MOTOR INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2373, 'BINNY MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(2374, 'S V GLOBAL MILL LTD', '120', '', '2021-01-05 09:06:44'),
(2375, 'JUST DIAL LTD', '120', '', '2021-01-05 09:06:44'),
(2376, 'OBJECTONE INFORMATION SYSTEMS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2377, 'INDIA FINSEC LTD', '120', '', '2021-01-05 09:06:44'),
(2378, 'BRAHMAPUTRA INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2379, 'KHOOBSURAT ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2380, 'ORIENT CEMENT LTD', '120', '', '2021-01-05 09:06:44'),
(2381, 'ADITYA BIRLA FASHION AND RETAIL LTD', '120', '', '2021-01-05 09:06:44'),
(2382, 'INDIABULLS HOUSING FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2383, 'INTEGRA GARMENTS AND TEXTILES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2384, 'KUSHAL LTD', '120', '', '2021-01-05 09:06:44'),
(2385, 'TIGER LOGISTICS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2386, 'JK AGRI GENETICS LTD', '120', '', '2021-01-05 09:06:44'),
(2387, 'FUTURE LIFESTYLE FASHIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2388, 'THIRTHANKAR INFRA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2389, 'VCU DATA MANAGEMENT LTD', '120', '', '2021-01-05 09:06:44'),
(2390, 'IND RENEWABLE ENERGY ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2391, 'FIVE X TRADECOM ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2392, 'JINDAL POLY INVESTMENT & FINANCE CO LTD', '120', '', '2021-01-05 09:06:44'),
(2393, 'INTEGRA TELECOMMUNICATION & SOFTWARE LTD', '120', '', '2021-01-05 09:06:44'),
(2394, 'CAPTAIN POLYPLAST LTD', '120', '', '2021-01-05 09:06:44'),
(2395, 'ARNOLD HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(2396, 'MODEX INTERNATIONAL SECURITIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2397, 'SUNIL HEALTHCARE LTD', '120', '', '2021-01-05 09:06:44'),
(2398, 'RCI INDUSTRIES & TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2399, 'SUYOG TELEMATICS LTD', '120', '', '2021-01-05 09:06:44'),
(2400, 'NATH BIO-GENES (I) LTD', '120', '', '2021-01-05 09:06:44'),
(2401, 'AGRI-TECH (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2402, 'CHEMTECH INDUSTRIAL VALVES LTD', '120', '', '2021-01-05 09:06:44'),
(2403, 'TAAZA INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(2404, 'VIAAN INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2405, 'DENIS CHEM LAB LTD', '120', '', '2021-01-05 09:06:44'),
(2406, 'UNISHIRE URBAN INFRA LTD', '120', '', '2021-01-05 09:06:44'),
(2407, 'ETT LTD', '120', '', '2021-01-05 09:06:44'),
(2408, 'KIRAN VYAPAR LTD', '120', '', '2021-01-05 09:06:44'),
(2409, 'B C POWER CONTROLS LTD', '120', '', '2021-01-05 09:06:44'),
(2410, 'ANISHA IMPEX LTD', '120', '', '2021-01-05 09:06:44'),
(2411, 'MANGALAM INDUSTRIAL FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2412, 'VIJI FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2413, 'PHOENIX TOWNSHIP ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2414, 'RAUNAQ EPC INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(2415, 'OCEANAA BIOTEK INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2416, 'JOONKTOLLEE TEA & INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2417, 'R & B DENIMS LTD', '120', '', '2021-01-05 09:06:44'),
(2418, 'GOLD LINE INTERNATIONAL FINVEST LTD', '120', '', '2021-01-05 09:06:44'),
(2419, 'SHARP INVESTMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(2420, 'WONDERLA HOLIDAYS LTD', '120', '', '2021-01-05 09:06:44'),
(2421, 'MAESTRS ELCTRNCS & TLCMMNCTNS SYSTMS LTD', '120', '', '2021-01-05 09:06:44'),
(2422, 'DIVINUS FABRICS LTD', '120', '', '2021-01-05 09:06:44'),
(2423, 'CLASSIC GLOBAL FINANCE CAPITAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2424, 'MONEYBOXX FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2425, 'QUASAR INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2426, 'THIRANI PROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2427, 'AMARNATH SECURITIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2428, 'CAPITAL TRADE LINKS LTD', '120', '', '2021-01-05 09:06:44'),
(2429, 'CROWN TOURS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2430, 'OMANSH ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(2431, 'J TAPARIA PROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2432, 'RAMCHANDRA LEASING AND FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2433, 'SAI BABA INVESTMENT & COM ENTRPRS LTD', '120', '', '2021-01-05 09:06:44'),
(2434, 'SKIPPER LTD', '120', '', '2021-01-05 09:06:44'),
(2435, 'JAMES WARREN TEA LTD', '120', '', '2021-01-05 09:06:44'),
(2436, 'VISTAR AMAR ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2437, 'APOLLO TRICOAT TUBES LTD', '120', '', '2021-01-05 09:06:44'),
(2438, 'GULF OIL LUBRICANTS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2439, 'TTI ENTERPRISE LTD', '120', '', '2021-01-05 09:06:44'),
(2440, 'VISHAL FABRICS LTD', '120', '', '2021-01-05 09:06:44'),
(2441, 'TOYAM INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2442, 'REAL TOUCH FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2443, 'VASUNDHARA RASAYANS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2444, 'SNOWMAN LOGISTICS LTD', '120', '', '2021-01-05 09:06:44'),
(2445, 'PARNAMI CREDITS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2446, 'EJECTA MARKETING LTD', '120', '', '2021-01-05 09:06:44'),
(2447, 'SHARDA CROPCHEM LTD', '120', '', '2021-01-05 09:06:44'),
(2448, 'NAYSAA SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(2449, 'SHEMAROO ENTERTAINMENT LTD', '120', '', '2021-01-05 09:06:44'),
(2450, 'ULTRACAB (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2451, 'ECONO TRADE (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2452, 'SUCHITRA FINANCE & TRADING CO LTD', '120', '', '2021-01-05 09:06:44'),
(2453, 'DHABRIYA POLYWOOD LTD', '120', '', '2021-01-05 09:06:44'),
(2454, 'ARYAMAN CAPITAL MARKETS LTD', '120', '', '2021-01-05 09:06:44'),
(2455, 'PDS MULTINATIONAL FASHIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2456, 'HANMAN FIT LTD', '120', '', '2021-01-05 09:06:44'),
(2457, 'CEINSYS TECH LTD', '120', '', '2021-01-05 09:06:44'),
(2458, 'CRANE INFRASTRUCTURE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2459, 'NIYOGIN FINTECH LTD', '120', '', '2021-01-05 09:06:44'),
(2460, 'AKASHDEEP METAL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2461, 'CITIZEN INFOLINE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2462, 'GOENKA BUSINESS & FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2463, 'SHREE AJIT PULP AND PAPER LTD', '120', '', '2021-01-05 09:06:44'),
(2464, 'AANCHAL ISPAT LTD', '120', '', '2021-01-05 09:06:44'),
(2465, 'CAPTAIN PIPES LTD', '120', '', '2021-01-05 09:06:44'),
(2466, 'ANUBHAV INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2467, 'INTELLECT DESIGN ARENA LTD', '120', '', '2021-01-05 09:06:44'),
(2468, 'MONTE CARLO FASHIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2469, 'JEEVAN SCIENTIFIC TECHNOLOGY LTD', '120', '', '2021-01-05 09:06:44'),
(2470, 'INDO COTSPIN ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2471, 'PANAFIC INDUSTRIALS LTD', '120', '', '2021-01-05 09:06:44'),
(2472, 'CONTINENTAL SECURITIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2473, 'EMERALD LEASING FINANCE & INVESTMENT COMPANY ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2474, 'MK EXIM INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2475, 'MAGELLANIC CLOUD LTD', '120', '', '2021-01-05 09:06:44'),
(2476, 'OCTAL CREDIT CAPITAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2477, 'KANCHI KARPOORAM LTD', '120', '', '2021-01-05 09:06:44'),
(2478, 'DHUNSERI TEA & INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2479, 'VANI COMMERCIALS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2480, 'COSYN LTD', '120', '', '2021-01-05 09:06:44'),
(2481, 'KARNAVATI FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2482, 'MERCANTILE VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(2483, 'ABHINAV LEASING & FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2484, 'GENUS PAPER & BOARDS LTD', '120', '', '2021-01-05 09:06:44'),
(2485, 'MINDA CORP LTD', '120', '', '2021-01-05 09:06:44'),
(2486, 'MERCURY LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(2487, 'CONCORD DRUGS LTD', '120', '', '2021-01-05 09:06:44'),
(2488, 'WARDWIZARD INNOVATIONS & MOBILITY LTD', '120', '', '2021-01-05 09:06:44'),
(2489, 'GREENLAM INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2490, 'TALBROS ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(2491, 'SAR AUTO PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(2492, 'PTC INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2493, 'GBL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2494, 'CHENNAI FERROUS INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2495, 'GITA RENEWABLE ENERGY ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2496, 'AKME STAR HOUSING FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2497, 'BEEKAY STEEL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2498, 'SSPN FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2499, 'FRASER AND COMPANY ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2500, 'TIRUPATI TYRES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2501, 'AGI INFRA LTD', '120', '', '2021-01-05 09:06:44'),
(2502, 'BKM INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2503, 'MANAKSIA STEELS LTD', '120', '', '2021-01-05 09:06:44'),
(2504, 'MANAKSIA ALUMINIUM CO LTD', '120', '', '2021-01-05 09:06:44'),
(2505, 'MANAKSIA COATED METALS & INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2506, 'IMAGICAAWORLD ENTERTAINMENT LTD', '120', '', '2021-01-05 09:06:44'),
(2507, 'INOX WIND LTD', '120', '', '2021-01-05 09:06:44'),
(2508, 'HKG LTD', '120', '', '2021-01-05 09:06:44'),
(2509, 'FILTRA CONSULTANTS AND ENGINEERS LTD', '120', '', '2021-01-05 09:06:44'),
(2510, 'SAB INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2511, 'PAUL MERCHANTS LTD', '120', '', '2021-01-05 09:06:44'),
(2512, 'HIND SECURITIES & CREDITS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2513, 'VRL LOGISTICS LTD', '120', '', '2021-01-05 09:06:44'),
(2514, 'BODHTREE CONSULTING LTD', '120', '', '2021-01-05 09:06:44'),
(2515, 'MEP INFRASTRUCTURE DEVELOPERS LTD', '120', '', '2021-01-05 09:06:44'),
(2516, 'UFO MOVIEZ INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2517, 'PANTH INFINITY LTD', '120', '', '2021-01-05 09:06:44'),
(2518, 'SHIVALIK RASAYAN LTD', '120', '', '2021-01-05 09:06:44'),
(2519, 'INTEGRATED CAPITAL SERVICES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2520, 'PNC INFRATECH LTD', '120', '', '2021-01-05 09:06:44'),
(2521, 'ARFIN INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2522, 'HELPAGE FINLEASE LTD', '120', '', '2021-01-05 09:06:44'),
(2523, 'INDRA INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2524, 'HAWA ENGINEERS LTD', '120', '', '2021-01-05 09:06:44'),
(2525, 'AUTHUM INVESTMENT & INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2526, 'POCL ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(2527, 'AMBA ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(2528, 'DEVHARI EXPORTS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2529, 'MOONGIPA SECURITIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2530, 'SATIA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2531, 'GARMENT MANTRA LIFESTYLE LTD', '120', '', '2021-01-05 09:06:44'),
(2532, 'MAURIA UDYOG LTD', '120', '', '2021-01-05 09:06:44'),
(2533, 'MISHKA EXIM LTD', '120', '', '2021-01-05 09:06:44'),
(2534, 'SPORTKING INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2535, 'VMV HOLIDAYS LTD', '120', '', '2021-01-05 09:06:44'),
(2536, 'AMBITION MICA LTD', '120', '', '2021-01-05 09:06:44'),
(2537, 'JIYA ECO PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(2538, 'RUDRA GLOBAL INFRA PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(2539, 'LOYAL EQUIPMENTS LTD', '120', '', '2021-01-05 09:06:44'),
(2540, 'GALA GLOBAL PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(2541, 'MAJESTIC RESEARCH SERVICES & SLTNS LTD', '120', '', '2021-01-05 09:06:44'),
(2542, 'GRANDEUR PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(2543, 'BALKRISHNA PAPER MILLS LTD', '120', '', '2021-01-05 09:06:44'),
(2544, 'SHYAM CENTURY FERROUS LTD', '120', '', '2021-01-05 09:06:44'),
(2545, 'ADANI TRANSMISSION LTD', '120', '', '2021-01-05 09:06:44'),
(2546, 'STAR DELTA TRANSFORMERS LTD', '120', '', '2021-01-05 09:06:44'),
(2547, 'DR HABEEBULLAH LIFE SCIENCES LTD', '120', '', '2021-01-05 09:06:44'),
(2548, 'SYNGENE INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(2549, 'MANGALAM SEEDS LTD', '120', '', '2021-01-05 09:06:44'),
(2550, 'KAYA LTD', '120', '', '2021-01-05 09:06:44'),
(2551, 'SYMBIOX INVESTMENT & TRADING CO LTD', '120', '', '2021-01-05 09:06:44'),
(2552, 'ORTIN LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(2553, 'MAJESCO LTD', '120', '', '2021-01-05 09:06:44'),
(2554, 'OSWAL GREENTECH LTD', '120', '', '2021-01-05 09:06:44'),
(2555, 'AK SPINTEX LTD', '120', '', '2021-01-05 09:06:44'),
(2556, 'ARVIND SMARTSPACES LTD', '120', '', '2021-01-05 09:06:44'),
(2557, 'POWER MECH PROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2558, 'RAMA STEEL TUBES LTD', '120', '', '2021-01-05 09:06:44'),
(2559, 'THINKINK PICTUREZ LTD', '120', '', '2021-01-05 09:06:44'),
(2560, 'NISHTHA FINANCE & INVEST IND ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2561, 'UTI-SENSEX EXCHANGE TRADED FUND', '120', '', '2021-01-05 09:06:44'),
(2562, 'UTI-NIFTY EXCHANGE TRADED FUND', '120', '', '2021-01-05 09:06:44'),
(2563, 'VETO SWITCH GEARS AND CABLES LTD', '120', '', '2021-01-05 09:06:44'),
(2564, 'NAVKAR CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(2565, 'SHREE PUSHKAR CHEMICALS & FERTILISRS LTD', '120', '', '2021-01-05 09:06:44'),
(2566, 'GUJARAT GAS LTD', '120', '', '2021-01-05 09:06:44'),
(2567, 'SADBHAV INFRASTRUCTURE PROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2568, 'PRABHAT DAIRY LTD', '120', '', '2021-01-05 09:06:44'),
(2569, 'SAL AUTOMOTIVE LTD', '120', '', '2021-01-05 09:06:44'),
(2570, 'POLYSPIN EXPORTS LTD.', '120', '', '2021-01-05 09:06:44'),
(2571, 'PRITIKA AUTO INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2572, 'SRI KRISHNA CONSTRUCTIONS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2573, 'ACME RESOURCES LTD', '120', '', '2021-01-05 09:06:44'),
(2574, 'BELLA CASA FASHION & RETAIL LTD', '120', '', '2021-01-05 09:06:44'),
(2575, 'MALLCOM (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2576, 'VAKSONS AUTOMOBILES LTD', '120', '', '2021-01-05 09:06:44'),
(2577, 'SATIN CREDITCARE NETWORK LTD', '120', '', '2021-01-05 09:06:44'),
(2578, 'GENERIC ENGINEERING CONSTRT & PRJCTS LTD', '120', '', '2021-01-05 09:06:44'),
(2579, 'SINNER ENERGY INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2580, 'TEJNAKSH HEALTHCARE LTD', '120', '', '2021-01-05 09:06:44'),
(2581, 'BRILLIANT PORTFOLIOS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2582, 'IDFC FIRST BANK LTD', '120', '', '2021-01-05 09:06:44'),
(2583, 'BEARDSELL LTD', '120', '', '2021-01-05 09:06:44'),
(2584, 'INTERGLOBE AVIATION LTD', '120', '', '2021-01-05 09:06:44'),
(2585, 'IGC INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2586, 'S H KELKAR AND COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2587, 'DEEPTI ALLOY STEEL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2588, 'SHREE GANESH BIOTECH INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2589, 'GTV ENGINEERING ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2590, 'LIC MF ETF-NIFTY 50', '120', '', '2021-01-05 09:06:44'),
(2591, 'ADCON CAPITAL SERVICES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2592, 'GAURAV MERCANTILES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2593, 'HDFC NIFTY 50 ETF-GROWTH', '120', '', '2021-01-05 09:06:44'),
(2594, 'HDFC SENSEX ETF-GROWTH', '120', '', '2021-01-05 09:06:44'),
(2595, 'UDAY JEWELLERY INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2596, 'SHAILJA COMMERCIAL TRADE FRENZY ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2597, 'NAVKETAN MERCHANTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2598, 'ALKEM LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(2599, 'DR. LAL PATHLABS LTD', '120', '', '2021-01-05 09:06:44'),
(2600, 'NAVKETAN MERCHANTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2601, 'SUNCARE TRADERS LTD', '120', '', '2021-01-05 09:06:44'),
(2602, 'CREATIVE CASTINGS LTD', '120', '', '2021-01-05 09:06:44'),
(2603, 'AAYUSH FOOD AND HERBS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2604, 'LUX INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2605, 'ABHISHEK INFRAVENTURES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2606, 'APOORVA LEASING FINANCE AND INVESTMENT COMPANY ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2607, 'NARAYANA HRUDAYALAYA LTD', '120', '', '2021-01-05 09:06:44'),
(2608, 'ROXY EXPORTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2609, 'AARNAV FASHIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2610, 'ACEWIN AGRITECK LTD', '120', '', '2021-01-05 09:06:44'),
(2611, 'MISHTANN FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(2612, 'JINDAL STAINLESS (HISAR) LTD', '120', '', '2021-01-05 09:06:44'),
(2613, 'A INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2614, 'BCL ENTERPRISES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2615, 'PRECISION CAMSHAFTS LTD', '120', '', '2021-01-05 09:06:44'),
(2616, 'TEAMLEASE SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2617, 'VIDLI RESTAURANTS LTD', '120', '', '2021-01-05 09:06:44'),
(2618, 'BEST AGROLIFE LTD', '120', '', '2021-01-05 09:06:44'),
(2619, 'ACE MEN ENGG WORKS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2620, 'RGF CAPITAL MARKETS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2621, 'RADHAGOBIND COMMERCIAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2622, 'QUICK HEAL TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2623, 'KAPIL RAJ FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2624, 'KP ENERGY LTD', '120', '', '2021-01-05 09:06:44'),
(2625, 'GOKUL AGRO RESOURCES LTD', '120', '', '2021-01-05 09:06:44'),
(2626, 'FREDUN PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(2627, 'SIMBHAOLI SUGARS LTD.', '120', '', '2021-01-05 09:06:44'),
(2628, 'MODERN CONVERTERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2629, 'DARJEELING ROPEWAY COMPANY ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2630, 'LIC MF ETF-NIFTY 100', '120', '', '2021-01-05 09:06:44'),
(2631, 'PUDUMJEE PAPER PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(2632, 'HEALTHCARE GLOBAL ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(2633, 'KHEMANI DISTRIBUTORS & MARKETING LTD', '120', '', '2021-01-05 09:06:44'),
(2634, 'UMIYA TUBES LTD', '120', '', '2021-01-05 09:06:44'),
(2635, 'BHARAT WIRE ROPES LTD', '120', '', '2021-01-05 09:06:44'),
(2636, 'CHD CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(2637, 'INFIBEAM AVENUES LTD', '120', '', '2021-01-05 09:06:44'),
(2638, 'SUPERIOR FINLEASE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2639, 'RAGHAV PRODUCTIVITY ENHANCERS LTD', '120', '', '2021-01-05 09:06:44'),
(2640, 'LANCER CONTAINER LINES LTD', '120', '', '2021-01-05 09:06:44'),
(2641, 'EQUITAS HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(2642, 'SKIL INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2643, 'THYROCARE TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2644, 'BAJAJ HEALTHCARE LTD', '120', '', '2021-01-05 09:06:44'),
(2645, 'UJJIVAN FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2646, 'CROMPTON GREAVES CONSUMER ELECTRICLS LTD', '120', '', '2021-01-05 09:06:44'),
(2647, 'PILANI INVESTMENT & INDUSTRIES CORP LTD', '120', '', '2021-01-05 09:06:44'),
(2648, 'DARSHAN ORNA LTD', '120', '', '2021-01-05 09:06:44'),
(2649, 'PARAG MILK FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(2650, 'MADHAV INFRA PROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2651, 'NAGARJUNA FERTILIZERS AND CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(2652, 'LIKHAMI CONSULTING LTD', '120', '', '2021-01-05 09:06:44'),
(2653, 'MEDICO INTERCONTINENTAL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2654, 'YASH CHEMEX LTD', '120', '', '2021-01-05 09:06:44'),
(2655, 'MAX VENTURES AND INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2656, 'ICICI PRUDENTIAL NV20 ETF', '120', '', '2021-01-05 09:06:44'),
(2657, 'TAAL ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(2658, 'MAHANAGAR GAS LTD', '120', '', '2021-01-05 09:06:44'),
(2659, 'ZEAL AQUA LTD', '120', '', '2021-01-05 09:06:44'),
(2660, 'QUESS CORP LTD', '120', '', '2021-01-05 09:06:44'),
(2661, 'DIGJAM LTD', '120', '', '2021-01-05 09:06:44'),
(2662, 'ADVANCE SYNTEX LTD', '120', '', '2021-01-05 09:06:44'),
(2663, 'HINDUSTHAN URBAN INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2664, 'TITAANIUM TEN ENTERPRISE LTD', '120', '', '2021-01-05 09:06:44'),
(2665, 'COMMERCIAL SYN BAGS LTD', '120', '', '2021-01-05 09:06:44'),
(2666, 'LLOYDS STEELS INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2667, 'LARSEN & TOUBRO INFOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(2668, 'EAST WEST HOLDINGS LTD', '120', '', '2021-01-05 09:06:44'),
(2669, 'ASHARI AGENCIES LTD', '120', '', '2021-01-05 09:06:44'),
(2670, 'ADVANCED ENZYME TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2671, 'LADAM AFFORDABLE HOUSING ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2672, 'PRABHAT TELECOMS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2673, 'DILIP BUILDCON LTD', '120', '', '2021-01-05 09:06:44'),
(2674, 'S. P. APPARELS LTD', '120', '', '2021-01-05 09:06:44'),
(2675, 'BIGBLOC CONSTRUCTION LTD', '120', '', '2021-01-05 09:06:44'),
(2676, 'FUTURE RETAIL LTD', '120', '', '2021-01-05 09:06:44'),
(2677, 'RBL BANK LTD', '120', '', '2021-01-05 09:06:44'),
(2678, 'SHIVA GRANITO EXPORT LTD', '120', '', '2021-01-05 09:06:44'),
(2679, 'BLS INTERNATIONAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2680, 'MITSU CHEM PLAST LTD', '120', '', '2021-01-05 09:06:44'),
(2681, 'NARAYANI STEELS LTD', '120', '', '2021-01-05 09:06:44'),
(2682, 'SAB EVENTS & GOVERNANCE NOW MEDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2683, 'VISCO TRADE ASSOCIATES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2684, 'TIAAN AYURVEDIC & HERBS LTD', '120', '', '2021-01-05 09:06:44'),
(2685, 'L&T TECHNOLOGY SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2686, 'GNA AXLES LTD', '120', '', '2021-01-05 09:06:44'),
(2687, 'SABRIMALA INDUSTRIES INDIA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2688, 'ICICI PRUDENTIAL LIFE INSURANCE COMP LTD', '120', '', '2021-01-05 09:06:44'),
(2689, 'ISHAAN INFRASTRUCTURES AND SHELTERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2690, 'ARC FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2691, 'HPL ELECTRIC & POWER LTD', '120', '', '2021-01-05 09:06:44'),
(2692, 'SAGARSOFT (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2693, 'DRA CONSULTANTS LTD', '120', '', '2021-01-05 09:06:44'),
(2694, 'ADITYA CONSUMER MARKETING LTD', '120', '', '2021-01-05 09:06:44'),
(2695, 'SHASHIJIT INFRAPROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2696, 'MEWAR HI-TECH ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(2697, 'ENDURANCE TECHNOLOGIES LTD (CN)', '120', '', '2021-01-05 09:06:44'),
(2698, 'IDFC SENSEX ETF', '120', '', '2021-01-05 09:06:44'),
(2699, 'SUPRA PACIFIC MANAGEMENT CONSULTANCY ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2700, 'PNB HOUSING FINANCE LTD.', '120', '', '2021-01-05 09:06:44'),
(2701, 'SOUTHERN INFOSYS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2702, 'REGENCY INVESTMENTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2703, 'VARUN BEVERAGES LTD', '120', '', '2021-01-05 09:06:44'),
(2704, 'LKP SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(2705, 'OSIAJEE TEXFAB ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2706, 'SHEELA FOAM LTD', '120', '', '2021-01-05 09:06:44'),
(2707, 'NARENDRA INVESTMENTS (DELHI) ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2708, 'MANDHANA RETAIL VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(2709, 'TCI EXPRESS LTD', '120', '', '2021-01-05 09:06:44'),
(2710, 'LAURUS LABS LTD', '120', '', '2021-01-05 09:06:44'),
(2711, 'SHREE NIDHI TRADING CO LTD', '120', '', '2021-01-05 09:06:44'),
(2712, 'SHANGAR DECOR ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2713, 'GLOBE COMMERCIALS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2714, 'DHANVARSHA FINVEST LTD', '120', '', '2021-01-05 09:06:44'),
(2715, 'PRICOL LTD', '120', '', '2021-01-05 09:06:44'),
(2716, 'JITF INFRALOGISTICS LTD', '120', '', '2021-01-05 09:06:44'),
(2717, 'AXIS EMERGING OPPORTUNITIES-SR 2-(1400D)-DIVIDEND', '120', '', '2021-01-05 09:06:44'),
(2718, 'PARMAX PHARMA ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2719, 'LEADING LEASING FINANCE AND INV CO LTD', '120', '', '2021-01-05 09:06:44'),
(2720, 'DANUBE INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2721, 'MUSIC BROADCAST LTD', '120', '', '2021-01-05 09:06:44'),
(2722, 'AVENUE SUPERMARTS LTD', '120', '', '2021-01-05 09:06:44'),
(2723, 'ADITYA BSL RESURGENT INDIA-SRS 3-GROWTH', '120', '', '2021-01-05 09:06:44'),
(2724, 'KD LEISURES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2725, 'ONTIC FINSERVE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2726, 'CHEMCRUX ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(2727, 'MANOMAY TEX INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2728, 'MAXIMUS INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(2729, 'MANAS PROPERTIES LTD', '120', '', '2021-01-05 09:06:44'),
(2730, 'CL EDUCATE LTD', '120', '', '2021-01-05 09:06:44'),
(2731, 'OCEANIC FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(2732, 'SHANKARA BUILDING PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(2733, 'KMS MEDISURGI LTD', '120', '', '2021-01-05 09:06:44'),
(2734, 'ICICI PRUDENTIAL VALUE FUND-SERIES 12-DIVIDEND', '120', '', '2021-01-05 09:06:44'),
(2735, 'CLASSIC LEASING & FINANCE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2736, 'STARLINE PRECIOUS STONE LTD', '120', '', '2021-01-05 09:06:44'),
(2737, 'S CHAND AND COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2738, 'KANUNGO FINANCIERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2739, 'MEERA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2740, 'IRB INVIT FUND', '120', '', '2021-01-05 09:06:44'),
(2741, 'HOUSING AND URBAN DEVELOPMENT CORP LTD', '120', '', '2021-01-05 09:06:44'),
(2742, 'PSP PROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2743, 'INDIA GRID TRUST', '120', '', '2021-01-05 09:06:44'),
(2744, 'STAR CEMENT LTD', '120', '', '2021-01-05 09:06:44'),
(2745, 'TEJAS NETWORKS LTD', '120', '', '2021-01-05 09:06:44'),
(2746, 'ERIS LIFESCIENCES LTD', '120', '', '2021-01-05 09:06:44'),
(2747, 'GTPL HATHWAY LTD', '120', '', '2021-01-05 09:06:44'),
(2748, 'AU SMALL FINANCE BANK LTD', '120', '', '2021-01-05 09:06:44'),
(2749, 'G G ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(2750, '7NR RETAIL LTD', '120', '', '2021-01-05 09:06:44'),
(2751, 'BHAGYANAGAR PROPERTIES LTD', '120', '', '2021-01-05 09:06:44'),
(2752, 'SALASAR TECHNO ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(2753, 'GANGES SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(2754, 'PALASH SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(2755, 'AVADH SUGAR & ENERGY LTD', '120', '', '2021-01-05 09:06:44'),
(2756, 'MAGADH SUGAR & ENERGY LTD', '120', '', '2021-01-05 09:06:44'),
(2757, 'CAPTAIN TECHNOCAST LTD', '120', '', '2021-01-05 09:06:44'),
(2758, 'SINTEX PLASTICS TECHNOLOGY LTD', '120', '', '2021-01-05 09:06:44'),
(2759, 'GLOBALSPACE TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2760, 'SECURITY AND INTELLIGENCE SRVS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2761, 'COCHIN SHIPYARD LTD', '120', '', '2021-01-05 09:06:44'),
(2762, 'SMS LIFESCIENCES INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2763, 'KIOCL LTD', '120', '', '2021-01-05 09:06:44'),
(2764, 'SMRUTHI ORGANICS LTD', '120', '', '2021-01-05 09:06:44'),
(2765, 'ADITYA BIRLA CAPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(2766, 'APEX FROZEN FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(2767, 'SHISH INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2768, 'ANG LIFESCIENCES INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2769, 'A & M FEBCON LTD', '120', '', '2021-01-05 09:06:44'),
(2770, 'DIXON TECHNOLOGIES (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2771, 'BHARAT ROAD NETWORK LTD', '120', '', '2021-01-05 09:06:44'),
(2772, 'DISHMAN CARBOGEN AMCIS LTD', '120', '', '2021-01-05 09:06:44'),
(2773, 'LASA SUPERGENERICS LTD', '120', '', '2021-01-05 09:06:44'),
(2774, 'PROVESTMENT SERVICES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2775, 'MATRIMONY.COM LTD', '120', '', '2021-01-05 09:06:44'),
(2776, 'RELIANCE HOME FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2777, 'CAPACITE INFRAPROJECTS LTD', '120', '', '2021-01-05 09:06:44'),
(2778, 'SAGAR DIAMONDS LTD', '120', '', '2021-01-05 09:06:44'),
(2779, 'ICICI LOMBARD GENERAL INSURANCE CO LTD', '120', '', '2021-01-05 09:06:44'),
(2780, 'SBI LIFE INSURANCE COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2781, 'PRATAAP SNACKS LTD', '120', '', '2021-01-05 09:06:44'),
(2782, 'SHARE INDIA SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(2783, 'TRIDENT TEXOFAB LTD', '120', '', '2021-01-05 09:06:44'),
(2784, 'SAYAJI INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2785, 'VANTA BIOSCIENCE LTD', '120', '', '2021-01-05 09:06:44'),
(2786, 'MEHAI TECHNOLOGY LTD', '120', '', '2021-01-05 09:06:44'),
(2787, 'SHREE GANESH REMEDIES LTD', '120', '', '2021-01-05 09:06:44'),
(2788, 'SHREEJI TRANSLOGISTICS LTD', '120', '', '2021-01-05 09:06:44'),
(2789, 'GODREJ AGROVET LTD', '120', '', '2021-01-05 09:06:44'),
(2790, 'MIDEAST INTEGRATED STEELS LTD', '120', '', '2021-01-05 09:06:44'),
(2791, 'MAS FINANCIAL SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2792, 'INDIAN ENERGY EXCHANGE LTD', '120', '', '2021-01-05 09:06:44'),
(2793, 'GENERAL INSURANCE CORPORATION OF INDIA', '120', '', '2021-01-05 09:06:44'),
(2794, 'SHEETAL COOL PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(2795, 'TUBE INVESTMENTS OF INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2796, 'NIPPON LIFE INDIA ASSET MANAGEMENT LTD', '120', '', '2021-01-05 09:06:44'),
(2797, 'MAHINDRA LOGISTICS LTD', '120', '', '2021-01-05 09:06:44'),
(2798, 'NEW INDIA ASSURANCE COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2799, 'IFGL REFRACTORIES LTD', '120', '', '2021-01-05 09:06:44'),
(2800, 'KHADIM INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2801, '5PAISA CAPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(2802, 'HDFC LIFE INSURANCE COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2803, 'SANGHVI BRANDS LTD', '120', '', '2021-01-05 09:06:44'),
(2804, 'SHARIKA ENTERPRISES LTD', '120', '', '2021-01-05 09:06:44'),
(2805, 'DILIGENT MEDIA CORPORATION LTD', '120', '', '2021-01-05 09:06:44'),
(2806, 'HDFC HOUSING OPPORTUNITIES-I-1140DNOV17(1)-DIR-GTH', '120', '', '2021-01-05 09:06:44'),
(2807, 'HDFC HOUSING OPPORTUNITIES-I-1140DNOV17(1)-GTH', '120', '', '2021-01-05 09:06:44'),
(2808, 'DYNAMIC CABLES LTD', '120', '', '2021-01-05 09:06:44'),
(2809, 'SHALBY LTD', '120', '', '2021-01-05 09:06:44'),
(2810, 'FUTURE SUPPLY CHAIN SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2811, 'DSP A.C.E. FUND-GROWTH', '120', '', '2021-01-05 09:06:44'),
(2812, 'SADHNA BROADCAST LTD', '120', '', '2021-01-05 09:06:44'),
(2813, 'VITESSE AGRO LTD', '120', '', '2021-01-05 09:06:44'),
(2814, 'ASTRON PAPER & BOARD MILL LTD', '120', '', '2021-01-05 09:06:44'),
(2815, 'CHANDRIMA MERCANTILES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2816, 'ICICI PRUDENTIAL VALUE FUND-SERIES 19-GROWTH', '120', '', '2021-01-05 09:06:44'),
(2817, 'ICICI PRUDENTIAL VALUE FUND-SERIES 19-DIVIDEND', '120', '', '2021-01-05 09:06:44'),
(2818, 'APOLLO MICRO SYSTEMS LTD', '120', '', '2021-01-05 09:06:44'),
(2819, 'NEWGEN SOFTWARE TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2820, 'PRAXIS HOME RETAIL LTD', '120', '', '2021-01-05 09:06:44'),
(2821, 'AMBER ENTERPRISES INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2822, 'GALAXY SURFACTANTS LTD', '120', '', '2021-01-05 09:06:44'),
(2823, 'GAUTAM GEMS LTD', '120', '', '2021-01-05 09:06:44'),
(2824, 'ICICI PRUDENTIAL VALUE FUND-SERIES 20-GROWTH', '120', '', '2021-01-05 09:06:44'),
(2825, 'INDIAN WOOD PRODUCTS CO LTD', '120', '', '2021-01-05 09:06:44'),
(2826, 'SHIVA MILLS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2827, 'ASTER DM HEALTHCARE LTD', '120', '', '2021-01-05 09:06:44'),
(2828, 'YAMUNA SYNDICATE LTD', '120', '', '2021-01-05 09:06:44'),
(2829, 'KANCO TEA & INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2830, 'HG INFRA ENGINEERING LTD (PART IX)', '120', '', '2021-01-05 09:06:44'),
(2831, 'INFLAME APPLIANCES LTD', '120', '', '2021-01-05 09:06:44'),
(2832, 'ADITYA BSL RESURGENT INDIA-SRS 6-REGULAR-GROWTH', '120', '', '2021-01-05 09:06:44'),
(2833, 'BHARAT PARENTERALS LTD', '120', '', '2021-01-05 09:06:44'),
(2834, 'BHARAT DYNAMICS LTD', '120', '', '2021-01-05 09:06:44'),
(2835, 'ACTIVE CLOTHING CO LTD', '120', '', '2021-01-05 09:06:44'),
(2836, 'BANDHAN BANK LTD', '120', '', '2021-01-05 09:06:44'),
(2837, 'HINDUSTAN AERONAUTICS LTD', '120', '', '2021-01-05 09:06:44'),
(2838, 'KARDA CONSTRUCTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2839, 'SANDHAR TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2840, 'BENARA BEARINGS AND PISTONS LTD', '120', '', '2021-01-05 09:06:44'),
(2841, 'ICICI SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(2842, 'MISHRA DHATU NIGAM LTD', '120', '', '2021-01-05 09:06:44'),
(2843, 'ORISSA BENGAL CARRIER LTD', '120', '', '2021-01-05 09:06:44'),
(2844, 'LEMON TREE HOTELS LTD', '120', '', '2021-01-05 09:06:44'),
(2845, 'CHEMFAB ALKALIS LTD', '120', '', '2021-01-05 09:06:44'),
(2846, 'HARDWYN INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2847, 'ORIENT ELECTRIC LTD', '120', '', '2021-01-05 09:06:44'),
(2848, 'DHRUV CONSULTANCY SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2849, 'ICICI PRUDENTIAL BHARAT CONSUMPTION-SRS 2-GTH', '120', '', '2021-01-05 09:06:44'),
(2850, 'ICICI PRUDENTIAL S&P BSE 500 ETF', '120', '', '2021-01-05 09:06:44'),
(2851, 'INDOSTAR CAPITAL FINANCE LTD', '120', '', '2021-01-05 09:06:44'),
(2852, 'PARVATI SWEETNERS AND POWER ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2853, 'MEGASTAR FOODS LTD', '120', '', '2021-01-05 09:06:44'),
(2854, 'INNOVATORS FACADE SYSTEMS LTD', '120', '', '2021-01-05 09:06:44'),
(2855, 'ZIM LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(2856, 'ARIHANT INSTITUTE LTD', '120', '', '2021-01-05 09:06:44'),
(2857, 'AFFORDABLE ROBOTIC & AUTOMATION LTD', '120', '', '2021-01-05 09:06:44'),
(2858, 'DOLLAR INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2859, 'WAA SOLAR LTD', '120', '', '2021-01-05 09:06:44'),
(2860, 'ADANI GREEN ENERGY LTD', '120', '', '2021-01-05 09:06:44'),
(2861, 'UNICK FIX A FORM AND PRINTERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2862, 'SOLARA ACTIVE PHARMA SCIENCES LTD', '120', '', '2021-01-05 09:06:44'),
(2863, 'TALWALKARS HEALTHCLUBS LTD', '120', '', '2021-01-05 09:06:44'),
(2864, 'GAYATRI HIGHWAYS LTD', '120', '', '2021-01-05 09:06:44'),
(2865, 'RITES LTD.', '120', '', '2021-01-05 09:06:44'),
(2866, 'FINE ORGANIC INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2867, 'VARROC ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(2868, 'RAJNISH WELLNESS LTD', '120', '', '2021-01-05 09:06:44'),
(2869, 'HI TECH WINDING SYSTEMS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2870, 'TATA VALUE FUND-SERIES 1-GROWTH', '120', '', '2021-01-05 09:06:44'),
(2871, 'TCNS CLOTHING CO LTD', '120', '', '2021-01-05 09:06:44'),
(2872, 'SUPERSHAKTI METALIKS LTD', '120', '', '2021-01-05 09:06:44'),
(2873, 'ASHNISHA INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2874, 'IDFC EQUITY OPPORTUNITY-SERIES 6-GROWTH', '120', '', '2021-01-05 09:06:44'),
(2875, 'HDFC ASSET MANAGEMENT COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2876, 'VIVANTA INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2877, 'TINNA TRADE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2878, 'TATA VALUE FUND-SERIES 2-GROWTH', '120', '', '2021-01-05 09:06:44'),
(2879, 'CREDITACCESS GRAMEEN LTD', '120', '', '2021-01-05 09:06:44'),
(2880, 'SPACE INCUBATRICS TECHNOLOGIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2881, 'SYNERGY GREEN INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2882, 'IRCON INTERNATIONAL LTD', '120', '', '2021-01-05 09:06:44'),
(2883, 'MANORAMA INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2884, 'INNOVATIVE IDEALS AND SERVCS (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2885, 'NIPPON INDIA INDIA OPPORTUNITIES-A-GROWTH', '120', '', '2021-01-05 09:06:44'),
(2886, 'AAVAS FINANCIERS LTD', '120', '', '2021-01-05 09:06:44'),
(2887, 'GARDEN REACH SHIPBUILDERS & ENGINEERS LD', '120', '', '2021-01-05 09:06:44'),
(2888, 'A-1 ACID LTD', '120', '', '2021-01-05 09:06:44'),
(2889, 'DOLFIN RUBBERS LTD', '120', '', '2021-01-05 09:06:44'),
(2890, 'SHUBHAM POLYSPIN LTD', '120', '', '2021-01-05 09:06:44'),
(2891, 'S M GOLD LTD', '120', '', '2021-01-05 09:06:44'),
(2892, 'BCPL RAILWAY INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2893, 'ADANI GAS LTD', '120', '', '2021-01-05 09:06:44'),
(2894, 'NETRIPPLES SOFTWARE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2895, 'PHOSPHATE COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(2896, 'TECHNO ELECTRIC & ENGINEERING COM LTD', '120', '', '2021-01-05 09:06:44'),
(2897, 'ICICI PRUDENTIAL BHARAT CONSUMPTION-SRS 5-GTH', '120', '', '2021-01-05 09:06:44'),
(2898, 'NIVAKA FASHIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2899, 'DALMIA BHARAT LTD', '120', '', '2021-01-05 09:06:44'),
(2900, 'NILA SPACES LTD', '120', '', '2021-01-05 09:06:44'),
(2901, 'TREJHARA SOLUTIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2902, 'DECCAN HEALTH CARE LTD', '120', '', '2021-01-05 09:06:44'),
(2903, 'KPI GLOBAL INFRASTRUCTURE LTD', '120', '', '2021-01-05 09:06:44'),
(2904, 'CESC VENTURES LTD', '120', '', '2021-01-05 09:06:44'),
(2905, 'SPENCER\'S RETAIL LTD', '120', '', '2021-01-05 09:06:44'),
(2906, 'GLOSTER LTD', '120', '', '2021-01-05 09:06:44'),
(2907, 'XELPMOC DESIGN AND TECH LTD', '120', '', '2021-01-05 09:06:44'),
(2908, 'RITCO LOGISTICS LTD', '120', '', '2021-01-05 09:06:44'),
(2909, 'CHALET HOTELS LTD', '120', '', '2021-01-05 09:06:44'),
(2910, 'ANMOL INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2911, 'ANUP ENGINEERING LTD', '120', '', '2021-01-05 09:06:44'),
(2912, 'ARVIND FASHIONS LTD', '120', '', '2021-01-05 09:06:44'),
(2913, 'HUMMING BIRD EDUCATION LTD', '120', '', '2021-01-05 09:06:44'),
(2914, 'MSTC LTD', '120', '', '2021-01-05 09:06:44'),
(2915, 'EMBASSY OFFICE PARKS REIT', '120', '', '2021-01-05 09:06:44'),
(2916, 'CHANDNI MACHINES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2917, 'NORTHERN SPIRITS LTD', '120', '', '2021-01-05 09:06:44'),
(2918, 'COX & KINGS FINANCIAL SERVICE LTD', '120', '', '2021-01-05 09:06:44'),
(2919, 'RAIL VIKAS NIGAM LTD', '120', '', '2021-01-05 09:06:44'),
(2920, 'METROPOLIS HEALTHCARE LTD', '120', '', '2021-01-05 09:06:44'),
(2921, 'KPIT TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2922, 'POLYCAB INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2923, 'JINAAMS DRESS LTD', '120', '', '2021-01-05 09:06:44'),
(2924, 'VR FILMS & STUDIOS LTD', '120', '', '2021-01-05 09:06:44'),
(2925, 'VIKAS MULTICORP LTD', '120', '', '2021-01-05 09:06:44'),
(2926, 'NEOGEN CHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(2927, 'WHITE ORGANIC RETAIL LTD', '120', '', '2021-01-05 09:06:44'),
(2928, 'BMW INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2929, 'ARTEMIS ELECTRICALS LTD', '120', '', '2021-01-05 09:06:44'),
(2930, 'MAHESH DEVELOPERS LTD', '120', '', '2021-01-05 09:06:44'),
(2931, 'CIAN HEALTHCARE LTD', '120', '', '2021-01-05 09:06:44'),
(2932, 'HARISH TEXTILE ENGINEERS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2933, 'PRAKASH PIPES LTD', '120', '', '2021-01-05 09:06:44'),
(2934, 'DIGICONTENT LTD', '120', '', '2021-01-05 09:06:44'),
(2935, 'SBC EXPORTS LTD', '120', '', '2021-01-05 09:06:44'),
(2936, 'INDIAMART INTERMESH LTD', '120', '', '2021-01-05 09:06:44'),
(2937, 'DCM NOUVELLE LTD', '120', '', '2021-01-05 09:06:44'),
(2938, 'AFFLE (INDIA) LTD', '120', '', '2021-01-05 09:06:44'),
(2939, 'SPANDANA SPHOORTY FINANCIAL LTD.', '120', '', '2021-01-05 09:06:44'),
(2940, 'STERLING AND WILSON SOLAR LTD', '120', '', '2021-01-05 09:06:44'),
(2941, 'ALPHALOGIC TECHSYS LTD', '120', '', '2021-01-05 09:06:44'),
(2942, 'NOVATEOR RESEARCH LABORATORIES LTD', '120', '', '2021-01-05 09:06:44'),
(2943, 'IIFL WEALTH MANAGEMENT LTD', '120', '', '2021-01-05 09:06:44'),
(2944, 'IIFL SECURITIES LTD', '120', '', '2021-01-05 09:06:44'),
(2945, 'APM FINVEST LTD', '120', '', '2021-01-05 09:06:44'),
(2946, 'GUJARAT FLUOROCHEMICALS LTD', '120', '', '2021-01-05 09:06:44'),
(2947, 'INDIAN RAILWAY CTRNG ND TRSM CORP LTD', '120', '', '2021-01-05 09:06:44'),
(2948, 'GOBLIN INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2949, 'VISHWARAJ SUGAR INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2950, 'GREENPANEL INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2951, 'SHAHLON SILK INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2952, 'ANUROOP PACKAGING LTD', '120', '', '2021-01-05 09:06:44'),
(2953, 'CSB BANK LTD', '120', '', '2021-01-05 09:06:44'),
(2954, 'UJJIVAN SMALL FINANCE BANK LTD', '120', '', '2021-01-05 09:06:44'),
(2955, 'SOMANY HOME INNOVATION LTD', '120', '', '2021-01-05 09:06:44'),
(2956, 'PRINCE PIPES AND FITTINGS LTD', '120', '', '2021-01-05 09:06:44'),
(2957, 'ASSAM ENTRADE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2958, 'ARTEMIS MEDICARE SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2959, 'SUMITOMO CHEMICAL INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2960, 'TRANWAY TECHNOLOGIES LTD', '120', '', '2021-01-05 09:06:44'),
(2961, 'BIRLA TYRES LTD', '120', '', '2021-01-05 09:06:44'),
(2962, 'UNIVERSUS PHOTO IMAGINGS LTD', '120', '', '2021-01-05 09:06:44'),
(2963, 'ICL ORGANIC DAIRY PRODUCTS LTD', '120', '', '2021-01-05 09:06:44'),
(2964, 'SUVEN PHARMACEUTICALS LTD', '120', '', '2021-01-05 09:06:44'),
(2965, 'SBI CARDS AND PAYMENT SERVICES LTD', '120', '', '2021-01-05 09:06:44'),
(2966, 'NIPPON INDIA MUTUAL FUND', '120', '', '2021-01-05 09:06:44'),
(2967, 'RO JEWELS LTD', '120', '', '2021-01-05 09:06:44'),
(2968, 'NIPPON INDIA MUTUAL FUND', '120', '', '2021-01-05 09:06:44'),
(2969, 'NIPPON INDIA MUTUAL FUND', '120', '', '2021-01-05 09:06:44'),
(2970, 'NIPPON INDIA MUTUAL FUND', '120', '', '2021-01-05 09:06:44');
INSERT INTO `bond_ltp` (`id`, `stock_name`, `current_price`, `previous_day_price`, `cdate`) VALUES
(2971, 'ABB POWER PRODUCTS AND SYSTEMS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2972, 'DJ MEDIAPRINT & LOGISTICS LTD', '120', '', '2021-01-05 09:06:44'),
(2973, 'BILLWIN INDUSTRIES LTD', '120', '', '2021-01-05 09:06:44'),
(2974, 'AARTI SURFACTANTS LTD', '120', '', '2021-01-05 09:06:44'),
(2975, 'BOROSIL ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2976, 'ROSSARI BIOTECH LTD', '120', '', '2021-01-05 09:06:44'),
(2977, 'NDR AUTO COMPONENTS ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2978, 'MINDSPACE BUSINESS PARKS REIT', '120', '', '2021-01-05 09:06:44'),
(2979, 'MAX HEALTHCARE INSTITUTE ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2980, 'TATA MOTORS LIMITED DIFFERENTIAL VOTING RIGHTS SHARES CLS. A', '120', '', '2021-01-05 09:06:44'),
(2981, 'FUTURE ENTERPRISES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2982, 'JAIN IRRIGATION SYSTEMS ORD SHS DVR', '120', '', '2021-01-05 09:06:44'),
(2983, 'STAMPEDE CAPITAL LTD DIFFERENTIAL VOTING RIGHTS SHARES', '120', '', '2021-01-05 09:06:44'),
(2984, 'KARUR VYSYA BANK LTD', '120', '', '2021-01-05 09:06:44'),
(2985, 'TIDE WATER OIL CO INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2986, 'AMRUTANJAN HEALTH CARE LTD', '120', '', '2021-01-05 09:06:44'),
(2987, 'XPRO INDIA LIMITED', '120', '', '2021-01-05 09:06:44'),
(2988, 'HISAR METAL INDUSTRIES ORD SHS', '120', '', '2021-01-05 09:06:44'),
(2989, 'BHARAT RASAYAN LTD', '120', '', '2021-01-05 09:06:44'),
(2990, 'EASTERN SILK INDUSTRIES LTD.', '120', '', '2021-01-05 09:06:44'),
(2991, 'FERTILISERS & CHEMICALS TRAVANCORE LTD', '120', '', '2021-01-05 09:06:44'),
(2992, 'GINNI FILAMENTS LIMITED', '120', '', '2021-01-05 09:06:44'),
(2993, 'SOUTHERN PETROCHEMICAL INDUSTRIES CORPLD', '120', '', '2021-01-05 09:06:44'),
(2994, 'DE NORA INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(2995, 'HARITA SEATING SYSTEMS LTD', '120', '', '2021-01-05 09:06:44'),
(2996, 'SAKSOFT LTD.', '120', '', '2021-01-05 09:06:44'),
(2997, 'SALONA COTSPIN LTD', '120', '', '2021-01-05 09:06:44'),
(2998, 'ANDHRA SUGARS LTD', '120', '', '2021-01-05 09:06:44'),
(2999, 'INDIA MOTOR PARTS & ACCESSORIES LTD', '120', '', '2021-01-05 09:06:44'),
(3000, 'KCP LTD', '120', '', '2021-01-05 09:06:44'),
(3001, 'SUNDARAM FINANCE LIMITED', '120', '', '2021-01-05 09:06:44'),
(3002, 'SUNDARAM BRAKE LININGS LTD', '120', '', '2021-01-05 09:06:44'),
(3003, 'WHEELS INDIA LTD', '120', '', '2021-01-05 09:06:44'),
(3004, 'LAMBODHARA TEXTILES LTD', '120', '', '2021-01-05 09:06:44'),
(3005, 'MAITHAN ALLOYS LTD', '120', '', '2021-01-05 09:06:44'),
(3006, 'LOHIA SECURITIES LTD.', '120', '', '2021-01-05 09:06:44'),
(3007, 'ORISSA MINERALS DEVELOPMENT COMPANY LTD', '120', '', '2021-01-05 09:06:44'),
(3008, 'ASHIKA CREDIT CAPITAL LTD', '120', '', '2021-01-05 09:06:44'),
(3009, 'MADRAS FERTILIZERS LTD', '120', '', '2021-01-05 09:06:44'),
(3010, 'TATA STEEL PARTLY PAID ORD SHS', '120', '', '2021-01-05 09:06:44'),
(3011, 'INDIABULLS VENTURES PARTLY PAID ORD SHS', '120', '', '2021-01-05 09:06:44'),
(3012, 'RELIANCE INDUSTRIES PARTLY PAID ORD SHS', '120', '', '2021-01-05 09:06:44'),
(3013, 'ADITYA BIRLA FASHION AND RETAIL PARTLY PAID ORD SHS', '120', '', '2021-01-05 09:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `bond_temp`
--

CREATE TABLE `bond_temp` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `stock_name` varchar(255) NOT NULL,
  `stock_transaction_type` varchar(300) NOT NULL,
  `stock_broker` varchar(1024) NOT NULL,
  `stock_date` date NOT NULL,
  `stock_contract_no` text NOT NULL,
  `stock_settlement_no` text NOT NULL,
  `stock_qty` decimal(13,2) NOT NULL,
  `stock_purchase_price` decimal(13,2) NOT NULL,
  `stock_amt_invested` bigint(20) NOT NULL,
  `stock_brokerage` decimal(10,2) NOT NULL,
  `stock_net_rate` decimal(13,2) NOT NULL,
  `stock_tax_value` decimal(13,2) NOT NULL,
  `stock_cgst` decimal(10,2) NOT NULL,
  `stock_sgst` decimal(10,2) NOT NULL,
  `stock_igst` decimal(10,2) NOT NULL,
  `stock_exchange_transaction` decimal(10,2) NOT NULL,
  `stock_stt` decimal(10,2) NOT NULL,
  `stock_sebi_fee` decimal(10,2) NOT NULL,
  `stock_stamp_duty` decimal(10,2) NOT NULL,
  `stock_net_amt` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bond_temp`
--

INSERT INTO `bond_temp` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `stock_name`, `stock_transaction_type`, `stock_broker`, `stock_date`, `stock_contract_no`, `stock_settlement_no`, `stock_qty`, `stock_purchase_price`, `stock_amt_invested`, `stock_brokerage`, `stock_net_rate`, `stock_tax_value`, `stock_cgst`, `stock_sgst`, `stock_igst`, `stock_exchange_transaction`, `stock_stt`, `stock_sebi_fee`, `stock_stamp_duty`, `stock_net_amt`) VALUES
(5, 1, 'port_2', 'Investment', 'Bond / Corporate Bond', 'SAMBANDAM SPINNING MILLS LTD', 'Buy', 'ADWEALTH STOCK', '2020-11-18', 'w', '', 4.00, 4.00, 4, 0.00, 6.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00);

-- --------------------------------------------------------

--
-- Table structure for table `broker_details`
--

CREATE TABLE `broker_details` (
  `id` bigint(20) NOT NULL,
  `broker_name` varchar(1024) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `broker_details`
--

INSERT INTO `broker_details` (`id`, `broker_name`, `cdate`) VALUES
(1, 'M. K. BROKING', '2021-01-06 09:16:44'),
(2, '5PAISA CAPITAL', '2021-01-06 09:16:44'),
(3, 'A. C. CHOKSI SHAREBROKERS', '2021-01-06 09:16:44'),
(4, 'A. G. SHARES & SECURITIES', '2021-01-06 09:16:44'),
(5, 'A.S.STOCK BROKING', '2021-01-06 09:16:44'),
(6, 'AFN LANGRANA', '2021-01-06 09:16:44'),
(7, 'ALF ACCURATE ADVISORS', '2021-01-06 09:16:44'),
(8, 'AN CAPITAL MARKETS', '2021-01-06 09:16:44'),
(9, 'ANS PVT LTD', '2021-01-06 09:16:44'),
(10, 'ASE CAPITAL MARKETS', '2021-01-06 09:16:44'),
(11, 'ASL CAPITAL', '2021-01-06 09:16:44'),
(12, 'ATS SHARE BROKERS', '2021-01-06 09:16:44'),
(13, 'AU SMALL FINANCE', '2021-01-06 09:16:44'),
(14, 'AUM CAPITAL MARKET', '2021-01-06 09:16:44'),
(15, 'AADHAR SECURITIES', '2021-01-06 09:16:44'),
(16, 'ABHINANDAN STOCK', '2021-01-06 09:16:44'),
(17, 'ABHIPRA CAPITAL', '2021-01-06 09:16:44'),
(18, 'ABIRA SECURITIES', '2021-01-06 09:16:44'),
(19, 'ACHIIEVERS EQUITIES', '2021-01-06 09:16:44'),
(20, 'ACHINTYA SECURITIES', '2021-01-06 09:16:44'),
(21, 'ACTION FINANCIAL', '2021-01-06 09:16:44'),
(22, 'ACUMEN CAPITAL', '2021-01-06 09:16:44'),
(23, 'ADITYA BIRLA CAPITAL', '2021-01-06 09:16:44'),
(24, 'ADITYA BIRLA MONEY', '2021-01-06 09:16:44'),
(25, 'ADROIT COMMODITIES', '2021-01-06 09:16:44'),
(26, 'ADROIT FINANCIAL', '2021-01-06 09:16:44'),
(27, 'ADWEALTH STOCK', '2021-01-06 09:16:44'),
(28, 'AISHWARYA CO PVT.', '2021-01-06 09:16:44'),
(29, 'AJMERA ASSOCIATES', '2021-01-06 09:16:44'),
(30, 'ALACRITY SECURITIES', '2021-01-06 09:16:44'),
(31, 'ALANKIT ASSIGNMENTS', '2021-01-06 09:16:44'),
(32, 'ALANKIT IMAGINATIONS', '2021-01-06 09:16:44'),
(33, 'ALDAN INVESTMENTS', '2021-01-06 09:16:44'),
(34, 'ALICE BLUE', '2021-01-06 09:16:44'),
(35, 'ALLWIN SECURITIES', '2021-01-06 09:16:44'),
(36, 'ALMONDZ GLOBAL SECURITIES', '2021-01-06 09:16:44'),
(37, 'ALPHA COMMODITY', '2021-01-06 09:16:44'),
(38, 'AMBALAL SHARES', '2021-01-06 09:16:44'),
(39, 'AMBIT CAPITAL', '2021-01-06 09:16:44'),
(40, 'AMBIT SECURITIES', '2021-01-06 09:16:44'),
(41, 'AMIT JASANI', '2021-01-06 09:16:44'),
(42, 'AMOL CAPITAL', '2021-01-06 09:16:44'),
(43, 'AMOL FINANCIAL SERVICES', '2021-01-06 09:16:44'),
(44, 'AMRAPALI AADYA TRADING', '2021-01-06 09:16:44'),
(45, 'AMRUTLEELA EQUITIES', '2021-01-06 09:16:44'),
(46, 'ANAGRAM CAPITAL', '2021-01-06 09:16:44'),
(47, 'ANAND RATHI SECURITIES', '2021-01-06 09:16:44'),
(48, 'ANANT INVESTMENTS', '2021-01-06 09:16:44'),
(49, 'ANGEL BROKING', '2021-01-06 09:16:44'),
(50, 'ANKIT SECURITIES', '2021-01-06 09:16:44'),
(51, 'ANMOL SHARE BROKING', '2021-01-06 09:16:44'),
(52, 'ANTIQUE STOCK BROKING', '2021-01-06 09:16:44'),
(53, 'ANUGRAH STOCK & BROKING', '2021-01-06 09:16:44'),
(54, 'ANUSH SHARES & SECURITIES', '2021-01-06 09:16:44'),
(55, 'ANVIL SHARE & STOCK', '2021-01-06 09:16:44'),
(56, 'ARCADIA SHARE & STOCK LEDGER', '2021-01-06 09:16:44'),
(57, 'ARCH FINANCE', '2021-01-06 09:16:44'),
(58, 'ARHAM SHARES', '2021-01-06 09:16:44'),
(59, 'ARHAM WEALTH', '2021-01-06 09:16:44'),
(60, 'ARIHANT CAPITAL MARKETS', '2021-01-06 09:16:44'),
(61, 'ARISTON SECURITIES', '2021-01-06 09:16:44'),
(62, 'ARTHA VRDDHI', '2021-01-06 09:16:44'),
(63, 'ARYAN SHARES', '2021-01-06 09:16:44'),
(64, 'ASHIKA STOCK BROKING', '2021-01-06 09:16:44'),
(65, 'ASHLAR SECURITIES', '2021-01-06 09:16:44'),
(66, 'ASHWIN M. SHAH', '2021-01-06 09:16:44'),
(67, 'ASIT C MEHTA', '2021-01-06 09:16:44'),
(68, 'ASMAH SHARES', '2021-01-06 09:16:44'),
(69, 'ASSET ALLIANCE SECURITIES', '2021-01-06 09:16:44'),
(70, 'ASSOCIATED STOCK', '2021-01-06 09:16:44'),
(71, 'ASTHA CREDIT', '2021-01-06 09:16:44'),
(72, 'ATLAS INTEGRATED FINANCIAL', '2021-01-06 09:16:44'),
(73, 'AUM SECURITIES', '2021-01-06 09:16:44'),
(74, 'AXIS SECURITIES', '2021-01-06 09:16:44'),
(75, 'B N RATHI', '2021-01-06 09:16:44'),
(76, 'B. S. SECURITIES', '2021-01-06 09:16:44'),
(77, 'B.D.SHROFF SECURITIES', '2021-01-06 09:16:44'),
(78, 'BCB BROKERAGE', '2021-01-06 09:16:44'),
(79, 'BD SHAH', '2021-01-06 09:16:44'),
(80, 'BHH SECURITIES', '2021-01-06 09:16:44'),
(81, 'BJD SECURITIES', '2021-01-06 09:16:44'),
(82, 'BMA WEALTH CREATORS', '2021-01-06 09:16:44'),
(83, 'BN RATHI SECURITIES', '2021-01-06 09:16:44'),
(84, 'BP EQUITIES', '2021-01-06 09:16:44'),
(85, 'BP WEALTH', '2021-01-06 09:16:44'),
(86, 'BRICS SECURITIES', '2021-01-06 09:16:44'),
(87, 'BSV SECURITIES', '2021-01-06 09:16:44'),
(88, 'BABU PURSHOTTAM', '2021-01-06 09:16:44'),
(89, 'BADJATE STOCK & SHARES', '2021-01-06 09:16:44'),
(90, 'BAHUBALI FINANCIAL', '2021-01-06 09:16:44'),
(91, 'BAJAJ CAPITAL', '2021-01-06 09:16:44'),
(92, 'BALANCE EQUITY BROKING', '2021-01-06 09:16:44'),
(93, 'BALJIT SECURITIES', '2021-01-06 09:16:44'),
(94, 'BANSAL FINSTOCK', '2021-01-06 09:16:44'),
(95, 'BANSAL SECURITIES', '2021-01-06 09:16:44'),
(96, 'BANYAN CUSTODIAN', '2021-01-06 09:16:44'),
(97, 'BARCLAYS SECURITIES', '2021-01-06 09:16:44'),
(98, 'BASAN EQUITY', '2021-01-06 09:16:44'),
(99, 'BATLIVALA & KARANI SECURITIES', '2021-01-06 09:16:44'),
(100, 'BEATSWEB SOFTWARE', '2021-01-06 09:16:44'),
(101, 'BEELINE BROKING', '2021-01-06 09:16:44'),
(102, 'BERKELEY SECURITIES', '2021-01-06 09:16:44'),
(103, 'BETALA STOCK BROKING', '2021-01-06 09:16:44'),
(104, 'BEZEL STOCK BROKING', '2021-01-06 09:16:44'),
(105, 'BGSE FINANCIALS', '2021-01-06 09:16:44'),
(106, 'BHAIDAS MAGANLAL', '2021-01-06 09:16:44'),
(107, 'BHANSALI VALUE', '2021-01-06 09:16:44'),
(108, 'BHARAT BHUSAN', '2021-01-06 09:16:44'),
(109, 'BHARAT CO', '2021-01-06 09:16:44'),
(110, 'BHARATHI SHARES', '2021-01-06 09:16:44'),
(111, 'BHARTIA BROTHERS', '2021-01-06 09:16:44'),
(112, 'BHAVIK RAJESH KHANDHAR SHARE', '2021-01-06 09:16:44'),
(113, 'BHOGILAL TRIKAMLAL', '2021-01-06 09:16:44'),
(114, 'BHUMIKA CONSULTANCY', '2021-01-06 09:16:44'),
(115, 'BIHARIJI BROKERS', '2021-01-06 09:16:44'),
(116, 'BIPIN R VORA', '2021-01-06 09:16:44'),
(117, 'BOB CAPITAL MARKETS', '2021-01-06 09:16:44'),
(118, 'BONANZA PORTFOLIO', '2021-01-06 09:16:44'),
(119, 'BRIJMOHAN SAGARMAL', '2021-01-06 09:16:44'),
(120, 'C R KOTHARI & SONS STOCK', '2021-01-06 09:16:44'),
(121, 'CD EQUISEARCH', '2021-01-06 09:16:44'),
(122, 'CD INTEGRATED', '2021-01-06 09:16:44'),
(123, 'CLSA INDIA', '2021-01-06 09:16:44'),
(124, 'CM GOENKA STOCK', '2021-01-06 09:16:44'),
(125, 'CANARA BANK SECURITIES', '2021-01-06 09:16:44'),
(126, 'CAPSTOCKS & SECURITIES', '2021-01-06 09:16:44'),
(127, 'CAREGROWTH BROKING', '2021-01-06 09:16:44'),
(128, 'CELEBRUS CAPITAL', '2021-01-06 09:16:44'),
(129, 'CENTRUM BROKING', '2021-01-06 09:16:44'),
(130, 'CHOICE EQUITY BROKING', '2021-01-06 09:16:44'),
(131, 'CHOICE MERCHANDISE', '2021-01-06 09:16:44'),
(132, 'CHOLAMANDALAM SECURITIES', '2021-01-06 09:16:44'),
(133, 'CHUKNOO SECURITIES', '2021-01-06 09:16:44'),
(134, 'CITIGROUP GLOBAL MARKETS', '2021-01-06 09:16:44'),
(135, 'CLASS SOFTWARE', '2021-01-06 09:16:44'),
(136, 'COCHIN STOCK BROKER', '2021-01-06 09:16:44'),
(137, 'COIMBATORE CAPITAL', '2021-01-06 09:16:44'),
(138, 'COMFORT SECURITIES', '2021-01-06 09:16:44'),
(139, 'COMPETENT FINMAN', '2021-01-06 09:16:44'),
(140, 'COMPOSITE INVESTMENTS', '2021-01-06 09:16:44'),
(141, 'COMPOSITE SECURITIES', '2021-01-06 09:16:44'),
(142, 'CONCEPT SECURITIES', '2021-01-06 09:16:44'),
(143, 'CONSORTIUM CAPITAL', '2021-01-06 09:16:44'),
(144, 'CONSORTIUM SECURITIES', '2021-01-06 09:16:44'),
(145, 'CROSSEAS CAPITAL', '2021-01-06 09:16:44'),
(146, 'CROWN CONSULTANTS', '2021-01-06 09:16:44'),
(147, 'DB INT. STOCK BROKERS', '2021-01-06 09:16:44'),
(148, 'DBFS SECURITIES', '2021-01-06 09:16:44'),
(149, 'DG GOENKA EQUITIES', '2021-01-06 09:16:44'),
(150, 'DNS SHARE & STOCKS', '2021-01-06 09:16:44'),
(151, 'DSE FINANCIAL SERVICES', '2021-01-06 09:16:44'),
(152, 'DSP MERRILL LYNCH', '2021-01-06 09:16:44'),
(153, 'DALAL & BROACHA', '2021-01-06 09:16:44'),
(154, 'DALMIA SECURITIES', '2021-01-06 09:16:44'),
(155, 'DANI SHARES & STOCKS', '2021-01-06 09:16:44'),
(156, 'DEAL DEPOT EQUITIES', '2021-01-06 09:16:44'),
(157, 'DEALMONEY SECURITIES', '2021-01-06 09:16:44'),
(158, 'DESTIMONEY SECURITIES', '2021-01-06 09:16:44'),
(159, 'DEUTSCHE EQUITIES', '2021-01-06 09:16:44'),
(160, 'DHARAMSHI SECURITIES', '2021-01-06 09:16:44'),
(161, 'DHWAJA SHARES', '2021-01-06 09:16:44'),
(162, 'DHWANI STOCK', '2021-01-06 09:16:44'),
(163, 'DIMENSIONAL SECURITIES', '2021-01-06 09:16:44'),
(164, 'DIVYA PORFOLIO', '2021-01-06 09:16:44'),
(165, 'DURGA PRASAD', '2021-01-06 09:16:44'),
(166, 'DYNA SECURITIES', '2021-01-06 09:16:44'),
(167, 'DYNAMIC EQUITIES', '2021-01-06 09:16:44'),
(168, 'EAST INDIA', '2021-01-06 09:16:44'),
(169, 'EASTERN FINANCIERS', '2021-01-06 09:16:44'),
(170, 'EDELWEISS BROKING', '2021-01-06 09:16:44'),
(171, 'EDELWEISS SECURITIE', '2021-01-06 09:16:44'),
(172, 'ELARA SECURITIES', '2021-01-06 09:16:44'),
(173, 'ELITE WEALTH', '2021-01-06 09:16:44'),
(174, 'EMKAY GLOBAL', '2021-01-06 09:16:44'),
(175, 'ENAM SECURITIES', '2021-01-06 09:16:44'),
(176, 'EQUIRUS SECURITIES', '2021-01-06 09:16:44'),
(177, 'EQUITRIX SOFTWARE', '2021-01-06 09:16:44'),
(178, 'ESCORTS', '2021-01-06 09:16:44'),
(179, 'EUREKA SECURITIES', '2021-01-06 09:16:44'),
(180, 'EUREKA STOCK & SHARE BROKING', '2021-01-06 09:16:44'),
(181, 'EXCEL STOCK BROKING', '2021-01-06 09:16:44'),
(182, 'EXCLUSIVE SECURITIES', '2021-01-06 09:16:44'),
(183, 'EXPRESS SECURITIES', '2021-01-06 09:16:44'),
(184, 'F6 FINSERVE', '2021-01-06 09:16:44'),
(185, 'FRR SHARES & SECURITIES', '2021-01-06 09:16:44'),
(186, 'FAIRWEALTH SECURITIES', '2021-01-06 09:16:44'),
(187, 'FARSIGHT SECURITIES', '2021-01-06 09:16:44'),
(188, 'FAST CAPITAL', '2021-01-06 09:16:44'),
(189, 'FEDERAL CAPITAL', '2021-01-06 09:16:44'),
(190, 'FICUS SECURITIES', '2021-01-06 09:16:44'),
(191, 'FINANCE MONITOR', '2021-01-06 09:16:44'),
(192, 'FINQUEST SECURITIES', '2021-01-06 09:16:44'),
(193, 'FINVASIA SECURITIES', '2021-01-06 09:16:44'),
(194, 'FIRST FUTURES', '2021-01-06 09:16:44'),
(195, 'FIRST GLOBAL STOCKBROKING', '2021-01-06 09:16:44'),
(196, 'FORTUNE CAPITAL', '2021-01-06 09:16:44'),
(197, 'FORTUNE EQUITY', '2021-01-06 09:16:44'),
(198, 'FORTUNE FISCAL', '2021-01-06 09:16:44'),
(199, 'FORTUNE TRADING', '2021-01-06 09:16:44'),
(200, 'Frizcon Investments', '2021-01-06 09:16:44'),
(201, 'FRIZCON INVESTMENTS', '2021-01-06 09:16:44'),
(202, 'FYERS SECURITIES', '2021-01-06 09:16:44'),
(203, 'GCL SECURITIES', '2021-01-06 09:16:44'),
(204, 'GD BAGRI SECURITIES', '2021-01-06 09:16:44'),
(205, 'GEPL CAPITAL', '2021-01-06 09:16:44'),
(206, 'GNG STOCK HOLDINGS', '2021-01-06 09:16:44'),
(207, 'GANDHI SECURITIES', '2021-01-06 09:16:44'),
(208, 'GARG SECURITIES', '2021-01-06 09:16:44'),
(209, 'GEOFIN COMTRADE', '2021-01-06 09:16:44'),
(210, 'GEOJIT BNP PARIBAS', '2021-01-06 09:16:44'),
(211, 'GHALLA BHANSALI STOCK BROKERS', '2021-01-06 09:16:44'),
(212, 'GIGANTIC SECURITIES', '2021-01-06 09:16:44'),
(213, 'GLOBALWORTH SECURITIES', '2021-01-06 09:16:44'),
(214, 'GLOBE CAPITAL MARKETS', '2021-01-06 09:16:44'),
(215, 'GOLDEN STOCK', '2021-01-06 09:16:44'),
(216, 'GOLDMINE STOCKS', '2021-01-06 09:16:44'),
(217, 'GREAT VENTURES', '2021-01-06 09:16:44'),
(218, 'GREEKSOFT', '2021-01-06 09:16:44'),
(219, 'GRESHMA SHARES', '2021-01-06 09:16:44'),
(220, 'GUINESS SECURITIES', '2021-01-06 09:16:44'),
(221, 'GURU EQUITY', '2021-01-06 09:16:44'),
(222, 'HDFC SECURITIES', '2021-01-06 09:16:44'),
(223, 'HEM FINLEASE', '2021-01-06 09:16:44'),
(224, 'HEM SECURITIES', '2021-01-06 09:16:44'),
(225, 'HPMG SHARES', '2021-01-06 09:16:44'),
(226, 'HSBC INVESTDIRECT', '2021-01-06 09:16:44'),
(227, 'HSE SECURITIES', '2021-01-06 09:16:44'),
(228, 'HTS SECURITIES', '2021-01-06 09:16:44'),
(229, 'HARJIVANDAS NEMIDAS', '2021-01-06 09:16:44'),
(230, 'HARLEY SECURITIES', '2021-01-06 09:16:44'),
(231, 'HASMUKH LALBHAI SHARE BROKERS', '2021-01-06 09:16:44'),
(232, 'HAVEN FINNANCIAL', '2021-01-06 09:16:44'),
(233, 'HEDGE EQUITIES', '2021-01-06 09:16:44'),
(234, 'HEMANT HIRANI', '2021-01-06 09:16:44'),
(235, 'HINDUSTAN TRADECOM', '2021-01-06 09:16:44'),
(236, 'HORNIC INVESTMENT', '2021-01-06 09:16:44'),
(237, 'ICICI SECURITIES', '2021-01-06 09:16:44'),
(238, 'IDBI CAPITAL MARKET', '2021-01-06 09:16:44'),
(239, 'IFCI FINANCIAL', '2021-01-06 09:16:44'),
(240, 'IIFL WEALTH MANAGEMENT', '2021-01-06 09:16:44'),
(241, 'IL&FS INVESTSMART', '2021-01-06 09:16:44'),
(242, 'INA STOCK BROKING', '2021-01-06 09:16:44'),
(243, 'ISE SECURITIES', '2021-01-06 09:16:44'),
(244, 'ISJ SECURITIES', '2021-01-06 09:16:44'),
(245, 'ITI FINANCIAL SERVICES', '2021-01-06 09:16:44'),
(246, 'INDBANK MERCHANT BANKING SERVICES', '2021-01-06 09:16:44'),
(247, 'INDIA ADVANTAGE SECURITIES', '2021-01-06 09:16:44'),
(248, 'INDIA CEMENTS INVESTMENT', '2021-01-06 09:16:44'),
(249, 'INDIA INFOLINE SECURITIES', '2021-01-06 09:16:44'),
(250, 'INDIABULLS VENTURES', '2021-01-06 09:16:44'),
(251, 'INDIANIVESH SECURITIES', '2021-01-06 09:16:44'),
(252, 'INDIRA SECURITIES', '2021-01-06 09:16:44'),
(253, 'INDITRADE CAPITAL', '2021-01-06 09:16:44'),
(254, 'INDO THAI SECURITIES', '2021-01-06 09:16:44'),
(255, 'INDOVISION SECURITIES', '2021-01-06 09:16:44'),
(256, 'INDUS PORTFOLIO EXCHANGE', '2021-01-06 09:16:44'),
(257, 'INNOVATE SECURITIES', '2021-01-06 09:16:44'),
(258, 'INNOVATIVE CONSULTANTS', '2021-01-06 09:16:44'),
(259, 'INTEGRA SECURITIES', '2021-01-06 09:16:44'),
(260, 'INTEGRATED ENTERPRISES', '2021-01-06 09:16:44'),
(261, 'INTEGRATED MASTER SECURITIES', '2021-01-06 09:16:44'),
(262, 'INTELLECT STOCK', '2021-01-06 09:16:44'),
(263, 'INTERACTIVE BROKERS', '2021-01-06 09:16:44'),
(264, 'INTIME EQUITIES', '2021-01-06 09:16:44'),
(265, 'INVENTURE GROWTH', '2021-01-06 09:16:44'),
(266, 'INVESTMART STOCK', '2021-01-06 09:16:44'),
(267, 'INVESTMENT MALL SOFTWARE', '2021-01-06 09:16:44'),
(268, 'INVESTMENTOR SECURITIES', '2021-01-06 09:16:44'),
(269, 'INVESTSMART STOCK', '2021-01-06 09:16:44'),
(270, 'INVESTWELL SOFTWARE', '2021-01-06 09:16:44'),
(271, 'J J BHABERA MULTI BILL', '2021-01-06 09:16:44'),
(272, 'J L SECURITIES', '2021-01-06 09:16:44'),
(273, 'J L SHAH SECURITIES', '2021-01-06 09:16:44'),
(274, 'J. G. SHAH FINANCIAL CONSULTANTS', '2021-01-06 09:16:44'),
(275, 'J.P.MORGAN', '2021-01-06 09:16:44'),
(276, 'JBS SECURITIES', '2021-01-06 09:16:44'),
(277, 'JHP SECURITIES', '2021-01-06 09:16:44'),
(278, 'JK SECURITIES', '2021-01-06 09:16:44'),
(279, 'JM FINANCIAL', '2021-01-06 09:16:44'),
(280, 'JM GLOBAL EQUITIES', '2021-01-06 09:16:44'),
(281, 'JMP SECURITIES', '2021-01-06 09:16:44'),
(282, 'JRG SECURITIES', '2021-01-06 09:16:44'),
(283, 'JRK STOCK BROKING', '2021-01-06 09:16:44'),
(284, 'JRS SHARES & STOCK', '2021-01-06 09:16:44'),
(285, 'JADE SECURITIES', '2021-01-06 09:16:44'),
(286, 'JAINAM SHARE', '2021-01-06 09:16:44'),
(287, 'JAMNADAS MORARJEE', '2021-01-06 09:16:44'),
(288, 'JAMNADAS VIRJI', '2021-01-06 09:16:44'),
(289, 'JAS ONE SECURITIES', '2021-01-06 09:16:44'),
(290, 'JETAGE SECURITIES', '2021-01-06 09:16:44'),
(291, 'JHAVERI SECURITIES', '2021-01-06 09:16:44'),
(292, 'JITENDRA HARJIVANDAS', '2021-01-06 09:16:44'),
(293, 'JITENDRA PUKHRAJ JAIN', '2021-01-06 09:16:44'),
(294, 'JOINDRE CAPITAL', '2021-01-06 09:16:44'),
(295, 'JULIUS BAER WEALTH', '2021-01-06 09:16:44'),
(296, 'JYOTI PORTFOLIO', '2021-01-06 09:16:44'),
(297, 'KASSA FINVEST', '2021-01-06 09:16:44'),
(298, 'KB CAPITAL MARKETS', '2021-01-06 09:16:44'),
(299, 'KC SECURITIES', '2021-01-06 09:16:44'),
(300, 'KIFS SECURITIES', '2021-01-06 09:16:44'),
(301, 'KIFS TRADE CAPITAL', '2021-01-06 09:16:44'),
(302, 'KM JAIN STOCK BROKERS', '2021-01-06 09:16:44'),
(303, 'KMS STOCK BROKING', '2021-01-06 09:16:44'),
(304, 'KNA SHARE BROKERS', '2021-01-06 09:16:44'),
(305, 'KTD TRADING', '2021-01-06 09:16:44'),
(306, 'KARVY STOCK BROKING', '2021-01-06 09:16:44'),
(307, 'KAUSHIK SHAH SHARES', '2021-01-06 09:16:44'),
(308, 'KAYNET CAPITAL', '2021-01-06 09:16:44'),
(309, 'KAYNET FINANCE', '2021-01-06 09:16:44'),
(310, 'KEDIA SHARES & STOCKS BROKERS', '2021-01-06 09:16:44'),
(311, 'KELLTON SECURITIES', '2021-01-06 09:16:44'),
(312, 'KHAMBATTA SECURITIES', '2021-01-06 09:16:44'),
(313, 'KHANDELWAL BROS', '2021-01-06 09:16:44'),
(314, 'KHANDWALA SECURITIES', '2021-01-06 09:16:44'),
(315, 'KISAN RATILAL CHOKSEY', '2021-01-06 09:16:44'),
(316, 'KOTAK SECURITIES', '2021-01-06 09:16:44'),
(317, 'KRISHNA MULTIFARIOUS', '2021-01-06 09:16:44'),
(318, 'KUMAR SHARE BROKERS', '2021-01-06 09:16:44'),
(319, 'KUNVARJI FINSTOCK', '2021-01-06 09:16:44'),
(320, 'LFC SECURITIES', '2021-01-06 09:16:44'),
(321, 'LKB CAPITAL MARKET', '2021-01-06 09:16:44'),
(322, 'LKP SECURITIES', '2021-01-06 09:16:44'),
(323, 'LPC SECURITIES', '2021-01-06 09:16:44'),
(324, 'LSE SECURITIES', '2021-01-06 09:16:44'),
(325, 'LABDHI FINANCE', '2021-01-06 09:16:44'),
(326, 'LALKAR SECURITIES', '2021-01-06 09:16:44'),
(327, 'LALLUBHAI RANCHHODDAS', '2021-01-06 09:16:44'),
(328, 'LARK CONSULTANCY', '2021-01-06 09:16:44'),
(329, 'LATIN MANHARLAL SECURITIES', '2021-01-06 09:16:44'),
(330, 'LIFELINE SECURITIES', '2021-01-06 09:16:44'),
(331, 'LOHIA SECURITIES', '2021-01-06 09:16:44'),
(332, 'LOTUS GLOBAL EQUITIES', '2021-01-06 09:16:44'),
(333, 'M BHAUMIK SHARES', '2021-01-06 09:16:44'),
(334, 'M.P.VORA SHARE', '2021-01-06 09:16:44'),
(335, 'M.S.N. SECURITIES', '2021-01-06 09:16:44'),
(336, 'M/S SAJJAN KUMAR SARAF', '2021-01-06 09:16:44'),
(337, 'MEMG SECURITIES', '2021-01-06 09:16:44'),
(338, 'MF GLOBAL', '2021-01-06 09:16:44'),
(339, 'MJ PATEL SHARE', '2021-01-06 09:16:44'),
(340, 'MPC SECURITIES', '2021-01-06 09:16:44'),
(341, 'MPC STOCK', '2021-01-06 09:16:44'),
(342, 'MPC STOCK BROKING', '2021-01-06 09:16:44'),
(343, 'MPSE SEC/SAFAL CAPITAL', '2021-01-06 09:16:44'),
(344, 'MS KIRIT KANTILAL', '2021-01-06 09:16:44'),
(345, 'MS PORECHA GLOBAL SECURITIES', '2021-01-06 09:16:44'),
(346, 'MSE FINANCIAL SERVICES', '2021-01-06 09:16:44'),
(347, 'MSN SECURITIES', '2021-01-06 09:16:44'),
(348, 'MTL SHARES & STOCK BROKERS', '2021-01-06 09:16:44'),
(349, 'MACY SECURITIES', '2021-01-06 09:16:44'),
(350, 'MADHUVAN SECURITIES', '2021-01-06 09:16:44'),
(351, 'MAGNUM EQUITY BROKING', '2021-01-06 09:16:44'),
(352, 'MAHANAGAR CO', '2021-01-06 09:16:44'),
(353, 'MAHESHWARI TECH', '2021-01-06 09:16:44'),
(354, 'MALIRAM MAKHARIA', '2021-01-06 09:16:44'),
(355, 'MANASHVI SECURITIES', '2021-01-06 09:16:44'),
(356, 'MANGAL KESHAV', '2021-01-06 09:16:44'),
(357, 'MANIFEST FINSERVE', '2021-01-06 09:16:44'),
(358, 'MANOJ JAVERI STOCK', '2021-01-06 09:16:44'),
(359, 'MANSI SHARE', '2021-01-06 09:16:44'),
(360, 'MANSUKH SECURITIES', '2021-01-06 09:16:44'),
(361, 'MANUBHAI MANGALDAS', '2021-01-06 09:16:44'),
(362, 'MANYOG SECURITIES', '2021-01-06 09:16:44'),
(363, 'MARCELLUS INVESTMENT', '2021-01-06 09:16:44'),
(364, 'MARFATIA STOCK', '2021-01-06 09:16:44'),
(365, 'MARKET CREATORS', '2021-01-06 09:16:44'),
(366, 'MARWADI SHARES', '2021-01-06 09:16:44'),
(367, 'MASTER CAPITAL SERVICES', '2021-01-06 09:16:44'),
(368, 'MATCHLESS SECURITIES', '2021-01-06 09:16:44'),
(369, 'MAURYA INTERMEDIARIES', '2021-01-06 09:16:44'),
(370, 'MAVERICK SHARE', '2021-01-06 09:16:44'),
(371, 'MAX GROWTH CAPITAL', '2021-01-06 09:16:44'),
(372, 'MAX STOCK BROKING', '2021-01-06 09:16:44'),
(373, 'MEHTA EQUITIES', '2021-01-06 09:16:44'),
(374, 'MEHTA VAKIL & CO.', '2021-01-06 09:16:44'),
(375, 'MESH STOCK BROKERS', '2021-01-06 09:16:44'),
(376, 'MICROSEC CAPITAL', '2021-01-06 09:16:44'),
(377, 'MILES SOFTWARE', '2021-01-06 09:16:44'),
(378, 'MITHUN SECURITIES', '2021-01-06 09:16:44'),
(379, 'MITTAL SECURITIES', '2021-01-06 09:16:44'),
(380, 'MODEX INTERNATIONAL', '2021-01-06 09:16:44'),
(381, 'MONARCH NETWORTH CAPITAL', '2021-01-06 09:16:44'),
(382, 'MONARCH PROJECT', '2021-01-06 09:16:44'),
(383, 'MONEYBEE SECURITIES', '2021-01-06 09:16:44'),
(384, 'MONEYCARE SECURITIES', '2021-01-06 09:16:44'),
(385, 'MONEYWARE SOFTWARE', '2021-01-06 09:16:44'),
(386, 'MOTILAL OSWAL', '2021-01-06 09:16:44'),
(387, 'MS MANISH R PATEL', '2021-01-06 09:16:44'),
(388, 'MUDRA OM SECURITIES', '2021-01-06 09:16:44'),
(389, 'MUKUL SONAWALA', '2021-01-06 09:16:44'),
(390, 'MULTIGAIN SECURITIES', '2021-01-06 09:16:44'),
(391, 'MUNOTH FINANCIAL', '2021-01-06 09:16:44'),
(392, 'MUTHOOT SECURITIES', '2021-01-06 09:16:44'),
(393, 'NCO SECURITIES', '2021-01-06 09:16:44'),
(394, 'NDA SECURITIES', '2021-01-06 09:16:44'),
(395, 'NNM SECURITIES', '2021-01-06 09:16:44'),
(396, 'NAKAMICHI SECURITIES', '2021-01-06 09:16:44'),
(397, 'NALANDA SECURITIES', '2021-01-06 09:16:44'),
(398, 'NARAYAN SECURITIES', '2021-01-06 09:16:44'),
(399, 'NARIMAN FINVEST', '2021-01-06 09:16:44'),
(400, 'NARNOLIA FINANCIAL', '2021-01-06 09:16:44'),
(401, 'NATVERLAL & SONS', '2021-01-06 09:16:44'),
(402, 'NAVIA MARKETS', '2021-01-06 09:16:44'),
(403, 'NAVJEEVAN EQUITY', '2021-01-06 09:16:44'),
(404, 'NAVKAR SHARE & STOCK BROKERS', '2021-01-06 09:16:44'),
(405, 'NAVRATAN CAPITAL', '2021-01-06 09:16:44'),
(406, 'NETWORTH STOCK BROKING', '2021-01-06 09:16:44'),
(407, 'NEW INDIA CO', '2021-01-06 09:16:44'),
(408, 'NEXT BILLION', '2021-01-06 09:16:44'),
(409, 'NINE STAR BROKING', '2021-01-06 09:16:44'),
(410, 'NIRMAL BANG SECURITIES', '2021-01-06 09:16:44'),
(411, 'NIRMAN SHARE BROKERS', '2021-01-06 09:16:44'),
(412, 'NOVEL SECURITIES', '2021-01-06 09:16:44'),
(413, 'O3 SECURITIES', '2021-01-06 09:16:44'),
(414, 'ODIN SOFTWARE', '2021-01-06 09:16:44'),
(415, 'ODYSSEY SHARE BROKING', '2021-01-06 09:16:44'),
(416, 'OHM STOCK BROKER', '2021-01-06 09:16:44'),
(417, 'OSWAL SHARES', '2021-01-06 09:16:44'),
(418, 'P. SURYAKANT SHARE', '2021-01-06 09:16:44'),
(419, 'P.C.S SECURITIES', '2021-01-06 09:16:44'),
(420, 'P.H FINANCIAL', '2021-01-06 09:16:44'),
(421, 'P.P.J. SHROFF SECURITIES', '2021-01-06 09:16:44'),
(422, 'PCS SECURITIES', '2021-01-06 09:16:44'),
(423, 'PDJ SECURITIES', '2021-01-06 09:16:44'),
(424, 'PM SECURITIES', '2021-01-06 09:16:44'),
(425, 'PRL STOCK BROKERS', '2021-01-06 09:16:44'),
(426, 'PSB SECURITIES', '2021-01-06 09:16:44'),
(427, 'PSE SECURITIES', '2021-01-06 09:16:44'),
(428, 'PSJ SECURITIES', '2021-01-06 09:16:44'),
(429, 'PACE STOCK BROKING', '2021-01-06 09:16:44'),
(430, 'PADMAKSHI FINANCIAL SERVICES', '2021-01-06 09:16:44'),
(431, 'PAMAS HOLDINGS', '2021-01-06 09:16:44'),
(432, 'PANKAJ MANGALDAS SECURITIES', '2021-01-06 09:16:44'),
(433, 'PASSION COMMODITIES', '2021-01-06 09:16:44'),
(434, 'PATANI SECURITIES', '2021-01-06 09:16:44'),
(435, 'PATEL WEALTH', '2021-01-06 09:16:44'),
(436, 'PEERLESS SECURITIES', '2021-01-06 09:16:44'),
(437, 'PHILLIP CAPITAL', '2021-01-06 09:16:44'),
(438, 'PINNACLE FOREX', '2021-01-06 09:16:44'),
(439, 'PORECHA GLOBAL SECURITIES', '2021-01-06 09:16:44'),
(440, 'PRABHAT FINANCIAL SERVICES', '2021-01-06 09:16:44'),
(441, 'PRABHUDAS LILLADHER', '2021-01-06 09:16:44'),
(442, 'PRAGYA SECURITIES', '2021-01-06 09:16:44'),
(443, 'PRAKASH K. SHAH', '2021-01-06 09:16:44'),
(444, 'PRAKEM INVESTMENTS', '2021-01-06 09:16:44'),
(445, 'PRARUP SHARES', '2021-01-06 09:16:44'),
(446, 'PRATIBHUTI VINIYOG', '2021-01-06 09:16:44'),
(447, 'PRAVIN RATILAL', '2021-01-06 09:16:44'),
(448, 'PRAYAS SECURITIES', '2021-01-06 09:16:44'),
(449, 'PREFERRED SECURITIES', '2021-01-06 09:16:44'),
(450, 'PRITHVI FINMART', '2021-01-06 09:16:44'),
(451, 'PROSTOCKS SUNLIGHT BROKING', '2021-01-06 09:16:44'),
(452, 'PRODIGY INVESTMENT', '2021-01-06 09:16:44'),
(453, 'PROFICIENT EQUITIES', '2021-01-06 09:16:44'),
(454, 'PROFITMART SECURITIES', '2021-01-06 09:16:44'),
(455, 'PROGNOSIS SECURITIES', '2021-01-06 09:16:44'),
(456, 'PROGRESSIVE SHARE', '2021-01-06 09:16:44'),
(457, 'PRUDENT BROKING', '2021-01-06 09:16:44'),
(458, 'PUNE ESTOCK BROKING', '2021-01-06 09:16:44'),
(459, 'PUNIT CAPITAL', '2021-01-06 09:16:44'),
(460, 'QUANT BROKING', '2021-01-06 09:16:44'),
(461, 'QUANT SECURITIES', '2021-01-06 09:16:44'),
(462, 'QUANTUM GLOBAL', '2021-01-06 09:16:44'),
(463, 'R B JAJU SECURITIES', '2021-01-06 09:16:44'),
(464, 'R K STOCKHOLDING', '2021-01-06 09:16:44'),
(465, 'R N PATWA SHARES', '2021-01-06 09:16:44'),
(466, 'R R EQUITY BROKERS', '2021-01-06 09:16:44'),
(467, 'R. WADIWALA', '2021-01-06 09:16:44'),
(468, 'R.V.HEMANI SHARES', '2021-01-06 09:16:44'),
(469, 'RBC FINANCIAL', '2021-01-06 09:16:44'),
(470, 'RBK SHARE BROKING', '2021-01-06 09:16:44'),
(471, 'REPL SECURITIES', '2021-01-06 09:16:44'),
(472, 'RK GLOBAL', '2021-01-06 09:16:44'),
(473, 'RKSV SECURITIES', '2021-01-06 09:16:44'),
(474, 'RRS SHARES', '2021-01-06 09:16:44'),
(475, 'RTG SHARE BROKING', '2021-01-06 09:16:44'),
(476, 'RAGHUNANDAN CAPITAL', '2021-01-06 09:16:44'),
(477, 'RAIMA EQUITIES', '2021-01-06 09:16:44'),
(478, 'RAINBOW SECURITIES', '2021-01-06 09:16:44'),
(479, 'RAJCHANDRA CAPITAL', '2021-01-06 09:16:44'),
(480, 'RAJEN CHANDRAKANT', '2021-01-06 09:16:44'),
(481, 'RAJENDRA K. DALAL', '2021-01-06 09:16:44'),
(482, 'RAJESHKUMAR D PATEL', '2021-01-06 09:16:44'),
(483, 'RAJVI STOCK BROKING', '2021-01-06 09:16:44'),
(484, 'RAMJIDAS NAGARMAL', '2021-01-06 09:16:44'),
(485, 'RASHI EQUISEARCH', '2021-01-06 09:16:44'),
(486, 'RATNAKAR SECURITIES', '2021-01-06 09:16:44'),
(487, 'RELIABLE STOCK', '2021-01-06 09:16:44'),
(488, 'RELIANCE SECURITIES', '2021-01-06 09:16:44'),
(489, 'RELIGARE SECURITIES', '2021-01-06 09:16:44'),
(490, 'RIKHAV SECURITIES', '2021-01-06 09:16:44'),
(491, 'ROONGTA RISING STOCK', '2021-01-06 09:16:44'),
(492, 'ROSY BLUE SECURITIES', '2021-01-06 09:16:44'),
(493, 'RUDRA SHARES', '2021-01-06 09:16:44'),
(494, 'S A DESHPANDE', '2021-01-06 09:16:44'),
(495, 'S B SECURITIES', '2021-01-06 09:16:44'),
(496, 'S.G. SECURITIES / BROKING', '2021-01-06 09:16:44'),
(497, 'S.NAGARDAS MOHANLAL', '2021-01-06 09:16:44'),
(498, 'SG SECURITIES', '2021-01-06 09:16:44'),
(499, 'SHAC SOFTWARE', '2021-01-06 09:16:44'),
(500, 'SHCIL SERVICES', '2021-01-06 09:16:44'),
(501, 'SIC STOCK & SERVICES', '2021-01-06 09:16:44'),
(502, 'SKI CAPITAL', '2021-01-06 09:16:44'),
(503, 'SKP SECURITIES', '2021-01-06 09:16:44'),
(504, 'SKSE SECURITIES', '2021-01-06 09:16:44'),
(505, 'SMC COMTRADE', '2021-01-06 09:16:44'),
(506, 'SMC GLOBAL', '2021-01-06 09:16:44'),
(507, 'SPA SECURITIES', '2021-01-06 09:16:44'),
(508, 'SPFL SECURITIES', '2021-01-06 09:16:44'),
(509, 'SPS SHAREBROKERS', '2021-01-06 09:16:44'),
(510, 'SS CORPORATE SECURITIES', '2021-01-06 09:16:44'),
(511, 'SSJ FINANCE SECURITIES', '2021-01-06 09:16:44'),
(512, 'SVS SECURITIES', '2021-01-06 09:16:44'),
(513, 'SVV SHARES', '2021-01-06 09:16:44'),
(514, 'SW CAPITAL', '2021-01-06 09:16:44'),
(515, 'SACHDEVA STOCKS', '2021-01-06 09:16:44'),
(516, 'SAFAL CAPITAL', '2021-01-06 09:16:44'),
(517, 'SAJAG SECURITIES', '2021-01-06 09:16:44'),
(518, 'SAMCO SECURITIES', '2021-01-06 09:16:44'),
(519, 'SAMPOORNA PORTFOLIO', '2021-01-06 09:16:44'),
(520, 'SAMRUDDHI STOCK BROKERS', '2021-01-06 09:16:44'),
(521, 'SAMURAI SECURITIES', '2021-01-06 09:16:44'),
(522, 'SAMYAG BROKING', '2021-01-06 09:16:44'),
(523, 'SANGHAVI SAVLA', '2021-01-06 09:16:44'),
(524, 'SANKALP SHARE', '2021-01-06 09:16:44'),
(525, 'SAPPHIRE WEALTH', '2021-01-06 09:16:44'),
(526, 'SATCO CAPITAL', '2021-01-06 09:16:44'),
(527, 'SATCO SECURITIES', '2021-01-06 09:16:44'),
(528, 'SATISH ASHOK SABNIS', '2021-01-06 09:16:44'),
(529, 'SATISH SABNIS', '2021-01-06 09:16:44'),
(530, 'SAURASHTRA CAPITAL', '2021-01-06 09:16:44'),
(531, 'SAURIN INVESTMENTS', '2021-01-06 09:16:44'),
(532, 'SEPT SECURITIES', '2021-01-06 09:16:44'),
(533, 'SHAH INVESTOR', '2021-01-06 09:16:44'),
(534, 'SHARE INDIA', '2021-01-06 09:16:44'),
(535, 'SHAREKHAN', '2021-01-06 09:16:44'),
(536, 'SHAREPRO', '2021-01-06 09:16:44'),
(537, 'SHAREWEALTH SECURITIES', '2021-01-06 09:16:44'),
(538, 'SHARIAH COMMODITIES', '2021-01-06 09:16:44'),
(539, 'SHERWOOD SECURITIES', '2021-01-06 09:16:44'),
(540, 'SHILPA STOCK BROKER', '2021-01-06 09:16:44'),
(541, 'SHREE BAHUBALI', '2021-01-06 09:16:44'),
(542, 'SHREE KANHA', '2021-01-06 09:16:44'),
(543, 'SHREE NAMAN SECURITIES', '2021-01-06 09:16:44'),
(544, 'SHREE STOCKVISION SECURITIES', '2021-01-06 09:16:44'),
(545, 'SHREE TISAI', '2021-01-06 09:16:44'),
(546, 'SHRENI SHARES', '2021-01-06 09:16:44'),
(547, 'SHREYAS', '2021-01-06 09:16:44'),
(548, 'SHRI BRIJ SECURITIES', '2021-01-06 09:16:44'),
(549, 'SHRI PARASRAM HOLDINGS', '2021-01-06 09:16:44'),
(550, 'SHRIKANT G MANTRI', '2021-01-06 09:16:44'),
(551, 'SHRIRAM INSIGHT SHARE BROKERS', '2021-01-06 09:16:44'),
(552, 'SHRIYAM BROKING', '2021-01-06 09:16:44'),
(553, 'SINGLE WINDOW SECURITIES', '2021-01-06 09:16:44'),
(554, 'SKUNG TRADELINK', '2021-01-06 09:16:44'),
(555, 'SMART EQUITY', '2021-01-06 09:16:44'),
(556, 'SODHANI SECURITIES', '2021-01-06 09:16:44'),
(557, 'SOFT FLOW', '2021-01-06 09:16:44'),
(558, 'SOHAM (PRISM) SOFTWARE', '2021-01-06 09:16:44'),
(559, 'SOSHA CREDIT', '2021-01-06 09:16:44'),
(560, 'SOUTH ASIAN STOCK', '2021-01-06 09:16:44'),
(561, 'SOUTH GUJARAT SHARES', '2021-01-06 09:16:44'),
(562, 'SPAN CAPLEASE', '2021-01-06 09:16:44'),
(563, 'SPARK SECURITIES', '2021-01-06 09:16:44'),
(564, 'SPARKLE SECURITIES', '2021-01-06 09:16:44'),
(565, 'SRI SHIRDI CAPITAL', '2021-01-06 09:16:44'),
(566, 'STANDARD CHARTERED SECURITIES', '2021-01-06 09:16:44'),
(567, 'STAR FINVEST', '2021-01-06 09:16:44'),
(568, 'STEEL CITY SECURITIES', '2021-01-06 09:16:44'),
(569, 'STELLAR SECURITIES', '2021-01-06 09:16:44'),
(570, 'STEWART & MACKERTICH', '2021-01-06 09:16:44'),
(571, 'STOCHASTICS SECURITIES', '2021-01-06 09:16:44'),
(572, 'STOCKPLUS BROKING', '2021-01-06 09:16:44'),
(573, 'SUGAL & DAMANI', '2021-01-06 09:16:44'),
(574, 'SUMEDHA FISCAL', '2021-01-06 09:16:44'),
(575, 'SUMPOORNA PORTFOLIO', '2021-01-06 09:16:44'),
(576, 'SUN N SUN FIN SERVICES', '2021-01-06 09:16:44'),
(577, 'SUNFLOWER BROKING', '2021-01-06 09:16:44'),
(578, 'SUNIDHI BROKERAGE SHARING', '2021-01-06 09:16:44'),
(579, 'SUNNESS CAPITAL', '2021-01-06 09:16:44'),
(580, 'SUNNESS CAPITAL', '2021-01-06 09:16:44'),
(581, 'SUNSHINE FINSEC', '2021-01-06 09:16:44'),
(582, 'SUNSHINE STOCK BROKING', '2021-01-06 09:16:44'),
(583, 'SUNTECH WEALTHMAX', '2021-01-06 09:16:44'),
(584, 'SURESH RATHI SECURITIES', '2021-01-06 09:16:44'),
(585, 'SUSHIL FINANCE', '2021-01-06 09:16:44'),
(586, 'SUVRIDHI CAPITAL', '2021-01-06 09:16:44'),
(587, 'SWASTIKA INVESTMART', '2021-01-06 09:16:44'),
(588, 'SYKES & RAY EQUITIES', '2021-01-06 09:16:44'),
(589, 'SYSTEMATIX SHARES', '2021-01-06 09:16:44'),
(590, 'TJ STOCK BROKING', '2021-01-06 09:16:44'),
(591, 'TANNA FINANCIAL', '2021-01-06 09:16:44'),
(592, 'TATA SECURITIES', '2021-01-06 09:16:44'),
(593, 'TECHNO SHARES', '2021-01-06 09:16:44'),
(594, 'THIRANI SECURITIES', '2021-01-06 09:16:44'),
(595, 'THIRD WAVE STOCKBROKING', '2021-01-06 09:16:44'),
(596, 'TOTAL SECURITIES', '2021-01-06 09:16:44'),
(597, 'TRACOM STOCK BROKING', '2021-01-06 09:16:44'),
(598, 'TRADEDEAL FINANCIAL', '2021-01-06 09:16:44'),
(599, 'TRADEDEAL FINANCIAL', '2021-01-06 09:16:44'),
(600, 'TRADEWELL SECURITIES', '2021-01-06 09:16:44'),
(601, 'TRADEBULLS SECURITIES', '2021-01-06 09:16:44'),
(602, 'TRADEJINI FINANCIAL', '2021-01-06 09:16:44'),
(603, 'TRADESWIFT BROKING', '2021-01-06 09:16:44'),
(604, 'TRAMBAKLAL RATILAL', '2021-01-06 09:16:44'),
(605, 'TRANS SCAN SECURITIES', '2021-01-06 09:16:44'),
(606, 'TRIMBHAK INVESTMENT', '2021-01-06 09:16:44'),
(607, 'TRUST FINANCIAL CONSULTANT', '2021-01-06 09:16:44'),
(608, 'TRUSTLINE SECURITIES', '2021-01-06 09:16:44'),
(609, 'TULSIAN', '2021-01-06 09:16:44'),
(610, 'TWIN EARTH SECURITIES', '2021-01-06 09:16:44'),
(611, 'UPSE SECURITIES', '2021-01-06 09:16:44'),
(612, 'UJALA CAPITAL', '2021-01-06 09:16:44'),
(613, 'UNICON SECURITIES', '2021-01-06 09:16:44'),
(614, 'UNIFI CAPITAL', '2021-01-06 09:16:44'),
(615, 'UNIQUE STOCK BROKING', '2021-01-06 09:16:44'),
(616, 'UNITY FIN CAPITAL', '2021-01-06 09:16:44'),
(617, 'UPMOVE FINANCIAL', '2021-01-06 09:16:44'),
(618, 'UPSTOX', '2021-01-06 09:16:44'),
(619, 'URJA INVESTMENT', '2021-01-06 09:16:44'),
(620, 'VCK SHARE', '2021-01-06 09:16:44'),
(621, 'VFC SECURITIES', '2021-01-06 09:16:44'),
(622, 'VJB FINANCIAL', '2021-01-06 09:16:44'),
(623, 'VLS SECURITIES', '2021-01-06 09:16:44'),
(624, 'VNS FINACE', '2021-01-06 09:16:44'),
(625, 'VSE STOCK SERVICES', '2021-01-06 09:16:44'),
(626, 'VAJANI SECURITIES', '2021-01-06 09:16:44'),
(627, 'VARDHAMAN CAPITAL', '2021-01-06 09:16:44'),
(628, 'VEDIKA SECURITIES', '2021-01-06 09:16:44'),
(629, 'VEEKRANT STOCK', '2021-01-06 09:16:44'),
(630, 'VENTURA SECURITIES', '2021-01-06 09:16:44'),
(631, 'VERTEX SECURITIES', '2021-01-06 09:16:44'),
(632, 'VIBRANT SECURITIES', '2021-01-06 09:16:44'),
(633, 'VIDYUT DEVENDRAKUMAR', '2021-01-06 09:16:44'),
(634, 'VIJETA BROKING', '2021-01-06 09:16:44'),
(635, 'VIJYA SOFTWARE', '2021-01-06 09:16:44'),
(636, 'VIKABH SECURITIES', '2021-01-06 09:16:44'),
(637, 'VIKSON SECURITIES', '2021-01-06 09:16:44'),
(638, 'VIMAL & SONS', '2021-01-06 09:16:44'),
(639, 'VIMAL BHAGWANDAS SHAH', '2021-01-06 09:16:44'),
(640, 'VINOD SHARES', '2021-01-06 09:16:44'),
(641, 'VISHESH CAPITAL', '2021-01-06 09:16:44'),
(642, 'VIVEK FINANCIAL FOCUS', '2021-01-06 09:16:44'),
(643, 'VOGUE COMMERCIAL', '2021-01-06 09:16:44'),
(644, 'VRAMATH FINANCIAL', '2021-01-06 09:16:44'),
(645, 'VRISE SECURITIES', '2021-01-06 09:16:44'),
(646, 'WALLFORT FINANCIAL', '2021-01-06 09:16:44'),
(647, 'WAY2WEALTH', '2021-01-06 09:16:44'),
(648, 'WEALTH INDIA FINANCIAL', '2021-01-06 09:16:44'),
(649, 'WEALTH MANTRA', '2021-01-06 09:16:44'),
(650, 'WEALTHSTREET ADVISORS', '2021-01-06 09:16:44'),
(651, 'WEGMANS FINANCIAL', '2021-01-06 09:16:44'),
(652, 'WELLWORTH SHARE', '2021-01-06 09:16:44'),
(653, 'YES SECURITIES', '2021-01-06 09:16:44'),
(654, 'YOGEN BABU SECURITIES', '2021-01-06 09:16:44'),
(655, 'ZEBU SHARE', '2021-01-06 09:16:44'),
(656, 'ZEN SECURITIES', '2021-01-06 09:16:44'),
(657, 'ZERODHA SECURITIES', '2021-01-06 09:16:44'),
(658, 'IFAST SOFTWARE', '2021-01-06 09:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `budgets`
--

CREATE TABLE `budgets` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `expence_amt` double(10,2) NOT NULL,
  `expence_id` bigint(20) NOT NULL,
  `sub_expence_id` bigint(20) NOT NULL,
  `date` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budgets`
--

INSERT INTO `budgets` (`id`, `user_id`, `expence_amt`, `expence_id`, `sub_expence_id`, `date`) VALUES
(1, 2, 300.00, 5, 42, '01-03-2021'),
(2, 2, 0.00, 11, 92, '01-03-2021'),
(3, 2, 200.00, 7, 63, '01-03-2021'),
(4, 2, 32000.00, 8, 70, '01-01-2021'),
(5, 2, 200.00, 12, 98, '05-03-2021'),
(6, 2, 500.00, 12, 98, '05-03-2021'),
(7, 2, 11000.00, 3, 28, '05-03-2021');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'Car', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'Car', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `car_insurance`
--

CREATE TABLE `car_insurance` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `insurance_company_name` varchar(800) NOT NULL,
  `insurance_policy_name` varchar(1024) NOT NULL,
  `insurance_policy_no` text NOT NULL,
  `insurance_value` decimal(13,2) NOT NULL,
  `insurance_policy_start_date` date NOT NULL,
  `insurance_maturity_date` date NOT NULL,
  `insurance_maturity_benifits` varchar(200) NOT NULL,
  `insurance_lockin_period` date NOT NULL,
  `insurance_premium_date` date NOT NULL,
  `insurance_premium_amt` decimal(13,2) NOT NULL,
  `insurance_frequency` varchar(300) NOT NULL,
  `insurance_nextpremium_date` date NOT NULL,
  `insurance_premium_tenure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_insurance`
--

INSERT INTO `car_insurance` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `insurance_company_name`, `insurance_policy_name`, `insurance_policy_no`, `insurance_value`, `insurance_policy_start_date`, `insurance_maturity_date`, `insurance_maturity_benifits`, `insurance_lockin_period`, `insurance_premium_date`, `insurance_premium_amt`, `insurance_frequency`, `insurance_nextpremium_date`, `insurance_premium_tenure`) VALUES
(2, 1, 'port_4', 'Insurance', 'Car Insurance', 'testing', '121', '111', 33.00, '2020-10-09', '2020-10-12', 'Yes', '2020-10-13', '2020-10-16', 55.00, 'Half Yearly', '2020-10-09', 11);

-- --------------------------------------------------------

--
-- Table structure for table `car_loan`
--

CREATE TABLE `car_loan` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `loan_bank_name` varchar(1024) NOT NULL,
  `loan_account_no` text NOT NULL,
  `loan_start_date` date NOT NULL,
  `loan_amount` decimal(13,2) NOT NULL,
  `loan_period` bigint(20) NOT NULL,
  `loan_end_date` date NOT NULL,
  `loan_emi_amt` decimal(13,2) NOT NULL,
  `loan_emi_date` date NOT NULL,
  `loan_total_emipaid` bigint(20) NOT NULL,
  `loan_processing_fees` decimal(13,2) NOT NULL,
  `loan_downpayment_amt` decimal(13,2) NOT NULL,
  `loan_balance_amt` decimal(13,2) NOT NULL,
  `loan_pre_emi_amt` decimal(13,2) NOT NULL,
  `loan_topup_amt` decimal(13,2) NOT NULL,
  `loan_Interest_rate_type` varchar(300) NOT NULL,
  `loan_fixed_rate_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cash_in_hand`
--

CREATE TABLE `cash_in_hand` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `cashinhand_date` date NOT NULL,
  `amt_invested` decimal(13,2) NOT NULL,
  `current_value` decimal(13,2) NOT NULL,
  `cash_interest_rate` decimal(13,2) NOT NULL,
  `cash_interest_type` varchar(300) NOT NULL,
  `cash_interest_payment` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_in_hand`
--

INSERT INTO `cash_in_hand` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `cashinhand_date`, `amt_invested`, `current_value`, `cash_interest_rate`, `cash_interest_type`, `cash_interest_payment`) VALUES
(1, 1, 'port_2', 'Emergency Fund', 'Cash in Hand', '2020-10-02', 12.00, 13.00, 0.00, '', ''),
(2, 1, 'port_4', 'Emergency Fund', 'Cash in Hand', '2020-10-08', 13.00, 14.00, 15.00, 'Simple', 'Monthly'),
(3, 1, 'port_2', 'Emergency Fund', 'Cash in Hand', '2020-10-11', 77.00, 77.00, 77.00, 'Simple', 'Half Yearly'),
(4, 1, 'port_2', 'Emergency Fund', 'Cash in Hand', '2020-09-18', 17.00, 17.00, 0.00, '', ''),
(5, 1, 'port_2', 'Emergency Fund', 'Cash in Hand', '2020-10-08', 11.00, 11.00, 11.00, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cash_in_post_office`
--

CREATE TABLE `cash_in_post_office` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `cashinhand_date` date NOT NULL,
  `amt_invested` decimal(13,2) NOT NULL,
  `current_value` decimal(13,2) NOT NULL,
  `cash_interest_rate` decimal(13,2) NOT NULL,
  `cash_interest_type` varchar(300) NOT NULL,
  `cash_interest_payment` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_in_post_office`
--

INSERT INTO `cash_in_post_office` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `cashinhand_date`, `amt_invested`, `current_value`, `cash_interest_rate`, `cash_interest_type`, `cash_interest_payment`) VALUES
(3, 1, 'port_1', 'Emergency Fund', 'Cash in post office saving A/c', '2020-10-09', 16.00, 17.00, 18.00, 'Compound', 'Half Yearly');

-- --------------------------------------------------------

--
-- Table structure for table `cash_in_saving`
--

CREATE TABLE `cash_in_saving` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `bank_name` varchar(600) NOT NULL,
  `cashinhand_date` date NOT NULL,
  `amt_invested` decimal(13,2) NOT NULL,
  `current_value` decimal(13,2) NOT NULL,
  `cash_interest_rate` decimal(13,2) NOT NULL,
  `cash_interest_type` varchar(300) NOT NULL,
  `cash_interest_payment` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_in_saving`
--

INSERT INTO `cash_in_saving` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `bank_name`, `cashinhand_date`, `amt_invested`, `current_value`, `cash_interest_rate`, `cash_interest_type`, `cash_interest_payment`) VALUES
(3, 1, 'port_2', 'Emergency Fund', 'Cash in Saving A/C', 'SBI', '2020-10-15', 66.00, 66.00, 66.00, 'Compound', 'Half Yearly'),
(4, 1, 'port_2', 'Emergency Fund', 'Cash in Saving A/C', 'SBI', '2020-10-08', 77.00, 77.00, 77.00, 'Simple', 'Quarterly'),
(5, 1, 'port_2', 'Emergency Fund', 'Cash in Saving A/C', 'SBI', '2020-10-10', 88.00, 88.00, 88.00, 'Compound', 'Monthly'),
(6, 1, 'port_2', 'Emergency Fund', 'Cash in Saving A/C', '', '2020-10-18', 44.00, 44.00, 0.00, '', ''),
(7, 1, 'port_2', 'Emergency Fund', 'Cash in Saving A/C', 'SBI', '2020-10-20', 14.00, 14.00, 0.00, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cash_in_wallet`
--

CREATE TABLE `cash_in_wallet` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `bank_name` varchar(600) NOT NULL,
  `cashinhand_date` date NOT NULL,
  `amt_invested` decimal(13,2) NOT NULL,
  `current_value` decimal(13,2) NOT NULL,
  `cash_interest_rate` decimal(13,2) NOT NULL,
  `cash_interest_type` varchar(300) NOT NULL,
  `cash_interest_payment` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_in_wallet`
--

INSERT INTO `cash_in_wallet` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `bank_name`, `cashinhand_date`, `amt_invested`, `current_value`, `cash_interest_rate`, `cash_interest_type`, `cash_interest_payment`) VALUES
(3, 1, 'port_2', 'Emergency Fund', 'Cash in wallet', 'SBI', '2020-10-10', 77.00, 77.00, 77.00, 'Compound', 'Monthly'),
(4, 1, 'port_3', 'Emergency Fund', 'Cash in wallet', 'SBI', '2020-09-10', 66.00, 66.00, 0.00, '', ''),
(5, 1, 'port_3', 'Emergency Fund', 'Cash in wallet', 'SBI', '2020-10-09', 66.00, 66.00, 0.00, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(250) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `state_id`) VALUES
(1, 'Anantapur', 1),
(2, 'Chittoor', 1),
(3, 'East Godavari', 1),
(4, 'Guntur', 1),
(5, 'Cuddapah', 1),
(6, 'Krishna', 1),
(7, 'Kurnool', 1),
(8, 'Prakasam', 1),
(9, 'Nellore', 1),
(10, 'Srikakulam', 1),
(11, 'Vishakhapatnam', 1),
(12, 'Vizianagaram', 1),
(13, 'West Godavari', 1),
(14, 'Anjaw', 2),
(15, 'Central Siang', 2),
(16, 'Changlang', 2),
(17, 'Dibang Valley', 2),
(18, 'East Kameng', 2),
(19, 'East Siang', 2),
(20, 'Kamle', 2),
(21, 'Kra Daadi', 2),
(22, 'Kurung Kumey', 2),
(23, 'Lepa Rada', 2),
(24, 'Lohit', 2),
(25, 'Longding', 2),
(26, 'Lower Dibang Valley', 2),
(27, 'Lower Siang', 2),
(28, 'Lower Subansiri', 2),
(29, 'Namsai', 2),
(30, 'Pakke Kessang', 2),
(31, 'Papum Pare', 2),
(32, 'Shi Yomi', 2),
(33, 'Tawang', 2),
(34, 'Tirap', 2),
(35, 'Upper Siang', 2),
(36, 'Upper Subansiri', 2),
(37, 'West Kameng', 2),
(38, 'West Siang', 2),
(39, 'Bajali', 3),
(40, 'Baksa', 3),
(41, 'Barpeta', 3),
(42, 'Biswanath', 3),
(43, 'Bongaigaon', 3),
(44, 'Cachar', 3),
(45, 'Charaideo', 3),
(46, 'Chirang', 3),
(47, 'Darrang', 3),
(48, 'Dhemaji', 3),
(49, 'Dhubri', 3),
(50, 'Dibrugarh', 3),
(51, 'Dima Hasao', 3),
(52, 'Goalpara', 3),
(53, 'Golaghat', 3),
(54, 'Hailakandi', 3),
(55, 'Hojai', 3),
(56, 'Jorhat', 3),
(57, 'Kamrup', 3),
(58, 'Kamrup Metropolitan', 3),
(59, 'Karbi Anglong', 3),
(60, 'Karimganj', 3),
(61, 'Kokrajhar', 3),
(62, 'Lakhimpur', 3),
(63, 'Majuli', 3),
(64, 'Morigaon', 3),
(65, 'Nagaon', 3),
(66, 'Nalbari', 3),
(67, 'Sivasagar', 3),
(68, 'Sonitpur', 3),
(69, 'South Salmara-Mankachar', 3),
(70, 'Tinsukia', 3),
(71, 'Udalguri', 3),
(72, 'West Karbi Anglong', 3),
(73, 'Araria', 4),
(74, 'Arwal', 4),
(75, 'Aurangabad', 4),
(76, 'Banka', 4),
(77, 'Begusarai', 4),
(78, 'Bhagalpur', 4),
(79, 'Bhojpur', 4),
(80, 'Buxar', 4),
(81, 'Darbhanga', 4),
(82, 'East Champaran', 4),
(83, 'Gaya', 4),
(84, 'Gopalganj', 4),
(85, 'Jamui', 4),
(86, 'Jehanabad', 4),
(87, 'Kaimur', 4),
(88, 'Katihar', 4),
(89, 'Khagaria', 4),
(90, 'Kishanganj', 4),
(91, 'Lakhisarai', 4),
(92, 'Madhepura', 4),
(93, 'Madhubani', 4),
(94, 'Munger', 4),
(95, 'Muzaffarpur', 4),
(96, 'Nalanda', 4),
(97, 'Nawada', 4),
(98, 'Patna', 4),
(99, 'Purnia', 4),
(100, 'Rohtas', 4),
(101, 'Saharsa', 4),
(102, 'Samastipur', 4),
(103, 'Saran', 4),
(104, 'Sheikhpura', 4),
(105, 'Sheohar', 4),
(106, 'Sitamarhi', 4),
(107, 'Siwan', 4),
(108, 'Supaul', 4),
(109, 'Vaishali', 4),
(110, 'West Champaran', 4),
(111, 'Balod', 5),
(112, 'Baloda Bazar', 5),
(113, 'Balrampur', 5),
(114, 'Bastar', 5),
(115, 'Bemetara', 5),
(116, 'Bijapur', 5),
(117, 'Bilaspur', 5),
(118, 'Dantewada', 5),
(119, 'Dhamtari', 5),
(120, 'Durg', 5),
(121, 'Gariaband', 5),
(122, 'Gaurela Pendra Marwahi', 5),
(123, 'Janjgir Champa', 5),
(124, 'Jashpur', 5),
(125, 'Kabirdham', 5),
(126, 'Kanker', 5),
(127, 'Kondagaon', 5),
(128, 'Korba', 5),
(129, 'Koriya', 5),
(130, 'Mahasamund', 5),
(131, 'Mungeli', 5),
(132, 'Narayanpur', 5),
(133, 'Raigarh', 5),
(134, 'Raipur', 5),
(135, 'Rajnandgaon', 5),
(136, 'Sukma', 5),
(137, 'Surajpur', 5),
(138, 'Surguja', 5),
(139, 'North Goa', 6),
(140, 'South Goa', 6),
(141, 'Ahmedabad', 7),
(142, 'Amreli', 7),
(143, 'Anand', 7),
(144, 'Aravalli', 7),
(145, 'Banaskantha', 7),
(146, 'Bharuch', 7),
(147, 'Bhavnagar', 7),
(148, 'Botad', 7),
(149, 'Chhota Udaipur', 7),
(150, 'Dahod', 7),
(151, 'Dang', 7),
(152, 'Devbhoomi Dwarka', 7),
(153, 'Gandhinagar', 7),
(154, 'Gir Somnath', 7),
(155, 'Jamnagar', 7),
(156, 'Junagadh', 7),
(157, 'Kheda', 7),
(158, 'Kutch', 7),
(159, 'Mahisagar', 7),
(160, 'Mehsana', 7),
(161, 'Morbi', 7),
(162, 'Narmada', 7),
(163, 'Navsari', 7),
(164, 'Panchmahal', 7),
(165, 'Patan', 7),
(166, 'Porbandar', 7),
(167, 'Rajkot', 7),
(168, 'Sabarkantha', 7),
(169, 'Surat', 7),
(170, 'Surendranagar', 7),
(171, 'Tapi', 7),
(172, 'Vadodara', 7),
(173, 'Valsad', 7),
(174, 'Ambala', 8),
(175, 'Bhiwani', 8),
(176, 'Charkhi Dadri', 8),
(177, 'Faridabad', 8),
(178, 'Fatehabad', 8),
(179, 'Gurugram', 8),
(180, 'Hisar', 8),
(181, 'Jhajjar', 8),
(182, 'Jind', 8),
(183, 'Kaithal', 8),
(184, 'Karnal', 8),
(185, 'Kurukshetra', 8),
(186, 'Mahendragarh', 8),
(187, 'Mewat', 8),
(188, 'Palwal', 8),
(189, 'Panchkula', 8),
(190, 'Panipat', 8),
(191, 'Rewari', 8),
(192, 'Rohtak', 8),
(193, 'Sirsa', 8),
(194, 'Sonipat', 8),
(195, 'Yamunanagar', 8),
(196, 'Bilaspur', 9),
(197, 'Chamba', 9),
(198, 'Hamirpur', 9),
(199, 'Kangra', 9),
(200, 'Kinnaur', 9),
(201, 'Kullu', 9),
(202, 'Lahaul Spiti', 9),
(203, 'Mandi', 9),
(204, 'Shimla', 9),
(205, 'Sirmaur', 9),
(206, 'Solan', 9),
(207, 'Una', 9),
(208, 'Anantnag', 10),
(209, 'Bandipora', 10),
(210, 'Baramulla', 10),
(211, 'Budgam', 10),
(212, 'Doda', 10),
(213, 'Ganderbal', 10),
(214, 'Jammu', 10),
(215, 'Kathua', 10),
(216, 'Kishtwar', 10),
(217, 'Kulgam', 10),
(218, 'Kupwara', 10),
(219, 'Poonch', 10),
(220, 'Pulwama', 10),
(221, 'Rajouri', 10),
(222, 'Ramban', 10),
(223, 'Reasi', 10),
(224, 'Samba', 10),
(225, 'Shopian', 10),
(226, 'Srinagar', 10),
(227, 'Udhampur', 10),
(228, 'Bokaro', 11),
(229, 'Chatra', 11),
(230, 'Deoghar', 11),
(231, 'Dhanbad', 11),
(232, 'Dumka', 11),
(233, 'East Singhbhum', 11),
(234, 'Garhwa', 11),
(235, 'Giridih', 11),
(236, 'Godda', 11),
(237, 'Gumla', 11),
(238, 'Hazaribagh', 11),
(239, 'Jamtara', 11),
(240, 'Khunti', 11),
(241, 'Koderma', 11),
(242, 'Latehar', 11),
(243, 'Lohardaga', 11),
(244, 'Pakur', 11),
(245, 'Palamu', 11),
(246, 'Ramgarh', 11),
(247, 'Ranchi', 11),
(248, 'Sahebganj', 11),
(249, 'Seraikela Kharsawan', 11),
(250, 'Simdega', 11),
(251, 'West Singhbhum', 11),
(252, 'Bagalkot', 12),
(253, 'Bangalore Rural', 12),
(254, 'Bangalore Urban', 12),
(255, 'Belgaum', 12),
(256, 'Bellary', 12),
(257, 'Bidar', 12),
(258, 'Chamarajanagar', 12),
(259, 'Chikkaballapur', 12),
(260, 'Chikkamagaluru', 12),
(261, 'Chitradurga', 12),
(262, 'Dakshina Kannada', 12),
(263, 'Davanagere', 12),
(264, 'Dharwad', 12),
(265, 'Gadag', 12),
(266, 'Gulbarga', 12),
(267, 'Hassan', 12),
(268, 'Haveri', 12),
(269, 'Kodagu', 12),
(270, 'Kolar', 12),
(271, 'Koppal', 12),
(272, 'Mandya', 12),
(273, 'Mysore', 12),
(274, 'Raichur', 12),
(275, 'Ramanagara', 12),
(276, 'Shimoga', 12),
(277, 'Tumkur', 12),
(278, 'Udupi', 12),
(279, 'Uttara Kannada', 12),
(280, 'Vijayanagara', 12),
(281, 'Vijayapura', 12),
(282, 'Yadgir', 12),
(283, 'Alappuzha', 13),
(284, 'Ernakulam', 13),
(285, 'Idukki', 13),
(286, 'Kannur', 13),
(287, 'Kasaragod', 13),
(288, 'Kollam', 13),
(289, 'Kottayam', 13),
(290, 'Kozhikode', 13),
(291, 'Malappuram', 13),
(292, 'Palakkad', 13),
(293, 'Pathanamthitta', 13),
(294, 'Thiruvananthapuram', 13),
(295, 'Thrissur', 13),
(296, 'Wayanad', 13),
(297, 'Agar Malwa', 14),
(298, 'Alirajpur', 14),
(299, 'Anuppur', 14),
(300, 'Ashoknagar', 14),
(301, 'Balaghat', 14),
(302, 'Barwani', 14),
(303, 'Betul', 14),
(304, 'Bhind', 14),
(305, 'Bhopal', 14),
(306, 'Burhanpur', 14),
(307, 'Chachaura', 14),
(308, 'Chhatarpur', 14),
(309, 'Chhindwara', 14),
(310, 'Damoh', 14),
(311, 'Datia', 14),
(312, 'Dewas', 14),
(313, 'Dhar', 14),
(314, 'Dindori', 14),
(315, 'Guna', 14),
(316, 'Gwalior', 14),
(317, 'Harda', 14),
(318, 'Hoshangabad', 14),
(319, 'Indore', 14),
(320, 'Jabalpur', 14),
(321, 'Jhabua', 14),
(322, 'Katni', 14),
(323, 'Khandwa', 14),
(324, 'Khargone', 14),
(325, 'Maihar', 14),
(326, 'Mandla', 14),
(327, 'Mandsaur', 14),
(328, 'Morena', 14),
(329, 'Narsinghpur', 14),
(330, 'Nagda', 14),
(331, 'Neemuch', 14),
(332, 'Niwari', 14),
(333, 'Panna', 14),
(334, 'Raisen', 14),
(335, 'Rajgarh', 14),
(336, 'Ratlam', 14),
(337, 'Rewa', 14),
(338, 'Sagar', 14),
(339, 'Satna', 14),
(340, 'Sehore', 14),
(341, 'Seoni', 14),
(342, 'Shahdol', 14),
(343, 'Shajapur', 14),
(344, 'Sheopur', 14),
(345, 'Shivpuri', 14),
(346, 'Sidhi', 14),
(347, 'Singrauli', 14),
(348, 'Tikamgarh', 14),
(349, 'Ujjain', 14),
(350, 'Umaria', 14),
(351, 'Vidisha', 14),
(352, 'Ahmednagar', 15),
(353, 'Akola', 15),
(354, 'Amravati', 15),
(355, 'Aurangabad', 15),
(356, 'Beed', 15),
(357, 'Bhandara', 15),
(358, 'Buldhana', 15),
(359, 'Chandrapur', 15),
(360, 'Dhule', 15),
(361, 'Gadchiroli', 15),
(362, 'Gondia', 15),
(363, 'Hingoli', 15),
(364, 'Jalgaon', 15),
(365, 'Jalna', 15),
(366, 'Kolhapur', 15),
(367, 'Latur', 15),
(368, 'Mumbai City', 15),
(369, 'Mumbai Suburban', 15),
(370, 'Nagpur', 15),
(371, 'Nanded', 15),
(372, 'Nandurbar', 15),
(373, 'Nashik', 15),
(374, 'Osmanabad', 15),
(375, 'Palghar', 15),
(376, 'Parbhani', 15),
(377, 'Pune', 15),
(378, 'Raigad', 15),
(379, 'Ratnagiri', 15),
(380, 'Sangli', 15),
(381, 'Satara', 15),
(382, 'Sindhudurg', 15),
(383, 'Solapur', 15),
(384, 'Thane', 15),
(385, 'Wardha', 15),
(386, 'Washim', 15),
(387, 'Yavatmal', 15),
(388, 'Bishnupur', 16),
(389, 'Chandel', 16),
(390, 'Churachandpur', 16),
(391, 'Imphal East', 16),
(392, 'Imphal West', 16),
(393, 'Jiribam', 16),
(394, 'Kakching', 16),
(395, 'Kamjong', 16),
(396, 'Kangpokpi', 16),
(397, 'Noney', 16),
(398, 'Pherzawl', 16),
(399, 'Senapati', 16),
(400, 'Tamenglong', 16),
(401, 'Tengnoupal', 16),
(402, 'Thoubal', 16),
(403, 'Ukhrul', 16),
(404, 'East Garo Hills', 17),
(405, 'East Jaintia Hills', 17),
(406, 'East Khasi Hills', 17),
(407, 'North Garo Hills', 17),
(408, 'Ri Bhoi', 17),
(409, 'South Garo Hills', 17),
(410, 'South West Garo Hills', 17),
(411, 'South West Khasi Hills', 17),
(412, 'West Garo Hills', 17),
(413, 'West Jaintia Hills', 17),
(414, 'West Khasi Hills', 17),
(415, 'Aizawl', 18),
(416, 'Champhai', 18),
(417, 'Hnahthial', 18),
(418, 'Kolasib', 18),
(419, 'Khawzawl', 18),
(420, 'Lawngtlai', 18),
(421, 'Lunglei', 18),
(422, 'Mamit', 18),
(423, 'Saiha', 18),
(424, 'Serchhip', 18),
(425, 'Saitual', 18),
(426, 'Mon', 19),
(427, 'Dimapur', 19),
(428, 'Kiphire', 19),
(429, 'Kohima', 19),
(430, 'Longleng', 19),
(431, 'Mokokchung', 19),
(432, 'Noklak', 19),
(433, 'Peren', 19),
(434, 'Phek', 19),
(435, 'Tuensang', 19),
(436, 'Wokha', 19),
(437, 'Zunheboto', 19),
(438, 'Angul', 20),
(439, 'Balangir', 20),
(440, 'Balasore', 20),
(441, 'Bargarh', 20),
(442, 'Bhadrak', 20),
(443, 'Boudh', 20),
(444, 'Cuttack', 20),
(445, 'Debagarh', 20),
(446, 'Dhenkanal', 20),
(447, 'Gajapati', 20),
(448, 'Ganjam', 20),
(449, 'Jagatsinghpur', 20),
(450, 'Jajpur', 20),
(451, 'Jharsuguda', 20),
(452, 'Kalahandi', 20),
(453, 'Kandhamal', 20),
(454, 'Kendrapara', 20),
(455, 'Kendujhar', 20),
(456, 'Khordha', 20),
(457, 'Koraput', 20),
(458, 'Malkangiri', 20),
(459, 'Mayurbhanj', 20),
(460, 'Nabarangpur', 20),
(461, 'Nayagarh', 20),
(462, 'Nuapada', 20),
(463, 'Puri', 20),
(464, 'Rayagada', 20),
(465, 'Sambalpur', 20),
(466, 'Subarnapur', 20),
(467, 'Sundergarh', 20),
(468, 'Amritsar', 21),
(469, 'Barnala', 21),
(470, 'Bathinda', 21),
(471, 'Faridkot', 21),
(472, 'Fatehgarh Sahib', 21),
(473, 'Fazilka', 21),
(474, 'Firozpur', 21),
(475, 'Gurdaspur', 21),
(476, 'Hoshiarpur', 21),
(477, 'Jalandhar', 21),
(478, 'Kapurthala', 21),
(479, 'Ludhiana', 21),
(480, 'Mansa', 21),
(481, 'Moga', 21),
(482, 'Mohali', 21),
(483, 'Muktsar', 21),
(484, 'Pathankot', 21),
(485, 'Patiala', 21),
(486, 'Rupnagar', 21),
(487, 'Sangrur', 21),
(488, 'Shaheed Bhagat Singh Nagar', 21),
(489, 'Tarn Taran', 21),
(490, 'Ajmer', 22),
(491, 'Alwar', 22),
(492, 'Banswara', 22),
(493, 'Baran', 22),
(494, 'Barmer', 22),
(495, 'Bharatpur', 22),
(496, 'Bhilwara', 22),
(497, 'Bikaner', 22),
(498, 'Bundi', 22),
(499, 'Chittorgarh', 22),
(500, 'Churu', 22),
(501, 'Dausa', 22),
(502, 'Dholpur', 22),
(503, 'Dungarpur', 22),
(504, 'Hanumangarh', 22),
(505, 'Jaipur', 22),
(506, 'Jaisalmer', 22),
(507, 'Jalore', 22),
(508, 'Jhalawar', 22),
(509, 'Jhunjhunu', 22),
(510, 'Jodhpur', 22),
(511, 'Karauli', 22),
(512, 'Kota', 22),
(513, 'Nagaur', 22),
(514, 'Pali', 22),
(515, 'Pratapgarh', 22),
(516, 'Rajsamand', 22),
(517, 'Sawai Madhopur', 22),
(518, 'Sikar', 22),
(519, 'Sirohi', 22),
(520, 'Sri Ganganagar', 22),
(521, 'Tonk', 22),
(522, 'Udaipur', 22),
(523, 'East Sikkim', 23),
(524, 'North Sikkim', 23),
(525, 'South Sikkim', 23),
(526, 'West Sikkim', 23),
(527, 'Ariyalur', 24),
(528, 'Chengalpattu', 24),
(529, 'Chennai', 24),
(530, 'Coimbatore', 24),
(531, 'Cuddalore', 24),
(532, 'Dharmapuri', 24),
(533, 'Dindigul', 24),
(534, 'Erode', 24),
(535, 'Kallakurichi', 24),
(536, 'Kanchipuram', 24),
(537, 'Kanyakumari', 24),
(538, 'Karur', 24),
(539, 'Krishnagiri', 24),
(540, 'Madurai', 24),
(541, 'Mayiladuthurai', 24),
(542, 'Nagapattinam', 24),
(543, 'Namakkal', 24),
(544, 'Nilgiris', 24),
(545, 'Perambalur', 24),
(546, 'Pudukkottai', 24),
(547, 'Ramanathapuram', 24),
(548, 'Ranipet', 24),
(549, 'Salem', 24),
(550, 'Sivaganga', 24),
(551, 'Tenkasi', 24),
(552, 'Thanjavur', 24),
(553, 'Theni', 24),
(554, 'Thoothukudi', 24),
(555, 'Tiruchirappalli', 24),
(556, 'Tirunelveli', 24),
(557, 'Tirupattur', 24),
(558, 'Tiruppur', 24),
(559, 'Tiruvallur', 24),
(560, 'Tiruvannamalai', 24),
(561, 'Tiruvarur', 24),
(562, 'Vellore', 24),
(563, 'Viluppuram', 24),
(564, 'Virudhunagar', 24),
(565, 'Adilabad', 25),
(566, 'Bhadradri Kothagudem', 25),
(567, 'Hyderabad', 25),
(568, 'Jagtial', 25),
(569, 'Jangaon', 25),
(570, 'Jayashankar', 25),
(571, 'Jogulamba', 25),
(572, 'Kamareddy', 25),
(573, 'Karimnagar', 25),
(574, 'Khammam', 25),
(575, 'Komaram Bheem', 25),
(576, 'Mahabubabad', 25),
(577, 'Mahbubnagar', 25),
(578, 'Mancherial', 25),
(579, 'Medak', 25),
(580, 'Medchal', 25),
(581, 'Mulugu', 25),
(582, 'Nagarkurnool', 25),
(583, 'Nalgonda', 25),
(584, 'Narayanpet', 25),
(585, 'Nirmal', 25),
(586, 'Nizamabad', 25),
(587, 'Peddapalli', 25),
(588, 'Rajanna Sircilla', 25),
(589, 'Ranga Reddy', 25),
(590, 'Sangareddy', 25),
(591, 'Siddipet', 25),
(592, 'Suryapet', 25),
(593, 'Vikarabad', 25),
(594, 'Wanaparthy', 25),
(595, 'Warangal Rural', 25),
(596, 'Warangal Urban', 25),
(597, 'Yadadri Bhuvanagiri', 25),
(598, 'Dhalai', 26),
(599, 'Gomati', 26),
(600, 'Khowai', 26),
(601, 'North Tripura', 26),
(602, 'Sepahijala', 26),
(603, 'South Tripura', 26),
(604, 'Unakoti', 26),
(605, 'West Tripura', 26),
(606, 'Almora', 27),
(607, 'Bageshwar', 27),
(608, 'Chamoli', 27),
(609, 'Champawat', 27),
(610, 'Dehradun', 27),
(611, 'Haridwar', 27),
(612, 'Nainital', 27),
(613, 'Pauri', 27),
(614, 'Pithoragarh', 27),
(615, 'Rudraprayag', 27),
(616, 'Tehri', 27),
(617, 'Udham Singh Nagar', 27),
(618, 'Uttarkashi', 27),
(619, 'Agra', 28),
(620, 'Aligarh', 28),
(621, 'Ambedkar Nagar', 28),
(622, 'Amethi', 28),
(623, 'Amroha', 28),
(624, 'Auraiya', 28),
(625, 'Ayodhya', 28),
(626, 'Azamgarh', 28),
(627, 'Baghpat', 28),
(628, 'Bahraich', 28),
(629, 'Ballia', 28),
(630, 'Balrampur', 28),
(631, 'Banda', 28),
(632, 'Barabanki', 28),
(633, 'Bareilly', 28),
(634, 'Basti', 28),
(635, 'Bhadohi', 28),
(636, 'Bijnor', 28),
(637, 'Budaun', 28),
(638, 'Bulandshahr', 28),
(639, 'Chandauli', 28),
(640, 'Chitrakoot', 28),
(641, 'Deoria', 28),
(642, 'Etah', 28),
(643, 'Etawah', 28),
(644, 'Farrukhabad', 28),
(645, 'Fatehpur', 28),
(646, 'Firozabad', 28),
(647, 'Gautam Buddha Nagar', 28),
(648, 'Ghaziabad', 28),
(649, 'Ghazipur', 28),
(650, 'Gonda', 28),
(651, 'Gorakhpur', 28),
(652, 'Hamirpur', 28),
(653, 'Hapur', 28),
(654, 'Hardoi', 28),
(655, 'Hathras', 28),
(656, 'Jalaun', 28),
(657, 'Jaunpur', 28),
(658, 'Jhansi', 28),
(659, 'Kannauj', 28),
(660, 'Kanpur Dehat', 28),
(661, 'Kanpur Nagar', 28),
(662, 'Kasganj', 28),
(663, 'Kaushambi', 28),
(664, 'Kheri', 28),
(665, 'Kushinagar', 28),
(666, 'Lalitpur', 28),
(667, 'Lucknow', 28),
(668, 'Maharajganj', 28),
(669, 'Mahoba', 28),
(670, 'Mainpuri', 28),
(671, 'Mathura', 28),
(672, 'Mau', 28),
(673, 'Meerut', 28),
(674, 'Mirzapur', 28),
(675, 'Moradabad', 28),
(676, 'Muzaffarnagar', 28),
(677, 'Pilibhit', 28),
(678, 'Pratapgarh', 28),
(679, 'Prayagraj', 28),
(680, 'Raebareli', 28),
(681, 'Rampur', 28),
(682, 'Saharanpur', 28),
(683, 'Sambhal', 28),
(684, 'Sant Kabir Nagar', 28),
(685, 'Shahjahanpur', 28),
(686, 'Shamli', 28),
(687, 'Shravasti', 28),
(688, 'Siddharthnagar', 28),
(689, 'Sitapur', 28),
(690, 'Sonbhadra', 28),
(691, 'Sultanpur', 28),
(692, 'Unnao', 28),
(693, 'Varanasi', 28),
(694, 'Alipurduar', 29),
(695, 'Bankura', 29),
(696, 'Birbhum', 29),
(697, 'Cooch Behar', 29),
(698, 'Dakshin Dinajpur', 29),
(699, 'Darjeeling', 29),
(700, 'Hooghly', 29),
(701, 'Howrah', 29),
(702, 'Jalpaiguri', 29),
(703, 'Jhargram', 29),
(704, 'Kalimpong', 29),
(705, 'Kolkata', 29),
(706, 'Malda', 29),
(707, 'Murshidabad', 29),
(708, 'Nadia', 29),
(709, 'North 24 Parganas', 29),
(710, 'Paschim Bardhaman', 29),
(711, 'Paschim Medinipur', 29),
(712, 'Purba Bardhaman', 29),
(713, 'Purba Medinipur', 29),
(714, 'Purulia', 29),
(715, 'South 24 Parganas', 29),
(716, 'Uttar Dinajpur', 29),
(717, 'Nicobar', 30),
(718, 'North Middle Andaman', 30),
(719, 'South Andaman', 30),
(720, 'Chandigarh', 31),
(721, 'Dadra and Nagar Haveli', 32),
(722, 'Daman', 33),
(723, 'Diu', 33),
(724, 'Central Delhi', 34),
(725, 'East Delhi', 34),
(726, 'New Delhi', 34),
(727, 'North Delhi', 34),
(728, 'North East Delhi', 34),
(729, 'North West Delhi', 34),
(730, 'Shahdara', 34),
(731, 'South Delhi', 34),
(732, 'South East Delhi', 34),
(733, 'South West Delhi', 34),
(734, 'West Delhi', 34),
(735, 'Lakshadweep', 35),
(736, 'Karaikal', 36),
(737, 'Mahe', 36),
(738, 'Puducherry', 36),
(739, 'Yanam', 36);

-- --------------------------------------------------------

--
-- Table structure for table `commercial_land`
--

CREATE TABLE `commercial_land` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial_land`
--

INSERT INTO `commercial_land` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'Commercial Land', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'Commercial Land', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `commercial_property`
--

CREATE TABLE `commercial_property` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial_property`
--

INSERT INTO `commercial_property` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'Commercial Property', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'Commercial Property', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `commercial_vehicle`
--

CREATE TABLE `commercial_vehicle` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial_vehicle`
--

INSERT INTO `commercial_vehicle` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'Commercial Vehicle', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'Commercial Vehicle', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `commodity`
--

CREATE TABLE `commodity` (
  `id` int(11) NOT NULL,
  `currency` varchar(250) NOT NULL,
  `today_price` varchar(250) NOT NULL,
  `yesterday_price` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commodity`
--

INSERT INTO `commodity` (`id`, `currency`, `today_price`, `yesterday_price`, `cdate`) VALUES
(1, 'currency1', 'Today Price 1', 'Yesterday Price 1', '2021-01-22 09:12:47'),
(2, 'currency2', 'Today Price 2', 'Yesterday Price 2', '2021-01-22 09:12:47'),
(3, 'currency3', 'Today Price 3', 'Yesterday Price 3', '2021-01-22 09:12:47'),
(4, 'currency4', 'Today Price 4', 'Yesterday Price 4', '2021-01-22 09:12:47'),
(5, 'currency5', 'Today Price 5', 'Yesterday Price 5', '2021-01-22 09:12:47'),
(6, 'currency6', 'Today Price 6', 'Yesterday Price 6', '2021-01-22 09:12:47'),
(7, 'currency7', 'Today Price 7', 'Yesterday Price 7', '2021-01-22 09:12:47'),
(8, 'currency8', 'Today Price 8', 'Yesterday Price 8', '2021-01-22 09:12:47'),
(9, 'currency9', 'Today Price 9', 'Yesterday Price 9', '2021-01-22 09:12:47'),
(10, 'currency10', 'Today Price 10', 'Yesterday Price 10', '2021-01-22 09:12:47'),
(11, 'currency11', 'Today Price 11', 'Yesterday Price 11', '2021-01-22 09:12:47'),
(12, 'currency12', 'Today Price 12', 'Yesterday Price 12', '2021-01-22 09:12:47'),
(13, 'currency13', 'Today Price 13', 'Yesterday Price 13', '2021-01-22 09:12:47'),
(14, 'currency14', 'Today Price 14', 'Yesterday Price 14', '2021-01-22 09:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `email` text NOT NULL,
  `phone` bigint(20) NOT NULL,
  `website` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `query_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `website`, `subject`, `message`, `query_status`) VALUES
(1, 'ashu', 'ashu@gmail.com', 1234567891, 'http://localhost/mainsite/admin/Contact_us', 'Payment Issue', 'While taking plan payment not excepted please , check...!!', 0),
(3, 'jj', 'jj@gmail.com', 1234567891, 'ss', 'ss', 'ss', 1),
(4, 'baldeobagh', 'ashukeshri786@gmail.com', 9039901680, '', '', 'safew', 0);

-- --------------------------------------------------------

--
-- Table structure for table `crypto_currency`
--

CREATE TABLE `crypto_currency` (
  `id` int(11) NOT NULL,
  `currency` varchar(250) NOT NULL,
  `today_price` varchar(250) NOT NULL,
  `yesterday_price` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crypto_currency`
--

INSERT INTO `crypto_currency` (`id`, `currency`, `today_price`, `yesterday_price`, `cdate`) VALUES
(1, 'currency1', 'Today Price 1', 'Yesterday Price 1', '2021-01-22 09:12:06'),
(2, 'currency2', 'Today Price 2', 'Yesterday Price 2', '2021-01-22 09:12:06'),
(3, 'currency3', 'Today Price 3', 'Yesterday Price 3', '2021-01-22 09:12:06'),
(4, 'currency4', 'Today Price 4', 'Yesterday Price 4', '2021-01-22 09:12:06'),
(5, 'currency5', 'Today Price 5', 'Yesterday Price 5', '2021-01-22 09:12:06'),
(6, 'currency6', 'Today Price 6', 'Yesterday Price 6', '2021-01-22 09:12:06'),
(7, 'currency7', 'Today Price 7', 'Yesterday Price 7', '2021-01-22 09:12:06'),
(8, 'currency8', 'Today Price 8', 'Yesterday Price 8', '2021-01-22 09:12:06'),
(9, 'currency9', 'Today Price 9', 'Yesterday Price 9', '2021-01-22 09:12:06'),
(10, 'currency10', 'Today Price 10', 'Yesterday Price 10', '2021-01-22 09:12:06'),
(11, 'currency11', 'Today Price 11', 'Yesterday Price 11', '2021-01-22 09:12:06'),
(12, 'currency12', 'Today Price 12', 'Yesterday Price 12', '2021-01-22 09:12:06'),
(13, 'currency13', 'Today Price 13', 'Yesterday Price 13', '2021-01-22 09:12:06'),
(14, 'currency14', 'Today Price 14', 'Yesterday Price 14', '2021-01-22 09:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `currency` varchar(250) NOT NULL,
  `today_price` varchar(250) NOT NULL,
  `yesterday_price` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `currency`, `today_price`, `yesterday_price`, `cdate`) VALUES
(1, 'currency1', 'Today Price 1', 'Yesterday Price 1', '2021-01-22 09:12:26'),
(2, 'currency2', 'Today Price 2', 'Yesterday Price 2', '2021-01-22 09:12:26'),
(3, 'currency3', 'Today Price 3', 'Yesterday Price 3', '2021-01-22 09:12:26'),
(4, 'currency4', 'Today Price 4', 'Yesterday Price 4', '2021-01-22 09:12:26'),
(5, 'currency5', 'Today Price 5', 'Yesterday Price 5', '2021-01-22 09:12:26'),
(6, 'currency6', 'Today Price 6', 'Yesterday Price 6', '2021-01-22 09:12:26'),
(7, 'currency7', 'Today Price 7', 'Yesterday Price 7', '2021-01-22 09:12:26'),
(8, 'currency8', 'Today Price 8', 'Yesterday Price 8', '2021-01-22 09:12:26'),
(9, 'currency9', 'Today Price 9', 'Yesterday Price 9', '2021-01-22 09:12:26'),
(10, 'currency10', 'Today Price 10', 'Yesterday Price 10', '2021-01-22 09:12:26'),
(11, 'currency11', 'Today Price 11', 'Yesterday Price 11', '2021-01-22 09:12:26'),
(12, 'currency12', 'Today Price 12', 'Yesterday Price 12', '2021-01-22 09:12:26'),
(13, 'currency13', 'Today Price 13', 'Yesterday Price 13', '2021-01-22 09:12:26'),
(14, 'currency14', 'Today Price 14', 'Yesterday Price 14', '2021-01-22 09:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `digital_property`
--

CREATE TABLE `digital_property` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `digital_property`
--

INSERT INTO `digital_property` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'Digital Property', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'Digital Property', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee_provident_fund_int`
--

CREATE TABLE `employee_provident_fund_int` (
  `id` int(11) NOT NULL,
  `from_date` varchar(250) NOT NULL,
  `to_date` varchar(250) NOT NULL,
  `interest_rate` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epf_interest_rate`
--

CREATE TABLE `epf_interest_rate` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `interest_rate` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epf_interest_rate`
--

INSERT INTO `epf_interest_rate` (`id`, `date`, `interest_rate`) VALUES
(1, '2020-10-01', 12.00),
(2, '2020-10-30', 12.00),
(3, '2020-12-01', 18.20);

-- --------------------------------------------------------

--
-- Table structure for table `epf_investment`
--

CREATE TABLE `epf_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(600) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `epf_transaction_type` varchar(400) NOT NULL,
  `epf_account_no` text NOT NULL,
  `epf_start_date` date NOT NULL,
  `epf_maturity_date` date NOT NULL,
  `epf_lockin_date` date NOT NULL,
  `epf_interest_rate` decimal(12,2) NOT NULL,
  `epf_contribution_date` date NOT NULL,
  `epf_employee_contribution` decimal(12,2) NOT NULL,
  `epf_employer_contribution` decimal(12,2) NOT NULL,
  `epf_total_contribution` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epf_investment`
--

INSERT INTO `epf_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `epf_transaction_type`, `epf_account_no`, `epf_start_date`, `epf_maturity_date`, `epf_lockin_date`, `epf_interest_rate`, `epf_contribution_date`, `epf_employee_contribution`, `epf_employer_contribution`, `epf_total_contribution`) VALUES
(1, 1, 'port_2', 'Investment', 'EPF / Employee Provident Fund', 'Buy / Invest', '34', '2020-11-04', '2020-11-05', '2020-11-06', 3.00, '2020-11-13', 3.00, 3.00, 0.00),
(2, 1, 'port_3', 'Investment', 'EPF / Employee Provident Fund', 'Sell / Withdraw', '322sz', '2020-11-07', '2020-11-11', '2020-11-01', 16.00, '2020-11-14', 0.00, 0.00, 3.00),
(3, 1, 'port_2', 'Investment', 'EPF / Employee Provident Fund', 'Sell / Withdraw', '44', '2020-11-06', '2020-11-12', '2020-11-07', 16.00, '2020-11-09', 4.00, 4.00, 8.00);

-- --------------------------------------------------------

--
-- Table structure for table `expences`
--

CREATE TABLE `expences` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expences`
--

INSERT INTO `expences` (`id`, `name`) VALUES
(1, 'Verious Bills'),
(2, 'Business Expences'),
(3, 'Monthly EMI / Loan'),
(4, 'Monthly Charges'),
(5, 'Insurance'),
(6, 'investment'),
(7, 'Servicing Cost'),
(8, 'Shopping Cost'),
(9, 'Verious Taxes'),
(10, 'Utilities Bill'),
(11, 'Vacation Expences'),
(12, 'Verious Wages\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `fd_investment`
--

CREATE TABLE `fd_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `fd_type` varchar(400) NOT NULL,
  `fd_account_no` text NOT NULL,
  `fd_transaction_type` varchar(200) NOT NULL,
  `fd_interest_payout` varchar(200) NOT NULL,
  `fd_interest_payment` varchar(300) NOT NULL,
  `fd_interest_rate` decimal(12,2) NOT NULL,
  `fd_interest_type` varchar(300) NOT NULL,
  `fd_maturity_amt` decimal(12,2) NOT NULL,
  `fd_maturity_date` date NOT NULL,
  `fd_start_date` date NOT NULL,
  `fd_amt_invested` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fd_investment`
--

INSERT INTO `fd_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `fd_type`, `fd_account_no`, `fd_transaction_type`, `fd_interest_payout`, `fd_interest_payment`, `fd_interest_rate`, `fd_interest_type`, `fd_maturity_amt`, `fd_maturity_date`, `fd_start_date`, `fd_amt_invested`) VALUES
(1, 1, 'port_3', 'Investment', 'FD / Fixed Deposit', 'Bank', '34s', 'Sell', 'Cumulative', 'Monthly', 33.00, 'Simple', 224.00, '2020-11-06', '2020-11-09', 33.00),
(2, 1, 'port_2', 'Investment', 'FD / Fixed Deposit', 'Post Office', 'dg4', 'Buy', 'Payout', 'Monthly', 33.00, 'Simple', 33.00, '2020-10-31', '2020-11-12', 44.00);

-- --------------------------------------------------------

--
-- Table structure for table `gold`
--

CREATE TABLE `gold` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gold`
--

INSERT INTO `gold` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'Gold', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'Gold', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `health_insurance`
--

CREATE TABLE `health_insurance` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `insurance_company_name` varchar(800) NOT NULL,
  `insurance_policy_name` varchar(1024) NOT NULL,
  `insurance_sum_assured` decimal(12,2) NOT NULL,
  `insurance_no_claim` decimal(12,2) NOT NULL,
  `insurance_policy_no` text NOT NULL,
  `insurance_value` decimal(13,2) NOT NULL,
  `insurance_policy_start_date` date NOT NULL,
  `insurance_maturity_date` date NOT NULL,
  `insurance_maturity_benifits` varchar(200) NOT NULL,
  `insurance_lockin_period` date NOT NULL,
  `insurance_premium_date` date NOT NULL,
  `insurance_premium_amt` decimal(13,2) NOT NULL,
  `insurance_frequency` varchar(300) NOT NULL,
  `insurance_nextpremium_date` date NOT NULL,
  `insurance_premium_tenure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_insurance`
--

INSERT INTO `health_insurance` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `insurance_company_name`, `insurance_policy_name`, `insurance_sum_assured`, `insurance_no_claim`, `insurance_policy_no`, `insurance_value`, `insurance_policy_start_date`, `insurance_maturity_date`, `insurance_maturity_benifits`, `insurance_lockin_period`, `insurance_premium_date`, `insurance_premium_amt`, `insurance_frequency`, `insurance_nextpremium_date`, `insurance_premium_tenure`) VALUES
(3, 1, 'port_2', 'Insurance', 'Health Insurance', 'testing', 'testing Policy name', 12.00, 12.00, '123', 123.00, '2020-10-15', '2020-10-16', 'Yes', '2020-10-14', '2020-10-08', 12.00, 'Half Yearly', '2020-10-08', 2),
(4, 1, 'port_2', 'Insurance', 'Health Insurance', 'testing', 'testing Policy name', 11.00, 11.00, '1222', 12.00, '2020-10-08', '2020-10-23', 'Yes', '2020-10-01', '2020-10-10', 12.00, 'Yearly', '2020-10-14', 13),
(5, 1, 'port_3', 'Insurance', 'Health Insurance', 'testing', 'testing Policy name', 2344.00, 4556.00, '12334456', 1200.00, '2021-05-13', '2021-05-14', 'Yes', '2021-05-13', '2021-05-13', 2334.00, 'Monthly', '2021-05-13', 3455);

-- --------------------------------------------------------

--
-- Table structure for table `home_insurance`
--

CREATE TABLE `home_insurance` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `insurance_company_name` varchar(800) NOT NULL,
  `insurance_policy_name` varchar(1024) NOT NULL,
  `insurance_policy_no` text NOT NULL,
  `insurance_value` decimal(13,2) NOT NULL,
  `insurance_policy_start_date` date NOT NULL,
  `insurance_maturity_date` date NOT NULL,
  `insurance_maturity_benifits` varchar(200) NOT NULL,
  `insurance_lockin_period` date NOT NULL,
  `insurance_premium_date` date NOT NULL,
  `insurance_premium_amt` decimal(13,2) NOT NULL,
  `insurance_frequency` varchar(300) NOT NULL,
  `insurance_nextpremium_date` date NOT NULL,
  `insurance_premium_tenure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_insurance`
--

INSERT INTO `home_insurance` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `insurance_company_name`, `insurance_policy_name`, `insurance_policy_no`, `insurance_value`, `insurance_policy_start_date`, `insurance_maturity_date`, `insurance_maturity_benifits`, `insurance_lockin_period`, `insurance_premium_date`, `insurance_premium_amt`, `insurance_frequency`, `insurance_nextpremium_date`, `insurance_premium_tenure`) VALUES
(2, 1, 'port_3', 'Insurance', 'Home Insurance', 'testing', 'testing', '12234', 12.00, '2020-10-06', '2020-10-09', 'Yes', '2020-10-08', '2020-10-23', 55.00, 'Quarterly', '2020-10-19', 66),
(3, 1, 'port_2', 'Insurance', 'Home Insurance', 'testing', 'ploicy', '112', 12.00, '2020-10-10', '2020-10-20', 'No', '2020-10-07', '2020-10-17', 12.00, 'Quarterly', '2020-09-30', 12);

-- --------------------------------------------------------

--
-- Table structure for table `home_loan`
--

CREATE TABLE `home_loan` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `loan_bank_name` varchar(1024) NOT NULL,
  `loan_account_no` text NOT NULL,
  `loan_start_date` date NOT NULL,
  `loan_amount` decimal(13,2) NOT NULL,
  `loan_period` bigint(20) NOT NULL,
  `loan_end_date` date NOT NULL,
  `loan_emi_amt` decimal(13,2) NOT NULL,
  `loan_emi_date` date NOT NULL,
  `loan_total_emipaid` bigint(20) NOT NULL,
  `loan_processing_fees` decimal(13,2) NOT NULL,
  `loan_downpayment_amt` decimal(13,2) NOT NULL,
  `loan_balance_amt` decimal(13,2) NOT NULL,
  `loan_pre_emi_amt` decimal(13,2) NOT NULL,
  `loan_topup_amt` decimal(13,2) NOT NULL,
  `loan_Interest_rate_type` varchar(300) NOT NULL,
  `loan_fixed_rate_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'House', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'House', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `income_list`
--

CREATE TABLE `income_list` (
  `income_id` int(11) NOT NULL,
  `income_name` varchar(400) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income_list`
--

INSERT INTO `income_list` (`income_id`, `income_name`) VALUES
(1, 'Income From Affiliate'),
(2, 'Income From Bank Interest'),
(3, 'Income From Bonus'),
(4, 'Income From Business'),
(5, 'Income From Car Rent'),
(6, 'Income From Coaching'),
(7, 'Income From Consultancy'),
(8, 'Income From Gift'),
(9, 'Income From House Rent'),
(10, 'Income From Lottery'),
(11, 'Income From Overtime'),
(12, 'Income From Referral'),
(13, 'Income From Royalty'),
(14, 'Income From Salary'),
(15, 'Income From Share Trading'),
(16, 'Income From Leave Encashment'),
(17, 'Income From Part Tme Job');

-- --------------------------------------------------------

--
-- Table structure for table `index_tbl`
--

CREATE TABLE `index_tbl` (
  `id` int(11) NOT NULL,
  `index_name` text NOT NULL,
  `today_value` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `index_tbl`
--

INSERT INTO `index_tbl` (`id`, `index_name`, `today_value`, `cdate`) VALUES
(1, 'currency1', 'Today Price 1', '2021-01-22 09:15:31'),
(2, 'currency2', 'Today Price 2', '2021-01-22 09:15:31'),
(3, 'currency3', 'Today Price 3', '2021-01-22 09:15:31'),
(4, 'currency4', 'Today Price 4', '2021-01-22 09:15:31'),
(5, 'currency5', 'Today Price 5', '2021-01-22 09:15:31'),
(6, 'currency6', 'Today Price 6', '2021-01-22 09:15:31'),
(7, 'currency7', 'Today Price 7', '2021-01-22 09:15:31'),
(8, 'currency8', 'Today Price 8', '2021-01-22 09:15:31'),
(9, 'currency9', 'Today Price 9', '2021-01-22 09:15:31'),
(11, 'currency11', 'Today Price 11', '2021-01-22 09:15:31'),
(12, 'currency12', 'Today Price 12', '2021-01-22 09:15:31'),
(13, 'currency13', 'Today Price 13', '2021-01-22 09:15:31'),
(14, 'currency14', 'Today Price 14', '2021-01-22 09:15:31'),
(15, 'currency15', 'Today Price 15', '2021-01-22 09:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `jewellery`
--

CREATE TABLE `jewellery` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jewellery`
--

INSERT INTO `jewellery` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'Jewellery', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'Jewellery', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `kisanvikaspatra_investment`
--

CREATE TABLE `kisanvikaspatra_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `kisan_transaction_type` varchar(300) NOT NULL,
  `kisan_account_no` text NOT NULL,
  `kisan_start_date` date NOT NULL,
  `kisan_muturity_date` date NOT NULL,
  `kisan_lockin_period` date NOT NULL,
  `kisan_amt_invested` decimal(12,2) NOT NULL,
  `kisan_maturity_amt` decimal(12,2) NOT NULL,
  `kisan_interest_rate` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kisanvikaspatra_investment`
--

INSERT INTO `kisanvikaspatra_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `kisan_transaction_type`, `kisan_account_no`, `kisan_start_date`, `kisan_muturity_date`, `kisan_lockin_period`, `kisan_amt_invested`, `kisan_maturity_amt`, `kisan_interest_rate`) VALUES
(1, 1, 'port_3', 'Investment', 'KVP / Kishan Vikas Patra', 'Buy', 'sv3', '2020-11-07', '2020-11-10', '2020-11-03', 33.00, 3.00, 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `kisan_vikas_patra_int`
--

CREATE TABLE `kisan_vikas_patra_int` (
  `id` int(11) NOT NULL,
  `from_date` varchar(250) NOT NULL,
  `to_date` varchar(250) NOT NULL,
  `interest_rate` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `life_insurance_endowment`
--

CREATE TABLE `life_insurance_endowment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `insurance_company_name` varchar(800) NOT NULL,
  `insurance_policy_name` varchar(1024) NOT NULL,
  `insurance_sum_assured` decimal(12,2) NOT NULL,
  `insurance_policy_no` text NOT NULL,
  `insurance_policy_start_date` date NOT NULL,
  `insurance_maturity_date` date NOT NULL,
  `insurance_maturity_benifits` varchar(200) NOT NULL,
  `insurance_lockin_period` date NOT NULL,
  `insurance_premium_date` date NOT NULL,
  `insurance_premium_amt` decimal(13,2) NOT NULL,
  `insurance_frequency` varchar(300) NOT NULL,
  `insurance_nextpremium_date` date NOT NULL,
  `insurance_premium_tenure` int(11) NOT NULL,
  `insurance_bonus_accumulated` decimal(12,2) NOT NULL,
  `insurance_vasted_bonus` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `life_insurance_endowment`
--

INSERT INTO `life_insurance_endowment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `insurance_company_name`, `insurance_policy_name`, `insurance_sum_assured`, `insurance_policy_no`, `insurance_policy_start_date`, `insurance_maturity_date`, `insurance_maturity_benifits`, `insurance_lockin_period`, `insurance_premium_date`, `insurance_premium_amt`, `insurance_frequency`, `insurance_nextpremium_date`, `insurance_premium_tenure`, `insurance_bonus_accumulated`, `insurance_vasted_bonus`) VALUES
(3, 1, 'port_2', 'Insurance', 'Life Insurance (Endowment)', 'test Company', 'testing Policy name', 12.00, '21', '2020-10-08', '2020-10-08', 'Yes', '2020-10-14', '2020-10-06', 12.00, 'Quarterly', '2020-10-13', 12, 12.00, 12.00),
(4, 1, 'port_4', 'Insurance', 'Life Insurance (Endowment)', 'test Company', 'testing Policy name', 22.00, '22', '2020-10-10', '2020-10-11', 'Yes', '2020-10-19', '2020-10-02', 33.00, 'Yearly', '2020-10-17', 3, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `life_insurance_moneyback`
--

CREATE TABLE `life_insurance_moneyback` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `insurance_company_name` varchar(800) NOT NULL,
  `insurance_policy_name` varchar(1024) NOT NULL,
  `insurance_sum_assured` decimal(12,2) NOT NULL,
  `insurance_policy_no` text NOT NULL,
  `insurance_policy_start_date` date NOT NULL,
  `insurance_maturity_date` date NOT NULL,
  `insurance_maturity_benifits` varchar(200) NOT NULL,
  `insurance_lockin_period` date NOT NULL,
  `insurance_premium_date` date NOT NULL,
  `insurance_premium_amt` decimal(13,2) NOT NULL,
  `insurance_frequency` varchar(300) NOT NULL,
  `insurance_nextpremium_date` date NOT NULL,
  `insurance_premium_tenure` int(11) NOT NULL,
  `insurance_bonus_accumulated` decimal(12,2) NOT NULL,
  `insurance_vasted_bonus` decimal(12,2) NOT NULL,
  `insurance_moneyback_amt` decimal(12,3) NOT NULL,
  `insurance_moneyback_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `life_insurance_moneyback`
--

INSERT INTO `life_insurance_moneyback` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `insurance_company_name`, `insurance_policy_name`, `insurance_sum_assured`, `insurance_policy_no`, `insurance_policy_start_date`, `insurance_maturity_date`, `insurance_maturity_benifits`, `insurance_lockin_period`, `insurance_premium_date`, `insurance_premium_amt`, `insurance_frequency`, `insurance_nextpremium_date`, `insurance_premium_tenure`, `insurance_bonus_accumulated`, `insurance_vasted_bonus`, `insurance_moneyback_amt`, `insurance_moneyback_date`) VALUES
(4, 1, 'port_1', 'Insurance', 'Life Insurance (Money Back)', 'test Company', 'testing Policy name', 11.00, '111', '2020-10-14', '2020-10-07', 'No', '2020-10-13', '2020-10-03', 11.00, 'Yearly', '2020-10-17', 11, 1.00, 11.00, 11.000, '2020-10-19'),
(5, 1, 'port_1', 'Insurance', 'Life Insurance (Money Back)', 'test Company', 'testing Policy name', 23.00, '23', '2020-10-12', '2020-10-10', 'Yes', '2020-10-19', '2020-10-06', 22.00, 'Half Yearly', '2020-10-16', 22, 22.00, 22.00, 22.000, '2020-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `loan_floating_rate`
--

CREATE TABLE `loan_floating_rate` (
  `id` bigint(20) NOT NULL,
  `floating_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `floating_date_from` date NOT NULL,
  `floating_date_to` date NOT NULL,
  `loan_floating_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_floating_rate`
--

INSERT INTO `loan_floating_rate` (`id`, `floating_id`, `user_id`, `sub_assets_name`, `floating_date_from`, `floating_date_to`, `loan_floating_value`) VALUES
(5, 5, 1, 'Appliance Loan', '2020-10-15', '2020-10-10', 2.00),
(6, 6, 1, 'Appliance Loan', '2020-09-08', '2020-10-02', 4.00),
(7, 6, 1, 'Appliance Loan', '2020-10-01', '2020-10-02', 2.00),
(8, 6, 1, 'Appliance Loan', '2020-10-03', '2020-10-04', 6.00),
(9, 6, 1, 'Bike Loan', '2020-10-20', '2020-10-16', 6.00),
(10, 6, 1, 'Appliance Loan', '2020-10-02', '2020-10-03', 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `mortgage_loan`
--

CREATE TABLE `mortgage_loan` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `loan_bank_name` varchar(1024) NOT NULL,
  `loan_account_no` text NOT NULL,
  `loan_start_date` date NOT NULL,
  `loan_amount` decimal(13,2) NOT NULL,
  `loan_period` bigint(20) NOT NULL,
  `loan_end_date` date NOT NULL,
  `loan_emi_amt` decimal(13,2) NOT NULL,
  `loan_emi_date` date NOT NULL,
  `loan_total_emipaid` bigint(20) NOT NULL,
  `loan_processing_fees` decimal(13,2) NOT NULL,
  `loan_downpayment_amt` decimal(13,2) NOT NULL,
  `loan_balance_amt` decimal(13,2) NOT NULL,
  `loan_pre_emi_amt` decimal(13,2) NOT NULL,
  `loan_topup_amt` decimal(13,2) NOT NULL,
  `loan_Interest_rate_type` varchar(300) NOT NULL,
  `loan_fixed_rate_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mutual_fund_investment`
--

CREATE TABLE `mutual_fund_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(300) NOT NULL,
  `assets_name` varchar(300) NOT NULL,
  `sub_assets_name` varchar(300) NOT NULL,
  `mutual_company_name` varchar(1024) NOT NULL,
  `mutual_scheme` varchar(1024) NOT NULL,
  `mutual_folio_no` text NOT NULL,
  `mutual_transaction` varchar(300) NOT NULL,
  `mutual_type` varchar(300) NOT NULL,
  `mutual_sip_date` date NOT NULL,
  `mutual_date` date NOT NULL,
  `mutual_quantity` decimal(10,2) NOT NULL,
  `mutual_nav` varchar(800) NOT NULL,
  `amt_invested` decimal(13,2) NOT NULL,
  `mutual_stamp_charge` decimal(10,2) NOT NULL,
  `mutual_exit_load` decimal(10,2) NOT NULL,
  `mutual_advisor` varchar(300) NOT NULL,
  `current_value` decimal(12,2) NOT NULL,
  `overall_gain` decimal(12,2) NOT NULL,
  `gain_percentage` decimal(12,2) NOT NULL,
  `holding` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mutual_fund_investment`
--

INSERT INTO `mutual_fund_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `mutual_company_name`, `mutual_scheme`, `mutual_folio_no`, `mutual_transaction`, `mutual_type`, `mutual_sip_date`, `mutual_date`, `mutual_quantity`, `mutual_nav`, `amt_invested`, `mutual_stamp_charge`, `mutual_exit_load`, `mutual_advisor`, `current_value`, `overall_gain`, `gain_percentage`, `holding`) VALUES
(2, 1, 'port_2', 'Investment', 'MF / Mutual Fund', 'BARODA MUTUAL FUND', 'ADITYA BIRLA SUN LIFE ARBITRAGE FUND - DIVIDEND - DIRECT PLAN', 'testing', 'Sell / Redeem', 'Debt', '2020-11-08', '2020-11-02', 22.00, '44', 44.00, 44.00, 0.00, 'Regular', 3080.00, 3036.00, 6325.00, 78.57),
(3, 1, 'port_2', 'Investment', 'MF / Mutual Fund', 'ESSEL MUTUAL FUND', 'ADITYA BIRLA SUN LIFE ASSET ALLOCATOR MULTI MANAGER FOF SCHEME - REGULAR PLAN - GROWTH OPTION', 'testing', 'Sell / Redeem', 'Equity', '2020-11-13', '2020-11-14', 6.00, '6', 4.00, 4.00, 4.00, 'Regular', 840.00, 836.00, 1741.00, 21.43),
(4, 2, 'aaa', 'Investment', 'MF / Mutual Fund', 'BARODA MUTUAL FUND', 'ADITYA BIRLA SUN LIFE ACTIVE DEBT MULTI MANAGER FOF SCHEME - REGULAR PLAN - DIVIDEND OPTION', 'testing', 'Buy / Purchase', 'Equity', '2020-11-03', '2020-11-01', 1.00, '10', 10.00, 0.00, 0.00, 'Direct', 140.00, 130.00, 1300.00, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `mutual_fund_name`
--

CREATE TABLE `mutual_fund_name` (
  `id` int(11) NOT NULL,
  `mutual_fund_name` varchar(1024) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mutual_fund_name`
--

INSERT INTO `mutual_fund_name` (`id`, `mutual_fund_name`, `cdate`) VALUES
(1, 'Test Mutual Fund Company', '2021-01-06 08:44:24'),
(2, 'ADITYA BIRLA SUN LIFE MUTUAL FUND', '2021-01-06 08:44:24'),
(3, 'AXIS MUTUAL FUND', '2021-01-06 08:44:24'),
(4, 'BARODA MUTUAL FUND', '2021-01-06 08:44:24'),
(5, 'BOI AXA MUTUAL FUND', '2021-01-06 08:44:24'),
(6, 'CANARA ROBECO MUTUAL FUND', '2021-01-06 08:44:24'),
(7, 'DSP MUTUAL FUND', '2021-01-06 08:44:24'),
(8, 'EDELWEISS MUTUAL FUND', '2021-01-06 08:44:24'),
(9, 'ESSEL MUTUAL FUND', '2021-01-06 08:44:24'),
(10, 'FRANKLIN TEMPLETON MUTUAL FUND', '2021-01-06 08:44:24'),
(11, 'HDFC MUTUAL FUND', '2021-01-06 08:44:24'),
(12, 'HSBC MUTUAL FUND', '2021-01-06 08:44:24'),
(13, 'ICICI PRUDENTIAL MUTUAL FUND', '2021-01-06 08:44:24'),
(14, 'IDBI MUTUAL FUND', '2021-01-06 08:44:24'),
(15, 'IDFC MUTUAL FUND', '2021-01-06 08:44:24'),
(16, 'INVESCO MUTUAL FUND', '2021-01-06 08:44:24'),
(17, 'ITI MUTUAL FUND', '2021-01-06 08:44:24'),
(18, 'JM FINANCIAL MUTUAL FUND', '2021-01-06 08:44:24'),
(19, 'KOTAK MAHINDRA MUTUAL FUND', '2021-01-06 08:44:24'),
(20, 'L&T MUTUAL FUND', '2021-01-06 08:44:24'),
(21, 'LIC MUTUAL FUND', '2021-01-06 08:44:24'),
(22, 'MAHINDRA MANULIFE MUTUAL FUND', '2021-01-06 08:44:24'),
(23, 'MIRAE ASSET MUTUAL FUND', '2021-01-06 08:44:24'),
(24, 'MOTILAL OSWAL MUTUAL FUND', '2021-01-06 08:44:24'),
(25, 'NIPPON INDIA MUTUAL FUND', '2021-01-06 08:44:24'),
(26, 'PGIM INDIA MUTUAL FUND', '2021-01-06 08:44:24'),
(27, 'PPFAS MUTUAL FUND', '2021-01-06 08:44:24'),
(28, 'QUANT MUTUAL FUND', '2021-01-06 08:44:24'),
(29, 'SBI MUTUAL FUND', '2021-01-06 08:44:24'),
(30, 'SHRIRAM MUTUAL FUND', '2021-01-06 08:44:24'),
(31, 'SUNDARAM MUTUAL FUND', '2021-01-06 08:44:24'),
(32, 'TATA MUTUAL FUND', '2021-01-06 08:44:24'),
(33, 'TAURUS MUTUAL FUND', '2021-01-06 08:44:24'),
(34, 'TAURUS MUTUAL FUND', '2021-01-06 08:44:24'),
(35, 'UNION MUTUAL FUND', '2021-01-06 08:44:24'),
(36, 'UTI MUTUAL FUND', '2021-01-06 08:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `mutual_scheme`
--

CREATE TABLE `mutual_scheme` (
  `id` bigint(20) NOT NULL,
  `mutual_scheme` text NOT NULL,
  `today_nav` varchar(250) NOT NULL,
  `previous_day_price` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mutual_scheme`
--

INSERT INTO `mutual_scheme` (`id`, `mutual_scheme`, `today_nav`, `previous_day_price`, `cdate`) VALUES
(2, 'ADITYA BIRLA SUN LIFE ACTIVE DEBT MULTI MANAGER FOF SCHEME - DIRECT PLAN - DIVIDEND OPTION', '140', '', '2021-01-06 08:14:02'),
(3, 'ADITYA BIRLA SUN LIFE ACTIVE DEBT MULTI MANAGER FOF SCHEME - DIRECT PLAN - GROWTH OPTION', '140', '', '2021-01-06 08:14:02'),
(4, 'ADITYA BIRLA SUN LIFE ACTIVE DEBT MULTI MANAGER FOF SCHEME - REGULAR PLAN - DIVIDEND OPTION', '140', '', '2021-01-06 08:14:02'),
(5, 'ADITYA BIRLA SUN LIFE ACTIVE DEBT MULTI MANAGER FOF SCHEME - REGULAR PLAN - GROWTH OPTION', '140', '', '2021-01-06 08:14:02'),
(6, 'ADITYA BIRLA SUN LIFE ARBITRAGE FUND - DIVIDEND - DIRECT PLAN', '140', '', '2021-01-06 08:14:02'),
(7, 'ADITYA BIRLA SUN LIFE ARBITRAGE FUND - GROWTH - DIRECT PLAN', '140', '', '2021-01-06 08:14:02'),
(8, 'ADITYA BIRLA SUN LIFE ARBITRAGE FUND - REGULAR PLAN - GROWTH', '140', '', '2021-01-06 08:14:02'),
(9, 'ADITYA BIRLA SUN LIFE ARBITRAGE FUND DIVIDEND REGULAR PLAN', '140', '', '2021-01-06 08:14:02'),
(10, 'ADITYA BIRLA SUN LIFE ASSET ALLOCATOR MULTI MANAGER FOF SCHEME - DIRECT PLAN - DIVIDEND OPTION', '140', '', '2021-01-06 08:14:02'),
(11, 'ADITYA BIRLA SUN LIFE ASSET ALLOCATOR MULTI MANAGER FOF SCHEME - DIRECT PLAN - GROWTH OPTION', '140', '', '2021-01-06 08:14:02'),
(12, 'ADITYA BIRLA SUN LIFE ASSET ALLOCATOR MULTI MANAGER FOF SCHEME - REGULAR PLAN - DIVIDEND OPTION', '140', '', '2021-01-06 08:14:02'),
(13, 'ADITYA BIRLA SUN LIFE ASSET ALLOCATOR MULTI MANAGER FOF SCHEME - REGULAR PLAN - GROWTH OPTION', '140', '', '2021-01-06 08:14:02'),
(14, 'ADITYA BIRLA SUN LIFE BAL BHAVISHYA YOJNA WEALTH PLAN DIRECT DIVIDEND', '140', '', '2021-01-06 08:14:02'),
(15, 'ADITYA BIRLA SUN LIFE BAL BHAVISHYA YOJNA WEALTH PLAN DIRECT GROWTH', '140', '', '2021-01-06 08:14:02'),
(16, 'ADITYA BIRLA SUN LIFE BAL BHAVISHYA YOJNA WEALTH PLAN REGULAR DIVIDEND', '140', '', '2021-01-06 08:14:02'),
(17, 'ADITYA BIRLA SUN LIFE BAL BHAVISHYA YOJNA WEALTH PLAN REGULAR GROWTH', '140', '', '2021-01-06 08:14:02'),
(18, 'ADITYA BIRLA SUN LIFE BALANCED ADVANTAGE FUND - DIRECT PLAN - DIVIDEND OPTION', '140', '', '2021-01-06 08:14:02'),
(19, 'ADITYA BIRLA SUN LIFE BALANCED ADVANTAGE FUND - DIRECT PLAN - GROWTH OPTION', '140', '', '2021-01-06 08:14:02'),
(20, 'ADITYA BIRLA SUN LIFE BALANCED ADVANTAGE FUND - REGULAR PLAN - DIVIDEND OPTION', '140', '', '2021-01-06 08:14:02'),
(21, 'ADITYA BIRLA SUN LIFE BALANCED ADVANTAGE FUND - REGULAR PLAN - GROWTH OPTION', '140', '', '2021-01-06 08:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `national_saving_certificate_int`
--

CREATE TABLE `national_saving_certificate_int` (
  `id` int(11) NOT NULL,
  `from_date` varchar(250) NOT NULL,
  `to_date` varchar(250) NOT NULL,
  `interest_rate` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ncd_investment`
--

CREATE TABLE `ncd_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `ncd_type` varchar(300) NOT NULL,
  `ncd_name` varchar(1024) NOT NULL,
  `ncd_transaction_type` varchar(300) NOT NULL,
  `ncd_date` date NOT NULL,
  `ncd_purchase_price` decimal(12,2) NOT NULL,
  `ncd_quantity` decimal(12,2) NOT NULL,
  `amt_invested` decimal(12,2) NOT NULL,
  `ncd_interest_payout` varchar(300) NOT NULL,
  `ncd_interest_rate` decimal(12,2) NOT NULL,
  `ncd_interest_payable` varchar(300) NOT NULL,
  `ncd_maturity_date` date NOT NULL,
  `ncd_locking_period` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ncd_investment`
--

INSERT INTO `ncd_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `ncd_type`, `ncd_name`, `ncd_transaction_type`, `ncd_date`, `ncd_purchase_price`, `ncd_quantity`, `amt_invested`, `ncd_interest_payout`, `ncd_interest_rate`, `ncd_interest_payable`, `ncd_maturity_date`, `ncd_locking_period`) VALUES
(1, 1, 'port_3', 'Investment', 'NCD / Debenture', 'Non Convertible Debenture', 'testing', 'Buy', '2020-11-10', 33.00, 33.00, 33.00, 'Cumulative', 33.00, 'Half Yearly', '2020-11-12', '2020-11-04');

-- --------------------------------------------------------

--
-- Table structure for table `new_pension_sys_nav`
--

CREATE TABLE `new_pension_sys_nav` (
  `id` int(11) NOT NULL,
  `scheme_name` text NOT NULL,
  `today_nav` varchar(250) NOT NULL,
  `today_date` varchar(200) NOT NULL,
  `previous_day_price` double(10,2) NOT NULL,
  `yesterday_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `non_convertible_d_ltp`
--

CREATE TABLE `non_convertible_d_ltp` (
  `id` int(11) NOT NULL,
  `scheme_name` varchar(200) NOT NULL,
  `today_nav` varchar(250) NOT NULL,
  `previous_day_price` text NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nps_investment`
--

CREATE TABLE `nps_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `nps_opening_date` date NOT NULL,
  `nps_type` varchar(400) NOT NULL,
  `nps_pran_no` bigint(20) NOT NULL,
  `nps_scheme` text NOT NULL,
  `nps_transaction_type` varchar(400) NOT NULL,
  `nps_date` date NOT NULL,
  `nps_qty` decimal(12,2) NOT NULL,
  `nps_purchase_price` decimal(12,2) NOT NULL,
  `amt_invested` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nps_investment`
--

INSERT INTO `nps_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `nps_opening_date`, `nps_type`, `nps_pran_no`, `nps_scheme`, `nps_transaction_type`, `nps_date`, `nps_qty`, `nps_purchase_price`, `amt_invested`) VALUES
(1, 1, 'port_2', 'Investment', 'NPS / National Pension System', '2020-11-05', 'Tier I', 34, 'UTI RETIREMENT SOLUTIONS PENSION FUND SCHEME G - TIER I', 'Buy / Contribution', '2020-11-18', 33.00, 3.00, 3.00),
(2, 1, 'port_3', 'Investment', 'NPS / National Pension System', '2020-11-04', 'Tier II', 32, 'UTI RETIREMENT SOLUTIONS PENSION FUND SCHEME G - TIER I', 'Sell / withdrawel', '2020-11-02', 4.00, 4.00, 4.00),
(3, 1, 'port_3', 'Investment', 'NPS / National Pension System', '2020-11-13', 'Tier II', 33, 'UTI RETIREMENT SOLUTIONS PENSION FUND SCHEME A - TIER II', 'Sell / withdrawel', '2020-11-05', 3.00, 3.00, 3.00),
(4, 1, 'port_1', 'Investment', 'NPS / National Pension System', '2020-12-04', 'Tier II', 0, 'HDFC PENSION MANAGEMENT COMPANY LIMITED SCHEME E - TIER II', 'Buy / Contribution', '2020-12-03', 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `nps_scheme`
--

CREATE TABLE `nps_scheme` (
  `id` bigint(20) NOT NULL,
  `scheme_name` text NOT NULL,
  `today_nav` varchar(250) NOT NULL,
  `previous_day_price` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nps_scheme`
--

INSERT INTO `nps_scheme` (`id`, `scheme_name`, `today_nav`, `previous_day_price`, `cdate`) VALUES
(2, 'BIRLA SUN LIFE PENSION SCHEME E - TIER I', '200', '150', '2021-01-05 12:51:31'),
(3, 'BIRLA SUN LIFE PENSION SCHEME C - TIER I', '', '', '2021-01-05 12:51:31'),
(4, 'BIRLA SUN LIFE PENSION SCHEME G - TIER I', '', '', '2021-01-05 12:51:31'),
(5, 'BIRLA SUN LIFE PENSION SCHEME A - TIER I', '', '', '2021-01-05 12:51:31'),
(6, 'BIRLA SUN LIFE PENSION SCHEME E - TIER II', '', '', '2021-01-05 12:51:31'),
(7, 'BIRLA SUN LIFE PENSION SCHEME C - TIER II', '', '', '2021-01-05 12:51:31'),
(8, 'BIRLA SUN LIFE PENSION SCHEME G - TIER II', '', '', '2021-01-05 12:51:31'),
(9, 'BIRLA SUN LIFE PENSION SCHEME A - TIER II', '', '', '2021-01-05 12:51:31'),
(10, 'ADITYA BIRLA SUN LIFE PENSION FUND SCHEME TAX SAVER TIER II', '', '', '2021-01-05 12:51:31'),
(11, 'HDFC PENSION MANAGEMENT COMPANY LIMITED SCHEME E - TIER I', '', '', '2021-01-05 12:51:31'),
(12, 'HDFC PENSION MANAGEMENT COMPANY LIMITED SCHEME C - TIER I', '', '', '2021-01-05 12:51:31'),
(13, 'HDFC PENSION MANAGEMENT COMPANY LIMITED SCHEME G - TIER I', '', '', '2021-01-05 12:51:31'),
(14, 'HDFC PENSION MANAGEMENT COMPANY LIMITED SCHEME E - TIER II', '', '', '2021-01-05 12:51:31'),
(15, 'HDFC PENSION MANAGEMENT COMPANY LIMITED SCHEME C - TIER II', '', '', '2021-01-05 12:51:31'),
(16, 'HDFC PENSION MANAGEMENT COMPANY LIMITED SCHEME G - TIER II', '', '', '2021-01-05 12:51:31'),
(17, 'NPS TRUST A/C-HDFC PENSION MANAGEMENT COMPANY LIMITED SCHEME - NPS LITE SCHEME - GOVT. PATTERN', '', '', '2021-01-05 12:51:31'),
(18, 'HDFC PENSION MANAGEMENT COMPANY LIMITED SCHEME A - TIER I', '', '', '2021-01-05 12:51:31'),
(19, 'HDFC PENSION MANAGEMENT COMPANY LIMITED SCHEME A - TIER II', '', '', '2021-01-05 12:51:31'),
(20, 'NPS TRUST A/C-HDFC PENSION MANAGEMENT COMPANY LTD SCHEME TAX SAVER TIER II', '', '', '2021-01-05 12:51:31'),
(21, 'ICICI PRUDENTIAL PENSION FUND SCHEME E - TIER I', '', '', '2021-01-05 12:51:31'),
(22, 'ICICI PRUDENTIAL PENSION FUND SCHEME C - TIER I', '', '', '2021-01-05 12:51:31'),
(23, 'ICICI PRUDENTIAL PENSION FUND SCHEME G - TIER I', '', '', '2021-01-05 12:51:31'),
(24, 'ICICI PRUDENTIAL PENSION FUND SCHEME E - TIER II', '', '', '2021-01-05 12:51:31'),
(25, 'ICICI PRUDENTIAL PENSION FUND SCHEME C - TIER II', '', '', '2021-01-05 12:51:31'),
(26, 'ICICI PRUDENTIAL PENSION FUND SCHEME G - TIER II', '', '', '2021-01-05 12:51:31'),
(27, 'NPS TRUST A/C-ICICI PRUDENTIAL PENSION FUNDS MANAGEMENT COMPANY LIMITED- NPS LITE SCHEME - GOVT. PATTERN', '', '', '2021-01-05 12:51:31'),
(28, 'ICICI PRUDENTIAL PENSION FUND SCHEME A - TIER I', '', '', '2021-01-05 12:51:31'),
(29, 'ICICI PRUDENTIAL PENSION FUND SCHEME A - TIER II', '', '', '2021-01-05 12:51:31'),
(30, 'ICICI PRUDENTIAL PENSION FUNDS SCHEME TAX SAVER TIER II', '', '', '2021-01-05 12:51:31'),
(31, 'KOTAK PENSION FUND SCHEME E - TIER I', '', '', '2021-01-05 12:51:31'),
(32, 'KOTAK PENSION FUND SCHEME C - TIER I', '', '', '2021-01-05 12:51:31'),
(33, 'KOTAK PENSION FUND SCHEME G - TIER I', '', '', '2021-01-05 12:51:31'),
(34, 'KOTAK PENSION FUND SCHEME E - TIER II', '', '', '2021-01-05 12:51:31'),
(35, 'KOTAK PENSION FUND SCHEME C - TIER II', '', '', '2021-01-05 12:51:31'),
(36, 'KOTAK PENSION FUND SCHEME G - TIER II', '', '', '2021-01-05 12:51:31'),
(37, 'NPS TRUST A/C-KOTAK MAHINDRA PENSION FUND LIMITED- NPS LITE SCHEME - GOVT. PATTERN', '', '', '2021-01-05 12:51:31'),
(38, 'KOTAK PENSION FUND SCHEME A - TIER I', '', '', '2021-01-05 12:51:31'),
(39, 'KOTAK PENSION FUND SCHEME A - TIER II', '', '', '2021-01-05 12:51:31'),
(40, 'NPS TRUST A/C-KOTAK MAHINDRA PENSION FUND SCHEME TAX SAVER TIER II', '', '', '2021-01-05 12:51:31'),
(41, 'LIC PENSION FUND SCHEME - CENTRAL GOVT', '', '', '2021-01-05 12:51:31'),
(42, 'LIC PENSION FUND SCHEME - STATE GOVT', '', '', '2021-01-05 12:51:31'),
(43, 'NPS TRUST A/C-LIC PENSION FUND LIMITED- NPS LITE SCHEME - GOVT. PATTERN', '', '', '2021-01-05 12:51:31'),
(44, 'LIC PENSION FUND LIMITED SCHEME - CORPORATE-CG', '', '', '2021-01-05 12:51:31'),
(45, 'LIC PENSION FUND SCHEME E - TIER I', '', '', '2021-01-05 12:51:31'),
(46, 'LIC PENSION FUND SCHEME C - TIER I', '', '', '2021-01-05 12:51:31'),
(47, 'LIC PENSION FUND SCHEME G - TIER I', '', '', '2021-01-05 12:51:31'),
(48, 'LIC PENSION FUND SCHEME E - TIER II', '', '', '2021-01-05 12:51:31'),
(49, 'LIC PENSION FUND SCHEME C - TIER II', '', '', '2021-01-05 12:51:31'),
(50, 'LIC PENSION FUND SCHEME G - TIER II', '', '', '2021-01-05 12:51:31'),
(51, 'NPS TRUST - A/C LIC PENSION FUND SCHEME - ATAL PENSION YOJANA (APY)', '', '', '2021-01-05 12:51:31'),
(52, 'LIC PENSION FUND SCHEME A - TIER I', '', '', '2021-01-05 12:51:31'),
(53, 'LIC PENSION FUND SCHEME A - TIER II', '', '', '2021-01-05 12:51:31'),
(54, 'NPS TRUST - A/C LIC PENSION FUND SCHEME TAX SAVER TIER II', '', '', '2021-01-05 12:51:31'),
(55, 'SBI PENSION FUND SCHEME - CENTRAL GOVT', '', '', '2021-01-05 12:51:31'),
(56, 'SBI PENSION FUND SCHEME - STATE GOVT', '', '', '2021-01-05 12:51:31'),
(57, 'SBI PENSION FUND SCHEME E - TIER I', '', '', '2021-01-05 12:51:31'),
(58, 'SBI PENSION FUND SCHEME C - TIER I', '', '', '2021-01-05 12:51:31'),
(59, 'SBI PENSION FUND SCHEME G - TIER I', '', '', '2021-01-05 12:51:31'),
(60, 'SBI PENSION FUND SCHEME E - TIER II', '', '', '2021-01-05 12:51:31'),
(61, 'SBI PENSION FUND SCHEME C - TIER II', '', '', '2021-01-05 12:51:31'),
(62, 'SBI PENSION FUND SCHEME G - TIER II', '', '', '2021-01-05 12:51:31'),
(63, 'NPS TRUST A/C-SBI PENSION FUNDS PRIVATE LIMITED- NPS LITE SCHEME - GOVT. PATTERN', '', '', '2021-01-05 12:51:31'),
(64, 'SBI PENSION FUNDS PVT LTD SCHEME - CORPORATE-CG', '', '', '2021-01-05 12:51:31'),
(65, 'NPS TRUST - A/C SBI PENSION FUND SCHEME - ATAL PENSION YOJANA (APY)', '', '', '2021-01-05 12:51:31'),
(66, 'SBI PENSION FUND SCHEME A - TIER I', '', '', '2021-01-05 12:51:31'),
(67, 'SBI PENSION FUND SCHEME A - TIER II', '', '', '2021-01-05 12:51:31'),
(68, 'NPS TRUST A/C-SBI PENSION FUND SCHEME TAX SAVER TIER II', '', '', '2021-01-05 12:51:31'),
(69, 'UTI RETIREMENT SOLUTIONS PENSION FUND SCHEME- CENTRAL GOVT', '', '', '2021-01-05 12:51:31'),
(70, 'UTI RETIREMENT SOLUTIONS PENSION FUND SCHEME- STATE GOVT', '', '', '2021-01-05 12:51:31'),
(71, 'UTI RETIREMENT SOLUTIONS PENSION FUND SCHEME E - TIER I', '', '', '2021-01-05 12:51:31'),
(72, 'UTI RETIREMENT SOLUTIONS PENSION FUND SCHEME C - TIER I', '', '', '2021-01-05 12:51:31'),
(73, 'UTI RETIREMENT SOLUTIONS PENSION FUND SCHEME G - TIER I', '', '', '2021-01-05 12:51:31'),
(74, 'UTI RETIREMENT SOLUTIONS SCHEME E - TIER II', '', '', '2021-01-05 12:51:31'),
(75, 'UTI RETIREMENT SOLUTIONS SCHEME C - TIER II', '', '', '2021-01-05 12:51:31'),
(76, 'UTI RETIREMENT SOLUTIONS SCHEME G - TIER II', '', '', '2021-01-05 12:51:31'),
(77, 'NPS TRUST A/C-UTI RETIREMENT SOLUTIONS LIMITED- NPS LITE SCHEME - GOVT. PATTERN', '', '', '2021-01-05 12:51:31'),
(78, 'UTI RETIREMENT SOLUTIONS PENSION FUND SCHEME - CORPORATE-CG', '', '', '2021-01-05 12:51:31'),
(79, 'NPS TRUST - A/C UTI RETIREMENT SOLUTIONS LTD. SCHEME - ATAL PENSION YOJANA (APY)', '', '', '2021-01-05 12:51:31'),
(80, 'UTI RETIREMENT SOLUTIONS PENSION FUND SCHEME A - TIER I', '', '', '2021-01-05 12:51:31'),
(81, 'UTI RETIREMENT SOLUTIONS PENSION FUND SCHEME A - TIER II', '', '', '2021-01-05 12:51:31'),
(82, 'NPS TRUST A/C-UTI RETIREMENT SOLUTIONS PENSION FUND SCHEME TAX SAVER TIER II', '', '', '2021-01-05 12:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `nsc_investment`
--

CREATE TABLE `nsc_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `nsc_transaction_type` varchar(300) NOT NULL,
  `nsc_account_no` text NOT NULL,
  `nsc_type` varchar(300) NOT NULL,
  `nsc_opening_date` date NOT NULL,
  `nsc_lockin_period` date NOT NULL,
  `nsc_amt_invested` decimal(12,2) NOT NULL,
  `nsc_interest_rate` decimal(12,2) NOT NULL,
  `nsc_maturity_date` date NOT NULL,
  `nsc_maturity_amt` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nsc_investment`
--

INSERT INTO `nsc_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `nsc_transaction_type`, `nsc_account_no`, `nsc_type`, `nsc_opening_date`, `nsc_lockin_period`, `nsc_amt_invested`, `nsc_interest_rate`, `nsc_maturity_date`, `nsc_maturity_amt`) VALUES
(1, 1, 'port_2', 'Investment', 'NSC / National Saving Certificate', 'Buy', 'ddg3', 'NSC 8', '2020-11-14', '2020-11-03', 22.00, 22.00, '2020-11-17', 22.00);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `paymode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notify_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `user_id`, `paymode`, `txn_id`, `paid_amount`, `currency_code`, `payment_status`, `time`, `date_time`, `notify_status`) VALUES
(1, 1, 'Paytm', '20201210111212800110168069002153115', 1178.82, 'INR', 'TXN_SUCCESS', '2020-12-10 20:00:49.0', '2020-12-29 04:50:20', 0),
(2, 1, 'Razorpay', 'pay_GDK3kQicRE0Exf', 1178.82, 'INR', 'TXN_SUCCESS', '2020-12-15', '2020-12-29 04:50:20', 0),
(3, 463891608539227, 'Paytm', '20201218111212800110168197602192976', 1178.82, 'INR', 'TXN_SUCCESS', '2020-12-18 14:47:55.0', '2020-12-29 04:50:20', 1),
(4, 509701608448367, 'Razorpay', 'pay_GFCuxuu9EoGT6O', 1178.82, 'INR', 'TXN_SUCCESS', '2020-12-20', '2020-12-29 04:50:20', 1),
(5, 141011614341836, 'Razorpay', 'pay_GgCQuOQTHmm4l3', 1178.82, 'INR', 'TXN_SUCCESS', '2021-02-26', '2021-02-26 05:17:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `personal_loan`
--

CREATE TABLE `personal_loan` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `loan_bank_name` varchar(1024) NOT NULL,
  `loan_account_no` text NOT NULL,
  `loan_start_date` date NOT NULL,
  `loan_amount` decimal(13,2) NOT NULL,
  `loan_period` bigint(20) NOT NULL,
  `loan_end_date` date NOT NULL,
  `loan_emi_amt` decimal(13,2) NOT NULL,
  `loan_emi_date` date NOT NULL,
  `loan_total_emipaid` bigint(20) NOT NULL,
  `loan_processing_fees` decimal(13,2) NOT NULL,
  `loan_downpayment_amt` decimal(13,2) NOT NULL,
  `loan_balance_amt` decimal(13,2) NOT NULL,
  `loan_pre_emi_amt` decimal(13,2) NOT NULL,
  `loan_topup_amt` decimal(13,2) NOT NULL,
  `loan_Interest_rate_type` varchar(300) NOT NULL,
  `loan_fixed_rate_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `platinum`
--

CREATE TABLE `platinum` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `platinum`
--

INSERT INTO `platinum` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'Platinum', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'Platinum', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(1024) NOT NULL,
  `port_date` varchar(300) NOT NULL,
  `full_name` varchar(1024) NOT NULL,
  `port_group` varchar(1024) NOT NULL,
  `port_gender` varchar(300) NOT NULL,
  `pran` varchar(500) NOT NULL,
  `einsurance_no` bigint(20) NOT NULL,
  `port_address` text NOT NULL,
  `port_city` varchar(400) NOT NULL,
  `port_country` varchar(500) NOT NULL,
  `pin_code` int(11) NOT NULL,
  `pan` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `user_id`, `portfolio_name`, `port_date`, `full_name`, `port_group`, `port_gender`, `pran`, `einsurance_no`, `port_address`, `port_city`, `port_country`, `pin_code`, `pan`) VALUES
(1, 1, 'port_1', '2020-09-28', 'my', 'group_1', 'Female', '1234567', 12347, 'my full address hero', 'kolapur', 'india', 123, 1234567),
(2, 1, 'port_2', '2020-10-07', 'my new', 'group_1', 'Female', '11234', 123, 'hello address mew', 'kolapur', 'pakist', 12, 12),
(3, 1, 'port_3', '2020-09-29', 'my_port_group2', 'group_2', 'Male', '123456', 1234567, 'hello its ur address', 'kolapur', 'india', 482002, 123456),
(4, 1, 'port_4', '2020-09-30', 'port_4', 'Group_3', 'Male', '123456', 1324325, 'hdbch', 'kolapur', 'india', 482002, 12345),
(5, 2, 'aaa', '2020-10-09', 'a', 'not_my_grp', 'Male', 'a', 1, '1', 'k', '4', 4, 4),
(6, 2, 'Monu', '2021-04-21', 'Monu', 'not_my_grp', 'Female', 'Antpm9125c', 0, 'Hoob', 'Kolkata', 'India', 700066, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ppf_investment`
--

CREATE TABLE `ppf_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `ppf_transaction_type` varchar(300) NOT NULL,
  `ppf_account_no` text NOT NULL,
  `ppf_opening_date` date NOT NULL,
  `ppf_date` date NOT NULL,
  `ppf_lockin_period` date NOT NULL,
  `ppf_maturity_date` date NOT NULL,
  `ppf_amt_invested` decimal(12,2) NOT NULL,
  `ppf_interest_rate` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ppf_investment`
--

INSERT INTO `ppf_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `ppf_transaction_type`, `ppf_account_no`, `ppf_opening_date`, `ppf_date`, `ppf_lockin_period`, `ppf_maturity_date`, `ppf_amt_invested`, `ppf_interest_rate`) VALUES
(1, 1, 'port_3', 'Investment', 'PPF / Public Provident Fund', 'Buy / Invest', 'fgf3', '2020-11-06', '2020-11-04', '2020-11-10', '2020-11-09', 44.00, 44.00),
(2, 1, 'port_3', 'Investment', 'PPF / Public Provident Fund', 'Buy / Invest', 'dfe2', '2020-11-07', '2020-11-10', '0000-00-00', '2020-11-20', 2.00, 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `precious_stone`
--

CREATE TABLE `precious_stone` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `precious_stone`
--

INSERT INTO `precious_stone` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'Precious Stone', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'Precious Stone', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `private_equity_investment`
--

CREATE TABLE `private_equity_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `pe_asset_name` varchar(300) NOT NULL,
  `pe_startup` decimal(12,2) NOT NULL,
  `pe_start_date` date NOT NULL,
  `pe_transaction_type` varchar(300) NOT NULL,
  `pe_date` date NOT NULL,
  `pe_qty_purchase` decimal(12,2) NOT NULL,
  `pe_purchase_rate` decimal(12,2) NOT NULL,
  `amt_invested` decimal(12,2) NOT NULL,
  `pe_current_rate` decimal(12,2) NOT NULL,
  `pe_present_value` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `private_equity_investment`
--

INSERT INTO `private_equity_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `pe_asset_name`, `pe_startup`, `pe_start_date`, `pe_transaction_type`, `pe_date`, `pe_qty_purchase`, `pe_purchase_rate`, `amt_invested`, `pe_current_rate`, `pe_present_value`) VALUES
(1, 1, 'port_3', 'Investment', 'Private Equity / Startup', 'Startup', 34.00, '2020-11-05', 'Sell', '2020-11-03', 33.00, 22.00, 22.00, 22.00, 22.00),
(2, 1, 'port_2', 'Investment', 'Private Equity / Startup', 'Startup', 33.00, '2020-11-19', 'Sell', '2020-11-15', 3.00, 3.00, 3.00, 3.00, 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `public_provident_fund_int`
--

CREATE TABLE `public_provident_fund_int` (
  `id` int(11) NOT NULL,
  `from_date` varchar(250) NOT NULL,
  `to_date` varchar(250) NOT NULL,
  `interest_rate` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rd_investment`
--

CREATE TABLE `rd_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `rd_type` varchar(300) NOT NULL,
  `rd_account_no` text NOT NULL,
  `rd_transaction_type` varchar(300) NOT NULL,
  `rd_interest_payout` varchar(300) NOT NULL,
  `rd_interest_payment` varchar(300) NOT NULL,
  `rd_interest_rate` decimal(12,2) NOT NULL,
  `rd_interest_type` varchar(300) NOT NULL,
  `rd_maturity_amt` decimal(12,2) NOT NULL,
  `rd_maturity_date` date NOT NULL,
  `rd_start_date` date NOT NULL,
  `amt_invested` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rd_investment`
--

INSERT INTO `rd_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `rd_type`, `rd_account_no`, `rd_transaction_type`, `rd_interest_payout`, `rd_interest_payment`, `rd_interest_rate`, `rd_interest_type`, `rd_maturity_amt`, `rd_maturity_date`, `rd_start_date`, `amt_invested`) VALUES
(1, 1, 'port_2', 'Investment', 'RD / Recurring Deposit', 'Post Office', 'fgd3', 'Buy', 'Cumulative', 'Monthly', 33.00, 'Compound', 22.00, '2020-11-09', '2020-11-10', 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(1024) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` bigint(20) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `qualification` varchar(250) NOT NULL,
  `profession` varchar(250) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `affiliate_code` bigint(20) DEFAULT NULL,
  `plan` varchar(1024) NOT NULL,
  `plan_amt` int(11) NOT NULL,
  `paymode` varchar(255) NOT NULL,
  `terms_conditions` int(11) NOT NULL DEFAULT '1',
  `notify_status` int(11) NOT NULL DEFAULT '0',
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `user_id`, `user_name`, `email`, `password`, `phone`, `dob`, `gender`, `qualification`, `profession`, `state`, `city`, `address`, `affiliate_code`, `plan`, `plan_amt`, `paymode`, `terms_conditions`, `notify_status`, `date_time`) VALUES
(1, 1, 'ashu keshri', 'ashukeshri786@gmail.com', '123456', 0, '', '', '', '', '', '', '', NULL, 'Free', 0, 'Free', 1, 1, '2020-12-21 10:01:31'),
(2, 2, 'Bengal Tiger', 'siddhukol@gmail.com', 'siddhu@7879', 7879553819, '1994-06-27', 'male', 'MBA', 'Software ', 'Gujarat', 'null', '', 973301606390683, 'Advance', 999, 'Free', 1, 1, '2020-12-21 10:01:31'),
(3, 463891608539227, 'naman', 'naman@gmail.com', 'naman@123', 911234567791, '', '', '', '', '', '', '', 973301606390683, 'Professional', 2999, 'Paytm', 1, 0, '2020-12-21 10:01:31'),
(4, 15601608539561, 'Kokila', 'kokila@gmail.com', 'asdf', 4412334566, '', '', '', '', '', '', '', NULL, 'Free', 0, 'Free', 1, 0, '2020-12-21 10:01:31'),
(5, 664651608731005, 'arup', 'hobeadda.am@gmail.com', 'rambo1234', 109575879300, '', '', '', '', '', '', '', 216851606806069, 'Professional', 2999, 'Razorpay', 1, 0, '2020-12-23 13:43:25'),
(6, 990741608731131, 'arup', 'rahul@gmail.com', 'rambo', 109575879300, '', '', '', '', '', '', '', 216851606806069, 'Professional', 2999, 'Paytm', 1, 1, '2020-12-23 13:45:31'),
(7, 494471609304355, 'aass', 'ffff@gmail.com', 'lljjhhu', 109575879300, '', '', '', '', '', '', '', NULL, 'Free', 0, 'Free', 1, 0, '2020-12-30 04:59:15'),
(8, 913981609641529, 'arup mondal', 'arup.mondal@hotmail.com', 'Rambo@1980', 19406822528, '', '', '', '', '', '', '', 0, 'Professional', 2999, 'Paytm', 1, 0, '2021-01-03 02:38:49'),
(9, 141011614341836, 'anurag basu', 'anurag@gmail.com', 'anuragbaasu@123', 91123446789, '', '', '', '', '', '', '', 0, 'Advance', 999, 'Razorpay', 1, 0, '2021-02-26 12:17:16'),
(10, 959671618246095, 'ak', 'ak@gmail.com', 'ashu@123', 917024935572, '', '', '', '', '', '', '', 0, 'Advance', 999, 'Paytm', 1, 0, '2021-04-12 16:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `scsc_int`
--

CREATE TABLE `scsc_int` (
  `id` int(11) NOT NULL,
  `from_date` varchar(250) NOT NULL,
  `to_date` varchar(250) NOT NULL,
  `interest_rate` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scss_investment`
--

CREATE TABLE `scss_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `scss_transaction_type` varchar(300) NOT NULL,
  `scss_account_no` text NOT NULL,
  `scss_muturity_date` date NOT NULL,
  `scss_lockin_period` date NOT NULL,
  `scss_date` date NOT NULL,
  `scss_amt_invested` decimal(12,2) NOT NULL,
  `scss_interest_rate` decimal(12,2) NOT NULL,
  `scss_interest_type` varchar(300) NOT NULL,
  `scss_interest_payment` varchar(300) NOT NULL,
  `scss_interest_payout` varchar(300) NOT NULL,
  `scss_maturity_amt` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scss_investment`
--

INSERT INTO `scss_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `scss_transaction_type`, `scss_account_no`, `scss_muturity_date`, `scss_lockin_period`, `scss_date`, `scss_amt_invested`, `scss_interest_rate`, `scss_interest_type`, `scss_interest_payment`, `scss_interest_payout`, `scss_maturity_amt`) VALUES
(1, 1, 'port_3', 'Investment', 'SCSS / Senior Citizen Saving Scheme', 'Buy', 'sf3', '2020-11-05', '2020-11-05', '2020-11-03', 44.00, 44.00, 'Compound', 'Monthly', 'Cumulative', 44.00),
(2, 1, 'port_3', 'Investment', 'SCSS / Senior Citizen Saving Scheme', 'Sell', 'hj43', '2020-11-11', '2020-11-04', '2020-11-11', 44.00, 44.00, 'Simple', 'Half Yearly', 'Payout', 44.00);

-- --------------------------------------------------------

--
-- Table structure for table `sgb_temp`
--

CREATE TABLE `sgb_temp` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `stock_name` varchar(255) NOT NULL,
  `stock_transaction_type` varchar(300) NOT NULL,
  `stock_broker` varchar(1024) NOT NULL,
  `stock_date` date NOT NULL,
  `stock_contract_no` text NOT NULL,
  `stock_settlement_no` text NOT NULL,
  `stock_qty` decimal(13,2) NOT NULL,
  `stock_purchase_price` decimal(13,2) NOT NULL,
  `amt_invested` decimal(13,2) NOT NULL,
  `stock_brokerage` decimal(10,2) NOT NULL,
  `stock_net_rate` decimal(13,2) NOT NULL,
  `stock_tax_value` decimal(13,2) NOT NULL,
  `stock_cgst` decimal(10,2) NOT NULL,
  `stock_sgst` decimal(10,2) NOT NULL,
  `stock_igst` decimal(10,2) NOT NULL,
  `stock_exchange_transaction` decimal(10,2) NOT NULL,
  `stock_stt` decimal(10,2) NOT NULL,
  `stock_sebi_fee` decimal(10,2) NOT NULL,
  `stock_stamp_duty` decimal(10,2) NOT NULL,
  `stock_net_amt` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sgb_temp`
--

INSERT INTO `sgb_temp` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `stock_name`, `stock_transaction_type`, `stock_broker`, `stock_date`, `stock_contract_no`, `stock_settlement_no`, `stock_qty`, `stock_purchase_price`, `amt_invested`, `stock_brokerage`, `stock_net_rate`, `stock_tax_value`, `stock_cgst`, `stock_sgst`, `stock_igst`, `stock_exchange_transaction`, `stock_stt`, `stock_sebi_fee`, `stock_stamp_duty`, `stock_net_amt`) VALUES
(3, 1, 'port_2', 'Investment', 'SGB / Sovereign Gold Bond', 'ZODIAC VENTURES LTD', 'Buy', 'A.S.STOCK BROKING', '2020-11-21', 'ss', 'ss', 22.00, 22.00, 3.00, 3.00, 33.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00, 2.00),
(4, 1, 'port_3', 'Investment', 'SGB / Sovereign Gold Bond', 'SICAL LOGISTICS LTD.', 'Sell', 'TJ STOCK BROKING', '2020-11-13', '33', '33', 33.00, 33.00, 33.00, 33.00, 3.00, 33.00, 33.00, 33.00, 3.00, 3.00, 33.00, 3.00, 3.00, 3.00),
(5, 1, 'port_2', 'Investment', 'SGB / Sovereign Gold Bond', 'RAMKY INFRASTRUCTURE LIMITED', 'Sell', 'WEALTHSTREET ADVISORS', '2020-11-04', '2345', '23', 24.00, 23.00, 23.00, 23.00, 23.00, 65.00, 56.00, 56.00, 56.00, 56.00, 565.00, 565.00, 56.00, 6.00),
(6, 1, 'port_2', 'Investment', 'SGB / Sovereign Gold Bond', 'ZODIAC JRD MKJ LTD', 'Buy', 'WELLWORTH SHARE', '2020-11-05', '3', '2', 7.00, 7.00, 6.00, 6.00, 6.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00),
(7, 2, 'aaa', 'Investment', 'SGB / Sovereign Gold Bond', 'ZODIAC CLOTHING COMPANY LTD.', 'Buy', 'ADROIT COMMODITIES', '2020-12-07', '', '', 1.00, 100.00, 100.00, 0.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `silver`
--

CREATE TABLE `silver` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `assets_transaction_type` varchar(300) NOT NULL,
  `assets_date` datetime NOT NULL,
  `assets_avg_price` decimal(13,2) NOT NULL,
  `assets_quantity` decimal(13,2) NOT NULL,
  `assets_amt_invested` decimal(13,2) NOT NULL,
  `assets_present_value` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `silver`
--

INSERT INTO `silver` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `assets_transaction_type`, `assets_date`, `assets_avg_price`, `assets_quantity`, `assets_amt_invested`, `assets_present_value`) VALUES
(1, 1, 'port_4', 'Assets', 'Silver', 'Buy', '2020-10-03 00:00:00', 0.00, 12.00, 10.00, 11.00),
(2, 1, 'port_3', 'Assets', 'Silver', 'Sell', '2020-10-06 00:00:00', 33.00, 33.00, 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `sovergine_gold_bond`
--

CREATE TABLE `sovergine_gold_bond` (
  `id` int(11) NOT NULL,
  `scheme_name` varchar(250) NOT NULL,
  `today_nav` varchar(250) NOT NULL,
  `previous_day_price` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `staff_id` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `img` varchar(200) NOT NULL DEFAULT 'dist/img/man.png',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `name`, `staff_id`, `status`, `role`, `img`, `created_at`) VALUES
(1, 'siddhu singh', '7879553819', 1, 0, 'dist/img/man.png', '2021-01-07 12:19:30'),
(4, 'admin', '1234567890', 1, 1, 'dist/img/man.png', '2021-01-07 12:19:30'),
(5, 'ashu', '7024035562', 1, 1, 'dist/img/man.png', '2021-01-17 07:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`) VALUES
(1, 'Andhra Pradesh'),
(2, 'Arunachal Pradesh'),
(3, 'Assam'),
(4, 'Bihar'),
(5, 'Chhattisgarh'),
(6, 'Goa'),
(7, 'Gujarat'),
(8, 'Haryana'),
(9, 'Himachal Pradesh'),
(10, 'Jammu and Kashmir'),
(11, 'Jharkhand'),
(12, 'Karnataka'),
(13, 'Kerala'),
(14, 'Madhya Pradesh'),
(15, 'Maharashtra'),
(16, 'Manipur'),
(17, 'Meghalaya'),
(18, 'Mizoram'),
(19, 'Nagaland'),
(20, 'Odisha'),
(21, 'Punjab'),
(22, 'Rajasthan'),
(23, 'Sikkim'),
(24, 'Tamil Nadu'),
(25, 'Telangana'),
(26, 'Tripura'),
(27, 'Uttarakhand'),
(28, 'Uttar Pradesh'),
(29, 'West Bengal'),
(30, 'Andaman and Nicobar Islands'),
(31, 'Chandigarh'),
(32, 'Dadra and Nagar Haveli'),
(33, 'Daman and Diu'),
(34, 'Delhi'),
(35, 'Lakshadweep'),
(36, 'Puducherry');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `stock_name` varchar(255) NOT NULL,
  `stock_transaction_type` varchar(300) NOT NULL,
  `stock_broker` varchar(1024) NOT NULL,
  `stock_date` date NOT NULL,
  `stock_contract_no` text NOT NULL,
  `stock_settlement_no` text NOT NULL,
  `stock_qty` decimal(13,2) NOT NULL,
  `stock_purchase_price` decimal(13,2) NOT NULL,
  `amt_invested` decimal(13,2) NOT NULL,
  `stock_brokerage` decimal(10,2) NOT NULL,
  `stock_net_rate` decimal(13,2) NOT NULL,
  `stock_tax_value` decimal(13,2) NOT NULL,
  `stock_cgst` decimal(10,2) NOT NULL,
  `stock_sgst` decimal(10,2) NOT NULL,
  `stock_igst` decimal(10,2) NOT NULL,
  `stock_exchange_transaction` decimal(10,2) NOT NULL,
  `stock_stt` decimal(10,2) NOT NULL,
  `stock_sebi_fee` decimal(10,2) NOT NULL,
  `stock_stamp_duty` decimal(10,2) NOT NULL,
  `stock_net_amt` decimal(10,2) NOT NULL,
  `current_value` decimal(12,2) NOT NULL,
  `overall_gain` decimal(12,2) NOT NULL,
  `gain_percentage` decimal(12,2) NOT NULL,
  `holding` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `stock_name`, `stock_transaction_type`, `stock_broker`, `stock_date`, `stock_contract_no`, `stock_settlement_no`, `stock_qty`, `stock_purchase_price`, `amt_invested`, `stock_brokerage`, `stock_net_rate`, `stock_tax_value`, `stock_cgst`, `stock_sgst`, `stock_igst`, `stock_exchange_transaction`, `stock_stt`, `stock_sebi_fee`, `stock_stamp_duty`, `stock_net_amt`, `current_value`, `overall_gain`, `gain_percentage`, `holding`) VALUES
(2, 1, 'port_2', 'Investment', 'Stock / Share', 'testing', 'Sell', 'test broker', '2020-10-07', '23', '123', 23.00, 123.00, 213.00, 23.00, 213.00, 23.00, 23.00, 23.00, 23.00, 123.00, 23.00, 23.00, 23.00, 23.00, 0.00, -213.00, -436.00, 0.00),
(3, 1, 'port_3', 'Investment', 'Stock / Share', 'AEGIS LOGISTICS LTD', 'Buy', 'A. C. CHOKSI SHAREBROKERS', '2020-10-08', '', '', 12.30, 12.00, 12.89, 0.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12.00, 1599.00, 1586.11, 3252.00, 18.15),
(4, 1, 'port_2', 'Investment', 'Stock / Share', 'ZUARI AGRO CHEMICALS LTD', 'Sell', '5PAISA CAPITAL', '2020-10-07', '', '', 22.00, 22.00, 22.00, 0.00, 33.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22.00, 2860.00, 2838.00, 5819.00, 32.47),
(5, 2, 'aaa', 'Investment', 'Stock / Share', 'AMBALAL SARABHAI ENTERPRISES LTD', 'Buy', 'A. G. SHARES & SECURITIES', '2020-10-09', '', '', 1.00, 11.00, 100.00, 0.00, 110.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 120.00, 130.00, 30.00, 3.00, 12.50),
(6, 2, 'aaa', 'Investment', 'Stock / Share', 'GALAXY BEARINGS LTD', 'Buy', 'ACTION FINANCIAL', '2020-10-08', '', '', 1.00, 20.00, 555.00, 0.00, 525.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 240.00, 390.00, 294.00, 34.00, 37.50),
(7, 2, 'aaa', 'Investment', 'Stock / Share', 'VIP CLOTHING LTD', 'Sell', 'ADWEALTH STOCK', '2020-10-03', '', '', 1.00, 100.00, 100.00, 5.00, 105.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 105.00, 130.00, 30.00, 3.00, 12.50),
(8, 1, 'port_3', 'Investment', 'Stock / Share', 'ABB INDIA LTD', 'Buy', 'ADROIT FINANCIAL', '2020-12-16', 'ee', '33', 33.46, 33.00, 13.88, 3.00, 33.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 33.00, 4349.80, 4335.92, 8890.00, 49.38),
(9, 2, 'aaa', 'Investment', 'Stock / Share', 'GALAXY BEARINGS LTD', 'Sell', 'ABHINANDAN STOCK', '2020-10-10', '', '', 3.00, 23.00, 96.00, 3.00, 1000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1000.00, 390.00, 294.00, 34.00, 37.50);

-- --------------------------------------------------------

--
-- Table structure for table `stock_details`
--

CREATE TABLE `stock_details` (
  `id` bigint(20) NOT NULL,
  `stock_name` varchar(1024) NOT NULL,
  `current_price` varchar(100) NOT NULL,
  `previous_day_price` varchar(100) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_details`
--

INSERT INTO `stock_details` (`id`, `stock_name`, `current_price`, `previous_day_price`, `cdate`) VALUES
(2, 'ABB INDIA LTD', '130', '25', '2021-01-05 09:06:44'),
(3, 'AEGIS LOGISTICS LTD', '130', '100', '2021-01-05 09:06:44'),
(4, 'AMARA RAJA BATTERIES LTD', '130', '', '2021-01-05 09:06:44'),
(5, 'AMBALAL SARABHAI ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(6, 'HOUSING DEVELOPMENT FINANCE CORP LTD', '130', '', '2021-01-05 09:06:44'),
(7, 'ANDHRA PETROCHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(8, 'ANSAL PROPERTIES AND INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(9, 'UTIQUE ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(10, 'ARUNA HOTELS LIMITED', '130', '', '2021-01-05 09:06:44'),
(11, 'BOMBAY DYEING AND MANUFACTURING COMPANY', '130', '', '2021-01-05 09:06:44'),
(12, 'ASIAN HOTELS (NORTH) LTD', '130', '', '2021-01-05 09:06:44'),
(13, 'ATUL LTD', '130', '', '2021-01-05 09:06:44'),
(14, 'ATV PROJECTS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(15, 'AUTOLITE INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(16, 'BAJAJ ELECTRICALS LTD', '130', '', '2021-01-05 09:06:44'),
(17, 'BAJAJ HINDUSTHAN SUGAR LTD', '130', '', '2021-01-05 09:06:44'),
(18, 'FORCE MOTORS LTD', '130', '', '2021-01-05 09:06:44'),
(19, 'BAJAJ FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(20, 'BALRAMPUR CHINI MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(21, 'BANCO PRODUCTS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(22, 'CENTURY TEXTILE AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(23, 'BANNARI AMMAN SUGARS LIMITED', '130', '', '2021-01-05 09:06:44'),
(24, 'BASF INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(25, 'BATA INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(26, 'BEML LTD', '130', '', '2021-01-05 09:06:44'),
(27, 'BHARAT ELECTRONICS LTD', '130', '', '2021-01-05 09:06:44'),
(28, 'BHANSALI ENGINEERING POLYMERS LTD.', '130', '', '2021-01-05 09:06:44'),
(29, 'TATA STEEL BSL LTD', '130', '', '2021-01-05 09:06:44'),
(30, 'BIHAR SPONGE IRON LTD', '130', '', '2021-01-05 09:06:44'),
(31, 'BIRLA CABLE LTD', '130', '', '2021-01-05 09:06:44'),
(32, 'BLUE STAR LTD', '130', '', '2021-01-05 09:06:44'),
(33, 'DISA INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(34, 'BNK CAPITAL MARKETS LTD', '130', '', '2021-01-05 09:06:44'),
(35, 'BPL LTD', '130', '', '2021-01-05 09:06:44'),
(36, 'ORIENTAL AROMATICS LTD', '130', '', '2021-01-05 09:06:44'),
(37, 'CENTURY EXTRUSIONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(38, 'CESC LTD', '130', '', '2021-01-05 09:06:44'),
(39, 'CHAMBAL FERTILISERS & CHEMICALS LIMITED', '130', '', '2021-01-05 09:06:44'),
(40, 'EXIDE INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(41, 'CIPLA LTD', '130', '', '2021-01-05 09:06:44'),
(42, 'DIC INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(43, 'CRISIL LTD.', '130', '', '2021-01-05 09:06:44'),
(44, 'CG POWER AND INDUSTRIAL SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(45, 'DABUR INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(46, 'DALMIA BHARAT SUGAR AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(47, 'ARVIND LIMITED', '130', '', '2021-01-05 09:06:44'),
(48, 'BALLARPUR INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(49, 'BHARAT HEAVY ELECTRICALS LIMITED', '130', '', '2021-01-05 09:06:44'),
(50, 'HINDUSTAN PETROLEUM CORPORATION LIMITED', '130', '', '2021-01-05 09:06:44'),
(51, 'IFCI LIMITED', '130', '', '2021-01-05 09:06:44'),
(52, 'MAHANAGAR TELEPHONE NIGAM LTD', '130', '', '2021-01-05 09:06:44'),
(53, 'MANGALORE REFINERY & PETROCHEMICALS LTD. FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(54, 'CHENNAI PETROLEUM CORPORATION LIMITED', '130', '', '2021-01-05 09:06:44'),
(55, 'RELIANCE CAPITAL LIMITED', '130', '', '2021-01-05 09:06:44'),
(56, 'STATE BANK OF INDIA', '130', '', '2021-01-05 09:06:44'),
(57, 'STEEL AUTHORITY OF INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(58, 'TITAN COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(59, 'IDBI BANK LTD', '130', '', '2021-01-05 09:06:44'),
(60, 'DCW LIMITED', '130', '', '2021-01-05 09:06:44'),
(61, 'DHAMPUR SUGAR MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(62, 'DIAMINES AND CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(63, 'ELANTAS BECK INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(64, 'DR.REDDY\'S LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(65, 'E.I.D-PARRY (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(66, 'PROCTER & GAMBLE HEALTH LTD', '130', '', '2021-01-05 09:06:44'),
(67, 'ELECTROSTEEL CASTINGS LIMITED', '130', '', '2021-01-05 09:06:44'),
(68, 'ESAB INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(69, 'ESSEL PROPACK LTD', '130', '', '2021-01-05 09:06:44'),
(70, 'ESTER INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(71, 'F G P LTD', '130', '', '2021-01-05 09:06:44'),
(72, 'PH CAPITAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(73, 'FINOLEX CABLES LTD', '130', '', '2021-01-05 09:06:44'),
(74, 'JOHN COCKERILL INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(75, 'UFLEX LTD', '130', '', '2021-01-05 09:06:44'),
(76, 'FOSECO INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(77, 'GOLDEN TOBACCO LTD.', '130', '', '2021-01-05 09:06:44'),
(78, 'GANESH BENZOPLAST LTD', '130', '', '2021-01-05 09:06:44'),
(79, 'GARDEN SILK MILLS LIMITED', '130', '', '2021-01-05 09:06:44'),
(80, 'METROGLOBAL LTD', '130', '', '2021-01-05 09:06:44'),
(81, 'GODFREY PHILLIPS INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(82, 'GODREJ INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(83, 'KANSAI NEROLAC PAINTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(84, 'GOODRICKE GROUP LTD.', '130', '', '2021-01-05 09:06:44'),
(85, 'GOODYEAR INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(86, 'GTN INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(87, 'GHCL LIMITED', '130', '', '2021-01-05 09:06:44'),
(88, 'GFL LTD', '130', '', '2021-01-05 09:06:44'),
(89, 'GUJARAT LEASE FINANCING LTD', '130', '', '2021-01-05 09:06:44'),
(90, 'HCL INFOSYSTEMS LIMITED', '130', '', '2021-01-05 09:06:44'),
(91, 'HDFC BANK LIMITED', '130', '', '2021-01-05 09:06:44'),
(92, 'HERO MOTOCORP LTD', '130', '', '2021-01-05 09:06:44'),
(93, 'HFCL LTD', '130', '', '2021-01-05 09:06:44'),
(94, 'HIMADRI SPECIALITY CHEMICAL LTD', '130', '', '2021-01-05 09:06:44'),
(95, 'HINDUSTAN CONSTRUCTION COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(96, 'HINDUSTAN OIL EXPLORATION COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(97, 'HSIL LTD', '130', '', '2021-01-05 09:06:44'),
(98, 'HINDUSTAN ZINC LTD', '130', '', '2021-01-05 09:06:44'),
(99, 'NXTDIGITAL LTD', '130', '', '2021-01-05 09:06:44'),
(100, 'HMT LTD', '130', '', '2021-01-05 09:06:44'),
(101, 'PRAG BOSIMI SYNTHETICS LTD', '130', '', '2021-01-05 09:06:44'),
(102, 'HLV LTD', '130', '', '2021-01-05 09:06:44'),
(103, 'IG PETROCHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(104, 'INDIA GLYCOLS LTD.', '130', '', '2021-01-05 09:06:44'),
(105, 'INDIA LEASE DEVELOPMENT ORD SHS', '130', '', '2021-01-05 09:06:44'),
(106, 'MARGO FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(107, 'INDO RAMA SYNTHETICS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(108, 'INFOSYS LTD', '130', '', '2021-01-05 09:06:44'),
(109, 'INGERSOLL RAND INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(110, 'INSILCO LTD', '130', '', '2021-01-05 09:06:44'),
(111, 'INTERNATIONAL TRAVEL HOUSE LTD.', '130', '', '2021-01-05 09:06:44'),
(112, 'ION EXCHANGE (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(113, 'AGRO TECH FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(114, 'JAIN IRRIGATION SYSTEMS LIMITED', '130', '', '2021-01-05 09:06:44'),
(115, 'JASCH INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(116, 'JCT LTD', '130', '', '2021-01-05 09:06:44'),
(117, 'JINDAL POLY FILMS LTD', '130', '', '2021-01-05 09:06:44'),
(118, 'JSW STEEL LIMITED FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(119, 'UMANG DAIRIES LTD', '130', '', '2021-01-05 09:06:44'),
(120, 'KAJARIA CERAMICS LIMITED', '130', '', '2021-01-05 09:06:44'),
(121, 'KAKATIYA CEMENT SUGAR AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(122, 'KALYANI STEELS LIMITED', '130', '', '2021-01-05 09:06:44'),
(123, 'WHIRLPOOL OF INDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(124, 'KG DENIM LTD', '130', '', '2021-01-05 09:06:44'),
(125, 'KINETIC ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(126, 'KIRLOSKAR BROTHERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(127, 'KIRLOSKAR INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(128, 'KIRLOSKAR FERROUS INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(129, 'ENVAIR ELECTRODYNE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(130, 'KOTAK MAHINDRA BANK LTD FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(131, 'KSB LTD', '130', '', '2021-01-05 09:06:44'),
(132, 'LG BALAKRISHNAN & BROS LTD', '130', '', '2021-01-05 09:06:44'),
(133, 'TRENT LTD', '130', '', '2021-01-05 09:06:44'),
(134, 'LAKSHMI MACHINE WORKS LTD', '130', '', '2021-01-05 09:06:44'),
(135, 'LIC HOUSING FINANCE LIMITED', '130', '', '2021-01-05 09:06:44'),
(136, 'UTTAM VALUE STEELS LTD', '130', '', '2021-01-05 09:06:44'),
(137, 'LUPIN LIMITED', '130', '', '2021-01-05 09:06:44'),
(138, 'LYKA LABS LIMITED', '130', '', '2021-01-05 09:06:44'),
(139, 'RAMCO CEMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(140, 'MAFATLAL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(141, 'MAHARASHTRA SEAMLESS LTD', '130', '', '2021-01-05 09:06:44'),
(142, 'MAHARASHTRA SCOOTERS LTD.', '130', '', '2021-01-05 09:06:44'),
(143, 'MAJESTIC AUTO LTD', '130', '', '2021-01-05 09:06:44'),
(144, 'MANALI PETROCHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(145, 'MAX FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(146, 'MID INDIA INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(147, 'MIRC ELECTRONICS LIMITED', '130', '', '2021-01-05 09:06:44'),
(148, 'CENTURY ENKA LIMITED', '130', '', '2021-01-05 09:06:44'),
(149, 'LORDS CHLORO ALKALI LIMITED(NDA)', '130', '', '2021-01-05 09:06:44'),
(150, 'SPICEJET LIMITED', '130', '', '2021-01-05 09:06:44'),
(151, 'MOREPEN LABORATORIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(152, 'MRF LIMITED', '130', '', '2021-01-05 09:06:44'),
(153, 'HEIDELBERGCEMENT INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(154, 'NCC LTD', '130', '', '2021-01-05 09:06:44'),
(155, 'VEDANTA LTD', '130', '', '2021-01-05 09:06:44'),
(156, 'NAHAR SPINNING MILLS LIMITED', '130', '', '2021-01-05 09:06:44'),
(157, 'NATIONAL PEROXIDE LTD', '130', '', '2021-01-05 09:06:44'),
(158, 'GRASIM INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(159, 'PIRAMAL ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(160, 'NIIT LIMITED', '130', '', '2021-01-05 09:06:44'),
(161, 'JAYKAY ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(162, 'NIRLON LIMITED', '130', '', '2021-01-05 09:06:44'),
(163, 'OIL & NATURAL GAS CORPORATION LIMITED', '130', '', '2021-01-05 09:06:44'),
(164, 'OIL COUNTRY TUBULAR LTD', '130', '', '2021-01-05 09:06:44'),
(165, 'ORIENTAL HOTELS LIMITED', '130', '', '2021-01-05 09:06:44'),
(166, 'OSWAL AGRO MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(167, 'INDIAN SUCROSE LTD', '130', '', '2021-01-05 09:06:44'),
(168, 'RELIANCE INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(169, 'PIL ITALICA LIFESTYLE LTD', '130', '', '2021-01-05 09:06:44'),
(170, 'PENTAMEDIA GRAPHICS LIMITED', '130', '', '2021-01-05 09:06:44'),
(171, 'RAYMOND LIMITED', '130', '', '2021-01-05 09:06:44'),
(172, 'PIDILITE INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(173, 'PIX TRANSMISSIONS LTD', '130', '', '2021-01-05 09:06:44'),
(174, 'BIRLA CORPORATION LIMITED', '130', '', '2021-01-05 09:06:44'),
(175, 'SURYA ROSHNI LTD', '130', '', '2021-01-05 09:06:44'),
(176, 'PRIME SECURITIES LTD.', '130', '', '2021-01-05 09:06:44'),
(177, 'PRISM JOHNSON LTD', '130', '', '2021-01-05 09:06:44'),
(178, 'RAIN INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(179, 'AMJ LAND HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(180, 'PUNJAB COMMUNICATIONS LTD', '130', '', '2021-01-05 09:06:44'),
(181, 'RSWM LTD.', '130', '', '2021-01-05 09:06:44'),
(182, 'RAJSHREE SUGARS & CHEMICALS LIMITED', '130', '', '2021-01-05 09:06:44'),
(183, 'RALLIS INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(184, 'SHREE RAMA NEWSPRINT LTD', '130', '', '2021-01-05 09:06:44'),
(185, 'RAMA PAPER MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(186, 'RAMA PETROCHEMICALS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(187, 'RAPICUT CARBIDES LTD', '130', '', '2021-01-05 09:06:44'),
(188, 'WELSPUN SPECIALTY SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(189, 'ROLTA INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(190, 'RUBFILA INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(191, 'RUCHI SOYA INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(192, 'SALORA INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(193, 'JINDAL SAW LIMITED', '130', '', '2021-01-05 09:06:44'),
(194, 'JK LAKSHMI CEMENT LIMITED', '130', '', '2021-01-05 09:06:44'),
(195, 'SHREE CEMENT LIMITED', '130', '', '2021-01-05 09:06:44'),
(196, 'RELIANCE INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(197, 'STEELCO GUJARAT LTD', '130', '', '2021-01-05 09:06:44'),
(198, 'TATA POWER COMPANY LIMITED', '130', '', '2021-01-05 09:06:44'),
(199, 'SPML INFRA LTD', '130', '', '2021-01-05 09:06:44'),
(200, 'SUNDRAM FASTENERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(201, 'SUNFLAG IRON & STEEL COMPANY LTD.', '130', '', '2021-01-05 09:06:44'),
(202, 'SUPREME PETROCHEM LTD.', '130', '', '2021-01-05 09:06:44'),
(203, 'SWARAJ ENGINES LIMITED', '130', '', '2021-01-05 09:06:44'),
(204, 'TATA ELXSI LIMITED', '130', '', '2021-01-05 09:06:44'),
(205, 'ACC LTD', '130', '', '2021-01-05 09:06:44'),
(206, 'THERMAX LIMITED', '130', '', '2021-01-05 09:06:44'),
(207, 'THIRUMALAI CHEMICALS LTD.', '130', '', '2021-01-05 09:06:44'),
(208, 'THOMAS COOK INDIA LTD FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(209, 'TIMEX GROUP INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(210, 'TOKYO PLAST INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(211, 'TORRENT PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(212, 'TRANSCHEM LTD', '130', '', '2021-01-05 09:06:44'),
(213, 'AMBUJA CEMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(214, 'UTL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(215, 'UNIPHOS ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(216, 'VARDHMAN HOLDINGS LIMITED', '130', '', '2021-01-05 09:06:44'),
(217, 'HINDALCO INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(218, 'WEST COAST PAPER MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(219, 'HINDUSTAN ORGANIC CHEMICALS LIMITED', '130', '', '2021-01-05 09:06:44'),
(220, 'PASUPATI ACRYLON LTD', '130', '', '2021-01-05 09:06:44'),
(221, 'KORE FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(222, 'PROCTER & GAMBLE HYGIENE & HEALTH CARE', '130', '', '2021-01-05 09:06:44'),
(223, 'MUKAND LIMITED FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(224, 'AGC NETWORKS LTD', '130', '', '2021-01-05 09:06:44'),
(225, 'UCAL FUEL SYSTEMS LIMITED', '130', '', '2021-01-05 09:06:44'),
(226, 'HARRISONS MALAYALAM LIMITED', '130', '', '2021-01-05 09:06:44'),
(227, 'FEDERAL BANK LTD', '130', '', '2021-01-05 09:06:44'),
(228, 'TATA STEEL LIMITED FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(229, 'SKF INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(230, 'ASHOK LEYLAND LTD', '130', '', '2021-01-05 09:06:44'),
(231, 'CUMMINS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(232, 'TATA COMMUNICATIONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(233, 'ABBOTT INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(234, 'BAJAJ HOLDINGS AND INVESTMENT LTD', '130', '', '2021-01-05 09:06:44'),
(235, 'BHARAT FORGE LTD', '130', '', '2021-01-05 09:06:44'),
(236, 'ESCORTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(237, 'HINDUSTAN MOTORS LIMITED', '130', '', '2021-01-05 09:06:44'),
(238, 'LARSEN & TOUBRO LIMITED', '130', '', '2021-01-05 09:06:44'),
(239, 'MAHINDRA & MAHINDRA LIMITED', '130', '', '2021-01-05 09:06:44'),
(240, 'BOSCH LTD', '130', '', '2021-01-05 09:06:44'),
(241, 'PREMIER LIMITED', '130', '', '2021-01-05 09:06:44'),
(242, 'BHARAT PETROLEUM CORP LTD', '130', '', '2021-01-05 09:06:44'),
(243, 'SIEMENS LTD', '130', '', '2021-01-05 09:06:44'),
(244, 'TATA MOTORS LIMITED FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(245, 'VOLTAS LIMITED', '130', '', '2021-01-05 09:06:44'),
(246, 'GREAT EASTERN SHIPPING COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(247, 'DEEPAK FRTLSRS AND PTRCHMCLS CORP LTD', '130', '', '2021-01-05 09:06:44'),
(248, 'EXCEL INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(249, 'GARWARE POLYESTER LTD', '130', '', '2021-01-05 09:06:44'),
(250, 'GLAXOSMITHKLINE PHARMACEUTICALS LIMITED', '130', '', '2021-01-05 09:06:44'),
(251, 'GUJARAT NARMADA VALLEY FERTLZRS&CHMS LTD', '130', '', '2021-01-05 09:06:44'),
(252, 'NOVARTIS INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(253, 'SANOFI INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(254, 'PFIZER LIMITED', '130', '', '2021-01-05 09:06:44'),
(255, 'GUJARAT STATE FERTILIZERS&CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(256, 'HINDUSTAN UNILEVER LTD', '130', '', '2021-01-05 09:06:44'),
(257, 'AKZO NOBEL INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(258, 'NOCIL LIMITED', '130', '', '2021-01-05 09:06:44'),
(259, 'TATA CHEMICALS LIMITED', '130', '', '2021-01-05 09:06:44'),
(260, 'TAMILNADU PETROPRODUCTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(261, 'ZUARI GLOBAL LTD', '130', '', '2021-01-05 09:06:44'),
(262, 'NESTLE INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(263, 'TATA CONSUMER PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(264, 'ASIAN PAINTS LTD', '130', '', '2021-01-05 09:06:44'),
(265, 'BRITANNIA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(266, 'COLGATE-PALMOLIVE (INDIA) LIMITED', '130', '', '2021-01-05 09:06:44'),
(267, 'EIH LIMITED', '130', '', '2021-01-05 09:06:44'),
(268, 'INDIAN HOTELS COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(269, 'CASTROL INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(270, 'ITC LTD', '130', '', '2021-01-05 09:06:44'),
(271, 'APOLLO TYRES LIMITED', '130', '', '2021-01-05 09:06:44'),
(272, 'CEAT LIMITED', '130', '', '2021-01-05 09:06:44'),
(273, 'MODI RUBBER LTD', '130', '', '2021-01-05 09:06:44'),
(274, 'FINOLEX INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(275, 'DALAL STREET INVESTMENTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(276, 'CENTRUM CAPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(277, 'TCI FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(278, 'INDUSTRIAL INVESTMENT TRUST LTD', '130', '', '2021-01-05 09:06:44'),
(279, 'INDUSTRIAL&PRUDENTIAL INVESTMENT CO LTD', '130', '', '2021-01-05 09:06:44'),
(280, 'TATA INVESTMENT CORPORATION LIMITED', '130', '', '2021-01-05 09:06:44'),
(281, 'PRISMX GLOBAL VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(282, 'MOTOR AND GENERAL FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(283, 'WALCHAND PEOPLEFIRST LTD', '130', '', '2021-01-05 09:06:44'),
(284, 'W H BRADY & CO. LTD', '130', '', '2021-01-05 09:06:44'),
(285, 'SHAILY ENGINEERING PLASTICS LTD', '130', '', '2021-01-05 09:06:44'),
(286, 'BOMBAY BURMAH TRADING CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(287, 'BOMBAY CYCLE AND MOTOR AGENCY LTD', '130', '', '2021-01-05 09:06:44'),
(288, 'GREAVES COTTON LTD', '130', '', '2021-01-05 09:06:44'),
(289, 'INDIA NIVESH LTD', '130', '', '2021-01-05 09:06:44'),
(290, 'COASTAL CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(291, 'CHOWGULE STEAMSHIPS LTD.', '130', '', '2021-01-05 09:06:44'),
(292, 'GLOBAL OFFSHORE SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(293, 'ASSOCIATED STONE INDUSTRIES (KOTAH) LTD', '130', '', '2021-01-05 09:06:44'),
(294, 'SAGAR CEMENTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(295, 'DECCAN CEMENTS LTD.', '130', '', '2021-01-05 09:06:44'),
(296, 'MANGALAM CEMENT LTD.', '130', '', '2021-01-05 09:06:44'),
(297, 'NCL INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(298, 'SAURASHTRA CEMENT LTD.', '130', '', '2021-01-05 09:06:44'),
(299, 'SHREE DIGVIJAY CEMENT COMPANY LTD.', '130', '', '2021-01-05 09:06:44'),
(300, 'BOROSIL RENEWABLES LTD', '130', '', '2021-01-05 09:06:44'),
(301, 'MARATHWADA REFRACTORIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(302, 'TRIVENI GLASS LTD', '130', '', '2021-01-05 09:06:44'),
(303, 'ANDHRA PAPER LTD', '130', '', '2021-01-05 09:06:44'),
(304, 'BALKRISHNA INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(305, 'ORIENT PAPER & INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(306, 'CITADEL REALTY DEVELOPERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(307, 'ROLLATAINERS LTD', '130', '', '2021-01-05 09:06:44'),
(308, 'SESHASAYEE PAPER & BOARDS LTD', '130', '', '2021-01-05 09:06:44'),
(309, 'NATH INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(310, 'SINTEX INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(311, 'DCM LTD.', '130', '', '2021-01-05 09:06:44'),
(312, 'FORBES & COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(313, 'H P COTTON TEXTILE MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(314, 'KATARE SPINNING MILLS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(315, 'KESORAM INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(316, 'LAKSHMI MILLS COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(317, 'VARDHMAN TEXTILES LTD.', '130', '', '2021-01-05 09:06:44'),
(318, 'MODERN INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(319, 'PENINSULA LAND LIMITED', '130', '', '2021-01-05 09:06:44'),
(320, 'PHOENIX MILLS LIMITED', '130', '', '2021-01-05 09:06:44'),
(321, 'MARATHON NEXTGEN REALTY LTD', '130', '', '2021-01-05 09:06:44'),
(322, 'RAJA BAHADUR INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(323, 'RELIANCE CHEMOTEX INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(324, 'THE RUBY MILLS LTD.', '130', '', '2021-01-05 09:06:44'),
(325, 'SIMPLEX REALTY LTD', '130', '', '2021-01-05 09:06:44'),
(326, 'SWAN ENERGY LTD', '130', '', '2021-01-05 09:06:44'),
(327, 'VICTORIA MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(328, 'SVARAJ TRADING AND AGENCIES LTD', '130', '', '2021-01-05 09:06:44'),
(329, 'ZODIAC VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(330, 'VEER ENERGY & INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(331, 'TILAK VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(332, 'SAHARA ONE MEDIA & ENTERTAINMENT LTD.', '130', '', '2021-01-05 09:06:44'),
(333, 'BANSWARA SYNTEX LTD.', '130', '', '2021-01-05 09:06:44'),
(334, 'SHRI DINESH MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(335, 'SRF LIMITED', '130', '', '2021-01-05 09:06:44'),
(336, 'SIYARAM SILK MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(337, 'FOMENTO RESORTS & HOTELS LTD(NDA)', '130', '', '2021-01-05 09:06:44'),
(338, 'SHREE MANUFACTURING ORD SHS', '130', '', '2021-01-05 09:06:44'),
(339, 'BHARAT BIJLEE LTD.', '130', '', '2021-01-05 09:06:44'),
(340, 'ELPRO INTERNATIONAL LIMITED', '130', '', '2021-01-05 09:06:44'),
(341, 'EMCO LTD.', '130', '', '2021-01-05 09:06:44'),
(342, 'GEE LTD', '130', '', '2021-01-05 09:06:44'),
(343, 'HIND RECTIFIERS LTD', '130', '', '2021-01-05 09:06:44'),
(344, 'INDO NATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(345, 'ZENSAR TECHNOLOGIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(346, 'JYOTI LTD.', '130', '', '2021-01-05 09:06:44'),
(347, 'JSL INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(348, 'KAYCEE INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(349, 'INDOKEM LTD', '130', '', '2021-01-05 09:06:44'),
(350, 'PANASONIC ENERGY INDIA CO LTD', '130', '', '2021-01-05 09:06:44'),
(351, 'NELCO LIMITED', '130', '', '2021-01-05 09:06:44'),
(352, 'PERMANENT MAGNETS LIMITED', '130', '', '2021-01-05 09:06:44'),
(353, 'HIGH ENERGY BATTERIES (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(354, 'STANDARD BATTERIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(355, 'UNIVERSAL CABLES LTD.', '130', '', '2021-01-05 09:06:44'),
(356, 'W.S. INDUSTRIES (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(357, 'DELTON CABLES LTD', '130', '', '2021-01-05 09:06:44'),
(358, 'LAKSHMI ELECTRICAL CONTROL SYSTEMS LTD', '130', '', '2021-01-05 09:06:44'),
(359, 'MODULEX CONSTRUCTION TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(360, 'DELTA MANUFACTURING LTD', '130', '', '2021-01-05 09:06:44'),
(361, 'RUTRON INTERNATIONAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(362, 'CONFIDENCE FINANCE AND TRADING LTD', '130', '', '2021-01-05 09:06:44'),
(363, 'RAVINDRA ENERGY LTD', '130', '', '2021-01-05 09:06:44'),
(364, 'EMPOWER INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(365, 'NYSSA CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(366, 'VINADITYA TRADING CO ORD SHS', '130', '', '2021-01-05 09:06:44'),
(367, 'KRISHNA VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(368, 'UNI ABEX ALLOY PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(369, 'SARDA ENERGY & MINERALS LIMITED', '130', '', '2021-01-05 09:06:44'),
(370, 'UNIVERSAL PRIME ALUMINIUM ORD SHS', '130', '', '2021-01-05 09:06:44'),
(371, 'GALADA POWER AND TELECOMMUNICATION LTD', '130', '', '2021-01-05 09:06:44'),
(372, 'INDIAN HUME PIPE COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(373, 'INVESTMENT & PRECISION CASTINGS LTD', '130', '', '2021-01-05 09:06:44'),
(374, 'INFORMED TECHNOLOGIES INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(375, 'KAIRA CAN CO LTD', '130', '', '2021-01-05 09:06:44'),
(376, 'ORIENT ABRASIVES LTD.', '130', '', '2021-01-05 09:06:44'),
(377, 'NATIONAL STANDARD (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(378, 'DUNCAN ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(379, 'SANDUR MANGANESE & IRON ORES LTD.', '130', '', '2021-01-05 09:06:44'),
(380, 'STOVEC INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(381, 'TAYO ROLLS LTD', '130', '', '2021-01-05 09:06:44'),
(382, 'TINPLATE COMPANY OF INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(383, 'CHOLAMANDALAM FINANCIAL HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(384, 'WELCAST STEELS LTD', '130', '', '2021-01-05 09:06:44'),
(385, 'AUTOMOTIVE AXLES LTD.', '130', '', '2021-01-05 09:06:44'),
(386, 'ATLAS CYCLES (HARYANA) LTD', '130', '', '2021-01-05 09:06:44'),
(387, 'AUTOMOBILE CORP OF GOA LTD', '130', '', '2021-01-05 09:06:44'),
(388, 'SETCO AUTOMOTIVE LIMITED', '130', '', '2021-01-05 09:06:44'),
(389, 'SCOOTERS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(390, 'TALBROS AUTOMOTIVE COMPONENTS LTD', '130', '', '2021-01-05 09:06:44'),
(391, 'ZF STEERING GEAR (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(392, 'SML ISUZU LTD', '130', '', '2021-01-05 09:06:44'),
(393, 'TIL LIMITED', '130', '', '2021-01-05 09:06:44'),
(394, 'EICHER MOTORS LTD', '130', '', '2021-01-05 09:06:44'),
(395, 'ALFRED HERBERT (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(396, 'CIMMCO LTD', '130', '', '2021-01-05 09:06:44'),
(397, 'VELJAN DENISON LIMITED', '130', '', '2021-01-05 09:06:44'),
(398, 'DYNAMATIC TECHNOLOGIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(399, 'GMM PFAUDLER LTD.', '130', '', '2021-01-05 09:06:44'),
(400, 'KIRLOSKAR PNEUMATIC COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(401, 'KPT INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(402, 'LAKSHMI AUTOMATIC LOOM WORKS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(403, 'MANUGRAPH INDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(404, 'NESCO LTD.', '130', '', '2021-01-05 09:06:44'),
(405, 'INTEGRA ENGINEERING INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(406, 'REVATHI EQUIPMENT LTD', '130', '', '2021-01-05 09:06:44'),
(407, 'TEXMACO INFRASTRUCTURE & HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(408, 'WENDT INDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(409, 'AXON VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(410, 'RESPONSIVE INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(411, 'MAHARASHTRA CORPORATION ORD SHS', '130', '', '2021-01-05 09:06:44'),
(412, 'DOLAT INVESTMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(413, 'WESTLIFE DEVELOPMENT LTD', '130', '', '2021-01-05 09:06:44'),
(414, 'ZEE ENTERTAINMENT ENTERPRISES LIMITED FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(415, 'SVP GLOBAL VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(416, 'SKYLINE MILLARS LTD', '130', '', '2021-01-05 09:06:44'),
(417, 'BIMETAL BEARINGS LIMITED', '130', '', '2021-01-05 09:06:44'),
(418, 'BHARAT GEARS LTD', '130', '', '2021-01-05 09:06:44'),
(419, 'BRADY & MORRIS ENGINEERING. COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(420, 'LA TIM METAL & INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(421, 'ELECON ENGINEERING COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(422, 'GRAUER & WEIL INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(423, 'GAJRA BEVEL GEARS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(424, 'HIM TEKNOFORGE LTD', '130', '', '2021-01-05 09:06:44'),
(425, 'GABRIEL INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(426, 'HERCULES HOISTS LTD.', '130', '', '2021-01-05 09:06:44'),
(427, 'HINDUSTAN EVEREST TOOLS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(428, 'IFB INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(429, 'SINGER INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(430, 'INTERNATIONAL COMBUSTIONS INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(431, 'FEDERAL-MOGUL GOETZE (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(432, 'JOSTS ENGINEERING COMAPNY LTD', '130', '', '2021-01-05 09:06:44'),
(433, 'SCHAEFFLER INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(434, 'RANE HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(435, 'SNL BEARINGS LTD', '130', '', '2021-01-05 09:06:44'),
(436, 'JAIPAN INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(437, 'MANGAL CREDIT AND FINCORP LTD', '130', '', '2021-01-05 09:06:44'),
(438, 'TRF LTD.', '130', '', '2021-01-05 09:06:44'),
(439, 'WPIL LTD', '130', '', '2021-01-05 09:06:44'),
(440, 'KENNAMETAL INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(441, 'TRITON VALVES LIMITED', '130', '', '2021-01-05 09:06:44'),
(442, 'PRAKASH INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(443, 'ARSHIYA LTD', '130', '', '2021-01-05 09:06:44'),
(444, 'GRINDWELL NORTON LTD', '130', '', '2021-01-05 09:06:44'),
(445, 'LAKSHMI PRECISION SCREWS LTD.', '130', '', '2021-01-05 09:06:44'),
(446, 'STANROSE MAFATLAL INVESTMENT&FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(447, 'GENESYS INTERNATIONAL CORP LTD', '130', '', '2021-01-05 09:06:44'),
(448, 'PANKAJ PIYUSH TRADE AND INVESTMENT ORD SHS', '130', '', '2021-01-05 09:06:44'),
(449, 'PARNAX LAB LTD', '130', '', '2021-01-05 09:06:44'),
(450, 'VISAGAR POLYTEX LTD', '130', '', '2021-01-05 09:06:44'),
(451, 'KANANI INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(452, 'GALAXY CLOUD KITCHENS LTD', '130', '', '2021-01-05 09:06:44'),
(453, 'ARIHANT SUPERSTRUCTURES LTD', '130', '', '2021-01-05 09:06:44'),
(454, 'BLISS GVS PHARMA LIMITED', '130', '', '2021-01-05 09:06:44'),
(455, 'INEOS STYROLUTION INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(456, 'ALEMBIC LIMITED', '130', '', '2021-01-05 09:06:44'),
(457, 'AMINES AND PLASTICIZERS LTD', '130', '', '2021-01-05 09:06:44'),
(458, 'ANUH PHARMA LTD', '130', '', '2021-01-05 09:06:44'),
(459, 'MODISON METALS LTD', '130', '', '2021-01-05 09:06:44'),
(460, 'BAYER CROPSCIENCE LTD', '130', '', '2021-01-05 09:06:44'),
(461, 'CHEMO PHARMA LABORATORIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(462, 'CLARIANT CHEMICALS (INDIA) LTD.', '130', '', '2021-01-05 09:06:44'),
(463, 'COROMANDEL INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(464, 'DEEPAK NITRITE LTD.', '130', '', '2021-01-05 09:06:44'),
(465, 'DHARAMSI MORARJI CHEMICAL CO LTD', '130', '', '2021-01-05 09:06:44'),
(466, 'FERMENTA BIOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(467, 'GOCL CORP LTD', '130', '', '2021-01-05 09:06:44'),
(468, 'JAYSHREE CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(469, 'JL MORISON INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(470, 'KANORIA CHEMICALS & INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(471, 'KELTECH ENERGIES LTD', '130', '', '2021-01-05 09:06:44'),
(472, 'NITTA GELATIN INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(473, 'MP AGRO INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(474, 'ORIENTAL CARBON AND CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(475, 'PHILLIPS CARBON BLACK LTD.', '130', '', '2021-01-05 09:06:44'),
(476, 'AMAL LTD', '130', '', '2021-01-05 09:06:44'),
(477, 'POLYCHEM LTD', '130', '', '2021-01-05 09:06:44'),
(478, 'PUNJAB CHEMICALS & CROP PROTECTION LTD', '130', '', '2021-01-05 09:06:44'),
(479, 'GUJCHEM DISTILLERS INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(480, 'SADHANA NITRO CHEM LTD', '130', '', '2021-01-05 09:06:44'),
(481, 'SUDARSHAN CHEMICAL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(482, 'ULTRAMARINE & PIGMENTS LTD.', '130', '', '2021-01-05 09:06:44'),
(483, 'TRANSPEK INDUSTRY LTD', '130', '', '2021-01-05 09:06:44'),
(484, 'UNICHEM LABORATORIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(485, 'MYSORE PETRO CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(486, 'ALKYL AMINES CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(487, 'TUTICORIN ALKALI CHEMICLS ND FRTLZRS LTD', '130', '', '2021-01-05 09:06:44'),
(488, 'ASTRAZENECA PHARMA INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(489, 'PUNJAB ALKALIES & CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(490, 'TANFAC INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(491, 'GUJARAT PETROSYNTHESE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(492, 'SWADESHI INDUSTRIES & LEASING LTD', '130', '', '2021-01-05 09:06:44'),
(493, 'GUJARAT THEMIS BIOSYN LTD', '130', '', '2021-01-05 09:06:44'),
(494, 'JAYSYNTH DYESTUFF INDIA LTD(NDA)', '130', '', '2021-01-05 09:06:44'),
(495, 'MAKERS LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(496, 'J B CHEMICALS AND PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(497, 'BLUE CHIP TEX INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(498, 'JAGATJIT INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(499, 'KESAR ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(500, 'TILAKNAGAR INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(501, 'RAVALGAON SUGAR FARM LTD', '130', '', '2021-01-05 09:06:44'),
(502, 'SAKTHI SUGARS LTD', '130', '', '2021-01-05 09:06:44'),
(503, 'WALCHANDNAGAR INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(504, 'KHODAY INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(505, 'IFB AGRO INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(506, 'DHARANI SUGARS AND CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(507, 'THIRU AROORAN SUGARS LTD.', '130', '', '2021-01-05 09:06:44'),
(508, 'KOTHARI FERMENTATION & BIOCHEM LTD', '130', '', '2021-01-05 09:06:44'),
(509, 'CAPROLACTAM CHEMICALS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(510, 'G M BREWERIES LTD', '130', '', '2021-01-05 09:06:44'),
(511, 'RANA SUGARS LTD.', '130', '', '2021-01-05 09:06:44'),
(512, 'PICCADILY SUGAR AND ALLIED INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(513, 'RIGA SUGAR CO LTD', '130', '', '2021-01-05 09:06:44'),
(514, 'SOM DISTILLERIES AND BREWERIES LTD', '130', '', '2021-01-05 09:06:44'),
(515, 'CJ GELATINE PRODUCTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(516, 'AMRIT CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(517, 'ASSOCIATED ALCOHOL AND BREWERIES LTD', '130', '', '2021-01-05 09:06:44'),
(518, 'FOODS AND INNS LTD', '130', '', '2021-01-05 09:06:44'),
(519, 'KOVILPATTI LAKSHMI ROLLER FLOUR MLLS LTD', '130', '', '2021-01-05 09:06:44'),
(520, 'MILKFOOD LIMITED', '130', '', '2021-01-05 09:06:44'),
(521, 'POLSON LTD', '130', '', '2021-01-05 09:06:44'),
(522, 'WIPRO LIMITED', '130', '', '2021-01-05 09:06:44'),
(523, 'ORIENT BEVERAGES LTD', '130', '', '2021-01-05 09:06:44'),
(524, 'DHANUKA AGRITECH LTD', '130', '', '2021-01-05 09:06:44'),
(525, 'TTK HEALTH CARE LTD', '130', '', '2021-01-05 09:06:44'),
(526, 'TGV SRAAC LTD', '130', '', '2021-01-05 09:06:44'),
(527, 'LIME CHEMICALS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(528, 'KANPUR PLASTIPACK LIMITED', '130', '', '2021-01-05 09:06:44'),
(529, 'TAINWALA CHEMICALS&PLASTICS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(530, 'JAGSONPAL PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(531, 'KHAITAN CHEMICALS AND FERTILIZERS LTD', '130', '', '2021-01-05 09:06:44'),
(532, 'NATIONAL OXYGEN LTD', '130', '', '2021-01-05 09:06:44'),
(533, 'GILLETTE INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(534, 'WIRES AND FABRIKS (SA) LTD', '130', '', '2021-01-05 09:06:44'),
(535, 'ANSAL HOUSING LTD', '130', '', '2021-01-05 09:06:44'),
(536, 'MAC CHARLES (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(537, 'PIONEER INVESTCORP LIMITED', '130', '', '2021-01-05 09:06:44'),
(538, 'ASHNOOR TEXTILE MILLS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(539, 'UNITECH LIMITED', '130', '', '2021-01-05 09:06:44'),
(540, 'V I P INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(541, 'DHRUV ESTATES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(542, 'FIBERWEB (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(543, 'LKP FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(544, 'BAJAJ STEEL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(545, 'GUJARAT HOTELS LTD', '130', '', '2021-01-05 09:06:44'),
(546, 'PARAMOUNT COSMETICS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(547, 'JINDAL HOTELS LTD', '130', '', '2021-01-05 09:06:44'),
(548, 'SIMMONDS MARSHALL LTD', '130', '', '2021-01-05 09:06:44'),
(549, 'B & A LTD', '130', '', '2021-01-05 09:06:44'),
(550, 'LEDO TEA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(551, 'HAWKINS COOKER LTD', '130', '', '2021-01-05 09:06:44'),
(552, 'WARREN TEA LTD', '130', '', '2021-01-05 09:06:44'),
(553, 'COCHIN MALABAR ESTATES AND INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(554, 'IST LTD.', '130', '', '2021-01-05 09:06:44'),
(555, 'COSMO FILMS LTD', '130', '', '2021-01-05 09:06:44'),
(556, 'APOLLO HOSPITALS ENTERPRISE LIMITED', '130', '', '2021-01-05 09:06:44'),
(557, 'NITIN CASTINGS LTD', '130', '', '2021-01-05 09:06:44'),
(558, 'SMIFS CAPITAL MARKETS LTD', '130', '', '2021-01-05 09:06:44'),
(559, 'EVEREST INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(560, 'GREYCELLS EDUCATION LIMITED', '130', '', '2021-01-05 09:06:44'),
(561, 'MSR INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(562, 'AYM SYNTEX LTD', '130', '', '2021-01-05 09:06:44'),
(563, 'PANASONIC CARBON INDIA CO LTD', '130', '', '2021-01-05 09:06:44'),
(564, 'FINKURVE FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(565, 'STERLING GUARANTY AND FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(566, 'SULABH ENGINEERS AND SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(567, 'NAVNEET EDUCATION LTD', '130', '', '2021-01-05 09:06:44'),
(568, 'SATRA PROPERTIES (INDIA) LTD.', '130', '', '2021-01-05 09:06:44'),
(569, 'AUSOM ENTERPRISE LIMITED(NDA)', '130', '', '2021-01-05 09:06:44'),
(570, 'RUCHI INFRASTRUCTURE LTD.', '130', '', '2021-01-05 09:06:44'),
(571, 'LANCOR HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(572, 'INDIAN INFOTECH AND SOFTWARE LTD', '130', '', '2021-01-05 09:06:44'),
(573, 'BANAS FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(574, 'VISAKA INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(575, 'HATHWAY BHAWANI CABLETEL AND DATACOM LTD', '130', '', '2021-01-05 09:06:44'),
(576, 'PRESSMAN ADVERTISING LTD', '130', '', '2021-01-05 09:06:44'),
(577, 'GUFIC BIOSCIENCES LTD', '130', '', '2021-01-05 09:06:44'),
(578, 'PHOTON CAPITAL ADVISORS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(579, 'GOVIND RUBBER LTD', '130', '', '2021-01-05 09:06:44'),
(580, 'GRP LTD', '130', '', '2021-01-05 09:06:44'),
(581, 'INDAG RUBBER LTD', '130', '', '2021-01-05 09:06:44'),
(582, 'MM RUBBER COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(583, 'PTL ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(584, 'TVS SRICHAKRA LIMITED', '130', '', '2021-01-05 09:06:44'),
(585, 'BENARES HOTELS LTD', '130', '', '2021-01-05 09:06:44'),
(586, 'BHAGAWATI OXYGEN ORD SHS', '130', '', '2021-01-05 09:06:44'),
(587, 'BOMBAY OXYGEN CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(588, 'CRAVATEX LTD', '130', '', '2021-01-05 09:06:44'),
(589, 'BERGER PAINTS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(590, 'CAPRIHANS INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(591, 'GRAPHITE INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(592, 'ITD CEMENTATION INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(593, 'EMPIRE INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(594, 'GRAVISS HOSPITALITY LTD', '130', '', '2021-01-05 09:06:44'),
(595, 'GARWARE TECHNICAL FIBRES LTD', '130', '', '2021-01-05 09:06:44'),
(596, 'GARWARE MARINE INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(597, 'GOA CARBON LTD', '130', '', '2021-01-05 09:06:44'),
(598, 'HARDCASTLE & WAUD MANUFACTURING CO LTD', '130', '', '2021-01-05 09:06:44'),
(599, 'HEG LIMITED', '130', '', '2021-01-05 09:06:44'),
(600, 'HINDUSTAN COMPOSITES LIMITED', '130', '', '2021-01-05 09:06:44'),
(601, 'HIL LTD', '130', '', '2021-01-05 09:06:44'),
(602, 'INTERNATIONAL CONVEYORS LTD', '130', '', '2021-01-05 09:06:44'),
(603, 'JAY SHREE TEA & INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(604, 'MODERN SHARES AND STOCKBROKERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(605, 'HUHTAMAKI PPL LTD', '130', '', '2021-01-05 09:06:44'),
(606, 'PREMIER SYNTHETICS LTD FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(607, 'R J SHAH AND CO ORD SHS', '130', '', '2021-01-05 09:06:44'),
(608, 'SHALIMAR PAINTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(609, 'HINDOOSTAN MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(610, 'SUPREME INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(611, 'VST INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(612, 'SWASTI VINAYAKA SYNTHETICS LTD', '130', '', '2021-01-05 09:06:44'),
(613, 'JINDAL DRILLING AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(614, 'SAKTHI FINANCE LIMITED', '130', '', '2021-01-05 09:06:44'),
(615, 'DEWAN HOUSING FINANCE CORPORATION LTD.', '130', '', '2021-01-05 09:06:44'),
(616, 'SAT INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(617, 'SHIVA TEXYARN LTD', '130', '', '2021-01-05 09:06:44'),
(618, 'QUADRANT TELEVENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(619, 'KAMANWALA HOUSING CONSTRUCTION LTD.', '130', '', '2021-01-05 09:06:44'),
(620, 'WALL STREET FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(621, 'ANJANI FOODS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(622, 'PARSHWANATH CORPORATION ORD SHS', '130', '', '2021-01-05 09:06:44'),
(623, 'MILLENNIUM ONLINE SOLUTIONS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(624, 'CAN FIN HOMES LTD', '130', '', '2021-01-05 09:06:44'),
(625, 'IL & FS INVESTMENT MANAGERS LTD', '130', '', '2021-01-05 09:06:44'),
(626, 'SHRIRAM TRANSPORT FINANCE COMPANY LTD.', '130', '', '2021-01-05 09:06:44'),
(627, 'CHOLAMANDALAM INVESTMENT AND FIN CO LTD', '130', '', '2021-01-05 09:06:44'),
(628, 'VLS FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(629, 'INDIA CEMENTS CAPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(630, 'AD MANUM FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(631, 'MEHTA INTEGRATED FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(632, 'VIDEOCON INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(633, 'SHRISTI INFRASTRUCTURE DEVELOPT CORP LTD', '130', '', '2021-01-05 09:06:44'),
(634, 'CREST VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(635, 'VAKRANGEE LTD', '130', '', '2021-01-05 09:06:44'),
(636, 'SYLPH TECHNOLOGIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(637, 'DHARANI FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(638, 'ALEXANDER STAMPS AND COIN LTD', '130', '', '2021-01-05 09:06:44'),
(639, 'INDBANK MERCHANT BANKING SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(640, 'BHARAT BHUSHAN FINANCE & CMDTY BRKRS LTD', '130', '', '2021-01-05 09:06:44'),
(641, 'CAPITAL TRUST LTD', '130', '', '2021-01-05 09:06:44'),
(642, 'USHAKIRAN FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(643, 'VIVO BIO TECH LTD', '130', '', '2021-01-05 09:06:44'),
(644, 'VEERHEALTH CARE LTD', '130', '', '2021-01-05 09:06:44'),
(645, 'PAN INDIA CORP LTD', '130', '', '2021-01-05 09:06:44'),
(646, 'SAHARA HOUSINGFINA CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(647, 'GSB FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(648, 'MORARKA FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(649, 'MONARCH NETWORTH CAPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(650, 'PRO FIN CAPITAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(651, 'TIMES GUARANTY LTD', '130', '', '2021-01-05 09:06:44'),
(652, 'SOM DATT FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(653, 'REGENCY TRUST ORD SHS', '130', '', '2021-01-05 09:06:44'),
(654, 'AVONMORE CAPITAL & MANAGEMENT SERVCS LTD', '130', '', '2021-01-05 09:06:44'),
(655, 'YASH MANAGEMENT AND SATELLITE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(656, 'ARIHANT CAPITAL MARKETS LTD', '130', '', '2021-01-05 09:06:44'),
(657, 'ISL CONSULTING LTD', '130', '', '2021-01-05 09:06:44'),
(658, 'DCM FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(659, 'IM+ CAPITALS LTD', '130', '', '2021-01-05 09:06:44'),
(660, 'SAMBHAAV MEDIA LTD', '130', '', '2021-01-05 09:06:44'),
(661, 'SUGAL AND DAMANI SHARE BROKERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(662, 'NETTLINX LTD', '130', '', '2021-01-05 09:06:44'),
(663, 'SCAN STEELS LTD', '130', '', '2021-01-05 09:06:44'),
(664, 'GIC HOUSING FINANCE LTD.', '130', '', '2021-01-05 09:06:44'),
(665, 'MATHEW EASOW RESEARCH SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(666, 'STANDARD CAPITAL MARKETS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(667, 'PARSHARTI INVESTMENT ORD SHS', '130', '', '2021-01-05 09:06:44'),
(668, 'CUBICAL FINANCIAL SERVICES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(669, 'RELIC TECHNOLOGIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(670, 'ESCORTS FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(671, 'BAID LEASING AND FINANCE CO LTD', '130', '', '2021-01-05 09:06:44'),
(672, 'VIPUL LTD.', '130', '', '2021-01-05 09:06:44'),
(673, 'KZ LEASING AND FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(674, 'TRC FINANCIAL SERVICES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(675, 'USHDEV INTERNATIONAL LTD.', '130', '', '2021-01-05 09:06:44'),
(676, 'UGRO CAPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(677, 'SHALIBHADRA FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(678, 'UPASANA FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(679, 'MUTHOOT CAPITAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(680, 'MASTER TRUST LTD', '130', '', '2021-01-05 09:06:44'),
(681, 'CNI RESEARCH LTD', '130', '', '2021-01-05 09:06:44'),
(682, 'SARASWATI COMMERCIAL (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(683, 'ROYAL INDIA CORPORATION ORD SHS', '130', '', '2021-01-05 09:06:44'),
(684, 'LUHARUKA MEDIA & INFRA LTD', '130', '', '2021-01-05 09:06:44'),
(685, 'VISHVPRABHA TRADING ORD SHS', '130', '', '2021-01-05 09:06:44'),
(686, 'DECCAN GOLD MINES LTD', '130', '', '2021-01-05 09:06:44'),
(687, 'UPL LTD FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(688, 'CRANES SOFTWARE INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(689, 'SIGNET INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(690, 'AVANCE TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(691, 'ABANS ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(692, 'VAMA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(693, 'SUNTECK REALTY LTD', '130', '', '2021-01-05 09:06:44'),
(694, 'PRISM MEDICO AND PHARMACY LTD', '130', '', '2021-01-05 09:06:44'),
(695, 'VERITAS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(696, 'JAI CORP LTD FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(697, 'ASHIRWAD CAPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(698, 'SWASTI VINAYAKA ART & HERITAGE CORP LTD', '130', '', '2021-01-05 09:06:44'),
(699, 'MEDIA MATRIX WORLDWIDE LTD', '130', '', '2021-01-05 09:06:44'),
(700, 'N2N TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(701, 'SHIRPUR GOLD REFINERY LTD', '130', '', '2021-01-05 09:06:44'),
(702, 'BHAGYANAGAR INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(703, 'SHANTAI INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(704, 'ARAVALI SECURITIES & FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(705, 'CRESSANDA SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(706, 'STARTECK FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(707, 'SHARDUL SECURITIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(708, 'APOLLO FINVEST INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(709, 'SHRI JAGDAMBA POLYMERS LTD', '130', '', '2021-01-05 09:06:44'),
(710, 'LLOYDS METALS AND ENERGY LTD', '130', '', '2021-01-05 09:06:44'),
(711, 'SHREE GLOBAL TRADEFIN LTD', '130', '', '2021-01-05 09:06:44'),
(712, 'BETEX INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(713, 'GARNET INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(714, 'SHALIMAR PRODUCTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(715, 'DONEAR INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(716, 'SUPER SALES INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(717, 'SEQUENT SCIENTIFIC LIMITED', '130', '', '2021-01-05 09:06:44'),
(718, 'STATE TRADING CORPORATION OF INDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(719, 'KOHINOOR FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(720, 'AVANTI FEEDS LTD', '130', '', '2021-01-05 09:06:44'),
(721, 'ZODIAC JRD MKJ LTD', '130', '', '2021-01-05 09:06:44'),
(722, 'PULSAR INTERNATIONAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(723, 'KEYNOTE FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(724, 'ADANI ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(725, 'HARIA EXPORTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(726, 'BHANDARI HOSIERY EXPORTS LTD(NDA)', '130', '', '2021-01-05 09:06:44'),
(727, 'RLF ORD SHS', '130', '', '2021-01-05 09:06:44'),
(728, 'SPINE TRADERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(729, 'ORBIT EXPORTS LIMITED.', '130', '', '2021-01-05 09:06:44'),
(730, 'SAVERA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(731, 'VBC FERRO ALLOYS LIMITED', '130', '', '2021-01-05 09:06:44'),
(732, 'TATA STEEL LONG PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(733, 'NAVA BHARAT VENTURES LIMITED', '130', '', '2021-01-05 09:06:44'),
(734, 'REMI EDELSTAHL TUBULARS LTD', '130', '', '2021-01-05 09:06:44'),
(735, 'G S AUTO INTERNATIONAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(736, 'TRANS FREIGHT CONTAINERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(737, 'SHIVALIK BIMETAL CONTROLS LTD', '130', '', '2021-01-05 09:06:44'),
(738, 'GANDHI SPECIAL TUBES LTD', '130', '', '2021-01-05 09:06:44'),
(739, 'AMFORGE INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(740, 'ORICON ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(741, 'BALASORE ALLOYS LIMITED', '130', '', '2021-01-05 09:06:44'),
(742, 'NATIONAL STEEL AND AGRO INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(743, 'UTTAM GALVA STEELS LTD.', '130', '', '2021-01-05 09:06:44'),
(744, 'PENNAR INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(745, 'JAY USHIN LTD', '130', '', '2021-01-05 09:06:44'),
(746, 'STEEL STRIPS WHEELS LTD.', '130', '', '2021-01-05 09:06:44'),
(747, 'MAN INDUSTRIES (INDIA) LIMITED', '130', '', '2021-01-05 09:06:44'),
(748, 'MODERN STEEL LTD', '130', '', '2021-01-05 09:06:44'),
(749, 'TERRASCOPE VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(750, 'SYNTHIKO FOILS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(751, 'GOLKONDA ALUMINIUM EXTRUSIONS LTD', '130', '', '2021-01-05 09:06:44');
INSERT INTO `stock_details` (`id`, `stock_name`, `current_price`, `previous_day_price`, `cdate`) VALUES
(752, 'METALYST FORGINGS LTD', '130', '', '2021-01-05 09:06:44'),
(753, 'GRAND FOUNDRY LTD', '130', '', '2021-01-05 09:06:44'),
(754, 'AJMERA REALTY & INFRA INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(755, 'COCHIN MINERALS AND RUTILE LTD', '130', '', '2021-01-05 09:06:44'),
(756, 'INDIA STEEL WORKS LIMITED', '130', '', '2021-01-05 09:06:44'),
(757, 'RAJKUMAR FORGE LIMITED', '130', '', '2021-01-05 09:06:44'),
(758, 'CARBORUNDUM UNIVERSAL LTD', '130', '', '2021-01-05 09:06:44'),
(759, 'MMTC LTD', '130', '', '2021-01-05 09:06:44'),
(760, 'VALLABH STEELS LTD', '130', '', '2021-01-05 09:06:44'),
(761, 'P.M. TELELINNKS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(762, 'SMITHS & FOUNDERS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(763, 'TATA METALIKS LIMITED', '130', '', '2021-01-05 09:06:44'),
(764, 'SHAH ALLOYS LTD.', '130', '', '2021-01-05 09:06:44'),
(765, 'MONNET ISPAT & ENERGY LTD.', '130', '', '2021-01-05 09:06:44'),
(766, 'ELANGO INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(767, 'KANISHK STEEL INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(768, 'SIMPLEX CASTING LTD', '130', '', '2021-01-05 09:06:44'),
(769, 'SHREE STEEL WIRE ROPES LTD', '130', '', '2021-01-05 09:06:44'),
(770, 'GUJARAT CONTAINERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(771, 'KALYANI FORGE LTD', '130', '', '2021-01-05 09:06:44'),
(772, 'PANCHMAHAL STEEL LTD.', '130', '', '2021-01-05 09:06:44'),
(773, 'SR INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(774, 'STEELCAST LTD', '130', '', '2021-01-05 09:06:44'),
(775, 'PITTI ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(776, 'GLITTEK GRANITES LTD', '130', '', '2021-01-05 09:06:44'),
(777, 'PRADEEP METALS LTD', '130', '', '2021-01-05 09:06:44'),
(778, 'GUJARAT NATURAL RESOURCES LTD', '130', '', '2021-01-05 09:06:44'),
(779, 'REAL STRIPS LTD', '130', '', '2021-01-05 09:06:44'),
(780, 'NOVA IRON AND STEEL LTD', '130', '', '2021-01-05 09:06:44'),
(781, 'HINDUSTAN COPPER LTD.', '130', '', '2021-01-05 09:06:44'),
(782, 'SRIKALAHASTHI PIPES LTD', '130', '', '2021-01-05 09:06:44'),
(783, 'NLC INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(784, 'SPECTRA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(785, 'JMT AUTO LTD', '130', '', '2021-01-05 09:06:44'),
(786, 'K I C METALIKS LTD', '130', '', '2021-01-05 09:06:44'),
(787, 'SOLID STONE CO LTD', '130', '', '2021-01-05 09:06:44'),
(788, 'SHILP GRAVURES LTD', '130', '', '2021-01-05 09:06:44'),
(789, 'WHITE ORGANIC AGRO LTD', '130', '', '2021-01-05 09:06:44'),
(790, 'ARO GRANITE INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(791, 'DEEPAK SPINNERS LTD', '130', '', '2021-01-05 09:06:44'),
(792, 'JBF INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(793, 'LOYAL TEXTILE MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(794, 'HIMATSINGKA SEIDE LIMITED', '130', '', '2021-01-05 09:06:44'),
(795, 'BSL LTD', '130', '', '2021-01-05 09:06:44'),
(796, 'P B M POLYTEX LTD', '130', '', '2021-01-05 09:06:44'),
(797, 'ADINATH TEXTILES LTD', '130', '', '2021-01-05 09:06:44'),
(798, 'KONARK SYNTHETIC LTD', '130', '', '2021-01-05 09:06:44'),
(799, 'SURYALATA SPINNING MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(800, 'T T LTD', '130', '', '2021-01-05 09:06:44'),
(801, 'WELSPUN INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(802, 'INDIAN ACRYLICS LTD', '130', '', '2021-01-05 09:06:44'),
(803, 'GANESHA ECOSPHERE LTD', '130', '', '2021-01-05 09:06:44'),
(804, 'CEETA INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(805, 'VARDHMAN POLYTEX LTD.', '130', '', '2021-01-05 09:06:44'),
(806, 'BLACK ROSE INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(807, 'SUMEET INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(808, 'BINNY LTD', '130', '', '2021-01-05 09:06:44'),
(809, 'SANGAM (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(810, 'IKAB SECURITIES AND INVESTMENT ORD SHS', '130', '', '2021-01-05 09:06:44'),
(811, 'KUSH INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(812, 'ZENITH FIBRES LTD', '130', '', '2021-01-05 09:06:44'),
(813, 'BHILWARA SPINNERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(814, 'AARVEE DENIMS & EXPORTS LTD.', '130', '', '2021-01-05 09:06:44'),
(815, 'ASHIMA LTD', '130', '', '2021-01-05 09:06:44'),
(816, 'PIONEER EMBROIDERIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(817, 'VIPPY SPIN PRO LTD', '130', '', '2021-01-05 09:06:44'),
(818, 'RAGHUVIR SYNTHETICS LTD', '130', '', '2021-01-05 09:06:44'),
(819, 'KAMADGIRI FASHION LTD', '130', '', '2021-01-05 09:06:44'),
(820, 'OMNITEX INDUSTRIES (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(821, 'PATSPIN INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(822, 'OVERSEAS SYNTHETICS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(823, 'NEO INFRACON LTD', '130', '', '2021-01-05 09:06:44'),
(824, 'PREMIER POLYFILM LTD(NDA)', '130', '', '2021-01-05 09:06:44'),
(825, 'YARN SYNDICATE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(826, 'ATLAS JEWELLERY INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(827, 'GARWARE SYNTHETICS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(828, 'SARUP INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(829, 'MANGALAM ORGANICS LTD', '130', '', '2021-01-05 09:06:44'),
(830, 'HINDUSTAN ADHESIVES LTD', '130', '', '2021-01-05 09:06:44'),
(831, 'SRI KPR INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(832, 'JYOTI RESINS AND ADHESIVES LTD', '130', '', '2021-01-05 09:06:44'),
(833, 'MAHALAXMI RUBTECH LTD', '130', '', '2021-01-05 09:06:44'),
(834, 'OSWAL YARNS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(835, 'WINSOME TEXTILE INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(836, 'MODERN INSULATORS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(837, 'ASAHI INDIA GLASS LTD', '130', '', '2021-01-05 09:06:44'),
(838, 'MURUDESHWAR CERAMICS LTD.', '130', '', '2021-01-05 09:06:44'),
(839, 'SAINT-GOBAIN SEKURIT INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(840, 'ANANT RAJ LTD', '130', '', '2021-01-05 09:06:44'),
(841, 'MADHUSUDAN INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(842, 'RESTILE CERAMICS LTD', '130', '', '2021-01-05 09:06:44'),
(843, 'MADHAV MARBLE & GRANITES LTD.', '130', '', '2021-01-05 09:06:44'),
(844, 'HINDUSTHAN NATIONAL GLASS & INDUSTRIES', '130', '', '2021-01-05 09:06:44'),
(845, 'HALDYN GLASS LTD', '130', '', '2021-01-05 09:06:44'),
(846, 'DUROPLY INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(847, 'MANGALAM TIMBER PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(848, 'SHREYANS INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(849, 'AGIO PAPER AND INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(850, 'STAR PAPER MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(851, 'YASH PAKKA LIMITED', '130', '', '2021-01-05 09:06:44'),
(852, 'SARDA PAPERS LTD', '130', '', '2021-01-05 09:06:44'),
(853, 'NATIONAL PLYWOOD INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(854, 'ARROW GREENTECH LTD', '130', '', '2021-01-05 09:06:44'),
(855, 'VISHNU CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(856, 'JUMBO BAG LTD', '130', '', '2021-01-05 09:06:44'),
(857, 'N R AGARWAL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(858, 'SHREE RAJESHWARANAND PAPER MILLS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(859, '3P LAND HOLDINGS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(860, 'SANGAL PAPERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(861, 'VENTURA TEXTILES LTD', '130', '', '2021-01-05 09:06:44'),
(862, 'SHREE KARTHIK PAPERS LTD', '130', '', '2021-01-05 09:06:44'),
(863, 'SOUTH INDIA PAPER MILLS LIMITED', '130', '', '2021-01-05 09:06:44'),
(864, 'SCANDENT IMAGING LTD', '130', '', '2021-01-05 09:06:44'),
(865, 'VINDHYA TELELINKS LTD', '130', '', '2021-01-05 09:06:44'),
(866, 'RUTTONSHA INTERNATIONAL RECTIFIER LTD', '130', '', '2021-01-05 09:06:44'),
(867, 'ADOR WELDING LTD.', '130', '', '2021-01-05 09:06:44'),
(868, 'SALZER ELECTRONICS LTD', '130', '', '2021-01-05 09:06:44'),
(869, 'JETKING INFOTRAIN LTD', '130', '', '2021-01-05 09:06:44'),
(870, 'IND AGIV COMMERCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(871, 'APLAB LTD', '130', '', '2021-01-05 09:06:44'),
(872, 'PCS TECHNOLOGY LTD', '130', '', '2021-01-05 09:06:44'),
(873, 'USHA MARTIN LIMITED', '130', '', '2021-01-05 09:06:44'),
(874, 'SPEL SEMICONDUCTOR LIMITED', '130', '', '2021-01-05 09:06:44'),
(875, 'SUBROS LIMITED', '130', '', '2021-01-05 09:06:44'),
(876, 'HONEYWELL AUTOMATION INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(877, 'SWITCHING TECHNOLOGY GUNTHER LTD', '130', '', '2021-01-05 09:06:44'),
(878, 'LUMAX INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(879, 'DIGISPICE TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(880, 'CALCOM VISION LTD', '130', '', '2021-01-05 09:06:44'),
(881, 'B C C FUBA INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(882, 'PRECISION ELECTRONICS LTD', '130', '', '2021-01-05 09:06:44'),
(883, 'HBL POWER SYSTEMS LTD', '130', '', '2021-01-05 09:06:44'),
(884, 'S AND S POWER SWITCHGEAR ORD SHS', '130', '', '2021-01-05 09:06:44'),
(885, 'GUJARAT POLY ELECTRONICS LTD', '130', '', '2021-01-05 09:06:44'),
(886, 'GUJARAT INDUSTRIES POWER COMPANY LIMITED', '130', '', '2021-01-05 09:06:44'),
(887, 'CMI LTD', '130', '', '2021-01-05 09:06:44'),
(888, 'MOTHERSON SUMI SYSTEMS LIMITED', '130', '', '2021-01-05 09:06:44'),
(889, 'MINDTECK (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(890, 'HAVELLS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(891, 'ACI INFOCOM LTD', '130', '', '2021-01-05 09:06:44'),
(892, 'INCAP ORD SHS', '130', '', '2021-01-05 09:06:44'),
(893, 'GUJARAT INTRUX LTD', '130', '', '2021-01-05 09:06:44'),
(894, 'IGARASHI MOTORS INDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(895, 'SYMPHONY LTD', '130', '', '2021-01-05 09:06:44'),
(896, 'VINTRON INFORMATICS LTD', '130', '', '2021-01-05 09:06:44'),
(897, 'VXL INSTRUMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(898, 'SHYAM TELECOM LIMITED', '130', '', '2021-01-05 09:06:44'),
(899, 'PATELS AIRTEMP (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(900, 'BUTTERFLY GANDHIMATHI APPLIANCES LTD', '130', '', '2021-01-05 09:06:44'),
(901, 'ATHENA GLOBAL TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(902, 'DUTRON POLYMERS LTD', '130', '', '2021-01-05 09:06:44'),
(903, 'R S SOFTWARE (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(904, 'MAGNA ELECTRO CASTINGS LTD', '130', '', '2021-01-05 09:06:44'),
(905, 'LINAKS MICROELECTRONICS LTD', '130', '', '2021-01-05 09:06:44'),
(906, 'ELNET TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(907, 'ACCEL LTD', '130', '', '2021-01-05 09:06:44'),
(908, 'WEBSOL ENERGY SYSTEM LTD', '130', '', '2021-01-05 09:06:44'),
(909, 'ROTO PUMPS LIMITED', '130', '', '2021-01-05 09:06:44'),
(910, 'TTK PRESTIGE LIMITED', '130', '', '2021-01-05 09:06:44'),
(911, 'D & H INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(912, 'RAJRATAN GLOBAL WIRE LTD', '130', '', '2021-01-05 09:06:44'),
(913, 'SURANA TELECOM AND POWER LTD', '130', '', '2021-01-05 09:06:44'),
(914, 'ONWARD TECHNOLOGIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(915, 'CENTUM ELECTRONICS LTD.', '130', '', '2021-01-05 09:06:44'),
(916, 'ALFA TRANSFORMERS LTD', '130', '', '2021-01-05 09:06:44'),
(917, 'STARLITE COMPONENTS LTD', '130', '', '2021-01-05 09:06:44'),
(918, 'NHC FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(919, 'TRIGYN TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(920, 'KEI INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(921, 'IMP POWERS LTD', '130', '', '2021-01-05 09:06:44'),
(922, 'KEERTHI INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(923, 'GUJARAT SIDHEE CEMENT LTD', '130', '', '2021-01-05 09:06:44'),
(924, 'SURAJ PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(925, 'ANJANI PORTLAND CEMENT LTD', '130', '', '2021-01-05 09:06:44'),
(926, 'MODI NATURALS LIMITED', '130', '', '2021-01-05 09:06:44'),
(927, 'TASTY BITE EATABLES LTD', '130', '', '2021-01-05 09:06:44'),
(928, 'RITESH INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(929, 'AVT NATURAL PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(930, 'HINDUSTAN FOODS LTD(NDA)', '130', '', '2021-01-05 09:06:44'),
(931, 'NAHAR INDUSTRIAL ENTERPRISES LIMITED', '130', '', '2021-01-05 09:06:44'),
(932, 'VADILAL ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(933, 'VADILAL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(934, 'ASHIANA AGRO INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(935, 'ADF FOODS LTD.', '130', '', '2021-01-05 09:06:44'),
(936, 'RETRO GREEN REVOLUTION ORD SHS', '130', '', '2021-01-05 09:06:44'),
(937, 'AJANTA SOYA LTD', '130', '', '2021-01-05 09:06:44'),
(938, 'WILLIAMSON MAGAR AND CO LTD', '130', '', '2021-01-05 09:06:44'),
(939, 'RICHIRICH INVENTURES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(940, 'SUPERIOR INDUSTRIAL ENTERPRISES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(941, 'SAPTARISHI AGRO INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(942, 'JVL AGRO INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(943, 'SANWARIA CONSUMER LTD', '130', '', '2021-01-05 09:06:44'),
(944, 'PRIMA AGRO LTD', '130', '', '2021-01-05 09:06:44'),
(945, 'TARAI FOODS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(946, 'MODERN DAIRIES LTD', '130', '', '2021-01-05 09:06:44'),
(947, 'BAMBINO AGRO INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(948, 'PRIME INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(949, 'VIKAS WSP LIMITED', '130', '', '2021-01-05 09:06:44'),
(950, 'POONA DAL AND OIL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(951, 'TRANSGLOBE FOODS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(952, 'ANIK INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(953, 'KSE LTD', '130', '', '2021-01-05 09:06:44'),
(954, 'NARBADA GEMS AND JEWELLERY LTD', '130', '', '2021-01-05 09:06:44'),
(955, 'VIRAT CRANE INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(956, 'IB INFOTECH ENTERPRISES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(957, 'CHORDIA FOOD PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(958, 'CIAN AGRO INDUSTRIES&INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(959, 'TAI INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(960, 'NK INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(961, 'NCC BLUE WATER PRODUCTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(962, 'ASIAN TEA AND EXPORTS LTD', '130', '', '2021-01-05 09:06:44'),
(963, 'HERITAGE FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(964, 'SIMRAN FARMS LTD', '130', '', '2021-01-05 09:06:44'),
(965, 'DFM FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(966, 'CCL PRODUCTS (INDIA) LIMITED', '130', '', '2021-01-05 09:06:44'),
(967, 'KELLTON TECH SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(968, 'SURYO FOODS AND INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(969, 'INTEGRATED PROTEINS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(970, 'MAHAAN FOODS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(971, 'RICO AUTO INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(972, 'OMAX AUTOS LIMITED', '130', '', '2021-01-05 09:06:44'),
(973, 'MUNJAL SHOWA LIMITED', '130', '', '2021-01-05 09:06:44'),
(974, 'JAMNA AUTO INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(975, 'SUNDARAM-CLAYTON LIMITED', '130', '', '2021-01-05 09:06:44'),
(976, 'JTEKT INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(977, 'MUNJAL AUTO INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(978, 'JAY BHARAT MARUTI LTD', '130', '', '2021-01-05 09:06:44'),
(979, 'RACL GEARTECH LTD', '130', '', '2021-01-05 09:06:44'),
(980, 'SAMKRG PISTONS AND RINGS LTD', '130', '', '2021-01-05 09:06:44'),
(981, 'SICAL LOGISTICS LTD.', '130', '', '2021-01-05 09:06:44'),
(982, 'RATNAMANI METALS AND TUBES LIMITED', '130', '', '2021-01-05 09:06:44'),
(983, 'VESUVIUS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(984, 'AUTOMOTIVE STAMPINGS AND ASSEMBLIES LTD', '130', '', '2021-01-05 09:06:44'),
(985, 'ARCEE INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(986, 'ABC INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(987, 'BALURGHAT TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(988, 'SIBAR AUTO PARTS LTD', '130', '', '2021-01-05 09:06:44'),
(989, 'SHREYAS SHIPPING & LOGISTICS LTD', '130', '', '2021-01-05 09:06:44'),
(990, 'STARLOG ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(991, 'EUROTEX INDUSTRIES AND EXPORTS LTD', '130', '', '2021-01-05 09:06:44'),
(992, 'INDO COUNT INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(993, 'MARAL OVERSEAS LIMITED', '130', '', '2021-01-05 09:06:44'),
(994, 'SOMA TEXTILES AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(995, 'KAKATIYA TEXTILES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(996, 'TRIDENT LTD', '130', '', '2021-01-05 09:06:44'),
(997, 'ALOK INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(998, 'PASARI SPINNING MILLS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(999, 'AMARJOTHI SPINNING MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(1000, 'OLYMPIA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1001, 'NAGREEKA EXPORTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1002, 'SUDITI INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1003, 'SHREE BHAVYA FABRICS LTD', '130', '', '2021-01-05 09:06:44'),
(1004, 'ADITYA SPINNERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1005, 'PRIME URBAN DEVELOPMENT INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1006, 'DHANLAXMI FABRICS LTD', '130', '', '2021-01-05 09:06:44'),
(1007, 'ZODIAC CLOTHING COMPANY LTD.', '130', '', '2021-01-05 09:06:44'),
(1008, 'INANNA FASHION AND TRENDS LTD', '130', '', '2021-01-05 09:06:44'),
(1009, 'SUPER SPINNING MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(1010, 'SEASONS FURNISHINGS LTD', '130', '', '2021-01-05 09:06:44'),
(1011, 'SIL INVESTMENTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1012, 'SURYALAKSHMI COTTON MILLS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1013, 'SAMTEX FASHIONS LTD', '130', '', '2021-01-05 09:06:44'),
(1014, 'DHANALAXMI ROTO SPINNERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1015, 'DAMODAR INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1016, 'UNIROYAL INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1017, 'TATIA GLOBAL VENNTURE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1018, 'SAMBANDAM SPINNING MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(1019, 'KITEX GARMENTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1020, 'CRANEX ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1021, 'BATLIBOI LTD.', '130', '', '2021-01-05 09:06:44'),
(1022, 'AUSTIN ENGINEERING CO LTD', '130', '', '2021-01-05 09:06:44'),
(1023, 'UNITED DRILLING TOOLS LTD', '130', '', '2021-01-05 09:06:44'),
(1024, 'FLUIDOMAT LTD', '130', '', '2021-01-05 09:06:44'),
(1025, 'EMA INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1026, 'WINDSOR MACHINES LTD', '130', '', '2021-01-05 09:06:44'),
(1027, 'SHANTHI GEARS LTD.', '130', '', '2021-01-05 09:06:44'),
(1028, 'HONDA INDIA POWER PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(1029, 'HI-TECH GEARS LTD', '130', '', '2021-01-05 09:06:44'),
(1030, 'ELGI EQUIPMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(1031, 'UNITED VAN DER HORST ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1032, 'KILBURN ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(1033, 'BIRLA PRECISION TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1034, 'YUKEN INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1035, 'TIMKEN INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(1036, 'VOITH PAPER FABRICS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1037, 'ARTSON ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(1038, 'SOLITAIRE MACHINE TOOLS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1039, 'DIAMOND POWER INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(1040, 'INDSIL HYDRO POWER AND MANGANESE LTD', '130', '', '2021-01-05 09:06:44'),
(1041, 'ITL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1042, 'FRONTIER SPRINGS LTD', '130', '', '2021-01-05 09:06:44'),
(1043, 'PRAJ INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1044, 'YOGI SUNG WON INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1045, 'HLE GLASCOAT LTD', '130', '', '2021-01-05 09:06:44'),
(1046, 'GUJARAT APOLLO INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1047, 'TANEJA AEROSPACE & AVIATION LTD.', '130', '', '2021-01-05 09:06:44'),
(1048, 'CONART ENGINEERS LTD', '130', '', '2021-01-05 09:06:44'),
(1049, 'MM FORGINGS LTD', '130', '', '2021-01-05 09:06:44'),
(1050, 'MAYUR UNIQUOTERS LTD', '130', '', '2021-01-05 09:06:44'),
(1051, 'CENLUB INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1052, 'RAJOO ENGINEERS LTD', '130', '', '2021-01-05 09:06:44'),
(1053, 'JMC PROJECTS (INDIA) LIMITED', '130', '', '2021-01-05 09:06:44'),
(1054, 'VEEJAY LAKSHMI ENGINEERING WORKS LTD', '130', '', '2021-01-05 09:06:44'),
(1055, 'AHMEDABAD STEELCRAFT ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1056, 'GE T&D INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1057, 'RAM RATNA WIRES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1058, 'JAYASWAL NECO INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1059, 'KALPATARU POWER TRANSMISSION LIMITED', '130', '', '2021-01-05 09:06:44'),
(1060, 'IFM IMPEX GLOBAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1061, 'CHANDNI TEXTILES ENGINEERING INDSTRS LTD', '130', '', '2021-01-05 09:06:44'),
(1062, 'T & I GLOBAL LTD', '130', '', '2021-01-05 09:06:44'),
(1063, 'CONTROL PRINT LTD', '130', '', '2021-01-05 09:06:44'),
(1064, 'ANSAL BUILDWELL LTD.', '130', '', '2021-01-05 09:06:44'),
(1065, 'WEIZMANN LTD', '130', '', '2021-01-05 09:06:44'),
(1066, 'BN RATHI SECURITIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1067, 'RISHI TECHTEX LTD', '130', '', '2021-01-05 09:06:44'),
(1068, 'SINCLAIRS HOTELS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1069, 'SAFARI INDUSTRIES INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1070, 'FUTURISTIC SECURITIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1071, 'SANCO TRANS LTD', '130', '', '2021-01-05 09:06:44'),
(1072, 'EIH ASSOCIATED HOTELS LTD.', '130', '', '2021-01-05 09:06:44'),
(1073, 'MEDI CAPS LTD', '130', '', '2021-01-05 09:06:44'),
(1074, 'OTCO INTERNATIONAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1075, 'MORGANITE CRUCIBLE (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1076, 'ABAN OFFSHORE LTD FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(1077, 'KOKUYO CAMLIN LTD', '130', '', '2021-01-05 09:06:44'),
(1078, 'BHARAT SEATS LTD', '130', '', '2021-01-05 09:06:44'),
(1079, 'CONTINENTAL PETROLEUMS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1080, 'MACHINO PLASTICS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1081, 'PEARL POLYMERS LTD', '130', '', '2021-01-05 09:06:44'),
(1082, 'VENKY\'S (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1083, 'ADVANI HOTELS AND RESORTS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1084, 'GV FILMS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1085, 'SUPERHOUSE LTD', '130', '', '2021-01-05 09:06:44'),
(1086, 'RAMA VISION ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1087, 'TCPL PACKAGING LTD', '130', '', '2021-01-05 09:06:44'),
(1088, 'BALMER LAWRIE AND COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(1089, 'KOVAI MEDICAL CENTER AND HOSPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(1090, 'ELDECO HOUSING AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1091, 'DCM SHRIRAM LTD', '130', '', '2021-01-05 09:06:44'),
(1092, 'DCM SHRIRAM INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1093, 'MAWANA SUGARS LTD', '130', '', '2021-01-05 09:06:44'),
(1094, 'MINI DIAMONDS INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1095, 'MAHA RASHTRA APEX CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(1096, 'NILKAMAL LTD.', '130', '', '2021-01-05 09:06:44'),
(1097, 'NAHAR POLY FILMS LTD', '130', '', '2021-01-05 09:06:44'),
(1098, '3M INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1099, 'JOHNSON CONTROLS-HTCH AR CNDTNG IND LTD', '130', '', '2021-01-05 09:06:44'),
(1100, 'JM FINANCIAL LIMITED', '130', '', '2021-01-05 09:06:44'),
(1101, 'ADC INDIA COMMUNICATIONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1102, 'TAMILNADU TELECOMMUNICATIONS LTD', '130', '', '2021-01-05 09:06:44'),
(1103, 'RELIANCE INDUSTRIAL INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(1104, 'SHARP INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1105, 'LINDE INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1106, 'IND BANK HOUSING LTD', '130', '', '2021-01-05 09:06:44'),
(1107, 'LOTUS CHOCOLATES CO LTD', '130', '', '2021-01-05 09:06:44'),
(1108, 'PACIFIC INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1109, 'CHENNAI MEENAKSHI MULTISPECLTY HSPTL LTD', '130', '', '2021-01-05 09:06:44'),
(1110, 'UNIVERSAL OFFICE AUTOMATION LTD', '130', '', '2021-01-05 09:06:44'),
(1111, 'APM INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1112, 'PRECISION WIRES INDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(1113, 'KRYPTON INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1114, 'NETWORK LTD', '130', '', '2021-01-05 09:06:44'),
(1115, 'MARTIN BURN ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1116, 'FUTURE ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(1117, 'INDIAN TONERS & DEVELOPERS LTD', '130', '', '2021-01-05 09:06:44'),
(1118, 'KUNSTOFFE INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1119, 'SHIPPING CORPORATION OF INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1120, 'SIKA INTERPLANT SYSTEMS LTD', '130', '', '2021-01-05 09:06:44'),
(1121, 'ITI LIMITED', '130', '', '2021-01-05 09:06:44'),
(1122, 'DREDGING CORPORATION OF INDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(1123, 'PHAARMASIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1124, 'PODDAR HOUSING AND DEVELOPMENT LTD', '130', '', '2021-01-05 09:06:44'),
(1125, 'NATIONAL FERTILIZERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1126, 'IP RINGS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1127, 'P I INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1128, 'PLASTIBLEND INDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(1129, 'WATERBASE LTD', '130', '', '2021-01-05 09:06:44'),
(1130, 'FLEX FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(1131, 'GOLKUNDA DIAMONDS AND JEWELLERY LTD', '130', '', '2021-01-05 09:06:44'),
(1132, 'APCOTEX INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1133, 'FORTIS MALAR HOSPITALS LTD', '130', '', '2021-01-05 09:06:44'),
(1134, 'MASTEK LTD', '130', '', '2021-01-05 09:06:44'),
(1135, 'EIMCO ELECON INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1136, 'SAYAJI HOTELS LTD', '130', '', '2021-01-05 09:06:44'),
(1137, 'ASHIANA HOUSING LTD.', '130', '', '2021-01-05 09:06:44'),
(1138, 'DHUNSERI VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(1139, 'IO SYSTEM ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1140, 'MAHINDRA EPC IRRIGATION LTD', '130', '', '2021-01-05 09:06:44'),
(1141, 'SREI INFRASTRUCTURE FINANCE LIMITED', '130', '', '2021-01-05 09:06:44'),
(1142, 'MITSHI INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1143, 'MAZDA LTD', '130', '', '2021-01-05 09:06:44'),
(1144, 'VICEROY HOTELS LTD.', '130', '', '2021-01-05 09:06:44'),
(1145, 'MENON BEARINGS LTD', '130', '', '2021-01-05 09:06:44'),
(1146, 'MUKAT PIPES LTD', '130', '', '2021-01-05 09:06:44'),
(1147, 'SIMPLEX INFRASTRUCTURE LIMITED', '130', '', '2021-01-05 09:06:44'),
(1148, 'INNOVATIVE TECH PACK LTD', '130', '', '2021-01-05 09:06:44'),
(1149, 'SUPER TANNERY LTD', '130', '', '2021-01-05 09:06:44'),
(1150, 'CONSTRONICS INFRA LTD', '130', '', '2021-01-05 09:06:44'),
(1151, 'AXTAL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1152, 'PRECISION CONTAINEURS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1153, 'AVI PRODUCTS INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1154, 'MAGMA FINCORP LTD', '130', '', '2021-01-05 09:06:44'),
(1155, 'HINDUSTAN FLUOROCARBONS LTD', '130', '', '2021-01-05 09:06:44'),
(1156, 'KINGFA SCIENCE AND TECHNOLGY (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1157, 'RAMA PHOSPHATES LTD', '130', '', '2021-01-05 09:06:44'),
(1158, 'VENLON ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(1159, 'POLYPLEX CORP LTD', '130', '', '2021-01-05 09:06:44'),
(1160, 'ALBERT DAVID LTD', '130', '', '2021-01-05 09:06:44'),
(1161, 'HARYANA LEATHER CHEMICALS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1162, 'ACRYSIL LTD', '130', '', '2021-01-05 09:06:44'),
(1163, 'KABRA EXTRUSION TECHNIK LIMITED', '130', '', '2021-01-05 09:06:44'),
(1164, 'VINYL CHEMICALS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1165, 'PEE CEE COSMA SOPE LTD', '130', '', '2021-01-05 09:06:44'),
(1166, 'TCM ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1167, 'IOL CHEMICALS AND PHARMACEUTICALS LTD.', '130', '', '2021-01-05 09:06:44'),
(1168, 'KESAR PETROPRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(1169, 'VINATI ORGANICS LTD', '130', '', '2021-01-05 09:06:44'),
(1170, 'AARTI INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1171, 'WANBURY LIMITED', '130', '', '2021-01-05 09:06:44'),
(1172, 'RESONANCE SPECIALTIES LTD', '130', '', '2021-01-05 09:06:44'),
(1173, 'RASHTRIYA CHEMICALS & FERTILIZERS LTD', '130', '', '2021-01-05 09:06:44'),
(1174, 'KOPRAN LIMITED', '130', '', '2021-01-05 09:06:44'),
(1175, 'AIMCO PESTICIDES LTD', '130', '', '2021-01-05 09:06:44'),
(1176, 'GUJARAT TERCE LABORATORIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1177, 'KABRA DRUGS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1178, 'SEYA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1179, 'JAYANT AGRO-ORGANICS LTD.', '130', '', '2021-01-05 09:06:44'),
(1180, 'BCL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1181, 'SHREE HARI CHEMICALS EXPORT LTD', '130', '', '2021-01-05 09:06:44'),
(1182, 'INDO BORAX AND CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1183, 'AARTI DRUGS LTD.', '130', '', '2021-01-05 09:06:44'),
(1184, 'BODAL CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1185, 'VIMTA LABS LTD', '130', '', '2021-01-05 09:06:44'),
(1186, 'BIOFIL CHEMICALS AND PHARMACEUTICALS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1187, 'ISHITA DRUGS AND INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1188, 'MARKSANS PHARMA LIMITED', '130', '', '2021-01-05 09:06:44'),
(1189, 'UNIVERSAL STARCH CHEM ALLIED ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1190, 'AAREY DRUGS AND PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1191, 'NORRIS MEDICINES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1192, 'CAMEX LTD', '130', '', '2021-01-05 09:06:44'),
(1193, 'KAVIT INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1194, 'SYNCOM FORMULATIONS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1195, 'RIDDHI SIDDHI GLUCO BIOLS LTD.', '130', '', '2021-01-05 09:06:44'),
(1196, 'SVC INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1197, 'IPCA LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(1198, 'KILITCH DRUGS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1199, 'CORAL LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(1200, 'BACIL PHARMA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1201, 'KREBS BIOCHEMICALS AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1202, 'KMC SPECIALITY HOSPITALS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1203, 'BHASKAR AGROCHEMICALS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1204, 'SUKHJIT STARCH AND CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1205, 'NEULAND LABORATORIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1206, 'PODDAR PIGMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(1207, 'PHARMAIDS PHARMACUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1208, 'VIVID GLOBAL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1209, 'PRIYA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1210, 'TIRUPATI STARCH AND CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1211, 'JD ORGOCHEM LTD', '130', '', '2021-01-05 09:06:44'),
(1212, 'ASHOK ALCO-CHEM LTD', '130', '', '2021-01-05 09:06:44'),
(1213, 'AKSHARCHEM (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1214, 'BERYL DRUGS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1215, 'INDIAN EXTRACTIONS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1216, 'GAGAN GASES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1217, 'SHUKRA PHARMACEUTICALS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1218, 'ALUFLUORIDE LTD', '130', '', '2021-01-05 09:06:44'),
(1219, 'ARCHIT ORGANOSYS LTD', '130', '', '2021-01-05 09:06:44'),
(1220, 'INDO AMINES LTD', '130', '', '2021-01-05 09:06:44'),
(1221, 'IND SWIFT LTD.', '130', '', '2021-01-05 09:06:44'),
(1222, 'NATURAL CAPSULES LTD', '130', '', '2021-01-05 09:06:44'),
(1223, 'WELCURE DRUGS & PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1224, 'BHARAT IMMUNOLOGICALS&BIOLOGCLS CORP LTD', '130', '', '2021-01-05 09:06:44'),
(1225, 'SAVITA OIL TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1226, 'HESTER BIOSCIENCES LTD', '130', '', '2021-01-05 09:06:44'),
(1227, 'KABSONS INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1228, 'BASANT AGRO TECH INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1229, 'SANDU PHARMACEUTICALS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1230, 'NACL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1231, 'VISTA PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1232, 'SUN PHARMACEUTICAL INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1233, 'TITAN BIOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(1234, 'JENBURKT PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1235, 'HIKAL LIMITED', '130', '', '2021-01-05 09:06:44'),
(1236, 'CAPLIN POINT LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(1237, 'LINK PHARMACHEM LTD', '130', '', '2021-01-05 09:06:44'),
(1238, 'COMBAT DRUGS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1239, 'WINTAC LTD', '130', '', '2021-01-05 09:06:44'),
(1240, 'NUTRAPLUS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1241, 'EMMESSAR BIOTECH AND NUTRITION ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1242, 'NGL FINE-CHEM LTD', '130', '', '2021-01-05 09:06:44'),
(1243, 'EVEREST ORGANICS LTD', '130', '', '2021-01-05 09:06:44'),
(1244, 'AUROBINDO PHARMA LTD', '130', '', '2021-01-05 09:06:44'),
(1245, 'PHYTO CHEM INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1246, 'NATCO PHARMA LTD.', '130', '', '2021-01-05 09:06:44'),
(1247, 'DYNAMIC INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1248, 'PANAMA PETROCHEM LTD.', '130', '', '2021-01-05 09:06:44'),
(1249, 'BAL PHARMA LTD', '130', '', '2021-01-05 09:06:44'),
(1250, 'BDH INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1251, 'JAUSS POLYMERS LTD', '130', '', '2021-01-05 09:06:44'),
(1252, 'CUBEX TUBINGS LTD.', '130', '', '2021-01-05 09:06:44'),
(1253, 'POLYMECHPLAST MACHINES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1254, 'GALAXY BEARINGS LTD', '130', '', '2021-01-05 09:06:44'),
(1255, 'RAVI LEELA GRANITES LTD', '130', '', '2021-01-05 09:06:44'),
(1256, 'SHERVANI INDUSTRIAL SYNDICATE LTD', '130', '', '2021-01-05 09:06:44'),
(1257, 'SUPERTEX INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1258, 'SHETRON LIMITED', '130', '', '2021-01-05 09:06:44'),
(1259, 'TRANSGENE BIOTEK LTD', '130', '', '2021-01-05 09:06:44'),
(1260, 'MPL PLASTICS LTD', '130', '', '2021-01-05 09:06:44'),
(1261, 'NIKHIL ADHESIVES LTD', '130', '', '2021-01-05 09:06:44'),
(1262, 'MULTIBASE INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1263, 'ANDREW YULE & CO. LTD.', '130', '', '2021-01-05 09:06:44'),
(1264, 'LUDLOW JUTE & SPECIALITIES LTD', '130', '', '2021-01-05 09:06:44'),
(1265, 'ASHRAM ONLINE.COM ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1266, 'Royal Cushion Vinyl Products Ltd', '130', '', '2021-01-05 09:06:44'),
(1267, 'HITECH CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(1268, 'BLOOM DEKOR LTD', '130', '', '2021-01-05 09:06:44'),
(1269, 'FILATEX INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(1270, 'STANDARD SURFACTANTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1271, 'MERCATOR LTD', '130', '', '2021-01-05 09:06:44'),
(1272, 'MORGAN VENTURES LTD.', '130', '', '2021-01-05 09:06:44'),
(1273, 'AMRAPALI INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1274, 'PREMIER EXPLOSIVES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1275, 'MOLD-TEK TECHNOLOGIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1276, 'CRESTCHEM ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1277, 'MPHASIS LTD.', '130', '', '2021-01-05 09:06:44'),
(1278, 'MEDINOVA DIAGNOSTIC SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1279, 'DIVYASHAKTI GRANITES LTD', '130', '', '2021-01-05 09:06:44'),
(1280, 'ORIENT PRESS LTD', '130', '', '2021-01-05 09:06:44'),
(1281, 'DURO PACK ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1282, 'SWARNSARITA GEMS LTD', '130', '', '2021-01-05 09:06:44'),
(1283, 'GANESH HOUSING CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(1284, 'NMDC LIMITED', '130', '', '2021-01-05 09:06:44'),
(1285, 'PATEL INTEGRATED LOGISTICS LTD', '130', '', '2021-01-05 09:06:44'),
(1286, 'ALPHAGEO (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1287, 'RITESH PROPERTIES AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1288, 'KKALPANA INDUSTRIES (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1289, 'OK PLAY INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1290, 'KRITI INDUSTRIES INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1291, 'ASM TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1292, 'VISION CINEMAS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1293, 'WINSOME BREWERIES LTD', '130', '', '2021-01-05 09:06:44'),
(1294, 'SOUTH ASIAN ENTERPRISES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1295, 'SKY INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1296, 'PHOENIX INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(1297, 'RISHIROOP LTD', '130', '', '2021-01-05 09:06:44'),
(1298, 'PROMACT PLASTICS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1299, 'DOLPHIN MEDICAL SERVICES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1300, 'ALPINE HOUSING DEVELOPMENT CORP LTD', '130', '', '2021-01-05 09:06:44'),
(1301, 'SANGHI INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1302, 'WORLDWIDE ALUMINIUM LTD', '130', '', '2021-01-05 09:06:44'),
(1303, 'MAXIMAA SYSTEM LTD', '130', '', '2021-01-05 09:06:44'),
(1304, 'SCANPOINT GEOMATICS LTD', '130', '', '2021-01-05 09:06:44'),
(1305, 'CHOKSI LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(1306, 'COUNTRY CLUB HOSPITALITY & HOLIDAYS LTD', '130', '', '2021-01-05 09:06:44'),
(1307, 'LONGVIEW TEA COMPANY ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1308, 'ENTERPRISE INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(1309, 'TECHINDIA NIRMAN LTD', '130', '', '2021-01-05 09:06:44'),
(1310, 'TPL PLASTECH LIMITED', '130', '', '2021-01-05 09:06:44'),
(1311, 'WIM PLAST LTD', '130', '', '2021-01-05 09:06:44'),
(1312, 'LIBERTY SHOES LTD.', '130', '', '2021-01-05 09:06:44'),
(1313, 'ELECTROTHERM (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1314, 'BLUE DART EXPRESS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1315, 'EXPO GAS CONTAINERS LTD', '130', '', '2021-01-05 09:06:44'),
(1316, 'NATIONAL PLASTIC INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1317, 'MFL INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1318, 'AJWA FUN WORLD AND RESORT ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1319, 'ROYALE MANOR HOTELS AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1320, 'MIRZA INTERNATIONAL LTD.', '130', '', '2021-01-05 09:06:44'),
(1321, 'TOURISM FINANCE CORPORATION OF INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1322, 'THAKKERS DEVELOPERS LTD', '130', '', '2021-01-05 09:06:44'),
(1323, 'BHARTIYA INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(1324, 'KAMAT HOTELS INDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(1325, 'FENOPLAST LTD', '130', '', '2021-01-05 09:06:44'),
(1326, 'ECOPLAST ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1327, 'ALCHEMIST LTD.', '130', '', '2021-01-05 09:06:44'),
(1328, 'GOPALA POLYPLAST LTD', '130', '', '2021-01-05 09:06:44'),
(1329, 'NICCO PARKS & RESORTS LTD', '130', '', '2021-01-05 09:06:44'),
(1330, 'NTC INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1331, 'SANDESH LTD', '130', '', '2021-01-05 09:06:44'),
(1332, 'GARNET CONSTRUCTION LTD', '130', '', '2021-01-05 09:06:44'),
(1333, 'GOLDIAM INTERNATIONAL LTD.', '130', '', '2021-01-05 09:06:44'),
(1334, 'BRIGHT BROTHERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1335, 'CORPORATE COURIER AND CARGO ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1336, 'NARMADA GELATINES LTD', '130', '', '2021-01-05 09:06:44'),
(1337, 'PG FOILS LTD', '130', '', '2021-01-05 09:06:44'),
(1338, 'VELAN HOTELS LTD', '130', '', '2021-01-05 09:06:44'),
(1339, 'HOWARD HOTELS LTD', '130', '', '2021-01-05 09:06:44'),
(1340, 'VALIANT COMMUNICATIONS LTD.', '130', '', '2021-01-05 09:06:44'),
(1341, 'DR AGARWALS EYE HOSPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(1342, 'GREENPLY INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1343, 'UNION QUALITY PLASTICS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1344, 'PSL LIMITED', '130', '', '2021-01-05 09:06:44'),
(1345, 'SEAMEC LTD.', '130', '', '2021-01-05 09:06:44'),
(1346, 'RAGHUNATH INTERNATIONAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1347, 'CHEVIOT COMPANY LTD.', '130', '', '2021-01-05 09:06:44'),
(1348, 'DAI ICHI KARKARIA LTD', '130', '', '2021-01-05 09:06:44'),
(1349, 'RAJESWARI INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(1350, 'CONFIDENCE PETROLEUM INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1351, 'SHELTER INFRA PROJECTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1352, 'ASHIRWAD STEELS AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1353, 'BANARAS BEADS LTD', '130', '', '2021-01-05 09:06:44'),
(1354, 'AREX INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1355, 'BILCARE LTD', '130', '', '2021-01-05 09:06:44'),
(1356, 'ISF ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1357, 'RISHI LASER LTD.', '130', '', '2021-01-05 09:06:44'),
(1358, '63 MOONS TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1359, 'SARLA PERFORMANCE FIBERS LTD.', '130', '', '2021-01-05 09:06:44'),
(1360, 'HIMALYA INTERNATIONAL LTD.', '130', '', '2021-01-05 09:06:44'),
(1361, 'PADMANABH INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1362, 'TWENTY FIRST CENTURY MANAGEMENT SERVICES', '130', '', '2021-01-05 09:06:44'),
(1363, 'HARIYANA SHIP BREAKERS LTD', '130', '', '2021-01-05 09:06:44'),
(1364, 'TYROON TEA CO LTD', '130', '', '2021-01-05 09:06:44'),
(1365, 'LA OPALA RG LIMITED', '130', '', '2021-01-05 09:06:44'),
(1366, 'STYLAM INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1367, 'VENUS REMEDIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1368, 'UNIPLY DECOR LTD', '130', '', '2021-01-05 09:06:44'),
(1369, 'DHOOT INDUSTRIAL FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(1370, 'SHRI BAJRANG ALLOYS LTD', '130', '', '2021-01-05 09:06:44'),
(1371, 'URJA GLOBAL LTD', '130', '', '2021-01-05 09:06:44'),
(1372, 'ASHAPURA MINECHEM LTD', '130', '', '2021-01-05 09:06:44'),
(1373, 'SHREE PACETRONIX ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1374, 'GUJARAT ALKALIES & CHEMICALS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1375, 'INDIA CEMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(1376, 'JK TYRE & INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1377, 'MANGALORE CHEMICALS & FERTILIZERS LTD.', '130', '', '2021-01-05 09:06:44'),
(1378, 'STANDARD INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1379, 'JUBILANT LIFE SCIENCES LTD', '130', '', '2021-01-05 09:06:44'),
(1380, 'INVESTMENT TRUST OF INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1381, 'SAMYAK INTERNATIONAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1382, 'ACKNIT INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1383, 'TITAN SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(1384, 'MOHOTA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1385, 'YASHRAJ CONTAINEURS LTD', '130', '', '2021-01-05 09:06:44'),
(1386, 'LORDS ISHWAR HOTELS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1387, 'CSL FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(1388, 'SANGHVI MOVERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1389, 'SELAN EXPLORATION TECHNOLOGY LTD.', '130', '', '2021-01-05 09:06:44'),
(1390, 'FRESHTROP FRUITS LTD', '130', '', '2021-01-05 09:06:44'),
(1391, 'FAZE THREE LTD', '130', '', '2021-01-05 09:06:44'),
(1392, 'VANTAGE CORPORATE SERVICES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1393, 'RAJ PACKAGING INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1394, 'PRIVI SPECIALITY CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1395, 'NATRAJ PROTEINS LTD', '130', '', '2021-01-05 09:06:44'),
(1396, 'SAMRAT PHARMACHEM LTD', '130', '', '2021-01-05 09:06:44'),
(1397, 'NPR FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(1398, 'NILE LIMITED', '130', '', '2021-01-05 09:06:44'),
(1399, 'UDAIPUR CEMENT WORKS LTD', '130', '', '2021-01-05 09:06:44'),
(1400, 'AMCO INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1401, 'OPTIEMUS INFRACOM LTD', '130', '', '2021-01-05 09:06:44'),
(1402, 'KISAN MOULDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(1403, 'VIJAY TEXTILES LTD', '130', '', '2021-01-05 09:06:44'),
(1404, 'GARODIA CHEMICALS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1405, 'KERALA AYURVEDA LIMITED', '130', '', '2021-01-05 09:06:44'),
(1406, 'MOHIT PAPER MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(1407, 'ODYSSEY TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1408, 'SURAT TEXTILE MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(1409, 'ATHARV ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(1410, 'CHROMATIC INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1411, 'FUNDVISER CAPITAL (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1412, 'THEMIS MEDICARE LTD', '130', '', '2021-01-05 09:06:44'),
(1413, 'KALLAM TEXTILES LTD', '130', '', '2021-01-05 09:06:44'),
(1414, 'BRAWN BIOTECH ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1415, 'KINGS INFRA VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(1416, 'AURO LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(1417, 'SUVEN LIFE SCIENCES LTD.', '130', '', '2021-01-05 09:06:44'),
(1418, 'ARYAMAN FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1419, 'KAY POWER AND PAPER ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1420, 'GLOBAL CAPITAL MARKETS LTD', '130', '', '2021-01-05 09:06:44'),
(1421, 'SAINIK FINANCE & INDUSTIRES LTD', '130', '', '2021-01-05 09:06:44'),
(1422, 'RICH UNIVERSE NETWORK ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1423, 'QUANTUM DIGITAL VISION INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1424, 'KOTHARI PRODUCTS LTD.', '130', '', '2021-01-05 09:06:44'),
(1425, 'PICCADILY AGRO INDS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1426, 'CHAMAN LAL SETIA EXPORTS LTD', '130', '', '2021-01-05 09:06:44'),
(1427, 'CHANDRA PRABHU INTERNATIONAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1428, 'KIMIA BIOSCIENCES LTD', '130', '', '2021-01-05 09:06:44'),
(1429, 'HINDUSTAN TIN WORKS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1430, 'GODAVARI DRUGS LTD', '130', '', '2021-01-05 09:06:44'),
(1431, 'PREMCO GLOBAL LTD', '130', '', '2021-01-05 09:06:44'),
(1432, 'MUKESH BABU FINANCIAL SERVICES LTD(NDA)', '130', '', '2021-01-05 09:06:44'),
(1433, 'GENUS POWER INFRASTRUCTURES LTD.', '130', '', '2021-01-05 09:06:44'),
(1434, 'ASIAN OILFIELD SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1435, 'UGAR SUGAR WORKS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1436, 'ORIENT BELL LTD', '130', '', '2021-01-05 09:06:44'),
(1437, 'NRB BEARINGS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1438, 'VAMSHI RUBBER ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1439, 'NILA INFRASTRUCTURES LTD', '130', '', '2021-01-05 09:06:44'),
(1440, 'DB (INTERNATIONAL) STOCK BROKERS LTD', '130', '', '2021-01-05 09:06:44'),
(1441, 'VINYOFLEX ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1442, 'VALLABH POLY PLAST INTERNATIONAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1443, 'JINDAL CAPITAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1444, 'EPIC ENERGY LTD', '130', '', '2021-01-05 09:06:44'),
(1445, 'SUMEDHA FISCAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1446, 'CHOKSI IMAGING LTD', '130', '', '2021-01-05 09:06:44'),
(1447, 'ADOR FONTECH LTD', '130', '', '2021-01-05 09:06:44'),
(1448, 'SHIVA GLOBAL AGRO INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1449, 'SIDDHA VENTURES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1450, 'SUMERU INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1451, 'RUNGTA IRRIGATION LTD', '130', '', '2021-01-05 09:06:44'),
(1452, 'VALSON INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1453, 'SABOO SODIUM CHLORO LTD', '130', '', '2021-01-05 09:06:44'),
(1454, 'TINNA RUBBER AND INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(1455, 'VIKRAM THERMO INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1456, 'AK CAPITAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1457, 'RELAXO FOOTWEARS LTD', '130', '', '2021-01-05 09:06:44'),
(1458, 'VIRAT INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1459, 'TERAI TEA CO LTD', '130', '', '2021-01-05 09:06:44'),
(1460, 'MARG LTD.', '130', '', '2021-01-05 09:06:44'),
(1461, 'COSCO INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1462, 'SHILPA MEDICARE LTD', '130', '', '2021-01-05 09:06:44'),
(1463, 'PARAMOUNT COMMUNICATIONS LTD.', '130', '', '2021-01-05 09:06:44'),
(1464, 'NCL RESEARCH AND FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1465, 'ARCHANA SOFTWARE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1466, 'LADDERUP FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(1467, 'U Y FINCORP LTD', '130', '', '2021-01-05 09:06:44'),
(1468, 'SWASTIKA INVESTMART LTD', '130', '', '2021-01-05 09:06:44'),
(1469, 'PRIMA PLASTICS LTD', '130', '', '2021-01-05 09:06:44'),
(1470, 'TELECANOR GLOBAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1471, 'GARG FURNACE LTD', '130', '', '2021-01-05 09:06:44'),
(1472, 'SAMPRE NUTRITIONS LTD', '130', '', '2021-01-05 09:06:44'),
(1473, 'AKAR AUTO INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1474, 'VIPUL ORGANICS LTD', '130', '', '2021-01-05 09:06:44'),
(1475, 'ECO RECYCLING LTD', '130', '', '2021-01-05 09:06:44'),
(1476, 'GOODLUCK INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1477, 'GOYAL ASSOCIATES LTD', '130', '', '2021-01-05 09:06:44'),
(1478, 'ZENITH HEALTH CARE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1479, 'SUPREME HOLDINGS&HOSPITALITY (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1480, 'LYKIS LTD', '130', '', '2021-01-05 09:06:44'),
(1481, 'PRIME PROPERTY DEVELOPMENT CORP. LTD.', '130', '', '2021-01-05 09:06:44'),
(1482, 'ZENLABS ETHICA LTD', '130', '', '2021-01-05 09:06:44'),
(1483, 'JAGAN LAMPS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1484, 'ALPS INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1485, 'NOVA PUBLICATIONS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1486, 'CORAL NEWSPRINTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1487, 'STERLING TOOLS LTD', '130', '', '2021-01-05 09:06:44'),
(1488, 'K L G CAPITAL SERVICES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1489, 'DYNAMIC PORTFOLIO MANAGEMENT AND SERVICES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1490, 'CEEJAY FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(1491, 'BHAGERIA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1492, 'KRBL LTD', '130', '', '2021-01-05 09:06:44'),
(1493, 'REFNOL RESINS AND CHEMICALS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1494, 'SSPDL LTD', '130', '', '2021-01-05 09:06:44'),
(1495, 'DAIKAFFIL CHEMICALS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1496, 'CIL SECURITIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1497, 'CLIO INFOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(1498, 'CUPID LTD', '130', '', '2021-01-05 09:06:44');
INSERT INTO `stock_details` (`id`, `stock_name`, `current_price`, `previous_day_price`, `cdate`) VALUES
(1499, 'SUNSHIELD CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1500, 'HIPOLIN ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1501, 'COSBOARD INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1502, 'CHEMBOND CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1503, 'CAPITAL INDIA FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(1504, 'SUPER CROP SAFE LTD', '130', '', '2021-01-05 09:06:44'),
(1505, 'ALKA INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1506, 'N G INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1507, 'J R FOODS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1508, 'REMSONS INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1509, 'STANPACKS INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1510, 'SRI ADHIKARI BROTHERS TV NETWORK LTD', '130', '', '2021-01-05 09:06:44'),
(1511, 'RAMINFO LTD', '130', '', '2021-01-05 09:06:44'),
(1512, 'SUNIL AGRO FOODS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1513, 'DIANA TEA COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(1514, 'VIKAS ECOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(1515, 'INDIAN OIL CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(1516, 'ALFA ICA INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1517, 'SHRI KESHAV CEMENTS & INFRA LIMITED', '130', '', '2021-01-05 09:06:44'),
(1518, 'INDIA HOME LOAN LTD', '130', '', '2021-01-05 09:06:44'),
(1519, 'JPT SECURITIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1520, 'ROOPA INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1521, 'UNIQUE ORGANICS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1522, 'BALAJI AMINES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1523, 'VISAGAR FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1524, 'LIBORD SECURITIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1525, 'COMPETENT AUTOMOBILES CO LTD', '130', '', '2021-01-05 09:06:44'),
(1526, 'DHANVANTRI JEEVAN REKHA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1527, 'CONTIL INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1528, 'VIJAY SOLVEX LTD', '130', '', '2021-01-05 09:06:44'),
(1529, 'ALANKIT LTD', '130', '', '2021-01-05 09:06:44'),
(1530, 'NIHAR INFO GLOBAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1531, 'UNITED CREDIT LTD', '130', '', '2021-01-05 09:06:44'),
(1532, 'OM METALS INFRAPROJECTS LTD.', '130', '', '2021-01-05 09:06:44'),
(1533, 'RUBRA MEDICAMENTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1534, 'ISHAN DYES AND CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1535, 'GOTHI PLASCON INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1536, 'AMAZE ENTERTECH ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1537, 'PATEL ENGINEERING LIMITED', '130', '', '2021-01-05 09:06:44'),
(1538, 'VIRTUALSOFT SYSTEMS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1539, 'INANI MARBLES AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1540, 'GEMSTONE INVESTMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(1541, 'MEDICAMEN BIOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(1542, 'ALICON CASTALLOY LTD', '130', '', '2021-01-05 09:06:44'),
(1543, 'EPSOM PROPERTIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1544, 'ALFAVISION OVERSEAS INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1545, 'CATVISION LTD', '130', '', '2021-01-05 09:06:44'),
(1546, 'ABM KNOWLEDGEWARE LTD', '130', '', '2021-01-05 09:06:44'),
(1547, 'EMAMI LTD', '130', '', '2021-01-05 09:06:44'),
(1548, 'KEMISTAR CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(1549, 'PRANAVADITYA SPINNING MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(1550, 'SYSCHEM INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1551, 'ARMAN FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1552, 'MIDAS INFRA TRADE LTD', '130', '', '2021-01-05 09:06:44'),
(1553, 'DHANADA CORPORATION ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1554, 'GLANCE FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1555, 'SHILCHAR TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1556, 'NUCLEUS SOFTWARE EXPORTS LTD.', '130', '', '2021-01-05 09:06:44'),
(1557, 'COLINZ LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(1558, 'NALIN LEASE FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1559, 'MANAPPURAM FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(1560, 'R T S POWER CORPN LTD', '130', '', '2021-01-05 09:06:44'),
(1561, 'COMFORT INTECH LTD', '130', '', '2021-01-05 09:06:44'),
(1562, 'ANJANI SYNTHETICS LTD', '130', '', '2021-01-05 09:06:44'),
(1563, 'XTGLOBAL INFOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(1564, 'DECO MICA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1565, 'RASI ELECTRODES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1566, 'VICTORY PAPER AND BOARDS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1567, 'DHRUVA CAPITAL SERVICES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1568, 'LINC PEN AND PLASTICS LTD', '130', '', '2021-01-05 09:06:44'),
(1569, 'PRIMA INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1570, 'ANERI FINCAP ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1571, 'INDIA GELATINE & CHEMICALS LTD.', '130', '', '2021-01-05 09:06:44'),
(1572, 'PARAGON FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(1573, 'PRATIKSHA CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1574, 'ESHA MEDIA RESEARCH LTD', '130', '', '2021-01-05 09:06:44'),
(1575, 'VST TILLERS TRACTORS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1576, 'B2B SOFTWARE TECHNOLOGIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1577, 'RADHE DEVELOPERS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1578, 'ELIXIR CAPITAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1579, 'PANKAJ POLYMERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1580, 'PG INDUSTRY ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1581, 'NATIONAL PLASTIC TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1582, 'NATIONAL FITTINGS LTD', '130', '', '2021-01-05 09:06:44'),
(1583, 'ARTEFACT PROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(1584, 'DHP INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1585, 'RRIL LTD', '130', '', '2021-01-05 09:06:44'),
(1586, 'AVAILABLE FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1587, 'MARUTI SECURITIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1588, 'SRI HAVISHA HOSPITALITY AND INFRASTRUCTURE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1589, 'ROSELABS FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(1590, 'KRETTO SYSCON LTD', '130', '', '2021-01-05 09:06:44'),
(1591, 'ZYDUS WELLNESS LTD', '130', '', '2021-01-05 09:06:44'),
(1592, 'AUROMA COKE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1593, 'JUMP NETWORKS LTD', '130', '', '2021-01-05 09:06:44'),
(1594, 'JAIHIND PROJECTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1595, 'BERVIN INVESTMENT AND LEASING ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1596, 'GUJARAT INVESTA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1597, 'INDIA INFRASPACE LTD', '130', '', '2021-01-05 09:06:44'),
(1598, 'CONTAINER CORPORATION OF INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1599, 'EASTERN TREADS LTD', '130', '', '2021-01-05 09:06:44'),
(1600, 'PANACEA BIOTEC LIMITED', '130', '', '2021-01-05 09:06:44'),
(1601, 'PEETI SECURITIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1602, 'CHOICE INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(1603, 'SHRIRAM ASSET MANAGEMENT CO LTD', '130', '', '2021-01-05 09:06:44'),
(1604, 'SPARC SYSTEMS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1605, 'BYKE HOSPITALITY LTD', '130', '', '2021-01-05 09:06:44'),
(1606, 'ARIHANT FOUNDATIONS & HOUSING LTD.', '130', '', '2021-01-05 09:06:44'),
(1607, 'HASTI FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(1608, 'UPSURGE INVESTMENT AND FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1609, 'SOURCE NATURAL FOODS&HERBAL SUPPLEMENTS', '130', '', '2021-01-05 09:06:44'),
(1610, 'ALMONDZ GLOBAL SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(1611, 'ZICOM ELECTRONIC SECURITY SYSTEMS LTD.', '130', '', '2021-01-05 09:06:44'),
(1612, 'ALCHEMIST CORPORATION ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1613, 'TUNI TEXTILE MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(1614, 'RADIX INDUSTRIES INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1615, 'KIRAN PRINT PACK ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1616, 'NARENDRA PROPERTIES LTD', '130', '', '2021-01-05 09:06:44'),
(1617, 'MEGA CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(1618, 'TAMILNADU NEWSPRINT & PAPERS LTD', '130', '', '2021-01-05 09:06:44'),
(1619, 'ADVENT COMPUTER SERVICES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1620, 'SHAKTI PUMPS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1621, 'SUNGOLD CAPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(1622, 'SAFFRON INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1623, 'PRAKASH WOOLLEN & SYNTHETIC MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(1624, 'GOLDSTONE TECHNOLOGIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1625, 'G R M OVERSEAS LTD', '130', '', '2021-01-05 09:06:44'),
(1626, 'MOHIT INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1627, 'POLYLINK POLYMERS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1628, 'MINAXI TEXTILES LTD', '130', '', '2021-01-05 09:06:44'),
(1629, 'CONTINENTAL CONTROLS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1630, 'DUKE OFFSHORE LTD', '130', '', '2021-01-05 09:06:44'),
(1631, 'CYBELE INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1632, 'CG VAK SOFTWARE AND EXPORTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1633, 'NAVKAR BUILDERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1634, 'MADHUCON PROJECTS LTD.', '130', '', '2021-01-05 09:06:44'),
(1635, 'SYBLY INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1636, 'RAJESH EXPORTS LTD.', '130', '', '2021-01-05 09:06:44'),
(1637, 'ESAAR (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1638, 'MARIS SPINNERS LTD', '130', '', '2021-01-05 09:06:44'),
(1639, 'INDERGIRI FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1640, 'EVEREADY INDUSTRIES INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1641, 'ORIENT TRADELINK ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1642, 'VIKAS PROPPANT & GRANITE LTD', '130', '', '2021-01-05 09:06:44'),
(1643, 'ACE SOFTWARE EXPORTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1644, 'HATSUN AGRO PRODUCT LTD', '130', '', '2021-01-05 09:06:44'),
(1645, 'RISHABH DIGHA STEEL&ALLIED PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(1646, 'MARUTI INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(1647, 'AVON LIFESCIENCES LTD', '130', '', '2021-01-05 09:06:44'),
(1648, 'JINDAL WORLDWIDE LTD.', '130', '', '2021-01-05 09:06:44'),
(1649, 'SOMANY CERAMICS LTD', '130', '', '2021-01-05 09:06:44'),
(1650, 'RTCL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1651, 'CORAL INDIA FINANCE & HOUSING LTD', '130', '', '2021-01-05 09:06:44'),
(1652, 'ASHUTOSH PAPER MILLS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1653, 'VAS INFRASTRUCTURE LTD (CN)', '130', '', '2021-01-05 09:06:44'),
(1654, 'BERYL SECURITIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1655, 'RAP MEDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(1656, 'DEVINE IMPEX ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1657, 'BAMPSL SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(1658, 'GENERIC PHARMASEC LTD', '130', '', '2021-01-05 09:06:44'),
(1659, 'CAPRI GLOBAL CAPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(1660, 'F D C LTD', '130', '', '2021-01-05 09:06:44'),
(1661, 'K G PETRO CHEM LTD', '130', '', '2021-01-05 09:06:44'),
(1662, 'MEYER APPAREL LTD', '130', '', '2021-01-05 09:06:44'),
(1663, 'CENTERAC TECHNOLOGIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1664, 'COUNTRY CONDO\'S LTD', '130', '', '2021-01-05 09:06:44'),
(1665, 'LINCOLN PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1666, 'SWORD AND SHIELD PHARMA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1667, 'MARICO LIMITED FULLY PAID ORD. SHRS', '130', '', '2021-01-05 09:06:44'),
(1668, 'TOKYO FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1669, 'MAHAVIR INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1670, 'MAYUR LEATHER PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(1671, 'KARUTURI GLOBAL LIMITED', '130', '', '2021-01-05 09:06:44'),
(1672, 'PRITHVI EXCHANGE (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1673, 'KHYATI MULTIMEDIA ENTERTAINMENT ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1674, 'RAINBOW FOUNDATIONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1675, 'TRICOM FRUIT PRODUCTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1676, 'VIDHI SPECIALTY FOOD INGREDIENTS LTD', '130', '', '2021-01-05 09:06:44'),
(1677, 'BHAGIRADHA CHEMICALS & INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1678, 'PANCHSHEEL ORGANICS LTD', '130', '', '2021-01-05 09:06:44'),
(1679, 'MENON PISTONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1680, 'GREENCREST FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1681, 'GENNEX LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(1682, 'GINI SILK MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(1683, 'PRAJAY ENGINEERS SYNDICATE LTD', '130', '', '2021-01-05 09:06:44'),
(1684, 'SUN TECHNO OVERSEAS LTD', '130', '', '2021-01-05 09:06:44'),
(1685, 'APOLLO PIPES LTD', '130', '', '2021-01-05 09:06:44'),
(1686, 'UNJHA FORMULATIONS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1687, 'POLY MEDICURE LTD.', '130', '', '2021-01-05 09:06:44'),
(1688, 'KACHCHH MINERALS LTD', '130', '', '2021-01-05 09:06:44'),
(1689, 'KCL INFRA PROJECTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1690, 'ATUL AUTO LTD', '130', '', '2021-01-05 09:06:44'),
(1691, 'PRERNA INFRABUILD LTD', '130', '', '2021-01-05 09:06:44'),
(1692, 'METAL COATINGS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1693, 'GANGA PAPERS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1694, 'TIRUPATI SARJAN LTD', '130', '', '2021-01-05 09:06:44'),
(1695, 'RODIUM REALTY LTD(NDA)', '130', '', '2021-01-05 09:06:44'),
(1696, 'NAGARJUNA AGRI TECH ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1697, 'LAHOTI OVERSEAS LTD', '130', '', '2021-01-05 09:06:44'),
(1698, 'ZENITH STEEL PIPES & INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1699, 'TRINITY LEAGUE INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1700, 'ASIAN STAR CO LTD', '130', '', '2021-01-05 09:06:44'),
(1701, 'ORIENTAL VENEER PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(1702, 'JOINDRE CAPITAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1703, 'BHARAT AGRI FERT & REALTY LTD', '130', '', '2021-01-05 09:06:44'),
(1704, 'UNITECH INTERNATIONAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1705, 'SACHETA METALS LTD', '130', '', '2021-01-05 09:06:44'),
(1706, 'POPULAR ESTATE MANAGEMENT LTD', '130', '', '2021-01-05 09:06:44'),
(1707, 'PIONEER DISTILLERIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1708, 'GUJARAT METALLIC COAL AND COKE LTD', '130', '', '2021-01-05 09:06:44'),
(1709, 'KWALITY LTD', '130', '', '2021-01-05 09:06:44'),
(1710, 'REXNORD ELECTRONICS AND CONTROLS LTD', '130', '', '2021-01-05 09:06:44'),
(1711, 'SAWACA BUSINESS MACHINES LTD', '130', '', '2021-01-05 09:06:44'),
(1712, 'CCL INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(1713, 'GALLOPS ENTERPRISE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1714, 'SWAGRUHA INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(1715, 'TWINSTAR INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1716, 'AGARWAL INDUSTRIAL CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(1717, 'DHAMPURE SPECIALITY SUGARS LTD', '130', '', '2021-01-05 09:06:44'),
(1718, '52 WEEKS ENTERTAINMENT LTD', '130', '', '2021-01-05 09:06:44'),
(1719, 'GOLDEN CARPETS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1720, 'VERTEX SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(1721, 'RIBA TEXTILES LTD', '130', '', '2021-01-05 09:06:44'),
(1722, 'CHARTERED LOGISTICS LTD', '130', '', '2021-01-05 09:06:44'),
(1723, 'AMBIKA COTTON MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(1724, 'HIND ALUMINIUM INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1725, 'SPECTRUM FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(1726, 'INDUCTO STEEL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1727, 'SAM INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1728, 'SHREEVATSAA FINANCE AND LEASING ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1729, 'POOJA ENTERTAINMENT AND FILMS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1730, 'GRAVITY INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1731, 'WELLESLEY CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(1732, 'FILATEX FASHIONS LTD', '130', '', '2021-01-05 09:06:44'),
(1733, 'SINDHU TRADE LINKS LTD', '130', '', '2021-01-05 09:06:44'),
(1734, 'JAIN STUDIOS LTD', '130', '', '2021-01-05 09:06:44'),
(1735, 'UNISTAR MULTIMEDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1736, 'ZENOTECH LABORATORIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1737, 'HINDUSTAN BIO SCIENCES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1738, 'FRONTLINE CORPORATION ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1739, 'SWELECT ENERGY SYSTEMS LTD', '130', '', '2021-01-05 09:06:44'),
(1740, 'WALLFORT FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1741, 'KDDL LTD', '130', '', '2021-01-05 09:06:44'),
(1742, 'ABHINAV CAPITAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1743, 'KILPEST INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1744, 'KSS LTD', '130', '', '2021-01-05 09:06:44'),
(1745, 'VANDANA KNITWEAR ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1746, 'SAGAR PRODUCTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(1747, 'MUKAND ENGINEERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1748, 'INDO-CITY INFOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(1749, 'SBEC SUGAR LTD', '130', '', '2021-01-05 09:06:44'),
(1750, 'BRIJLAXMI LEASING AND FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1751, 'BSEL INFRASTRUCTURE REALTY LIMITED', '130', '', '2021-01-05 09:06:44'),
(1752, 'RELIABLE VENTURES INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1753, 'HEXAWARE TECHNOLOGIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1754, 'BANK OF BARODA LTD', '130', '', '2021-01-05 09:06:44'),
(1755, 'MOHITE INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1756, 'ANDHRA CEMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(1757, 'SKM EGG PRODUCTS EXPORT (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1758, 'WELSPUN CORP LTD', '130', '', '2021-01-05 09:06:44'),
(1759, 'H.S.INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1760, 'BANK OF INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1761, 'INDRAPRASTHA MEDICAL CORPORATION LIMITED', '130', '', '2021-01-05 09:06:44'),
(1762, 'GAIL (INDIA) LIMITED', '130', '', '2021-01-05 09:06:44'),
(1763, 'VAIBHAV GLOBAL LTD', '130', '', '2021-01-05 09:06:44'),
(1764, 'TRESCON LTD', '130', '', '2021-01-05 09:06:44'),
(1765, 'GUJARAT STATE FINANCIAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1766, 'JK PAPER LTD.', '130', '', '2021-01-05 09:06:44'),
(1767, 'SAREGAMA INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(1768, 'ADROIT INFOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(1769, 'CYBERTECH SYSTEMS AND SOFTWARE LTD', '130', '', '2021-01-05 09:06:44'),
(1770, 'ICICI BANK LTD', '130', '', '2021-01-05 09:06:44'),
(1771, 'CYIENT LTD', '130', '', '2021-01-05 09:06:44'),
(1772, 'ENGINEERS INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(1773, 'DHANLAXMI BANK LIMITED', '130', '', '2021-01-05 09:06:44'),
(1774, 'GUJARAT MINERAL DEVELOPMENT CORPN LTD', '130', '', '2021-01-05 09:06:44'),
(1775, 'GAYATRI SUGARS LTD', '130', '', '2021-01-05 09:06:44'),
(1776, 'INDUSIND BANK LTD', '130', '', '2021-01-05 09:06:44'),
(1777, 'INDIA TOURISM DEVELOPMENT CORP LTD', '130', '', '2021-01-05 09:06:44'),
(1778, 'JAMMU & KASHMIR BANK LIMITED', '130', '', '2021-01-05 09:06:44'),
(1779, 'CITY UNION BANK LTD', '130', '', '2021-01-05 09:06:44'),
(1780, 'ARCHIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1781, 'AXIS BANK LTD', '130', '', '2021-01-05 09:06:44'),
(1782, 'HB STOCKHOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(1783, 'SOUTH INDIAN BANK LIMITED', '130', '', '2021-01-05 09:06:44'),
(1784, 'ENERGY DEVELOPMENT COMPANY LTD.', '130', '', '2021-01-05 09:06:44'),
(1785, 'SONATA SOFTWARE LIMITED', '130', '', '2021-01-05 09:06:44'),
(1786, 'BENGAL TEA AND FABRICS LTD', '130', '', '2021-01-05 09:06:44'),
(1787, 'NATIONAL ALUMINIUM COMPANY LIMITED', '130', '', '2021-01-05 09:06:44'),
(1788, 'INDIA NIPPON ELECTRICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1789, 'NALWA SONS INVESTMENTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1790, 'APAR INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1791, 'ACCELYA SOLUTIONS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1792, 'CYBERMATE INFOTEK ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1793, 'HCL TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1794, 'TCFC FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(1795, 'GEOJIT FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1796, 'JINDAL STEEL & POWER LIMITED', '130', '', '2021-01-05 09:06:44'),
(1797, 'BLB LTD', '130', '', '2021-01-05 09:06:44'),
(1798, 'GLENMARK PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1799, 'WOCKHARDT LIMITED', '130', '', '2021-01-05 09:06:44'),
(1800, 'TATA COFFEE LTD.', '130', '', '2021-01-05 09:06:44'),
(1801, 'IND SWIFT LABORATORIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1802, 'MELSTAR INFORMATION TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1803, 'GE POWER INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1804, 'SHREE RAMA MULTI TECH LTD', '130', '', '2021-01-05 09:06:44'),
(1805, 'MAHINDRA LIFESPACE DEVELOPERS LTD.', '130', '', '2021-01-05 09:06:44'),
(1806, 'VAARAD VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(1807, 'CADILA HEALTHCARE LTD', '130', '', '2021-01-05 09:06:44'),
(1808, 'SHIVA CEMENT LTD', '130', '', '2021-01-05 09:06:44'),
(1809, 'CINEVISTA LTD', '130', '', '2021-01-05 09:06:44'),
(1810, 'INTENSE TECHNOLOGIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1811, 'DANLAW TECHNOLOGIES INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(1812, 'BIOPAC INDIA CORP LTD', '130', '', '2021-01-05 09:06:44'),
(1813, 'AJANTA PHARMA LTD', '130', '', '2021-01-05 09:06:44'),
(1814, 'HB PORTFOLIO LTD', '130', '', '2021-01-05 09:06:44'),
(1815, 'HB ESTATE DEVELOPERS LTD', '130', '', '2021-01-05 09:06:44'),
(1816, 'COMPUCOM SOFTWARE LTD', '130', '', '2021-01-05 09:06:44'),
(1817, 'IZMO LTD', '130', '', '2021-01-05 09:06:44'),
(1818, 'TVS MOTOR COMPANY LIMITED', '130', '', '2021-01-05 09:06:44'),
(1819, 'SOFTSOL INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1820, 'GATI LTD', '130', '', '2021-01-05 09:06:44'),
(1821, 'SUBEX LTD.', '130', '', '2021-01-05 09:06:44'),
(1822, 'TRANSPORT CORPORATION OF INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(1823, 'PADMALAYA TELEFILMS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1824, 'AKSH OPTIFIBRE LIMITED', '130', '', '2021-01-05 09:06:44'),
(1825, 'TRIVENI ENGINEERING & INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1826, 'MUKTA ARTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1827, 'HIT KIT GLOBAL SOLUTIONS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1828, 'NAGPUR POWER AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1829, 'DYNACONS SYSTEMS & SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(1830, 'PNB GILTS LTD.', '130', '', '2021-01-05 09:06:44'),
(1831, 'BRIGHTCOM GROUP LTD', '130', '', '2021-01-05 09:06:44'),
(1832, 'RAMCO INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1833, 'RAMCO SYSTEMS LTD', '130', '', '2021-01-05 09:06:44'),
(1834, 'TATA TELESERVICES (MAHARASHTRA) LIMITED', '130', '', '2021-01-05 09:06:44'),
(1835, 'VIRINCHI LTD', '130', '', '2021-01-05 09:06:44'),
(1836, 'WEP SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(1837, 'STERLITE TECHNOLOGIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1838, 'TIPS INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1839, 'MRO-TEK REALITY LTD', '130', '', '2021-01-05 09:06:44'),
(1840, 'FIRSTOBJECT TECHNOLOGIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1841, 'BABA ARTS LTD', '130', '', '2021-01-05 09:06:44'),
(1842, 'BALAJI TELEFILMS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1843, 'TYCHE INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1844, 'CALIFORNIA SOFTWARE COMPANY LTD.', '130', '', '2021-01-05 09:06:44'),
(1845, 'PRITISH NANDY COMMUNICATIONS LTD', '130', '', '2021-01-05 09:06:44'),
(1846, 'INDIAN OVERSEAS BANK', '130', '', '2021-01-05 09:06:44'),
(1847, 'TAJ GVK HOTELS & RESORTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1848, 'OPTO CIRCUITS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1849, 'CREATIVE EYE LTD', '130', '', '2021-01-05 09:06:44'),
(1850, 'AXISCADES ENGINEERING TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1851, 'KONNDOR INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1852, 'BIRLASOFT LTD', '130', '', '2021-01-05 09:06:44'),
(1853, 'USG TECH SOLUTIONS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1854, 'SAVEN TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1855, 'AVANTEL LTD.', '130', '', '2021-01-05 09:06:44'),
(1856, 'MOSCHIP TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1857, 'MEGASOFT LTD', '130', '', '2021-01-05 09:06:44'),
(1858, 'TRANS CORP INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(1859, 'CEREBRA INTEGRATED TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1860, 'NEXT MEDIAWORKS LTD', '130', '', '2021-01-05 09:06:44'),
(1861, 'SMARTLINK HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(1862, 'GODREJ CONSUMER PRODUCTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1863, 'GENUS PRIME INFRA LTD', '130', '', '2021-01-05 09:06:44'),
(1864, 'BF UTILITIES LIMITD', '130', '', '2021-01-05 09:06:44'),
(1865, 'UNITED SPIRITS LTD', '130', '', '2021-01-05 09:06:44'),
(1866, 'SANMIT INFRA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1867, 'OLECTRA GREENTECH LTD', '130', '', '2021-01-05 09:06:44'),
(1868, 'MPS LTD', '130', '', '2021-01-05 09:06:44'),
(1869, 'RAINBOW DENIM LTD', '130', '', '2021-01-05 09:06:44'),
(1870, 'CERA SANITARYWARE LTD', '130', '', '2021-01-05 09:06:44'),
(1871, 'T. SPIRITUAL WORLD LTD', '130', '', '2021-01-05 09:06:44'),
(1872, 'BHARTI AIRTEL LIMITED', '130', '', '2021-01-05 09:06:44'),
(1873, 'SHALIMAR WIRES INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1874, 'COMPUAGE INFOCOM LTD', '130', '', '2021-01-05 09:06:44'),
(1875, 'GULSHAN POLYOLS LTD', '130', '', '2021-01-05 09:06:44'),
(1876, 'FAZE THREE AUTOFAB LTD', '130', '', '2021-01-05 09:06:44'),
(1877, 'PONNI SUGARS (ERODE) LTD', '130', '', '2021-01-05 09:06:44'),
(1878, 'PUNJAB NATIONAL BANK', '130', '', '2021-01-05 09:06:44'),
(1879, 'ORACLE FINANCIAL SERVICES SOFTWARE LTD.', '130', '', '2021-01-05 09:06:44'),
(1880, 'HAZOOR MULTI PROJECTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(1881, 'KAMA HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(1882, 'APTECH LTD', '130', '', '2021-01-05 09:06:44'),
(1883, 'UNION BANK OF INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1884, 'UNITED BREWERIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1885, 'ISMT LTD.', '130', '', '2021-01-05 09:06:44'),
(1886, 'NOIDA TOLL BRIDGE COMPANY LIMITED', '130', '', '2021-01-05 09:06:44'),
(1887, 'GRANULES INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1888, 'CANARA BANK LTD', '130', '', '2021-01-05 09:06:44'),
(1889, 'BALMER LAWRIE INVESTMENTS LTD.', '130', '', '2021-01-05 09:06:44'),
(1890, 'POKARNA LTD', '130', '', '2021-01-05 09:06:44'),
(1891, 'DIVI\'S LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(1892, 'ASTRA MICROWAVE PRODUCTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1893, 'RADICO KHAITAN LIMITED', '130', '', '2021-01-05 09:06:44'),
(1894, 'SHRIRAM CITY UNION FINANCE LIMITED', '130', '', '2021-01-05 09:06:44'),
(1895, 'MARUTI SUZUKI INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1896, 'RAJAPALAYAM MILLS LTD.', '130', '', '2021-01-05 09:06:44'),
(1897, 'NAVIN FLUORINE INTERNATIONAL LIMITED', '130', '', '2021-01-05 09:06:44'),
(1898, 'UCO BANK', '130', '', '2021-01-05 09:06:44'),
(1899, 'B.A.G FILMS & MEDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(1900, 'JINDAL STAINLESS LTD', '130', '', '2021-01-05 09:06:44'),
(1901, 'SUPRAJIT ENGINEERING LTD.', '130', '', '2021-01-05 09:06:44'),
(1902, 'TVS ELECTRONICS LTD (MERGED)', '130', '', '2021-01-05 09:06:44'),
(1903, 'INDRAPRASTHA GAS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1904, 'TV TODAY NETWORK LTD.', '130', '', '2021-01-05 09:06:44'),
(1905, 'PALRED TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1906, 'PETRONET LNG LTD', '130', '', '2021-01-05 09:06:44'),
(1907, 'BIOCON LTD', '130', '', '2021-01-05 09:06:44'),
(1908, 'PTC INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1909, 'BANK OF MAHARASHTRA LTD', '130', '', '2021-01-05 09:06:44'),
(1910, 'RAMKRISHNA FORGINGS LTD', '130', '', '2021-01-05 09:06:44'),
(1911, 'DATAMATICS GLOBAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(1912, 'NEW DELHI TELEVISION LIMITED', '130', '', '2021-01-05 09:06:44'),
(1913, 'STRIDES PHARMA SCIENCE LTD', '130', '', '2021-01-05 09:06:44'),
(1914, 'JAIPRAKASH ASSOCIATES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1915, 'ULTRATECH CEMENT LTD', '130', '', '2021-01-05 09:06:44'),
(1916, 'MINDA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1917, 'TATA CONSULTANCY SERVICES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1918, 'COFORGE LTD', '130', '', '2021-01-05 09:06:44'),
(1919, 'GP PETROLEUMS LTD', '130', '', '2021-01-05 09:06:44'),
(1920, 'CENTURY PLYBOARDS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1921, 'WELSPUN ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(1922, 'NTPC LIMITED', '130', '', '2021-01-05 09:06:44'),
(1923, 'SAL STEEL LTD.', '130', '', '2021-01-05 09:06:44'),
(1924, 'JBM AUTO LTD', '130', '', '2021-01-05 09:06:44'),
(1925, 'DWARIKESH SUGAR INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1926, 'INDOCO REMEDIES LTD', '130', '', '2021-01-05 09:06:44'),
(1927, 'VIP CLOTHING LTD', '130', '', '2021-01-05 09:06:44'),
(1928, 'XCHANGING SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(1929, 'JET AIRWAYS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(1930, 'MORARJEE TEXTILES LTD.', '130', '', '2021-01-05 09:06:44'),
(1931, 'GATEWAY DISTRIPARKS LTD.', '130', '', '2021-01-05 09:06:44'),
(1932, 'JINDAL PHOTO LIMITED', '130', '', '2021-01-05 09:06:44'),
(1933, 'PONDY OXIDES AND CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(1934, 'JAIPRAKASH POWER VENTURES LIMITED', '130', '', '2021-01-05 09:06:44'),
(1935, '3I INFOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(1936, 'MCNALLY BHARAT ENGINEERING COMPANY LTD.', '130', '', '2021-01-05 09:06:44'),
(1937, 'GOKALDAS EXPORTS LTD.', '130', '', '2021-01-05 09:06:44'),
(1938, 'ALLSEC TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1939, 'IIFL FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(1940, 'MANGALAM DRUGS AND ORGANICS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1941, 'SHOPPERS STOP LIMITED', '130', '', '2021-01-05 09:06:44'),
(1942, 'NANDAN DENIM LTD', '130', '', '2021-01-05 09:06:44'),
(1943, 'JSW HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(1944, 'J K CEMENT LTD', '130', '', '2021-01-05 09:06:44'),
(1945, 'BEEYU OVERSEAS LTD', '130', '', '2021-01-05 09:06:44'),
(1946, 'UNIPLY INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1947, 'YES BANK LIMITED', '130', '', '2021-01-05 09:06:44'),
(1948, 'NECTAR LIFE SCIENCES LTD', '130', '', '2021-01-05 09:06:44'),
(1949, 'MSP STEEL & POWER LTD', '130', '', '2021-01-05 09:06:44'),
(1950, 'SPL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(1951, 'KARNATAKA BANK LIMITED', '130', '', '2021-01-05 09:06:44'),
(1952, 'MCLEOD RUSSEL INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(1953, 'FACOR ALLOYS LTD', '130', '', '2021-01-05 09:06:44'),
(1954, 'IDFC LTD', '130', '', '2021-01-05 09:06:44'),
(1955, 'VIVIMED LABS LTD', '130', '', '2021-01-05 09:06:44'),
(1956, 'RANE (MADRAS) LIMITED', '130', '', '2021-01-05 09:06:44'),
(1957, 'HT MEDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1958, 'SASKEN TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(1959, 'FCS SOFTWARE SOLUTIONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1960, 'SUZLON ENERGY LTD', '130', '', '2021-01-05 09:06:44'),
(1961, 'AURIONPRO SOLUTIONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1962, 'SHREE RENUKA SUGARS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1963, 'KM SUGAR MILLS LTD.', '130', '', '2021-01-05 09:06:44'),
(1964, 'BANNARI AMMAN SPINNING MILLS LTD.', '130', '', '2021-01-05 09:06:44'),
(1965, 'BOMBAY RAYON FASHIONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1966, 'SORIL INFRA RESOURCES LTD', '130', '', '2021-01-05 09:06:44'),
(1967, 'AIA ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(1968, 'EVEREST KANTO CYLINDER LTD', '130', '', '2021-01-05 09:06:44'),
(1969, 'REPRO INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(1970, 'PVR LIMITED', '130', '', '2021-01-05 09:06:44'),
(1971, 'RAMSARUP INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(1972, 'RADHA MADHAV CORPORATION LIMITED', '130', '', '2021-01-05 09:06:44'),
(1973, 'PUNJ LLOYD LIMITED', '130', '', '2021-01-05 09:06:44'),
(1974, 'BARTRONICS INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(1975, 'CELEBRITY FASHIONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1976, 'EDUCOMP SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(1977, 'NITIN SPINNERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1978, 'ROYAL ORCHID HOTELS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1979, 'ENTERTAINMENT NETWORK (INDIA) LIMITED', '130', '', '2021-01-05 09:06:44'),
(1980, 'CELLA SPACE LTD', '130', '', '2021-01-05 09:06:44'),
(1981, 'GUJARAT STATE PETRONET LTD', '130', '', '2021-01-05 09:06:44'),
(1982, 'JAGRAN PRAKASHAN LTD', '130', '', '2021-01-05 09:06:44'),
(1983, 'INOX LEISURE LTD', '130', '', '2021-01-05 09:06:44'),
(1984, 'DYNEMIC PRODUCTS LTD.', '130', '', '2021-01-05 09:06:44'),
(1985, 'GVK POWER AND INFRASTRUCTURE LTD.', '130', '', '2021-01-05 09:06:44'),
(1986, 'SADBHAV ENGINEERING LIMITED', '130', '', '2021-01-05 09:06:44'),
(1987, 'RELIANCE COMMUNICATIONS LTD', '130', '', '2021-01-05 09:06:44'),
(1988, 'SAKUMA EXPORTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1989, 'KEC INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(1990, 'GILLANDERS ARBUTHNOT AND CO LTD', '130', '', '2021-01-05 09:06:44'),
(1991, 'INDO TECH TRANSFORMERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1992, 'B.L. KASHYAP AND SONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(1993, 'MAHINDRA & MAHINDRA FIN. SERVICES LTD.', '130', '', '2021-01-05 09:06:44'),
(1994, 'VISA STEEL LIMITED', '130', '', '2021-01-05 09:06:44'),
(1995, 'NITCO LIMITED', '130', '', '2021-01-05 09:06:44'),
(1996, 'MPDLLTD', '130', '', '2021-01-05 09:06:44'),
(1997, 'SOLAR INDUSTRIES INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(1998, 'GALLANTT METAL LIMITED', '130', '', '2021-01-05 09:06:44'),
(1999, 'MALU PAPER MILLS LTD.', '130', '', '2021-01-05 09:06:44'),
(2000, 'UTTAM SUGAR MILLS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2001, 'STL GLOBAL LTD.', '130', '', '2021-01-05 09:06:44'),
(2002, 'ROHIT FERRO-TECH LIMITED', '130', '', '2021-01-05 09:06:44'),
(2003, 'KEWAL KIRAN CLOTHING LIMITED', '130', '', '2021-01-05 09:06:44'),
(2004, 'SUN TV NETWORK LTD.', '130', '', '2021-01-05 09:06:44'),
(2005, 'GODAWARI POWER AND ISPAT LIMITED', '130', '', '2021-01-05 09:06:44'),
(2006, 'R SYSTEMS INTERNATIONAL LIMITED', '130', '', '2021-01-05 09:06:44'),
(2007, 'EMKAY GLOBAL FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2008, 'LOKESH MACHINES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2009, 'KAMDHENU LTD', '130', '', '2021-01-05 09:06:44'),
(2010, 'PAUSHAK LTD', '130', '', '2021-01-05 09:06:44'),
(2011, 'INDITRADE CAPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(2012, 'UNITY INFRAPROJECTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2013, 'PRIME FOCUS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2014, 'ALLCARGO LOGISTICS LTD', '130', '', '2021-01-05 09:06:44'),
(2015, 'EASUN REYROLLE LTD.', '130', '', '2021-01-05 09:06:44'),
(2016, 'GMR INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2017, 'TECH MAHINDRA LTD', '130', '', '2021-01-05 09:06:44'),
(2018, 'MAHINDRA CIE AUTOMOTIVE LTD', '130', '', '2021-01-05 09:06:44'),
(2019, 'VOLTAMP TRANSFORMERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2020, 'ATLANTA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2021, 'DEEP ENERGY RESOURCES LTD', '130', '', '2021-01-05 09:06:44'),
(2022, 'HOV SERVICES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2023, 'ACTION CONSTRUCTION EQUIPMENT LIMITED', '130', '', '2021-01-05 09:06:44'),
(2024, 'GEECEE VENTURES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2025, 'RICHA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2026, 'GAYATRI PROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2027, 'FIEM INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2028, 'JHS SVENDGAARD LABORATORIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2029, 'DCB BANK LTD', '130', '', '2021-01-05 09:06:44'),
(2030, 'GLOBAL VECTRA HELICORP LIMITED', '130', '', '2021-01-05 09:06:44'),
(2031, 'INSPIRISYS SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2032, 'GTL INFRASTRUCTURE LIMITED', '130', '', '2021-01-05 09:06:44'),
(2033, 'SHIVAM AUTOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(2034, 'INFO EDGE (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2035, 'TORRENT POWER LTD', '130', '', '2021-01-05 09:06:44'),
(2036, 'PARSVNATH DEVELOPERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2037, 'SUTLEJ TEXTILES AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2038, 'LT FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(2039, 'SOBHA LTD', '130', '', '2021-01-05 09:06:44'),
(2040, 'RUCHIRA PAPERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2041, 'TANLA SOLUTIONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2042, 'ZEE MEDIA CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(2043, 'SITI NETWORKS LTD', '130', '', '2021-01-05 09:06:44'),
(2044, 'LUMAX AUTO TECHNOLOGIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2045, 'AUTOLINE INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2046, 'NETWORK 18 MEDIA & INVESTMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(2047, 'HUBTOWN LTD', '130', '', '2021-01-05 09:06:44'),
(2048, 'TV18 BROADCAST LTD', '130', '', '2021-01-05 09:06:44'),
(2049, 'CAMBRIDGE TECHNOLOGY ENTERPRISES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2050, 'TECHNOCRAFT INDUSTRIES (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2051, 'REDINGTON (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2052, 'AI CHAMPDANY INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2053, 'CINELINE INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2054, 'PEARL GLOBAL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2055, 'FIRSTSOURCE SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2056, 'POWER FINANCE CORPORATION LIMITED', '130', '', '2021-01-05 09:06:44'),
(2057, 'AHLUWALIA CONTRACTS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2058, 'TRANSWARRANTY FINANCE LIMITED', '130', '', '2021-01-05 09:06:44'),
(2059, 'C & C CONSTRUCTIONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2060, 'INDIAN BANK', '130', '', '2021-01-05 09:06:44'),
(2061, 'SMS PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(2062, 'ORIENTAL TRIMEX LIMITED', '130', '', '2021-01-05 09:06:44'),
(2063, 'MINDTREE LTD', '130', '', '2021-01-05 09:06:44'),
(2064, 'E-LAND APPAREL LTD', '130', '', '2021-01-05 09:06:44'),
(2065, 'VODAFONE IDEA LTD', '130', '', '2021-01-05 09:06:44'),
(2066, 'EURO CERAMICS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2067, 'RAJ TELEVISION NETWORK LIMITED', '130', '', '2021-01-05 09:06:44'),
(2068, 'PAGE INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2069, 'AMD INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(2070, 'LEHAR FOOTWEARS LTD', '130', '', '2021-01-05 09:06:44'),
(2071, 'ASTRAL POLY TECHNIK LTD', '130', '', '2021-01-05 09:06:44'),
(2072, 'INDIABULLS REAL ESTATE LTD', '130', '', '2021-01-05 09:06:44'),
(2073, 'CAMLIN FINE SCIENCES LTD', '130', '', '2021-01-05 09:06:44'),
(2074, 'ICRA LTD', '130', '', '2021-01-05 09:06:44'),
(2075, 'DISH TV INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2076, 'SAHYADRI INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2077, 'SREE RAYALASEEMA HI STRENGTH HYPO LTD', '130', '', '2021-01-05 09:06:44'),
(2078, 'FORTIS HEALTHCARE LTD', '130', '', '2021-01-05 09:06:44'),
(2079, 'TGB BANQUETS AND HOTELS LTD', '130', '', '2021-01-05 09:06:44'),
(2080, 'DELTA CORP LTD', '130', '', '2021-01-05 09:06:44'),
(2081, 'MIC ELECTRONICS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2082, 'INSECTICIDES INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2083, 'MCDOWELL HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(2084, 'ASAHI SONGWON COLORS LUCKY LAMINATES LTD', '130', '', '2021-01-05 09:06:44'),
(2085, 'NITIN FIRE PROTECTION INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2086, 'HARYANA CAPFIN ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2087, 'TIME TECHNOPLAST LIMITED', '130', '', '2021-01-05 09:06:44'),
(2088, 'HINDUJA GLOBAL SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2089, 'NELCAST LIMITED', '130', '', '2021-01-05 09:06:44'),
(2090, 'MEGHMANI ORGANICS LTD.', '130', '', '2021-01-05 09:06:44'),
(2091, 'V2 RETAIL LTD', '130', '', '2021-01-05 09:06:44'),
(2092, 'DLF LTD', '130', '', '2021-01-05 09:06:44'),
(2093, 'TARMAT LTD', '130', '', '2021-01-05 09:06:44'),
(2094, 'ANKIT METAL & POWER LTD', '130', '', '2021-01-05 09:06:44'),
(2095, 'SUN PHARMA ADVANCED RESEARCH CO LTD', '130', '', '2021-01-05 09:06:44'),
(2096, 'HOUSING DEVELOPMENT & INFRASTRUCTURE', '130', '', '2021-01-05 09:06:44'),
(2097, 'SURYACHAKRA POWER CORPORATION LIMITED', '130', '', '2021-01-05 09:06:44'),
(2098, 'ALLIED DIGITAL SERVICES LTD.', '130', '', '2021-01-05 09:06:44'),
(2099, 'ALPA LABORATORIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2100, 'SIR SHADI LAL ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(2101, 'OMAXE LTD', '130', '', '2021-01-05 09:06:44'),
(2102, 'REFEX INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2103, 'CENTRAL BANK OF INDIA', '130', '', '2021-01-05 09:06:44'),
(2104, 'SEL MANUFACTURING COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2105, 'ASIAN GRANITO INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2106, 'KPR MILL LTD', '130', '', '2021-01-05 09:06:44'),
(2107, 'TAKE SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2108, 'PURAVANKARA LTD', '130', '', '2021-01-05 09:06:44'),
(2109, 'MOTILAL OSWAL FINANCIAL SERVICES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2110, 'VTM LTD(NDA)', '130', '', '2021-01-05 09:06:44'),
(2111, 'INDOWIND ENERGY LIMITED', '130', '', '2021-01-05 09:06:44'),
(2112, 'MAGNUM VENTURES LTD.', '130', '', '2021-01-05 09:06:44'),
(2113, 'POWER GRID CORPORATION OF INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2114, 'KAVERI SEED COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2115, 'PAISALO DIGITAL LTD', '130', '', '2021-01-05 09:06:44'),
(2116, 'SUPREME INFRASTRUCTURE INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2117, 'MAAN ALUMINIUM LTD', '130', '', '2021-01-05 09:06:44'),
(2118, 'IL&FS ENGG & CONST COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2119, 'PARLE INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2120, 'ARCOTECH LIMITED', '130', '', '2021-01-05 09:06:44'),
(2121, 'RELIGARE ENTERPRISES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2122, 'BARAK VALLEY CEMENTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2123, 'RATHI BARS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2124, 'ADANI PORTS AND SPECIAL ECONOMIC ZONE LD', '130', '', '2021-01-05 09:06:44'),
(2125, 'EDELWEISS FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2126, 'RENAISSANCE GLOBAL LTD', '130', '', '2021-01-05 09:06:44'),
(2127, 'KOLTE-PATIL DEVELOPERS LTD', '130', '', '2021-01-05 09:06:44'),
(2128, 'KAUSHALYA INFRASTRUCTURE DEV CORP LTD', '130', '', '2021-01-05 09:06:44'),
(2129, 'JYOTHY LABS LTD', '130', '', '2021-01-05 09:06:44'),
(2130, 'ECLERX SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2131, 'TRANSFORMERS & RECTIFIERS (INDIA) LTD.', '130', '', '2021-01-05 09:06:44'),
(2132, 'BRIGADE ENTERPRISES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2133, 'BGR ENERGY SYSTEMS LTD', '130', '', '2021-01-05 09:06:44'),
(2134, 'BURNPUR CEMENT LTD', '130', '', '2021-01-05 09:06:44'),
(2135, 'MANAKSIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2136, 'PORWAL AUTO COMPONENTS LTD', '130', '', '2021-01-05 09:06:44'),
(2137, 'PPAP AUTOMOTIVE LTD', '130', '', '2021-01-05 09:06:44'),
(2138, 'ARIES AGRO LTD', '130', '', '2021-01-05 09:06:44'),
(2139, 'KUANTUM PAPERS LTD', '130', '', '2021-01-05 09:06:44'),
(2140, 'RELIANCE POWER LTD', '130', '', '2021-01-05 09:06:44'),
(2141, 'J KUMAR INFRAPROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2142, 'CORDS CABLE INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(2143, 'KNR CONSTRUCTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2144, 'ONMOBILE GLOBAL LIMITED', '130', '', '2021-01-05 09:06:44'),
(2145, 'SHRIRAM EPC LIMITED', '130', '', '2021-01-05 09:06:44'),
(2146, 'BANG OVERSEAS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2147, 'IRB INFRASTRUCTURE DEVELOPERS LTD', '130', '', '2021-01-05 09:06:44'),
(2148, 'GSS INFOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(2149, 'NAHAR CAPITAL & FINANCIAL SERVICES LTD.', '130', '', '2021-01-05 09:06:44'),
(2150, 'V GUARD INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2151, 'REC LTD', '130', '', '2021-01-05 09:06:44'),
(2152, 'GOKAK TEXTILES LTD', '130', '', '2021-01-05 09:06:44'),
(2153, 'GAMMON INFRASTRUCTURE PROJECTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2154, 'INDIABULLS VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(2155, 'TITAGARH WAGONS LTD', '130', '', '2021-01-05 09:06:44'),
(2156, 'KIRI INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2157, 'SANKHYA INFOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(2158, 'ADITYA BIRLA MONEY LTD', '130', '', '2021-01-05 09:06:44'),
(2159, 'AISHWARYA TECHNOLOGIES AND TELECOM LTD', '130', '', '2021-01-05 09:06:44'),
(2160, 'JAI BALAJI INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(2161, 'BAJAJ AUTO LTD', '130', '', '2021-01-05 09:06:44'),
(2162, 'BAJAJ FINSERV LTD', '130', '', '2021-01-05 09:06:44'),
(2163, 'GOKUL REFOILS & SOLVENT LIMITED.', '130', '', '2021-01-05 09:06:44'),
(2164, 'RPG LIFE SCIENCES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2165, 'KOTAK MAHINDRA ETF', '130', '', '2021-01-05 09:06:44'),
(2166, 'NIRAJ CEMENT STRUCTURALS LTD.', '130', '', '2021-01-05 09:06:44'),
(2167, 'RANE BRAKE LININGS LTD', '130', '', '2021-01-05 09:06:44'),
(2168, 'RANE ENGINE VALVE LTD', '130', '', '2021-01-05 09:06:44'),
(2169, 'METKORE ALLOYS & INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2170, 'SEZAL GLASS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2171, 'ARCHIDPLY INDUSTRIES LIMITED.', '130', '', '2021-01-05 09:06:44'),
(2172, 'KSK ENERGY VENTURES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2173, 'LOTUS EYE HOSPITAL AND INSTITUTE LTD', '130', '', '2021-01-05 09:06:44'),
(2174, 'SOMI CONVEYOR BELTINGS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2175, 'LGB FORGE LIMITED', '130', '', '2021-01-05 09:06:44'),
(2176, 'OCL IRON AND STEEL LIMITED', '130', '', '2021-01-05 09:06:44'),
(2177, 'SICAGEN INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2178, '20 MICRONS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2179, 'WABCO INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2180, 'ALKALI METALS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2181, 'ISGEC HEAVY ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(2182, 'INDIAN METALS & FERRO ALLOYS LTD', '130', '', '2021-01-05 09:06:44'),
(2183, 'VEDVAAG SYSTEMS LTD', '130', '', '2021-01-05 09:06:44'),
(2184, 'MOLD-TEK PACKAGING LTD', '130', '', '2021-01-05 09:06:44'),
(2185, 'MAHINDRA HOLIDAYS & RESORTS INDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(2186, 'EXCEL REALTY N INFRA LTD', '130', '', '2021-01-05 09:06:44'),
(2187, 'BENGAL & ASSAM COMPANY LIMITED', '130', '', '2021-01-05 09:06:44'),
(2188, 'ADANI POWER LTD', '130', '', '2021-01-05 09:06:44'),
(2189, 'NHPC LIMITED', '130', '', '2021-01-05 09:06:44'),
(2190, 'SURYAAMBA SPINNING MILLS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2191, 'GLOBUS SPIRITS LTD', '130', '', '2021-01-05 09:06:44'),
(2192, 'OIL INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2193, 'RELIANCE NAVAL AND ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(2194, 'BHILWARA TECHNICAL TEXTILES LTD', '130', '', '2021-01-05 09:06:44'),
(2195, 'EXPLEO SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2196, 'RATTANINDIA POWER LTD', '130', '', '2021-01-05 09:06:44'),
(2197, 'DEN NETWORKS LTD', '130', '', '2021-01-05 09:06:44'),
(2198, 'ASTEC LIFESCIENCES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2199, 'COX & KINGS LTD', '130', '', '2021-01-05 09:06:44'),
(2200, 'D LINK INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2201, 'JSW ENERGY LTD', '130', '', '2021-01-05 09:06:44'),
(2202, 'ESSAR SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(2203, 'GODREJ PROPERTIES LTD', '130', '', '2021-01-05 09:06:44'),
(2204, 'DB CORP LTD', '130', '', '2021-01-05 09:06:44'),
(2205, 'MBL INFRASTRUCTURES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2206, 'JUBILANT FOODWORKS LTD', '130', '', '2021-01-05 09:06:44'),
(2207, 'VASCON ENGINEERS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2208, 'SYNCOM HEALTHCARE LIMITED', '130', '', '2021-01-05 09:06:44'),
(2209, 'THANGAMAYIL JEWELLERY LIMITED', '130', '', '2021-01-05 09:06:44'),
(2210, 'D B REALTY LTD', '130', '', '2021-01-05 09:06:44'),
(2211, 'EMMBI INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2212, 'HATHWAY CABLE AND DATACOM LIMITED', '130', '', '2021-01-05 09:06:44'),
(2213, 'ARSS INFRASTRUCTURE PROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2214, 'TEXMO PIPES AND PRODUCTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2215, 'SUNDARAM MULTI PAP LTD', '130', '', '2021-01-05 09:06:44'),
(2216, 'COROMANDEL ENGINEERING CO LTD', '130', '', '2021-01-05 09:06:44'),
(2217, 'ROSSELL INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2218, 'MAN INFRACONSTRUCTION LTD.', '130', '', '2021-01-05 09:06:44'),
(2219, 'TAMBOLI CAPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(2220, 'INVESCO INDIA GOLD EXCHANGE TRADED FUND', '130', '', '2021-01-05 09:06:44'),
(2221, 'DQ ENTERTAINMENT INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(2222, 'IL&FS TRANSPORTATION NETWORKS LTD', '130', '', '2021-01-05 09:06:44'),
(2223, 'PRADIP OVERSEAS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2224, 'PERSISTENT SYSTEMS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2225, 'INTRASOFT TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2226, 'GOENKA DIAMOND AND JEWELS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2227, 'KCP SUGAR AND INDUSTRIES CORP. LTD.', '130', '', '2021-01-05 09:06:44'),
(2228, 'KIRLOSKAR ELECTRIC COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2229, 'TALWALKARS BETTER VALUE FITNESS LTD', '130', '', '2021-01-05 09:06:44'),
(2230, 'NEL HOLDINGS SOUTH LTD', '130', '', '2021-01-05 09:06:44'),
(2231, 'GB GLOBAL LTD', '130', '', '2021-01-05 09:06:44'),
(2232, 'SJVN LTD', '130', '', '2021-01-05 09:06:44'),
(2233, 'JAYPEE INFRATECH LIMITED', '130', '', '2021-01-05 09:06:44'),
(2234, 'EMAMI PAPER MILLS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2235, 'KRITI NUTRIENTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2236, 'PARABOLIC DRUGS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2237, 'GKB OPHTHALMICS LTD', '130', '', '2021-01-05 09:06:44'),
(2238, 'TECHNOFAB ENGINEERING LTD', '130', '', '2021-01-05 09:06:44');
INSERT INTO `stock_details` (`id`, `stock_name`, `current_price`, `previous_day_price`, `cdate`) VALUES
(2239, 'HINDUSTAN MEDIA VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(2240, 'EMAMI REALTY LTD', '130', '', '2021-01-05 09:06:44'),
(2241, 'ASIAN HOTELS WEST LTD', '130', '', '2021-01-05 09:06:44'),
(2242, 'ASIAN HOTELS EAST LTD', '130', '', '2021-01-05 09:06:44'),
(2243, 'BAJAJ CONSUMER CARE LTD', '130', '', '2021-01-05 09:06:44'),
(2244, 'PRAKASH STEELAGE LIMITED', '130', '', '2021-01-05 09:06:44'),
(2245, 'GUJARAT PIPAVAV PORT LTD', '130', '', '2021-01-05 09:06:44'),
(2246, 'WELSPUN INVESTMENTS AND COMMERCIALS LTD', '130', '', '2021-01-05 09:06:44'),
(2247, 'INDOSOLAR LIMITED', '130', '', '2021-01-05 09:06:44'),
(2248, 'SASTASUNDAR VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(2249, 'CAREER POINT LTD', '130', '', '2021-01-05 09:06:44'),
(2250, 'EROS INTERNATIONAL MEDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2251, 'RAMKY INFRASTRUCTURE LIMITED', '130', '', '2021-01-05 09:06:44'),
(2252, 'ORIENT GREEN POWER COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2253, 'GALLANTT ISPAT LIMITED', '130', '', '2021-01-05 09:06:44'),
(2254, 'CANTABIL RETAIL INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2255, 'VA TECH WABAG LTD', '130', '', '2021-01-05 09:06:44'),
(2256, 'BEDMUTHA INDUSTRIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2257, 'ASHOKA BUILDCON LTD', '130', '', '2021-01-05 09:06:44'),
(2258, 'COMERIAL ENGIRS & BDY BLDS CO LIMITED', '130', '', '2021-01-05 09:06:44'),
(2259, 'OBEROI REALTY LIMITED.', '130', '', '2021-01-05 09:06:44'),
(2260, 'PRESTIGE ESTATES PROJECTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2261, 'GYSCOAL ALLOYS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2262, 'COAL INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2263, 'GRAVITA INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2264, 'RPP INFRA PROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2265, 'RDB REALTY & INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2266, 'MOIL LTD', '130', '', '2021-01-05 09:06:44'),
(2267, 'ZEE LEARN LTD', '130', '', '2021-01-05 09:06:44'),
(2268, 'KESAR TERMINALS & INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2269, 'A2Z INFRA ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(2270, 'KIRLOSKAR OIL ENGINES LTD', '130', '', '2021-01-05 09:06:44'),
(2271, 'RAVIKUMAR DISTILLERIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2272, 'PUNJAB AND SIND BANK', '130', '', '2021-01-05 09:06:44'),
(2273, 'FUTURE MARKET NETWORKS LTD', '130', '', '2021-01-05 09:06:44'),
(2274, 'SURANA SOLAR LTD', '130', '', '2021-01-05 09:06:44'),
(2275, 'SHEKHAWATI POLY-YARN LIMITED', '130', '', '2021-01-05 09:06:44'),
(2276, 'KALYANI INVESTMENT CO LTD', '130', '', '2021-01-05 09:06:44'),
(2277, 'BF INVESTMENT LTD', '130', '', '2021-01-05 09:06:44'),
(2278, 'SUMMIT SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(2279, 'INNOVASSYNTH INVESTMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(2280, 'STEL HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(2281, 'OMKAR SPECIALITY CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(2282, 'JUBILANT INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2283, 'BIL ENERGY SYSTEMS LTD', '130', '', '2021-01-05 09:06:44'),
(2284, 'TEXMACO RAIL AND ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(2285, 'INDIAN TERRAIN FASHIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2286, 'FINEOTEX CHEMICAL LTD', '130', '', '2021-01-05 09:06:44'),
(2287, 'DHUNSERI INVESTMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(2288, 'ZEN TECHNOLOGIES LIMITED', '130', '', '2021-01-05 09:06:44'),
(2289, 'LOVABLE LINGERIE LTD', '130', '', '2021-01-05 09:06:44'),
(2290, 'PTC INDIA FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2291, 'TCI DEVELOPERS LTD', '130', '', '2021-01-05 09:06:44'),
(2292, 'MUTHOOT FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2293, 'FUTURE CONSUMER LTD', '130', '', '2021-01-05 09:06:44'),
(2294, 'VMS INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2295, 'KARMA ENERGY LTD', '130', '', '2021-01-05 09:06:44'),
(2296, 'EBIXCASH WORLD MONEY INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2297, 'RUSHIL DECOR LTD', '130', '', '2021-01-05 09:06:44'),
(2298, 'ENKEI WHEELS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2299, 'KRIDHAN INFRA LTD', '130', '', '2021-01-05 09:06:44'),
(2300, 'INVENTURE GROWTH AND SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(2301, 'L&T FINANCE HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(2302, 'INDIABULLS INTEGRATED SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2303, 'TREE HOUSE EDUCATION AND ACCESSORIES LTD', '130', '', '2021-01-05 09:06:44'),
(2304, 'BROOKS LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(2305, 'RUPA & COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2306, 'TD POWER SYSTEMS LTD', '130', '', '2021-01-05 09:06:44'),
(2307, 'AXIS GOLD ETF', '130', '', '2021-01-05 09:06:44'),
(2308, 'ALEMBIC PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(2309, 'VASWANI INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2310, 'PG ELECTROPLAST LTD', '130', '', '2021-01-05 09:06:44'),
(2311, 'SETUBANDHAN INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2312, 'RDB RASAYANS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2313, 'TIJARIA POLYPIPES LTD', '130', '', '2021-01-05 09:06:44'),
(2314, 'ONELIFE CAPITAL ADVISORS LTD', '130', '', '2021-01-05 09:06:44'),
(2315, 'UJAAS ENERGY LTD', '130', '', '2021-01-05 09:06:44'),
(2316, 'TRIVENI TURBINE LTD', '130', '', '2021-01-05 09:06:44'),
(2317, 'INDO THAI SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(2318, 'ESSAR SHIPPING LTD', '130', '', '2021-01-05 09:06:44'),
(2319, 'IDBI GOLD EXCHANGE TRADED FUND', '130', '', '2021-01-05 09:06:44'),
(2320, 'APL APOLLO TUBES LTD', '130', '', '2021-01-05 09:06:44'),
(2321, 'GPT INFRAPROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2322, 'FERVENT SYNERGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2323, 'THOMAS SCOTT INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2324, 'TERA SOFTWARE LTD.', '130', '', '2021-01-05 09:06:44'),
(2325, 'PMC FINCORP LTD', '130', '', '2021-01-05 09:06:44'),
(2326, 'ALLIANCE INTEGRATED METALIKS LTD', '130', '', '2021-01-05 09:06:44'),
(2327, 'ORIENT REFRACTORIES LTD', '130', '', '2021-01-05 09:06:44'),
(2328, 'MULTI COMMODITY EXCHANGE OF INDIA LTD.', '130', '', '2021-01-05 09:06:44'),
(2329, 'SCHNEIDER ELECTRIC INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2330, 'NBCC (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2331, 'MT EDUCARE LTD', '130', '', '2021-01-05 09:06:44'),
(2332, 'HEXA TRADEX LTD', '130', '', '2021-01-05 09:06:44'),
(2333, 'MAX HEIGHTS INFRASTUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2334, 'TRIBHOVANDAS BHIMJI ZAVERI LTD', '130', '', '2021-01-05 09:06:44'),
(2335, 'VARDHMAN SPECIAL STEELS LTD', '130', '', '2021-01-05 09:06:44'),
(2336, 'LOOKS HEALTH SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2337, 'SPECIALITY RESTAURANTS LTD', '130', '', '2021-01-05 09:06:44'),
(2338, 'LYPSA GEMS & JEWELLERY LTD', '130', '', '2021-01-05 09:06:44'),
(2339, 'BIO GREEN PAPERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2340, 'RATTANINDIA INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2341, 'JTL INFRA LTD', '130', '', '2021-01-05 09:06:44'),
(2342, 'ADVANCE METERING TECHNOLOGY LTD', '130', '', '2021-01-05 09:06:44'),
(2343, 'NORTH EASTERN CARRYING CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(2344, 'SANGAM RENEWABLES LTD', '130', '', '2021-01-05 09:06:44'),
(2345, 'JUPITER INFOMEDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2346, 'DUCON INFRATECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2347, 'PROZONE INTU PROPERTIES LTD', '130', '', '2021-01-05 09:06:44'),
(2348, 'SRG HOUSING FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2349, 'LAKSHMI VILAS BANK LTD.', '130', '', '2021-01-05 09:06:44'),
(2350, 'COMFORT COMMOTRADE LTD', '130', '', '2021-01-05 09:06:44'),
(2351, 'ADITRI INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2352, 'BRONZE INFRATECH LTD', '130', '', '2021-01-05 09:06:44'),
(2353, 'INTELLIVATE CAPITAL ADVISORS LTD', '130', '', '2021-01-05 09:06:44'),
(2354, 'SUPREMEX SHINE STEELS LTD', '130', '', '2021-01-05 09:06:44'),
(2355, 'RAM MINERALS AND CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(2356, 'ZUARI AGRO CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(2357, 'STEEL EXCHANGE INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2358, 'TRIO MERCANTILE & TRADING LTD', '130', '', '2021-01-05 09:06:44'),
(2359, 'CIGNITI TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2360, 'CARE RATINGS LTD', '130', '', '2021-01-05 09:06:44'),
(2361, 'PC JEWELLER LTD', '130', '', '2021-01-05 09:06:44'),
(2362, 'BHARTI INFRATEL LTD', '130', '', '2021-01-05 09:06:44'),
(2363, 'V-MART RETAIL LTD', '130', '', '2021-01-05 09:06:44'),
(2364, 'NIBE LTD', '130', '', '2021-01-05 09:06:44'),
(2365, 'MUKTA AGRICULTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2366, 'MYSTIC ELECTRONICS LTD', '130', '', '2021-01-05 09:06:44'),
(2367, 'COMFORT FINCAP ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2368, 'SBI SENSEX ETF', '130', '', '2021-01-05 09:06:44'),
(2369, 'REPCO HOME FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2370, 'NRB INDUSTRIAL BEARINGS LTD', '130', '', '2021-01-05 09:06:44'),
(2371, 'SREELEATHERS LTD', '130', '', '2021-01-05 09:06:44'),
(2372, 'SHARDA MOTOR INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2373, 'BINNY MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(2374, 'S V GLOBAL MILL LTD', '130', '', '2021-01-05 09:06:44'),
(2375, 'JUST DIAL LTD', '130', '', '2021-01-05 09:06:44'),
(2376, 'OBJECTONE INFORMATION SYSTEMS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2377, 'INDIA FINSEC LTD', '130', '', '2021-01-05 09:06:44'),
(2378, 'BRAHMAPUTRA INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2379, 'KHOOBSURAT ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2380, 'ORIENT CEMENT LTD', '130', '', '2021-01-05 09:06:44'),
(2381, 'ADITYA BIRLA FASHION AND RETAIL LTD', '130', '', '2021-01-05 09:06:44'),
(2382, 'INDIABULLS HOUSING FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2383, 'INTEGRA GARMENTS AND TEXTILES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2384, 'KUSHAL LTD', '130', '', '2021-01-05 09:06:44'),
(2385, 'TIGER LOGISTICS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2386, 'JK AGRI GENETICS LTD', '130', '', '2021-01-05 09:06:44'),
(2387, 'FUTURE LIFESTYLE FASHIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2388, 'THIRTHANKAR INFRA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2389, 'VCU DATA MANAGEMENT LTD', '130', '', '2021-01-05 09:06:44'),
(2390, 'IND RENEWABLE ENERGY ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2391, 'FIVE X TRADECOM ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2392, 'JINDAL POLY INVESTMENT & FINANCE CO LTD', '130', '', '2021-01-05 09:06:44'),
(2393, 'INTEGRA TELECOMMUNICATION & SOFTWARE LTD', '130', '', '2021-01-05 09:06:44'),
(2394, 'CAPTAIN POLYPLAST LTD', '130', '', '2021-01-05 09:06:44'),
(2395, 'ARNOLD HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(2396, 'MODEX INTERNATIONAL SECURITIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2397, 'SUNIL HEALTHCARE LTD', '130', '', '2021-01-05 09:06:44'),
(2398, 'RCI INDUSTRIES & TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2399, 'SUYOG TELEMATICS LTD', '130', '', '2021-01-05 09:06:44'),
(2400, 'NATH BIO-GENES (I) LTD', '130', '', '2021-01-05 09:06:44'),
(2401, 'AGRI-TECH (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2402, 'CHEMTECH INDUSTRIAL VALVES LTD', '130', '', '2021-01-05 09:06:44'),
(2403, 'TAAZA INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(2404, 'VIAAN INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2405, 'DENIS CHEM LAB LTD', '130', '', '2021-01-05 09:06:44'),
(2406, 'UNISHIRE URBAN INFRA LTD', '130', '', '2021-01-05 09:06:44'),
(2407, 'ETT LTD', '130', '', '2021-01-05 09:06:44'),
(2408, 'KIRAN VYAPAR LTD', '130', '', '2021-01-05 09:06:44'),
(2409, 'B C POWER CONTROLS LTD', '130', '', '2021-01-05 09:06:44'),
(2410, 'ANISHA IMPEX LTD', '130', '', '2021-01-05 09:06:44'),
(2411, 'MANGALAM INDUSTRIAL FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2412, 'VIJI FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2413, 'PHOENIX TOWNSHIP ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2414, 'RAUNAQ EPC INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(2415, 'OCEANAA BIOTEK INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2416, 'JOONKTOLLEE TEA & INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2417, 'R & B DENIMS LTD', '130', '', '2021-01-05 09:06:44'),
(2418, 'GOLD LINE INTERNATIONAL FINVEST LTD', '130', '', '2021-01-05 09:06:44'),
(2419, 'SHARP INVESTMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(2420, 'WONDERLA HOLIDAYS LTD', '130', '', '2021-01-05 09:06:44'),
(2421, 'MAESTRS ELCTRNCS & TLCMMNCTNS SYSTMS LTD', '130', '', '2021-01-05 09:06:44'),
(2422, 'DIVINUS FABRICS LTD', '130', '', '2021-01-05 09:06:44'),
(2423, 'CLASSIC GLOBAL FINANCE CAPITAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2424, 'MONEYBOXX FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2425, 'QUASAR INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2426, 'THIRANI PROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2427, 'AMARNATH SECURITIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2428, 'CAPITAL TRADE LINKS LTD', '130', '', '2021-01-05 09:06:44'),
(2429, 'CROWN TOURS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2430, 'OMANSH ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(2431, 'J TAPARIA PROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2432, 'RAMCHANDRA LEASING AND FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2433, 'SAI BABA INVESTMENT & COM ENTRPRS LTD', '130', '', '2021-01-05 09:06:44'),
(2434, 'SKIPPER LTD', '130', '', '2021-01-05 09:06:44'),
(2435, 'JAMES WARREN TEA LTD', '130', '', '2021-01-05 09:06:44'),
(2436, 'VISTAR AMAR ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2437, 'APOLLO TRICOAT TUBES LTD', '130', '', '2021-01-05 09:06:44'),
(2438, 'GULF OIL LUBRICANTS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2439, 'TTI ENTERPRISE LTD', '130', '', '2021-01-05 09:06:44'),
(2440, 'VISHAL FABRICS LTD', '130', '', '2021-01-05 09:06:44'),
(2441, 'TOYAM INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2442, 'REAL TOUCH FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2443, 'VASUNDHARA RASAYANS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2444, 'SNOWMAN LOGISTICS LTD', '130', '', '2021-01-05 09:06:44'),
(2445, 'PARNAMI CREDITS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2446, 'EJECTA MARKETING LTD', '130', '', '2021-01-05 09:06:44'),
(2447, 'SHARDA CROPCHEM LTD', '130', '', '2021-01-05 09:06:44'),
(2448, 'NAYSAA SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(2449, 'SHEMAROO ENTERTAINMENT LTD', '130', '', '2021-01-05 09:06:44'),
(2450, 'ULTRACAB (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2451, 'ECONO TRADE (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2452, 'SUCHITRA FINANCE & TRADING CO LTD', '130', '', '2021-01-05 09:06:44'),
(2453, 'DHABRIYA POLYWOOD LTD', '130', '', '2021-01-05 09:06:44'),
(2454, 'ARYAMAN CAPITAL MARKETS LTD', '130', '', '2021-01-05 09:06:44'),
(2455, 'PDS MULTINATIONAL FASHIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2456, 'HANMAN FIT LTD', '130', '', '2021-01-05 09:06:44'),
(2457, 'CEINSYS TECH LTD', '130', '', '2021-01-05 09:06:44'),
(2458, 'CRANE INFRASTRUCTURE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2459, 'NIYOGIN FINTECH LTD', '130', '', '2021-01-05 09:06:44'),
(2460, 'AKASHDEEP METAL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2461, 'CITIZEN INFOLINE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2462, 'GOENKA BUSINESS & FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2463, 'SHREE AJIT PULP AND PAPER LTD', '130', '', '2021-01-05 09:06:44'),
(2464, 'AANCHAL ISPAT LTD', '130', '', '2021-01-05 09:06:44'),
(2465, 'CAPTAIN PIPES LTD', '130', '', '2021-01-05 09:06:44'),
(2466, 'ANUBHAV INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2467, 'INTELLECT DESIGN ARENA LTD', '130', '', '2021-01-05 09:06:44'),
(2468, 'MONTE CARLO FASHIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2469, 'JEEVAN SCIENTIFIC TECHNOLOGY LTD', '130', '', '2021-01-05 09:06:44'),
(2470, 'INDO COTSPIN ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2471, 'PANAFIC INDUSTRIALS LTD', '130', '', '2021-01-05 09:06:44'),
(2472, 'CONTINENTAL SECURITIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2473, 'EMERALD LEASING FINANCE & INVESTMENT COMPANY ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2474, 'MK EXIM INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2475, 'MAGELLANIC CLOUD LTD', '130', '', '2021-01-05 09:06:44'),
(2476, 'OCTAL CREDIT CAPITAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2477, 'KANCHI KARPOORAM LTD', '130', '', '2021-01-05 09:06:44'),
(2478, 'DHUNSERI TEA & INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2479, 'VANI COMMERCIALS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2480, 'COSYN LTD', '130', '', '2021-01-05 09:06:44'),
(2481, 'KARNAVATI FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2482, 'MERCANTILE VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(2483, 'ABHINAV LEASING & FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2484, 'GENUS PAPER & BOARDS LTD', '130', '', '2021-01-05 09:06:44'),
(2485, 'MINDA CORP LTD', '130', '', '2021-01-05 09:06:44'),
(2486, 'MERCURY LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(2487, 'CONCORD DRUGS LTD', '130', '', '2021-01-05 09:06:44'),
(2488, 'WARDWIZARD INNOVATIONS & MOBILITY LTD', '130', '', '2021-01-05 09:06:44'),
(2489, 'GREENLAM INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2490, 'TALBROS ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(2491, 'SAR AUTO PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(2492, 'PTC INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2493, 'GBL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2494, 'CHENNAI FERROUS INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2495, 'GITA RENEWABLE ENERGY ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2496, 'AKME STAR HOUSING FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2497, 'BEEKAY STEEL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2498, 'SSPN FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2499, 'FRASER AND COMPANY ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2500, 'TIRUPATI TYRES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2501, 'AGI INFRA LTD', '130', '', '2021-01-05 09:06:44'),
(2502, 'BKM INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2503, 'MANAKSIA STEELS LTD', '130', '', '2021-01-05 09:06:44'),
(2504, 'MANAKSIA ALUMINIUM CO LTD', '130', '', '2021-01-05 09:06:44'),
(2505, 'MANAKSIA COATED METALS & INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2506, 'IMAGICAAWORLD ENTERTAINMENT LTD', '130', '', '2021-01-05 09:06:44'),
(2507, 'INOX WIND LTD', '130', '', '2021-01-05 09:06:44'),
(2508, 'HKG LTD', '130', '', '2021-01-05 09:06:44'),
(2509, 'FILTRA CONSULTANTS AND ENGINEERS LTD', '130', '', '2021-01-05 09:06:44'),
(2510, 'SAB INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2511, 'PAUL MERCHANTS LTD', '130', '', '2021-01-05 09:06:44'),
(2512, 'HIND SECURITIES & CREDITS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2513, 'VRL LOGISTICS LTD', '130', '', '2021-01-05 09:06:44'),
(2514, 'BODHTREE CONSULTING LTD', '130', '', '2021-01-05 09:06:44'),
(2515, 'MEP INFRASTRUCTURE DEVELOPERS LTD', '130', '', '2021-01-05 09:06:44'),
(2516, 'UFO MOVIEZ INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2517, 'PANTH INFINITY LTD', '130', '', '2021-01-05 09:06:44'),
(2518, 'SHIVALIK RASAYAN LTD', '130', '', '2021-01-05 09:06:44'),
(2519, 'INTEGRATED CAPITAL SERVICES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2520, 'PNC INFRATECH LTD', '130', '', '2021-01-05 09:06:44'),
(2521, 'ARFIN INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2522, 'HELPAGE FINLEASE LTD', '130', '', '2021-01-05 09:06:44'),
(2523, 'INDRA INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2524, 'HAWA ENGINEERS LTD', '130', '', '2021-01-05 09:06:44'),
(2525, 'AUTHUM INVESTMENT & INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2526, 'POCL ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(2527, 'AMBA ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(2528, 'DEVHARI EXPORTS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2529, 'MOONGIPA SECURITIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2530, 'SATIA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2531, 'GARMENT MANTRA LIFESTYLE LTD', '130', '', '2021-01-05 09:06:44'),
(2532, 'MAURIA UDYOG LTD', '130', '', '2021-01-05 09:06:44'),
(2533, 'MISHKA EXIM LTD', '130', '', '2021-01-05 09:06:44'),
(2534, 'SPORTKING INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2535, 'VMV HOLIDAYS LTD', '130', '', '2021-01-05 09:06:44'),
(2536, 'AMBITION MICA LTD', '130', '', '2021-01-05 09:06:44'),
(2537, 'JIYA ECO PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(2538, 'RUDRA GLOBAL INFRA PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(2539, 'LOYAL EQUIPMENTS LTD', '130', '', '2021-01-05 09:06:44'),
(2540, 'GALA GLOBAL PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(2541, 'MAJESTIC RESEARCH SERVICES & SLTNS LTD', '130', '', '2021-01-05 09:06:44'),
(2542, 'GRANDEUR PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(2543, 'BALKRISHNA PAPER MILLS LTD', '130', '', '2021-01-05 09:06:44'),
(2544, 'SHYAM CENTURY FERROUS LTD', '130', '', '2021-01-05 09:06:44'),
(2545, 'ADANI TRANSMISSION LTD', '130', '', '2021-01-05 09:06:44'),
(2546, 'STAR DELTA TRANSFORMERS LTD', '130', '', '2021-01-05 09:06:44'),
(2547, 'DR HABEEBULLAH LIFE SCIENCES LTD', '130', '', '2021-01-05 09:06:44'),
(2548, 'SYNGENE INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(2549, 'MANGALAM SEEDS LTD', '130', '', '2021-01-05 09:06:44'),
(2550, 'KAYA LTD', '130', '', '2021-01-05 09:06:44'),
(2551, 'SYMBIOX INVESTMENT & TRADING CO LTD', '130', '', '2021-01-05 09:06:44'),
(2552, 'ORTIN LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(2553, 'MAJESCO LTD', '130', '', '2021-01-05 09:06:44'),
(2554, 'OSWAL GREENTECH LTD', '130', '', '2021-01-05 09:06:44'),
(2555, 'AK SPINTEX LTD', '130', '', '2021-01-05 09:06:44'),
(2556, 'ARVIND SMARTSPACES LTD', '130', '', '2021-01-05 09:06:44'),
(2557, 'POWER MECH PROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2558, 'RAMA STEEL TUBES LTD', '130', '', '2021-01-05 09:06:44'),
(2559, 'THINKINK PICTUREZ LTD', '130', '', '2021-01-05 09:06:44'),
(2560, 'NISHTHA FINANCE & INVEST IND ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2561, 'UTI-SENSEX EXCHANGE TRADED FUND', '130', '', '2021-01-05 09:06:44'),
(2562, 'UTI-NIFTY EXCHANGE TRADED FUND', '130', '', '2021-01-05 09:06:44'),
(2563, 'VETO SWITCH GEARS AND CABLES LTD', '130', '', '2021-01-05 09:06:44'),
(2564, 'NAVKAR CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(2565, 'SHREE PUSHKAR CHEMICALS & FERTILISRS LTD', '130', '', '2021-01-05 09:06:44'),
(2566, 'GUJARAT GAS LTD', '130', '', '2021-01-05 09:06:44'),
(2567, 'SADBHAV INFRASTRUCTURE PROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2568, 'PRABHAT DAIRY LTD', '130', '', '2021-01-05 09:06:44'),
(2569, 'SAL AUTOMOTIVE LTD', '130', '', '2021-01-05 09:06:44'),
(2570, 'POLYSPIN EXPORTS LTD.', '130', '', '2021-01-05 09:06:44'),
(2571, 'PRITIKA AUTO INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2572, 'SRI KRISHNA CONSTRUCTIONS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2573, 'ACME RESOURCES LTD', '130', '', '2021-01-05 09:06:44'),
(2574, 'BELLA CASA FASHION & RETAIL LTD', '130', '', '2021-01-05 09:06:44'),
(2575, 'MALLCOM (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2576, 'VAKSONS AUTOMOBILES LTD', '130', '', '2021-01-05 09:06:44'),
(2577, 'SATIN CREDITCARE NETWORK LTD', '130', '', '2021-01-05 09:06:44'),
(2578, 'GENERIC ENGINEERING CONSTRT & PRJCTS LTD', '130', '', '2021-01-05 09:06:44'),
(2579, 'SINNER ENERGY INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2580, 'TEJNAKSH HEALTHCARE LTD', '130', '', '2021-01-05 09:06:44'),
(2581, 'BRILLIANT PORTFOLIOS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2582, 'IDFC FIRST BANK LTD', '130', '', '2021-01-05 09:06:44'),
(2583, 'BEARDSELL LTD', '130', '', '2021-01-05 09:06:44'),
(2584, 'INTERGLOBE AVIATION LTD', '130', '', '2021-01-05 09:06:44'),
(2585, 'IGC INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2586, 'S H KELKAR AND COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2587, 'DEEPTI ALLOY STEEL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2588, 'SHREE GANESH BIOTECH INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2589, 'GTV ENGINEERING ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2590, 'LIC MF ETF-NIFTY 50', '130', '', '2021-01-05 09:06:44'),
(2591, 'ADCON CAPITAL SERVICES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2592, 'GAURAV MERCANTILES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2593, 'HDFC NIFTY 50 ETF-GROWTH', '130', '', '2021-01-05 09:06:44'),
(2594, 'HDFC SENSEX ETF-GROWTH', '130', '', '2021-01-05 09:06:44'),
(2595, 'UDAY JEWELLERY INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2596, 'SHAILJA COMMERCIAL TRADE FRENZY ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2597, 'NAVKETAN MERCHANTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2598, 'ALKEM LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(2599, 'DR. LAL PATHLABS LTD', '130', '', '2021-01-05 09:06:44'),
(2600, 'NAVKETAN MERCHANTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2601, 'SUNCARE TRADERS LTD', '130', '', '2021-01-05 09:06:44'),
(2602, 'CREATIVE CASTINGS LTD', '130', '', '2021-01-05 09:06:44'),
(2603, 'AAYUSH FOOD AND HERBS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2604, 'LUX INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2605, 'ABHISHEK INFRAVENTURES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2606, 'APOORVA LEASING FINANCE AND INVESTMENT COMPANY ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2607, 'NARAYANA HRUDAYALAYA LTD', '130', '', '2021-01-05 09:06:44'),
(2608, 'ROXY EXPORTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2609, 'AARNAV FASHIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2610, 'ACEWIN AGRITECK LTD', '130', '', '2021-01-05 09:06:44'),
(2611, 'MISHTANN FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(2612, 'JINDAL STAINLESS (HISAR) LTD', '130', '', '2021-01-05 09:06:44'),
(2613, 'A INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2614, 'BCL ENTERPRISES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2615, 'PRECISION CAMSHAFTS LTD', '130', '', '2021-01-05 09:06:44'),
(2616, 'TEAMLEASE SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2617, 'VIDLI RESTAURANTS LTD', '130', '', '2021-01-05 09:06:44'),
(2618, 'BEST AGROLIFE LTD', '130', '', '2021-01-05 09:06:44'),
(2619, 'ACE MEN ENGG WORKS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2620, 'RGF CAPITAL MARKETS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2621, 'RADHAGOBIND COMMERCIAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2622, 'QUICK HEAL TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2623, 'KAPIL RAJ FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2624, 'KP ENERGY LTD', '130', '', '2021-01-05 09:06:44'),
(2625, 'GOKUL AGRO RESOURCES LTD', '130', '', '2021-01-05 09:06:44'),
(2626, 'FREDUN PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(2627, 'SIMBHAOLI SUGARS LTD.', '130', '', '2021-01-05 09:06:44'),
(2628, 'MODERN CONVERTERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2629, 'DARJEELING ROPEWAY COMPANY ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2630, 'LIC MF ETF-NIFTY 100', '130', '', '2021-01-05 09:06:44'),
(2631, 'PUDUMJEE PAPER PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(2632, 'HEALTHCARE GLOBAL ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(2633, 'KHEMANI DISTRIBUTORS & MARKETING LTD', '130', '', '2021-01-05 09:06:44'),
(2634, 'UMIYA TUBES LTD', '130', '', '2021-01-05 09:06:44'),
(2635, 'BHARAT WIRE ROPES LTD', '130', '', '2021-01-05 09:06:44'),
(2636, 'CHD CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(2637, 'INFIBEAM AVENUES LTD', '130', '', '2021-01-05 09:06:44'),
(2638, 'SUPERIOR FINLEASE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2639, 'RAGHAV PRODUCTIVITY ENHANCERS LTD', '130', '', '2021-01-05 09:06:44'),
(2640, 'LANCER CONTAINER LINES LTD', '130', '', '2021-01-05 09:06:44'),
(2641, 'EQUITAS HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(2642, 'SKIL INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2643, 'THYROCARE TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2644, 'BAJAJ HEALTHCARE LTD', '130', '', '2021-01-05 09:06:44'),
(2645, 'UJJIVAN FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2646, 'CROMPTON GREAVES CONSUMER ELECTRICLS LTD', '130', '', '2021-01-05 09:06:44'),
(2647, 'PILANI INVESTMENT & INDUSTRIES CORP LTD', '130', '', '2021-01-05 09:06:44'),
(2648, 'DARSHAN ORNA LTD', '130', '', '2021-01-05 09:06:44'),
(2649, 'PARAG MILK FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(2650, 'MADHAV INFRA PROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2651, 'NAGARJUNA FERTILIZERS AND CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(2652, 'LIKHAMI CONSULTING LTD', '130', '', '2021-01-05 09:06:44'),
(2653, 'MEDICO INTERCONTINENTAL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2654, 'YASH CHEMEX LTD', '130', '', '2021-01-05 09:06:44'),
(2655, 'MAX VENTURES AND INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2656, 'ICICI PRUDENTIAL NV20 ETF', '130', '', '2021-01-05 09:06:44'),
(2657, 'TAAL ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(2658, 'MAHANAGAR GAS LTD', '130', '', '2021-01-05 09:06:44'),
(2659, 'ZEAL AQUA LTD', '130', '', '2021-01-05 09:06:44'),
(2660, 'QUESS CORP LTD', '130', '', '2021-01-05 09:06:44'),
(2661, 'DIGJAM LTD', '130', '', '2021-01-05 09:06:44'),
(2662, 'ADVANCE SYNTEX LTD', '130', '', '2021-01-05 09:06:44'),
(2663, 'HINDUSTHAN URBAN INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2664, 'TITAANIUM TEN ENTERPRISE LTD', '130', '', '2021-01-05 09:06:44'),
(2665, 'COMMERCIAL SYN BAGS LTD', '130', '', '2021-01-05 09:06:44'),
(2666, 'LLOYDS STEELS INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2667, 'LARSEN & TOUBRO INFOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(2668, 'EAST WEST HOLDINGS LTD', '130', '', '2021-01-05 09:06:44'),
(2669, 'ASHARI AGENCIES LTD', '130', '', '2021-01-05 09:06:44'),
(2670, 'ADVANCED ENZYME TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2671, 'LADAM AFFORDABLE HOUSING ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2672, 'PRABHAT TELECOMS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2673, 'DILIP BUILDCON LTD', '130', '', '2021-01-05 09:06:44'),
(2674, 'S. P. APPARELS LTD', '130', '', '2021-01-05 09:06:44'),
(2675, 'BIGBLOC CONSTRUCTION LTD', '130', '', '2021-01-05 09:06:44'),
(2676, 'FUTURE RETAIL LTD', '130', '', '2021-01-05 09:06:44'),
(2677, 'RBL BANK LTD', '130', '', '2021-01-05 09:06:44'),
(2678, 'SHIVA GRANITO EXPORT LTD', '130', '', '2021-01-05 09:06:44'),
(2679, 'BLS INTERNATIONAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2680, 'MITSU CHEM PLAST LTD', '130', '', '2021-01-05 09:06:44'),
(2681, 'NARAYANI STEELS LTD', '130', '', '2021-01-05 09:06:44'),
(2682, 'SAB EVENTS & GOVERNANCE NOW MEDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2683, 'VISCO TRADE ASSOCIATES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2684, 'TIAAN AYURVEDIC & HERBS LTD', '130', '', '2021-01-05 09:06:44'),
(2685, 'L&T TECHNOLOGY SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2686, 'GNA AXLES LTD', '130', '', '2021-01-05 09:06:44'),
(2687, 'SABRIMALA INDUSTRIES INDIA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2688, 'ICICI PRUDENTIAL LIFE INSURANCE COMP LTD', '130', '', '2021-01-05 09:06:44'),
(2689, 'ISHAAN INFRASTRUCTURES AND SHELTERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2690, 'ARC FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2691, 'HPL ELECTRIC & POWER LTD', '130', '', '2021-01-05 09:06:44'),
(2692, 'SAGARSOFT (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2693, 'DRA CONSULTANTS LTD', '130', '', '2021-01-05 09:06:44'),
(2694, 'ADITYA CONSUMER MARKETING LTD', '130', '', '2021-01-05 09:06:44'),
(2695, 'SHASHIJIT INFRAPROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2696, 'MEWAR HI-TECH ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(2697, 'ENDURANCE TECHNOLOGIES LTD (CN)', '130', '', '2021-01-05 09:06:44'),
(2698, 'IDFC SENSEX ETF', '130', '', '2021-01-05 09:06:44'),
(2699, 'SUPRA PACIFIC MANAGEMENT CONSULTANCY ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2700, 'PNB HOUSING FINANCE LTD.', '130', '', '2021-01-05 09:06:44'),
(2701, 'SOUTHERN INFOSYS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2702, 'REGENCY INVESTMENTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2703, 'VARUN BEVERAGES LTD', '130', '', '2021-01-05 09:06:44'),
(2704, 'LKP SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(2705, 'OSIAJEE TEXFAB ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2706, 'SHEELA FOAM LTD', '130', '', '2021-01-05 09:06:44'),
(2707, 'NARENDRA INVESTMENTS (DELHI) ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2708, 'MANDHANA RETAIL VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(2709, 'TCI EXPRESS LTD', '130', '', '2021-01-05 09:06:44'),
(2710, 'LAURUS LABS LTD', '130', '', '2021-01-05 09:06:44'),
(2711, 'SHREE NIDHI TRADING CO LTD', '130', '', '2021-01-05 09:06:44'),
(2712, 'SHANGAR DECOR ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2713, 'GLOBE COMMERCIALS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2714, 'DHANVARSHA FINVEST LTD', '130', '', '2021-01-05 09:06:44'),
(2715, 'PRICOL LTD', '130', '', '2021-01-05 09:06:44'),
(2716, 'JITF INFRALOGISTICS LTD', '130', '', '2021-01-05 09:06:44'),
(2717, 'AXIS EMERGING OPPORTUNITIES-SR 2-(1400D)-DIVIDEND', '130', '', '2021-01-05 09:06:44'),
(2718, 'PARMAX PHARMA ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2719, 'LEADING LEASING FINANCE AND INV CO LTD', '130', '', '2021-01-05 09:06:44'),
(2720, 'DANUBE INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2721, 'MUSIC BROADCAST LTD', '130', '', '2021-01-05 09:06:44'),
(2722, 'AVENUE SUPERMARTS LTD', '130', '', '2021-01-05 09:06:44'),
(2723, 'ADITYA BSL RESURGENT INDIA-SRS 3-GROWTH', '130', '', '2021-01-05 09:06:44'),
(2724, 'KD LEISURES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2725, 'ONTIC FINSERVE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2726, 'CHEMCRUX ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(2727, 'MANOMAY TEX INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2728, 'MAXIMUS INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(2729, 'MANAS PROPERTIES LTD', '130', '', '2021-01-05 09:06:44'),
(2730, 'CL EDUCATE LTD', '130', '', '2021-01-05 09:06:44'),
(2731, 'OCEANIC FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(2732, 'SHANKARA BUILDING PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(2733, 'KMS MEDISURGI LTD', '130', '', '2021-01-05 09:06:44'),
(2734, 'ICICI PRUDENTIAL VALUE FUND-SERIES 12-DIVIDEND', '130', '', '2021-01-05 09:06:44'),
(2735, 'CLASSIC LEASING & FINANCE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2736, 'STARLINE PRECIOUS STONE LTD', '130', '', '2021-01-05 09:06:44'),
(2737, 'S CHAND AND COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2738, 'KANUNGO FINANCIERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2739, 'MEERA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2740, 'IRB INVIT FUND', '130', '', '2021-01-05 09:06:44'),
(2741, 'HOUSING AND URBAN DEVELOPMENT CORP LTD', '130', '', '2021-01-05 09:06:44'),
(2742, 'PSP PROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2743, 'INDIA GRID TRUST', '130', '', '2021-01-05 09:06:44'),
(2744, 'STAR CEMENT LTD', '130', '', '2021-01-05 09:06:44'),
(2745, 'TEJAS NETWORKS LTD', '130', '', '2021-01-05 09:06:44'),
(2746, 'ERIS LIFESCIENCES LTD', '130', '', '2021-01-05 09:06:44'),
(2747, 'GTPL HATHWAY LTD', '130', '', '2021-01-05 09:06:44'),
(2748, 'AU SMALL FINANCE BANK LTD', '130', '', '2021-01-05 09:06:44'),
(2749, 'G G ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(2750, '7NR RETAIL LTD', '130', '', '2021-01-05 09:06:44'),
(2751, 'BHAGYANAGAR PROPERTIES LTD', '130', '', '2021-01-05 09:06:44'),
(2752, 'SALASAR TECHNO ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(2753, 'GANGES SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(2754, 'PALASH SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(2755, 'AVADH SUGAR & ENERGY LTD', '130', '', '2021-01-05 09:06:44'),
(2756, 'MAGADH SUGAR & ENERGY LTD', '130', '', '2021-01-05 09:06:44'),
(2757, 'CAPTAIN TECHNOCAST LTD', '130', '', '2021-01-05 09:06:44'),
(2758, 'SINTEX PLASTICS TECHNOLOGY LTD', '130', '', '2021-01-05 09:06:44'),
(2759, 'GLOBALSPACE TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2760, 'SECURITY AND INTELLIGENCE SRVS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2761, 'COCHIN SHIPYARD LTD', '130', '', '2021-01-05 09:06:44'),
(2762, 'SMS LIFESCIENCES INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2763, 'KIOCL LTD', '130', '', '2021-01-05 09:06:44'),
(2764, 'SMRUTHI ORGANICS LTD', '130', '', '2021-01-05 09:06:44'),
(2765, 'ADITYA BIRLA CAPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(2766, 'APEX FROZEN FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(2767, 'SHISH INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2768, 'ANG LIFESCIENCES INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2769, 'A & M FEBCON LTD', '130', '', '2021-01-05 09:06:44'),
(2770, 'DIXON TECHNOLOGIES (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2771, 'BHARAT ROAD NETWORK LTD', '130', '', '2021-01-05 09:06:44'),
(2772, 'DISHMAN CARBOGEN AMCIS LTD', '130', '', '2021-01-05 09:06:44'),
(2773, 'LASA SUPERGENERICS LTD', '130', '', '2021-01-05 09:06:44'),
(2774, 'PROVESTMENT SERVICES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2775, 'MATRIMONY.COM LTD', '130', '', '2021-01-05 09:06:44'),
(2776, 'RELIANCE HOME FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2777, 'CAPACITE INFRAPROJECTS LTD', '130', '', '2021-01-05 09:06:44'),
(2778, 'SAGAR DIAMONDS LTD', '130', '', '2021-01-05 09:06:44'),
(2779, 'ICICI LOMBARD GENERAL INSURANCE CO LTD', '130', '', '2021-01-05 09:06:44'),
(2780, 'SBI LIFE INSURANCE COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2781, 'PRATAAP SNACKS LTD', '130', '', '2021-01-05 09:06:44'),
(2782, 'SHARE INDIA SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(2783, 'TRIDENT TEXOFAB LTD', '130', '', '2021-01-05 09:06:44'),
(2784, 'SAYAJI INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2785, 'VANTA BIOSCIENCE LTD', '130', '', '2021-01-05 09:06:44'),
(2786, 'MEHAI TECHNOLOGY LTD', '130', '', '2021-01-05 09:06:44'),
(2787, 'SHREE GANESH REMEDIES LTD', '130', '', '2021-01-05 09:06:44'),
(2788, 'SHREEJI TRANSLOGISTICS LTD', '130', '', '2021-01-05 09:06:44'),
(2789, 'GODREJ AGROVET LTD', '130', '', '2021-01-05 09:06:44'),
(2790, 'MIDEAST INTEGRATED STEELS LTD', '130', '', '2021-01-05 09:06:44'),
(2791, 'MAS FINANCIAL SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2792, 'INDIAN ENERGY EXCHANGE LTD', '130', '', '2021-01-05 09:06:44'),
(2793, 'GENERAL INSURANCE CORPORATION OF INDIA', '130', '', '2021-01-05 09:06:44'),
(2794, 'SHEETAL COOL PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(2795, 'TUBE INVESTMENTS OF INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2796, 'NIPPON LIFE INDIA ASSET MANAGEMENT LTD', '130', '', '2021-01-05 09:06:44'),
(2797, 'MAHINDRA LOGISTICS LTD', '130', '', '2021-01-05 09:06:44'),
(2798, 'NEW INDIA ASSURANCE COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2799, 'IFGL REFRACTORIES LTD', '130', '', '2021-01-05 09:06:44'),
(2800, 'KHADIM INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2801, '5PAISA CAPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(2802, 'HDFC LIFE INSURANCE COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2803, 'SANGHVI BRANDS LTD', '130', '', '2021-01-05 09:06:44'),
(2804, 'SHARIKA ENTERPRISES LTD', '130', '', '2021-01-05 09:06:44'),
(2805, 'DILIGENT MEDIA CORPORATION LTD', '130', '', '2021-01-05 09:06:44'),
(2806, 'HDFC HOUSING OPPORTUNITIES-I-1140DNOV17(1)-DIR-GTH', '130', '', '2021-01-05 09:06:44'),
(2807, 'HDFC HOUSING OPPORTUNITIES-I-1140DNOV17(1)-GTH', '130', '', '2021-01-05 09:06:44'),
(2808, 'DYNAMIC CABLES LTD', '130', '', '2021-01-05 09:06:44'),
(2809, 'SHALBY LTD', '130', '', '2021-01-05 09:06:44'),
(2810, 'FUTURE SUPPLY CHAIN SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2811, 'DSP A.C.E. FUND-GROWTH', '130', '', '2021-01-05 09:06:44'),
(2812, 'SADHNA BROADCAST LTD', '130', '', '2021-01-05 09:06:44'),
(2813, 'VITESSE AGRO LTD', '130', '', '2021-01-05 09:06:44'),
(2814, 'ASTRON PAPER & BOARD MILL LTD', '130', '', '2021-01-05 09:06:44'),
(2815, 'CHANDRIMA MERCANTILES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2816, 'ICICI PRUDENTIAL VALUE FUND-SERIES 19-GROWTH', '130', '', '2021-01-05 09:06:44'),
(2817, 'ICICI PRUDENTIAL VALUE FUND-SERIES 19-DIVIDEND', '130', '', '2021-01-05 09:06:44'),
(2818, 'APOLLO MICRO SYSTEMS LTD', '130', '', '2021-01-05 09:06:44'),
(2819, 'NEWGEN SOFTWARE TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2820, 'PRAXIS HOME RETAIL LTD', '130', '', '2021-01-05 09:06:44'),
(2821, 'AMBER ENTERPRISES INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2822, 'GALAXY SURFACTANTS LTD', '130', '', '2021-01-05 09:06:44'),
(2823, 'GAUTAM GEMS LTD', '130', '', '2021-01-05 09:06:44'),
(2824, 'ICICI PRUDENTIAL VALUE FUND-SERIES 20-GROWTH', '130', '', '2021-01-05 09:06:44'),
(2825, 'INDIAN WOOD PRODUCTS CO LTD', '130', '', '2021-01-05 09:06:44'),
(2826, 'SHIVA MILLS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2827, 'ASTER DM HEALTHCARE LTD', '130', '', '2021-01-05 09:06:44'),
(2828, 'YAMUNA SYNDICATE LTD', '130', '', '2021-01-05 09:06:44'),
(2829, 'KANCO TEA & INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2830, 'HG INFRA ENGINEERING LTD (PART IX)', '130', '', '2021-01-05 09:06:44'),
(2831, 'INFLAME APPLIANCES LTD', '130', '', '2021-01-05 09:06:44'),
(2832, 'ADITYA BSL RESURGENT INDIA-SRS 6-REGULAR-GROWTH', '130', '', '2021-01-05 09:06:44'),
(2833, 'BHARAT PARENTERALS LTD', '130', '', '2021-01-05 09:06:44'),
(2834, 'BHARAT DYNAMICS LTD', '130', '', '2021-01-05 09:06:44'),
(2835, 'ACTIVE CLOTHING CO LTD', '130', '', '2021-01-05 09:06:44'),
(2836, 'BANDHAN BANK LTD', '130', '', '2021-01-05 09:06:44'),
(2837, 'HINDUSTAN AERONAUTICS LTD', '130', '', '2021-01-05 09:06:44'),
(2838, 'KARDA CONSTRUCTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2839, 'SANDHAR TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2840, 'BENARA BEARINGS AND PISTONS LTD', '130', '', '2021-01-05 09:06:44'),
(2841, 'ICICI SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(2842, 'MISHRA DHATU NIGAM LTD', '130', '', '2021-01-05 09:06:44'),
(2843, 'ORISSA BENGAL CARRIER LTD', '130', '', '2021-01-05 09:06:44'),
(2844, 'LEMON TREE HOTELS LTD', '130', '', '2021-01-05 09:06:44'),
(2845, 'CHEMFAB ALKALIS LTD', '130', '', '2021-01-05 09:06:44'),
(2846, 'HARDWYN INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2847, 'ORIENT ELECTRIC LTD', '130', '', '2021-01-05 09:06:44'),
(2848, 'DHRUV CONSULTANCY SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2849, 'ICICI PRUDENTIAL BHARAT CONSUMPTION-SRS 2-GTH', '130', '', '2021-01-05 09:06:44'),
(2850, 'ICICI PRUDENTIAL S&P BSE 500 ETF', '130', '', '2021-01-05 09:06:44'),
(2851, 'INDOSTAR CAPITAL FINANCE LTD', '130', '', '2021-01-05 09:06:44'),
(2852, 'PARVATI SWEETNERS AND POWER ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2853, 'MEGASTAR FOODS LTD', '130', '', '2021-01-05 09:06:44'),
(2854, 'INNOVATORS FACADE SYSTEMS LTD', '130', '', '2021-01-05 09:06:44'),
(2855, 'ZIM LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(2856, 'ARIHANT INSTITUTE LTD', '130', '', '2021-01-05 09:06:44'),
(2857, 'AFFORDABLE ROBOTIC & AUTOMATION LTD', '130', '', '2021-01-05 09:06:44'),
(2858, 'DOLLAR INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2859, 'WAA SOLAR LTD', '130', '', '2021-01-05 09:06:44'),
(2860, 'ADANI GREEN ENERGY LTD', '130', '', '2021-01-05 09:06:44'),
(2861, 'UNICK FIX A FORM AND PRINTERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2862, 'SOLARA ACTIVE PHARMA SCIENCES LTD', '130', '', '2021-01-05 09:06:44'),
(2863, 'TALWALKARS HEALTHCLUBS LTD', '130', '', '2021-01-05 09:06:44'),
(2864, 'GAYATRI HIGHWAYS LTD', '130', '', '2021-01-05 09:06:44'),
(2865, 'RITES LTD.', '130', '', '2021-01-05 09:06:44'),
(2866, 'FINE ORGANIC INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2867, 'VARROC ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(2868, 'RAJNISH WELLNESS LTD', '130', '', '2021-01-05 09:06:44'),
(2869, 'HI TECH WINDING SYSTEMS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2870, 'TATA VALUE FUND-SERIES 1-GROWTH', '130', '', '2021-01-05 09:06:44'),
(2871, 'TCNS CLOTHING CO LTD', '130', '', '2021-01-05 09:06:44'),
(2872, 'SUPERSHAKTI METALIKS LTD', '130', '', '2021-01-05 09:06:44'),
(2873, 'ASHNISHA INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2874, 'IDFC EQUITY OPPORTUNITY-SERIES 6-GROWTH', '130', '', '2021-01-05 09:06:44'),
(2875, 'HDFC ASSET MANAGEMENT COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2876, 'VIVANTA INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2877, 'TINNA TRADE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2878, 'TATA VALUE FUND-SERIES 2-GROWTH', '130', '', '2021-01-05 09:06:44'),
(2879, 'CREDITACCESS GRAMEEN LTD', '130', '', '2021-01-05 09:06:44'),
(2880, 'SPACE INCUBATRICS TECHNOLOGIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2881, 'SYNERGY GREEN INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2882, 'IRCON INTERNATIONAL LTD', '130', '', '2021-01-05 09:06:44'),
(2883, 'MANORAMA INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2884, 'INNOVATIVE IDEALS AND SERVCS (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2885, 'NIPPON INDIA INDIA OPPORTUNITIES-A-GROWTH', '130', '', '2021-01-05 09:06:44'),
(2886, 'AAVAS FINANCIERS LTD', '130', '', '2021-01-05 09:06:44'),
(2887, 'GARDEN REACH SHIPBUILDERS & ENGINEERS LD', '130', '', '2021-01-05 09:06:44'),
(2888, 'A-1 ACID LTD', '130', '', '2021-01-05 09:06:44'),
(2889, 'DOLFIN RUBBERS LTD', '130', '', '2021-01-05 09:06:44'),
(2890, 'SHUBHAM POLYSPIN LTD', '130', '', '2021-01-05 09:06:44'),
(2891, 'S M GOLD LTD', '130', '', '2021-01-05 09:06:44'),
(2892, 'BCPL RAILWAY INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2893, 'ADANI GAS LTD', '130', '', '2021-01-05 09:06:44'),
(2894, 'NETRIPPLES SOFTWARE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2895, 'PHOSPHATE COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(2896, 'TECHNO ELECTRIC & ENGINEERING COM LTD', '130', '', '2021-01-05 09:06:44'),
(2897, 'ICICI PRUDENTIAL BHARAT CONSUMPTION-SRS 5-GTH', '130', '', '2021-01-05 09:06:44'),
(2898, 'NIVAKA FASHIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2899, 'DALMIA BHARAT LTD', '130', '', '2021-01-05 09:06:44'),
(2900, 'NILA SPACES LTD', '130', '', '2021-01-05 09:06:44'),
(2901, 'TREJHARA SOLUTIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2902, 'DECCAN HEALTH CARE LTD', '130', '', '2021-01-05 09:06:44'),
(2903, 'KPI GLOBAL INFRASTRUCTURE LTD', '130', '', '2021-01-05 09:06:44'),
(2904, 'CESC VENTURES LTD', '130', '', '2021-01-05 09:06:44'),
(2905, 'SPENCER\'S RETAIL LTD', '130', '', '2021-01-05 09:06:44'),
(2906, 'GLOSTER LTD', '130', '', '2021-01-05 09:06:44'),
(2907, 'XELPMOC DESIGN AND TECH LTD', '130', '', '2021-01-05 09:06:44'),
(2908, 'RITCO LOGISTICS LTD', '130', '', '2021-01-05 09:06:44'),
(2909, 'CHALET HOTELS LTD', '130', '', '2021-01-05 09:06:44'),
(2910, 'ANMOL INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2911, 'ANUP ENGINEERING LTD', '130', '', '2021-01-05 09:06:44'),
(2912, 'ARVIND FASHIONS LTD', '130', '', '2021-01-05 09:06:44'),
(2913, 'HUMMING BIRD EDUCATION LTD', '130', '', '2021-01-05 09:06:44'),
(2914, 'MSTC LTD', '130', '', '2021-01-05 09:06:44'),
(2915, 'EMBASSY OFFICE PARKS REIT', '130', '', '2021-01-05 09:06:44'),
(2916, 'CHANDNI MACHINES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2917, 'NORTHERN SPIRITS LTD', '130', '', '2021-01-05 09:06:44'),
(2918, 'COX & KINGS FINANCIAL SERVICE LTD', '130', '', '2021-01-05 09:06:44'),
(2919, 'RAIL VIKAS NIGAM LTD', '130', '', '2021-01-05 09:06:44'),
(2920, 'METROPOLIS HEALTHCARE LTD', '130', '', '2021-01-05 09:06:44'),
(2921, 'KPIT TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2922, 'POLYCAB INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2923, 'JINAAMS DRESS LTD', '130', '', '2021-01-05 09:06:44'),
(2924, 'VR FILMS & STUDIOS LTD', '130', '', '2021-01-05 09:06:44'),
(2925, 'VIKAS MULTICORP LTD', '130', '', '2021-01-05 09:06:44'),
(2926, 'NEOGEN CHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(2927, 'WHITE ORGANIC RETAIL LTD', '130', '', '2021-01-05 09:06:44'),
(2928, 'BMW INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2929, 'ARTEMIS ELECTRICALS LTD', '130', '', '2021-01-05 09:06:44'),
(2930, 'MAHESH DEVELOPERS LTD', '130', '', '2021-01-05 09:06:44'),
(2931, 'CIAN HEALTHCARE LTD', '130', '', '2021-01-05 09:06:44'),
(2932, 'HARISH TEXTILE ENGINEERS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2933, 'PRAKASH PIPES LTD', '130', '', '2021-01-05 09:06:44'),
(2934, 'DIGICONTENT LTD', '130', '', '2021-01-05 09:06:44'),
(2935, 'SBC EXPORTS LTD', '130', '', '2021-01-05 09:06:44'),
(2936, 'INDIAMART INTERMESH LTD', '130', '', '2021-01-05 09:06:44'),
(2937, 'DCM NOUVELLE LTD', '130', '', '2021-01-05 09:06:44'),
(2938, 'AFFLE (INDIA) LTD', '130', '', '2021-01-05 09:06:44'),
(2939, 'SPANDANA SPHOORTY FINANCIAL LTD.', '130', '', '2021-01-05 09:06:44'),
(2940, 'STERLING AND WILSON SOLAR LTD', '130', '', '2021-01-05 09:06:44'),
(2941, 'ALPHALOGIC TECHSYS LTD', '130', '', '2021-01-05 09:06:44'),
(2942, 'NOVATEOR RESEARCH LABORATORIES LTD', '130', '', '2021-01-05 09:06:44'),
(2943, 'IIFL WEALTH MANAGEMENT LTD', '130', '', '2021-01-05 09:06:44'),
(2944, 'IIFL SECURITIES LTD', '130', '', '2021-01-05 09:06:44'),
(2945, 'APM FINVEST LTD', '130', '', '2021-01-05 09:06:44'),
(2946, 'GUJARAT FLUOROCHEMICALS LTD', '130', '', '2021-01-05 09:06:44'),
(2947, 'INDIAN RAILWAY CTRNG ND TRSM CORP LTD', '130', '', '2021-01-05 09:06:44'),
(2948, 'GOBLIN INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2949, 'VISHWARAJ SUGAR INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2950, 'GREENPANEL INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2951, 'SHAHLON SILK INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2952, 'ANUROOP PACKAGING LTD', '130', '', '2021-01-05 09:06:44'),
(2953, 'CSB BANK LTD', '130', '', '2021-01-05 09:06:44'),
(2954, 'UJJIVAN SMALL FINANCE BANK LTD', '130', '', '2021-01-05 09:06:44'),
(2955, 'SOMANY HOME INNOVATION LTD', '130', '', '2021-01-05 09:06:44'),
(2956, 'PRINCE PIPES AND FITTINGS LTD', '130', '', '2021-01-05 09:06:44'),
(2957, 'ASSAM ENTRADE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2958, 'ARTEMIS MEDICARE SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2959, 'SUMITOMO CHEMICAL INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2960, 'TRANWAY TECHNOLOGIES LTD', '130', '', '2021-01-05 09:06:44'),
(2961, 'BIRLA TYRES LTD', '130', '', '2021-01-05 09:06:44'),
(2962, 'UNIVERSUS PHOTO IMAGINGS LTD', '130', '', '2021-01-05 09:06:44'),
(2963, 'ICL ORGANIC DAIRY PRODUCTS LTD', '130', '', '2021-01-05 09:06:44'),
(2964, 'SUVEN PHARMACEUTICALS LTD', '130', '', '2021-01-05 09:06:44'),
(2965, 'SBI CARDS AND PAYMENT SERVICES LTD', '130', '', '2021-01-05 09:06:44'),
(2966, 'NIPPON INDIA MUTUAL FUND', '130', '', '2021-01-05 09:06:44'),
(2967, 'RO JEWELS LTD', '130', '', '2021-01-05 09:06:44'),
(2968, 'NIPPON INDIA MUTUAL FUND', '130', '', '2021-01-05 09:06:44'),
(2969, 'NIPPON INDIA MUTUAL FUND', '130', '', '2021-01-05 09:06:44'),
(2970, 'NIPPON INDIA MUTUAL FUND', '130', '', '2021-01-05 09:06:44');
INSERT INTO `stock_details` (`id`, `stock_name`, `current_price`, `previous_day_price`, `cdate`) VALUES
(2971, 'ABB POWER PRODUCTS AND SYSTEMS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2972, 'DJ MEDIAPRINT & LOGISTICS LTD', '130', '', '2021-01-05 09:06:44'),
(2973, 'BILLWIN INDUSTRIES LTD', '130', '', '2021-01-05 09:06:44'),
(2974, 'AARTI SURFACTANTS LTD', '130', '', '2021-01-05 09:06:44'),
(2975, 'BOROSIL ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2976, 'ROSSARI BIOTECH LTD', '130', '', '2021-01-05 09:06:44'),
(2977, 'NDR AUTO COMPONENTS ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2978, 'MINDSPACE BUSINESS PARKS REIT', '130', '', '2021-01-05 09:06:44'),
(2979, 'MAX HEALTHCARE INSTITUTE ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2980, 'TATA MOTORS LIMITED DIFFERENTIAL VOTING RIGHTS SHARES CLS. A', '130', '', '2021-01-05 09:06:44'),
(2981, 'FUTURE ENTERPRISES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2982, 'JAIN IRRIGATION SYSTEMS ORD SHS DVR', '130', '', '2021-01-05 09:06:44'),
(2983, 'STAMPEDE CAPITAL LTD DIFFERENTIAL VOTING RIGHTS SHARES', '130', '', '2021-01-05 09:06:44'),
(2984, 'KARUR VYSYA BANK LTD', '130', '', '2021-01-05 09:06:44'),
(2985, 'TIDE WATER OIL CO INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2986, 'AMRUTANJAN HEALTH CARE LTD', '130', '', '2021-01-05 09:06:44'),
(2987, 'XPRO INDIA LIMITED', '130', '', '2021-01-05 09:06:44'),
(2988, 'HISAR METAL INDUSTRIES ORD SHS', '130', '', '2021-01-05 09:06:44'),
(2989, 'BHARAT RASAYAN LTD', '130', '', '2021-01-05 09:06:44'),
(2990, 'EASTERN SILK INDUSTRIES LTD.', '130', '', '2021-01-05 09:06:44'),
(2991, 'FERTILISERS & CHEMICALS TRAVANCORE LTD', '130', '', '2021-01-05 09:06:44'),
(2992, 'GINNI FILAMENTS LIMITED', '130', '', '2021-01-05 09:06:44'),
(2993, 'SOUTHERN PETROCHEMICAL INDUSTRIES CORPLD', '130', '', '2021-01-05 09:06:44'),
(2994, 'DE NORA INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(2995, 'HARITA SEATING SYSTEMS LTD', '130', '', '2021-01-05 09:06:44'),
(2996, 'SAKSOFT LTD.', '130', '', '2021-01-05 09:06:44'),
(2997, 'SALONA COTSPIN LTD', '130', '', '2021-01-05 09:06:44'),
(2998, 'ANDHRA SUGARS LTD', '130', '', '2021-01-05 09:06:44'),
(2999, 'INDIA MOTOR PARTS & ACCESSORIES LTD', '130', '', '2021-01-05 09:06:44'),
(3000, 'KCP LTD', '130', '', '2021-01-05 09:06:44'),
(3001, 'SUNDARAM FINANCE LIMITED', '130', '', '2021-01-05 09:06:44'),
(3002, 'SUNDARAM BRAKE LININGS LTD', '130', '', '2021-01-05 09:06:44'),
(3003, 'WHEELS INDIA LTD', '130', '', '2021-01-05 09:06:44'),
(3004, 'LAMBODHARA TEXTILES LTD', '130', '', '2021-01-05 09:06:44'),
(3005, 'MAITHAN ALLOYS LTD', '130', '', '2021-01-05 09:06:44'),
(3006, 'LOHIA SECURITIES LTD.', '130', '', '2021-01-05 09:06:44'),
(3007, 'ORISSA MINERALS DEVELOPMENT COMPANY LTD', '130', '', '2021-01-05 09:06:44'),
(3008, 'ASHIKA CREDIT CAPITAL LTD', '130', '', '2021-01-05 09:06:44'),
(3009, 'MADRAS FERTILIZERS LTD', '130', '', '2021-01-05 09:06:44'),
(3010, 'TATA STEEL PARTLY PAID ORD SHS', '130', '', '2021-01-05 09:06:44'),
(3011, 'INDIABULLS VENTURES PARTLY PAID ORD SHS', '130', '', '2021-01-05 09:06:44'),
(3012, 'RELIANCE INDUSTRIES PARTLY PAID ORD SHS', '130', '', '2021-01-05 09:06:44'),
(3013, 'ADITYA BIRLA FASHION AND RETAIL PARTLY PAID ORD SHS', '130', '', '2021-01-05 09:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `stock_ltp`
--

CREATE TABLE `stock_ltp` (
  `id` int(11) NOT NULL,
  `symbol` varchar(250) NOT NULL,
  `stock_etp_name` text NOT NULL,
  `current_price` double(10,2) NOT NULL,
  `today_date` varchar(200) NOT NULL,
  `previous_day_price` double(10,2) NOT NULL,
  `yesterday_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock_temp`
--

CREATE TABLE `stock_temp` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `stock_name` varchar(255) NOT NULL,
  `stock_transaction_type` varchar(300) NOT NULL,
  `stock_broker` varchar(1024) NOT NULL,
  `stock_date` date NOT NULL,
  `stock_contract_no` text NOT NULL,
  `stock_settlement_no` text NOT NULL,
  `stock_qty` decimal(13,2) NOT NULL,
  `stock_purchase_price` decimal(13,2) NOT NULL,
  `stock_amt_invested` bigint(20) NOT NULL,
  `stock_brokerage` decimal(10,2) NOT NULL,
  `stock_net_rate` decimal(13,2) NOT NULL,
  `stock_tax_value` decimal(13,2) NOT NULL,
  `stock_cgst` decimal(10,2) NOT NULL,
  `stock_sgst` decimal(10,2) NOT NULL,
  `stock_igst` decimal(10,2) NOT NULL,
  `stock_exchange_transaction` decimal(10,2) NOT NULL,
  `stock_stt` decimal(10,2) NOT NULL,
  `stock_sebi_fee` decimal(10,2) NOT NULL,
  `stock_stamp_duty` decimal(10,2) NOT NULL,
  `stock_net_amt` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_temp`
--

INSERT INTO `stock_temp` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `stock_name`, `stock_transaction_type`, `stock_broker`, `stock_date`, `stock_contract_no`, `stock_settlement_no`, `stock_qty`, `stock_purchase_price`, `stock_amt_invested`, `stock_brokerage`, `stock_net_rate`, `stock_tax_value`, `stock_cgst`, `stock_sgst`, `stock_igst`, `stock_exchange_transaction`, `stock_stt`, `stock_sebi_fee`, `stock_stamp_duty`, `stock_net_amt`) VALUES
(1, 2, 'aaa', 'Investment', 'Stock / Share', 'ZODIAC VENTURES LTD', 'Buy', 'A. C. CHOKSI SHAREBROKERS', '2021-01-10', '', '', 2.00, 20.00, 10, 10.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00),
(2, 2, 'Monu', 'Investment', 'Stock / Share', 'STATE BANK OF INDIA', 'Buy', 'AMBALAL SHARES', '2021-04-02', '', '', 10.00, 220.00, 2200, 0.00, 2200.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2200.00),
(3, 1, 'port_1', 'Investment', 'Stock / Share', 'YASH MANAGEMENT AND SATELLITE ORD SHS', 'Buy', 'ABHIPRA CAPITAL', '2021-05-06', 'Wea085', '1285743', 5.00, 12.25, 61, 0.00, 12.25, 1.00, 1.00, 1.00, 1.00, 0.00, 0.50, 0.50, 0.00, 15.00),
(4, 2, 'aaa', 'Investment', 'Stock / Share', 'RALLIS INDIA LIMITED', 'Buy', 'ALLWIN SECURITIES', '2021-05-03', '', '', 10.00, 1.00, 10, 1.00, 10.00, 1.00, 0.50, 0.50, 1.00, 0.00, 0.00, 0.00, 0.50, 12.00);

-- --------------------------------------------------------

--
-- Table structure for table `sub_assets`
--

CREATE TABLE `sub_assets` (
  `id` int(11) NOT NULL,
  `assets_id` int(11) NOT NULL,
  `sub_assets` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_assets`
--

INSERT INTO `sub_assets` (`id`, `assets_id`, `sub_assets`) VALUES
(1, 1, 'Stock / Share'),
(2, 1, 'MF / Mutual Fund'),
(3, 1, 'NPS / National Pension System'),
(4, 1, 'EPF / Employee Provident Fund'),
(5, 1, 'SSY / Sukanya Samriddhi Yojana'),
(6, 1, 'FD / Fixed Deposit'),
(7, 1, 'NSC / National Saving Certificate'),
(8, 1, 'KVP / Kishan Vikas Patra'),
(10, 1, 'NCD / Debenture'),
(11, 2, 'ULIP'),
(14, 2, 'Term Plan'),
(15, 2, 'Car Insurance'),
(16, 2, 'Bike Insurance'),
(17, 2, 'Health Insurance'),
(18, 2, 'Travel Insurance'),
(19, 2, 'Home Insurance'),
(20, 3, 'Gold'),
(21, 3, 'Silver'),
(22, 3, 'Platinum'),
(23, 3, 'Precious Stone'),
(24, 3, 'Car'),
(25, 3, 'Bike'),
(26, 3, 'House'),
(27, 3, 'Agricultural Land'),
(28, 3, 'Jewellery'),
(29, 4, 'Cash in Saving A/C'),
(30, 4, 'Cash in Hand'),
(31, 5, 'Car Loan'),
(32, 5, 'Bike Loan'),
(33, 5, 'Home Loan'),
(34, 5, 'Personal Loan'),
(35, 5, 'Mortgage Loan'),
(36, 5, 'Appliance Loan'),
(37, 1, 'RD / Recurring Deposit'),
(38, 1, 'Bond / Corporate Bond'),
(39, 1, 'PPF / Public Provident Fund'),
(40, 1, 'SGB / Sovereign Gold Bond'),
(41, 4, 'Cash in wallet'),
(42, 4, 'Cash in post office saving A/c'),
(43, 3, 'Commercial Land'),
(44, 3, 'Commercial Property'),
(45, 3, 'Commercial Vehicle'),
(46, 3, 'Digital Property'),
(47, 2, 'Life Insurance (Money Back)'),
(48, 2, 'Life Insurance (Endowment)'),
(49, 3, 'Art'),
(50, 1, 'Private Equity / Startup'),
(51, 1, 'SCSS / Senior Citizen Saving Scheme');

-- --------------------------------------------------------

--
-- Table structure for table `sub_expences`
--

CREATE TABLE `sub_expences` (
  `id` int(11) NOT NULL,
  `expences_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_expences`
--

INSERT INTO `sub_expences` (`id`, `expences_id`, `name`) VALUES
(1, 1, ' Charity'),
(2, 1, ' Child Care'),
(3, 1, ' Entertainment'),
(4, 1, ' Movie'),
(5, 1, ' Parental Care'),
(6, 1, 'Personal Care'),
(7, 1, 'Fuel'),
(8, 1, 'Drinks'),
(9, 1, 'Grocerry'),
(10, 1, 'Laundry'),
(11, 1, 'Medical Diagnostic'),
(12, 1, 'Medicine'),
(13, 1, 'Milk'),
(14, 1, 'News Paper'),
(15, 1, 'Parlour'),
(16, 1, 'Vegitable'),
(17, 2, 'Monthly Expences'),
(18, 2, 'Food'),
(19, 2, 'Hotel'),
(20, 2, 'Transport\r\n'),
(21, 2, 'Travel\r\n'),
(22, 3, 'Mobile Loan\r\n'),
(23, 3, 'Bike Loan\r\n'),
(24, 3, 'Car Loan'),
(25, 3, 'Credit Card'),
(26, 3, 'Home Loan'),
(27, 3, 'Mortgage Loan'),
(28, 3, 'Personal Loan'),
(29, 0, 'Rail\r\n'),
(30, 0, 'Air'),
(31, 0, 'Auto'),
(32, 0, 'Bus'),
(33, 4, 'Doctor\r\n'),
(34, 4, 'Online Classes\r\n'),
(35, 4, 'School\r\n'),
(36, 4, 'Club'),
(37, 4, 'Collage'),
(38, 4, 'Financial Advisor'),
(39, 4, 'Private Coaching'),
(40, 5, 'Bike'),
(41, 5, 'Car'),
(42, 5, 'Health'),
(43, 5, 'Home'),
(44, 5, 'Personal'),
(45, 5, 'Term'),
(46, 5, 'Travel'),
(47, 6, 'BOND'),
(48, 6, 'Cryptocurrency'),
(49, 6, 'EPF'),
(50, 6, 'Gold Bond'),
(51, 6, 'KVP'),
(52, 6, 'Mutual Fund'),
(53, 6, 'NCD'),
(54, 6, 'NPS'),
(55, 6, 'NSC'),
(56, 6, 'PPF'),
(57, 6, 'SCSS'),
(58, 6, 'Stock'),
(59, 6, 'SUKANYA'),
(60, 7, 'Bike\r\n'),
(61, 7, 'Car'),
(62, 7, 'Chimney'),
(63, 7, 'Water Filter\r\n'),
(64, 8, 'Furniture'),
(65, 8, 'Online'),
(66, 8, 'Cloths'),
(67, 8, 'Electricals'),
(68, 8, 'Electronics'),
(69, 8, 'House Hold'),
(70, 8, 'jewellery'),
(71, 9, 'Advance Tax'),
(72, 9, 'Corporate Tax'),
(73, 9, 'GST Paid'),
(74, 9, 'Income Tax'),
(75, 9, 'Land'),
(76, 9, 'Municipality Tax'),
(77, 9, 'Octroi'),
(78, 9, 'Professional Tax'),
(79, 9, 'Property Tax'),
(80, 9, 'Service Tax'),
(81, 9, 'TDS'),
(82, 10, 'Landline'),
(83, 10, 'Broadband'),
(84, 10, 'Cable TV'),
(85, 10, 'Electricity'),
(86, 10, 'Gas'),
(87, 10, 'Mobile'),
(88, 11, 'Expences'),
(89, 11, 'Food'),
(90, 11, 'Hotel'),
(91, 11, 'Transport'),
(92, 11, 'Travel'),
(93, 12, 'Babyseater'),
(94, 12, 'Driver'),
(95, 12, 'Durwan'),
(96, 12, 'Gardener'),
(97, 12, 'Maid'),
(98, 12, 'Sweeper');

-- --------------------------------------------------------

--
-- Table structure for table `sukanya_investment`
--

CREATE TABLE `sukanya_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `sukanya_transaction_type` varchar(300) NOT NULL,
  `sukanya_account_no` text NOT NULL,
  `sukanya_opening_date` date NOT NULL,
  `sukanya_maturity_date` date NOT NULL,
  `sukanya_lockin_period` date NOT NULL,
  `sukanya_date` date NOT NULL,
  `sukanya_amt_invested` decimal(12,2) NOT NULL,
  `sukanya_interest_rate` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sukanya_investment`
--

INSERT INTO `sukanya_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `sukanya_transaction_type`, `sukanya_account_no`, `sukanya_opening_date`, `sukanya_maturity_date`, `sukanya_lockin_period`, `sukanya_date`, `sukanya_amt_invested`, `sukanya_interest_rate`) VALUES
(1, 1, 'port_3', 'Investment', 'SSY / Sukanya Samriddhi Yojana', 'Buy', 'fdgd3', '2020-11-05', '2020-11-04', '2020-11-05', '2020-11-03', 33.00, 33.00);

-- --------------------------------------------------------

--
-- Table structure for table `sukanya_samriddhi_yojna_int`
--

CREATE TABLE `sukanya_samriddhi_yojna_int` (
  `id` int(11) NOT NULL,
  `from_date` varchar(250) NOT NULL,
  `to_date` varchar(250) NOT NULL,
  `interest_rate` varchar(250) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_mutual_fund`
--

CREATE TABLE `temp_mutual_fund` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(300) NOT NULL,
  `assets_name` varchar(300) NOT NULL,
  `sub_assets_name` varchar(300) NOT NULL,
  `mutual_company_name` varchar(1024) NOT NULL,
  `mutual_scheme` varchar(1024) NOT NULL,
  `mutual_folio_no` text NOT NULL,
  `mutual_transaction` varchar(300) NOT NULL,
  `mutual_type` varchar(300) NOT NULL,
  `mutual_sip_date` date NOT NULL,
  `mutual_date` date NOT NULL,
  `mutual_quantity` decimal(10,2) NOT NULL,
  `mutual_nav` varchar(800) NOT NULL,
  `mutual_amt_invested` decimal(10,2) NOT NULL,
  `mutual_stamp_charge` decimal(10,2) NOT NULL,
  `mutual_exit_load` decimal(10,2) NOT NULL,
  `mutual_advisor` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_mutual_fund`
--

INSERT INTO `temp_mutual_fund` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `mutual_company_name`, `mutual_scheme`, `mutual_folio_no`, `mutual_transaction`, `mutual_type`, `mutual_sip_date`, `mutual_date`, `mutual_quantity`, `mutual_nav`, `mutual_amt_invested`, `mutual_stamp_charge`, `mutual_exit_load`, `mutual_advisor`) VALUES
(2, 1, 'port_2', 'Investment', 'MF / Mutual Fund', 'BARODA MUTUAL FUND', 'ADITYA BIRLA SUN LIFE ARBITRAGE FUND - DIVIDEND - DIRECT PLAN', 'testing', 'Sell / Redeem', 'Debt', '2020-11-08', '2020-11-02', 22.00, '44', 44.00, 44.00, 0.00, 'Regular'),
(4, 2, 'aaa', 'Investment', 'MF / Mutual Fund', 'BOI AXA MUTUAL FUND', 'ADITYA BIRLA SUN LIFE ACTIVE DEBT MULTI MANAGER FOF SCHEME - REGULAR PLAN - DIVIDEND OPTION', 'testing', 'Buy / Purchase', 'Equity', '2020-12-07', '2020-12-07', 1.00, '100', 100.00, 0.00, 0.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `temp_nps_investment`
--

CREATE TABLE `temp_nps_investment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `nps_opening_date` date NOT NULL,
  `nps_type` varchar(400) NOT NULL,
  `nps_pran_no` bigint(20) NOT NULL,
  `nps_scheme` text NOT NULL,
  `nps_transaction_type` varchar(400) NOT NULL,
  `nps_date` date NOT NULL,
  `nps_qty` decimal(12,2) NOT NULL,
  `nps_purchase_price` decimal(12,2) NOT NULL,
  `nps_amt_invested` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_nps_investment`
--

INSERT INTO `temp_nps_investment` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `nps_opening_date`, `nps_type`, `nps_pran_no`, `nps_scheme`, `nps_transaction_type`, `nps_date`, `nps_qty`, `nps_purchase_price`, `nps_amt_invested`) VALUES
(4, 2, 'aaa', 'Investment', 'NPS / National Pension System', '2019-12-31', 'Tier I', 123456789, 'ICICI PRUDENTIAL PENSION FUND SCHEME A - TIER I', 'Sell / withdrawel', '2020-12-07', 1.00, 100.00, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `term_plan_insurance`
--

CREATE TABLE `term_plan_insurance` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `insurance_company_name` varchar(800) NOT NULL,
  `insurance_policy_name` varchar(1024) NOT NULL,
  `insurance_sum_assured` decimal(12,2) NOT NULL,
  `insurance_policy_no` text NOT NULL,
  `insurance_value` decimal(13,2) NOT NULL,
  `insurance_policy_start_date` date NOT NULL,
  `insurance_maturity_date` date NOT NULL,
  `insurance_maturity_benifits` varchar(200) NOT NULL,
  `insurance_lockin_period` date NOT NULL,
  `insurance_premium_date` date NOT NULL,
  `insurance_premium_amt` decimal(13,2) NOT NULL,
  `insurance_frequency` varchar(300) NOT NULL,
  `insurance_nextpremium_date` date NOT NULL,
  `insurance_premium_tenure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term_plan_insurance`
--

INSERT INTO `term_plan_insurance` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `insurance_company_name`, `insurance_policy_name`, `insurance_sum_assured`, `insurance_policy_no`, `insurance_value`, `insurance_policy_start_date`, `insurance_maturity_date`, `insurance_maturity_benifits`, `insurance_lockin_period`, `insurance_premium_date`, `insurance_premium_amt`, `insurance_frequency`, `insurance_nextpremium_date`, `insurance_premium_tenure`) VALUES
(3, 1, 'port_1', 'Insurance', 'Term Plan', 'testing', 'testing Policy name', 33.00, '33', 33.00, '2020-10-20', '2020-10-20', 'No', '2020-10-20', '2020-10-20', 33.00, 'Half Yearly', '2020-10-20', 33);

-- --------------------------------------------------------

--
-- Table structure for table `travel_insurance`
--

CREATE TABLE `travel_insurance` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `insurance_company_name` varchar(800) NOT NULL,
  `insurance_policy_name` varchar(1024) NOT NULL,
  `insurance_sum_assured` decimal(12,3) NOT NULL,
  `insurance_policy_no` text NOT NULL,
  `insurance_value` decimal(13,2) NOT NULL,
  `insurance_policy_start_date` date NOT NULL,
  `insurance_maturity_date` date NOT NULL,
  `insurance_maturity_benifits` varchar(200) NOT NULL,
  `insurance_lockin_period` date NOT NULL,
  `insurance_premium_date` date NOT NULL,
  `insurance_premium_amt` decimal(13,2) NOT NULL,
  `insurance_frequency` varchar(300) NOT NULL,
  `insurance_nextpremium_date` date NOT NULL,
  `insurance_premium_tenure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_insurance`
--

INSERT INTO `travel_insurance` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `insurance_company_name`, `insurance_policy_name`, `insurance_sum_assured`, `insurance_policy_no`, `insurance_value`, `insurance_policy_start_date`, `insurance_maturity_date`, `insurance_maturity_benifits`, `insurance_lockin_period`, `insurance_premium_date`, `insurance_premium_amt`, `insurance_frequency`, `insurance_nextpremium_date`, `insurance_premium_tenure`) VALUES
(3, 1, 'port_3', 'Insurance', 'Travel Insurance', 'testing', 'testing Policy name', 665.000, '665', 12.00, '2020-10-15', '2020-10-15', 'Yes', '2020-10-15', '2020-10-15', 665.00, 'Single Premium', '2020-10-20', 665);

-- --------------------------------------------------------

--
-- Table structure for table `ulip_insurance`
--

CREATE TABLE `ulip_insurance` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portfolio_name` varchar(800) NOT NULL,
  `assets_name` varchar(800) NOT NULL,
  `sub_assets_name` varchar(800) NOT NULL,
  `insurance_company_name` varchar(800) NOT NULL,
  `insurance_policy_name` varchar(1024) NOT NULL,
  `insurance_sum_assured` decimal(12,2) NOT NULL,
  `insurance_policy_no` text NOT NULL,
  `insurance_policy_start_date` date NOT NULL,
  `insurance_maturity_date` date NOT NULL,
  `insurance_maturity_benifits` varchar(200) NOT NULL,
  `insurance_lockin_period` date NOT NULL,
  `insurance_premium_date` date NOT NULL,
  `insurance_premium_amt` decimal(13,2) NOT NULL,
  `insurance_frequency` varchar(300) NOT NULL,
  `insurance_nextpremium_date` date NOT NULL,
  `insurance_premium_tenure` int(11) NOT NULL,
  `insurance_topup` decimal(13,2) NOT NULL,
  `insurance_totalpremium` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ulip_insurance`
--

INSERT INTO `ulip_insurance` (`id`, `user_id`, `portfolio_name`, `assets_name`, `sub_assets_name`, `insurance_company_name`, `insurance_policy_name`, `insurance_sum_assured`, `insurance_policy_no`, `insurance_policy_start_date`, `insurance_maturity_date`, `insurance_maturity_benifits`, `insurance_lockin_period`, `insurance_premium_date`, `insurance_premium_amt`, `insurance_frequency`, `insurance_nextpremium_date`, `insurance_premium_tenure`, `insurance_topup`, `insurance_totalpremium`) VALUES
(4, 1, 'port_1', 'Insurance', 'ULIP', 'test Company', 'testing Policy name', 2.00, '23', '2020-10-02', '2020-10-02', '', '2020-10-09', '2020-10-13', 22.00, 'Half Yearly', '2020-10-12', 2, 22.00, 22.00),
(5, 1, 'port_2', 'Insurance', 'ULIP', 'test Company', 'testing Policy name', 3.00, '33', '2020-10-02', '2020-10-02', '', '2020-10-15', '2020-10-01', 33.00, 'Monthly', '2020-10-12', 33, 3.00, 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `users_income`
--

CREATE TABLE `users_income` (
  `id` int(11) NOT NULL,
  `income_source_name` varchar(250) NOT NULL,
  `income_amount` double(10,2) NOT NULL,
  `date` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_income`
--

INSERT INTO `users_income` (`id`, `income_source_name`, `income_amount`, `date`, `user_id`) VALUES
(1, 'Income From Part Tme Job', 200.00, '05-03-2021', 2),
(2, 'Income From Gift', 1000.00, '05-03-2021', 2),
(3, 'Income From Salary', 52222.00, '11-02-2021', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_name`) VALUES
(1, 1, 'grpp_1'),
(2, 1, 'group_2'),
(3, 1, 'group_3'),
(4, 1, 'group_4'),
(5, 1, 'group_5'),
(6, 1, 'group_6'),
(7, 2, 'not_my_grp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `affiliate_paid_percentage`
--
ALTER TABLE `affiliate_paid_percentage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_query`
--
ALTER TABLE `affiliate_query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_transaction_details`
--
ALTER TABLE `affiliate_transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_users`
--
ALTER TABLE `affiliate_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_code` (`user_code`);

--
-- Indexes for table `agricultural_land`
--
ALTER TABLE `agricultural_land`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_assets`
--
ALTER TABLE `all_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_loan`
--
ALTER TABLE `appliance_loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `art`
--
ALTER TABLE `art`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_heading`
--
ALTER TABLE `article_heading`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bike_insurance`
--
ALTER TABLE `bike_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bike_loan`
--
ALTER TABLE `bike_loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bond`
--
ALTER TABLE `bond`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bond_ltp`
--
ALTER TABLE `bond_ltp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bond_temp`
--
ALTER TABLE `bond_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `broker_details`
--
ALTER TABLE `broker_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_insurance`
--
ALTER TABLE `car_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_loan`
--
ALTER TABLE `car_loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_in_hand`
--
ALTER TABLE `cash_in_hand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_in_post_office`
--
ALTER TABLE `cash_in_post_office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_in_saving`
--
ALTER TABLE `cash_in_saving`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_in_wallet`
--
ALTER TABLE `cash_in_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commercial_land`
--
ALTER TABLE `commercial_land`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commercial_property`
--
ALTER TABLE `commercial_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commercial_vehicle`
--
ALTER TABLE `commercial_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commodity`
--
ALTER TABLE `commodity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_currency`
--
ALTER TABLE `crypto_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_property`
--
ALTER TABLE `digital_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_provident_fund_int`
--
ALTER TABLE `employee_provident_fund_int`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `epf_interest_rate`
--
ALTER TABLE `epf_interest_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `epf_investment`
--
ALTER TABLE `epf_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expences`
--
ALTER TABLE `expences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fd_investment`
--
ALTER TABLE `fd_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gold`
--
ALTER TABLE `gold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_insurance`
--
ALTER TABLE `health_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_insurance`
--
ALTER TABLE `home_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_loan`
--
ALTER TABLE `home_loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_list`
--
ALTER TABLE `income_list`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `index_tbl`
--
ALTER TABLE `index_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jewellery`
--
ALTER TABLE `jewellery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kisanvikaspatra_investment`
--
ALTER TABLE `kisanvikaspatra_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kisan_vikas_patra_int`
--
ALTER TABLE `kisan_vikas_patra_int`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `life_insurance_endowment`
--
ALTER TABLE `life_insurance_endowment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `life_insurance_moneyback`
--
ALTER TABLE `life_insurance_moneyback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_floating_rate`
--
ALTER TABLE `loan_floating_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mortgage_loan`
--
ALTER TABLE `mortgage_loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutual_fund_investment`
--
ALTER TABLE `mutual_fund_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutual_fund_name`
--
ALTER TABLE `mutual_fund_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutual_scheme`
--
ALTER TABLE `mutual_scheme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `national_saving_certificate_int`
--
ALTER TABLE `national_saving_certificate_int`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ncd_investment`
--
ALTER TABLE `ncd_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_pension_sys_nav`
--
ALTER TABLE `new_pension_sys_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `non_convertible_d_ltp`
--
ALTER TABLE `non_convertible_d_ltp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nps_investment`
--
ALTER TABLE `nps_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nps_scheme`
--
ALTER TABLE `nps_scheme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nsc_investment`
--
ALTER TABLE `nsc_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `personal_loan`
--
ALTER TABLE `personal_loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platinum`
--
ALTER TABLE `platinum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ppf_investment`
--
ALTER TABLE `ppf_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `precious_stone`
--
ALTER TABLE `precious_stone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `private_equity_investment`
--
ALTER TABLE `private_equity_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_provident_fund_int`
--
ALTER TABLE `public_provident_fund_int`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rd_investment`
--
ALTER TABLE `rd_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `scsc_int`
--
ALTER TABLE `scsc_int`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scss_investment`
--
ALTER TABLE `scss_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sgb_temp`
--
ALTER TABLE `sgb_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `silver`
--
ALTER TABLE `silver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sovergine_gold_bond`
--
ALTER TABLE `sovergine_gold_bond`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_details`
--
ALTER TABLE `stock_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_ltp`
--
ALTER TABLE `stock_ltp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_temp`
--
ALTER TABLE `stock_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_assets`
--
ALTER TABLE `sub_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_expences`
--
ALTER TABLE `sub_expences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sukanya_investment`
--
ALTER TABLE `sukanya_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sukanya_samriddhi_yojna_int`
--
ALTER TABLE `sukanya_samriddhi_yojna_int`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_mutual_fund`
--
ALTER TABLE `temp_mutual_fund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_nps_investment`
--
ALTER TABLE `temp_nps_investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term_plan_insurance`
--
ALTER TABLE `term_plan_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_insurance`
--
ALTER TABLE `travel_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulip_insurance`
--
ALTER TABLE `ulip_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_income`
--
ALTER TABLE `users_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `affiliate_paid_percentage`
--
ALTER TABLE `affiliate_paid_percentage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `affiliate_query`
--
ALTER TABLE `affiliate_query`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `affiliate_transaction_details`
--
ALTER TABLE `affiliate_transaction_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `affiliate_users`
--
ALTER TABLE `affiliate_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `agricultural_land`
--
ALTER TABLE `agricultural_land`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `all_assets`
--
ALTER TABLE `all_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appliance_loan`
--
ALTER TABLE `appliance_loan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `art`
--
ALTER TABLE `art`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `article_heading`
--
ALTER TABLE `article_heading`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bike`
--
ALTER TABLE `bike`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bike_insurance`
--
ALTER TABLE `bike_insurance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bike_loan`
--
ALTER TABLE `bike_loan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bond`
--
ALTER TABLE `bond`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bond_ltp`
--
ALTER TABLE `bond_ltp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3014;

--
-- AUTO_INCREMENT for table `bond_temp`
--
ALTER TABLE `bond_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `broker_details`
--
ALTER TABLE `broker_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=659;

--
-- AUTO_INCREMENT for table `budgets`
--
ALTER TABLE `budgets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `car_insurance`
--
ALTER TABLE `car_insurance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `car_loan`
--
ALTER TABLE `car_loan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_in_hand`
--
ALTER TABLE `cash_in_hand`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cash_in_post_office`
--
ALTER TABLE `cash_in_post_office`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cash_in_saving`
--
ALTER TABLE `cash_in_saving`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cash_in_wallet`
--
ALTER TABLE `cash_in_wallet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=740;

--
-- AUTO_INCREMENT for table `commercial_land`
--
ALTER TABLE `commercial_land`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `commercial_property`
--
ALTER TABLE `commercial_property`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `commercial_vehicle`
--
ALTER TABLE `commercial_vehicle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `commodity`
--
ALTER TABLE `commodity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `crypto_currency`
--
ALTER TABLE `crypto_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `digital_property`
--
ALTER TABLE `digital_property`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_provident_fund_int`
--
ALTER TABLE `employee_provident_fund_int`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `epf_interest_rate`
--
ALTER TABLE `epf_interest_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `epf_investment`
--
ALTER TABLE `epf_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expences`
--
ALTER TABLE `expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fd_investment`
--
ALTER TABLE `fd_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gold`
--
ALTER TABLE `gold`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `health_insurance`
--
ALTER TABLE `health_insurance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_insurance`
--
ALTER TABLE `home_insurance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_loan`
--
ALTER TABLE `home_loan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `income_list`
--
ALTER TABLE `income_list`
  MODIFY `income_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `index_tbl`
--
ALTER TABLE `index_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jewellery`
--
ALTER TABLE `jewellery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kisanvikaspatra_investment`
--
ALTER TABLE `kisanvikaspatra_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kisan_vikas_patra_int`
--
ALTER TABLE `kisan_vikas_patra_int`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `life_insurance_endowment`
--
ALTER TABLE `life_insurance_endowment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `life_insurance_moneyback`
--
ALTER TABLE `life_insurance_moneyback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loan_floating_rate`
--
ALTER TABLE `loan_floating_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mortgage_loan`
--
ALTER TABLE `mortgage_loan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutual_fund_investment`
--
ALTER TABLE `mutual_fund_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mutual_fund_name`
--
ALTER TABLE `mutual_fund_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `mutual_scheme`
--
ALTER TABLE `mutual_scheme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `national_saving_certificate_int`
--
ALTER TABLE `national_saving_certificate_int`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ncd_investment`
--
ALTER TABLE `ncd_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `new_pension_sys_nav`
--
ALTER TABLE `new_pension_sys_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `non_convertible_d_ltp`
--
ALTER TABLE `non_convertible_d_ltp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nps_investment`
--
ALTER TABLE `nps_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nps_scheme`
--
ALTER TABLE `nps_scheme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `nsc_investment`
--
ALTER TABLE `nsc_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_loan`
--
ALTER TABLE `personal_loan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `platinum`
--
ALTER TABLE `platinum`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ppf_investment`
--
ALTER TABLE `ppf_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `precious_stone`
--
ALTER TABLE `precious_stone`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `private_equity_investment`
--
ALTER TABLE `private_equity_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `public_provident_fund_int`
--
ALTER TABLE `public_provident_fund_int`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rd_investment`
--
ALTER TABLE `rd_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `scsc_int`
--
ALTER TABLE `scsc_int`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scss_investment`
--
ALTER TABLE `scss_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sgb_temp`
--
ALTER TABLE `sgb_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `silver`
--
ALTER TABLE `silver`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sovergine_gold_bond`
--
ALTER TABLE `sovergine_gold_bond`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stock_details`
--
ALTER TABLE `stock_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3014;

--
-- AUTO_INCREMENT for table `stock_ltp`
--
ALTER TABLE `stock_ltp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_temp`
--
ALTER TABLE `stock_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_assets`
--
ALTER TABLE `sub_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `sub_expences`
--
ALTER TABLE `sub_expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `sukanya_investment`
--
ALTER TABLE `sukanya_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sukanya_samriddhi_yojna_int`
--
ALTER TABLE `sukanya_samriddhi_yojna_int`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_mutual_fund`
--
ALTER TABLE `temp_mutual_fund`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `temp_nps_investment`
--
ALTER TABLE `temp_nps_investment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `term_plan_insurance`
--
ALTER TABLE `term_plan_insurance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `travel_insurance`
--
ALTER TABLE `travel_insurance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ulip_insurance`
--
ALTER TABLE `ulip_insurance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_income`
--
ALTER TABLE `users_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
