-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 27, 2021 at 12:39 PM
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
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `mail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `first_name`, `last_name`, `mail`, `message`, `created_at`, `status`) VALUES
(241, 'adsfasdfasfasfsdf', 'asdfsdfsdf', 'habeshyan1999@gmail.com', 'asdfsdfsfadsfasdfasdfasdfasdfasdfasdfasdfasdfasfd', '2021-07-27 06:14:15', 1),
(236, 'Hovhannes', 'Habeshyan', 'habeshyan1999@gmail.com', 'asdasdfsdfsdfasdfasfasdfasdfasdfasdfasdfasdf', '2021-07-27 06:13:19', 0),
(237, 'Hovhannesasfa', 'Habeshyanasdf', 'qqweqeqweqweqweqwe@sadaa.dsad', 'asfsdfasdfasdfasfasdfasdfasfasfasfasfasdfasdfasfasdffasdfasdfasdfas', '2021-07-27 06:13:35', 0),
(238, 'Hovhannesasdfasfd', 'Habeshyanasdfasdf', 'asaadad@asd.ru', 'adsfasdfasdfasdfasfsdf', '2021-07-27 06:13:43', 0),
(239, 'Hovhannesasdfsasdf', 'Habeshyanasdfsdf', 'habeshyan1999@gmail.com', 'asdfsdfasfasdfasfasfasfasfasfasfsadfasdfasdfasdfasfsdfsdfasdfasd', '2021-07-27 06:13:52', 0),
(232, 'Hovhannes', 'Habeshyan', 'qqweqeqweqweqweqwe@sadaa.dsad', 'asdasasdfsdfasdfsdf', '2021-07-23 07:54:02', 1),
(245, 'Hovhannes', 'Habeshyan', 'habeshyan1999@gmail.com', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:58:12', 0),
(246, 'Hovhannes', 'Habeshyan', 'asaadad@asd.ru', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:58:17', 0),
(227, 'Hovhannes', 'Habeshyan', 'asaadad@asd.ru', 'dnakjsdbajsd.ksdnlf;jsdflkjasdkfnas.kdf', '2021-07-22 06:12:08', 1),
(223, 'aasd', 'asdasd', 'asaadad@asd.ru', 'asdasd', '2021-07-20 13:47:44', 1),
(228, 'Hovhannes', 'Habeshyan', 'asaadad@asd.ru', 'aasasdadasasdasdasda', '2021-07-22 06:45:59', 1),
(235, 'Hovhannes', 'Habeshyan', 'habeshyan1999@gmail.com', 'asdASDSFSDFSDFASDFASDF', '2021-07-24 06:58:30', 1),
(242, 'Hovhannes', 'Habeshyan', 'asaadad@asd.ru', 'asdasdfsdfsdfsdfasdf', '2021-07-27 06:57:36', 0),
(243, 'Hovhannes', 'Habeshyan', 'habeshyan1999@gmail.com', 'asdfsdfasdfasdfasdfsd', '2021-07-27 06:57:48', 0),
(244, 'dasdfa', 'asdfasdfsdfsdf', 'habeshyan1999@gmail.com', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:58:07', 0),
(247, 'asdasfd', 'asdfsdfsdfsdf', 'qqweqeqweqweqweqwe@sadaa.dsad', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:58:22', 0),
(248, 'Hovhannes', 'Habeshyan', 'habeshyan1999@gmail.com', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:58:27', 1),
(249, 'Hovhannes', 'Habeshyan', 'asaadad@asd.ru', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:58:31', 0),
(250, 'Hovhannes', 'Habeshyan', 'asaadad@asd.ru', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:58:34', 0),
(251, 'Hovhannes', 'Habeshyan', 'asaadad@asd.ru', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:58:38', 0),
(252, 'Hovhannes', 'Habeshyan', 'asaadad@asd.ru', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:58:43', 0),
(253, 'Hovhannes', 'Habeshyan', 'asaadad@asd.ru', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:58:46', 1),
(254, 'Hovhannes', 'Habeshyan', 'asaadad@asd.ru', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:58:50', 0),
(255, 'Hovhannes', 'Habeshyan', 'habeshyan1999@gmail.com', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdw', '2021-07-27 06:58:53', 0),
(256, 'Hovhannes', 'Habeshyan', 'habeshyan1999@gmail.com', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:58:58', 1),
(257, 'Hovhannes', 'Habeshyan', 'asaadad@asd.ru', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:59:02', 1),
(258, 'Hovhannes', 'Habeshyan', 'asaadad@asd.ru', ' asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasdv  asdfasdfasdfasdfasdfasdfsdfasdfasd vasdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd asdfasdfasdfasdfasdfasdfsdfasdfasd', '2021-07-27 06:59:06', 1),
(259, 'asdsad', 'asdas', 'asdasdas@asd.asd', 'asdasdasdasdasdasdad', '2021-07-27 09:00:51', 0),
(260, 'Hovhannes', 'Habeshyan', 'habeshyan1999@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur cumque eveniet ex iure laboriosam non odit quibusdam unde veniam voluptate! Aliquid atque dignissimos dolor error ipsam pariatur quisquam ratione sint ut. A animi blanditiis consequuntur debitis, eos id, illo iure nihil porro repudiandae saepe sed voluptates voluptatum? Aliquid amet blanditiis consequatur dolorem ex impedit in laboriosam laudantium magni molestias necessitatibus nihil odio perferendis quia quo reprehenderit rerum sed sunt veritatis, vitae. Atque dignissimos dolor ducimus enim fuga harum hic illo, magni mollitia praesentium quaerat, quos reiciendis voluptatum! Dicta, perspiciatis, unde. Consectetur dicta id libero molestias perferendis quas quisquam sit sunt.', '2021-07-27 11:39:23', 1);

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
