drop DATABASE gridx;
CREATE DATABASE gridx;
use gridx;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 05:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gridx`
--

-- --------------------------------------------------------

--
-- Table structure for table `absence`
--

CREATE TABLE `absence` (
  `student_id` varchar(255) DEFAULT NULL,
  `date_of_absence` text DEFAULT '',
  `date_of_delay` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absence`
--

INSERT INTO `absence` (`student_id`, `date_of_absence`, `date_of_delay`) VALUES
('general10.1', '2024-01-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`email`, `password`, `role`) VALUES
('ahmedfathi@gmail.com', '123456', 'admin'),
('ahmed@f.com', '123456', 'studentaffairs'),
('bb@gmail.com', '12345678', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `student_id` varchar(255) DEFAULT NULL,
  `name_of_competition` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT 0,
  `date_of_competition` date DEFAULT NULL,
  `joined` varchar(255) DEFAULT 'before'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`student_id`, `name_of_competition`, `rank`, `date_of_competition`, `joined`) VALUES
('general10.1', 'isef', 2, '2024-01-15', 'After');

-- --------------------------------------------------------

--
-- Table structure for table `delay_absence`
--

CREATE TABLE `delay_absence` (
  `student_id` varchar(255) DEFAULT NULL,
  `date_of_delay` text DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delay_absence`
--

INSERT INTO `delay_absence` (`student_id`, `date_of_delay`) VALUES
('general10.1', '2024-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `parent_info`
--

CREATE TABLE `parent_info` (
  `student_id` varchar(255) NOT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_email` varchar(255) DEFAULT NULL,
  `parent_phone` varchar(20) DEFAULT NULL,
  `id_card` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parent_info`
--

INSERT INTO `parent_info` (`student_id`, `parent_name`, `parent_email`, `parent_phone`, `id_card`) VALUES
('general10.1', 'fthi', '123456789@gmail.com', '01157167417', 0x433a5c66616b65706174685c57494e5f32303233313130395f31345f35305f32385f50726f2e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `student_id` varchar(255) DEFAULT NULL,
  `date_of_permission` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`student_id`, `date_of_permission`, `note`, `name`) VALUES
('general10.1', '2024-01-11', 'ss', 'belal moustafa '),
('general10.1', '2024-01-15', 's', 'belal moustafa '),
('general10.1', '2024-01-13', 's', 'belal moustafa ');

-- --------------------------------------------------------

--
-- Table structure for table `school_info`
--

CREATE TABLE `school_info` (
  `student_id` varchar(255) NOT NULL,
  `class` char(2) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `absence` int(11) DEFAULT NULL,
  `delays` int(11) DEFAULT NULL,
  `permissions` int(11) DEFAULT NULL,
  `competitions` int(11) DEFAULT NULL,
  `violations` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_info`
--

INSERT INTO `school_info` (`student_id`, `class`, `grade`, `specialization`, `absence`, `delays`, `permissions`, `competitions`, `violations`) VALUES
('general10.1', '1A', '10', 'general', 1, 7, 3, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `student_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birth_certificate` longblob DEFAULT NULL,
  `middle_school_certificate` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`student_id`, `name`, `phone`, `email`, `religion`, `gender`, `nationality`, `date_of_birth`, `address`, `birth_certificate`, `middle_school_certificate`) VALUES
('general10.1', 'belal moustafa ', '01157167417', '123456789@giza6.moe.edu.eg', 'muslim', 'male', 'Egypt', '2006-01-04', 'omrania', 0x433a5c66616b65706174685c57494e5f32303233313130395f31345f35305f32385f50726f2e6a7067, 0x433a5c66616b65706174685c57494e5f32303233313130395f31345f35305f32385f50726f2e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `violations`
--

CREATE TABLE `violations` (
  `student_id` varchar(255) DEFAULT NULL,
  `name_of_violation` varchar(255) DEFAULT NULL,
  `date_of_violation` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `violations`
--

INSERT INTO `violations` (`student_id`, `name_of_violation`, `date_of_violation`, `note`, `name`) VALUES
('general10.1', 'delay', '2024-01-10', 'ss', 'belal moustafa '),
('general10.1', 'delay', '2024-01-14', 'ss', 'belal moustafa '),
('general10.1', 'delay', '2024-01-13', 'ss', 'belal moustafa '),
('general10.1', 'delay', '2024-01-11', 'ss', 'belal moustafa '),
('general10.1', 'delay', '2024-01-10', 'ss', 'belal moustafa '),
('general10.1', 'delay', '2024-01-03', 'sss', 'belal moustafa '),
('general10.1', 'delay', '2024-01-03', 'ss', 'belal moustafa ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absence`
--
ALTER TABLE `absence`
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `delay_absence`
--
ALTER TABLE `delay_absence`
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `parent_info`
--
ALTER TABLE `parent_info`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `school_info`
--
ALTER TABLE `school_info`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `violations`
--
ALTER TABLE `violations`
  ADD KEY `student_id` (`student_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `absence_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`);

--
-- Constraints for table `competitions`
--
ALTER TABLE `competitions`
  ADD CONSTRAINT `competitions_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`);

--
-- Constraints for table `delay_absence`
--
ALTER TABLE `delay_absence`
  ADD CONSTRAINT `delay_absence_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`);

--
-- Constraints for table `parent_info`
--
ALTER TABLE `parent_info`
  ADD CONSTRAINT `parent_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`);

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`);

--
-- Constraints for table `school_info`
--
ALTER TABLE `school_info`
  ADD CONSTRAINT `school_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`);

--
-- Constraints for table `violations`
--
ALTER TABLE `violations`
  ADD CONSTRAINT `violations_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
