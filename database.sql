-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 27, 2017 at 09:32 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homework`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `score` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `created`, `updated`, `score`) VALUES
(1, 'Suriya', 'suriya123@123.com', '03c7c0ace395d80182db07ae2c30f034', '2017-09-22 14:24:33', '2017-10-20 15:34:48', 0),
(2, 'koichi', 'koichi400@gmail.com', '202cb962ac59075b964b07152d234b70', '2017-09-22 14:26:44', '2017-09-22 14:26:44', 0),
(3, 'admin', 'koichi400@gmail.com', '12345678', '2017-09-22 14:29:12', '2017-09-22 14:29:12', 0),
(4, 'kritsana', 'kritsana.sri@gmail.com', '22ac3c5a5bf0b520d281c122d1490650', '2017-09-22 14:36:55', '2017-09-22 14:36:55', 0),
(5, 'Nattawut', 'nat', '81dc9bdb52d04dc20036dbd8313ed055', '2017-09-22 15:07:08', '2017-09-22 15:07:08', 0),
(6, 'jr', 'a', '47bce5c74f589f4867dbd57e9ca9f808', '2017-09-22 15:07:49', '2017-09-22 15:07:49', 0),
(7, 'a', 'a@a.com', '0cc175b9c0f1b6a831c399e269772661', '2017-10-06 13:49:52', '2017-10-06 13:49:52', 8),
(8, 'm', 'm', 'm', '2017-10-15 20:24:39', '2017-10-15 20:24:39', 0),
(9, 'd', 'd', '8277e0910d750195b448797616e091ad', '2017-10-15 21:10:31', '2017-10-15 21:10:31', 0),
(10, 'A', 'A', '7fc56270e7a70fa81a5935b72eacbe29', '2017-10-16 06:01:28', '2017-10-16 06:01:28', 0),
(11, 'WW', 'WW', '0a9b52fb6605edc74fd7d5359f34477e', '2017-10-16 06:01:48', '2017-10-16 06:01:48', 0),
(12, 'hamburger', 'h', '2510c39011c5be704182423e3a695e91', '2017-10-20 16:03:11', '2017-10-20 16:03:11', 5),
(13, 'b', 'b', '92eb5ffee6ae2fec3ad71c777531578f', '2017-10-23 20:30:28', '2017-10-23 20:30:28', 6),
(14, 'r', 'r', '4b43b0aee35624cd95b910189b3dc231', '2017-10-27 13:45:51', '2017-10-27 13:45:51', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
