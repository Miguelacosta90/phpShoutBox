-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jul 19, 2016 at 08:39 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoutit`
--
CREATE DATABASE IF NOT EXISTS `shoutit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shoutit`;

-- --------------------------------------------------------

--
-- Table structure for table `Shouts`
--
-- Creation: Jul 11, 2016 at 11:50 PM
--

DROP TABLE IF EXISTS `Shouts`;
CREATE TABLE `Shouts` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Shouts`
--

INSERT INTO `Shouts` (`id`, `user`, `message`, `time`) VALUES
(1, 'Miguel', 'Fill out the fields on the screen, and click Next.\r\n', '06:32:17'),
(2, 'Jiyoon<3', 'Project location is the directory on your system that holds the project files', '06:34:00'),
(3, 'greg', 'Package name is the fully qualified name for the project (following the same rules as those for naming packages in the Java programming language). Your package name must be unique across all packages installed on the Android system. You can Edit this value independently from the application name or the company domain.', '06:45:00'),
(4, 'keldon', 'For Minimum SDK, select API 8: Android 2.2 (Froyo).', '07:01:55'),
(5, 'darrell', 'testtesttesttesttesttesttest', '08:15:00'),
(6, 'miguel', 'hello', '01:32:45'),
(7, 'miguel', 'hello', '01:32:54'),
(8, 'miguel', 'FUCK my life!!!!', '01:33:14'),
(9, 'miguel', 'Top to bottom', '01:33:53'),
(10, 'Miguel', 'Acosta', '01:39:29'),
(11, 'Miguel', 'HI how are you', '01:59:28'),
(12, 'JI-yoon oh', 'Miguel is  the best ', '08:20:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Shouts`
--
ALTER TABLE `Shouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Shouts`
--
ALTER TABLE `Shouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
