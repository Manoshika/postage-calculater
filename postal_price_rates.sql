-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 12:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `postal_price_rates`
--

-- --------------------------------------------------------

--
-- Table structure for table `news_and_magazine`
--

CREATE TABLE `news_and_magazine` (
  `ID` int(10) NOT NULL,
  `category` enum('Ministry-Government','Ministry-Government-Normal','Normal','Normal-Business','Business') NOT NULL,
  `start_weight` mediumint(8) NOT NULL,
  `end_weight` mediumint(8) NOT NULL,
  `price` double(10,2) NOT NULL,
  `active_date` date NOT NULL,
  `Current_status` enum('Active','Tempory Active','Permenantly Stop','Tempory Stop') NOT NULL,
  `tempory_active_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_and_magazine`
--

INSERT INTO `news_and_magazine` (`ID`, `category`, `start_weight`, `end_weight`, `price`, `active_date`, `Current_status`, `tempory_active_end_date`) VALUES
(1, 'Normal', 0, 60, 20.00, '2022-08-15', 'Active', NULL),
(2, 'Normal', 61, 120, 30.00, '2022-08-15', 'Active', NULL),
(3, 'Normal', 121, 240, 40.00, '2022-08-15', 'Active', NULL),
(4, 'Normal', 241, 360, 50.00, '2022-08-15', 'Active', NULL),
(5, 'Normal', 361, 480, 60.00, '2022-08-15', 'Active', NULL),
(6, 'Normal', 481, 600, 70.00, '2022-08-15', 'Active', NULL),
(7, 'Normal', 601, 720, 80.00, '2022-08-15', 'Active', NULL),
(8, 'Normal', 721, 840, 90.00, '2022-08-15', 'Active', NULL),
(9, 'Normal', 841, 960, 100.00, '2022-08-15', 'Active', NULL),
(10, 'Normal', 961, 1000, 110.00, '2022-08-15', 'Active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `normal_and_business_letters`
--

CREATE TABLE `normal_and_business_letters` (
  `ID` int(10) NOT NULL,
  `category` enum('Ministry-Government','Ministry-Government-Normal','Normal','Normal-Business','Business') NOT NULL,
  `start_weight` mediumint(8) NOT NULL,
  `end_weight` mediumint(8) NOT NULL,
  `price` double(10,2) NOT NULL,
  `active_date` date NOT NULL,
  `current_status` enum('Active','Tempory Active','Permenantly Stop','Tempory Stop') NOT NULL,
  `tempory_active_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `normal_and_business_letters`
--

INSERT INTO `normal_and_business_letters` (`ID`, `category`, `start_weight`, `end_weight`, `price`, `active_date`, `current_status`, `tempory_active_end_date`) VALUES
(1, 'Normal-Business', 0, 20, 50.00, '2022-08-15', 'Active', '0000-00-00'),
(2, 'Normal-Business', 21, 30, 60.00, '2022-08-15', 'Active', '0000-00-00'),
(3, 'Normal-Business', 31, 40, 70.00, '2022-08-15', 'Active', '0000-00-00'),
(4, 'Normal-Business', 41, 50, 80.00, '2022-08-15', 'Active', '0000-00-00'),
(5, 'Normal-Business', 51, 60, 90.00, '2022-08-15', 'Active', '0000-00-00'),
(6, 'Normal-Business', 61, 70, 100.00, '2022-08-15', 'Active', '0000-00-00'),
(7, 'Normal-Business', 71, 80, 110.00, '2022-08-15', 'Active', '0000-00-00'),
(8, 'Normal-Business', 81, 90, 120.00, '2022-08-15', 'Active', '0000-00-00'),
(9, 'Normal-Business', 91, 100, 130.00, '2022-08-15', 'Active', '0000-00-00'),
(10, 'Normal-Business', 101, 150, 150.00, '2022-08-15', 'Active', '0000-00-00'),
(11, 'Normal-Business', 151, 200, 170.00, '2022-08-15', 'Active', '0000-00-00'),
(12, 'Normal-Business', 201, 250, 190.00, '2022-08-15', 'Active', '0000-00-00'),
(13, 'Normal-Business', 251, 300, 210.00, '2022-08-15', 'Active', '0000-00-00'),
(14, 'Normal-Business', 301, 350, 230.00, '2022-08-15', 'Active', '0000-00-00'),
(15, 'Normal-Business', 351, 400, 250.00, '2022-08-15', 'Active', '0000-00-00'),
(16, 'Normal-Business', 401, 450, 270.00, '2022-08-15', 'Active', '0000-00-00'),
(17, 'Normal-Business', 451, 500, 290.00, '2022-08-15', 'Active', '0000-00-00'),
(18, 'Normal-Business', 501, 550, 310.00, '2022-08-15', 'Active', '0000-00-00'),
(19, 'Normal-Business', 551, 600, 330.00, '2022-08-15', 'Active', '0000-00-00'),
(20, 'Normal-Business', 601, 650, 350.00, '2022-08-15', 'Active', '0000-00-00'),
(21, 'Normal-Business', 651, 700, 370.00, '2022-08-15', 'Active', '0000-00-00'),
(22, 'Normal-Business', 701, 750, 390.00, '2022-08-15', 'Active', '0000-00-00'),
(23, 'Normal-Business', 751, 800, 410.00, '2022-08-15', 'Active', '0000-00-00'),
(24, 'Normal-Business', 801, 850, 430.00, '2022-08-15', 'Active', '0000-00-00'),
(25, 'Normal-Business', 851, 900, 450.00, '2022-08-15', 'Active', '0000-00-00'),
(26, 'Normal-Business', 901, 950, 470.00, '2022-08-15', 'Active', '0000-00-00'),
(27, 'Normal-Business', 951, 1000, 490.00, '2022-08-15', 'Active', '0000-00-00'),
(28, 'Normal-Business', 1001, 1250, 520.00, '2022-08-15', 'Active', '0000-00-00'),
(29, 'Normal-Business', 1251, 1500, 550.00, '2022-08-15', 'Active', '0000-00-00'),
(30, 'Normal-Business', 1501, 1750, 580.00, '2022-08-15', 'Active', '0000-00-00'),
(31, 'Normal-Business', 1751, 2000, 610.00, '2022-08-15', 'Active', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `normal_parcel_rate`
--

CREATE TABLE `normal_parcel_rate` (
  `ID` int(10) NOT NULL,
  `category` enum('Ministry-Government','Ministry-Government-Normal','Normal','Normal-Business','Business') NOT NULL,
  `start_weight` mediumint(8) NOT NULL,
  `end_weight` mediumint(8) NOT NULL,
  `price` double(10,2) NOT NULL,
  `active_date` date NOT NULL,
  `current_status` enum('Active','Tempory Active','Permenantly Stop','Tempory Stop') NOT NULL,
  `tempory_active_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `normal_parcel_rate`
--

INSERT INTO `normal_parcel_rate` (`ID`, `category`, `start_weight`, `end_weight`, `price`, `active_date`, `current_status`, `tempory_active_end_date`) VALUES
(1, 'Normal', 0, 250, 150.00, '2022-08-15', 'Active', NULL),
(2, 'Normal', 251, 500, 200.00, '2022-08-15', 'Active', NULL),
(3, 'Normal', 501, 1000, 250.00, '2022-08-15', 'Active', NULL),
(4, 'Normal', 1001, 2000, 300.00, '2022-08-15', 'Active', NULL),
(5, 'Normal', 2001, 3000, 350.00, '2022-08-15', 'Active', NULL),
(6, 'Normal', 3001, 4000, 400.00, '2022-08-15', 'Active', NULL),
(7, 'Normal', 4001, 5000, 450.00, '2022-08-15', 'Active', NULL),
(8, 'Normal', 5001, 6000, 500.00, '2022-08-15', 'Active', NULL),
(9, 'Normal', 6001, 7000, 550.00, '2022-08-15', 'Active', NULL),
(10, 'Normal', 7001, 8000, 600.00, '2022-08-15', 'Active', NULL),
(11, 'Normal', 8001, 9000, 650.00, '2022-08-15', 'Active', NULL),
(12, 'Normal', 9001, 10000, 700.00, '2022-08-15', 'Active', NULL),
(13, 'Normal', 10001, 15000, 800.00, '2022-08-15', 'Active', NULL),
(14, 'Normal', 15001, 20000, 900.00, '2022-08-15', 'Active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `printedmatter_and_openpacket`
--

CREATE TABLE `printedmatter_and_openpacket` (
  `ID` int(10) NOT NULL,
  `category` enum('Ministry-Government','Ministry-Government-Normal','Normal','Normal-Business','Business') NOT NULL,
  `start_weight` mediumint(8) NOT NULL,
  `end_weight` mediumint(8) NOT NULL,
  `price` double(10,2) NOT NULL,
  `active_date` date NOT NULL,
  `Current_status` enum('Active','Tempory Active','Permenantly Stop','Tempory Stop') NOT NULL,
  `tempory_active_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `printedmatter_and_openpacket`
--

INSERT INTO `printedmatter_and_openpacket` (`ID`, `category`, `start_weight`, `end_weight`, `price`, `active_date`, `Current_status`, `tempory_active_end_date`) VALUES
(1, 'Normal', 0, 30, 30.00, '2022-08-15', 'Active', '0000-00-00'),
(2, '', 31, 60, 35.00, '2022-08-15', 'Active', '0000-00-00'),
(3, '', 61, 90, 40.00, '2022-08-15', 'Active', '0000-00-00'),
(4, '', 91, 120, 45.00, '2022-08-15', 'Active', '0000-00-00'),
(5, '', 120, 150, 50.00, '2022-08-15', 'Active', '0000-00-00'),
(6, '', 150, 180, 55.00, '2022-08-15', 'Active', '0000-00-00'),
(7, '', 180, 210, 60.00, '2022-08-15', 'Active', '0000-00-00'),
(8, '', 210, 240, 65.00, '2022-08-15', 'Active', '0000-00-00'),
(9, '', 240, 270, 70.00, '2022-08-15', 'Active', '0000-00-00'),
(10, '', 270, 300, 75.00, '2022-08-15', 'Active', '0000-00-00'),
(11, '', 300, 330, 80.00, '2022-08-15', 'Active', '0000-00-00'),
(12, '', 330, 360, 85.00, '2022-08-15', 'Active', '0000-00-00'),
(13, '', 360, 390, 90.00, '2022-08-15', 'Active', '0000-00-00'),
(14, '', 390, 420, 95.00, '2022-08-15', 'Active', '0000-00-00'),
(15, '', 420, 450, 100.00, '2022-08-15', 'Active', '0000-00-00'),
(16, '', 450, 480, 105.00, '2022-08-15', 'Active', '0000-00-00'),
(17, '', 480, 510, 110.00, '2022-08-15', 'Active', '0000-00-00'),
(18, '', 510, 540, 115.00, '2022-08-15', 'Active', '0000-00-00'),
(19, '', 540, 570, 120.00, '2022-08-15', 'Active', '0000-00-00'),
(20, '', 570, 600, 125.00, '2022-08-15', 'Active', '0000-00-00'),
(21, '', 600, 630, 130.00, '2022-08-15', 'Active', '0000-00-00'),
(22, '', 630, 660, 135.00, '2022-08-15', 'Active', '0000-00-00'),
(23, '', 660, 690, 140.00, '2022-08-15', 'Active', '0000-00-00'),
(24, '', 690, 720, 145.00, '2022-08-15', 'Active', '0000-00-00'),
(25, '', 720, 750, 150.00, '2022-08-15', 'Active', '0000-00-00'),
(26, '', 750, 780, 155.00, '2022-08-15', 'Active', '0000-00-00'),
(27, '', 780, 810, 160.00, '2022-08-15', 'Active', '0000-00-00'),
(28, '', 810, 840, 165.00, '2022-08-15', 'Active', '0000-00-00'),
(29, '', 840, 870, 170.00, '2022-08-15', 'Active', '0000-00-00'),
(30, '', 870, 900, 175.00, '2022-08-15', 'Active', '0000-00-00'),
(31, '', 900, 930, 200.00, '2022-08-15', 'Active', '0000-00-00'),
(32, '', 930, 960, 225.00, '2022-08-15', 'Active', '0000-00-00'),
(33, '', 960, 1000, 250.00, '2022-08-15', 'Active', '0000-00-00'),
(34, '', 1000, 1500, 300.00, '2022-08-15', 'Active', '0000-00-00'),
(35, '', 1500, 2000, 350.00, '2022-08-15', 'Active', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `sl_post_courier`
--

CREATE TABLE `sl_post_courier` (
  `ID` int(10) NOT NULL,
  `category` enum('Ministry-Government','Ministry-Government-Normal','Normal','Normal-Business','Business') NOT NULL,
  `start_weight` mediumint(8) NOT NULL,
  `end_weight` mediumint(8) NOT NULL,
  `price` double(10,2) NOT NULL,
  `active_date` date NOT NULL,
  `current_status` enum('Active','Tempory Active','Permenantly Stop','Tempory Stop') NOT NULL,
  `tempory_active_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sl_post_courier`
--

INSERT INTO `sl_post_courier` (`ID`, `category`, `start_weight`, `end_weight`, `price`, `active_date`, `current_status`, `tempory_active_end_date`) VALUES
(1, 'Ministry-Government', 0, 30, 150.00, '2022-08-15', 'Active', NULL),
(2, 'Ministry-Government', 31, 250, 200.00, '2022-08-15', 'Active', NULL),
(3, 'Normal', 0, 250, 200.00, '2022-08-15', 'Active', NULL),
(4, 'Normal', 251, 500, 250.00, '2022-08-15', 'Active', NULL),
(5, 'Normal', 501, 1000, 350.00, '2022-08-15', 'Active', NULL),
(6, 'Normal', 1001, 2000, 400.00, '2022-08-15', 'Active', NULL),
(7, 'Normal', 2001, 3000, 450.00, '2022-08-15', 'Active', NULL),
(8, 'Normal', 3001, 4000, 500.00, '2022-08-15', 'Active', NULL),
(9, 'Normal', 4001, 5000, 550.00, '2022-08-15', 'Active', NULL),
(10, 'Normal', 5001, 6000, 600.00, '2022-08-15', 'Active', NULL),
(11, 'Normal', 6001, 7000, 650.00, '2022-08-15', 'Active', NULL),
(12, 'Normal', 7001, 8000, 700.00, '2022-08-15', 'Active', NULL),
(13, 'Normal', 8001, 9000, 750.00, '2022-08-15', 'Active', NULL),
(14, 'Normal', 9001, 10000, 800.00, '2022-08-15', 'Active', NULL),
(15, 'Normal', 10001, 15000, 850.00, '2022-08-15', 'Active', NULL),
(16, 'Normal', 15001, 20000, 1100.00, '2022-08-15', 'Active', NULL),
(17, 'Normal', 20001, 25000, 1600.00, '2022-08-15', 'Active', NULL),
(18, 'Normal', 25001, 30000, 2100.00, '2022-08-15', 'Active', NULL),
(19, 'Normal', 30001, 35000, 2600.00, '2022-08-15', 'Active', NULL),
(20, 'Normal', 35001, 40000, 3100.00, '2022-08-15', 'Active', NULL),
(21, 'Ministry-Government', 251, 500, 250.00, '2022-08-15', 'Active', NULL),
(22, 'Ministry-Government', 501, 1000, 350.00, '2022-08-15', 'Active', NULL),
(23, 'Ministry-Government', 1001, 2000, 400.00, '2022-08-15', 'Active', NULL),
(24, 'Ministry-Government', 501, 1000, 350.00, '2022-08-15', 'Active', NULL),
(25, 'Ministry-Government', 1001, 2000, 400.00, '2022-08-15', 'Active', NULL),
(26, 'Ministry-Government', 2001, 3000, 450.00, '2022-08-15', 'Active', NULL),
(27, 'Ministry-Government', 3001, 4000, 500.00, '2022-08-15', 'Active', NULL),
(28, 'Ministry-Government', 4001, 5000, 550.00, '2022-08-15', 'Active', NULL),
(29, 'Ministry-Government', 5001, 6000, 600.00, '2022-08-15', 'Active', NULL),
(30, 'Ministry-Government', 6001, 7000, 650.00, '2022-08-15', 'Active', NULL),
(31, 'Ministry-Government', 7001, 8000, 700.00, '2022-08-15', 'Active', NULL),
(32, 'Ministry-Government', 8001, 9000, 750.00, '2022-08-15', 'Active', NULL),
(33, 'Ministry-Government', 9001, 10000, 800.00, '2022-08-15', 'Active', NULL),
(34, 'Ministry-Government', 10001, 15000, 850.00, '2022-08-15', 'Active', NULL),
(35, 'Ministry-Government', 15001, 20000, 1100.00, '2022-08-15', 'Active', NULL),
(36, 'Ministry-Government', 20001, 25000, 1600.00, '2022-08-15', 'Active', NULL),
(37, 'Ministry-Government', 25001, 30000, 2100.00, '2022-08-15', 'Active', NULL),
(38, 'Ministry-Government', 30001, 35000, 2600.00, '2022-08-15', 'Active', NULL),
(39, 'Ministry-Government', 35001, 40000, 3100.00, '2022-08-15', 'Active', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news_and_magazine`
--
ALTER TABLE `news_and_magazine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `normal_and_business_letters`
--
ALTER TABLE `normal_and_business_letters`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `normal_parcel_rate`
--
ALTER TABLE `normal_parcel_rate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `printedmatter_and_openpacket`
--
ALTER TABLE `printedmatter_and_openpacket`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sl_post_courier`
--
ALTER TABLE `sl_post_courier`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news_and_magazine`
--
ALTER TABLE `news_and_magazine`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `normal_and_business_letters`
--
ALTER TABLE `normal_and_business_letters`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `normal_parcel_rate`
--
ALTER TABLE `normal_parcel_rate`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `printedmatter_and_openpacket`
--
ALTER TABLE `printedmatter_and_openpacket`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sl_post_courier`
--
ALTER TABLE `sl_post_courier`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
