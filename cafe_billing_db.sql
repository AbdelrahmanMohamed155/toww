-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2022 at 09:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe_billing_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(23, 'سندوتشات فرنساوي', ''),
(27, 'السندوتشات السوري', ''),
(28, 'برجر ', ''),
(29, 'اضافات ', ''),
(30, 'الحلو ', ''),
(31, 'الحادق ', ''),
(32, 'ميكسات ', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `ref_no` varchar(50) NOT NULL,
  `total_amount` float NOT NULL,
  `amount_tendered` float NOT NULL,
  `order_number` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref_no`, `total_amount`, `amount_tendered`, `order_number`, `date_created`, `created_at`) VALUES
(117, '151055164727', 20, 20, 75, '2022-11-04 22:27:05', '2022-11-04'),
(118, '226194869851', 20, 20, 13, '2022-11-04 22:28:07', '2022-11-04'),
(119, '161180590038', 45, 100, 27, '2022-11-04 22:32:58', '2022-01-01'),
(120, '186501379866', 18, 18, 37, '2022-11-04 22:38:16', '2022-11-04'),
(121, '345321190157', 13, 13, 51, '2022-11-04 22:40:06', '2022-11-04'),
(122, '773502631719', 15, 15, 79, '2022-11-04 22:40:44', '2022-11-04'),
(123, '744789494211', 5, 5, 98, '2022-11-04 22:41:22', '2022-11-04'),
(124, '402342536861', 20, 20, 12, '2022-11-04 22:42:04', '2022-11-04'),
(125, '601392684490', 5, 5, 62, '2022-11-04 22:44:08', '2022-11-04'),
(126, '851481669019', 15, 15, 85, '2022-11-04 22:45:11', '2022-11-04'),
(127, '845115205419', 15, 15, 85, '2022-11-04 22:45:11', '2022-11-04'),
(128, '441080447688', 7, 7, 70, '2022-11-04 22:46:38', '2022-11-04'),
(129, '012374680732', 20, 20, 14, '2022-11-04 22:48:54', '2022-11-04'),
(130, '720403567689', 2, 2, 100, '2022-11-05 13:57:13', '2022-11-05'),
(131, '271121333865', 197, 197, 90, '2022-11-05 13:58:02', '2022-11-05'),
(132, '642548611773', 2, 2, 330, '2022-11-05 14:36:49', '2022-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `price`, `amount`) VALUES
(168, 61, 16, 1, 50, 50),
(169, 61, 15, 1, 90, 90),
(170, 61, 7, 1, 450, 450),
(171, 61, 19, 1, 10, 10),
(172, 62, 15, 1, 90, 90),
(173, 62, 7, 1, 450, 450),
(174, 63, 15, 1, 90, 90),
(175, 64, 17, 1, 50, 50),
(176, 64, 13, 2, 13, 26),
(177, 64, 6, 1, 25, 25),
(178, 65, 16, 1, 50, 50),
(179, 65, 15, 1, 90, 90),
(180, 65, 19, 1, 10, 10),
(181, 65, 21, 1, 5, 5),
(182, 65, 13, 2, 13, 26),
(183, 65, 22, 1, 5.5, 5.5),
(184, 66, 19, 1, 10, 10),
(185, 67, 13, 1, 13, 13),
(186, 67, 6, 1, 25, 25),
(187, 68, 18, 1, 90, 90),
(188, 68, 19, 1, 10, 10),
(189, 68, 13, 1, 13, 13),
(190, 68, 17, 1, 50, 50),
(191, 68, 6, 1, 25, 25),
(192, 69, 19, 2, 10, 20),
(193, 69, 21, 1, 5, 5),
(194, 69, 14, 1, 50, 50),
(195, 69, 24, 1, 5, 5),
(196, 69, 5, 1, 15, 15),
(197, 69, 20, 1, 50, 50),
(198, 70, 19, 1, 10, 10),
(199, 71, 14, 1, 50, 50),
(200, 72, 22, 3, 5.5, 16.5),
(201, 72, 13, 3, 13, 39),
(202, 72, 23, 5, 0, 0),
(203, 72, 17, 1, 50, 50),
(204, 72, 6, 2, 25, 50),
(205, 72, 5, 1, 15, 15),
(206, 73, 17, 1, 50, 50),
(207, 73, 19, 4, 10, 40),
(208, 74, 24, 1, 5, 5),
(209, 74, 17, 1, 50, 50),
(210, 74, 6, 1, 25, 25),
(211, 74, 5, 1, 15, 15),
(212, 74, 20, 1, 50, 50),
(213, 75, 21, 2, 5, 10),
(214, 75, 5, 1, 15, 15),
(215, 75, 17, 1, 50, 50),
(216, 75, 23, 1, 0, 0),
(217, 76, 22, 1, 5.5, 5.5),
(218, 76, 13, 1, 13, 13),
(219, 77, 21, 1, 5, 5),
(220, 77, 24, 1, 5, 5),
(221, 78, 18, 1, 90, 90),
(222, 78, 16, 1, 50, 50),
(223, 78, 21, 1, 5, 5),
(224, 78, 14, 1, 50, 50),
(225, 79, 16, 1, 50, 50),
(226, 80, 26, 3, 15, 45),
(227, 81, 27, 1, 10, 10),
(228, 81, 26, 1, 15, 15),
(229, 82, 27, 1, 10, 10),
(230, 82, 26, 1, 15, 15),
(231, 83, 26, 1, 15, 15),
(232, 83, 27, 1, 10, 10),
(233, 84, 26, 1, 15, 15),
(234, 84, 27, 1, 10, 10),
(235, 85, 26, 1, 15, 15),
(236, 85, 27, 1, 10, 10),
(237, 86, 26, 1, 15, 15),
(238, 86, 27, 1, 10, 10),
(241, 88, 27, 1, 10, 10),
(242, 89, 27, 1, 10, 10),
(243, 90, 26, 1, 15, 15),
(244, 90, 27, 1, 10, 10),
(245, 91, 26, 1, 15, 15),
(246, 91, 27, 1, 10, 10),
(247, 92, 28, 1, 12, 12),
(248, 93, 27, 1, 10, 10),
(249, 94, 26, 1, 15, 15),
(250, 95, 28, 1, 12, 12),
(251, 96, 26, 1, 15, 15),
(252, 96, 28, 1, 12, 12),
(253, 97, 28, 1, 12, 12),
(254, 98, 26, 1, 15, 15),
(255, 99, 31, 1, 5.5, 5.5),
(256, 99, 28, 1, 12, 12),
(257, 99, 27, 1, 10, 10),
(258, 99, 26, 1, 15, 15),
(259, 99, 29, 1, 0, 0),
(260, 100, 28, 1, 12, 12),
(261, 101, 28, 1, 12, 12),
(262, 102, 26, 1, 15, 15),
(263, 103, 28, 1, 12, 12),
(264, 104, 28, 2, 12, 24),
(265, 104, 30, 1, 50.5, 50.5),
(266, 104, 27, 1, 10, 10),
(267, 104, 31, 1, 5.5, 5.5),
(268, 105, 28, 1, 12, 12),
(269, 106, 28, 1, 12, 12),
(270, 107, 28, 1, 12, 12),
(271, 107, 27, 1, 10, 10),
(272, 107, 30, 1, 50.5, 50.5),
(273, 107, 31, 1, 5.5, 5.5),
(274, 107, 29, 1, 0, 0),
(275, 107, 26, 1, 15, 15),
(276, 108, 28, 1, 12, 12),
(277, 109, 28, 1, 12, 12),
(278, 109, 26, 1, 15, 15),
(279, 109, 27, 1, 10, 10),
(280, 110, 27, 1, 10, 10),
(281, 111, 28, 1, 12, 12),
(282, 112, 32, 1, 6, 6),
(283, 113, 32, 1, 6, 6),
(284, 114, 32, 1, 6, 6),
(285, 115, 32, 1, 6, 6),
(286, 116, 74, 1, 2, 2),
(287, 117, 64, 1, 7, 7),
(288, 117, 37, 1, 13, 13),
(289, 118, 45, 2, 10, 20),
(290, 119, 63, 1, 5, 5),
(291, 119, 75, 1, 5, 5),
(292, 119, 50, 1, 20, 20),
(293, 119, 58, 1, 15, 15),
(294, 120, 60, 1, 18, 18),
(295, 121, 37, 1, 13, 13),
(296, 122, 58, 1, 15, 15),
(297, 123, 63, 1, 5, 5),
(298, 124, 59, 1, 20, 20),
(299, 125, 75, 1, 5, 5),
(300, 126, 58, 1, 15, 15),
(301, 127, 58, 1, 15, 15),
(302, 128, 64, 1, 7, 7),
(303, 129, 59, 1, 20, 20),
(304, 130, 74, 1, 2, 2),
(305, 131, 74, 1, 2, 2),
(306, 131, 37, 1, 13, 13),
(307, 131, 60, 1, 18, 18),
(308, 131, 58, 1, 15, 15),
(309, 131, 59, 1, 20, 20),
(310, 131, 33, 1, 10, 10),
(311, 131, 82, 1, 8, 8),
(312, 131, 81, 1, 7, 7),
(313, 131, 38, 1, 13, 13),
(314, 131, 48, 2, 15, 30),
(315, 131, 36, 1, 7, 7),
(316, 131, 90, 1, 8, 8),
(317, 131, 77, 1, 8, 8),
(318, 131, 73, 1, 8, 8),
(319, 131, 95, 1, 10, 10),
(320, 131, 80, 1, 7, 7),
(321, 131, 79, 1, 6, 6),
(322, 131, 87, 1, 7, 7),
(323, 132, 74, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=Unavailable,1=Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `status`) VALUES
(32, 23, 'بطاطس', '', 6, 1),
(33, 23, 'بطاطس موتزيريلا ', '', 10, 1),
(34, 23, 'كبده اسكندراني ', '', 7, 1),
(35, 23, 'سجق اسكندراني ', '', 7, 1),
(36, 23, 'سوسيس اسكندراني ', '', 7, 1),
(37, 23, 'بانيه ', '', 13, 1),
(38, 23, 'زنجر ', '', 13, 1),
(39, 23, 'فاهيتا ', '', 15, 1),
(40, 23, 'كرسبي تشيكن ', '', 15, 1),
(41, 23, 'جمبري مقلي ', '', 25, 1),
(42, 23, 'زنجر سوبر ', '', 22, 1),
(43, 23, 'ع الرايق ', '', 23, 1),
(45, 27, 'بطاطس سوري', '', 10, 1),
(46, 27, 'كبده اسكندراني سوري', '', 15, 1),
(47, 27, 'بطاطس موتزيريلا سوري ', '', 12, 1),
(48, 27, 'سجق اسكندراني سوري ', '', 15, 1),
(49, 27, 'سوسيس اسكندراني سوري ', '', 15, 1),
(50, 27, 'بانيه سوري ', '', 20, 1),
(51, 27, 'زنجر سوري ', '', 20, 1),
(52, 27, 'فاهيتا سوري ', '', 25, 1),
(53, 27, 'كرسبي تشكين سوري ', '', 25, 1),
(54, 27, 'جمبري مقلي سوري ', '', 30, 1),
(55, 27, 'زنجر سوبر سوري ', '', 25, 1),
(56, 27, 'ع الرايق سوري ', '', 27, 1),
(57, 28, 'برجر كلاسيك ', '', 12, 1),
(58, 28, 'برجر جبنه ', '', 15, 1),
(59, 28, 'برجر مشرم و تشيز ', '', 20, 1),
(60, 28, 'باربكيو برجر ', '', 18, 1),
(61, 28, 'تشكين برجر ', '', 20, 1),
(62, 28, 'برجر ع الرايق ', '', 22, 1),
(63, 29, 'اضافه بطاطس ', '', 5, 1),
(64, 29, 'اضافه بطاطس جبنه ', '', 7, 1),
(65, 29, 'توميه عادي ', '', 5, 1),
(66, 29, 'توميه حار ', '', 5, 1),
(67, 29, 'صوص رانش ', '', 5, 1),
(68, 30, 'كريمه حلوه ', '', 5, 1),
(69, 30, 'كريمه عسل ', '', 5, 1),
(70, 30, 'كريمه مربي ', '', 5, 1),
(71, 30, 'كريمه اوريو ', '', 8, 1),
(72, 30, 'كريمه شوكولاته ', '', 8, 1),
(73, 30, 'لوتس ', '', 8, 1),
(74, 29, 'اضافه سوداني ', '', 2, 1),
(75, 29, 'اضافه صوص ابيض ', '', 5, 1),
(76, 31, 'فاهيتا لانشون ', '', 6, 1),
(77, 31, 'ميكس شيدر ', '', 8, 1),
(78, 31, 'كيري بسطرمه ', '', 8, 1),
(79, 31, 'لانشون تركي ', '', 6, 1),
(80, 31, 'لانشون فراخ تركي ', '', 7, 1),
(81, 31, 'جبنه فلفل ', '', 7, 1),
(82, 31, 'جبنه بالقشطه ', '', 8, 1),
(83, 31, 'جبنه ميكس ', '', 8, 1),
(84, 31, 'تونه ', '', 8, 1),
(85, 32, 'فاهيتا مشكل جبن ', '', 7, 1),
(86, 32, 'فاهيتا كيري بسطرمه ', '', 7, 1),
(87, 32, 'كيري بسطرمه لانشون تركي ', '', 7, 1),
(88, 32, 'شيدر سوسيس ', '', 8, 1),
(89, 32, 'سوسيس تركي ', '', 8, 1),
(90, 32, 'لغوصه ', 'كريمه_عسل _مربي_شوكولاته ', 8, 1),
(91, 32, 'سكلانص ', 'كريمه_عسل _مربي _حلوه_اوريو _شوكولاته', 10, 1),
(92, 32, 'فياجرا +18', 'حلوه_طحنيه _عسل اسود _كريمه ', 9, 1),
(93, 32, 'ديناميت ', 'كريمه_حلوه_اوريو_شوكولاته ', 10, 1),
(94, 32, 'دنجرس ', 'مربي_عسل_حلوه_شوكولاته ', 9, 1),
(95, 32, 'لوتس اوريو ', '', 10, 1),
(96, 32, 'ع الرايق ميكس ', 'اوريو_لوتس _نوتيلا _شوكولاته_سوداني ', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `take` varchar(255) NOT NULL,
  `gave` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `take`, `gave`, `created_at`) VALUES
(23, '100', '', '2022-10-04'),
(24, '50', '', '2022-11-01'),
(25, '50', '', '2022-05-01'),
(26, '50', '', '2022-11-01'),
(27, '50', '', '2022-11-05'),
(28, '50', '', '2022-11-05'),
(29, '50', '', '2022-11-05'),
(30, '50', '', '2022-11-05'),
(31, '60', '', '2022-11-05'),
(32, '50', '', '2022-11-05'),
(33, '50', '', '2022-11-05'),
(34, '50', '', '2022-11-05'),
(35, '3', '', '2022-11-05'),
(36, '3', '', '2022-11-05'),
(37, '3', '', '2022-11-05'),
(38, '5', '', '2022-11-05'),
(39, '40', '', '2022-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'ع الرايق', 'mohamed@gmail.com', 'fsd', '1667512020_WhatsApp Image 2022-11-03 at 11.28.42 PM.jpeg', '&lt;p&gt;fs&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Abdelrahman', 'abdelrahman', '202cb962ac59075b964b07152d234b70', 1),
(4, 'ali', 'ali', '202cb962ac59075b964b07152d234b70', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
