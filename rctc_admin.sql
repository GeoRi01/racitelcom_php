-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 06:24 AM
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
-- Database: `rctc_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisory`
--

CREATE TABLE `advisory` (
  `advisory_id` int(11) NOT NULL,
  `advisory_title` varchar(50) NOT NULL,
  `advisory_content` varchar(100) NOT NULL,
  `advisory_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advisory`
--

INSERT INTO `advisory` (`advisory_id`, `advisory_title`, `advisory_content`, `advisory_status`) VALUES
(1, 'Fiber Cut', 'sfklaghagka', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `commercial_plan`
--

CREATE TABLE `commercial_plan` (
  `commercial_id` int(11) NOT NULL,
  `plan_name` varchar(20) NOT NULL,
  `speed` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commercial_plan`
--

INSERT INTO `commercial_plan` (`commercial_id`, `plan_name`, `speed`, `description`, `price`) VALUES
(1, '3 mbps', '3 mbps', 'average speed of up to 3 mbps speed burst to 5 mbp', 2088.00),
(2, '10 mbps', '10 mbps', 'average speed of up to 10 mbps speed burst to 15 m', 3888.00),
(3, '25 mbps', '25 mbps', 'average speed of up to 30 mpbs speed burst to 30 m', 4888.00),
(6, '40 mbps', '40 mbps', 'average speed of up to 25 mbps speed burst to 30 m', 8888.00);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `description`, `price`) VALUES
(1, 'Mx 9000', 'Mx Router', 49999.00),
(2, 'hgh', 'ghgh', 35353.00);

-- --------------------------------------------------------

--
-- Table structure for table `residential_plan`
--

CREATE TABLE `residential_plan` (
  `residential_id` int(11) NOT NULL,
  `plan_name` varchar(50) NOT NULL,
  `speed` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `residential_plan`
--

INSERT INTO `residential_plan` (`residential_id`, `plan_name`, `speed`, `description`, `price`) VALUES
(2, '10 mbps', '10 mbps', 'average speed up to 10 mpbs Speed burst to 15 mbps', 1288.00),
(3, '25 mbps', '25 mbps', 'average speed of up to 25 mbps. Speed Burst to 30 ', 1688.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `username`, `password`) VALUES
(6, 'tyrn', 'Sacupon', 'admin', 'admin'),
(7, '', '', '', ''),
(8, 'Faye', 'Tubale', '09654428755', 'faye'),
(9, '', '', '', ''),
(10, 'willy', 'krazy', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisory`
--
ALTER TABLE `advisory`
  ADD PRIMARY KEY (`advisory_id`);

--
-- Indexes for table `commercial_plan`
--
ALTER TABLE `commercial_plan`
  ADD PRIMARY KEY (`commercial_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `residential_plan`
--
ALTER TABLE `residential_plan`
  ADD PRIMARY KEY (`residential_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advisory`
--
ALTER TABLE `advisory`
  MODIFY `advisory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commercial_plan`
--
ALTER TABLE `commercial_plan`
  MODIFY `commercial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `residential_plan`
--
ALTER TABLE `residential_plan`
  MODIFY `residential_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
