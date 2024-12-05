-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2024 at 06:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `postbook2`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL,
  `commentOfPostId` int(11) NOT NULL,
  `commentedUserId` varchar(255) NOT NULL,
  `commentText` varchar(500) NOT NULL,
  `commentTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `commentOfPostId`, `commentedUserId`, `commentText`, `commentTime`) VALUES
(1, 1, 'alex1@gmail.com', 'second that!', '2024-12-03 12:15:13'),
(2, 1, 'jodo1@gmail.com', 'Glad to see you.', '2024-12-03 12:19:16'),
(3, 2, 'jodo1@gmail.com', 'Nothing!', '2024-12-05 00:18:31'),
(4, 2, 'alex1@gmail.com', 'Well, something is better than nothing', '2024-12-05 00:28:56'),
(5, 3, 'jodo1@gmail.com', 'enyoying life, I reckon', '2024-12-05 00:31:45'),
(6, 3, 'alex1@gmail.com', 'just tryna make sense of it, Sir!', '2024-12-06 19:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postId` int(11) NOT NULL,
  `postedUserId` varchar(255) NOT NULL,
  `postedTime` datetime NOT NULL,
  `postText` varchar(500) NOT NULL,
  `postImageUrl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postId`, `postedUserId`, `postedTime`, `postText`, `postImageUrl`) VALUES
(1, 'jodo1@gmail.com', '2024-12-02 23:42:52', 'You can\'t have a masterpiece without madness.', 'https://i.ibb.co.com/xgYx97T/alejandro.png'),
(2, 'alex1@gmail.com', '2024-12-02 06:48:12', 'What did you expect?', 'https://i.ibb.co.com/KLM0xmM/Screenshot-2024-12-01-024735.png'),
(3, 'alex1@gmail.com', '2024-12-02 07:04:42', 'AURORA', 'https://i.ibb.co.com/nzjJZxb/aurora.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `userImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userPassword`, `userImage`) VALUES
('alex1@gmail.com', 'Alex Turner', '123456', 'https://i.ibb.co.com/KLM0xmM/Screenshot-2024-12-01-024735.png'),
('jodo1@gmail.com', 'Alejandro Jodorowsky', '456789', 'https://i.ibb.co.com/xgYx97T/alejandro.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
