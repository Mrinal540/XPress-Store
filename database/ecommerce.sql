-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2022 at 03:54 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Lenovo Legion 5', 70000),
(2, 'boAt NIRVANA 751', 3499),
(3, 'FireStick 3rd Gen', 4000),
(4, 'OnePlus Watch', 15000),
(5, 'Aashirvaad Chakki Atta,10kg', 360),
(6, 'Daawat Basmati Rice,5kg', 330),
(7, 'Figaro Olive-oil,200ml', 280),
(8, 'Mother Dairy Ghee,1L', 470),
(9, 'Strawberry Crush', 180),
(10, 'Mix-veg Pickle', 300),
(11, 'Carrot Pickle', 400),
(12, 'Mango Pickle', 300);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'mrinal', '123@gmail.com', '7a3a88f78fa3bfc8f4f71cebf2048d59', '900000000', 'delhi', 'delhi'),
(2, 'ekagra', '456@gmail.com', '7a3a88f78fa3bfc8f4f71cebf2048d59', '810000000', 'indore', '56dukaan'),
(3, 'Mrinal Anand', 'anmrinal@gmail.com', 'eafd574af1c7b9261c5deb8e3659fbcd', '8789365029', 'Muzaffarpur', 'H.N Colony, MBBL College Road'),
(4, 'Ekagra Tyagi', 'ekagra.tyagi.11@gmail.com', '0497a36d89e18cd6c2bf6f5dd5865ddf', '7500012547', 'Dehradun', 'Tapovan'),
(5, 'Rahul Jacob', 'rahuljacob12@gmail.com', '3f302b19c05ad4343ce3637444995cb9', '8279896187', 'Dehradun', 'Trafalgar'),
(6, 'Rahul', 'rahuljacob12@outlook.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '8279896187', 'Dehradun', 'Doon Trafalgar'),
(7, 'nikhil', 'anandnikhil0000@gmail.com', 'd1151d8d3d4f9f986a28d779799e5b61', '8210967914', 'dehradun', 'rajpur'),
(8, 'niikhil', '1000013787@dit.edu.in', 'af3fbd7d6ad84d371cbe66e81bd17c50', '8210957914', 'dehradun', 'makkawala');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

DROP TABLE IF EXISTS `users_items`;
CREATE TABLE IF NOT EXISTS `users_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(11, 2, 2, 'Added to cart'),
(12, 2, 3, 'Added to cart'),
(17, 4, 5, 'Confirmed'),
(18, 4, 2, 'Confirmed'),
(20, 5, 3, 'Confirmed'),
(21, 5, 4, 'Added to cart'),
(22, 6, 5, 'Confirmed'),
(23, 7, 1, 'Added to cart'),
(24, 7, 2, 'Added to cart'),
(25, 7, 11, 'Added to cart'),
(26, 8, 1, 'Added to cart'),
(28, 8, 12, 'Confirmed');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_items`
--
ALTER TABLE `users_items`
  ADD CONSTRAINT `users_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
