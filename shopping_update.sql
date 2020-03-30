-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 06, 2018 at 10:24 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-01-24 16:21:18', '25-01-2017 12:05:43 AM'),
(2, 'rcis', '123', '2017-12-24 07:01:06', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Books', 'Test anuj', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Electronics', 'Electronic Products', '2017-01-24 19:19:32', ''),
(5, 'Furniture', 'test', '2017-01-24 19:19:54', ''),
(6, 'Fashion', 'Fashion', '2017-02-20 19:18:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `order_no` text CHARACTER SET utf8,
  `transaction_id` text CHARACTER SET utf8,
  `transaction_date` text CHARACTER SET utf8,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `order_no`, `transaction_id`, `transaction_date`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', '', '', '', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', '', '', '', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', '', '', '', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', '', '', '', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', '', '', '', NULL),
(7, 3, '1', 2, '2017-12-24 06:57:45', 'Internet Banking', '', '', '', NULL),
(8, 3, '2', 1, '2017-12-24 09:27:01', 'CashBaba', '', '', '', NULL),
(9, 3, '2', 1, '2017-12-24 09:41:48', 'CashBaba', '', '', '', NULL),
(10, 3, '2', 1, '2017-12-24 10:40:22', NULL, '', '', '', NULL),
(11, 3, '2', 1, '2017-12-24 10:42:41', NULL, '', '', '', NULL),
(12, 3, '2', 1, '2017-12-24 10:47:22', NULL, '', '', '', NULL),
(13, 3, '2', 1, '2017-12-24 10:50:55', NULL, '', '', '', NULL),
(14, 3, '2', 2, '2017-12-24 10:52:21', NULL, '', '', '', NULL),
(15, 3, '2', 2, '2017-12-24 10:59:41', NULL, '', '', '', NULL),
(16, 3, '4', 1, '2017-12-24 11:20:53', NULL, '', '', '', NULL),
(17, 3, '4', 1, '2017-12-24 11:23:24', NULL, '', '', '', NULL),
(18, 3, '4', 1, '2017-12-24 11:24:45', NULL, '', '', '', NULL),
(19, 3, '4', 1, '2017-12-24 11:25:54', NULL, '', '', '', NULL),
(20, 3, '4', 1, '2017-12-24 12:07:01', NULL, '', '', '', NULL),
(21, 3, '19', 1, '2017-12-24 12:07:01', NULL, '', '', '', NULL),
(22, 3, '4', 1, '2017-12-24 12:08:02', NULL, '', '', '', NULL),
(23, 3, '19', 1, '2017-12-24 12:08:02', NULL, '', '', '', NULL),
(24, 3, '4', 1, '2017-12-24 12:08:13', NULL, '', '', '', NULL),
(25, 3, '19', 1, '2017-12-24 12:08:14', NULL, '', '', '', NULL),
(26, 3, '4', 1, '2017-12-24 12:08:40', NULL, '', '', '', NULL),
(27, 3, '19', 1, '2017-12-24 12:08:40', NULL, '', '', '', NULL),
(28, 3, '15', 1, '2017-12-24 12:12:59', NULL, '', '', '', NULL),
(29, 3, '16', 1, '2017-12-24 12:14:52', NULL, '', '', '', NULL),
(30, 3, '2', 1, '2017-12-24 12:17:35', NULL, '', '', '', NULL),
(31, 3, '2', 1, '2017-12-24 12:18:14', NULL, '', '', '', NULL),
(32, 3, '16', 1, '2017-12-24 12:18:14', NULL, '', '', '', NULL),
(33, 3, '16', 1, '2017-12-26 04:39:27', NULL, '', '', '', NULL),
(34, 3, '16', 1, '2017-12-26 04:50:41', NULL, '', '', '', NULL),
(35, 3, '15', 1, '2017-12-26 04:54:47', NULL, '', '', '', NULL),
(36, 3, '15', 1, '2017-12-26 04:59:52', NULL, '', '', '', NULL),
(37, 3, '15', 1, '2017-12-26 05:03:01', NULL, '', '', '', NULL),
(38, 3, '16', 1, '2017-12-26 05:12:57', 'CashBaba', '', '', '', NULL),
(39, 3, '16', 1, '2017-12-26 05:38:50', NULL, '', '', '', NULL),
(40, 3, '16', 1, '2017-12-26 05:55:07', NULL, '', '', '', NULL),
(41, 3, '16', 1, '2017-12-26 06:13:10', NULL, '', '', '', NULL),
(42, 3, '15', 1, '2017-12-26 06:22:56', NULL, '', '', '', NULL),
(43, 3, '16', 1, '2017-12-26 06:52:20', NULL, '', '', '', NULL),
(44, 3, '15', 1, '2017-12-26 07:23:25', NULL, '', '', '', NULL),
(45, 3, '16', 1, '2017-12-26 07:23:25', NULL, '', '', '', NULL),
(46, 3, '15', 1, '2017-12-26 07:24:01', NULL, '', '', '', NULL),
(47, 3, '15', 1, '2017-12-26 07:24:24', NULL, '', '', '', NULL),
(48, 3, '15', 1, '2017-12-26 07:25:10', NULL, '', '', '', NULL),
(49, 3, '15', 1, '2017-12-26 07:25:46', NULL, '', '', '', NULL),
(50, 3, '15', 1, '2017-12-26 07:26:22', NULL, '', '', '', NULL),
(51, 3, '16', 1, '2017-12-26 07:26:22', NULL, '', '', '', NULL),
(52, 3, '1', 1, '2017-12-26 07:28:13', NULL, '', '', '', NULL),
(53, 3, '1', 1, '2017-12-26 07:54:07', NULL, '', '', '', NULL),
(54, 3, '16', 1, '2017-12-26 07:57:34', NULL, '', '', '', NULL),
(55, 3, '3', 1, '2017-12-26 08:57:12', NULL, '', '', '', NULL),
(56, 3, '16', 1, '2017-12-26 09:00:03', NULL, '', '', '', NULL),
(57, 3, '16', 1, '2017-12-26 09:18:26', NULL, '', '', '', NULL),
(58, 3, '16', 1, '2017-12-26 13:02:25', NULL, '', '', '', NULL),
(59, 3, '15', 1, '2018-01-08 08:01:32', NULL, '', '', '', NULL),
(60, 3, '15', 1, '2018-01-09 05:49:21', NULL, '', '', '', NULL),
(61, 3, '16', 1, '2018-01-09 06:58:30', NULL, '', '', '', NULL),
(62, 3, '15', 1, '2018-01-09 13:42:29', NULL, '', '', '', NULL),
(63, 3, '3', 1, '2018-01-13 06:22:32', NULL, '', '', '', NULL),
(64, 3, '15', 1, '2018-01-13 06:53:22', NULL, '', '', '', NULL),
(65, 3, '15', 1, '2018-01-13 09:05:28', NULL, '', '', '', NULL),
(66, 3, '15', 1, '2018-01-13 09:10:21', NULL, '', '', '', NULL),
(67, 2, '15', 1, '2018-01-13 11:12:50', 'CashBaba', '', '', '', NULL),
(68, 3, '15', 1, '2018-01-14 06:49:57', NULL, '', '', '', NULL),
(69, 3, '16', 1, '2018-01-14 06:54:38', NULL, '', '', '', NULL),
(70, 3, '15', 1, '2018-01-14 07:11:38', NULL, '', '', '', NULL),
(71, 3, '16', 1, '2018-01-14 07:11:38', NULL, '', '', '', NULL),
(72, 3, '15', 1, '2018-01-14 08:19:03', NULL, '', '', '', NULL),
(73, 3, '16', 1, '2018-01-14 08:19:03', NULL, '', '', '', NULL),
(74, 3, '15', 1, '2018-01-14 08:21:03', NULL, '', '', '', NULL),
(75, 3, '15', 1, '2018-01-15 06:17:27', NULL, '', '', '', NULL),
(76, 3, '15', 1, '2018-01-15 06:19:54', NULL, '', '', '', NULL),
(77, 3, '15', 1, '2018-01-15 06:21:42', NULL, '', '', '', NULL),
(78, 3, '15', 1, '2018-01-15 06:27:48', NULL, '', '', '', NULL),
(79, 3, '15', 1, '2018-01-15 06:28:19', NULL, '', '', '', NULL),
(80, 3, '15', 1, '2018-01-15 06:28:56', NULL, '', '', '', NULL),
(81, 3, '15', 1, '2018-01-15 06:29:11', NULL, '', '', '', NULL),
(82, 3, '15', 1, '2018-01-15 06:29:19', NULL, '', '', '', NULL),
(83, 3, '15', 1, '2018-01-15 06:29:57', NULL, '', '', '', NULL),
(84, 3, '15', 1, '2018-01-15 06:30:11', NULL, '', '', '', NULL),
(85, 3, '15', 1, '2018-01-15 06:30:15', NULL, '', '', '', NULL),
(86, 3, '15', 1, '2018-01-15 06:32:14', NULL, '', '', '', NULL),
(87, 3, '15', 1, '2018-01-15 06:43:52', NULL, '', '', '', NULL),
(88, 3, '15', 1, '2018-01-15 06:45:00', NULL, '', '', '', NULL),
(89, 3, '16', 1, '2018-01-15 06:45:00', NULL, '', '', '', NULL),
(90, 3, '15', 1, '2018-01-15 07:02:44', 'CashBaba', '', '', '', NULL),
(91, 3, '16', 1, '2018-01-15 07:02:44', 'CashBaba', '', '', '', NULL),
(92, 3, '15', 1, '2018-01-15 07:03:58', NULL, '', '', '', NULL),
(93, 3, '15', 1, '2018-01-15 07:36:38', 'CashBaba', NULL, NULL, NULL, NULL),
(94, 3, '15', 1, '2018-01-15 07:38:25', NULL, NULL, NULL, NULL, NULL),
(95, 3, '15', 1, '2018-01-15 07:41:29', 'CashBaba', '1516002091', '0000001291702228', '2018-يىل 15-January 13:42:15', NULL),
(96, 3, '15', 1, '2018-01-15 08:49:26', 'CashBaba', '1516006168', '0000001374824225', '2018-يىل 15-January 14:49:33', NULL),
(97, 3, '15', 1, '2018-01-15 08:56:58', 'CashBaba', '1516006621', '0000001444603846', '2018-يىل 15-January 14:57:05', NULL),
(98, 3, '15', 1, '2018-01-15 09:04:18', 'CashBaba', '1516007060', '0000001578313986', '2018-يىل 15-January 15:04:24', NULL),
(99, 3, '16', 1, '2018-01-15 09:04:18', 'CashBaba', '1516007060', '0000001578313986', '2018-يىل 15-January 15:04:24', NULL),
(100, 3, '15', 1, '2018-01-15 09:43:14', NULL, NULL, NULL, NULL, NULL),
(101, 3, '2', 1, '2018-01-25 10:57:19', NULL, NULL, NULL, NULL, NULL),
(102, 3, '15', 0, '2018-02-05 07:03:03', NULL, NULL, NULL, NULL, NULL),
(103, 3, '15', 2, '2018-02-05 07:08:11', NULL, NULL, NULL, NULL, NULL),
(104, 3, '15', 2, '2018-02-05 07:11:21', NULL, NULL, NULL, NULL, NULL),
(105, 3, '2', 1, '2018-02-05 07:16:18', NULL, NULL, NULL, NULL, NULL),
(106, 3, '4', 1, '2018-02-05 07:16:19', NULL, NULL, NULL, NULL, NULL),
(107, 3, '15', 2, '2018-02-05 07:16:19', NULL, NULL, NULL, NULL, NULL),
(108, 3, '15', 1, '2018-02-05 07:21:48', NULL, NULL, NULL, NULL, NULL),
(109, 3, '16', 1, '2018-02-05 07:21:48', NULL, NULL, NULL, NULL, NULL),
(110, 3, '15', 1, '2018-02-06 12:45:31', NULL, NULL, NULL, NULL, NULL),
(111, 3, '15', 1, '2018-02-06 12:54:33', NULL, NULL, NULL, NULL, NULL),
(112, 3, '15', 1, '2018-02-12 04:50:52', NULL, NULL, NULL, NULL, NULL),
(113, 3, '15', 1, '2018-02-12 06:08:17', NULL, NULL, NULL, NULL, NULL),
(114, 3, '15', 1, '2018-02-12 10:36:17', NULL, NULL, NULL, NULL, NULL),
(115, 3, '15', 1, '2018-02-12 10:40:53', NULL, NULL, NULL, NULL, NULL),
(116, 3, '15', 1, '2018-02-12 10:45:23', NULL, NULL, NULL, NULL, NULL),
(117, 3, '15', 2, '2018-02-12 10:49:03', NULL, NULL, NULL, NULL, NULL),
(118, 3, '15', 1, '2018-02-12 10:52:48', NULL, NULL, NULL, NULL, NULL),
(119, 3, '16', 1, '2018-02-12 10:55:35', NULL, NULL, NULL, NULL, NULL),
(120, 3, '16', 1, '2018-02-12 10:58:18', NULL, NULL, NULL, NULL, NULL),
(121, 3, '16', 1, '2018-02-12 11:16:06', NULL, NULL, NULL, NULL, NULL),
(122, 3, '15', 1, '2018-02-12 11:17:02', NULL, NULL, NULL, NULL, NULL),
(123, 3, '15', 1, '2018-02-12 11:21:30', NULL, NULL, NULL, NULL, NULL),
(124, 3, '15', 1, '2018-02-12 11:24:24', NULL, NULL, NULL, NULL, NULL),
(125, 3, '15', 1, '2018-02-12 11:26:15', NULL, NULL, NULL, NULL, NULL),
(126, 3, '15', 1, '2018-02-12 11:36:15', NULL, NULL, NULL, NULL, NULL),
(127, 3, '15', 1, '2018-02-12 11:37:12', NULL, NULL, NULL, NULL, NULL),
(128, 3, '15', 1, '2018-02-12 16:18:32', NULL, NULL, NULL, NULL, NULL),
(129, 3, '2', 1, '2018-02-13 09:00:10', NULL, NULL, NULL, NULL, NULL),
(130, 3, '4', 1, '2018-02-18 04:38:06', NULL, NULL, NULL, NULL, NULL),
(131, 3, '15', 1, '2018-02-18 05:42:42', NULL, NULL, NULL, NULL, NULL),
(132, 3, '15', 1, '2018-02-18 05:49:22', 'CashBaba', '1518932969', '0000000113535645', '18 February 2018 11.49.38', NULL),
(133, 3, '15', 1, '2018-02-18 06:18:02', 'CashBaba', '', '', '', NULL),
(134, 3, '15', 1, '2018-02-18 06:46:40', NULL, NULL, NULL, NULL, NULL),
(135, 3, '15', 1, '2018-02-18 06:52:51', NULL, NULL, NULL, NULL, NULL),
(136, 3, '15', 1, '2018-02-18 07:03:41', NULL, NULL, NULL, NULL, NULL),
(137, 3, '15', 1, '2018-02-18 07:48:51', NULL, NULL, NULL, NULL, NULL),
(138, 3, '15', 1, '2018-02-18 08:00:16', 'CashBaba', '', '', '', NULL),
(139, 3, '15', 1, '2018-02-18 08:46:48', 'CashBaba', '', '', '', NULL),
(140, 3, '16', 1, '2018-02-18 08:47:51', 'CashBaba', '1518943675', '0000000388728957', '18 February 2018 14.48.03', NULL),
(141, 3, '15', 1, '2018-02-18 08:55:45', 'CashBaba', '', '', '', NULL),
(142, 3, '15', 1, '2018-02-18 08:56:58', 'CashBaba', '', '0000001339145211', '2018-02-18T08:57:02.6571563Z', NULL),
(143, 3, '15', 1, '2018-02-18 08:58:15', 'CashBaba', '', '0000001461033092', '2018-02-18T08:58:21.3701374Z', NULL),
(144, 3, '16', 1, '2018-02-18 08:58:46', 'CashBaba', '1518944329', '0000000495670916', '18 February 2018 14.58.54', NULL),
(145, 3, '15', 1, '2018-02-18 09:00:51', 'CashBaba', '', '0000001656002057', '2018-02-18T09:00:57.1108076Z', NULL),
(146, 3, '15', 1, '2018-02-18 09:14:48', 'CashBaba', '', '0000001710291615', '2018-02-18T09:14:53.813196Z', NULL),
(147, 3, '15', 1, '2018-02-18 09:24:08', 'CashBaba', '', '0000001831944161', '2018-02-18T09:24:13.8562623Z', NULL),
(148, 3, '15', 1, '2018-02-18 09:27:10', NULL, NULL, NULL, NULL, NULL),
(149, 3, '15', 1, '2018-02-20 06:18:34', 'CashBaba', '', '', '', NULL),
(150, 3, '15', 1, '2018-02-26 05:56:10', NULL, NULL, NULL, NULL, NULL),
(151, 3, '15', 1, '2018-02-26 05:57:28', 'CashBaba', '', '0000000158125242', '2018-02-26T05:58:03.6677609Z', NULL),
(152, 3, '15', 1, '2018-02-26 05:59:07', 'CashBaba', '', '0000000219581006', '2018-02-26T05:59:26.3047129Z', NULL),
(153, 3, '15', 1, '2018-02-26 06:01:24', 'CashBaba', '', '0000000341557196', '2018-02-26T06:01:47.8680471Z', NULL),
(154, 3, '15', 1, '2018-02-26 06:03:45', NULL, NULL, NULL, NULL, NULL),
(155, 3, '4', 1, '2018-03-05 10:59:04', NULL, NULL, NULL, NULL, NULL),
(156, 3, '15', 1, '2018-03-05 11:01:16', NULL, NULL, NULL, NULL, NULL),
(157, 3, '15', 2, '2018-03-05 11:04:03', NULL, NULL, NULL, NULL, NULL),
(158, 3, '15', 1, '2018-03-05 11:04:41', NULL, NULL, NULL, NULL, NULL),
(159, 3, '15', 1, '2018-03-05 11:38:54', NULL, NULL, NULL, NULL, NULL),
(160, 3, '15', 1, '2018-03-05 11:39:16', NULL, NULL, NULL, NULL, NULL),
(161, 3, '15', 1, '2018-03-05 11:40:21', NULL, NULL, NULL, NULL, NULL),
(162, 3, '15', 1, '2018-03-05 11:41:55', NULL, NULL, NULL, NULL, NULL),
(163, 3, '15', 1, '2018-03-06 05:26:10', NULL, NULL, NULL, NULL, NULL),
(164, 3, '15', 1, '2018-03-06 05:27:54', NULL, NULL, NULL, NULL, NULL),
(165, 3, '15', 1, '2018-03-06 05:43:09', NULL, NULL, NULL, NULL, NULL),
(166, 3, '15', 1, '2018-03-06 07:30:41', NULL, NULL, NULL, NULL, NULL),
(167, 3, '15', 1, '2018-03-06 10:00:45', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `review` longtext NOT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productCompany` varchar(255) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productPriceBeforeDiscount` int(11) NOT NULL,
  `productDescription` longtext NOT NULL,
  `productImage1` varchar(255) NOT NULL,
  `productImage2` varchar(255) NOT NULL,
  `productImage3` varchar(255) NOT NULL,
  `shippingCharge` int(11) NOT NULL,
  `productAvailability` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'Micromax test', 139900, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 0, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 4, 4, 'Apple iPhone 6 (Silver, 16 GB)', 'Apple INC', 36990, 0, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, 'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)', 'Redmi', 10999, 0, '<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2017-02-04 04:03:15', ''),
(4, 4, 4, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo', 9999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 0, 'In Stock', '2017-02-04 04:04:43', ''),
(5, 4, 4, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', 'Lenovo', 11999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2017-02-04 04:06:17', ''),
(6, 4, 4, 'Micromax Canvas Mega 4G', 'Micromax', 6999, 0, '<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 0, 'In Stock', '2017-02-04 04:08:07', ''),
(7, 4, 4, 'SAMSUNG Galaxy On5', 'SAMSUNG', 7490, 0, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 0, 'In Stock', '2017-02-04 04:10:17', ''),
(8, 4, 4, 'OPPO A57', 'OPPO', 14990, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:11:54', ''),
(9, 4, 5, 'Affix Back Cover for Mi Redmi Note 4', 'Techguru', 259, 0, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:17:03', ''),
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 19990, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:26:17', ''),
(12, 4, 6, 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', 'Micromax', 10999, 0, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:28:17', ''),
(13, 4, 6, 'HP Core i5 5th Gen', 'HP', 41990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:30:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 22990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2017-02-04 04:32:15', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', 'ABC', 205, 250, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 0, 'In Stock', '2017-02-04 04:35:13', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', 'XYZ', 240, 0, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 0, 'In Stock', '2017-02-04 04:36:23', ''),
(17, 5, 9, 'Induscraft Solid Wood King Bed With Storage', 'Induscraft', 32566, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:40:37', ''),
(18, 5, 10, 'Nilkamal Ursa Metal Queen Bed', 'Nilkamal', 6523, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">@home by Nilkamal Ursa Metal Queen Bed</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:42:27', ''),
(19, 6, 12, 'Asian Casuals  (White, White)', 'Asian', 379, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: White, White</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Outer Material: Denim</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2017-03-10 20:16:03', ''),
(20, 6, 12, 'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)', 'Adidas', 4129, 5000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Weight</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Style</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Tip Shape</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Round</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Season</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>AW16</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Closure</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Laced</b></li></ul></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2017-03-10 20:19:22', '');

-- --------------------------------------------------------

--
-- Table structure for table `pro_ship_bill_address`
--

DROP TABLE IF EXISTS `pro_ship_bill_address`;
CREATE TABLE IF NOT EXISTS `pro_ship_bill_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sh_address` text NOT NULL,
  `sh_city` varchar(255) NOT NULL,
  `sh_state` varchar(255) NOT NULL,
  `sh_zip_code` varchar(255) NOT NULL,
  `bil_address` text NOT NULL,
  `bil_city` varchar(255) NOT NULL,
  `bil_state` varchar(255) NOT NULL,
  `bil_zip_code` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pro_ship_bill_address`
--

INSERT INTO `pro_ship_bill_address` (`id`, `user_id`, `sh_address`, `sh_city`, `sh_state`, `sh_zip_code`, `bil_address`, `bil_city`, `bil_state`, `bil_zip_code`, `created_on`) VALUES
(1, 3, 'shi Address', 'shi city', 'shi state', 'shi 002', 'bill address', 'bill city', 'bill state', 'bill 003', '2018-01-13 06:22:32'),
(2, 3, 'Address', 'City', 'State', 'Zip Code', 'Address', 'City', 'State', 'Zip Code', '2018-01-13 06:53:22'),
(3, 3, '', '', '', '', '', '', '', '', '2018-01-13 09:05:28'),
(4, 3, '', '', '', '', '', '', '', '', '2018-01-13 09:10:21'),
(5, 2, '', '', '', '', '', '', '', '', '2018-01-13 11:12:50'),
(6, 2, '', '', '', '', '', '', '', '', '2018-01-13 12:03:21'),
(7, 2, 'dfds', 'sdfds', 'sdfds', 'sdfsdf', 'dfdsf', 'fsdfdsf', 'sdfdsf', 'sdfsdfdsf', '2018-01-13 12:06:34'),
(8, 2, 'a', 'c', 's', 'z', 'a', 'c', 's', 'z', '2018-01-13 12:24:08'),
(9, 2, 'dff', '', '', '', 'dfdfd', '', '', '', '2018-01-13 12:26:47'),
(10, 2, '', '', '', '', '', '', '', '', '2018-01-13 12:34:31'),
(11, 2, '', '', '', '', '', '', '', '', '2018-01-13 12:43:14'),
(12, 2, '', '', '', '', '', '', '', '', '2018-01-13 12:49:50'),
(13, 2, '', '', '', '', '', '', '', '', '2018-01-13 12:57:02'),
(14, 2, '', '', '', '', '', '', '', '', '2018-01-13 12:58:44'),
(15, 2, '', '', '', '', '', '', '', '', '2018-01-13 12:59:56'),
(16, 2, '', '', '', '', '', '', '', '', '2018-01-13 13:00:22'),
(17, 3, 'Dhaka', 'mirpur', 'kallanpur', '1280', 'comilla', 'chouddagram', 'joymongal ', '3500', '2018-01-14 04:58:57'),
(18, 3, 'test address', 'test city', 'test state', 'test zip', 'test bill address', 'test bill city', 'test state', 'test bill zip', '2018-01-14 06:54:38'),
(19, 3, '', '', '', '', '', '', '', '', '2018-01-14 07:11:38'),
(20, 3, '', '', '', '', '', '', '', '', '2018-01-14 08:19:03'),
(21, 3, '', '', '', '', '', '', '', '', '2018-01-14 08:21:03'),
(22, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:17:27'),
(23, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:19:54'),
(24, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:21:42'),
(25, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:27:48'),
(26, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:28:19'),
(27, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:28:56'),
(28, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:29:11'),
(29, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:29:19'),
(30, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:29:57'),
(31, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:30:11'),
(32, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:30:15'),
(33, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:32:14'),
(34, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:43:52'),
(35, 3, '', '', '', '', '', '', '', '', '2018-01-15 06:45:00'),
(36, 3, '', '', '', '', '', '', '', '', '2018-01-15 07:02:44'),
(37, 3, '', '', '', '', '', '', '', '', '2018-01-15 07:03:58'),
(38, 3, '', '', '', '', '', '', '', '', '2018-01-15 07:34:03'),
(39, 3, '', '', '', '', '', '', '', '', '2018-01-15 07:36:38'),
(40, 3, '', '', '', '', '', '', '', '', '2018-01-15 07:38:25'),
(41, 3, '', '', '', '', '', '', '', '', '2018-01-15 07:41:29'),
(42, 3, '', '', '', '', '', '', '', '', '2018-01-15 08:49:26'),
(43, 3, 'Address', 'City ', 'State ', '3432gg', 'Address', 'City ', 'State ', '43243fgfg', '2018-01-15 08:56:58'),
(44, 3, '', '', '', '', '', '', '', '', '2018-01-15 09:04:18'),
(45, 3, '', '', '', '', '', '', '', '', '2018-01-15 09:43:14'),
(46, 3, '', '', '', '', '', '', '', '', '2018-01-25 10:57:19'),
(47, 3, '', '', '', '', '', '', '', '', '2018-02-05 07:03:03'),
(48, 3, '', '', '', '', '', '', '', '', '2018-02-05 07:08:11'),
(49, 3, '', '', '', '', '', '', '', '', '2018-02-05 07:11:21'),
(50, 3, '', '', '', '', '', '', '', '', '2018-02-05 07:16:18'),
(51, 3, '', '', '', '', '', '', '', '', '2018-02-05 07:21:48'),
(52, 3, '', '', '', '', '', '', '', '', '2018-02-06 12:45:31'),
(53, 3, '', '', '', '', '', '', '', '', '2018-02-06 12:54:33'),
(54, 3, '', '', '', '', '', '', '', '', '2018-02-12 04:50:52'),
(55, 3, '', '', '', '', '', '', '', '', '2018-02-12 06:08:17'),
(56, 3, '', '', '', '', '', '', '', '', '2018-02-12 10:36:17'),
(57, 3, '', '', '', '', '', '', '', '', '2018-02-12 10:40:53'),
(58, 3, '', '', '', '', '', '', '', '', '2018-02-12 10:45:23'),
(59, 3, '', '', '', '', '', '', '', '', '2018-02-12 10:49:03'),
(60, 3, '', '', '', '', '', '', '', '', '2018-02-12 10:52:48'),
(61, 3, '', '', '', '', '', '', '', '', '2018-02-12 10:55:35'),
(62, 3, '', '', '', '', '', '', '', '', '2018-02-12 10:58:18'),
(63, 3, '', '', '', '', '', '', '', '', '2018-02-12 11:16:06'),
(64, 3, '', '', '', '', '', '', '', '', '2018-02-12 11:17:02'),
(65, 3, '', '', '', '', '', '', '', '', '2018-02-12 11:21:30'),
(66, 3, '', '', '', '', '', '', '', '', '2018-02-12 11:24:24'),
(67, 3, '', '', '', '', '', '', '', '', '2018-02-12 11:26:15'),
(68, 3, '', '', '', '', '', '', '', '', '2018-02-12 11:36:15'),
(69, 3, '', '', '', '', '', '', '', '', '2018-02-12 11:37:12'),
(70, 3, '', '', '', '', '', '', '', '', '2018-02-12 16:18:32'),
(71, 3, '', '', '', '', '', '', '', '', '2018-02-13 09:00:10'),
(72, 3, '', '', '', '', '', '', '', '', '2018-02-18 04:38:06'),
(73, 3, '', '', '', '', '', '', '', '', '2018-02-18 05:42:42'),
(74, 3, '', '', '', '', '', '', '', '', '2018-02-18 05:49:22'),
(75, 3, '', '', '', '', '', '', '', '', '2018-02-18 06:18:02'),
(76, 3, '', '', '', '', '', '', '', '', '2018-02-18 06:46:40'),
(77, 3, '', '', '', '', '', '', '', '', '2018-02-18 06:52:51'),
(78, 3, '', '', '', '', '', '', '', '', '2018-02-18 07:03:41'),
(79, 3, '', '', '', '', '', '', '', '', '2018-02-18 07:48:51'),
(80, 3, '', '', '', '', '', '', '', '', '2018-02-18 08:00:16'),
(81, 3, '', '', '', '', '', '', '', '', '2018-02-18 08:46:48'),
(82, 3, '', '', '', '', '', '', '', '', '2018-02-18 08:47:51'),
(83, 3, '', '', '', '', '', '', '', '', '2018-02-18 08:55:45'),
(84, 3, '', '', '', '', '', '', '', '', '2018-02-18 08:56:58'),
(85, 3, '', '', '', '', '', '', '', '', '2018-02-18 08:58:15'),
(86, 3, '', '', '', '', '', '', '', '', '2018-02-18 08:58:46'),
(87, 3, '', '', '', '', '', '', '', '', '2018-02-18 09:00:51'),
(88, 3, '', '', '', '', '', '', '', '', '2018-02-18 09:14:48'),
(89, 3, '', '', '', '', '', '', '', '', '2018-02-18 09:24:08'),
(90, 3, '', '', '', '', '', '', '', '', '2018-02-18 09:27:10'),
(91, 3, '', '', '', '', '', '', '', '', '2018-02-20 06:18:34'),
(92, 3, '', '', '', '', '', '', '', '', '2018-02-26 05:56:10'),
(93, 3, '', '', '', '', '', '', '', '', '2018-02-26 05:57:28'),
(94, 3, '', '', '', '', '', '', '', '', '2018-02-26 05:59:07'),
(95, 3, '', '', '', '', '', '', '', '', '2018-02-26 06:01:24'),
(96, 3, '', '', '', '', '', '', '', '', '2018-02-26 06:03:45'),
(97, 3, '', '', '', '', '', '', '', '', '2018-03-05 10:59:04'),
(98, 3, '', '', '', '', '', '', '', '', '2018-03-05 11:01:16'),
(99, 3, '', '', '', '', '', '', '', '', '2018-03-05 11:04:03'),
(100, 3, '', '', '', '', '', '', '', '', '2018-03-05 11:04:41'),
(101, 3, '', '', '', '', '', '', '', '', '2018-03-05 11:38:54'),
(102, 3, '', '', '', '', '', '', '', '', '2018-03-05 11:39:16'),
(103, 3, '', '', '', '', '', '', '', '', '2018-03-05 11:40:21'),
(104, 3, '', '', '', '', '', '', '', '', '2018-03-05 11:41:55'),
(105, 3, '', '', '', '', '', '', '', '', '2018-03-06 05:26:10'),
(106, 3, '', '', '', '', '', '', '', '', '2018-03-06 05:27:54'),
(107, 3, '', '', '', '', '', '', '', '', '2018-03-06 05:43:09'),
(108, 3, '', '', '', '', '', '', '', '', '2018-03-06 07:30:41'),
(109, 3, '', '', '', '', '', '', '', '', '2018-03-06 10:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Television', '2017-01-26 16:29:09', ''),
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 04:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(7, 4, 'Computers', '2017-02-04 04:13:27', ''),
(8, 3, 'Comics', '2017-02-04 04:13:54', ''),
(9, 5, 'Beds', '2017-02-04 04:36:45', ''),
(10, 5, 'Sofas', '2017-02-04 04:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 04:37:51', ''),
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `shippingAddress` longtext NOT NULL,
  `shippingState` varchar(255) NOT NULL,
  `shippingCity` varchar(255) NOT NULL,
  `shippingPincode` int(11) NOT NULL,
  `billingAddress` longtext NOT NULL,
  `billingState` varchar(255) NOT NULL,
  `billingCity` varchar(255) NOT NULL,
  `billingPincode` int(11) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', '9009857868', 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', '8285703355', '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'Md sumon', 'sumon@yahoo.com', '01823158229', '123', 'Panthapath,Dhaka,bangladesh', '', '', 111, '', '', '', 12, '2017-12-24 06:56:09', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
