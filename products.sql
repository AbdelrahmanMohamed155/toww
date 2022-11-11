-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 12:56 PM
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
(96, 32, 'ع الرايق ميكس ', 'اوريو_لوتس _نوتيلا _شوكولاته_سوداني ', 12, 1),
(97, 0, 'take away', '', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
