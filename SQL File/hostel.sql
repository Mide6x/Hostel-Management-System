-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 11:01 AM
-- Server version: 10.3.15-XAMPP
-- PHP Version: 7.2.19
-- BY: Olumide Adewole

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '2022-12-01 20:31:45', '2022-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_fn`, `posting_date`) VALUES
(1, 'A1001', 'Accounting', '2022-12-01 11:08:00'),
(2, 'A1002', 'Agriculture', '2022-12-01 11:08:00'),
(3, 'A1003', 'Architecture', '2022-12-01 11:08:00'),
(4, 'A1004', 'Banking and Finance', '2022-12-01 11:08:00'),
(5, 'A1005', 'Biochemistry', '2022-12-01 11:08:00'),
(6, 'A1006', 'Business Administration', '2022-12-01 11:08:00'),
(7, 'A1007', 'Christian Religious Studies', '2022-12-01 11:08:00'),
(8, 'A1008', 'Civil Engineering', '2022-12-01 11:08:00'),
(9, 'A1009', 'Computer Engineering', '2022-12-01 11:08:00'),
(10, 'A1010', 'Computer Science', '2022-12-01 11:08:00'),
(11, 'A1011', 'Economics', '2022-12-01 11:08:00'),
(12, 'A1012', 'Education and Computer Science', '2022-12-01 11:08:00'),
(13, 'A1013', 'Education and Economics', '2022-12-01 11:08:00'),
(14, 'A1014', 'Education and English Language', '2022-12-01 11:08:00'),
(15, 'A1015', 'English Language', '2022-12-01 11:08:00'),
(16, 'A1016', 'Estate Management', '2022-12-01 11:08:00'),
(17, 'A1017', 'Geology', '2022-12-01 11:08:00'),
(18, 'A1018', 'Guidiance and Counselling', '2022-12-01 11:08:00'),
(19, 'A1019', 'Histroy and International Relations', '2022-12-01 11:08:00'),
(20, 'A1020', 'Industrial Chemistry', '2022-12-01 11:08:00'),
(21, 'A1021', 'Industrial relations and personnel management', '2022-12-01 11:08:00'),
(22, 'A1022', 'Law', '2022-12-01 11:08:00'),
(23, 'B1001', 'Library and Information Science', '2022-12-01 11:08:00'),
(24, 'B1017', 'Mass communication', '2022-12-01 11:08:00'),
(25, 'B1018', 'Mathematics', '2022-12-01 11:08:00'),
(26, 'B1019', 'Mechanical Engineering', '2022-12-01 11:08:00'),
(27, 'B1020', 'Medical Laboratory Science', '2022-12-01 11:08:00'),
(28, 'B1021', 'Microbiology', '2022-12-01 11:08:00'),
(29, 'B1022', 'Music', '2022-12-01 11:08:00'),
(30, 'B1016', 'Peace Strategy and Conflict Resolution', '2022-12-01 11:08:00'),
(31, 'B1017', 'Performing Arts', '2022-12-01 11:08:00'),
(32, 'B1018', 'Physics with Electronics', '2022-12-01 11:08:00'),
(33, 'B1019', 'Political Science', '2022-12-01 11:08:00'),
(34, 'B1020', 'Radiography ad Radiation Science', '2022-12-01 11:08:00'),
(35, 'B1021', 'Statistics', '2022-12-01 11:08:00'),
(36, 'B1022', 'Surveying and Geo-Informatics', '2022-12-01 11:08:00'),
(37, 'B1023', 'Teacher Education Science', '2022-12-01 11:08:00');


-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` varchar(255) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` int(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 4, 1, 55000, '2022-12-01 22:45:43'),
(2, 4, 2, 55000, '2022-12-01 01:30:47'),
(3, 4, 3, 55000, '2022-12-0101:30:58'),
(4, 4, 4, 55000, '2022-12-01 01:31:07'),
(5, 4, 5, 55000, '2022-12-01 22:45:43'),
(6, 4, 6, 55000, '2022-12-01 01:30:47'),
(7, 4, 7, 55000, '2022-12-01 01:30:58'),
(8, 4, 8, 55000, '2022-12-01 01:31:07'),
(9, 4, 9, 55000, '2022-12-01 22:45:43'),
(10, 4, 10, 55000, '2022-12-01 01:30:47'),
(11, 4, 11, 55000, '2022-12-01 01:30:58'),
(12, 4, 12, 55000, '2022-12-01 01:31:07'),
(13, 4, 13, 55000, '2022-12-01 22:45:43'),
(14, 4, 14, 55000, '2022-12-01 01:30:47'),
(15, 4, 15, 55000, '2022-12-01 01:30:58'),
(16, 4, 16, 55000, '2022-12-01 01:31:07'),
(17, 4, 17, 55000, '2022-12-01 01:30:47'),
(18, 4, 18, 55000, '2022-12-01 01:30:58'),
(19, 4, 19, 55000, '2022-12-01 01:31:07'),
(20, 4, 20, 55000, '2022-12-01 01:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Abia'),
(2, 'Adamawa'),
(3, 'Akwa Ibom'),
(4, 'Anambra'),
(5, 'Bauchi'),
(6, 'Bayelsa'),
(7, 'Benue'),
(8, 'Borno'),
(9, 'Cross River'),
(10, 'Delta'),
(11, 'Ebonyi'),
(12, 'Edo'),
(13, 'Ekiti'),
(14, 'Enugu'),
(15, 'Gombe'),
(16, 'Imo'),
(17, 'Jigawa'),
(18, 'Kaduna'),
(19, 'Kano'),
(20, 'Katsina'),
(21, 'Kebbi'),
(22, 'Kogi'),
(23, 'Kwara'),
(24, 'Lagos'),
(25, 'Nasarawa'),
(26, 'Niger'),
(27, 'Ogun'),
(28, 'Ondo'),
(29, 'Osun'),
(30, 'Oyo'),
(31, 'Plateau'),
(32, 'Rivers'),
(33, 'Sokoto'),
(34, 'Taraba'),
(35, 'Yobe'),
(36, 'Zamfara'),
(37, 'FCT Abuja');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `hostel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `course`, `hostel`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(3, '19N02/045', 'Test', 'User', 'Login', 'Male', 804567890, 'Computer Science','Joseph Adetiloye Hall (Male)', 'test@gmail.com', 'Test@123', '2022-12-01', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
