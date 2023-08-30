-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aci_leave`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '12345', '2023-08-20 05:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `CreationDate`) VALUES
(2, 'Information Technologies', 'ICT', '2023-08-15 07:19:37'),
(3, 'Library', 'LIb', '2023-08-15 08:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `emp_id` int(11) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Av_leave` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(30) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`emp_id`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `Av_leave`, `Phonenumber`, `Status`, `RegDate`, `role`, `location`) VALUES
(1, 'Abhishek', 'Kumar', 'abhishek@abhishek.com', '12345', 'Male', '7 April, 2000', 'ICT', 'Bhopal', '30', '0248865955', 1, '2023-08-10 11:29:59', 'Staff', 'NO-IMAGE-AVAILABLE.jpg'),
(2, 'Ritik', 'Kumar', 'Ritik@gmail.com', 'b4cc344d25a2efe540adbf2678e2304c', 'Male', '3 February, 2000', 'ICT', 'Gaya', '30', '8587944255', 1, '2022-11-10 13:40:02', 'Admin', 'photo2.jpg'),
(4, 'Roushan', 'Tiwari', 'Roushan@gmail.com', 'b4cc344d25a2efe540adbf2678e2304c', 'Male', '3 February, 2002', 'ICT', 'Bhopal', '30', '587944255', 1, '2022-11-10 13:40:02', 'Admin', 'NO-IMAGE-AVAILABLE.jpg'),
(5, 'Rahul', 'Kumar', 'Rahul@gmail.com', 'b4cc344d25a2efe540adbf2678e2304c', 'Male', '3 February, 2003', 'ICT', 'Delhi', '30', '587944255', 1, '2022-11-10 13:40:02', 'HOD', 'photo5.jpg'),
(6, 'Ayesha', 'Kumari', 'Ayesha@gmail.com', 'b4cc344d25a2efe540adbf2678e2304c', 'Female', '3 February, 2000', 'LIb', 'Gaya', '30', '587944255', 1, '2022-11-10 13:40:02', 'Staff', 'NO-IMAGE-AVAILABLE.jpg'),
(7, 'Rishu', 'Kumari', 'Rishu@gmail.com', 'b4cc344d25a2efe540adbf2678e2304c', 'Female', '3 February, 2004', 'ICT', 'Bhopal', '1', '0596667981', 1, '2022-11-10 13:40:02', 'Staff', '1920_File_logo4.png'),
(8, 'Anna', 'Karley', 'anna@gmail.com', 'b4cc344d25a2efe540adbf2678e2304c', 'Female', '3 February, 1999', 'ICT', 'Delhi', '30', '587944255', 1, '2022-11-10 13:40:02', 'HOD', 'NO-IMAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` date NOT NULL,
  `AdminRemark` mediumtext,
  `registra_remarks` mediumtext NOT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `admin_status` int(11) NOT NULL DEFAULT '0',
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `num_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `registra_remarks`, `AdminRemarkDate`, `Status`, `admin_status`, `IsRead`, `empid`, `num_days`) VALUES
(13, 'Casual Leave', '2023-08-12', '2023-08-15', 'I want to take a leave.', '2023-08-20', 'Ok', 'ok', '2023-08-24 20:26:19 ', 1, 1, 1, 7, 3),
(14, 'Medical Leave', '12-11-2022', '15-11-2022', 'Noted', '0000-00-00', 'Not this time', '', '2022-11-21 0:31:10 ', 0, 0, 1, 6, 4),
(16, 'Casual Leave', '02-12-2022', '05-12-2022', 'Nice Leave', '2022-12-20', 'Ok', 'Noted', '2022-12-24 20:42:18 ', 1, 1, 1, 7, 4),
(17, 'Casual Leave', '11-05-2023', '15-05-2023', 'Just', '2023-05-21', 'Leave Approved', 'Noted', '2023-05-24 19:56:45 ', 1, 1, 1, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `date_from` varchar(200) NOT NULL,
  `date_to` varchar(200) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `date_from`, `date_to`, `CreationDate`) VALUES
(5, 'Casual Leave', 'Casual Leave', '2023-05-23', '2023-06-20', '2023-05-19 14:32:03'),
(6, 'Medical Leave', 'Medical Leave', '2023-05-05', '2321-05-28', '2023-05-19 15:29:05'),
(8, 'Other', 'Leave all staff', '31-05-2023', '04-06-2023', '2023-05-20 17:17:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
