-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2017 at 01:06 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toucantech`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(250) NOT NULL,
  `member_email` varchar(250) NOT NULL,
  `member_school` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `member_email`, `member_school`) VALUES
(1, 'Jhon Dow', 'jhondow@gmail.com', ''),
(13, 'Stev', 'stev@gmail.com', ''),
(14, 'dddddd', 'ddddd@avc.bg', 'Primary school'),
(15, 'Stev', 'gggg@abv.bg', 'Primary school1'),
(16, 'ggggg', 'ivelina@abv.bg', 'Primary school1'),
(17, 'ggggg', 'ivelina@abv.bg', 'College'),
(18, 'ggggg', 'ivelina@abv.bg', 'College'),
(19, 'ggggg', 'ivelina@abv.bg', 'College'),
(20, 'Jhack', 'jhak@gmail.com', 'Primary school,High school,'),
(21, 'ggggg', 'ivelina@abv.bg', 'College,High school,'),
(22, 'Stev', 'gggg@abv.bg', 'College,High school,'),
(23, 'Jhack', 'jhak@gmail.com', 'Primary school,High school,');

-- --------------------------------------------------------

--
-- Table structure for table `members_schools`
--

CREATE TABLE `members_schools` (
  `member_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members_schools`
--

INSERT INTO `members_schools` (`member_id`, `school_id`) VALUES
(1, 1),
(2, 1),
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`school_id`, `school_name`) VALUES
(1, 'Primary school'),
(2, 'High school'),
(3, 'College');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `members_schools`
--
ALTER TABLE `members_schools`
  ADD KEY `member_id` (`member_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`school_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
