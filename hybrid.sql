-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2023 at 11:30 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hybrid`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessrequest`
--

CREATE TABLE `accessrequest` (
  `s_id` int(255) NOT NULL,
  `searchbyId` varchar(255) DEFAULT NULL,
  `searchby` varchar(255) DEFAULT NULL,
  `datee` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessrequest`
--

INSERT INTO `accessrequest` (`s_id`, `searchbyId`, `searchby`, `datee`, `status`) VALUES
(3, '3', 'James21', '2023-03-04 12:58:21', 'accept'),
(4, '5', 'kituser', '2023-03-04 14:04:44', 'accept');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `d_id` int(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `ownername` varchar(255) NOT NULL,
  `datee` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`d_id`, `filename`, `user`, `ownername`, `datee`) VALUES
(31, 'Text file for using', 'James21', 'jey123', '2023-03-04 13:01:47'),
(32, 'secret message', 'kituser', 'kitowner', '2023-03-04 14:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `f_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `oname` varchar(255) DEFAULT NULL,
  `descc` varchar(255) NOT NULL,
  `fdata` text DEFAULT NULL,
  `etype` varchar(255) DEFAULT NULL,
  `edata` text DEFAULT NULL,
  `aeskey` text DEFAULT NULL,
  `aesctext` text DEFAULT NULL,
  `aesiv` text DEFAULT NULL,
  `authTag` text DEFAULT NULL,
  `myiv` text DEFAULT NULL,
  `mykey` text DEFAULT NULL,
  `myEncrypted` text DEFAULT NULL,
  `efrag1` text DEFAULT NULL,
  `efrag2` text DEFAULT NULL,
  `efrag3` text DEFAULT NULL,
  `efrag4` text DEFAULT NULL,
  `efrag5` text DEFAULT NULL,
  `efrag6` text DEFAULT NULL,
  `efrag7` text DEFAULT NULL,
  `datee` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`f_id`, `fname`, `username`, `oname`, `descc`, `fdata`, `etype`, `edata`, `aeskey`, `aesctext`, `aesiv`, `authTag`, `myiv`, `mykey`, `myEncrypted`, `efrag1`, `efrag2`, `efrag3`, `efrag4`, `efrag5`, `efrag6`, `efrag7`, `datee`) VALUES
(10, 'Text file for using', 'jey123', NULL, 'adsdfsdfsfgds', '0b6f87e97f4699defbfbdc35bce59eab5ea17a615f608b9d42292f5ae7ef7206', 'BlowFish', NULL, 'f6eb9b84a93520ef81c934e4ac3931820704a91f8eb940349fd6d367bc9c35bf', 'e063f8fc4047da529b16dc62b2f7614c3fb1a5c9dc990f82cc6ef6b92d666246', '4fe0e8e225cc84d678451a7d89546412', '72253ec0e63f351c58a413b0232400e8', 'eae8ffebc5f1fa97', '1e27193b14de66de5bd75a4913ad6071', '0b6f87e97f4699defbfbdc35bce59eab5ea17a615f608b9d42292f5ae7ef7206', '0b6f87e9', '7f4699de', 'fbfbdc35', 'bce59eab', '5ea17a61', '5f608b9d', '42292f5ae7ef7206', '2023-03-04 12:28:30'),
(11, 'secret message', 'kitowner', NULL, 'has a secret message in it', '18395fdd9c2f2b4617d598ec65353440eda7500908b269fd3abcca882340b02458cada5fa9', 'BlowFish', NULL, 'caeeae7ac4525e9457add8035190aa16513434d1dbf42e73c814ddd10ecb244e', '3c56b8a35b978ade6cb8ff4435b84cce9002c3fd7d1a4e4b919963836e6a1c30985890e636', '967133f985e048142dff83a1546866fb', '36aa068c42cfad430136c8a01afec12c', '3c32e8f77e873a22', 'adc74329a6ce594b5af043b1887f738d', '18395fdd9c2f2b4617d598ec65353440eda7500908b269fd3abcca882340b02458cada5fa9', '18395fdd9', 'c2f2b4617', 'd598ec653', '53440eda7', '500908b26', '9fd3abcca', '882340b02458cada5fa9', '2023-03-04 14:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `oregistration`
--

CREATE TABLE `oregistration` (
  `o_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'unauthorized'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oregistration`
--

INSERT INTO `oregistration` (`o_id`, `name`, `username`, `email`, `password`, `phone`, `pic`, `status`) VALUES
(4, 'jey123', 'jey123', 'jey123@gmail.com', '12345', '9876543210', 'Toycathon.png', 'authorize'),
(5, 'kitowner', 'kitowner', 'kitowner@kitcbe.com', '12345', '9876543218', 'rajaram.jpg', 'authorize');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `r_id` int(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `file_id` varchar(255) NOT NULL,
  `reqby` varchar(255) DEFAULT NULL,
  `ownername` varchar(255) NOT NULL,
  `datee` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `fkey` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`r_id`, `filename`, `file_id`, `reqby`, `ownername`, `datee`, `status`, `fkey`) VALUES
(9, 'Text file for using', '10', 'James21', 'jey123', '2023-03-04 12:59:30', 'accept', '398843'),
(10, 'secret message', '11', 'kituser', 'kitowner', '2023-03-04 14:05:19', 'accept', '143528'),
(11, 'secret message', '11', 'kitowner', 'kitowner', '2023-03-04 14:06:09', 'pending', '352046');

-- --------------------------------------------------------

--
-- Table structure for table `uregistration`
--

CREATE TABLE `uregistration` (
  `o_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'unauthorized'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uregistration`
--

INSERT INTO `uregistration` (`o_id`, `name`, `username`, `email`, `password`, `phone`, `pic`, `status`) VALUES
(3, 'James', 'James21', 'k.james210801@gmail.com', '12345', '9876543123', '655509.png', 'authorize'),
(5, 'kituser', 'kituser', 'kituser@kitcbe.com', '12345', '9876543217', 'Screenshot 2021-09-07 132926.png', 'authorize');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessrequest`
--
ALTER TABLE `accessrequest`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `searchbyId` (`searchbyId`),
  ADD UNIQUE KEY `searchby` (`searchby`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`f_id`),
  ADD UNIQUE KEY `fname` (`fname`);

--
-- Indexes for table `oregistration`
--
ALTER TABLE `oregistration`
  ADD PRIMARY KEY (`o_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `uregistration`
--
ALTER TABLE `uregistration`
  ADD PRIMARY KEY (`o_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessrequest`
--
ALTER TABLE `accessrequest`
  MODIFY `s_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `d_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `f_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oregistration`
--
ALTER TABLE `oregistration`
  MODIFY `o_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `r_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `uregistration`
--
ALTER TABLE `uregistration`
  MODIFY `o_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
