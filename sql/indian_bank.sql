-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2021 at 06:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indian_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Nishitha', 'Keerti', 600, '2021-09-21 20:48:25'),
(2, 'Kabir', 'Nishitha', 900, '2021-09-21 20:48:40'),
(3, 'Pooja', 'Yoha', 8900, '2021-09-21 21:01:05'),
(4, 'Yoha', 'priya', 3889, '2021-09-21 21:07:46'),
(5, 'Kabir', 'Karthik', 389, '2021-09-21 21:16:30'),
(6, 'Sita', 'kali', 839, '2021-09-21 21:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(11, 'Nishitha', 'nishi14@gmail.com', 8900),
(12, 'Shashank', 'shashank32@hotmail.com', 6000),
(13, 'Pooja', 'pooja@hotmail.com', 1100),
(14, 'Sita', 'sita45@outlook.com', 6161),
(15, 'Kabir', 'kabir23@gmail.com', 7611),
(16, 'Payal', 'payal76@gmail.com', 15000),
(17, 'Lisa', 'lisa76@hotmail.com', 7800),
(18, 'Keerti', 'keerti87@outlook.com', 8970),
(19, 'Yoha', 'yoha34@gmail.com', 17011),
(20, 'Pranav', 'pranav100@gmail.com', 34589),
(21, 'priya', 'priya34@gmail.com', 12889),
(22, 'parul', 'parul78@gmail.com', 9000),
(23, 'Karthik', 'Karthik54@outlook.com', 9417),
(24, 'kali', 'kali87@gmail.com', 1839);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
