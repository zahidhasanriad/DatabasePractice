-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2014 at 08:23 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ftfl_2nd_batch`
--

-- --------------------------------------------------------

--
-- Table structure for table `final_results`
--

CREATE TABLE IF NOT EXISTS `final_results` (
  `final_results_id` int(11) NOT NULL AUTO_INCREMENT,
  `students_id` int(11) NOT NULL,
  `final_results_gpa` float NOT NULL,
  `final_results_modified` datetime DEFAULT NULL,
  `final_results_created` datetime DEFAULT NULL,
  PRIMARY KEY (`final_results_id`),
  KEY `students_id` (`students_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `final_results`
--

INSERT INTO `final_results` (`final_results_id`, `students_id`, `final_results_gpa`, `final_results_modified`, `final_results_created`) VALUES
(1, 1, 5, '2014-08-10 09:35:53', '2014-08-10 09:35:53'),
(2, 2, 4.5, '2014-08-10 09:35:53', '2014-08-10 09:35:53'),
(3, 3, 3.5, '2014-08-10 10:14:15', '2014-08-10 10:14:15'),
(4, 4, 2.5, '2014-08-10 10:14:15', '2014-08-10 10:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `results_id` int(255) NOT NULL AUTO_INCREMENT,
  `students_id` int(255) NOT NULL,
  `results_education_level` varchar(255) NOT NULL,
  `results_gpa` float NOT NULL,
  `results_modified` datetime NOT NULL,
  `results_created` datetime NOT NULL,
  PRIMARY KEY (`results_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`results_id`, `students_id`, `results_education_level`, `results_gpa`, `results_modified`, `results_created`) VALUES
(1, 1, 'SSC', 5, '2014-08-10 10:16:41', '2014-08-10 10:16:41'),
(2, 1, 'HSC', 3.5, '2014-08-10 10:16:41', '2014-08-10 10:16:41'),
(3, 1, 'BA', 4, '2014-08-10 10:19:23', '2014-08-10 10:19:23'),
(4, 4, 'BA', 3, '2014-08-10 10:19:23', '2014-08-10 10:19:23'),
(5, 4, 'SSC', 5, '2014-08-10 10:21:09', '2014-08-10 10:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `students_id` int(255) NOT NULL AUTO_INCREMENT,
  `students_name` varchar(255) NOT NULL,
  `students_modified` datetime NOT NULL,
  `students_created` datetime NOT NULL,
  PRIMARY KEY (`students_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`students_id`, `students_name`, `students_modified`, `students_created`) VALUES
(1, 'Sajia', '2014-08-10 09:12:07', '2014-08-10 09:12:07'),
(2, 'Daisy', '2014-08-10 09:12:07', '2014-08-10 09:12:07'),
(3, 'Piash', '2014-08-10 10:11:30', '2014-08-10 10:11:30'),
(4, 'Israt', '2014-08-10 10:11:30', '2014-08-10 10:11:30');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `final_results`
--
ALTER TABLE `final_results`
  ADD CONSTRAINT `final_results_ibfk_1` FOREIGN KEY (`students_id`) REFERENCES `students` (`students_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
