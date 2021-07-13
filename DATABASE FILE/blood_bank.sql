-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 04:28 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_contact`
--

CREATE TABLE `blood_contact` (
  `blood_contact_id` int(100) NOT NULL,
  `contact_fk` int(100) DEFAULT NULL,
  `blood_fk` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor_group`
--

CREATE TABLE `blood_donor_group` (
  `blood_donor_group_id` int(100) NOT NULL,
  `donor_fk` int(100) DEFAULT NULL,
  `blood_fk` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `blood_id` int(100) NOT NULL,
  `blood_group` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_group`
--

INSERT INTO `blood_group` (`blood_id`, `blood_group`) VALUES
(3, 'sd'),
(5, 'D#');

-- --------------------------------------------------------

--
-- Table structure for table `blood_request_group`
--

CREATE TABLE `blood_request_group` (
  `blood_request_group_id` int(100) NOT NULL,
  `requester_fk` int(100) DEFAULT NULL,
  `blood_fk` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(100) NOT NULL,
  `city_code` varchar(100) DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `description` varchar(120) DEFAULT NULL,
  `donor_fk` int(100) DEFAULT NULL,
  `requester_fk` int(100) DEFAULT NULL,
  `state_fk` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_code`, `city_name`, `description`, `donor_fk`, `requester_fk`, `state_fk`) VALUES
(3, 'CLSs', 'Thihariyass', 'Thiahriya town shop', NULL, NULL, 36);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `member_fk` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donor_id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `body_weight` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `blood_group` varchar(40) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username_fk` varchar(100) NOT NULL,
  `status` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donor_id`, `name`, `father_name`, `gender`, `dob`, `body_weight`, `email`, `blood_group`, `state`, `city`, `address`, `pincode`, `phone`, `image`, `username_fk`, `status`) VALUES
(11, 'Shar', 'Ahammed', 'male', '03/08/2018', '34Kg', 'admin@gmail.com', 'O+', 'Kandyd', 'Thihariyass', '34#', '0778650336', 'Kandy', 'upload/11_1521639011.jpg', 'codeprojects', 1),
(13, 'nizam', 'nizam', 'male', '03/26/2018', '34Kg', 'codeprojects@gmail.com', 'B+', 'Kandyd', 'Thihariyass', '34#', '778650336', 'cxczxcxvxcvc', 'upload/394839_1521640578.jpg', 'super admin', 1),
(15, 'Today', 'Today', 'female', '03/14/2018', '134kg', 'today@gmail.com', 'AB+', 'Kandyd', 'Thihariyass', '4567', '0778665443', 'Amapara', 'upload/hire-php-developer-mumbai-india-ezeelive-technologies_1521645495.png', 'today', 0),
(17, 'Thursday', 'Thursday', 'male', '03/22/2018', '100Kg', 'Thursday@gmail.com', 'A+', 'Kandyd', 'Thihariyass', 'TH78', '778650336', 'ThursdayThursday', 'upload/Asian_Games_logo.svg_1521689309.png', 'super admin', 1),
(18, 'Muhammad Firly Rafiansyah', 'bima', 'male', '07/16/2021', '150', 'firlyrafiansyah123@yahoo.com', NULL, '', '', '1234', '02554414', 'jalan teratai 22', 'upload/95_1521610779_1626142373.jpg', 'firlyrafiansyah', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_subs`
--

CREATE TABLE `email_subs` (
  `subscribe_id` int(100) NOT NULL,
  `email` varchar(160) DEFAULT NULL,
  `member_fk` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(100) NOT NULL,
  `name` varchar(190) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `name`, `username`, `password`, `email`, `phone`, `address`, `usertype`, `profile`) VALUES
(1, 'admin', 'admin', 'admin', NULL, NULL, NULL, 'admin', 'upload/3_1521639658.jpg'),
(2, 'cpp', 'firlyrafiansyah', '123456', NULL, NULL, NULL, 'user', 'upload/7015951-3d-funny-animal_1521603987.jpg'),
(15, 'Muhammad Firly Rafiansyah', 'firlyrafiansyah55', '1234', '1234', NULL, NULL, 'user', 'upload/user2_1625909452.png');

-- --------------------------------------------------------

--
-- Table structure for table `requester`
--

CREATE TABLE `requester` (
  `requester_id` int(100) NOT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `blood_group` varchar(100) DEFAULT NULL,
  `unit_blood` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `contact_person` varchar(120) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_no` varchar(200) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `member_fk` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requester`
--

INSERT INTO `requester` (`requester_id`, `patient_name`, `gender`, `blood_group`, `unit_blood`, `hospital_name`, `date`, `contact_person`, `address`, `email`, `contact_no`, `reason`, `member_fk`, `image`) VALUES
(6, 'markcpp', 'female', 'b+', '2', 'Lanka Hospital', '2021-07-14', 'Hamad', 'Kandy', 'codeprojects@gmail.com', 'sdsadsad', 'Colombo', 'mhdcpj', 'upload/7015951-3d-funny-animal_1521728863.jpg'),
(18, 'Muhammad Firly Rafiansyah', '', 'b+', '', '', '2021-07-13', '', 'sddadasa', 'firlyrafiansyah55@gmail.com', '55511444', '', 'codeprojects', 'upload/3_1521639658_1625925321.jpg'),
(19, 'Muhammad Firly Rafiansyah', '', 'o+', '', '', '2021-07-21', '', 'bgjgjhgjhk', 'uao26839@yuoia.com', '55511444', '', 'codeprojects', 'upload/11_1521639011_1626063432.jpg'),
(20, 'Muhammad Firly Rafiansyah', '', 'o', '', '', '2021-07-30', '', 'jalan mrutu kalianyar', 'firlyrafiansyah123@yahoo.com', '55511444', '', 'firlyrafiansyah', 'upload/IMG_20190412_171353_1626138161.jpg'),
(21, '', '', 'A', '', '', '0000-00-00', '', '', '', '', '', 'firlyrafiansyah', 'upload/17d7042708384805199faa568d9f262d_1626139073.jpg'),
(22, '', '', 'A', '', '', '0000-00-00', '', '', '', '', '', 'firlyrafiansyah', 'upload/223083_1626139094.jpg'),
(23, '', '', 'A', '', '', '0000-00-00', '', '', '', '', '', 'firlyrafiansyah', 'upload/17d7042708384805199faa568d9f262d_1626139241.jpg'),
(24, '', '', 'A', '', '', '0000-00-00', '', '', '', '', '', 'firlyrafiansyah', ''),
(25, '', '', 'A', '', '', '2021-04-07', '', '', '', '', '', 'firlyrafiansyah', 'upload/4617926_1626139407.jpg'),
(26, 'Muhammad Firly Rafiansyah', '', 'B', '', '', '2021-07-15', '', 'jalan mawar', 'firlyrafiansyah55@gmail.com', '15', '', 'firlyrafiansyah', 'upload/—Pngtree—hand x-ray icon for your_4848657 (1)_1626142132.png'),
(27, 'bimantoro bayu aji', '', 'AB', '', '', '2021-04-06', '', 'jalan teratai', 'uao26839@yuoia.com', '154', '', 'firlyrafiansyah', 'upload/223083_1626142253.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(100) NOT NULL,
  `state_code` varchar(100) DEFAULT NULL,
  `state_name` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_code`, `state_name`, `description`) VALUES
(36, '84603', 'Kandyd', 'New data been added'),
(37, 'CLM', 'Western', 'Province');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_contact`
--
ALTER TABLE `blood_contact`
  ADD PRIMARY KEY (`blood_contact_id`),
  ADD KEY `contact_fk` (`contact_fk`),
  ADD KEY `blood_fk` (`blood_fk`);

--
-- Indexes for table `blood_donor_group`
--
ALTER TABLE `blood_donor_group`
  ADD PRIMARY KEY (`blood_donor_group_id`),
  ADD KEY `donor_fk` (`donor_fk`),
  ADD KEY `blood_fk` (`blood_fk`);

--
-- Indexes for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD PRIMARY KEY (`blood_id`);

--
-- Indexes for table `blood_request_group`
--
ALTER TABLE `blood_request_group`
  ADD PRIMARY KEY (`blood_request_group_id`),
  ADD KEY `requester_fk` (`requester_fk`),
  ADD KEY `blood_fk` (`blood_fk`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `donor_fk` (`donor_fk`),
  ADD KEY `requester_fk` (`requester_fk`),
  ADD KEY `state_fk` (`state_fk`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `member_fk` (`member_fk`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`,`username_fk`),
  ADD KEY `member` (`username_fk`);

--
-- Indexes for table `email_subs`
--
ALTER TABLE `email_subs`
  ADD PRIMARY KEY (`subscribe_id`),
  ADD KEY `member_fk` (`member_fk`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`,`username`);

--
-- Indexes for table `requester`
--
ALTER TABLE `requester`
  ADD PRIMARY KEY (`requester_id`),
  ADD KEY `member_fk` (`member_fk`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_contact`
--
ALTER TABLE `blood_contact`
  MODIFY `blood_contact_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_donor_group`
--
ALTER TABLE `blood_donor_group`
  MODIFY `blood_donor_group_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_group`
--
ALTER TABLE `blood_group`
  MODIFY `blood_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blood_request_group`
--
ALTER TABLE `blood_request_group`
  MODIFY `blood_request_group_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donor_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `email_subs`
--
ALTER TABLE `email_subs`
  MODIFY `subscribe_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `requester`
--
ALTER TABLE `requester`
  MODIFY `requester_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood_contact`
--
ALTER TABLE `blood_contact`
  ADD CONSTRAINT `blood_contact_ibfk_1` FOREIGN KEY (`contact_fk`) REFERENCES `contact` (`contact_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_contact_ibfk_2` FOREIGN KEY (`blood_fk`) REFERENCES `blood_group` (`blood_id`) ON UPDATE CASCADE;

--
-- Constraints for table `blood_donor_group`
--
ALTER TABLE `blood_donor_group`
  ADD CONSTRAINT `blood_donor_group_ibfk_1` FOREIGN KEY (`donor_fk`) REFERENCES `donor` (`donor_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_donor_group_ibfk_2` FOREIGN KEY (`blood_fk`) REFERENCES `blood_group` (`blood_id`) ON UPDATE CASCADE;

--
-- Constraints for table `blood_request_group`
--
ALTER TABLE `blood_request_group`
  ADD CONSTRAINT `blood_request_group_ibfk_1` FOREIGN KEY (`requester_fk`) REFERENCES `requester` (`requester_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_request_group_ibfk_2` FOREIGN KEY (`blood_fk`) REFERENCES `blood_group` (`blood_id`) ON UPDATE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`donor_fk`) REFERENCES `donor` (`donor_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `city_ibfk_2` FOREIGN KEY (`requester_fk`) REFERENCES `requester` (`requester_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `city_ibfk_3` FOREIGN KEY (`state_fk`) REFERENCES `state` (`state_id`) ON UPDATE CASCADE;

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`member_fk`) REFERENCES `member` (`member_id`) ON UPDATE CASCADE;

--
-- Constraints for table `email_subs`
--
ALTER TABLE `email_subs`
  ADD CONSTRAINT `email_subs_ibfk_1` FOREIGN KEY (`member_fk`) REFERENCES `member` (`member_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
