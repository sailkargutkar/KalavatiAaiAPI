-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 25, 2021 at 01:33 PM
-- Server version: 10.4.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u393787823_kalavathiaaidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_table`
--

CREATE TABLE `attendance_table` (
  `attendance_id` int(11) NOT NULL,
  `balaposana_id` varchar(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `branch_id` varchar(255) NOT NULL,
  `attendance` varchar(255) NOT NULL,
  `flag` varchar(32) NOT NULL DEFAULT 'Default' COMMENT 'This action must be Default or Outward',
  `hash_key` varchar(255) NOT NULL,
  `student_id` varchar(15) NOT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` varchar(15) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance_table`
--

INSERT INTO `attendance_table` (`attendance_id`, `balaposana_id`, `name`, `branch_id`, `attendance`, `flag`, `hash_key`, `student_id`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`, `created_by`, `created_date`) VALUES
(1, '2', 'Sridhar', '3', 'A', '', '', '', '0', '2021-01-12 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-19 17:12:34'),
(2, '1', 'Milind', '1', 'P', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(15, '1', 'Milind', '1', 'P', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(16, '25', 'Jain', '2', 'P', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(17, '26', 'ram', '1', 'P', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(18, '27', 'jay', '1', 'P', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(19, '28', 'mohan', '1', 'P', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(20, '29', 'sharu', '1', 'P', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(21, '1', 'Milind', '1', 'P', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(22, '99', 'Milind', '1', 'A', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(23, '99', 'Milind', '1', 'A', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(24, '212', 'manoj', '1', 'A', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(25, '99', 'Milind', '1', 'A', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(26, '12', 'john', '1', 'P', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(27, '121', 'jessy', '1', 'A', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(28, '1234', 'sonal', '1', 'P', '', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(29, '33', 'TEST', '3', 'P', 'Default', '', '22', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '2', '2021-01-31 09:55:11'),
(30, '33', 'TEST', '3', 'P', 'Default', '', '22', '', NULL, '', NULL, '2', '2021-01-31 09:55:56'),
(31, '33', 'TEST', '3', 'P', 'Default', '', '22', '', NULL, '', NULL, '2', '2021-01-31 09:57:04'),
(32, '2', 'sail', '56', 'P', '', '', '41', '', NULL, '', NULL, '55', '2021-01-31 10:06:06'),
(33, '2', 'sail', '56', 'P', 'Default', '', '41', '', NULL, '', NULL, '55', '2021-01-31 10:09:33'),
(34, '2', 'sail', '56', 'P', 'Default', '', '41', '', NULL, '', NULL, '55', '2021-01-31 10:16:32'),
(35, '12', 'Test', '22', 'P', 'Default', '', '34', '', NULL, '', NULL, '76', '2021-01-31 13:40:26'),
(36, '12', 'Test', '22', 'P', 'Default', '', '34', '', NULL, '', NULL, '76', '2021-02-07 15:47:24'),
(37, '12', 'Test', '22', 'P', 'Default', '', '34', '', NULL, '', NULL, '76', '2021-02-07 15:47:25'),
(38, '12', 'Test', '22', 'P', 'Default', '', '34', '', NULL, '', NULL, '76', '2021-03-01 16:41:09'),
(39, '12', 'Test', '22', 'P', 'Default', '', '34', '', NULL, '', NULL, '76', '2021-04-09 03:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `attendence_table_failed`
--

CREATE TABLE `attendence_table_failed` (
  `id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `att_date` varchar(255) NOT NULL,
  `attendence` varchar(255) NOT NULL,
  `remark` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendence_table_failed`
--

INSERT INTO `attendence_table_failed` (`id`, `bid`, `name`, `branch`, `att_date`, `attendence`, `remark`) VALUES
(52, 121, 'jessy', '111', '2020-10-10', 'A', 'Failed: Invalid balopasana id or name or branch.'),
(53, 1234, 'sonal', '101', '2020-10-07', 'P', 'Failed: Invalid balopasana id or name or branch.');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `landline_number` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` varchar(15) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `address`, `city`, `state`, `country`, `contact_number`, `landline_number`, `description`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`, `created_by`, `created_date`) VALUES
(1, 'Harimandar', 'Belgaum', 'Belgaum', 'Karnataka', 'India', '9876527788', '0831-2486332', '', '', '2021-01-27 22:56:41', '', '2021-01-27 22:56:41', '', '2021-01-27 17:26:41'),
(2, 'Hari', 'Pune', 'Dombivli', 'Maharashtra', 'India', '8105038838', '0831-3332244', '', '', '2021-01-27 22:56:41', '', '2021-01-27 22:56:41', '', '2021-01-27 17:26:41'),
(3, 'Hari om', 'Kerala', 'Kollam', 'Kerala', 'India', '9837726663', '0983-333223', '', '', '2021-01-27 22:56:41', '', '2021-01-27 22:56:41', '', '2021-01-27 17:26:41'),
(4, 'Hari2', 'Pune', 'Bombay', 'Maharashtra', 'India', '8908826617', '0831-3664422', 'dddd', '', '2021-01-27 22:56:41', '', '2021-01-27 22:56:41', '', '2021-01-27 17:26:41'),
(7, '', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '2021-01-31 10:32:58'),
(8, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '', NULL, '', NULL, '56', '2021-01-31 10:40:18'),
(9, 'Andheri', 'Andheri', 'Mumbai', 'Maharashtra', 'India', '65987', '65987', 'Test', '', NULL, '', NULL, '56', '2021-01-31 13:45:38'),
(10, 'Andheri', 'Andheri', 'Mumbai', 'Maharashtra', 'India', '65987', '65987', 'Test', '', NULL, '', NULL, '56', '2021-01-31 14:48:07'),
(11, 'Andheri', 'Andheri', 'Mumbai', 'Maharashtra', 'India', '65987', '65987', 'Test', '', NULL, '', NULL, '56', '2021-01-31 14:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `head_count`
--

CREATE TABLE `head_count` (
  `head_count_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp() COMMENT 'Current date',
  `created_by` varchar(15) DEFAULT NULL COMMENT 'user id who is inserted the data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `head_count`
--

INSERT INTO `head_count` (`head_count_id`, `branch_id`, `count`, `created_date`, `created_by`) VALUES
(1, 56, 12, '2021-01-31 11:42:30', '23');

-- --------------------------------------------------------

--
-- Table structure for table `inward_table`
--

CREATE TABLE `inward_table` (
  `inward_attendance_id` int(11) NOT NULL,
  `balaposana_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `branch_id` varchar(255) NOT NULL,
  `attendance` varchar(255) NOT NULL,
  `flag` varchar(32) NOT NULL DEFAULT 'Inward',
  `student_id` varchar(15) NOT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` varchar(15) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inward_table`
--

INSERT INTO `inward_table` (`inward_attendance_id`, `balaposana_id`, `name`, `branch_id`, `attendance`, `flag`, `student_id`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`, `created_by`, `created_date`) VALUES
(1, 2, 'Sridhar', '3', 'A', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(2, 1, 'Milind', '1', 'P', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(15, 1, 'Milind', '1', 'P', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(16, 25, 'Jain', '2', 'P', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(17, 26, 'ram', '1', 'P', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(18, 27, 'jay', '1', 'P', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(19, 28, 'mohan', '1', 'P', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(20, 29, 'sharu', '1', 'P', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(21, 1, 'Milind', '1', 'P', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(22, 99, 'Milind', '1', 'A', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(23, 99, 'Milind', '1', 'A', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(24, 212, 'manoj', '1', 'A', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(25, 99, 'Milind', '1', 'A', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(26, 12, 'john', '1', 'P', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(27, 121, 'jessy', '1', 'A', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(28, 1234, 'sonal', '1', 'P', '', '', '0', '2021-01-27 22:42:34', '0', '2021-01-27 22:42:34', '0', '2021-01-27 17:12:34'),
(29, 2, 'sail', '56', 'P', 'Inward', '41', '', NULL, '', NULL, '55', '2021-01-31 10:19:39'),
(30, 12, 'Test', '22', 'P', 'Inward', '34', '', NULL, '', NULL, '76', '2021-01-31 13:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(2) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Sub Admin'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `student_id` varchar(15) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `balopasana_id` varchar(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `branch_id` varchar(2) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` varchar(15) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `hash_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `student_name`, `balopasana_id`, `gender`, `DOB`, `branch_id`, `address`, `city`, `state`, `country`, `phone_number`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`, `created_by`, `created_date`, `hash_key`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(2, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(3, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(4, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(5, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(6, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(7, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(8, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(9, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(10, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(11, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(12, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(13, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(14, '', '', '', '', '', '', '', '', '', '', '', '0', '0000-00-00 00:00:00', '', '2021-07-11 01:38:44', '', '0000-00-00 00:00:00', ''),
(15, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '2021-07-11 01:38:44', '', '2021-01-31 14:00:07', ''),
(16, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '2021-07-11 01:38:44', '', '2021-01-31 11:33:28', ''),
(17, 'STU56-5464', 'Raj', '95', 'Male', '29/01/1998', '56', 'Test', 'Test', 'Test', 'Test', 'Test', '', NULL, '', NULL, '77', '2021-01-31 14:58:54', '');

-- --------------------------------------------------------

--
-- Table structure for table `students_failed`
--

CREATE TABLE `students_failed` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bid` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phoneNum` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_failed`
--

INSERT INTO `students_failed` (`id`, `name`, `bid`, `gender`, `DOB`, `branch`, `address`, `city`, `state`, `country`, `phoneNum`, `remark`) VALUES
(41, '1asdasd', 32783, 'male', '2020-12-09', '3', 'zssf', 'Kollam', 'Kerala', 'India', '9090993333', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `branch_id` varchar(2) NOT NULL,
  `role_id` varchar(2) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `created_by` varchar(15) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` varchar(15) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `username`, `password`, `branch_id`, `role_id`, `mobile`, `email`, `address`, `created_date`, `created_by`, `deleted_date`, `deleted_by`, `updated_date`, `updated_by`) VALUES
(1, '', '', '', '', '', '', '', '', '2021-01-31 11:18:26', '', '2021-07-11 01:39:05', '', NULL, ''),
(2, '', '', '', '', '', '', '', '', '2021-01-31 13:52:33', '', '2021-07-11 01:39:05', '', NULL, ''),
(3, 'USER69-9786', 'Test', 'Test', '69', '1', '968598879', 'Email@gmail.com', NULL, '2021-03-02 02:52:47', '69', NULL, '', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_table`
--
ALTER TABLE `attendance_table`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `attendence_table_failed`
--
ALTER TABLE `attendence_table_failed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `head_count`
--
ALTER TABLE `head_count`
  ADD PRIMARY KEY (`head_count_id`);

--
-- Indexes for table `inward_table`
--
ALTER TABLE `inward_table`
  ADD PRIMARY KEY (`inward_attendance_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_failed`
--
ALTER TABLE `students_failed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_table`
--
ALTER TABLE `attendance_table`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `attendence_table_failed`
--
ALTER TABLE `attendence_table_failed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `head_count`
--
ALTER TABLE `head_count`
  MODIFY `head_count_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inward_table`
--
ALTER TABLE `inward_table`
  MODIFY `inward_attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `students_failed`
--
ALTER TABLE `students_failed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
