-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 15, 2021 at 12:27 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `last_name`, `email`, `message`, `date`, `status`) VALUES
(33, 'Hovhannes', 'Habeshyan', 'habeshyan1999@gmail.com', 'bla asndkhaskdsf aisodnfamsd fausdnfanmsd faunsd fasdfia sdmf asidnf ajsdf asdfb asdn fas dfasdfaisdfnasldf aldfniasdf ', '2021-07-10 09:38:34am', 1),
(34, 'asdasd', '', '', '', '', 0),
(35, 'asdsd', '', '', '', '', 0),
(36, 'habeshyan', '', '', '', '', 0),
(37, 'habeshyan', '', '', '', '', 0),
(38, 'asdasdasd', 'asdasd', 'habeshyan@list.ru', 'asdasdasdasdasda', '2021-07-15 03:16:07pm', 0),
(39, 'asdasdsda', 'asdasdasd', 'habeshyan1999@gmail.com', 'asdasdfsdfasdfsdfsdfsdfsdf', '2021-07-15 03:18:07pm', 0),
(44, 'asdasd', '', '', '', '', 0),
(45, 'Hovhannes', '', '', '', '', 0),
(46, 'cs23423423', '', '', '', '', 0),
(47, 'qweqw2342342', '', '', '', '', 0),
(48, '234', '', '', '', '', 0),
(61, 'AAAAAAA', '', '', '', '', 0),
(60, 'AAAAAAA', '', '', '', '', 0),
(57, 'AAAAAAA', '', '', '', '', 0),
(58, 'AAAAAAA', '', '', '', '', 0),
(59, 'AAAAAAA', '', '', '', '', 0),
(55, 'AAAAA', '', '', '', '', 0),
(56, 'AAAAAAA', '', '', '', '', 0),
(62, 'Hovhannes', '', '', '', '', 0),
(63, 'Hovhannes', '', '', '', '', 0),
(64, 'Hovhannes', '', '', '', '', 0),
(65, 'Hovhannes', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `author`, `is_published`, `created_at`) VALUES
(1, 'arajin', 'ajsdh,s.djasldjgjaskldjasdjhasd', 'Hovo', 1, '2021-07-14 12:30:54'),
(2, 'erkrord', 'asdasdasdsdfasdfasdfsdf', '', 1, '2021-07-14 12:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
