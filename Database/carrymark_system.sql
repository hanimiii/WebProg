-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2018 at 05:21 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrymark_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `carrymark`
--

DROP TABLE IF EXISTS `carrymark`;
CREATE TABLE IF NOT EXISTS `carrymark` (
  `carryMarkID` int(11) NOT NULL AUTO_INCREMENT,
  `markLab` int(11) NOT NULL,
  `markQ_A` int(11) NOT NULL,
  `markTest1` int(11) NOT NULL,
  `markTest2` int(11) NOT NULL,
  `markProposal` int(11) NOT NULL,
  `markPresentation` int(11) NOT NULL,
  `markReport` int(11) NOT NULL,
  PRIMARY KEY (`carryMarkID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carrymark`
--

INSERT INTO `carrymark` (`carryMarkID`, `markLab`, `markQ_A`, `markTest1`, `markTest2`, `markProposal`, `markPresentation`, `markReport`) VALUES
(8, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `ClassID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(256) NOT NULL,
  PRIMARY KEY (`ClassID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`ClassID`, `ClassName`) VALUES
(1, 'M3CS2454A'),
(2, 'M3CS2453A');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staffID` int(11) NOT NULL AUTO_INCREMENT,
  `staffName` varchar(256) NOT NULL,
  `staffUsername` varchar(256) NOT NULL,
  `staffEmail` varchar(256) NOT NULL,
  `staffPassword` varchar(256) NOT NULL,
  `staffMatric` varchar(10) NOT NULL,
  `staffIC` varchar(14) NOT NULL,
  `staffPhone` varchar(12) NOT NULL,
  `staffPic` varchar(256) NOT NULL,
  `staffRegistered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `staffType` int(11) DEFAULT NULL,
  PRIMARY KEY (`staffID`),
  KEY `staffType` (`staffType`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `staffName`, `staffUsername`, `staffEmail`, `staffPassword`, `staffMatric`, `staffIC`, `staffPhone`, `staffPic`, `staffRegistered`, `staffType`) VALUES
(1, 'admin', 'admin', 'admin@yahoo.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', 'admin', 'images/admin.jpg', '2018-12-01 00:00:00', 1),
(3, 'Muhammad Eizan Bin Muhammad Aziz', 'eizanaziz', 'eizan@yahoo.com', '21232f297a57a5a743894a0e4a801fc3', '2012312311', '123456789012', '01128054997', 'images/admin.jpg', '2018-12-01 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `StudentID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(256) NOT NULL,
  `StudentMatric` varchar(10) NOT NULL,
  `StudentIC` varchar(14) NOT NULL,
  `StudentEmail` varchar(256) NOT NULL,
  `StudentPhone` varchar(12) NOT NULL,
  `StudentPic` varchar(256) NOT NULL,
  `StudentRegistered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`StudentID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `StudentName`, `StudentMatric`, `StudentIC`, `StudentEmail`, `StudentPhone`, `StudentPic`, `StudentRegistered`) VALUES
(1, 'Raja Muhammad Hanif', '2017197403', '970728106287', 'hanimiii97@yahoo.com', '01128054997', 'images/admin.jpg', '2018-12-05 00:00:00'),
(2, 'Hazim', '2017193221', '9706238111', 'amirulhazim@gmail.com', '0146373385', 'images/admin.jpg', '2018-12-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subjectID` int(11) NOT NULL AUTO_INCREMENT,
  `subjectName` varchar(256) NOT NULL,
  `subjectDesc` varchar(256) NOT NULL,
  PRIMARY KEY (`subjectID`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subjectID`, `subjectName`, `subjectDesc`) VALUES
(1, 'CSC118', 'Basic Program'),
(2, 'QMT437', 'Operational Research'),
(3, 'ITT430', 'Microprocessors');

-- --------------------------------------------------------

--
-- Table structure for table `subjecttook`
--

DROP TABLE IF EXISTS `subjecttook`;
CREATE TABLE IF NOT EXISTS `subjecttook` (
  `stID` int(11) NOT NULL AUTO_INCREMENT,
  `studentID` int(11) NOT NULL,
  `carryMarkID` int(11) DEFAULT NULL,
  `classID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `staffID` int(11) NOT NULL,
  PRIMARY KEY (`stID`),
  KEY `studentID` (`studentID`),
  KEY `carryMarkID` (`carryMarkID`),
  KEY `classID` (`classID`),
  KEY `subjectID` (`subjectID`),
  KEY `staffID` (`staffID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjecttook`
--

INSERT INTO `subjecttook` (`stID`, `studentID`, `carryMarkID`, `classID`, `subjectID`, `staffID`) VALUES
(8, 2, 8, 2, 2, 3),
(7, 1, 7, 2, 2, 3),
(6, 2, 6, 1, 1, 3),
(5, 1, 5, 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
CREATE TABLE IF NOT EXISTS `usertype` (
  `TypeID` int(11) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(256) NOT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`TypeID`, `TypeName`) VALUES
(1, 'Admin'),
(2, 'Staff');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
