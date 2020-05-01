-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2020 at 11:03 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siwes`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countryid` int(11) NOT NULL,
  `countryname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryid`, `countryname`) VALUES
(1, 'NIGERIA');

-- --------------------------------------------------------

--
-- Table structure for table `logbook`
--

CREATE TABLE `logbook` (
  `logbookId` int(11) NOT NULL,
  `logbookMat` varchar(255) DEFAULT NULL,
  `logbookDesc` text,
  `logbookAttach` varchar(255) DEFAULT NULL,
  `logbookComment` text,
  `logDeleteReason` varchar(255) DEFAULT NULL,
  `logbookDelete` varchar(255) DEFAULT NULL,
  `logbookDate` date DEFAULT NULL,
  `logbookTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logbook`
--

INSERT INTO `logbook` (`logbookId`, `logbookMat`, `logbookDesc`, `logbookAttach`, `logbookComment`, `logDeleteReason`, `logbookDelete`, `logbookDate`, `logbookTime`) VALUES
(1, '1', '<p>Today we talk abut love</p>', '1 2020_04_11 20_45_37 FRICON INTERVIE-WPS Office.doc', NULL, NULL, NULL, '2020-04-11', '0000-00-00 00:00:00'),
(2, '1', '<p>I love u</p>', '1 2020_04_11 20_45_56 AssignmentAKINODE.docx', NULL, NULL, NULL, '2020-04-11', '0000-00-00 00:00:00'),
(3, '1', '<p>TOPIC: <strong>THE NEW TOPIC IS HERE</strong></p>', '1 2020_04_11 22_45_32 Agro App- Jumoke.docx', '', NULL, NULL, '2020-04-11', '2020-04-11 22:51:44');

-- --------------------------------------------------------

--
-- Table structure for table `reglist`
--

CREATE TABLE `reglist` (
  `matno` int(11) DEFAULT NULL,
  `fno` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `yog` int(11) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `studentshipStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reglist`
--

INSERT INTO `reglist` (`matno`, `fno`, `fname`, `sname`, `mname`, `sex`, `college`, `dept`, `program`, `yog`, `level`, `studentshipStatus`) VALUES
(1, 0, 'Omolewa', 'Stephen', 'Ayo', 'Male', 'Computer Science', 'Comp Sci', 'Computer Science', 2010, '500', '1');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleId` int(11) NOT NULL,
  `roleName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleId`, `roleName`) VALUES
(1, 'admin'),
(2, 'supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `siwespost`
--

CREATE TABLE `siwespost` (
  `siwesPostId` int(11) NOT NULL,
  `siwesOfficer` varchar(255) DEFAULT NULL,
  `siwesMat` varchar(255) DEFAULT NULL,
  `siwesCompName` varchar(255) DEFAULT NULL,
  `siwesCompAdd` text,
  `siwesCompCountry` varchar(255) DEFAULT NULL,
  `siwesCompState` varchar(255) DEFAULT NULL,
  `siwesCompDate` date DEFAULT NULL,
  `siwesCompTime` time DEFAULT NULL,
  `siwesCompLetter` varchar(255) DEFAULT NULL,
  `siwesSupervisor` varchar(255) DEFAULT NULL,
  `siwesSupervisorNo` varchar(255) DEFAULT NULL,
  `siwesSupervisorSkype` varchar(255) DEFAULT NULL,
  `siwesStudentSkype` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siwespost`
--

INSERT INTO `siwespost` (`siwesPostId`, `siwesOfficer`, `siwesMat`, `siwesCompName`, `siwesCompAdd`, `siwesCompCountry`, `siwesCompState`, `siwesCompDate`, `siwesCompTime`, `siwesCompLetter`, `siwesSupervisor`, `siwesSupervisorNo`, `siwesSupervisorSkype`, `siwesStudentSkype`) VALUES
(1, '5', '1', 'Hubroot Technologies', 'Ilorin,Kwara State', 'NIGERIA', 'Enugu', '2020-04-11', '23:31:45', '1 2020_04_11 23_31_45 Installation.pdf', 'Mr Arowolo', '08140034374', 'arowolo123', 'lewa');

-- --------------------------------------------------------

--
-- Table structure for table `stafflist`
--

CREATE TABLE `stafflist` (
  `staffId` int(11) NOT NULL,
  `staffno` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stafflist`
--

INSERT INTO `stafflist` (`staffId`, `staffno`, `fname`, `sname`, `mname`, `sex`, `college`, `dept`, `program`) VALUES
(1, 1, 'Bammi', 'Lewa', 'Ayo', 'Male', 'Computer Science', 'Comp Sci', 'Comp Sci'),
(3, 5, 'Demo', 'Demo', 'Ayo', 'Female', 'Computer Science', 'Comp Sci', 'Comp Sci'),
(4, 6, 'Ade', 'John', 'Bola', 'Female', 'Computer Science', 'Comp Sci', 'Comp Sci');

-- --------------------------------------------------------

--
-- Table structure for table `staffrole`
--

CREATE TABLE `staffrole` (
  `staffRoleId` int(11) NOT NULL,
  `staffNum` varchar(255) DEFAULT NULL,
  `staffRoleNo` int(11) DEFAULT NULL,
  `loginTime` datetime DEFAULT NULL,
  `staffDelete` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffrole`
--

INSERT INTO `staffrole` (`staffRoleId`, `staffNum`, `staffRoleNo`, `loginTime`, `staffDelete`) VALUES
(1, '1', 1, '2020-04-12 00:10:33', NULL),
(4, '5', 1, '2020-04-12 00:45:33', NULL),
(5, '6', 1, '2020-04-12 00:46:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `stateid` int(11) NOT NULL,
  `statename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COMMENT='States in Nigeria.';

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`stateid`, `statename`) VALUES
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
(15, 'FCT'),
(16, 'Gombe'),
(17, 'Imo'),
(18, 'Jigawa'),
(19, 'Kaduna'),
(20, 'Kano'),
(21, 'Katsina'),
(22, 'Kebbi'),
(23, 'Kogi'),
(24, 'Kwara'),
(25, 'Lagos'),
(26, 'Nasarawa'),
(27, 'Niger'),
(28, 'Ogun'),
(29, 'Ondo'),
(30, 'Osun'),
(31, 'Oyo'),
(32, 'Plateau'),
(33, 'Rivers'),
(34, 'Sokoto'),
(35, 'Taraba'),
(36, 'Yobe'),
(37, 'Zamfara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countryid`);

--
-- Indexes for table `logbook`
--
ALTER TABLE `logbook`
  ADD PRIMARY KEY (`logbookId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `siwespost`
--
ALTER TABLE `siwespost`
  ADD PRIMARY KEY (`siwesPostId`);

--
-- Indexes for table `stafflist`
--
ALTER TABLE `stafflist`
  ADD PRIMARY KEY (`staffId`);

--
-- Indexes for table `staffrole`
--
ALTER TABLE `staffrole`
  ADD PRIMARY KEY (`staffRoleId`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`stateid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logbook`
--
ALTER TABLE `logbook`
  MODIFY `logbookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siwespost`
--
ALTER TABLE `siwespost`
  MODIFY `siwesPostId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stafflist`
--
ALTER TABLE `stafflist`
  MODIFY `staffId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staffrole`
--
ALTER TABLE `staffrole`
  MODIFY `staffRoleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
