-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2016 at 02:40 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping-cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_09_16_164812_create_products_table', 1),
('2016_09_16_173303_create_user_table', 1),
('2016_09_18_005810_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `address`, `name`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'O:8:"App\\Cart":3:{s:5:"items";a:1:{i:1;a:3:{s:3:"qty";i:1;s:5:"price";i:500;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"describtion";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:1;s:9:"imagePath";s:30:"http://i.imgur.com/pjYmW8P.jpg";s:5:"title";s:13:"Monky D.Luffy";s:11:"describtion";s:61:"Monky D.Luffy is a Pirats King Monky D.Luffy is a Pirats King";s:5:"price";i:500;s:10:"created_at";s:19:"2016-09-17 01:33:00";s:10:"updated_at";s:19:"2016-09-17 01:33:00";}s:11:"\0*\0original";a:7:{s:2:"id";i:1;s:9:"imagePath";s:30:"http://i.imgur.com/pjYmW8P.jpg";s:5:"title";s:13:"Monky D.Luffy";s:11:"describtion";s:61:"Monky D.Luffy is a Pirats King Monky D.Luffy is a Pirats King";s:5:"price";i:500;s:10:"created_at";s:19:"2016-09-17 01:33:00";s:10:"updated_at";s:19:"2016-09-17 01:33:00";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:1;s:10:"totalPrice";i:500;}', 'cairo', 'Mohm', 'ch_18uuM6BCS9Zdx55Ju2JBygJf', '2016-09-17 23:44:47', '2016-09-17 23:44:47'),
(2, 3, 'O:8:"App\\Cart":3:{s:5:"items";a:1:{i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:300;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"describtion";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:2;s:9:"imagePath";s:77:"http://static.comicvine.com/uploads/original/11117/111178645/4778120-zoro.jpg";s:5:"title";s:4:"Zoro";s:11:"describtion";s:67:"Zoro is a Pirats King Sourder Zoro D.Luffy is a Pirats King Sourder";s:5:"price";i:300;s:10:"created_at";s:19:"2016-09-17 01:33:00";s:10:"updated_at";s:19:"2016-09-17 01:33:00";}s:11:"\0*\0original";a:7:{s:2:"id";i:2;s:9:"imagePath";s:77:"http://static.comicvine.com/uploads/original/11117/111178645/4778120-zoro.jpg";s:5:"title";s:4:"Zoro";s:11:"describtion";s:67:"Zoro is a Pirats King Sourder Zoro D.Luffy is a Pirats King Sourder";s:5:"price";i:300;s:10:"created_at";s:19:"2016-09-17 01:33:00";s:10:"updated_at";s:19:"2016-09-17 01:33:00";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:1;s:10:"totalPrice";i:300;}', 'dsfsdf', 'df', 'ch_18uulEBCS9Zdx55J89fEs8uk', '2016-09-18 00:10:46', '2016-09-18 00:10:46'),
(3, 1, 'O:8:"App\\Cart":3:{s:5:"items";a:3:{i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:300;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"describtion";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:2;s:9:"imagePath";s:77:"http://static.comicvine.com/uploads/original/11117/111178645/4778120-zoro.jpg";s:5:"title";s:4:"Zoro";s:11:"describtion";s:67:"Zoro is a Pirats King Sourder Zoro D.Luffy is a Pirats King Sourder";s:5:"price";i:300;s:10:"created_at";s:19:"2016-09-17 01:33:00";s:10:"updated_at";s:19:"2016-09-17 01:33:00";}s:11:"\0*\0original";a:7:{s:2:"id";i:2;s:9:"imagePath";s:77:"http://static.comicvine.com/uploads/original/11117/111178645/4778120-zoro.jpg";s:5:"title";s:4:"Zoro";s:11:"describtion";s:67:"Zoro is a Pirats King Sourder Zoro D.Luffy is a Pirats King Sourder";s:5:"price";i:300;s:10:"created_at";s:19:"2016-09-17 01:33:00";s:10:"updated_at";s:19:"2016-09-17 01:33:00";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:4;a:3:{s:3:"qty";i:1;s:5:"price";i:180;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"describtion";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:4;s:9:"imagePath";s:52:"https://i.ytimg.com/vi/BEei99o6eJo/maxresdefault.jpg";s:5:"title";s:6:"Franky";s:11:"describtion";s:63:"Franky is a Pirats King Shipper Franky is a Pirats King Shipper";s:5:"price";i:180;s:10:"created_at";s:19:"2016-09-17 01:33:00";s:10:"updated_at";s:19:"2016-09-17 01:33:00";}s:11:"\0*\0original";a:7:{s:2:"id";i:4;s:9:"imagePath";s:52:"https://i.ytimg.com/vi/BEei99o6eJo/maxresdefault.jpg";s:5:"title";s:6:"Franky";s:11:"describtion";s:63:"Franky is a Pirats King Shipper Franky is a Pirats King Shipper";s:5:"price";i:180;s:10:"created_at";s:19:"2016-09-17 01:33:00";s:10:"updated_at";s:19:"2016-09-17 01:33:00";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:3;a:3:{s:3:"qty";i:1;s:5:"price";i:200;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"describtion";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:3;s:9:"imagePath";s:108:"http://noicheamiamoonepiece.altervista.org/blog/wp-content/uploads/2015/11/sanji_kun__by_mirimmd-d4qfcgl.jpg";s:5:"title";s:5:"Sanjy";s:11:"describtion";s:59:"Sanjy is a Pirats King Cooker Sanjy is a Pirats King Cooker";s:5:"price";i:200;s:10:"created_at";s:19:"2016-09-17 01:33:00";s:10:"updated_at";s:19:"2016-09-17 01:33:00";}s:11:"\0*\0original";a:7:{s:2:"id";i:3;s:9:"imagePath";s:108:"http://noicheamiamoonepiece.altervista.org/blog/wp-content/uploads/2015/11/sanji_kun__by_mirimmd-d4qfcgl.jpg";s:5:"title";s:5:"Sanjy";s:11:"describtion";s:59:"Sanjy is a Pirats King Cooker Sanjy is a Pirats King Cooker";s:5:"price";i:200;s:10:"created_at";s:19:"2016-09-17 01:33:00";s:10:"updated_at";s:19:"2016-09-17 01:33:00";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:3;s:10:"totalPrice";i:680;}', 'Mohanmred', 'Mohamed', 'ch_18uv5wBCS9Zdx55JkIPHT8E9', '2016-09-18 00:32:09', '2016-09-18 00:32:09'),
(4, 1, 'O:8:"App\\Cart":3:{s:5:"items";a:1:{i:2;a:3:{s:3:"qty";i:3;s:5:"price";i:900;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"describtion";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:2;s:9:"imagePath";s:77:"http://static.comicvine.com/uploads/original/11117/111178645/4778120-zoro.jpg";s:5:"title";s:4:"Zoro";s:11:"describtion";s:67:"Zoro is a Pirats King Sourder Zoro D.Luffy is a Pirats King Sourder";s:5:"price";i:300;s:10:"created_at";s:19:"2016-09-17 01:33:00";s:10:"updated_at";s:19:"2016-09-17 01:33:00";}s:11:"\0*\0original";a:7:{s:2:"id";i:2;s:9:"imagePath";s:77:"http://static.comicvine.com/uploads/original/11117/111178645/4778120-zoro.jpg";s:5:"title";s:4:"Zoro";s:11:"describtion";s:67:"Zoro is a Pirats King Sourder Zoro D.Luffy is a Pirats King Sourder";s:5:"price";i:300;s:10:"created_at";s:19:"2016-09-17 01:33:00";s:10:"updated_at";s:19:"2016-09-17 01:33:00";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:3;s:10:"totalPrice";i:900;}', 'sdfdsf', 'dsfsdf', 'ch_18uv7EBCS9Zdx55JNniH8m5f', '2016-09-18 00:33:30', '2016-09-18 00:33:30'),
(5, 1, 'O:8:"App\\Cart":3:{s:5:"items";a:0:{}s:8:"totalQty";i:0;s:10:"totalPrice";i:360;}', 'asd', 'asd', 'ch_18uvswBCS9Zdx55JFzuAgiPe', '2016-09-18 01:22:48', '2016-09-18 01:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagePath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `describtion` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `imagePath`, `title`, `describtion`, `price`, `created_at`, `updated_at`) VALUES
(1, 'http://i.imgur.com/pjYmW8P.jpg', 'Monky D.Luffy', 'Monky D.Luffy is a Pirats King Monky D.Luffy is a Pirats King', 500, '2016-09-16 23:33:00', '2016-09-16 23:33:00'),
(2, 'http://static.comicvine.com/uploads/original/11117/111178645/4778120-zoro.jpg', 'Zoro', 'Zoro is a Pirats King Sourder Zoro D.Luffy is a Pirats King Sourder', 300, '2016-09-16 23:33:00', '2016-09-16 23:33:00'),
(3, 'http://noicheamiamoonepiece.altervista.org/blog/wp-content/uploads/2015/11/sanji_kun__by_mirimmd-d4qfcgl.jpg', 'Sanjy', 'Sanjy is a Pirats King Cooker Sanjy is a Pirats King Cooker', 200, '2016-09-16 23:33:00', '2016-09-16 23:33:00'),
(4, 'https://i.ytimg.com/vi/BEei99o6eJo/maxresdefault.jpg', 'Franky', 'Franky is a Pirats King Shipper Franky is a Pirats King Shipper', 180, '2016-09-16 23:33:00', '2016-09-16 23:33:00'),
(5, 'https://i.ytimg.com/vi/_bNIIz-mG9E/maxresdefault.jpg', 'Chopper', 'Chopper is a Pirats King Doctor Chopper is a Pirats King Doctor', 10, '2016-09-16 23:33:00', '2016-09-16 23:33:00'),
(6, 'https://i.ytimg.com/vi/sfYNUy7x5xE/maxresdefault.jpg', 'Nami', 'Nami is a Pirats King Seere Nami is a Pirats King Seere', 100, '2016-09-16 23:33:00', '2016-09-16 23:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mohamedzayed709@yahoo.com', '$2y$10$n.wQA0ukVooLJMuPUkEHSegqRKo/TFP0xPNI/dRv8EgIv2RUPfTbC', 'xub4T99DpBK3nFdPjpnCV2OMcyMmy8YBTuSndkXD2M9RxOUtcqIH8qS9qWOs', '2016-09-16 23:34:45', '2016-09-24 07:58:17'),
(2, 'mohamedzayed709@yahoo.comzddd', '$2y$10$p.73.v0NBqHKiDndE60MV.ZrpQwFlIVRDMxkAtrVQ5GLbPgKvRyrK', 'vc6jpvSz5KqOjCv44Pqu8ptY4ma3r86FRCldWdUWmrxeY902k48N62GRSKFx', '2016-09-18 00:05:26', '2016-09-18 00:09:50'),
(3, 'mohamedzaydfddfed709@yahoo.com', '$2y$10$yYzNsxaeI2q17YZ73sBBeujycQOuU.SV7tBVWxPRx/gIAROwEWECu', 'k2WF2pxgH4FuHnQ3cKsvuTHXbv9GFNW2mBPyd1QhKWEpihy7pkE87oqhJtDT', '2016-09-18 00:10:07', '2016-09-18 00:10:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
