-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2026 at 10:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `punya naela`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `kd_kat` varchar(6) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(3, 'K001', 'Kulkas'),
(4, 'K002', 'Mesin Cuci'),
(5, 'K003', 'Televisi'),
(6, 'K004', 'Kipas Angin'),
(7, 'K005', 'Handphone');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `min_stock` int(11) DEFAULT 5,
  `price` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `update_at`) VALUES
(3, 3, 'P001', 'Electrolux', 33, 20, 9000000, '28e04a14fce72192c49e3749f49da0dd.jpg', '2026-06-05 12:44:39', NULL),
(4, 3, 'P002', 'Polytron', 14, 8, 3800000, '25507fa3d28bdf64497bc164900669c7.jpg', '2026-06-05 12:47:31', NULL),
(5, 3, 'P003', 'LG', 26, 40, 2000000, '67a17d8f80a4ea967ae2c1dbd758e201.jpg', '2026-06-05 12:51:21', NULL),
(6, 3, 'P004', 'Sharp', 21, 18, 1700000, '290fbebb50c8234fb370f5bcd870375d.jpg', '2026-06-05 12:55:12', NULL),
(7, 4, 'P005', 'Polytron', 9, 10, 3100000, '8b48eae8ced185e1443281c29fb1538b.jpg', '2026-06-05 13:01:09', NULL),
(8, 4, 'P006', 'LG', 10, 12, 45000000, 'c59dd800033caa27897c238ad5becfeb.jpg', '2026-06-05 13:08:20', NULL),
(9, 4, 'P007', 'Samsung', 12, 20, 5000000, '82d666e1856088b76fd89603c9b27285.jpg', '2026-06-05 13:10:01', NULL),
(10, 4, 'P008', 'AQUA', 28, 18, 2500000, 'c69ba7590b2b4d188cb40ddfc8aac891.jpg', '2026-06-05 13:11:16', NULL),
(15, 5, 'P009', 'Polytron', 10, 6, 7000000, '9df41a2a5703f30468389bd235524e55.jpg', '2026-06-05 13:20:33', NULL),
(16, 5, 'P010', 'LG', 16, 6, 6000000, 'e218dc29dc4f9935bff73a0e3faf9e71.jpg', '2026-06-05 13:21:48', NULL),
(17, 5, 'P011', 'Samsung', 12, 19, 9000000, '8cefb1eba73a61b4a5596f5bba4c86a3.jpg', '2026-06-05 13:22:27', NULL),
(18, 5, 'P012', 'Sony', 10, 24, 4000000, 'a6d94203ab4d48efb111697f67bd8657.jpg', '2026-06-05 13:25:45', NULL),
(19, 6, 'P013', 'Cosmos', 24, 12, 600000, 'cadf6d43cd7575dfcc80f3c43600764a.jpg', '2026-06-05 13:27:05', NULL),
(20, 6, 'P014', 'Maspion', 32, 19, 700000, 'fda7b99fdaf1f1a2c5a9e9648032f839.jpg', '2026-06-05 13:28:25', NULL),
(21, 6, 'P015', 'Miyako', 12, 15, 500000, 'a06ec153727df5d823ec370e525fcf68.jpg', '2026-06-05 13:29:25', NULL),
(22, 6, 'P016', 'Panasonic', 50, 10, 900000, '37a1d6229ce287c54b6a482ed34a4df9.jpg', '2026-06-05 13:30:17', NULL),
(23, 7, 'P017', 'Samsung', 10, 8, 7000000, 'ed6e7e44e7f156c3d03033a34f91fa8b.jpg', '2026-06-05 13:31:16', NULL),
(24, 7, 'P018', 'Oppo', 25, 20, 2000000, '05b5398e15415fc928eeda25c41e3eb9.jpg', '2026-06-05 13:32:16', NULL),
(25, 7, 'P019', 'Vivo', 21, 19, 1800000, 'ab687b892d09f2534161e37634518a1b.jpg', '2026-06-05 13:33:05', NULL),
(26, 7, 'P020', 'Iphone', 22, 9, 9000000, '18bfc2a6f0442188fe091fc64a482164.jpg', '2026-06-05 13:34:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stock_before` int(11) DEFAULT NULL,
  `stock_after` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(5, 4, 'ADD', 2, 12, 14, '', '2026-06-05 13:51:41', 3),
(6, 9, 'ADD', 2, 10, 12, '', '2026-06-05 13:54:31', 3),
(7, 10, 'REDUCE', 2, 30, 28, '', '2026-06-05 13:55:05', 3),
(9, 6, 'REDUCE', 1, 22, 21, '', '2026-06-06 01:21:38', 3),
(10, 16, 'REDUCE', 4, 20, 16, '', '2026-06-06 08:39:12', 3),
(11, 22, 'ADD', 30, 20, 50, '', '2026-06-06 08:39:41', 3),
(12, 26, 'ADD', 10, 12, 22, '', '2026-06-06 08:39:59', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT 1,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `create_at`, `created_at`) VALUES
(3, 'tes', 'tes@gmail.com', '$2y$10$hYvUA6kLRpDoKcjRn96dI.a3kZGG.H6ONujsNs6MpVmxvBCIl/OWq', 'admin', 1, '2026-06-03 03:29:53', '2026-06-03 03:29:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_kat` (`kd_kat`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
