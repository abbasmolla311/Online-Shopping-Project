-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2024 at 07:30 PM
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
-- Database: `ospjsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `email` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mobileNumber` bigint(20) DEFAULT NULL,
  `orderDate` varchar(100) DEFAULT NULL,
  `deliveryDate` varchar(100) DEFAULT NULL,
  `paymentMethod` varchar(100) DEFAULT NULL,
  `transactionId` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`email`, `product_id`, `quantity`, `price`, `total`, `address`, `city`, `state`, `country`, `mobileNumber`, `orderDate`, `deliveryDate`, `paymentMethod`, `transactionId`, `status`) VALUES
('admin123@gmail.com', 1, 14, 5000, 40000, 'vill-Hudarait,p.o-Bagu,p.s-Rajarhat', 'Kolkata', 'West Bengal', 'India', 1234567890, '2024-08-09 21:12:09', '2024-08-16 21:12:09.000000', 'Cash on delevery(COD)', 'TID-1234596', 'Cancel'),
('admin123@gmail.com', 2, 4, 400, 800, 'vill-Hudarait,p.o-Bagu,p.s-Rajarhat', 'Kolkata', 'West Bengal', 'India', 1234567890, '2024-08-09 21:12:09', '2024-08-16 21:12:09.000000', 'Cash on delevery(COD)', 'TID-1234596', 'Delivered'),
('admin123@gmail.com', 3, 2, 600, 1200, 'vill-Hudarait,p.o-Bagu,p.s-Rajarhat', 'Kolkata', 'West Bengal', 'India', 1234567890, '2024-08-09 21:12:09', '2024-08-16 21:12:09.000000', 'Cash on delevery(COD)', 'TID-1234596', 'Delivered'),
('admin123@gmail.com', 4, 1, 4000, 4000, 'vill-Hudarait,p.o-Bagu,p.s-Rajarhat', 'Kolkata', 'West Bengal', 'India', 1234567890, '2024-08-09 21:12:09', '2024-08-16 21:12:09.000000', 'Cash on delevery(COD)', 'TID-1234596', 'bill'),
('jas12@gmail.com', 100, 3, 8000, 7900, 'kol', 'newtown', 'west', 'india', 6291828459, '06/06/2024', '07/07/2024', 'online', 'tin-1234567', NULL),
('jas12@gmail.com', 100, 3, 8000, 7900, 'kol', 'newtown', 'west', 'india', 6291828459, '06/06/2024', '07/07/2024', 'online', 'tin-1234567', NULL),
('admin123@gmail.com', 1, 1, 5000, 5000, '91b Road Kolkata', 'Kolkata', 'West Bengal', 'India', 2233344566, '2024-08-10 10:56:47', '2024-08-17 10:56:47.000000', 'Cash on delevery(COD)', 'TID-1234234445', 'Cancel'),
('admin123@gmail.com', 2, 1, 400, 400, '91b Road Kolkata', 'Kolkata', 'West Bengal', 'India', 2233344566, '2024-08-10 10:56:47', '2024-08-17 10:56:47.000000', 'Cash on delevery(COD)', 'TID-1234234445', 'Delivered'),
('admin123@gmail.com', 1, 1, 5000, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('admin123@gmail.com', 2, 1, 400, 400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('admin123@gmail.com', 3, 1, 600, 600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('admin123@gmail.com', 4, 1, 4000, 4000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `body` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `email`, `subject`, `body`) VALUES
(1, 'admin123@gmail.com', 'CSE', 'History (derived from Ancient Greek &#7985;&#963;&#964;&#959;&#961;&#943;&#945; (historía) \'inquiry; knowledge acquired by investigation\')[1] is the systematic study and documentation of the human past.[2][3]\n\nThe period of events before the invention of writing systems is considered prehistory.[4] \"History\" is an umbrella term comprising past events as well as the memory, discovery, collection, organization, presentation, and interpretation of these events. Historians seek knowledge of the past using historical sources such as written documents, oral accounts or traditional oral histories, art and material artifacts, and ecological markers.[5] History is incomplete and still has debatable mysteries.\n\nHistory is an academic discipline which uses a narrative to describe, examine, question, and analyze past events, and investigate their patterns of cause and effect.[6][7] Historians debate which narrative best explains an event, as well as the significance of different causes and eff');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `price`, `active`) VALUES
(1, 'shoes', 'abcde', 5000, 'Yes'),
(2, 'sarees', 'xyz', 400, 'Yes'),
(3, 'pant', 'efg', 600, 'Yes'),
(4, 'Abbas', 'abcd', 4000, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobileNumber` bigint(20) DEFAULT NULL,
  `securityQuestion` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `mobileNumber`, `securityQuestion`, `answer`, `password`, `address`, `city`, `state`, `country`) VALUES
('Abbas Ali Molla', 'admin123@gmail.com', 6291828459, 'What is the name of the town where you were born?', 'bom', '12345', '91b ', 'newtown', 'puna', 'bharat'),
('Jasmina', 'jasmina123@gmail.com', 6294007544, 'What is the name of your first pet?', 'cat', '1234', '', '', '', ''),
('Maahin', 'maahin123@gmail.com', 6294007544, 'What was your first car?', 'audi', '1234', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
