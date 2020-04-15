-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2020 at 03:33 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `beam`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `Agent_No` int(3) NOT NULL,
  `Given_Name` varchar(64) NOT NULL,
  `Family_Name` varchar(64) NOT NULL,
  `Contact` varchar(11) NOT NULL,
  PRIMARY KEY (`Agent_No`),
  UNIQUE KEY `Agent No` (`Agent_No`),
  UNIQUE KEY `Contact` (`Contact`),
  KEY `fk_family_name` (`Family_Name`),
  KEY `fk_given_name` (`Given_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`Agent_No`, `Given_Name`, `Family_Name`, `Contact`) VALUES
(111, 'John', 'Ripov', '02034570000'),
(222, 'Mary', 'Dancing', '07654320243'),
(333, 'Anil', 'Rating', '01212130321'),
(444, 'Lim', 'Popo', '09112345432'),
(555, 'Mary', 'Ripov', '02034567890');

-- --------------------------------------------------------

--
-- Table structure for table `band`
--

CREATE TABLE IF NOT EXISTS `band` (
  `Band_Name` varchar(64) NOT NULL,
  `Description` varchar(64) NOT NULL,
  `Agent` varchar(64) NOT NULL,
  PRIMARY KEY (`Band_Name`),
  KEY `Agent` (`Agent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `band`
--

INSERT INTO `band` (`Band_Name`, `Description`, `Agent`) VALUES
('Green Dragons', 'Heavy Rock', '222'),
('Wellies', 'Easy Listening', '333'),
('Lazy Dancers', 'Garage', '111'),
('The Vultures', 'Easy Listening', '333'),
('Future Explosion', 'Heavy Rock', '444'),
('Killers', 'Heavy Rock', '222');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `ID` int(4) NOT NULL,
  `Title` varchar(5) NOT NULL,
  `GIven_Name` varchar(64) NOT NULL,
  `Family_Name` varchar(6) NOT NULL,
  `DoB` date NOT NULL,
  `Job_Type` varchar(64) NOT NULL,
  `Band` varchar(64) NOT NULL,
  `Status` varchar(9) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`ID`, `Title`, `GIven_Name`, `Family_Name`, `DoB`, `Job_Type`, `Band`, `Status`) VALUES
(1111, 'Ms', 'Helen', 'Mirand', '0000-00-00', 'Lead Guitar', 'Green Dragons', 'Active'),
(1234, 'Mr', 'Jose', 'Jose A', '0000-00-00', 'Bass Guitar', 'Green Dragons', 'Active'),
(1333, 'Dr', 'Vito', 'Gelato', '0000-00-00', 'Voice Coach', 'Wellies', 'Active'),
(1344, 'Dr', 'Guy', 'Redmon', '0000-00-00', 'Make-up', 'Killers', 'Active'),
(1444, 'Ms', 'Maria', 'Partou', '0000-00-00', 'Vocals', 'Wellies', 'Active'),
(2111, 'Ms', 'Lindsay', 'White', '0000-00-00', 'Dancer', 'Future Explosion', 'Cancelled'),
(4545, 'Ms', 'Lee', 'Ping', '0000-00-00', 'Lead Guitar', 'Lazy Dancers', 'Active'),
(2121, 'Mr', 'David', 'Wilkin', '0000-00-00', 'Backing', 'The Vultures', 'Cancelled'),
(5665, 'Ms', 'Sing', 'Song', '0000-00-00', 'Vocals', 'The Vultures', 'Active'),
(3333, 'Ms', 'Olenka', 'Sama', '0000-00-00', 'Sound Tech', 'Killers', 'Active'),
(7271, 'Mr', 'Dan', 'Dreary', '0000-00-00', 'Make-up', 'Wellies', 'Active'),
(5555, 'Mr', 'Tom', 'Tumbli', '0000-00-00', 'Drums', 'Wellies', 'Active'),
(6666, 'Mr', 'Fingers', 'Malone', '0000-00-00', 'Guitar', 'Wellies', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE IF NOT EXISTS `performance` (
  `Number` int(11) NOT NULL,
  `Stage` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Band` varchar(11) NOT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`Number`, `Stage`, `Date`, `Time`, `Band`) VALUES
(1, 1, '0000-00-00', '00:00:00', 'Wellies'),
(2, 2, '0000-00-00', '00:00:00', 'Wellies'),
(3, 3, '0000-00-00', '00:00:00', 'The Vulture'),
(4, 3, '0000-00-00', '00:00:00', 'Wellies'),
(5, 3, '0000-00-00', '00:00:00', 'The Vulture'),
(6, 1, '0000-00-00', '00:00:00', 'Killers'),
(7, 5, '0000-00-00', '00:00:00', 'Wellies'),
(8, 6, '0000-00-00', '00:00:00', 'The Vulture'),
(9, 2, '0000-00-00', '00:00:00', 'Killers'),
(10, 4, '0000-00-00', '00:00:00', 'Green Drago'),
(11, 1, '0000-00-00', '00:00:00', 'Wellies'),
(12, 4, '0000-00-00', '00:00:00', 'Lazy Dancer'),
(13, 6, '0000-00-00', '00:00:00', 'Green Drago'),
(14, 4, '0000-00-00', '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `stage`
--

CREATE TABLE IF NOT EXISTS `stage` (
  `Number` int(3) NOT NULL,
  `Stage_Name` varchar(46) NOT NULL,
  `Backstage_Capacity` int(9) NOT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stage`
--

INSERT INTO `stage` (`Number`, `Stage_Name`, `Backstage_Capacity`) VALUES
(1, 'John Peel', 20),
(2, 'The Bowl', 10),
(3, 'Main', 30),
(4, 'The Oasis', 20),
(5, 'Jam Session', 3),
(6, 'Premium', 50);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
