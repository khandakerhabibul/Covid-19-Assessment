-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2020 at 04:55 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `Sl No.` int(11) NOT NULL,
  `Age` int(11) NOT NULL,
  `Sex` varchar(2) NOT NULL,
  `Temperature` double NOT NULL,
  `AsDate` date NOT NULL,
  `Score` int(11) NOT NULL,
  `Covid19Res` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`Sl No.`, `Age`, `Sex`, `Temperature`, `AsDate`, `Score`, `Covid19Res`) VALUES
(1, 12, 'M', 35.9, '2020-08-20', 3, 'Negative'),
(2, 26, 'M', 37.6, '2020-08-20', 10, 'positive'),
(3, 48, 'M', 37.9, '2020-08-20', 10, 'positive'),
(4, 50, 'M', 38.1, '2020-08-20', 9, 'positive'),
(5, 25, 'M', 34, '2020-08-20', 3, 'Negative'),
(6, 35, 'F', 35, '2020-08-21', 5, 'Positive'),
(7, 0, '', 0, '2020-08-21', 0, 'Negative'),
(8, 23, 'F', 35.6, '2020-08-21', 3, 'Negative'),
(9, 0, 'na', 0, '2020-08-21', 0, 'Negative'),
(10, 13, 'M', 37.6, '2020-08-21', 10, 'Positive'),
(11, 17, 'M', 31, '2020-08-22', 5, 'Positive'),
(12, 17, 'M', 31, '2020-08-22', 5, 'Positive'),
(13, 17, 'M', 31, '2020-08-22', 5, 'Positive'),
(14, 17, 'M', 31, '2020-08-22', 5, 'Positive'),
(15, 17, 'M', 31, '2020-08-22', 5, 'Positive'),
(16, 17, 'M', 31, '2020-08-22', 5, 'Positive'),
(17, 17, 'M', 31, '2020-08-22', 5, 'Positive'),
(18, 17, 'M', 31, '2020-08-22', 5, 'Positive'),
(19, 17, 'M', 31, '2020-08-22', 5, 'Positive'),
(20, 17, 'M', 31, '2020-08-22', 5, 'Positive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`Sl No.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `Sl No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
