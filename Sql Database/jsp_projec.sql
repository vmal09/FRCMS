-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 05:04 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jsp_projec`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin1', 'admin1@yahoo.com', '111111');

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE `dependent` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `dname` varchar(100) NOT NULL,
  `relation` varchar(200) NOT NULL,
  `age` int(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `postcode` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`id`, `username`, `dname`, `relation`, `age`, `gender`, `address`, `postcode`, `state`) VALUES
(3, 'aathip', 'aathi', 'Child', 12, 'Male', 'abc', '123', 'Melaka'),
(6, 'aathip', 'abc', 'Spouse', 42, 'Male', 'abc', '123', 'Perlis'),
(7, 'aathi13', 'kumar', 'Siblings', 25, 'Male', 'abc', '123', 'Pulau Pinang'),
(8, 'aathi', 'aathi', 'Spouse', 54, 'Female', 'abc', '123', 'Sabah'),
(10, 'aathi', 'a1', 'Siblings', 123, 'Female', 'abc', '1213', 'Melaka');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback` varchar(300) NOT NULL,
  `rating` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback`, `rating`) VALUES
('saadasdasd', 'Excellent'),
('9229', 'Average'),
('45613', 'Average'),
('123', 'Poor');

-- --------------------------------------------------------

--
-- Table structure for table `hd`
--

CREATE TABLE `hd` (
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `healthStatus` varchar(50) NOT NULL,
  `Othercomment` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hd`
--

INSERT INTO `hd` (`Name`, `Email`, `healthStatus`, `Othercomment`, `date`) VALUES
('aathi', 'vimalraj@gmail.com', 'Mild Risk', '123', ''),
('aathi', 'vimalraj@gmail.com', 'Mild Risk', '123', ''),
('aathi', 'vimalraj@gmail.com', 'Mild Risk', '123', '2022-01-13'),
('aathi', 'aathipadayachy@gmail.com', 'Good', '123', '2022-01-13'),
('aathi', 'a@gmail.com', 'Good', '1313', '2022-01-22'),
('aarya', 'aarya@gmail.com', 'High Risk', '', '2022-01-22'),
('aathi', 'aathipadayachy@gmail.com', 'Good', '958959', '2022-01-23'),
('aathi', 'aathipadayachy@gmail.com', 'Mild Risk', '958959', '2022-01-23'),
('aathi', 'aathipadayachy@gmail.com', 'High Risk', '958959', '2022-01-23'),
('aathi', 'aathipadayachy@gmail.com', 'Good', '121212', '2022-01-24'),
('abc', 'a@gmail.com', 'Good', 'aaaaaa', '2022-01-25'),
('vimalraj', 'vimalraj@gmail.com', 'High Risk', '123', '2022-01-27'),
('vimalraj12', 'vimalraj12@gmail.com', 'Low Risk', '123', '2022-01-27'),
('vimalraj12', 'vimalraj12@gmail.com', 'Low Risk', '123', '2022-01-27'),
('aathi', 'aathipadayachy@gmail.com', 'Low Risk', '123', '2022-01-29'),
('aathi', 'aathipadayachy@gmail.com', 'Low Risk', '123', '2022-01-29'),
('aathi', 'aathipadayachy@gmail.com', 'Low Risk', '123', '2022-01-29'),
('aathi', 'aathipadayachy@gmail.com', 'Low Risk', '123', '2022-01-29'),
('aathi', 'aathipadayachy@gmail.com', 'Low Risk', '123', '2022-01-29'),
('aathi', '12', 'Low Risk', '1213', '2022-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `ration`
--

CREATE TABLE `ration` (
  `user` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ration`
--

INSERT INTO `ration` (`user`, `status`) VALUES
('aathip', 'package2'),
('aathi', 'package4'),
('vimal', 'package3'),
('vimal', 'package3'),
('vimal', 'package1'),
('vimal', 'Breakfast'),
('vimal', 'Lunch'),
('vimal', 'Tea'),
('vimal', 'Tea'),
('vimal', 'Dinner'),
('vimal', 'Dinner'),
('vimal', 'Breakfast'),
('vimal', 'Lunch'),
('vimal', 'Tea'),
('vimal', 'Dinner'),
('vimal', 'Dinner');

-- --------------------------------------------------------

--
-- Table structure for table `req`
--

CREATE TABLE `req` (
  `id` int(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `req1` varchar(100) DEFAULT NULL,
  `clothsize` varchar(1000) DEFAULT NULL,
  `others` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `req`
--

INSERT INTO `req` (`id`, `name`, `email`, `req1`, `clothsize`, `others`, `status`) VALUES
(1, 'aathi', 'aathipadayachy@gmail.com', 'Ration/Matress', '2-S / 2-null / 2-L / 1-null / 4-2XL', '123', 'Disapprove'),
(3, 'abc', 'aathipadayachy@gmail.com', 'Ration/Matress', '2-S / 0-null / 0-null / 0-null / 0-null', '12', 'Approve'),
(22, 'j', 'aathipdayachy@gmail.com', 'Ration/Matress/Medical Kit', '1-S / 3-M / 4-L', '123', 'Pending'),
(23, 'vimalraj', 'vimalraj@gmail.com', 'Ration/Matress/Medical Kit', '2-S / 2-M / 3-L', 'cvbnn', 'Disapprove'),
(24, '', '', NULL, '0-null / 0-null / 0-null', '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Compartment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `Compartment`) VALUES
(1, 'vimal', 'v@yahoo.com', '123123', '12'),
(7, 'aathi', 'aathipadayachy@gmail.com', '123', '17'),
(14, 'raj13', 'raj13@gmail.com', '123', '0'),
(15, 'ad', 'ada', 'adad', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `req`
--
ALTER TABLE `req`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dependent`
--
ALTER TABLE `dependent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `req`
--
ALTER TABLE `req`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
