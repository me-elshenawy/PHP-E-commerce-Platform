-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2025 at 02:36 PM
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
-- Database: `amazon`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Laptops', 'A wide range of laptops for gaming, work, and personal use.'),
(2, 'Smartphones', 'Latest smartphones from top brands.'),
(3, 'Headphones', 'High-quality headphones and earbuds for an immersive audio experience.'),
(4, 'Computer Accessories', 'Keyboards, mice, webcams, and more to enhance your computing experience.'),
(5, 'Home Appliances', 'Small appliances to make your life easier in the kitchen and at home.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT 1,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 10,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `brand`, `description`, `price`, `old_price`, `image_url`, `stock_quantity`, `created_at`) VALUES
(1, 1, 'Lenovo IdeaPad 3', 'Lenovo', 'A reliable laptop for everyday tasks with a powerful Core i5 processor, 8GB RAM, and a speedy 512GB SSD for fast boot-ups and performance.', 18999.00, 21999.00, 'https://m.media-amazon.com/images/I/41ibmFwbd3L._AC_UL480_FMwebp_QL65_.jpg', 15, '2025-09-24 10:53:13'),
(2, 1, 'HP 15s Notebook', 'HP', 'Experience smooth multitasking with the HP 15s Notebook, featuring a Ryzen 5 CPU, 16GB of RAM, and a 512GB SSD. Perfect for students and professionals.', 22450.00, NULL, 'https://m.media-amazon.com/images/I/51JZiCYZ+9S._AC_UL480_FMwebp_QL65_.jpg', 8, '2025-09-24 10:53:13'),
(3, 1, 'Dell Inspiron 3520', 'Dell', 'Top-tier performance with a Core i7 processor, 16GB RAM, and a massive 1TB SSD. The Dell Inspiron is built for power users and content creators.', 28990.00, 31500.00, 'https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/notebooks/inspiron-notebooks/15-3520/media-gallery/in3520-cnb-05000ff090-sl.psd?fmt=pjpg&pscan=auto&scl=1&qlt=100', 12, '2025-09-24 10:53:13'),
(4, 1, 'Acer Aspire 5', 'Acer', 'A budget-friendly option without compromising on performance. Comes with a Core i5 processor, 8GB RAM, and a 256GB SSD for your essential needs.', 17750.00, NULL, 'https://m.media-amazon.com/images/I/71sesDsw95L.__AC_SY300_SX300_QL70_ML2_.jpg', 25, '2025-09-24 10:53:13'),
(5, 1, 'ASUS VivoBook', 'ASUS', 'A sleek and powerful laptop featuring a Ryzen 7 processor, 16GB of RAM, and a 512GB SSD, all packed into a stylish and portable design.', 26300.00, NULL, 'https://m.media-amazon.com/images/I/81fstJkUlaL.__AC_SX300_SY300_QL70_ML2_.jpg', 5, '2025-09-24 10:53:13'),
(6, 1, 'MSI Modern 14', 'MSI', 'Designed for modern creators, the MSI Modern 14 offers a powerful Core i7 CPU, 16GB RAM, and a 512GB SSD in a lightweight chassis.', 29990.00, NULL, 'https://m.media-amazon.com/images/I/51+0kdRrlVL._AC_UL480_FMwebp_QL65_.jpg', 18, '2025-09-24 10:53:13'),
(7, 1, 'Apple MacBook Air M1', 'Apple', 'The MacBook Air with the Apple M1 chip delivers incredible performance and all-day battery life. A beautiful Retina display and a silent, fanless design.', 35500.00, 38000.00, 'https://m.media-amazon.com/images/I/71jG+e7roXL._AC_SL1500_.jpg', 9, '2025-09-24 10:53:13'),
(8, 3, 'Premium Wireless Headphones', 'Generic', 'Experience premium sound quality with these wireless headphones featuring advanced noise cancellation technology. Perfect for music lovers, gamers, and professionals.', 299.99, 399.99, 'https://m.media-amazon.com/images/I/51oAjwCzv4L._AC_UL480_FMwebp_QL65_.jpg', 50, '2025-09-24 10:53:13'),
(9, 4, 'Logitech G203 LIGHTSYNC Gaming Mouse', 'Logitech', 'Get the most out of your game time with G203 gaming mouse, featuring LIGHTSYNC technology, a gaming-grade sensor and a classic 6-button design.', 39.99, 49.99, 'https://m.media-amazon.com/images/I/61UxfXTUyvL._AC_SL1500_.jpg', 45, '2025-09-24 11:25:31'),
(10, 4, 'Logitech K380 Multi-Device Bluetooth Keyboard', 'Logitech', 'A compact and versatile keyboard that connects to all Bluetooth wireless devices. Easy-switch lets you connect up to three devices simultaneously.', 34.99, NULL, 'https://m.media-amazon.com/images/I/61sR3bdJ5lL._AC_SX300_SY300_QL70_ML2_.jpg', 60, '2025-09-24 11:25:31'),
(11, 5, 'Mueller Ultra Kettle: Model No. M99S', 'Mueller', 'Made with the finest quality Borosilicate Glass which resists scratching and scuffing, a great electric kettle for fast boiling and auto shut-off.', 29.95, 39.95, 'https://m.media-amazon.com/images/I/51oAjwCzv4L._AC_UL480_FMwebp_QL65_.jpg', 30, '2025-09-24 11:25:31'),
(12, 2, 'Anker PowerCore 10000 Portable Charger', 'Anker', 'One of the smallest and lightest 10000mAh portable chargers. Provides almost three-and-a-half iPhone 8 charges or two-and-a-half Galaxy S8 charges.', 21.99, NULL, 'https://m.media-amazon.com/images/I/61RsRGUZORL.__AC_SX300_SY300_QL70_ML2_.jpg', 150, '2025-09-24 11:25:31'),
(13, 3, 'Sony ZX Series Wired On-Ear Headphones', 'Sony', 'Enjoy a rich, balanced sound with these lightweight on-ear headphones. The cushioned earpads provide extra comfort for long listening sessions.', 14.99, 19.99, 'https://m.media-amazon.com/images/I/51oAjwCzv4L._AC_UL480_FMwebp_QL65_.jpg', 80, '2025-09-24 11:25:31'),
(14, 5, 'Kasa Smart Plug Mini by TP-Link', 'TP-Link', 'Turn electronics on or off from anywhere with your smartphone using the Kasa app. Works with Amazon Alexa and Google Assistant. No Hub Required.', 12.99, NULL, 'https://m.media-amazon.com/images/I/41TIibDeM+S._AC_UL480_FMwebp_QL65_.jpg', 120, '2025-09-24 11:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `address`, `phone`, `created_at`) VALUES
(1, 'Guest User', 'guest@example.com', 'not_applicable', NULL, NULL, '2025-09-24 10:59:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
