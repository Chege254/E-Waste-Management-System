-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2021 at 11:29 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gabbage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(6, 'boaz', 'admin');


-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nat_id` int(11) NOT NULL,
  `password` text NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `location` text NOT NULL,
  `mobile_no` text NOT NULL,
  `gabbage_type` text NOT NULL,
  `application_date` text NOT NULL,
  `confirmation_code` text NOT NULL,
  `payment_status` text NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `nat_id`, `password`, `f_name`, `l_name`, `location`, `mobile_no`, `gabbage_type`, `application_date`, `confirmation_code`, `payment_status`, `amount`) VALUES
(25, 29949298, '5d40954183d62a82257835477ccad3d2', 'karanja', 'wakio', 'Thika town', '0775846954', 'Harzadous', 'May 28, 2015', '', '0', 0),
(26, 29949299, '8b1753bd5706fff3c62c790e4707f441', 'Jermiah', 'walia', 'Landless', '0725545465', 'Degrdable', 'May 28, 2015', 'ADBREKWKE', '1', 1700),
(28, 44444444, '81dc9bdb52d04dc20036dbd8313ed055', 'Njoroge', 'Kamau', 'Makonge', '0758469584', 'Degrdable', 'May 28, 2015', 'GWT10525YT', '1', 1270);

-- --------------------------------------------------------

--
-- Table structure for table `gabbage_type`
--

CREATE TABLE `gabbage_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `charges` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gabbage_type`
--

INSERT INTO `gabbage_type` (`id`, `name`, `charges`) VALUES
(1, 'Laptops', '700'),
(3, 'Computer accessories', '400'),
(5, 'Printers', '450');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `location` text NOT NULL,
  `charges` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location`, `charges`) VALUES
(1, 'thika town', '470'),
(3, 'Makongeni', '500'),
(4, 'Ponda Mali', '400'),
(5, 'Landless', '900'),
(6, 'St Pauls University', '500'),
(8, 'Kasarani', '500'),
(13, 'Nakuru Town', '870'),
(18, 'Langalanga', '500');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `date` text NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `date`, `details`) VALUES
(9, 'Monday 5th April 2021 ', 'We will not be operational on 2ND of April to 5th of April.'),
(12, 'Saturday 3rd April 2021 ', 'we will be testing the program today');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gabbage_type`
--
ALTER TABLE `gabbage_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gabbage_type`
--
ALTER TABLE `gabbage_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
