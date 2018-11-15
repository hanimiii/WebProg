-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 15, 2018 at 01:46 PM
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `ClassID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(256) NOT NULL,
  PRIMARY KEY (`ClassID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `staffRegistered` datetime NOT NULL,
  PRIMARY KEY (`staffID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `StudentRegistered` datetime NOT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjecttook`
--

DROP TABLE IF EXISTS `subjecttook`;
CREATE TABLE IF NOT EXISTS `subjecttook` (
  `stID` int(11) NOT NULL AUTO_INCREMENT,
  `studentID` int(11) NOT NULL,
  `carryMarkID` int(11) NOT NULL,
  `classID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `staffID` int(11) NOT NULL,
  PRIMARY KEY (`stID`),
  KEY `studentID` (`studentID`),
  KEY `carryMarkID` (`carryMarkID`),
  KEY `classID` (`classID`),
  KEY `subjectID` (`subjectID`),
  KEY `staffID` (`staffID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
CREATE TABLE IF NOT EXISTS `usertype` (
  `TypeID` int(11) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(256) NOT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
