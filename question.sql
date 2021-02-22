-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2021 at 03:49 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basedonneessite`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `lienImageCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `lienImageCode`) VALUES
(1, 'Que fait le programme suivant ?', 'img-Test1/code-Question1-Test1.png'),
(2, 'Quel est la sortie de ce code C ?', 'img-Test1/code-Question2-Test1.png'),
(3, 'Que fait le programme suivant ?', 'img-Test1/code-Question3-Test1.png'),
(4, 'Soit le code suivant :', 'img-Test1/code-Question4-Test1.png'),
(5, 'Quel est la sortie de ce programme ?', 'img-Test1/code-Question5-Test1.png'),
(6, 'Soit le programme suivant :', 'img-Test1/code-Question6-Test1.png'),
(7, 'Que fait le programme suivant ?', 'img-Test1/code-Question7-Test1.png'),
(8, 'Quel est la sortie de ce programme ?', 'img-Test1/code-Question8-Test1.png'),
(9, 'Que fait le programme suivant ?', 'img-Test1/code-Question9-Test1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
