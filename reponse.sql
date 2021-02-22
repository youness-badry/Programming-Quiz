-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2021 at 05:20 PM
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
-- Table structure for table `reponse`
--

CREATE TABLE `reponse` (
  `id` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL,
  `reponse` text NOT NULL,
  `reponseJuste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reponse`
--

INSERT INTO `reponse` (`id`, `idQuestion`, `reponse`, `reponseJuste`) VALUES
(1, 1, 'Tester si un nombre est divisible par 9', 0),
(2, 1, 'Tester si un nombre est premier', 0),
(3, 1, 'Tester si un entier est pair ou impair', 1),
(4, 2, 'Comparer deux entiers a et b', 1),
(5, 2, 'Addition de deux entiers a et b', 0),
(6, 2, 'Tester si un nombre est un multiple de 2', 0),
(7, 3, 'Tester si un nombre est impair', 0),
(8, 3, 'Tester si un nombre est un entier', 1),
(9, 3, 'Tester si un nombre est un divseur de 32', 0),
(10, 4, 'C\'est un programme C qui affiche une chaine de caractères inversée', 0),
(11, 4, 'C\'est un programme C qui calcule la valeur absolue de deux nombres', 0),
(12, 4, 'C\'est un programme C qui affiche le maximum de deux nombres', 1),
(13, 5, 'Afficher le minimum de deux nombres', 0),
(14, 5, 'Calculer la multiplication de deux nombres', 0),
(15, 5, 'Permuter deux nombres', 1),
(16, 6, 'C\'est un programme C qui calcule la multiplication de trois nombres', 0),
(17, 6, 'C\'est un programme C qui calcule la division de deux nombres', 0),
(18, 6, 'C\'est un programme C qui affiche le signe du produit de deux entiers sans faire la multiplication', 1),
(19, 7, 'Trier par ordre décroissant trois entiers en échangeant les valeurs', 1),
(20, 7, 'Calculer le max de trois nombres', 0),
(21, 7, 'Trier par ordre croissant trois entiers', 0),
(22, 8, 'Caluler la somme de trois nombres', 0),
(23, 8, 'Afficher le signe de la somme de deux entiers sans faire l\'addition', 1),
(24, 8, 'Trier par ordre croissant deux entiers', 0),
(25, 9, 'Inverser le signe d\'un nombre entier', 0),
(26, 9, 'Afficher la valeur absolue d\'un entier', 1),
(27, 9, 'Convertir un nombre entier en un réel négatif', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
