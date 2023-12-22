-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 22, 2023 at 02:31 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `students01`
--

DROP TABLE IF EXISTS `students01`;
CREATE TABLE IF NOT EXISTS `students01` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(250) NOT NULL,
  `student_email` varchar(250) NOT NULL,
  `student_password` varchar(250) NOT NULL,
  `student_address` varchar(250) NOT NULL,
  `student_city` varchar(250) NOT NULL,
  `student_state` varchar(250) NOT NULL,
  `student_zip` int(11) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students01`
--

INSERT INTO `students01` (`student_id`, `student_name`, `student_email`, `student_password`, `student_address`, `student_city`, `student_state`, `student_zip`) VALUES
(1, 'anuradha', 'darsha@gmail.com', '12345', 'kandy', 'kandy', 'central', 20800),
(13, 'lakmali', 'lakmali@gmail.com', '1234', 'kandy', 'kandy', 'central', 1000),
(15, 'namal', 'namala@gmail.com', '12345', 'kandy', 'gall', 'central', 1212);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
