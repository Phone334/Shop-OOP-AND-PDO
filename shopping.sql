-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 12:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `sp_product`
--

CREATE TABLE `sp_product` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sp_product`
--

INSERT INTO `sp_product` (`id`, `name`, `img`, `price`, `description`, `type`) VALUES
(23, 'Nike', '1653718795081.jpg', 12660, 'Nike shoe Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quam, labore dolorum optio ad consequatur cupiditate!', 'shoe'),
(42, 'Adidas', '1653718816063.jpg', 6370, 'Adidas shoe Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quam, labore dolorum optio ad consequatur cupiditate!', 'shoe'),
(70, 'Adidas', '11122.jpg', 8888, NULL, 'Shoe'),
(76, 'long shirt', 'logan-weaver-lgnwvr-JqRQtSr2MCI-unsplash.jpg', 2340, NULL, 'Shirt'),
(77, 'Adidas Shirt', '1653718808515.jpg', 2500, NULL, 'Shirt'),
(78, 'Shirt', 'caio-coelho-QRN47la37gw-unsplash.jpg', 4350, NULL, 'Shirt'),
(79, 'Among us', 'background.png', 99999, NULL, 'game');

-- --------------------------------------------------------

--
-- Table structure for table `sp_transaction`
--

CREATE TABLE `sp_transaction` (
  `id` int(11) NOT NULL,
  `transid` text DEFAULT NULL,
  `orderlist` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `netamount` int(11) DEFAULT NULL,
  `operation` text DEFAULT NULL,
  `mil` bigint(20) DEFAULT NULL,
  `updated_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sp_transaction`
--

INSERT INTO `sp_transaction` (`id`, `transid`, `orderlist`, `amount`, `shipping`, `vat`, `netamount`, `operation`, `mil`, `updated_at`) VALUES
(1, '1653723836661', '[{\"index\":\"2\",\"id\":\"1\",\"name\":\"Nike\",\"price\":\"1\",\"img\":\"1653718795081.jpg\",\"count\":\"4\"}]', 28000, 28060, 1964, 30024, 'PENDING', 1653723836000, '2022-05-28 02:43:56pm'),
(2, '1653723949893', '[{\"index\":\"0\",\"id\":\"3\",\"name\":\"Adidas shoe\",\"price\":\"1\",\"img\":\"1653718816063.jpg\",\"count\":\"2\"}]', 90000, 90060, 6304, 96364, 'PENDING', 1653723949000, '2022-05-28 02:45:49pm'),
(3, '1653724115073', '[{\"index\":\"1\",\"id\":\"2\",\"name\":\"Adidas shirt\",\"price\":\"1500\",\"img\":\"1653718808515.jpg\",\"count\":\"1\"}]', 1500, 1560, 109, 1669, 'PENDING', 1653724115000, '2022-05-28 02:48:35pm'),
(4, '1653724247660', '[{\"index\":\"2\",\"id\":\"1\",\"name\":\"Nike\",\"price\":\"7000\",\"img\":\"1653718795081.jpg\",\"count\":\"1\"}]', 7000, 7060, 494, 7554, 'PENDING', 1653724247000, '2022-05-28 02:50:47pm'),
(5, '1653724305688', '[{\"index\":\"2\",\"id\":\"1\",\"name\":\"Nike\",\"price\":\"7000\",\"img\":\"1653718795081.jpg\",\"count\":\"1\"}]', 7000, 7060, 494, 7554, 'PENDING', 1653724305000, '2022-05-28 02:51:45pm'),
(6, '1653724342456', '[{\"index\":\"1\",\"id\":\"2\",\"name\":\"Adidas shirt\",\"price\":\"1500\",\"img\":\"1653718808515.jpg\",\"count\":\"2\"}]', 3000, 3060, 214, 3274, 'PENDING', 1653724342000, '2022-05-28 02:52:22pm'),
(7, '1653724849489', '[{\"index\":\"1\",\"id\":\"2\",\"name\":\"Adidas shirt\",\"price\":\"1500\",\"img\":\"1653718808515.jpg\",\"count\":\"1\"}]', 1500, 1560, 109, 1669, 'PENDING', 1653724849000, '2022-05-28 03:00:49pm'),
(8, '1664877954465', '[{\"index\":\"0\",\"id\":\"3\",\"name\":\"Adidas shoe\",\"price\":\"45000\",\"img\":\"1653718816063.jpg\",\"count\":\"1\"}]', 45000, 45060, 3154, 48214, 'PENDING', 1664877954000, '2022-10-04 05:05:54pm'),
(9, '1664945088082', '[{\"index\":\"3\",\"id\":\"4\",\"name\":\"adidas\",\"price\":\"6590\",\"img\":\"11122.jpg\",\"count\":\"1\"}]', 6590, 6650, 466, 7116, 'PENDING', 1664945088000, '2022-10-05 11:44:48am'),
(10, '1664945643388', '[{\"index\":\"1\",\"id\":\"6\",\"name\":\"Coat\",\"price\":\"2470\",\"img\":\"logan-weaver-lgnwvr-JqRQtSr2MCI-unsplash.jpg\",\"count\":\"1\"}]', 2470, 2530, 177, 2707, 'PENDING', 1664945643000, '2022-10-05 11:54:03am'),
(11, '1665302357910', '[{\"index\":\"1\",\"id\":\"6\",\"name\":\"Coat\",\"price\":\"2470\",\"img\":\"logan-weaver-lgnwvr-JqRQtSr2MCI-unsplash.jpg\",\"count\":\"1\"}]', 2470, 2530, 177, 2707, 'PENDING', 1665302357000, '2022-10-09 02:59:17pm'),
(12, '1665314697080', '[{\"index\":\"0\",\"id\":\"7\",\"name\":\"Jacket\",\"price\":\"800\",\"img\":\"caio-coelho-QRN47la37gw-unsplash.jpg\",\"count\":\"1\"}]', 800, 860, 60, 920, 'PENDING', 1665314697000, '2022-10-09 06:24:57pm'),
(13, '1665315879929', '[{\"index\":\"0\",\"id\":\"7\",\"name\":\"Jacket\",\"price\":\"800\",\"img\":\"caio-coelho-QRN47la37gw-unsplash.jpg\",\"count\":\"1\"}]', 800, 860, 60, 920, 'PENDING', 1665315879000, '2022-10-09 06:44:39pm'),
(14, '1665327131448', '[{\"index\":\"0\",\"id\":\"42\",\"name\":\"Adidas\",\"price\":\"6370\",\"img\":\"1653718816063.jpg\",\"count\":\"1\"}]', 6370, 6430, 450, 6880, 'PENDING', 1665327131000, '2022-10-09 09:52:11pm'),
(15, '1676895196265', '[{\"index\":\"0\",\"id\":\"42\",\"name\":\"Adidas\",\"price\":\"6370\",\"img\":\"1653718816063.jpg\",\"count\":\"1\"}]', 6370, 6430, 450, 6880, 'PENDING', 1676895196000, '2023-02-20 07:13:16pm'),
(16, '1677049366435', '[{\"index\":\"2\",\"id\":\"23\",\"name\":\"Nike\",\"price\":\"12660\",\"img\":\"1653718795081.jpg\",\"count\":\"1\"}]', 12660, 12720, 890, 13610, 'PENDING', 1677049366000, '2023-02-22 02:02:46pm'),
(17, '1677049420616', '[{\"index\":\"1\",\"id\":\"42\",\"name\":\"Adidas\",\"price\":\"6370\",\"img\":\"1653718816063.jpg\",\"count\":\"1\"}]', 6370, 6430, 450, 6880, 'PENDING', 1677049420000, '2023-02-22 02:03:40pm'),
(18, '1677133774737', '[{\"index\":\"0\",\"id\":\"74\",\"name\":\"cvbnghm\",\"price\":\"2147483647\",\"img\":\"BlackAdam1-1140.jpg\",\"count\":\"1\"}]', 2147483647, 2147483647, 150323859, 2147483647, 'PENDING', 1677133774000, '2023-02-23 01:29:34pm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`) VALUES
(3, 'Tena', '1234'),
(4, 'POP', '159');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sp_product`
--
ALTER TABLE `sp_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_transaction`
--
ALTER TABLE `sp_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sp_product`
--
ALTER TABLE `sp_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `sp_transaction`
--
ALTER TABLE `sp_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
