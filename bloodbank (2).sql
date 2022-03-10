-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 12:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_request`
--

CREATE TABLE `blood_request` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `bloodtype` varchar(50) NOT NULL,
  `units` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_request`
--

INSERT INTO `blood_request` (`id`, `name`, `phone`, `bloodtype`, `units`) VALUES
('Gau423', 'Gaurav Patil', '23423423', 'A-', 12),
('hrf', 'hrfdgdfgd', '23423', 'B+', 12),
('Pra0294054', 'Prajwal patil', '+19340294054', 'B+', 21),
('praj94054', 'prajwal patil', '9340294054', 'A+', 11),
('sac3423', 'sachine singh', '354353423', 'A+', 12),
('sdf3', 'sdfgdffsdfsd', '456453', 'A-', 2),
('sdf4', 'sdfd', '324234', 'B-', 1),
('Sna7567', 'Snajay Singh', '787567567', 'B+', 12);

-- --------------------------------------------------------

--
-- Table structure for table `blood_stock`
--

CREATE TABLE `blood_stock` (
  `A+` int(11) NOT NULL,
  `A-` int(11) NOT NULL,
  `B+` int(11) NOT NULL,
  `B-` int(11) NOT NULL,
  `AB+` int(11) NOT NULL,
  `AB-` int(11) NOT NULL,
  `O+` int(11) NOT NULL,
  `O-` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_stock`
--

INSERT INTO `blood_stock` (`A+`, `A-`, `B+`, `B-`, `AB+`, `AB-`, `O+`, `O-`) VALUES
(74, 20, 200, 46, 85, 51, 52, 10);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` varchar(110) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mob` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `appointment_date` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `isDonated` varchar(10) NOT NULL DEFAULT 'false',
  `units` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `name`, `mob`, `email`, `bloodgroup`, `appointment_date`, `address`, `isDonated`, `units`) VALUES
('nay3423', 'nayan', '232423423', 'nayan@gamil.com', 'B+', '2021-04-28', 'erwerew,weeweq,ewqeqwe,wqe', 'false', 0),
('ere543', 'eren yeager', '43534543', 'eren@gmail.com', 'B-', '2021-04-28', 'fdgd,sdfds,sdfds,sdf', 'true', 12),
('bhu88', 'bhupesh singh', '7989788', 'bhupi@1gmail.com', 'B+', '2021-04-23', 'Stsdfisd,sidfjsdi,jfsdfdsj,dsfdsf', 'true', 12),
('Roh50947', 'Rohit Sharma', '9827650947', 'roh@123', 'O+', '2021-04-29', 'dhanka,Indore,Not Specified,453441', 'false', 0),
('Nil48990', 'Nilesh Vishwakarma', '9977548990', 'nilesh.vishwakarmasdbc@gmail.com', 'AB+', '2021-04-29', 'gsdgds,BHIWANI,Opposite of madan warehouse,127021', 'false', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_request`
--
ALTER TABLE `blood_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`mob`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
