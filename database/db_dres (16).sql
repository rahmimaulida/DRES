-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2018 at 05:41 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_dres`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_action`
--

CREATE TABLE `tbl_action` (
  `id_action` int(11) NOT NULL,
  `sector` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL,
  `part_no` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `issue` text COLLATE latin1_general_ci NOT NULL,
  `action` text COLLATE latin1_general_ci NOT NULL,
  `when` date NOT NULL,
  `status` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `pic` varchar(128) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_action`
--

INSERT INTO `tbl_action` (`id_action`, `sector`, `date`, `part_no`, `issue`, `action`, `when`, `status`, `pic`) VALUES
(2, 'DRIVE', '2018-08-03', '12', 'testsa', 'tes', '2018-08-04', 'Aging', 'Jessyca'),
(3, 'AUTO', '2018-08-13', '123', 'eww', 'wew', '2018-08-13', 'Open', 'dicky'),
(4, 'PCBA', '2018-08-21', '321', 'Something', 'ok', '2018-08-21', 'Open', 'adiel'),
(5, 'DRIVE', '2018-08-21', '456', 'mdsfsk', 'ndjknsdfk', '2018-08-21', 'Aging', 'Rahmi'),
(6, 'PCBA', '2018-08-21', '555', 'jjdbsj', 'jbjcbjzbc', '2018-08-21', 'Open', 'adiel');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_approve`
--

CREATE TABLE `tbl_approve` (
  `no_ticket` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `li_name` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `li_date` datetime NOT NULL,
  `eng_name` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `eng_com` text COLLATE latin1_general_ci NOT NULL,
  `eng_date` datetime NOT NULL,
  `eng_status` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `mgr_name` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `mgr_com` text COLLATE latin1_general_ci NOT NULL,
  `mgr_date` datetime DEFAULT NULL,
  `mgr_status` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `spv` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `spv_com` text COLLATE latin1_general_ci NOT NULL,
  `spv_date` datetime DEFAULT NULL,
  `spv_status` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `finance_mgr` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `finance_mgrCom` text COLLATE latin1_general_ci NOT NULL,
  `finance_mgrDate` datetime NOT NULL,
  `finance_mgrStatus` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `sap_admin` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_approve`
--

INSERT INTO `tbl_approve` (`no_ticket`, `li_name`, `li_date`, `eng_name`, `eng_com`, `eng_date`, `eng_status`, `mgr_name`, `mgr_com`, `mgr_date`, `mgr_status`, `spv`, `spv_com`, `spv_date`, `spv_status`, `finance_mgr`, `finance_mgrCom`, `finance_mgrDate`, `finance_mgrStatus`, `sap_admin`) VALUES
('1', 'Rahmi', '2018-08-30 05:14:51', 'Putra Halim', 'fdsfsdfdsfd sfsdfdsfsdf', '2018-08-30 05:15:55', 'Approved', 'Rahmi', 'wqdwqdddsdsdsddw', '2018-08-30 05:17:58', 'Approved', 'roman', 'dwwdsdsadsadsdd', '2018-08-30 05:17:26', 'Approved', '', '', '0000-00-00 00:00:00', '', ''),
('2', 'Rahmi', '2018-08-30 05:23:57', 'Putra Halim', 'dsdsdsdfdsf', '2018-08-30 05:29:52', 'Approved', '', '', NULL, '', '', '', NULL, '', '', '', '0000-00-00 00:00:00', '', ''),
('3', 'Rahmi', '2018-08-30 11:51:19', 'Putra Halim', 'fsfsfsfffsgfd gfgfdgfg', '2018-08-31 10:50:05', 'Approved', '', '', NULL, '', '', '', NULL, '', '', '', '0000-00-00 00:00:00', '', ''),
('4', 'Susetyo', '2018-08-30 12:07:59', 'Fajar', 'QWEQWEQWEQWEQWEQWE', '2018-08-30 12:37:52', 'Approved', 'Susetyo', 'AASDASDSADASDA', '2018-08-30 12:43:10', 'Approved', 'adiel', 'ASASDASDADASDSAD', '2018-08-30 12:41:39', 'Approved', '', '', '0000-00-00 00:00:00', '', ''),
('5', 'LIauto', '2018-08-30 12:15:54', 'Fajar', 'SERSRSFSDFSF', '2018-08-30 12:39:11', 'Approved', 'Susetyo', 'REJECT FROM QMASDASDASDASDSADSAD', '2018-08-30 12:33:05', 'Reject', 'adiel', 'ASDASDASDSADA', '2018-08-30 12:41:52', 'Approved', '', '', '0000-00-00 00:00:00', '', ''),
('6', 'LIauto', '2018-08-30 12:18:17', 'Fajar', 'SDFSDFSDFSDFSDFSDFSDFS', '2018-08-30 12:41:08', 'Approved', 'Susetyo', 'ASDADSADADSADADS', '2018-08-30 12:43:14', 'Approved', 'adiel', 'ASDASDASDASDADS', '2018-08-30 12:42:04', 'Approved', '', '', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deflist`
--

CREATE TABLE `tbl_deflist` (
  `id_defcode` int(11) NOT NULL,
  `defcode` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_deflist`
--

INSERT INTO `tbl_deflist` (`id_defcode`, `defcode`) VALUES
(4, 'test'),
(3, '111111');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delegate`
--

CREATE TABLE `tbl_delegate` (
  `id_delegate` bigint(20) NOT NULL,
  `alternate_name` varchar(100) NOT NULL,
  `reason` text NOT NULL,
  `kapan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delegateFrom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_delegate`
--

INSERT INTO `tbl_delegate` (`id_delegate`, `alternate_name`, `reason`, `kapan`, `delegateFrom`) VALUES
(1, 'gfdsdg', 'gfgghgf', '2018-09-03 22:34:19', 'Rahmi'),
(2, 'gfdsdg', 'gfgghgf', '2018-09-03 22:34:20', 'Rahmi'),
(3, 'Rahmi Maulida', 'sdasdsd', '2018-09-03 22:34:59', 'Rahmi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `department`) VALUES
(2, 'Digital Transformation'),
(3, 'Production');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_history`
--

CREATE TABLE `tbl_history` (
  `id_history` int(11) NOT NULL,
  `no_ticket` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `information` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code_info` varchar(15) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_history`
--

INSERT INTO `tbl_history` (`id_history`, `no_ticket`, `information`, `date`, `code_info`) VALUES
(1, '1', 'Ticket 1 Success Added By habib At 2018-08-03 10:58:50', '2018-08-02 20:58:50', 'Add'),
(2, '1', 'Ticket No.1 Has Approved By yahoo at 2018-08-03 11:50:49', '2018-08-02 21:50:49', 'Approved'),
(3, '1', 'Ticket No.1 Has Update Comments By yahoo at 2018-08-03 02:34:36', '2018-08-02 12:34:36', 'Update Comment'),
(4, '1', 'yahoo Has Change Value Material 59641 From 12 To 14 At 2018-08-03 02:43:45', '2018-08-02 12:43:45', 'Update'),
(5, '1', 'Rahmi Has Change Value Material 59641 From 14 To 15 At 2018-08-03 03:27:03', '2018-08-02 13:27:03', 'Update'),
(6, '1', 'Ticket No.1 Has Approved By Rahmi at 2018-08-03 03:40:32', '2018-08-02 13:40:32', 'Approved'),
(7, '1', 'Ticket No.1 Has Update Comments By Rahmi at 2018-08-03 03:44:25', '2018-08-02 13:44:25', 'Update Comment'),
(8, '1', 'Ticket No.1 Has Update Status From Reject To Approved By Rahmi at 2018-08-03 04:09:23', '2018-08-02 14:09:23', 'Update Status'),
(9, '2', 'Ticket 2 Success Added By Rahmi At 2018-08-09 06:06:15', '2018-08-08 16:06:15', 'Add'),
(10, '3', 'Ticket 3 Success Added By Rahmi At 2018-08-09 06:20:23', '2018-08-08 16:20:23', 'Add'),
(11, '4', 'Ticket No.4 Success Added By habib At 2018-08-09 06:25:45', '2018-08-08 16:25:45', 'Add'),
(12, '4', 'Ticket No.4 Has Approved By Rahmi at 2018-08-09 06:36:15', '2018-08-08 16:36:15', 'Approved'),
(13, '', 'Ticket No. Has Approved By Rahmi at 2018-08-09 06:43:59', '2018-08-08 16:43:59', 'Approved'),
(14, '', 'Ticket No. Has Approved By Rahmi at 2018-08-09 06:47:34', '2018-08-08 16:47:34', 'Approved'),
(15, '', 'Ticket No. Has Approved By Rahmi at 2018-08-09 06:51:18', '2018-08-08 16:51:18', 'Approved'),
(16, '3', 'Ticket No.3 Has Approved By Rahmi at 2018-08-09 08:27:29', '2018-08-08 18:27:29', 'Approved'),
(17, '2', 'Ticket No.2 Has Rejected By Rahmi at 2018-08-09 08:32:37', '2018-08-08 18:32:37', 'Reject'),
(18, '2', 'Ticket No.2 Has Approved By Putra Halim at 2018-08-09 11:31:27', '2018-08-08 21:31:27', 'Approved'),
(19, '1', 'Ticket No.1 Has Update Comments By Rahmi at 2018-08-13 09:42:40', '2018-08-12 19:42:40', 'Update Comment'),
(20, '1', 'Ticket No.1 Has Update Comments By Rahmi at 2018-08-13 09:42:54', '2018-08-12 19:42:54', 'Update Comment'),
(21, '5', 'Ticket No.5 Has Approved By Rahmi at 2018-08-13 07:31:07', '2018-08-12 17:31:07', 'Approved'),
(22, '5', 'Ticket No.5 Has Approved By Rahmi at 2018-08-14 05:05:10', '2018-08-13 15:05:10', 'Approved'),
(23, '5', 'Ticket No.5 Has Approved By Rahmi at 2018-08-14 05:09:13', '2018-08-13 15:09:13', 'Approved'),
(24, '5', 'Ticket No.5 Has Approved By Rahmi at 2018-08-14 05:11:00', '2018-08-13 15:11:00', 'Approved'),
(25, '4', 'Ticket No.4 Has Update Comments By Rahmi at 2018-08-14 05:28:29', '2018-08-13 15:28:29', 'Update Comment'),
(26, '6', 'Ticket 6 Success Added By Rahmi At 2018-08-14 05:38:21', '2018-08-13 15:38:21', 'Add'),
(27, '6', 'Ticket No.6 Has Approved By Rahmi at 2018-08-14 05:38:42', '2018-08-13 15:38:42', 'Approved'),
(28, '5', 'Material 6554 Has Been Deleted By Rahmi At 2018-08-14 05:39:25', '2018-08-13 15:39:25', 'Delete'),
(29, '7', 'Ticket 7 Success Added By Rahmi At 2018-08-14 05:48:47', '2018-08-13 15:48:47', 'Add'),
(30, '7', 'Ticket No.7 Has Rejected By Rahmi at 2018-08-14 05:51:00', '2018-08-13 15:51:00', 'Reject'),
(31, '8', 'Ticket 8 Success Added By Rahmi At 2018-08-15 03:52:15', '2018-08-14 13:52:15', 'Add'),
(32, '9', 'Ticket No.9 Success Added By habib At 2018-08-21 07:56:22', '2018-08-20 17:56:22', 'Add'),
(33, '10', 'Ticket No.10 Success Added By habib At 2018-08-21 10:41:33', '2018-08-20 20:41:33', 'Add'),
(34, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-21 12:00:01', '2018-08-20 22:00:01', 'Add'),
(35, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-23 04:29:45', '2018-08-22 14:29:45', 'Add'),
(36, '9', 'Ticket No.9 Has Approved By Rahmi at 2018-08-23 04:30:05', '2018-08-22 14:30:05', 'Approved'),
(37, '6', 'Ticket No.6 Has Update Comments By Rahmi at 2018-08-23 05:04:09', '2018-08-22 15:04:09', 'Update Comment'),
(38, '9', 'Ticket No.9 Has Update Comments By Rahmi at 2018-08-23 05:07:59', '2018-08-22 15:07:59', 'Update Comment'),
(39, '3', 'Ticket No.3 Has Update Comments By Rahmi at 2018-08-23 05:20:54', '2018-08-22 15:20:54', 'Update Comment'),
(40, '3', 'Ticket No.3 Has Approved By Putra Halim at 2018-08-23 05:22:19', '2018-08-22 15:22:19', 'Approved'),
(41, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-23 05:36:11', '2018-08-22 15:36:11', 'Add'),
(42, '10', 'Ticket No.10 Success Added By habib At 2018-08-23 05:39:19', '2018-08-22 15:39:19', 'Add'),
(43, '10', 'Ticket No.10 Has Rejected By Putra Halim at 2018-08-23 05:42:37', '2018-08-22 15:42:37', 'Reject'),
(44, '10', 'Ticket No.10 Has Rejected By Rahmi at 2018-08-23 05:43:58', '2018-08-22 15:43:58', 'Reject'),
(45, '10', 'Ticket No.10 Success Added By habib At 2018-08-23 05:46:54', '2018-08-22 15:46:54', 'Add'),
(46, '10', 'Ticket No.10 Success Added By habib At 2018-08-23 05:49:24', '2018-08-22 15:49:24', 'Add'),
(47, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-23 05:52:33', '2018-08-22 15:52:33', 'Add'),
(48, '10', 'Material W90424083 Has Been Deleted By Rahmi At 2018-08-23 05:54:29', '2018-08-22 15:54:29', 'Delete'),
(49, '10', 'Material 707546 Has Been Deleted By Rahmi At 2018-08-23 05:54:40', '2018-08-22 15:54:40', 'Delete'),
(50, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-23 06:00:27', '2018-08-22 16:00:27', 'Add'),
(51, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-23 06:07:01', '2018-08-22 16:07:01', 'Add'),
(52, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-23 06:09:24', '2018-08-22 16:09:24', 'Add'),
(53, '10', 'Ticket No.10 Success Added By google At 2018-08-23 06:15:48', '2018-08-22 16:15:48', 'Add'),
(54, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-23 06:17:22', '2018-08-22 16:17:22', 'Add'),
(55, '10', 'Material 6554 Has Been Deleted By Rahmi At 2018-08-23 08:03:19', '2018-08-22 18:03:19', 'Delete'),
(56, '10', 'Material W90424083 Has Been Deleted By Rahmi At 2018-08-23 08:03:26', '2018-08-22 18:03:26', 'Delete'),
(57, '10', 'Material W80424541 Has Been Deleted By Rahmi At 2018-08-23 08:03:32', '2018-08-22 18:03:32', 'Delete'),
(58, '10', 'Material W90424083 Has Been Deleted By Rahmi At 2018-08-23 08:03:37', '2018-08-22 18:03:37', 'Delete'),
(59, '10', 'Material 59641 Has Been Deleted By Rahmi At 2018-08-23 08:03:42', '2018-08-22 18:03:42', 'Delete'),
(60, '10', 'Material W90424083 Has Been Deleted By Rahmi At 2018-08-23 08:03:48', '2018-08-22 18:03:48', 'Delete'),
(61, '10', 'Material W80424541 Has Been Deleted By Rahmi At 2018-08-23 08:03:52', '2018-08-22 18:03:52', 'Delete'),
(62, '10', 'Material 707546 Has Been Deleted By Rahmi At 2018-08-23 08:03:55', '2018-08-22 18:03:55', 'Delete'),
(63, '10', 'Material 6554 Has Been Deleted By Rahmi At 2018-08-23 08:04:02', '2018-08-22 18:04:02', 'Delete'),
(64, '10', 'Material W90424083 Has Been Deleted By Rahmi At 2018-08-23 08:04:30', '2018-08-22 18:04:30', 'Delete'),
(65, '10', 'Material W90424083 Has Been Deleted By Rahmi At 2018-08-23 08:04:35', '2018-08-22 18:04:35', 'Delete'),
(66, '10', 'Material W90424083 Has Been Deleted By Rahmi At 2018-08-23 08:04:39', '2018-08-22 18:04:39', 'Delete'),
(67, '10', 'Material W90424083 Has Been Deleted By Rahmi At 2018-08-23 08:04:44', '2018-08-22 18:04:44', 'Delete'),
(68, '10', 'Material 6554 Has Been Deleted By Rahmi At 2018-08-23 08:04:49', '2018-08-22 18:04:49', 'Delete'),
(69, '10', 'Material 59641 Has Been Deleted By Rahmi At 2018-08-23 08:04:55', '2018-08-22 18:04:55', 'Delete'),
(70, '10', 'Material W80424541 Has Been Deleted By Rahmi At 2018-08-23 08:05:04', '2018-08-22 18:05:04', 'Delete'),
(71, '10', 'Material W90424083 Has Been Deleted By Rahmi At 2018-08-23 08:05:09', '2018-08-22 18:05:09', 'Delete'),
(72, '10', 'Material 6554 Has Been Deleted By Rahmi At 2018-08-23 08:05:13', '2018-08-22 18:05:13', 'Delete'),
(73, '10', 'Material W80424541 Has Been Deleted By Rahmi At 2018-08-23 08:05:17', '2018-08-22 18:05:17', 'Delete'),
(74, '10', 'Material 59641 Has Been Deleted By Rahmi At 2018-08-23 08:05:21', '2018-08-22 18:05:21', 'Delete'),
(75, '10', 'Material W80424541 Has Been Deleted By Rahmi At 2018-08-23 08:05:26', '2018-08-22 18:05:26', 'Delete'),
(76, '10', 'Ticket No.10 Has Update Status From Reject To Approved By Rahmi at 2018-08-23 08:06:26', '2018-08-22 18:06:26', 'Update Status'),
(77, '10', 'Ticket No.10 Success Added By habib At 2018-08-23 08:08:49', '2018-08-22 18:08:49', 'Add'),
(78, '10', 'Ticket No.10 Has Update Comments By Rahmi at 2018-08-23 08:10:08', '2018-08-22 18:10:08', 'Update Comment'),
(79, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-28 05:54:23', '2018-08-27 15:54:23', 'Add'),
(80, '10', 'Material W90424083 Has Been Deleted By Rahmi At 2018-08-28 09:03:32', '2018-08-27 19:03:32', 'Delete'),
(81, '10', 'Material 6554 Has Been Deleted By Rahmi At 2018-08-28 09:03:37', '2018-08-27 19:03:37', 'Delete'),
(82, '10', 'Ticket No.10 Success Added By habib At 2018-08-28 11:27:37', '2018-08-27 21:27:37', 'Add'),
(83, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-29 04:38:26', '2018-08-28 14:38:26', 'Add'),
(84, '10', 'Ticket No.10 Has Update Comments By Rahmi at 2018-08-29 04:38:48', '2018-08-28 14:38:48', 'Update Comment'),
(85, '10', 'Ticket No.10 Success Added By habib At 2018-08-29 04:46:41', '2018-08-28 14:46:41', 'Add'),
(86, '10', 'Ticket No.10 Has Approved By yahoo at 2018-08-29 04:47:45', '2018-08-28 14:47:45', 'Approved'),
(87, '10', 'Ticket No.10 Has Approved By Rahmi at 2018-08-29 04:48:39', '2018-08-28 14:48:39', 'Approved'),
(88, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-29 05:19:52', '2018-08-28 15:19:52', 'Add'),
(89, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-29 09:56:16', '2018-08-28 19:56:16', 'Add'),
(90, '10', 'Ticket No.10 Has Update Comments By Rahmi at 2018-08-29 09:56:34', '2018-08-28 19:56:34', 'Update Comment'),
(91, '10', 'Ticket 10 Success Added By Rahmi At 2018-08-29 10:45:43', '2018-08-28 20:45:43', 'Add'),
(92, '2', 'Ticket No.2 Has Approved By Rahmi at 2018-08-29 10:58:01', '2018-08-28 20:58:01', 'Approved'),
(93, '1', 'Ticket 1 Success Added By Rahmi At 2018-08-29 11:13:18', '2018-08-28 21:13:18', 'Add'),
(94, '1', 'Ticket 1 Success Added By Rahmi At 2018-08-29 11:21:54', '2018-08-28 21:21:54', 'Add'),
(95, '2', 'Ticket 2 Success Added By Putra Halim At 2018-08-29 11:27:31', '2018-08-28 21:27:31', 'Add'),
(96, '3', 'Ticket No.3 Success Added By habib At 2018-08-29 11:32:16', '2018-08-28 21:32:16', 'Add'),
(97, '2', 'Ticket No.2 Has Rejected By Rahmi at 2018-08-29 11:34:26', '2018-08-28 21:34:26', 'Reject'),
(98, '2', 'Ticket No.2 Has Rejected By Putra Halim at 2018-08-29 11:37:23', '2018-08-28 21:37:23', 'Reject'),
(99, '1', 'Ticket No.1 Has Approved By Putra Halim at 2018-08-29 11:37:48', '2018-08-28 21:37:48', 'Approved'),
(100, '1', 'Ticket No.1 Has Approved By Rahmi at 2018-08-29 11:40:28', '2018-08-28 21:40:28', 'Approved'),
(101, '4', 'Ticket 4 Success Added By Rahmi At 2018-08-30 03:15:46', '2018-08-29 13:15:46', 'Add'),
(102, '5', 'Ticket 5 Success Added By Rahmi At 2018-08-30 03:18:31', '2018-08-29 13:18:31', 'Add'),
(103, '5', 'Ticket No.5 Has Approved By roman at 2018-08-30 05:03:29', '2018-08-29 15:03:29', 'Approved'),
(104, '2', 'Ticket No.2 Has Approved By roman at 2018-08-30 05:08:59', '2018-08-29 15:08:59', 'Approved'),
(105, '1', 'Ticket 1 Success Added By Rahmi At 2018-08-30 05:14:51', '2018-08-29 15:14:51', 'Add'),
(106, '1', 'Ticket No.1 Has Approved By Putra Halim at 2018-08-30 05:15:55', '2018-08-29 15:15:55', 'Approved'),
(107, '1', 'Ticket No.1 Has Update Comments By roman at 2018-08-30 05:17:26', '2018-08-29 15:17:26', 'Update Comment'),
(108, '1', 'Ticket No.1 Has Approved By Rahmi at 2018-08-30 05:17:58', '2018-08-29 15:17:58', 'Approved'),
(109, '2', 'Ticket 2 Success Added By Rahmi At 2018-08-30 05:23:57', '2018-08-29 15:23:57', 'Add'),
(110, '2', 'Ticket No.2 Has Approved By Putra Halim at 2018-08-30 05:29:52', '2018-08-29 15:29:52', 'Approved'),
(111, '3', 'Ticket 3 Success Added By Rahmi At 2018-08-30 11:51:19', '2018-08-30 04:51:19', 'Add'),
(112, '4', 'Ticket 4 Success Added By Susetyo At 2018-08-30 12:07:59', '2018-08-30 05:07:59', 'Add'),
(113, '5', 'Ticket No.5 Success Added By LIauto At 2018-08-30 12:15:54', '2018-08-30 05:15:54', 'Add'),
(114, '6', 'Ticket No.6 Success Added By LIauto At 2018-08-30 12:18:17', '2018-08-30 05:18:17', 'Add'),
(115, '5', 'Ticket No.5 Has Approved By Fajar at 2018-08-30 12:21:15', '2018-08-30 05:21:15', 'Approved'),
(116, '5', 'Ticket No.5 Has Update Comments By Fajar at 2018-08-30 12:23:29', '2018-08-30 05:23:29', 'Update Comment'),
(117, '6', 'Ticket No.6 Has Approved By Fajar at 2018-08-30 12:23:37', '2018-08-30 05:23:37', 'Approved'),
(118, '5', 'Ticket No.5 Has Update Comments By adiel at 2018-08-30 12:26:44', '2018-08-30 05:26:44', 'Update Comment'),
(119, '6', 'Ticket No.6 Has Update Comments By adiel at 2018-08-30 12:26:50', '2018-08-30 05:26:50', 'Update Comment'),
(120, '6', 'Ticket No.6 Has Update Comments By adiel at 2018-08-30 12:27:04', '2018-08-30 05:27:04', 'Update Comment'),
(121, '6', 'Ticket No.6 Has Update Comments By adiel at 2018-08-30 12:27:10', '2018-08-30 05:27:10', 'Update Comment'),
(122, '5', 'Ticket No.5 Has Rejected By Susetyo at 2018-08-30 12:31:22', '2018-08-30 05:31:22', 'Reject'),
(123, '5', 'Ticket No.5 Has Update Comments By Susetyo at 2018-08-30 12:33:05', '2018-08-30 05:33:05', 'Update Comment'),
(124, '5', 'Ticket No.5 Has Update Comments By adiel at 2018-08-30 12:35:50', '2018-08-30 05:35:50', 'Update Comment'),
(125, '5', 'Ticket No.5 Has Update Comments By adiel at 2018-08-30 12:36:16', '2018-08-30 05:36:16', 'Update Comment'),
(126, '6', 'Ticket No.6 Has Update Comments By adiel at 2018-08-30 12:37:03', '2018-08-30 05:37:03', 'Update Comment'),
(127, '4', 'Ticket No.4 Has Approved By Fajar at 2018-08-30 12:37:52', '2018-08-30 05:37:52', 'Approved'),
(128, '5', 'Material 000000000000706795 Has Been Deleted By Fajar At 2018-08-30 12:38:51', '2018-08-30 05:38:51', 'Delete'),
(129, '5', 'Ticket No.5 Has Update Status From Reject To Approved By Fajar at 2018-08-30 12:39:11', '2018-08-30 05:39:11', 'Update Status'),
(130, '6', 'Material 000000000000244807 Has Been Deleted By Fajar At 2018-08-30 12:39:39', '2018-08-30 05:39:39', 'Delete'),
(131, '6', 'Ticket No.6 Has Update Status From Reject To Approved By Fajar at 2018-08-30 12:41:08', '2018-08-30 05:41:08', 'Update Status'),
(132, '4', 'Ticket No.4 Has Update Comments By adiel at 2018-08-30 12:41:39', '2018-08-30 05:41:39', 'Update Comment'),
(133, '5', 'Ticket No.5 Has Update Comments By adiel at 2018-08-30 12:41:48', '2018-08-30 05:41:48', 'Update Comment'),
(134, '5', 'Ticket No.5 Has Update Comments By adiel at 2018-08-30 12:41:52', '2018-08-30 05:41:52', 'Update Comment'),
(135, '6', 'Ticket No.6 Has Update Comments By adiel at 2018-08-30 12:41:59', '2018-08-30 05:41:59', 'Update Comment'),
(136, '6', 'Ticket No.6 Has Update Comments By adiel at 2018-08-30 12:42:04', '2018-08-30 05:42:04', 'Update Comment'),
(137, '4', 'Ticket No.4 Has Approved By Susetyo at 2018-08-30 12:43:10', '2018-08-30 05:43:10', 'Approved'),
(138, '6', 'Ticket No.6 Has Approved By Susetyo at 2018-08-30 12:43:14', '2018-08-30 05:43:14', 'Approved'),
(139, '3', 'Ticket No.3 Has Approved By Putra Halim at 2018-08-31 10:50:05', '2018-08-31 03:50:05', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_masterdata`
--

CREATE TABLE `tbl_masterdata` (
  `id_data` int(11) NOT NULL,
  `plant` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `sector` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `line` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_masterdata`
--

INSERT INTO `tbl_masterdata` (`id_data`, `plant`, `sector`, `line`) VALUES
(2, 'PEL', 'AUTO', 'PEL F3 PLC'),
(3, 'PEL', 'AUTO', 'PEL F3 LEC'),
(4, 'PEL', 'AUTO', 'PEL F3 SAFETY'),
(5, 'PEL', 'AUTO', 'PEL KANPAI MEDIUM'),
(6, 'PEL', 'AUTO', 'PEL F3 MOBIYA'),
(7, 'PEL', 'AUTO', 'Brick40'),
(8, 'PEL', 'AUTO', 'Catch Up'),
(9, 'PEL', 'AUTO', 'Jiaolong'),
(10, 'PEL', 'AUTO', 'KANPAI-BIG'),
(11, 'PEL', 'AUTO', 'M238'),
(12, 'PEL', 'AUTO', 'M580'),
(13, 'PEL', 'AUTO', 'Mirano I/O'),
(14, 'PEL', 'AUTO', 'Mobiya'),
(15, 'PEL', 'DRIVE', 'ATS22'),
(16, 'PEL', 'DRIVE', 'ATS48'),
(18, 'PEL', 'AUTO', 'OPAL HIP'),
(20, 'PEL', 'AUTO', 'PEL KANPAI BIGs'),
(21, 'PEL', 'AUTO', 'PEL KANPAI BIGs'),
(23, 'PEL', 'AUTO', 'PEL KANPAI BIGs'),
(24, 'BLP', 'AUTO', 'PEL KANPAI BIG'),
(25, 'BLP', 'AUTO', 'PEL KANPAI BIG'),
(26, 'PEL', 'PCBA', 'PEL KANPAI BIG'),
(27, 'PEL', 'DRIVE', 'PEL F3 PLC'),
(28, 'PEL', 'DRIVE', 'PEL F3 PLC'),
(29, 'PEL', 'AUTO', 'PEL KANPAI BIGs'),
(36, 'PEL', 'IDMST', 'ujyyj'),
(31, 'PEL', 'DRIVE', 'PEL KANPAI BIG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_material`
--

CREATE TABLE `tbl_material` (
  `id_material` bigint(11) NOT NULL,
  `material_name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `material_description` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `product_family` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `price` double NOT NULL,
  `uom` varchar(25) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_material`
--

INSERT INTO `tbl_material` (`id_material`, `material_name`, `material_description`, `product_family`, `price`, `uom`) VALUES
(1, '000000000000006554', 'KUSTBEUTEL 80 X 120 X 0,05', 'MOMENTUM', 0, 'PC'),
(2, '000000000000059641', '8 TEMPERATURE SENSOR MODULE MET148-2', 'Fusion', 0, 'PC'),
(3, '000000000000059660', 'REMOTE MODULE CORD L0,6M CCA770', 'Fusion', 0, 'PC'),
(4, '000000000000059661', 'REMOTE MODULE CORD L2M CCA772', 'Fusion', 0, 'PC'),
(5, '000000000000059662', 'REMOTE MODULE CORD L4M CCA774', 'Fusion', 0, 'PC'),
(6, '000000000000244807', 'Bolt spring', 'MOMENTUM', 0.605604, 'PC'),
(7, '000000000000279111', 'PACKUNGSCHILD 127 X 37,5', 'MOMENTUM', 0, 'PC'),
(8, '000000000000445678', 'PCB. ALIM 24V Statique', 'PCBA SOLO', 0, 'PNL'),
(9, '000000000000667890', 'PCB. RADIO 24V Statique', 'PCBA SOLO', 0, 'PNL'),
(10, '000000000000700840', 'FOAM INSERT  350X100X25', 'MOMENTUM', 0, 'PC'),
(11, '000000000000703187', 'STOPPER', 'MOMENTUM', 0.136073, 'PC'),
(12, '000000000000703264', 'CODE-PIN FUER CONN MSTB', 'MOMENTUM', 0, 'PC'),
(13, '000000000000703583', 'DECKEL (GRAU)', 'MOMENTUM', 0.379337, 'PC'),
(14, '000000000000706795', 'ADAPT. TIO GND SPRING', 'MOMENTUM', 0.459768, 'PC'),
(15, '000000000000706801', 'I/O COVER', 'MOMENTUM', 0.58976, 'PC'),
(16, '000000000000706803', 'CARRIER', 'MOMENTUM', 0, 'PC'),
(17, '000000000000707115', 'BOLT-UL', 'MOMENTUM', 0.074367, 'PC'),
(18, '000000000000707181', 'TRANSFORMER UEBTR17', 'PCBA MOMENTUM', 8.4115, 'PC'),
(19, '000000000000707542', 'SHA 170ADI35000', 'MOMENTUM', 0, 'PC'),
(20, '000000000000707546', 'CARRIER ASSY ATIO', 'MOMENTUM', 1.785119, 'PC'),
(21, '000000000000707552', 'SHA 170ADO35000', 'MOMENTUM', 0, 'PC'),
(22, '000000000000707562', 'SHA 170ADM35010', 'MOMENTUM', 0, 'PC'),
(23, '000000000000707598', 'SHA 170ADI34000', 'MOMENTUM', 0, 'PC'),
(24, '000000000000707600', 'SHA 170ADO34000', 'MOMENTUM', 0, 'PC'),
(25, '000000000000707602', '170 ADM 390 30', 'MOMENTUM', 0, 'PC'),
(26, '000000000000707610', '170 AMM 090 00', 'MOMENTUM', 0, 'PC'),
(27, '000000000000707614', 'PRA 170ADM37010', 'MOMENTUM', 0, 'PC'),
(28, '000000000000708049', 'TRANSFORMER UEBTR19', 'PCBA MOMENTUM', 1.405326, 'PC'),
(29, '000000000000708055', 'CONNECTOR SHROUD', 'PCBA MOMENTUM', 0.680792, 'PC'),
(30, '000000000000708610', 'SELF LOCK.FOLD.CONT.W.INSERT 181X155X48', 'MOMENTUM', 0, 'PC'),
(31, '000000000000708892', 'SHA MISC PACKAGE  170 ADI 350 00', 'MOMENTUM', 1.147263, 'PC'),
(32, '000000000000708893', 'SHA MISC PACKAGE  170 ADM 350 1018.5', 'MOMENTUM', 1.168713, 'PC'),
(33, '000000000000708894', 'SHA MISC PACKAGE 170 ADM 370 10', 'MOMENTUM', 2.505412, 'PC'),
(34, '000000000000708896', 'SHA MISC PACKAGE 170 ADO 350 00', 'MOMENTUM', 1.217738, 'PC'),
(35, '000000000000708897', 'SHA MISC PACKAGE 170 ADM 390 30', 'MOMENTUM', 2.405825, 'PC'),
(36, '000000000000709728', 'PROGR  FW AMM 090 00', 'PCBA MOMENTUM', 1.396126, 'PC'),
(37, '000000000000709950', 'SHA 170ADM35011', 'MOMENTUM', 0, 'PC'),
(38, '000000000000709954', 'SHA MISC PACKAGE 170 ADM 350 11', 'MOMENTUM', 1.796948, 'PC'),
(39, '000000000000709965', 'PRA MISC PACKAGE 170 ADO 340 00', 'MOMENTUM', 1.36553, 'PC'),
(40, '000000000000709966', 'PRA MISC PACKAGE 170 ADI 340 00', 'MOMENTUM', 1.489502, 'PC'),
(41, '000000000000710025', '170 ADM 390 10', 'MOMENTUM', 0, 'PC'),
(42, '000000000000710037', 'MISC  PACKAGE  170 ADM 390 10', 'MOMENTUM', 3.390559, 'PC'),
(43, '000000000000710413', 'MSA MISC  PACKAGE  170 AMM 090 00', 'MOMENTUM', 1.468143, 'PC');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notif`
--

CREATE TABLE `tbl_notif` (
  `id_notif` int(11) NOT NULL,
  `link` varchar(160) COLLATE latin1_general_ci NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(25) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `id` int(11) NOT NULL,
  `position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prod_reject`
--

CREATE TABLE `tbl_prod_reject` (
  `no_ticket` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `id_reject` int(11) NOT NULL,
  `material_name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `material_description` varchar(75) COLLATE latin1_general_ci NOT NULL,
  `uom` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `plant` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `sector` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `line` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `issue` text COLLATE latin1_general_ci NOT NULL,
  `amount` double NOT NULL,
  `action` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `pic` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `insertedBy` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `insertDate` datetime NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_prod_reject`
--

INSERT INTO `tbl_prod_reject` (`no_ticket`, `id_reject`, `material_name`, `material_description`, `uom`, `qty`, `plant`, `sector`, `line`, `issue`, `amount`, `action`, `status`, `pic`, `insertedBy`, `insertDate`, `gambar`) VALUES
('2', 12, '000000000000706803', 'CARRIER', '', 24, 'PEL', 'DRIVE', 'ATS22', 'frrrtr', 0, 'OPEN', 'Not Yet Approved', 'Putra Halim', 'Rahmi', '2018-08-30 05:23:57', ''),
('2', 11, '000000000000703187', 'STOPPER', '', 3, 'PEL', 'DRIVE', 'ATS22', 'wefdfdf', 0.408219, 'OPEN', 'Not Yet Approved', 'Putra Halim', 'Rahmi', '2018-08-30 05:23:57', ''),
('1', 10, '000000000000244807', 'Bolt spring', '', 22, 'PEL', 'DRIVE', 'ATS22', 'fdfgfgfs', 13.323288, 'OPEN', 'Not Yet Approved', 'Putra Halim', 'Rahmi', '2018-08-30 05:14:51', ''),
('1', 9, '000000000000059661', 'REMOTE MODULE CORD L2M CCA772', '', 2, 'PEL', 'DRIVE', 'ATS22', 'sdsdsdsd', 0, 'OPEN', 'Not Yet Approved', 'Putra Halim', 'Rahmi', '2018-08-30 05:14:51', ''),
('3', 13, '000000000000059661', 'REMOTE MODULE CORD L2M CCA772', '', 12, 'PEL', 'DRIVE', 'ATS22', 'dsfsdfsdf', 0, 'OPEN', 'Not Yet Approved', 'Putra Halim', 'Rahmi', '2018-08-30 11:51:19', ''),
('4', 14, '000000000000059641', '8 TEMPERATURE SENSOR MODULE MET148-2', '', 6, 'PEL', 'AUTO', '', 'TESTING', 0, 'OPEN', 'Not Yet Approved', 'Fajar', 'Susetyo', '2018-08-30 12:07:59', ''),
('5', 15, '000000000000703187', '', '', 10, 'PEL', 'AUTO', 'PEL KANPAI BIG', 'TESTING', 1.36073, 'OPEN', 'Not Yet Approved', 'Fajar', 'LIauto', '2018-08-30 12:15:54', ''),
('6', 17, '000000000000703187', '', '', 11, 'PEL', 'AUTO', 'PEL KANPAI BIG', 'TEST NULL', 1.496803, 'OPEN', 'Not Yet Approved', 'Fajar', 'LIauto', '2018-08-30 12:18:17', ''),
('6', 18, '000000000000667890', '', '', 0, 'PEL', 'AUTO', 'PEL KANPAI BIG', 'TEST NULL', 0, 'OPEN', 'Not Yet Approved', 'Fajar', 'LIauto', '2018-08-30 12:18:17', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `position` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(15) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`position`, `level`) VALUES
('Line Inspector', 'Operator'),
('CS&Q Engineer', 'Super User'),
('CS&Q Manager', 'Administrator'),
('Support Function', 'User'),
('Plant Director', 'User'),
('CS&Q Cluster Leader', 'User'),
('VP', 'User'),
('Guest', 'Visitor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sector`
--

CREATE TABLE `tbl_sector` (
  `id` int(11) NOT NULL,
  `sector` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sector`
--

INSERT INTO `tbl_sector` (`id`, `sector`) VALUES
(2, 'PCBA'),
(3, 'IDMST'),
(4, 'IDVSD'),
(5, 'IDHMI'),
(6, 'AUTO');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_threshold`
--

CREATE TABLE `tbl_threshold` (
  `id_threshold` int(11) NOT NULL,
  `threshold` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_threshold`
--

INSERT INTO `tbl_threshold` (`id_threshold`, `threshold`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thresholdqty`
--

CREATE TABLE `tbl_thresholdqty` (
  `id` int(11) NOT NULL,
  `thresholdQty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_thresholdqty`
--

INSERT INTO `tbl_thresholdqty` (`id`, `thresholdQty`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` varchar(10) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `level` varchar(15) NOT NULL,
  `position` varchar(100) NOT NULL,
  `plant` varchar(6) NOT NULL,
  `department` varchar(50) NOT NULL,
  `sector` varchar(30) NOT NULL,
  `line` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `level`, `position`, `plant`, `department`, `sector`, `line`) VALUES
('SESA010101', 'admin@example.com', '202cb962ac59075b964b07152d234b70', 'Rahmi', '082392912842', 'Administrator', 'CS&Q Manager', 'PEL', '', 'DRIVE', 'ATS48'),
('SESA012345', 'adiel@gmail.com', '202cb962ac59075b964b07152d234b70', 'adiel', '08293741237', 'User', 'Supervisor (Support Function)', 'PEL', '', 'AUTO', 'PEL KANPAI BIG'),
('sesa147147', 'habib@gmail.com', '202cb962ac59075b964b07152d234b70', 'habib', '081232452169', 'Operator', 'Line Inspector', 'PEL', '', 'PCBA', 'PEL KANPAI BIG'),
('sesa012934', 'dicky@gmail.com', '202cb962ac59075b964b07152d234b70', 'dicky', '082995213492', 'User', 'CS&Q Cluster Leader', 'BLP', '', 'AUTO', 'KANPAI-BIG'),
('SESA036521', 'google@gmail.com', '202cb962ac59075b964b07152d234b70', 'google', '082155332255', 'Operator', 'Line Inspector', 'PEL', '', 'AUTO', 'PEL F3 MOBIYA'),
('sesa123321', 'jeje@gmail.com', '202cb962ac59075b964b07152d234b70', 'Jessyca', '082938192840', 'User', 'VP', 'PEL', '', 'DRIVE', 'PEL F3 PLC'),
('sesa123456', 'putra_halimz@gmail.com', '202cb962ac59075b964b07152d234b70', 'Putra Halim', '082385778799', 'Super User', 'CS&Q Engineer', 'PEL', '', 'DRIVE', 'PEL KANPAI BIG'),
('SESA789789', 'sulis@gmail.com', '202cb962ac59075b964b07152d234b70', 'sulis', '082917242812', 'User', 'Plant Director', 'BLP', '', 'AUTO', 'PEL F3 SAFETY'),
('SESA101010', 'yahoo@gmail.com', '202cb962ac59075b964b07152d234b70', 'yahoo', '082319285232', 'Super User', 'CS&Q Engineer', 'PEL', '', 'PCBA', 'PEL KANPAI BIG'),
('sesa323232', 'a@gmail.com', '202cb962ac59075b964b07152d234b70', 'Fajar', '081275790252', 'Super User', 'CS&Q Engineer', 'PEL', '', 'AUTO', 'PEL F3 SAFETY'),
('sesa121212', 'agussetiyandi47@gmail.com', '202cb962ac59075b964b07152d234b70', 'Rahmi Maulida', '81275790252', 'Administrator', 'CS&Q Manager', 'PEL', 'Digital Transformation', 'DRIVE', 'ATS48'),
('sesa010106', 'roman@gmail.com', '202cb962ac59075b964b07152d234b70', 'roman', '0895456562333', 'User', 'Finance Manager (Support Function) ', 'PEL', 'Finance', 'DRIVE', 'PEL F3 PLC'),
('SESA210856', 'susetyo.andono1@schneider-electric.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Susetyo', '0811692212', 'Administrator', 'CS&Q Manager', 'PEL', 'Finance', 'AUTO', 'Jiaolong'),
('sesa010105', 'knsndjsndjsnd@gmail.com', '202cb962ac59075b964b07152d234b70', 'mia', '6262226262262', 'User', 'Plant Director', 'PEL', 'Production', 'DRIVE', 'PEL F3 PLC'),
('sesa010103', 'fgfggfdgfd', '202cb962ac59075b964b07152d234b70', 'gfdsdg', '551511', 'Administrator', 'CS&Q Manager', 'PEL', 'Production', 'DRIVE', 'PEL KANPAI BIG'),
('sesa010165', 'agussetiyandi47@gmail.com', '202cb962ac59075b964b07152d234b70', 'Rahmi Maulida', '81275790252', 'Administrator', 'CS&Q Manager', 'PEL', 'Production', 'IDHMI', 'PEL KANPAI BIG'),
('sesa010166', 'agussetiyandi47@gmail.com', '202cb962ac59075b964b07152d234b70', 'Rahmi Maulida', '81275790252', 'Administrator', 'CS&Q Manager', 'PEL', 'Production', 'Array', 'M238'),
('sesa010198', 'agussetiyandi47@gmail.com', '202cb962ac59075b964b07152d234b70', 'Rahmi Maulida', '81275790252', 'Administrator', 'CS&Q Manager', 'PEL', 'Production', 'AUTO', 'PEL F3 LEC'),
('sesa096565', 'agussetiyandi47@gmail.com', '202cb962ac59075b964b07152d234b70', 'Rahmi Maulida', '081275790252', 'Administrator', 'CS&Q Manager', 'PEL', 'Production', 'AUTO,IDHMI,IDMST,IDVSD,PCBA,', 'Catch Up');

-- --------------------------------------------------------

--
-- Table structure for table `tempreject_sesa010101`
--

CREATE TABLE `tempreject_sesa010101` (
  `id_reject` int(11) NOT NULL,
  `material_name` varchar(100) DEFAULT NULL,
  `material_description` varchar(75) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `plant` varchar(6) DEFAULT NULL,
  `sector` varchar(30) DEFAULT NULL,
  `line` varchar(100) DEFAULT NULL,
  `issue` text,
  `amount` double DEFAULT NULL,
  `action` varchar(5) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `insertedBy` varchar(128) DEFAULT NULL,
  `kapan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempreject_sesa010101`
--

INSERT INTO `tempreject_sesa010101` (`id_reject`, `material_name`, `material_description`, `qty`, `plant`, `sector`, `line`, `issue`, `amount`, `action`, `status`, `pic`, `insertedBy`, `kapan`) VALUES
(1, '', '', 0, '', '', '', '', 0, '', '', '', '', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_action`
--
ALTER TABLE `tbl_action`
  ADD PRIMARY KEY (`id_action`);

--
-- Indexes for table `tbl_deflist`
--
ALTER TABLE `tbl_deflist`
  ADD PRIMARY KEY (`id_defcode`);

--
-- Indexes for table `tbl_delegate`
--
ALTER TABLE `tbl_delegate`
  ADD PRIMARY KEY (`id_delegate`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_history`
--
ALTER TABLE `tbl_history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `tbl_masterdata`
--
ALTER TABLE `tbl_masterdata`
  ADD PRIMARY KEY (`id_data`);

--
-- Indexes for table `tbl_material`
--
ALTER TABLE `tbl_material`
  ADD PRIMARY KEY (`id_material`);

--
-- Indexes for table `tbl_notif`
--
ALTER TABLE `tbl_notif`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indexes for table `tbl_position`
--
ALTER TABLE `tbl_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_prod_reject`
--
ALTER TABLE `tbl_prod_reject`
  ADD PRIMARY KEY (`id_reject`);

--
-- Indexes for table `tbl_sector`
--
ALTER TABLE `tbl_sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_threshold`
--
ALTER TABLE `tbl_threshold`
  ADD PRIMARY KEY (`id_threshold`);

--
-- Indexes for table `tbl_thresholdqty`
--
ALTER TABLE `tbl_thresholdqty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tempreject_sesa010101`
--
ALTER TABLE `tempreject_sesa010101`
  ADD PRIMARY KEY (`id_reject`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_action`
--
ALTER TABLE `tbl_action`
  MODIFY `id_action` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_deflist`
--
ALTER TABLE `tbl_deflist`
  MODIFY `id_defcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_delegate`
--
ALTER TABLE `tbl_delegate`
  MODIFY `id_delegate` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_history`
--
ALTER TABLE `tbl_history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `tbl_masterdata`
--
ALTER TABLE `tbl_masterdata`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_material`
--
ALTER TABLE `tbl_material`
  MODIFY `id_material` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_notif`
--
ALTER TABLE `tbl_notif`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_position`
--
ALTER TABLE `tbl_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_prod_reject`
--
ALTER TABLE `tbl_prod_reject`
  MODIFY `id_reject` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_sector`
--
ALTER TABLE `tbl_sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_threshold`
--
ALTER TABLE `tbl_threshold`
  MODIFY `id_threshold` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_thresholdqty`
--
ALTER TABLE `tbl_thresholdqty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tempreject_sesa010101`
--
ALTER TABLE `tempreject_sesa010101`
  MODIFY `id_reject` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
