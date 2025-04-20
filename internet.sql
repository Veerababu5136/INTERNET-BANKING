-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 02:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internet`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `Customer_id` int(11) DEFAULT NULL,
  `account_type` varchar(50) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `pin` varchar(4) NOT NULL,
  `balance` decimal(10,2) DEFAULT 0.00,
  `account_status` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `Customer_id`, `account_type`, `card_number`, `pin`, `balance`, `account_status`) VALUES
(3, 5, 'Savings', '1234567812345678', '1234', '25185.00', 'open'),
(5, 6, 'Savings', '2234567812345678', '1234', '1000.00', 'open'),
(6, 7, 'Savings', '3234567812345678', '2123', '1000.00', 'open'),
(11, 9, 'Savings', '5334567812345678', '6524', '1200.00', 'open'),
(13, 10, 'Savings', '3734567812345678', '2376', '1000.00', 'open'),
(15, 8, 'Savings', '5434567812345678', '2421', '1321.00', 'open'),
(16, 11, 'Current', '9034567812345678', '2428', '1000.00', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'admin@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2022-01-08 06:03:56'),
(2, 'veera', 'vinuvera1234@gmail.com', 'veera', 'veera', '2023-10-17 08:44:16'),
(3, 'babu', 'admin@gmail.com', 'babu', 'babu', '2023-10-25 04:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`) VALUES
(1, 'veera', 'vinuvera1234@gmail.com', 'veera');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch_name`) VALUES
(1, 'demo'),
(2, 'demo2'),
(3, 'guntur');

-- --------------------------------------------------------

--
-- Table structure for table `checkbook`
--

CREATE TABLE `checkbook` (
  `checkbook_id` int(11) NOT NULL,
  `Customer_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Not Applied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkbook`
--

INSERT INTO `checkbook` (`checkbook_id`, `Customer_id`, `status`) VALUES
(1, 6, 'Not Applied'),
(2, 7, 'Not Applied'),
(7, 5, 'Applied'),
(8, 8, 'Approved'),
(9, 9, 'Not Applied'),
(10, 10, 'Not Applied'),
(11, 11, 'Not Applied');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_id` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `permanentAddress` text NOT NULL,
  `presentAddress` text NOT NULL,
  `reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_id`, `customerName`, `dob`, `phoneNumber`, `email`, `password`, `gender`, `branch`, `permanentAddress`, `presentAddress`, `reg`) VALUES
(5, 'SREESAILAM VEERA BABU', '2003-08-28', '6302733689', 'vinuvera1234@gmail.com', 'veera', 'male', '1', 'chiinamusidivada   ', 'chinnamusidivadas', '2023-11-08'),
(6, 'SREESAILAM VEERA BABU', '2003-08-28', '6302733687', 'vcinuvera1234@gmail.com', 'veera', 'male', '1', 'chiinamusidivada', 'chinnamusidivada', '2023-11-08'),
(7, 'SREESAILAM VEERA BABU', '2002-02-02', '6302733687', 'vsinuvera1234@gmail.com', 'ajs', 'male', '1', 'chiinamusidivada', 'chinnamusidivada', '2023-11-08'),
(8, 'Sowjanya Upparapalli', '2002-02-19', '9948474742', '20nu1a05a6@nsrit.edu.in', 'veera', 'female', '2', 'kakinada', 'guntur', '2023-11-08'),
(9, 'chinni upparapalli', '2002-08-29', '6302733687', 'veeravinu345@nsrit.edu.in', 'veera', 'female', '2', 'kakinda', 'guntur', '2023-11-08'),
(10, 'chinni sowjanya', '2003-09-29', '6302733687', 'veeravinu513@nsrit.edu.in', 'veera', 'female', '2', 'kakinda', 'vizag', '2023-11-08'),
(11, 'chinni chinni', '2003-09-29', '6302733687', 'veeravinu512@gmail.com', 'veera', 'male', '2', 'chiinamusidivada', 'chinnamusidivada', '2023-11-08');

-- --------------------------------------------------------

--
-- Table structure for table `transcations`
--

CREATE TABLE `transcations` (
  `Transcation_id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `fromCardNo` varchar(20) NOT NULL,
  `toCardNumber` varchar(20) NOT NULL,
  `Transcation_type` varchar(30) NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Transcation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transcations`
--

INSERT INTO `transcations` (`Transcation_id`, `Customer_id`, `fromCardNo`, `toCardNumber`, `Transcation_type`, `Amount`, `Transcation_date`) VALUES
(4, 5, '1234567812345678', 'self', 'withDraw', '11.00', '2023-11-09'),
(5, 5, '1234567812345678', 'self', 'Deposit', '1000.00', '2023-11-09'),
(9, 8, '5434567812345678', 'self', 'Deposit', '100.00', '2023-11-19'),
(10, 5, '1234567812345678', 'self', 'withDraw', '100.00', '2023-11-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `card_number` (`card_number`),
  ADD KEY `Customer_id` (`Customer_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkbook`
--
ALTER TABLE `checkbook`
  ADD PRIMARY KEY (`checkbook_id`),
  ADD KEY `customer_id` (`Customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_id`);

--
-- Indexes for table `transcations`
--
ALTER TABLE `transcations`
  ADD PRIMARY KEY (`Transcation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `checkbook`
--
ALTER TABLE `checkbook`
  MODIFY `checkbook_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transcations`
--
ALTER TABLE `transcations`
  MODIFY `Transcation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customers` (`Customer_id`);

--
-- Constraints for table `checkbook`
--
ALTER TABLE `checkbook`
  ADD CONSTRAINT `checkbook_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`Customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
