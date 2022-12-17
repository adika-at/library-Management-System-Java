-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2021 at 07:34 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` int(10) UNSIGNED NOT NULL,
  `security_ques` varchar(45) NOT NULL,
  `answer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `name`, `password`, `security_ques`, `answer`) VALUES
('jude', 'angel jude', 123, 'What is your mother toungue?', 'bangla');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `edition` int(10) UNSIGNED NOT NULL,
  `publisher` varchar(35) NOT NULL,
  `price` int(8) UNSIGNED NOT NULL,
  `stock` int(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` int(5) UNSIGNED NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(5) UNSIGNED NOT NULL,
  `stock` int(5) UNSIGNED NOT NULL,
  `stu_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(25) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `doi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returntbl`
--

CREATE TABLE `returntbl` (
  `stu_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` varchar(25) NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `doi` date NOT NULL,
  `doreturn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `fathers_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `fathers_name`, `course`, `branch`, `year`, `semister`) VALUES
(334, 'adrian', 'arnulfo', 'BBA', 'bear branch', '4th', '2nd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
