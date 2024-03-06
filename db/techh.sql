-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 06, 2024 at 01:50 PM
-- Server version: 8.0.24
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `deleteduser`
--

CREATE TABLE `deleteduser` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `deltime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `sender` varchar(50) NOT NULL,
  `reciver` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `feedbackdata` varchar(500) NOT NULL,
  `attachment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int NOT NULL,
  `notiuser` varchar(50) NOT NULL,
  `notireciver` varchar(50) NOT NULL,
  `notitype` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notiuser`, `notireciver`, `notitype`, `time`) VALUES
(18, 'chanpreetkaur2005@gmail.com', 'Admin', 'Create Account', '2023-09-10 15:32:26'),
(19, 'chanpreetkaur2005@gmail.com', 'Admin', 'Create Account', '2023-09-11 17:48:44'),
(20, 'chanpreetkaur2005@gmail.com', 'Admin', 'Create Account', '2023-09-11 17:50:15'),
(21, 'chanpreetkaur2005@gmail.com', 'Admin', 'Create Account', '2023-09-11 17:53:22'),
(22, 'chanpreetkaur2005@gmail.com', 'Admin', 'Create Account', '2023-09-11 17:53:48'),
(23, 'chanpreetkaur2005@gmail.com', 'Admin', 'Create Account', '2023-09-11 17:53:55'),
(24, 'chanpreetkaur2005@gmail.com', 'Admin', 'Create Account', '2023-09-11 17:55:36'),
(25, 'Amanmanveen59@gmail.com', 'Admin', 'Create Account', '2023-09-12 07:02:46'),
(26, 'singhmanveer645@gmail.com', 'Admin', 'Create Account', '2023-09-12 15:59:02'),
(27, 'janaki2003002@gmail.com', 'Admin', 'Create Account', '2023-09-13 06:24:50'),
(28, 'sharmaanchal442@gmail.com', 'Admin', 'Create Account', '2023-09-13 06:26:02'),
(29, 'ankitabhatt933@gmail.com', 'Admin', 'Create Account', '2023-09-13 06:33:30'),
(30, 'arshpeetsingh1816@gmail.com', 'Admin', 'Create Account', '2023-09-14 10:51:21'),
(31, 'singhmanveer645@gmail.com', 'Admin', 'Create Account', '2023-09-14 16:19:06'),
(32, 'ramanjotsingh8574@gmail.com', 'Admin', 'Create Account', '2023-09-14 16:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `designation` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int NOT NULL,
  `year` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `enroll` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `designation`, `image`, `status`, `year`, `branch`, `enroll`) VALUES
(20, 'chanpreet', 'chanpreetkaur2005@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9811449935', 'SHARK_TANK', 'passport.jpg', 1, '', '', ''),
(21, 'chanpreet', 'chanpreet2005@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9811449935', 'SHARK_TANK', 'no', 1, '2nd', 'CSE-1', '03113202722'),
(22, 'Amanpreet Singh ', 'Amanmanveen59@gmail.com', 'ccda1683d8c97f8f2dff2ea7d649b42c', '9910421022', 'GAMOMANIA,PAPER_PRESENTATION,CODETHON,CREATIVE_CONCLAVE,SHARK_TANK,ROBOWARS', 'no', 1, '3', 'Cse', '116'),
(23, 'Manveer Singh', 'singhmanveer645@gmail.com', 'ced21975e2c103a5ebb89d042b378997', '08882259309', 'CODETHON', 'no', 1, '2025', 'Cse2', '09013202721'),
(24, 'Janki Pal', 'janaki2003002@gmail.com', '3b1f8265b7c18ebf45a59a7b0dd86d20', '8281243630', 'CODETHON', 'no', 1, '3 rd', 'IT 3', '01476803121'),
(25, 'Anchal Sharma ', 'sharmaanchal442@gmail.com', 'a8c4b6814e11d255dc9f26ebdb452764', '9718432947', 'CODETHON', 'no', 1, '3rd year', 'IT', '00376803121'),
(26, 'Ankita Bhatt', 'ankitabhatt933@gmail.com', '7476dde3cd6174b464fc25bf67d40716', '99109121586', 'CODETHON', 'no', 1, '3', 'It3', '05276803121'),
(27, 'Arshpreet Singh Ahluwalia', 'arshpeetsingh1816@gmail.com', '1e06b0ea4d3f65970a98cf9a13d11df6', '8700818373', 'CODETHON,ROBOWARS', 'no', 1, '1', 'IT', '131230008746'),
(28, 'Manveer Singh', 'singhmanveer645@gmail.com', 'ced21975e2c103a5ebb89d042b378997', '08882259309', 'CODETHON', 'no', 1, '2025', 'Cse2', '09013202721'),
(29, 'Ramanjot Singh', 'ramanjotsingh8574@gmail.com', '59e8355bff8ff53eddd3b55080ea167c', '9318466348', 'CODETHON', '20230328_154135.jpg', 1, '3rd', 'Cse', '07613202721');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deleteduser`
--
ALTER TABLE `deleteduser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deleteduser`
--
ALTER TABLE `deleteduser`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
