-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 12:53 PM
-- Server version: 5.6.21
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `secyear`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--


CREATE TABLE IF NOT EXISTS `admin` (
`user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `name`) VALUES
(1, 'admin1', 'admin1', 'admin1'),
(2, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--

CREATE TABLE IF NOT EXISTS `announce` (
`id` int(11) NOT NULL,
  `announcement` varchar(50) NOT NULL,
  `bloodneed` varchar(3) NOT NULL,
  `dat` date NOT NULL,
  `organizer` varchar(50) NOT NULL,
  `requirements` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announce`
--

INSERT INTO `announce` (`id`, `announcement`, `bloodneed`, `dat`, `organizer`, `requirements`) VALUES
(1, 'ANNOUNCEMENT 1', 'B+', '2022-10-24', 'Helping Hands', 'Age - 18yrs +, Weight - 60kg+, No alcohol, drugs etc. Empty Stomach 8hrs prior to blood extraction'),
(2, 'URGENT CASE: Serious Accident Condition', 'B-', '2021-03-26', 'City Hospital', 'Must be in good health and feeling very well. Must weigh at least 58kg.'),
(3, 'This is my DBMS project, give blood please', 'A+', '2022-11-06', 'Juhi Shekokar', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE IF NOT EXISTS `blood` (
`id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `weight` int(11) NOT NULL,
  `bloodgroup` varchar(3) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `bloodqty` int(11) NOT NULL,
  `collection` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`id`, `name`, `gender`, `dob`, `weight`, `bloodgroup`, `address`, `contact`, `bloodqty`, `collection`) VALUES
(3, 'Shawn Mendez', 'M', '1997-05-26', 60, 'B-', 'Pune', '8521479633', 310, '2022-09-20'),
(8, 'Idris Kachwala', 'M', '2002-05-23', 55, 'AB+', 'Pune', '8555555545', 360, '2022-11-07'),
(9, 'Ajita Jain', 'F', '2002-10-7', 69, 'AB+', 'Mumbai', '7854447854', 312, '2020-12-30'),
(10, 'Sasha Dsilva', 'F', '2003-02-12', 59, 'AB-', 'Mumbai', '8555554585', 310, '2020-12-30'),
(11, 'Karen Stokes', 'F', '1996-02-02', 60, 'B+', 'Nagpur', '7878787850', 360, '2020-12-29'),
(12, 'Harry Styles', 'M', '1997-01-05', 70, 'B+', 'Nagpur', '8521112450', 310, '2020-12-29'),
(13, 'Tony Stark', 'M', '1980-03-03', 79, 'A+', 'Mumbai', '8547778500', 312, '2020-12-27'),
(14, 'Stephen Strange', 'M', '1990-12-24', 69, 'A+', 'Nashik', '8545554700', 310, '2020-12-27'),
(15, 'Aditya Sanju', 'M', '2003-04-09', 75, 'O-', 'Mumbai', '7454447410', 311, '2021-01-05'),
(16, 'Piyush Birari', 'M', '2002-11-11', 85, 'A-', 'Solapur', '8545557854', 310, '2021-01-05'),
(17, 'Jay Tipare', 'M', '2002-05-05', 80, 'O-', 'Nagpur', '7454447854', 360, '2021-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `campaigndb`
--

CREATE TABLE IF NOT EXISTS `campaigndb` (
`id` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `oname` varchar(50) NOT NULL,
  `phn` int(10) NOT NULL,
  `cdate` date NOT NULL,
  `descp` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigndb`
--

INSERT INTO `campaigndb` (`id`, `cname`, `oname`, `phn`, `cdate`, `descp`) VALUES
(8, 'Saving Lives Together', 'demo organizer', 1597534560, '2022-10-21', 'This campaign is organized by Saving Lives Together. We collect blood and give to accident victims with no resources of blood'),
(7, 'Khoon Bachao', 'Juhis organization', 8329832382, '2022-11-06', 'This is the organization started by Juhi. For her DBMS mini project for sem 5');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE IF NOT EXISTS `donor` (
`id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `guardiansname` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `weight` int(11) NOT NULL,
  `bloodgroup` varchar(3) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `guardiansname`, `gender`, `dob`, `weight`, `bloodgroup`, `email`, `address`, `contact`, `username`, `password`) VALUES
(3, 'Shawn Mendez', 'Mom Mendez', 'M', '1997-05-26', 60, 'B-','shawn@gmail.com', 'Pune', '8521479633', 'shawnmen', 'shawnmen'),
(8, 'Idris Kachwala','NA', 'M', '2002-05-23', 55, 'AB+', 'idris@gmail.com', 'Pune', '8555555545', 'eyedress','eyedress'),
(9, 'Ajita Jain', 'Mrs Jain','F', '2002-10-7', 69, 'AB+','ajita@gmail.com', 'Mumbai', '7854447854', 'ajita', 'ajita'),
(10, 'Sasha Dsilva', 'NA', 'F', '2003-02-12', 59, 'AB-', 'sasha@gmail.com', 'Mumbai', '8555554585', 'sasha', 'sasha'),
(11, 'Karen Stokes','Mr Stokes', 'F', '1996-02-02', 60, 'B+', 'karen@gmail.com', 'Nagpur', '7878787850', 'karen', 'karen'),
(12, 'Harry Styles', 'NA', 'M', '1997-01-05', 70, 'B+', 'harry@gmail.com', 'Nagpur', '8521112450', 'harry', 'harry'),
(13, 'Tony Stark', 'Harold Stark', 'M', '1980-03-03', 79, 'A+','tony@gmail.com', 'Mumbai', '8547778500', 'tony', 'tony'),
(14, 'Stephen Strange','Mr Strange', 'M', '1990-12-24', 69, 'A+', 'strange@gmail.com','Nashik', '8545554700', 'stephen', 'stephen'),
(15, 'Aditya Sanju', 'Sanju Francis', 'M', '2003-04-09', 75, 'O-', 'aditya@gmail.com', 'Mumbai', '7454447410', 'aditya', 'aditya'),
(16, 'Piyush Birari', 'NA', 'M', '2002-11-11', 85, 'A-', 'piyush@gmail.com', 'Solapur', '8545557854', 'piyush', 'piyush'),
(17, 'Jay Tipare', 'Mrs Tipare','M', '2002-05-05', 80, 'O-', 'jay@gmail.com', 'Nagpur', '7454447854', 'jay', 'jay');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `donorname` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `donorname`) VALUES
(1, 'user', 'pass', 'harryden'),
(2, 'juhishake', 'dbmspro', 'Juhi Shekokar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `announce`
--
ALTER TABLE `announce`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigndb`
--
ALTER TABLE `campaigndb`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `announce`
--
ALTER TABLE `announce`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `campaigndb`
--
ALTER TABLE `campaigndb`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
