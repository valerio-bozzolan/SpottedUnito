-- phpMyAdmin SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 28, 2016 at 03:26 PM
-- Server version: 5.5.38
-- PHP Version: 5.4.45-1~dotdeb+6.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spottedunitodev`
--

-- --------------------------------------------------------

--
-- Table structure for table `fifo`
--

CREATE TABLE `fifo` (
  `spotted_ID` int(10) unsigned NOT NULL,
  `spotter_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`spotted_ID`,`spotter_ID`),
  KEY `spotter_ID` (`spotter_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fifo`
--
ALTER TABLE `fifo`
  ADD CONSTRAINT `fifo_ibfk_1` FOREIGN KEY (`spotted_ID`) REFERENCES `spotted` (`spotted_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fifo_ibfk_2` FOREIGN KEY (`spotter_ID`) REFERENCES `spotter` (`spotter_ID`) ON DELETE CASCADE;

