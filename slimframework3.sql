-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 21, 2018 at 01:23 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slimframework3`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_users`
--

DROP TABLE IF EXISTS `api_users`;
CREATE TABLE IF NOT EXISTS `api_users` (
  `email` varchar(255) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `hit` int(11) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api_users`
--

INSERT INTO `api_users` (`email`, `api_key`, `hit`) VALUES
('dian@petanikode.com', '123', 41);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `description` text,
  `cover` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `description`, `cover`) VALUES
(1, 'Developer', 'Mayan Patel', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 'default_cover.png'),
(2, 'What is Lorem Ipsum?\r\n', 'Developer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'default_cover.png'),
(3, 'Why do we use it?', 'Designer', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', ''),
(4, 'Where can I get some?', 'Engineer', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. ', ''),
(5, 'Mauris eu scelerisque neque', 'Authors', 'Mauris eu scelerisque neque. Aenean fermentum aliquet hendrerit. Mauris augue odio, suscipit nec convallis nec, lobortis ornare est. Fusce finibus feugiat purus pharetra ornare. Proin in dapibus mauris, in tincidunt tellus. Vivamus molestie, massa vel tempus eleifend, leo felis sodales urna, id iaculis risus mauris eget risus. Quisque iaculis sapien in mi vulputate mollis. Vestibulum in nunc quis metus lobortis finibus nec vitae purus. Donec sodales ante nec eros ultrices placerat. Nunc tempus est nec ante condimentum rhoncus. Phasellus in lorem quis nibh condimentum lacinia. Nam sit amet vehicula erat. In hac habitasse platea dictumst. Phasellus ac nisi viverra turpis efficitur aliquam. Donec fringilla aliquam scelerisque.\r\n\r\n', ''),
(6, 'Ut laoreet quis dui et lobortis', 'Employees', 'Ut laoreet quis dui et lobortis. Aliquam erat volutpat. Sed blandit ligula metus, ac tempus sapien aliquam et. Nunc malesuada ipsum in dolor tristique tincidunt. Morbi euismod dictum mattis. Praesent sed lobortis neque. Ut ultrices elit ut est faucibus ultrices. Donec et magna malesuada justo faucibus lacinia. Suspendisse potenti. Donec in nisl erat. Duis ullamcorper lacus at elit lobortis viverra. Sed in scelerisque orci, id vestibulum nulla.\r\n\r\n', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
