-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2024 at 07:07 AM
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
-- Database: `ucanproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_address_info`
--

CREATE TABLE `app_address_info` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `current_address` longtext NOT NULL,
  `permenent_address` longtext NOT NULL,
  `place` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `created_at` time(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_address_info`
--

INSERT INTO `app_address_info` (`id`, `name`, `current_address`, `permenent_address`, `place`, `country`, `district`, `pincode`, `created_at`, `user_id`, `phone`) VALUES
(37, 'eeel', 'kolkalta', 'dfgfdg', 'parappanagadi', 'dasd', 'jhbjkhg', 631245, '09:55:13.014424', 53, 0),
(41, 'sunild', 'dhg', 'ewrw', 'asd', 'sg', 'kerala', 631245, '15:37:02.078256', 35, 0),
(46, 'usercheck', 'bb12 street newyork', 'newyork bb12 house no 112', 'newyork', 'Englend', 'newyork', 234589, '12:55:08.427158', 54, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `app_jobs`
--

CREATE TABLE `app_jobs` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `salary` bigint(20) NOT NULL,
  `skills` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `job_category_id` bigint(20) NOT NULL,
  `user_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_jobs`
--

INSERT INTO `app_jobs` (`id`, `title`, `description`, `salary`, `skills`, `image`, `job_category_id`, `user_id_id`) VALUES
(8, 'lady tailor is required', 'lady tailor need at  perinthalmanna candidates near perinthalmanna is preffered', 13000, '1.skill tailor required\r\n2.1 year experience required', 'jobs/tailor.avif', 3, 10),
(13, 'gents taylor', 'tylor is needed at calicut', 13000, '1.neede a young tylor age must be 25-30', 'jobs/tail.jpeg', 3, 11),
(16, 'driver for car', 'a driver', 17999, 'communication and driving skills', 'jobs/taxi_fKDS0V3.avif', 2, 25),
(29, 'electrician', 'a electrician required in palakkad district', 13500, 'well knowlege on electrical works', 'jobs/b2.jpg', 1, 10),
(30, 'python developer', 'python developer is required', 23000, '1 year experience in python ', 'jobs/vr.jpg', 4, 66);

-- --------------------------------------------------------

--
-- Table structure for table `app_job_application`
--

CREATE TABLE `app_job_application` (
  `id` bigint(20) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phoneno` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `resume` varchar(100) NOT NULL,
  `job_id_id` bigint(20) NOT NULL,
  `user_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_job_application`
--

INSERT INTO `app_job_application` (`id`, `job_title`, `name`, `email`, `phoneno`, `photo`, `resume`, `job_id_id`, `user_id_id`) VALUES
(1, 'gents taylor', 'luff', 'himasasidhar@gmail.com', 3456789, 'job_applicants/tail_CU1Boxd.jpeg', 'files/k1_.jpg', 13, 11),
(2, 'lady tailor is required', 'shadow', 'sunilmdigitz@gmail.com', 96786545, 'job_applicants/salesman.jpeg', 'files/Cvlatest_SyZCxrF.pdf', 8, 11),
(4, 'gents taylor', 'king', 'ksunildasap@gmail.com', 45567788, 'job_applicants/blueberry_lFoPfqJ.jpg', 'files/cap1.jpg', 13, 10),
(7, 'gents taylor', 'sunildas', 'sun@gmail.com', 424525566, 'job_applicants/tail_ygwKPeV.jpeg', 'files/school2_3fl6meA.jpg', 13, 10),
(14, 'python developer', 'sunil', 'pekkagamer000@gmail.com', 234567, 'job_applicants/bag_.jpg', 'files/sav.txt', 30, 66);

-- --------------------------------------------------------

--
-- Table structure for table `app_job_category`
--

CREATE TABLE `app_job_category` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `created_at` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_job_category`
--

INSERT INTO `app_job_category` (`id`, `title`, `created_at`) VALUES
(1, 'sales', '15:35:08.201952'),
(2, 'driver', '16:12:50.415535'),
(3, 'tailor', '16:13:11.864631'),
(4, 'software development', '12:10:17.402910'),
(5, 'electrical works', '12:10:56.799445');

-- --------------------------------------------------------

--
-- Table structure for table `app_message`
--

CREATE TABLE `app_message` (
  `id` bigint(20) NOT NULL,
  `value` longtext NOT NULL,
  `date` time(6) NOT NULL,
  `user` longtext NOT NULL,
  `room` longtext NOT NULL,
  `uid` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_message`
--

INSERT INTO `app_message` (`id`, `value`, `date`, `user`, `room`, `uid`, `receiver_id`) VALUES
(1, 'hlo', '15:30:13.630505', 'sadmin', '1', 1, 1),
(2, 'hi', '15:30:58.897157', 'eeel', '1', 1, 1),
(3, 'hlo', '15:32:47.646970', 'eeel', '1', 1, 1),
(4, 'ok', '15:32:54.058251', 'sadmin', '1', 1, 1),
(5, 'hlo', '15:33:03.803513', 'eeel', '1', 1, 1),
(6, 'hi', '11:34:30.947327', 'None', '13', 1, 1),
(7, '', '11:38:33.388565', 'ddd', '17', 1, 1),
(8, '', '11:38:33.941615', 'ddd', '17', 1, 1),
(9, 'helo', '13:08:52.675379', 'sadmin', '29', 1, 1),
(10, 'hello', '13:11:27.094778', 'sadmin', '29', 1, 1),
(11, 'gg', '13:13:55.279701', 'eeel', '30', 1, 1),
(12, 'helo', '13:14:43.505859', 'ddd', '30', 1, 1),
(13, 'wsfwgt', '13:14:49.146997', 'eeel', '30', 1, 1),
(14, 'dhnn', '13:14:56.186959', 'ddd', '30', 1, 1),
(15, 'helo', '13:52:04.546431', 'eeel', '30', 1, 1),
(16, 'hello', '13:52:09.440374', 'ddd', '30', 1, 1),
(17, 'hlo', '14:00:55.127017', 'admin', '31', 1, 1),
(18, 'hello', '14:01:34.678776', 'eeel', '31', 1, 1),
(19, 'hello', '14:01:38.670360', 'eeel', '31', 1, 1),
(20, 'hello', '14:01:46.160784', 'admin', '31', 1, 1),
(21, 'hi', '14:02:32.831332', 'admin', '31', 1, 1),
(22, 'helo', '14:03:01.238168', 'sunil22', '32', 1, 1),
(23, 'hello', '14:03:14.904211', 'eeel', '31', 1, 1),
(24, 'helo', '17:40:35.583281', 'admin180', '', 1, 1),
(25, '', '17:40:39.100624', 'admin180', '', 1, 1),
(26, 'hlo', '17:40:40.694415', 'admin180', '', 1, 1),
(27, '', '17:40:41.033837', 'admin180', '', 1, 1),
(28, '', '17:40:41.249050', 'admin180', '', 1, 1),
(29, 'hello', '17:40:49.528951', 'admin180', '', 1, 1),
(30, 'hlo', '17:40:51.777780', 'admin180', '', 1, 1),
(31, '', '17:41:05.395839', 'admin180', '', 1, 1),
(32, '', '17:41:05.954664', 'admin180', '', 1, 1),
(33, 'helo', '17:41:12.207267', 'admin180', '', 1, 1),
(34, 'sunil', '17:41:27.132366', 'admin180', '', 1, 1),
(35, 'hi', '17:41:29.751174', 'admin180', '', 1, 1),
(36, 'hello', '17:41:40.513287', 'admin180', '', 1, 1),
(37, 'hlo', '17:42:15.644775', 'admin180', '', 1, 1),
(38, 'hi', '17:42:40.053378', 'gg', '', 1, 1),
(39, 'hlo', '17:42:57.298082', 'gg', '', 1, 1),
(40, 'helodc', '17:43:04.349814', 'gg', '', 1, 1),
(41, 'hello', '17:44:05.909660', 'gg', '', 1, 1),
(42, 'helo', '17:44:45.578907', 'chadmin', '', 1, 1),
(43, 'gg', '17:45:17.588680', 'sadmin', '31', 1, 1),
(44, 'helo', '17:45:31.036731', 'sadmin', '31', 1, 1),
(45, 'hghh', '17:45:41.379014', 'gg', '', 1, 1),
(46, 'sunil', '17:45:53.155572', 'gg', '', 1, 1),
(47, 'wwwww', '17:46:02.441869', 'gg', '31', 1, 1),
(48, 'gg', '17:54:55.574672', 'eeel', '31', 1, 1),
(49, 'gg', '17:55:26.279132', 'eeel', '31', 1, 1),
(50, 'hlo', '18:00:11.270434', 'eeel', '31', 1, 1),
(51, 'gg', '18:00:36.254162', 'chadmin', '31', 1, 1),
(52, 'hello', '18:01:08.467361', 'j', '31', 1, 1),
(53, 'hi', '18:04:14.121439', 'eeel', '31', 1, 1),
(54, 'hi', '18:04:20.097046', 'j', '31', 1, 1),
(55, 'sunil', '18:10:09.515670', 'eeel', '31', 1, 1),
(56, 'gg', '18:10:21.874843', 'eeel', '31', 1, 1),
(57, 'helo', '18:11:09.167277', 'cobalt', '31', 1, 1),
(58, 'hi', '09:07:20.795792', 'cobalt', '31', 1, 1),
(59, 'hi', '13:17:10.918732', 'cobalt', '31', 1, 1),
(60, 'hello', '16:48:11.209523', 'ee', '31', 1, 1),
(61, 'hlo', '16:48:50.245558', 'ee', '31', 1, 1),
(62, 'helo', '16:59:06.169546', 'ee', '31', 1, 1),
(63, 'sunil', '17:24:45.030606', 'ee', '31', 1, 1),
(64, '', '09:09:21.613399', 'None', '31', 1, 1),
(65, 'helo', '09:09:23.517803', 'None', '31', 1, 1),
(66, 'hi', '09:18:04.485826', 'ee', '31', 1, 1),
(67, '', '09:18:05.387181', 'ee', '31', 1, 1),
(68, 'helo', '09:18:09.868905', 'ee', '31', 1, 1),
(69, 'gg', '09:18:17.382265', 'ee', '31', 1, 1),
(70, 'gg', '09:18:27.660109', 'ee', '31', 1, 1),
(71, 'hello', '09:18:50.338250', 'ee', '31', 1, 1),
(72, 'hlo', '09:27:43.672034', 'ee', '31', 1, 1),
(73, 'helo', '09:45:43.846916', 'ee', '31', 1, 1),
(74, 'helo', '10:03:10.162607', 'ee', '31', 1, 1),
(75, 'gg', '10:03:39.525712', 'ee', '31', 1, 1),
(76, 'sunil', '10:11:42.713105', 'ee', '31', 1, 1),
(77, 'hi', '10:30:39.339205', 'ee', '31', 1, 1),
(78, 'gg', '10:47:09.415277', 'ee', '31', 65, 1),
(79, 'hello', '10:53:58.902673', 'ee', '31', 65, 1),
(80, 'sunil', '10:54:06.100856', 'ee', '31', 65, 1),
(81, 'sunil', '10:54:25.149421', 'ee', '31', 65, 1),
(82, 'hi', '11:59:06.527614', 'ee', '31', 65, 1),
(83, 'hlo', '12:00:10.460175', 'ee', '31', 65, 1),
(84, 'helo', '12:00:37.931913', 'ee', '31', 65, 1),
(85, 'gg', '12:00:40.454481', 'ee', '31', 65, 1),
(86, 'hello', '12:04:29.913762', 'cobalt', '31', 54, 1),
(87, 'hi', '12:05:00.101911', 'cobalt', '31', 54, 1),
(88, 'helo', '12:05:07.697565', 'cobalt', '31', 54, 1),
(89, 'hlo', '12:05:21.649578', 'cobalt', '31', 54, 1),
(90, 'hi', '12:05:29.122267', 'cobalt', '31', 54, 1),
(91, 'hello', '12:57:22.147129', 'cobalt', '31', 54, 1),
(92, 'helo', '12:57:36.762620', 'cobalt', '31', 54, 1),
(93, '', '12:57:37.088667', 'cobalt', '31', 54, 1),
(94, 'hi', '13:01:48.109870', 'cobalt', '31', 54, 1),
(95, 'helo', '13:03:16.606829', 'cobalt', '31', 54, 1),
(96, 'hello', '13:06:52.988481', 'cobalt', '31', 54, 1),
(97, 'sunil', '14:25:23.460226', 'cobalt', '31', 54, 1),
(98, 'gg', '14:32:34.219219', 'cobalt', '31', 54, 1),
(99, 'hhhhhhh', '14:46:58.661715', 'cobalt', '31', 54, 1),
(100, 'eeeeeeeeeee', '14:47:36.628500', 'eeel', '31', 53, 1),
(101, 'fdhh', '14:49:37.665152', 'eeel', '31', 53, 1),
(102, 'hi', '14:52:30.094140', 'cobalt', '31', 54, 1),
(103, 'hlo', '17:57:09.270811', 'cobalt', '31', 54, 1),
(104, 'hello', '17:59:12.314411', 'cobalt', '31', 54, 1),
(105, 'helo', '09:20:02.186951', 'cobalt', '31', 54, 1),
(106, 'hi', '09:26:16.423110', 'cobalt', '31', 54, 1),
(107, 'hello', '09:28:37.945474', 'cobalt', '31', 54, 1),
(108, 'vb', '09:54:08.178250', 'cobalt', '31', 54, 1),
(109, 'scsfv', '10:08:30.779170', 'cobalt', '31', 54, 53),
(110, 'ttt', '10:09:27.400753', 'cobalt', '31', 54, 53),
(111, 'hlo', '10:14:02.509085', 'eeel', '31', 53, 54),
(112, 'helop', '10:14:11.177129', 'eeel', '31', 53, 54),
(113, 'hlo', '10:14:54.591220', 'eeel', '31', 53, 16),
(114, 'sunil', '10:14:59.855351', 'eeel', '31', 53, 16),
(115, 'hi', '10:48:21.634389', 'cobalt', '31', 54, 56),
(116, 'hj', '10:48:56.549910', 'wook', '31', 56, 54),
(117, 'helo', '12:43:59.907013', 'cobalt', '31', 54, 53),
(118, 'fgh', '12:53:38.887090', 'cobalt', '31', 54, 53),
(119, 'sunil', '12:53:41.779277', 'cobalt', '31', 54, 53),
(120, 'xccv', '12:53:44.877660', 'cobalt', '31', 54, 53),
(121, 'acac', '12:53:49.238395', 'cobalt', '31', 54, 53),
(122, 'olll', '12:54:01.457462', 'cobalt', '31', 54, 53),
(123, 'j', '12:54:12.800374', 'cobalt', '31', 54, 53),
(124, 'hi', '12:56:07.478295', 'cobalt', '31', 54, 53),
(125, 'hlo', '12:56:13.675115', 'cobalt', '31', 54, 53),
(126, 'hello', '12:57:15.902048', 'cobalt', '31', 54, 53),
(127, 'hi', '12:57:24.616629', 'cobalt', '31', 54, 53),
(128, 'helo', '12:59:17.172005', 'cobalt', '31', 54, 53),
(129, 'hhh', '12:59:27.026944', 'cobalt', '31', 54, 53),
(130, 'gg', '13:01:01.146705', 'cobalt', '31', 54, 53),
(131, 'sunil', '13:06:03.995582', 'cobalt', '31', 54, 53),
(132, 'sunil', '13:06:23.524648', 'cobalt', '31', 54, 53),
(133, 'hello', '14:00:26.161846', 'cobalt', '31', 54, 65),
(134, 'gg', '14:00:32.142656', 'cobalt', '31', 54, 65),
(135, 'hhjj', '14:01:11.360662', 'ee', '31', 65, 54),
(136, 'hi', '14:28:35.660097', 'cobalt', '31', 54, 13),
(137, 'gg', '18:02:02.493628', 'cobalt', '31', 54, 53),
(138, 'helo', '18:02:46.777752', 'eeel', '31', 53, 54),
(139, 'hello', '20:35:34.667225', 'eeel', '31', 53, 7),
(140, 'hlo', '20:38:11.136483', 'eeel', '31', 53, 65),
(141, 'hi', '20:38:38.844448', 'ee', '31', 65, 53),
(142, 'hil', '11:05:27.185254', 'eeel', '31', 53, 54),
(143, 'hlo', '11:08:00.100485', 'eeel', '31', 53, 54),
(144, 'hlo', '11:11:09.875125', 'eeel', '31', 53, 54),
(145, 'foo', '12:40:14.589782', 'eeel', '31', 53, 54),
(146, 'hhh', '12:40:18.443788', 'cobalt', '31', 54, 53),
(147, 'dx', '12:40:23.617692', 'eeel', '31', 53, 54),
(148, 'oolo', '12:40:27.790132', 'cobalt', '31', 54, 53),
(149, 'hlo', '09:39:47.739827', 'ronin', '31', 66, 10),
(150, 'gg', '09:49:22.474338', 'sadmin', '31', 10, 66),
(151, 'hlo', '17:41:40.473234', 'cobalt', '31', 54, 67),
(152, 'gg', '17:42:15.951399', 'kolla', '31', 67, 54);

-- --------------------------------------------------------

--
-- Table structure for table `app_order`
--

CREATE TABLE `app_order` (
  `id` bigint(20) NOT NULL,
  `subtotal` decimal(13,2) NOT NULL,
  `total_price` decimal(13,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_order`
--

INSERT INTO `app_order` (`id`, `subtotal`, `total_price`, `created_at`, `user_id`, `product_id`) VALUES
(30, 2499.00, 2509.00, '2024-01-02 09:53:03.334391', 54, 137),
(31, 2499.00, 2509.00, '2024-01-02 09:55:13.014424', 53, 137),
(32, 6299.00, 6309.00, '2024-01-02 15:11:30.299119', 54, 139),
(33, 6299.00, 6309.00, '2024-01-02 15:32:45.580712', 54, 139),
(34, 7399.00, 7409.00, '2024-01-02 15:34:54.222053', 35, 138),
(35, 7399.00, 7409.00, '2024-01-02 15:37:02.078256', 35, 138),
(36, 15097.00, 15107.00, '2024-01-02 11:01:05.350517', 54, 137),
(37, 20095.00, 20105.00, '2024-01-02 12:06:05.141538', 54, 137),
(38, 4998.00, 5008.00, '2024-01-02 12:12:11.873281', 54, 137),
(39, 8798.00, 8808.00, '2024-01-02 07:07:48.936878', 54, 139),
(40, 11199.00, 11209.00, '2024-01-02 07:25:08.435161', 54, 138);

-- --------------------------------------------------------

--
-- Table structure for table `app_order_items`
--

CREATE TABLE `app_order_items` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_order_items`
--

INSERT INTO `app_order_items` (`id`, `quantity`, `created_at`, `order_id`, `product_id_id`) VALUES
(12, 1, '2024-01-02 09:53:03.334391', 30, 137),
(13, 1, '2024-01-02 09:55:13.031019', 31, 137),
(14, 1, '2024-01-02 15:11:30.309195', 32, 138),
(15, 1, '2024-01-02 15:11:30.315636', 32, 139),
(16, 1, '2024-01-02 15:32:45.588712', 33, 138),
(17, 1, '2024-01-02 15:32:45.588712', 33, 139),
(18, 1, '2024-01-02 15:34:54.230452', 34, 137),
(19, 1, '2024-01-02 15:34:54.230452', 34, 138),
(20, 1, '2024-01-02 15:37:02.099472', 35, 137),
(21, 1, '2024-01-02 15:37:02.099472', 35, 138),
(22, 2, '2024-01-02 11:01:05.360271', 36, 138),
(23, 2, '2024-01-02 11:01:05.366668', 36, 139),
(24, 1, '2024-01-02 11:01:05.370669', 36, 137),
(25, 2, '2024-01-02 12:06:05.165477', 37, 138),
(26, 2, '2024-01-02 12:06:05.165477', 37, 139),
(27, 3, '2024-01-02 12:06:05.165477', 37, 137),
(28, 2, '2024-01-02 12:12:11.881291', 38, 137),
(29, 1, '2024-01-02 07:07:48.944879', 39, 137),
(30, 1, '2024-01-02 07:07:48.952838', 39, 138),
(31, 1, '2024-01-02 07:07:48.952838', 39, 139),
(32, 1, '2024-01-02 07:25:08.443160', 40, 139),
(33, 2, '2024-01-02 07:25:08.451156', 40, 138);

-- --------------------------------------------------------

--
-- Table structure for table `app_post`
--

CREATE TABLE `app_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `description2` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` time(6) NOT NULL,
  `Post_category_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_post`
--

INSERT INTO `app_post` (`id`, `title`, `job_title`, `description`, `description2`, `image`, `created_at`, `Post_category_id_id`) VALUES
(1, 'Summer Collection', 'Fall - Winter Collections 2030', 'A specialist label creating luxury essentials. Ethically crafted with an unwavering\r\n        commitment to exceptional quality.', 'Shop now', 'static/img/hero-1.jpg', '06:18:54.000000', 1),
(2, 'Summer Collection', 'Fall - Winter Collections 2030', 'A specialist label creating luxury essentials. Ethically crafted with an unwavering\r\n        commitment to exceptional quality.', 'Shop now', 'static/img/hero-2.jpg', '06:23:46.000000', 1),
(3, 'Clothing Collections 2030', '0', '0', '0', 'static/img/banner-1.jpg', '06:50:46.000000', 2),
(4, 'Acessories', '0', '0', '0', 'static/img/banner-2.jpg', '06:51:30.000000', 3),
(5, 'Shoes Spring 2030', '0', '0', '0', 'static/img/banner-3.jpg', '06:51:48.000000', 4),
(6, 'Clothings Hot', 'Shoe Collection', 'Accessories', '0', 'static/img/product-1.jpg', '10:12:29.000000', 5),
(7, 'DEAL OF THE WEEK', 'Multi-pocket Chest Bag Black', '0', '0', 'static/img/details-payment.png', '10:37:35.000000', 7),
(8, 'Sale Of', '29.6', '0', '0', 'static/img/product-sale.png', '10:45:21.000000', 8),
(9, 'Instagram', '#Male_Fashion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '0', 'static/img/instagram-1.jpg', '10:52:12.000000', 9),
(10, 'LATEST NEWS', 'Fashion New Trends', '0', '0', 'static/img/instagram-6.jpg', '11:00:35.000000', 10),
(11, 'What Curling Irons Are The Best Ones', '16 February 2020', '0', '0', 'static/img/blog-3_r1utDTK.jpg', '11:07:53.000000', 11),
(12, 'Eternity Bands Do Last Forever', '21 February 2020', '0', '0', 'static/img/blog-1_4XT7M96.jpg', '11:08:37.000000', 11),
(13, 'The Health Benefits Of Sunglasses', '28 February 2020', '0', '0', 'static/img/blog-2.jpg', '11:09:11.000000', 11),
(14, 'About Us', 'Home', 'About Us', '0', 'static/img/about-us.jpg', '11:25:36.000000', 12),
(15, 'Who We Are ?', '0', 'Contextual advertising programs sometimes have strict policies that need to be adhered too. Let’s take Google as an example.', '0', 'static/img/team-1.jpg', '11:32:34.000000', 13),
(16, 'Who We Do ?', '0', 'In this digital generation where information can be easily obtained within seconds, business cards still have retained their importance.', '0', 'static/img/testimonial-author_IynPH2Q.jpg', '11:33:08.000000', 13),
(17, 'Why Choose Us', '0', 'A two or three storey house is the ideal way to maximise the piece of earth on which our home sits, but for older or infirm people.', '0', 'static/img/team-2.jpg', '11:33:58.000000', 13),
(18, 'Augusta Schultz', 'Fashion Design', '“Going out after work? Take your butane curling iron with you to the office, heat it up, style your hair before you leave the office and you won’t have to make a trip back home.”', '0', 'static/img/testimonial-pic_SGNbNNN.jpg', '11:39:20.000000', 14),
(19, '102', 'Our', 'Clients', '0', 'static/img/testimonial-pic_k0rQ4F4.jpg', '11:45:45.000000', 15),
(20, '30', 'Total', 'Categories', '0', 'static/img/testimonial-pic_CfDtH7J.jpg', '11:46:24.000000', 15),
(21, '98', 'Happy', 'Customer', '0', 'static/img/testimonial-pic_1tDmLD1.jpg', '11:47:02.000000', 15),
(22, '102', 'In', 'Country', '0', 'static/img/testimonial-author.jpg', '11:51:10.000000', 15),
(23, 'OUR TEAM', 'Meet Our Team', '0', '0', 'static/img/about-us_ObKahXt.jpg', '11:52:48.000000', 16),
(24, 'John Smith', 'Fashion Design', '0', '0', 'static/img/team-1_adayOpH.jpg', '11:56:30.000000', 17),
(25, 'Christine Wise', 'C.E.O', '0', '0', 'static/img/team-2_kjmOqJd.jpg', '11:57:09.000000', 17),
(26, 'Sean Robbins', 'Manager', '0', '0', 'static/img/team-3.jpg', '11:57:42.000000', 17),
(27, 'Lucy Myers', 'Delivery', '0', '0', 'static/img/team-4.jpg', '11:58:34.000000', 17),
(28, 'PARTNER', 'Happy Clients', '0', '0', 'static/img/testimonial-author_d804bj7.jpg', '12:01:47.000000', 18),
(29, '0', '0', '0', '0', 'static/img/client-1.png', '12:03:55.000000', 19),
(30, '0', '0', '0', '0', 'static/img/client-2.png', '12:04:14.000000', 19),
(31, '0', '0', '0', '0', 'static/img/client-3.png', '12:04:29.000000', 19),
(32, '0', '0', '0', '0', 'static/img/client-4.png', '12:04:44.000000', 19),
(33, '0', '0', '0', '0', 'static/img/client-5.png', '12:05:04.000000', 19),
(34, '0', '0', '0', '0', 'static/img/client-6.png', '12:05:34.000000', 19),
(35, '0', '0', '0', '0', 'static/img/client-7.png', '12:05:50.000000', 19),
(36, '0', '0', '0', '0', 'static/img/client-8.png', '12:06:06.000000', 19),
(37, 'INFORMATION', 'Contact Us', 'As you might expect of a company that began as a high-end interiors contractor, we pay strict attention.', '0', 'static/img/client-6_sAEddRi.png', '12:13:04.000000', 20),
(38, 'America', '195 E Parker Square Dr, Parker, CO 801', '+43 982-314-0958', '0', 'static/img/client-6_5OvDGL4.png', '12:14:14.000000', 21),
(39, 'France', '109 Avenue Léon, 63 Clermont-Ferrand', '+12 345-423-9893', '0', 'static/img/client-7_wKVlUoU.png', '12:15:20.000000', 21),
(40, '0', '0', '0', '0', 'static/img/instagram-1_s2DYuYj.jpg', '17:45:03.572048', 22),
(41, '0', '0', '0', '0', 'static/img/instagram-2.jpg', '17:45:17.024493', 22),
(42, '0', '0', '0', '0', 'static/img/instagram-3.jpg', '17:45:29.336614', 22),
(43, '0', '0', '0', '0', 'static/img/instagram-4.jpg', '17:45:40.718354', 22),
(44, '0', '0', '0', '0', 'static/img/instagram-5.jpg', '17:45:57.216607', 22),
(45, '0', '0', '0', '0', 'static/img/instagram-6_5rdQHx1.jpg', '17:46:08.634249', 22),
(46, '0', '0', '0', '0', 'static/img/testimonial-pic_CgEbQSU.jpg', '16:14:55.527819', 23),
(47, '0', '0', '0', '0', 'static/img/avatar.jpg', '15:47:50.307083', 24);

-- --------------------------------------------------------

--
-- Table structure for table `app_post_category`
--

CREATE TABLE `app_post_category` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `created_at` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_post_category`
--

INSERT INTO `app_post_category` (`id`, `title`, `created_at`) VALUES
(1, 'homeslider', '06:13:51.000000'),
(2, 'homebanner', '06:48:28.000000'),
(3, 'banner2', '07:08:16.000000'),
(4, 'banner3', '07:09:08.000000'),
(5, 'categeoryhome', '10:10:47.000000'),
(7, 'deal', '10:36:23.000000'),
(8, 'bag', '10:43:55.000000'),
(9, 'instasession', '10:50:21.000000'),
(10, 'news', '10:56:57.000000'),
(11, 'newsimg', '11:06:06.000000'),
(12, 'abouthead', '11:25:00.000000'),
(13, 'question', '11:32:02.000000'),
(14, 'testimonial', '11:38:18.000000'),
(15, 'sucesschart', '11:44:48.000000'),
(16, 'teamhead', '11:51:58.000000'),
(17, 'teammembers', '11:55:33.000000'),
(18, 'partners', '12:01:11.000000'),
(19, 'clients', '12:03:12.000000'),
(20, 'contacthead', '12:09:58.000000'),
(21, 'country', '12:13:25.000000'),
(22, 'instagram__pic', '17:44:14.199578'),
(23, 'imgabout', '16:13:22.732417'),
(24, 'avatar', '15:46:57.734072');

-- --------------------------------------------------------

--
-- Table structure for table `app_product`
--

CREATE TABLE `app_product` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` time(6) NOT NULL,
  `product_category_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_product`
--

INSERT INTO `app_product` (`id`, `title`, `price`, `description`, `image`, `created_at`, `product_category_id`, `user_id`) VALUES
(137, 'Wheel chair', 2499, 'A wheelchair is a manually operated or power-driven device designed primarily for use by an individual with a mobility disability for the main purpose of indoor, or of both indoor and outdoor, locomotion.', 'product/wheelchair.jpg', '09:45:24.071778', 6, 54),
(138, 'walking stick', 4900, 'Traditional, non-folding walking sticks are best suited for those that need to use a walking stick most, if not all, of the time. Non-folding walking sticks are available in a range of materials and handle styles, with height-adjustable or fixed height options.', 'product/elbow-crutches_lbc5hp0.jpg', '14:53:46.014162', 6, 54),
(139, 'clay pots', 1399, 'A type of pot that is commonly used to cook a variety of sauces, stews, egg, potato, vegetable, meat, poultry, and fish dishes. Clay pots allow foods to be cooked with moist heat, both from the juices of the foods as they cook as well as moisture added to the porous clay.', 'product/pot1.webp', '15:10:44.827768', 7, 54);

-- --------------------------------------------------------

--
-- Table structure for table `app_product_category`
--

CREATE TABLE `app_product_category` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `created_at` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_product_category`
--

INSERT INTO `app_product_category` (`id`, `title`, `created_at`) VALUES
(1, 'shoe', '09:11:49.000000'),
(3, 'bag', '15:36:03.766223'),
(4, 'cap', '15:36:47.193024'),
(5, 'dress', '15:36:53.851164'),
(6, 'equipments', '10:06:18.670185'),
(7, 'handicrafts', '14:58:07.730772');

-- --------------------------------------------------------

--
-- Table structure for table `app_product_multi_image`
--

CREATE TABLE `app_product_multi_image` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` time(6) NOT NULL,
  `product_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_product_multi_image`
--

INSERT INTO `app_product_multi_image` (`id`, `image`, `created_at`, `product_id_id`) VALUES
(1440, 'product_multi_image/wh1_QlGho1z.jpg', '09:45:24.071778', 137),
(1441, 'product_multi_image/wheelchair_z6QIKqa.jpg', '09:45:24.085371', 137),
(1444, 'product_multi_image/Adjustable-_GZAEj6A.webp', '14:53:46.014162', 138),
(1445, 'product_multi_image/elbow-crutches_FKfxaog.jpg', '14:53:46.031079', 138),
(1448, 'product_multi_image/clay.webp', '15:10:44.827768', 139),
(1449, 'product_multi_image/pot1.webp', '15:10:44.843745', 139);

-- --------------------------------------------------------

--
-- Table structure for table `app_profile`
--

CREATE TABLE `app_profile` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `choice` varchar(3) NOT NULL,
  `roll` varchar(7) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `place` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` time(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `certificate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_profile`
--

INSERT INTO `app_profile` (`id`, `username`, `name`, `choice`, `roll`, `password`, `email`, `address`, `place`, `country`, `district`, `image`, `created_at`, `user_id`, `certificate`) VALUES
(1, '', 'sunildas', 'no', 'user', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'kerala', 'user/black_berry_kHyVysD.jpg', '18:42:54.924658', 4, '0'),
(2, '', 'sunildas', 'no', 'user', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'kerala', 'user/black_berry_gkWH41n.jpg', '14:18:37.023866', 5, '0'),
(3, '', 'sunildas', 'yes', 'user', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'kerala', 'user/avalon2_WmSs444.jpg', '14:21:57.262441', 6, '0'),
(4, '', 'sunild', 'yes', 'user', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'dfg', 'user/avalon2_vV9a3a9.jpg', '12:54:20.243604', 7, '0'),
(5, '', 'sunildas', 'yes', 'user', '', '', 'angadipuram,perinthalmanna,malappuram', 'kottakal', 'india', 'malappuram', 'user/avalon2_2TFUAkK.jpg', '13:00:48.195558', 8, '0'),
(6, '', 'sunildas', 'yes', 'user', '', '', 'add', 'parappanagadi', 'india', 'dasd', 'user/avalon2_5FAx2MR.jpg', '13:02:43.353566', 9, '0'),
(7, '', 'sunildas1', 'no', 'company', '', '', 'kochi', 'parappanagadi', 'india', 'malappuram', 'user/driving_VpW5WnL.jpeg', '14:01:45.852287', 10, '0'),
(8, '', 'sunil', 'yes', 'company', '', '', 'angadipuram,perinthalmanna', 'kottakal', 'india', 'kerala', 'user/high-ankle-boot.webp', '15:38:35.292158', 11, '0'),
(9, '', 'shadow', 'yes', 'company', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'sg', 'malappuram', 'user/tail.jpeg', '11:11:07.214974', 13, '0'),
(11, '', 'addstg', 'no', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'malappuram', 'user/tail_uhZyQv4.jpeg', '11:18:03.171987', 15, '0'),
(12, '', 'sunilap', 'no', 'company', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'malappuram', 'user/tail_SgJYe17.jpeg', '11:21:37.833971', 16, '0'),
(13, '', 'sdaf', 'yes', 'company', '', '', 'add', 'parappanagadi', 'lkknk', 'kerala', 'user/tail_CzaOrfV.jpeg', '17:36:17.250293', 25, '0'),
(14, '', 'albi', 'no', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'dasd', 'malappuram', 'user/Roronoa_Zoro_948dyyV.jpg', '17:37:39.778596', 26, '0'),
(15, '', 'albi', 'no', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'malappuram', 'user/Roronoa_Zoro_fUo5XN3.jpg', '17:50:11.571050', 30, '0'),
(16, '', 'kkk', 'no', 'company', '', '', 'add', 'angss', 'india', 'malappuram', 'user/tail_hZwV1eQ.jpeg', '11:09:20.476497', 33, '0'),
(17, '', 'kkk', 'no', 'company', '', '', 'add', 'angss', 'india', 'malappuram', 'user/tail_CvWzJkj.jpeg', '11:14:46.300133', 34, '0'),
(18, '', 'sunild', 'no', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'kerala', 'user/s4.jpeg', '12:47:34.483214', 35, ''),
(19, '', 'sunild', 'yes', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'kerala', 'user/s4_5BshkHG.jpeg', '12:51:00.145649', 36, ''),
(20, '', 'ccc', 'yes', 'company', '', '', 'add', 'parappanagadi', 'india', 'kerala', 'user/school3.jpg', '13:00:45.438323', 41, ''),
(21, '', 'albi', 'yes', 'company', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'malappuram', 'user/kurtha2.jpg', '09:29:51.155676', 42, 'disabled_certificate/python.pdf'),
(22, '', 'sunildas', 'no', 'seller', '', '', 'add', 'kottakal', 'dasd', 'malappuram', 'user/s4_HbZFTNE.jpeg', '17:08:14.271703', 43, ''),
(23, '', 'kole', 'yes', 'company', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'malappuram', 'user/Roronoa_Zoro_NFyGjfb.jpg', '14:19:10.004438', 44, 'disabled_certificate/DOC-20231120-WA0281..pdf'),
(24, '', 'bv', 'yes', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'sdfghj', 'user/ele.jpeg', '16:02:25.565832', 45, 'disabled_certificate/ele.jpeg'),
(25, '', 'wool', 'yes', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'malappuram', 'user/ele_Eo9ewNA.jpeg', '16:11:41.531128', 46, 'disabled_certificate/DOC-20231120-WA0281._5tA1V3d.pdf'),
(26, '', 'wool', 'yes', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'malappuram', 'user/ele_1Kwgb65.jpeg', '16:12:15.008673', 47, 'disabled_certificate/DOC-20231120-WA0281._703nK4G.pdf'),
(27, '', 'cxvxv', 'yes', 'seller', '', '', 'add', 'kottakal', 'india', 'malappuram', 'user/ele_MTLxxDN.jpeg', '16:15:42.047798', 48, 'disabled_certificate/DOC-20231120-WA0281._xmGOw8N.pdf'),
(28, '', 'sgf', 'no', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'kottakal', 'dasd', 'kerala', 'user/ele_fEsXMxa.jpeg', '16:34:03.857498', 49, ''),
(29, '', 'sunild', 'no', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'malappuram', 'user/ele_dczL5bb.jpeg', '16:45:26.981119', 50, ''),
(30, '', 'sunildas', 'no', 'company', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'malappuram', 'user/ele_q8vufbQ.jpeg', '16:48:51.868790', 51, ''),
(31, '', 'sunil', 'no', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'kottakal', 'india', 'kerala', 'user/ele_wJzELIg.jpeg', '16:51:42.437602', 52, ''),
(32, '', 'sunild', 'no', 'company', '', '', 'angadipuram,perinthalmanna,malappuram', 'kj', 'lkknk', 'sdfghj', 'user/ele_8RJv0Gj.jpeg', '16:55:32.194647', 53, ''),
(33, '', 'nickel', 'yes', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'malappuram', 'user/k3_ZzuASgN.jpg', '17:37:26.100354', 54, 'disabled_certificate/DOC-20231120-WA0281._CguhMzx.pdf'),
(34, '', 'sunildas', 'yes', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'kerala', 'user/ele_OwPQZxa.jpeg', '17:55:16.061146', 55, 'disabled_certificate/bag_.jpg'),
(35, '', 'sunildas', 'yes', 'company', '', '', 'add', 'parappanagadi', 'india', 'kerala', 'user/ele_dLj8Iux.jpeg', '18:06:53.940249', 56, 'disabled_certificate/bag__hGzp1cZ.jpg'),
(36, '', 'asdfg', 'no', 'user', '', '', 'sdads', 'kottakal', 'sg', 'malappuram', 'user/lb1.webp', '10:12:51.268345', 62, ''),
(37, '', 'sunild', 'yes', 'seller', '', '', 'lhkh', 'kottakal', 'india', 'jhbjkhg', 'user/bag_.jpg', '12:31:47.986873', 63, 'disabled_certificate/DOC-20231120-WA0281._xLfYlUN.pdf'),
(38, '', 'luffy', 'yes', 'seller', '', '', 'add', 'parappanagadi', 'india', 'sdfghj', 'user/b2.jpg', '15:53:01.595425', 64, 'disabled_certificate/bag__duSaEJ9.jpg'),
(39, '', 'qf', 'no', 'seller', '', '', 'sdads', 'angss', 'india', 'malappuram', 'user/bag__qVFP6WR.jpg', '16:04:45.913668', 65, ''),
(40, '', 'sunild', 'yes', 'company', '', '', 'arappuzhkkal', 'kottakal', 'cvv', 'jhbjkhg', 'user/bag__wSVQGbo.jpg', '09:33:54.379056', 66, 'disabled_certificate/avatar.jpg'),
(41, '', 'albi', 'no', 'company', '', '', 'angadipuram,perinthalmanna,malappuram', 'angss', 'cvv', 'kerala', 'user/ele_EQAR94y.jpeg', '12:32:17.321454', 67, ''),
(42, '', 'trikell', 'yes', 'seller', '', '', 'angadipuram,perinthalmanna,malappuram', 'parappanagadi', 'india', 'malappuram', 'user/avatar.jpg', '10:00:03.121645', 68, 'disabled_certificate/Sslc.pdf'),
(43, '', 'rebecca', 'no', 'user', '', '', 'angadipuram,perinthalmanna,malappuram', 'angss', 'dasd', 'malappuram', 'user/uscase.vpd.png', '12:39:10.849566', 69, ''),
(44, '', 'sluffy', 'no', 'company', '', '', 'angadipuram,perinthalmanna,malappuram', 'angss', 'india', 'dfg', 'user/carpenter.png', '18:06:27.084254', 70, '');

-- --------------------------------------------------------

--
-- Table structure for table `app_room`
--

CREATE TABLE `app_room` (
  `id` bigint(20) NOT NULL,
  `name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_room`
--

INSERT INTO `app_room` (`id`, `name`) VALUES
(31, 'sunil'),
(32, 'Room'),
(33, 'w1');

-- --------------------------------------------------------

--
-- Table structure for table `app_user_details`
--

CREATE TABLE `app_user_details` (
  `id` bigint(20) NOT NULL,
  `block_status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_user_details`
--

INSERT INTO `app_user_details` (`id`, `block_status`, `user_id`) VALUES
(1, 1, 48),
(2, 1, 28),
(3, 1, 29),
(4, 1, 51),
(5, 1, 52),
(6, 0, 53),
(7, 0, 54),
(8, 1, 55),
(9, 0, 56),
(10, 1, 62),
(11, 1, 63),
(12, 0, 64),
(13, 1, 65),
(14, 0, 66),
(15, 1, 67),
(16, 0, 68),
(17, 1, 69),
(18, 1, 70);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add address_info', 7, 'add_address_info'),
(26, 'Can change address_info', 7, 'change_address_info'),
(27, 'Can delete address_info', 7, 'delete_address_info'),
(28, 'Can view address_info', 7, 'view_address_info'),
(29, 'Can add job_category', 8, 'add_job_category'),
(30, 'Can change job_category', 8, 'change_job_category'),
(31, 'Can delete job_category', 8, 'delete_job_category'),
(32, 'Can view job_category', 8, 'view_job_category'),
(33, 'Can add order', 9, 'add_order'),
(34, 'Can change order', 9, 'change_order'),
(35, 'Can delete order', 9, 'delete_order'),
(36, 'Can view order', 9, 'view_order'),
(37, 'Can add product', 10, 'add_product'),
(38, 'Can change product', 10, 'change_product'),
(39, 'Can delete product', 10, 'delete_product'),
(40, 'Can view product', 10, 'view_product'),
(41, 'Can add product_category', 11, 'add_product_category'),
(42, 'Can change product_category', 11, 'change_product_category'),
(43, 'Can delete product_category', 11, 'delete_product_category'),
(44, 'Can view product_category', 11, 'view_product_category'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
(49, 'Can add transaction_details', 13, 'add_transaction_details'),
(50, 'Can change transaction_details', 13, 'change_transaction_details'),
(51, 'Can delete transaction_details', 13, 'delete_transaction_details'),
(52, 'Can view transaction_details', 13, 'view_transaction_details'),
(53, 'Can add product_multi_image', 14, 'add_product_multi_image'),
(54, 'Can change product_multi_image', 14, 'change_product_multi_image'),
(55, 'Can delete product_multi_image', 14, 'delete_product_multi_image'),
(56, 'Can view product_multi_image', 14, 'view_product_multi_image'),
(57, 'Can add post', 15, 'add_post'),
(58, 'Can change post', 15, 'change_post'),
(59, 'Can delete post', 15, 'delete_post'),
(60, 'Can view post', 15, 'view_post'),
(61, 'Can add order_items', 16, 'add_order_items'),
(62, 'Can change order_items', 16, 'change_order_items'),
(63, 'Can delete order_items', 16, 'delete_order_items'),
(64, 'Can view order_items', 16, 'view_order_items'),
(65, 'Can add profile', 12, 'add_profile'),
(66, 'Can change profile', 12, 'change_profile'),
(67, 'Can delete profile', 12, 'delete_profile'),
(68, 'Can view profile', 12, 'view_profile'),
(69, 'Can add jobs', 17, 'add_jobs'),
(70, 'Can change jobs', 17, 'change_jobs'),
(71, 'Can delete jobs', 17, 'delete_jobs'),
(72, 'Can view jobs', 17, 'view_jobs'),
(73, 'Can add post_category', 8, 'add_post_category'),
(74, 'Can change post_category', 8, 'change_post_category'),
(75, 'Can delete post_category', 8, 'delete_post_category'),
(76, 'Can view post_category', 8, 'view_post_category'),
(77, 'Can add job_category', 18, 'add_job_category'),
(78, 'Can change job_category', 18, 'change_job_category'),
(79, 'Can delete job_category', 18, 'delete_job_category'),
(80, 'Can view job_category', 18, 'view_job_category'),
(81, 'Can add job_application', 19, 'add_job_application'),
(82, 'Can change job_application', 19, 'change_job_application'),
(83, 'Can delete job_application', 19, 'delete_job_application'),
(84, 'Can view job_application', 19, 'view_job_application'),
(85, 'Can add user_details', 20, 'add_user_details'),
(86, 'Can change user_details', 20, 'change_user_details'),
(87, 'Can delete user_details', 20, 'delete_user_details'),
(88, 'Can view user_details', 20, 'view_user_details'),
(89, 'Can add message', 21, 'add_message'),
(90, 'Can change message', 21, 'change_message'),
(91, 'Can delete message', 21, 'delete_message'),
(92, 'Can view message', 21, 'view_message'),
(93, 'Can add room', 22, 'add_room'),
(94, 'Can change room', 22, 'change_room'),
(95, 'Can delete room', 22, 'delete_room'),
(96, 'Can view room', 22, 'view_room');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$A0zHhBWdyEXoMlLq4302wk$0Opwb9V278aowPQhzzTybJaW+SWX/hAwaNfeQ4uxuuY=', '2023-12-30 09:29:26.006873', 1, 'admin', '', '', '', 1, 1, '2023-10-31 06:09:35.113706'),
(2, 'pbkdf2_sha256$390000$RRgvetbpkRxKmpNKiLyzBG$FSSFnLXfSkrVJXFk7Gs+0wbP5tJqU6+IeSUQIhc5P4k=', '2023-10-31 13:44:16.246330', 0, 'sunildas', '', '', 'sunildasap@gmail.com', 0, 1, '2023-10-31 13:08:16.653594'),
(3, 'pbkdf2_sha256$390000$KmZzVyTE7zZYB1KJXxrRsJ$7KYzLm+Hrh1ZpgClZOtOep2C9Wcbh03GEB32j2FmV1c=', NULL, 0, 'sunildas1', '', '', 'sunildas@gmail.com', 0, 1, '2023-10-31 13:10:02.968604'),
(4, 'pbkdf2_sha256$390000$1ci6oVuNyOPncquiKKzS7N$EVUcdXCFEZPXb3LDe8fTHXFMgxC0WkcCGM5W924n0Og=', '2023-10-31 13:50:01.101086', 0, 'sunildasap1', '', '', 'sunilp@gmail.com', 0, 1, '2023-10-31 13:12:54.495785'),
(5, 'pbkdf2_sha256$390000$3PNMm2OBd2PmPRzJBBak6b$VC/OmCjrehVeoV5q3oMIwlC1PBe8vajALTCxYbnmVNw=', '2023-11-02 08:40:44.646691', 0, 'adminsir', '', '', 'albi@gmail.com', 0, 1, '2023-11-01 08:48:36.621903'),
(6, 'pbkdf2_sha256$390000$XFRcnIWjKzQV0eWaHDXrm1$6YoLkyTXXkbPOkgen1Xx18N3BOjsejLQPLJkKbz1p/k=', '2023-11-02 11:59:29.994234', 0, 'sun21', '', '', 'ssun@gmail.com', 0, 1, '2023-11-01 08:51:56.798127'),
(7, 'pbkdf2_sha256$390000$BYdgJiZiE3RWGbIk2JX9Rs$TrnbR6iEEP1GGWtYK/r9Sh5y816GLh7BXjZjTvwwDJ8=', '2023-11-03 04:01:00.578118', 0, 'admin180', '', '', 'habasalbi@gmail.com', 0, 1, '2023-11-02 07:24:19.826744'),
(8, 'pbkdf2_sha256$390000$UILuAShTidKsm5DhzwyGz5$DZ9AvZ6UBDXY18U7Q1MqULpQSzAeDdbKkF26o305Rfc=', NULL, 0, 'sunilll', '', '', 'osun@gmail.com', 0, 1, '2023-11-03 07:30:47.756836'),
(9, 'pbkdf2_sha256$390000$xDEKIwsIBa9otVSmUmFrsy$oWYlEIG+1ZScVMjL4m1F+jLr8zalgk3kZjq2r5ejXnI=', NULL, 0, 'eduk', '', '', 'waalbi@gmail.com', 0, 1, '2023-11-03 07:32:42.980288'),
(10, 'pbkdf2_sha256$390000$440KvvQONKs3GnN8zPSyh0$nS03/gGgBGcJ08bk8Wh6UiE470XcQQjj69NM/ZTB68E=', '2024-01-02 08:56:46.673542', 0, 'sadmin', '', '', 'ssunildasap@gmail.com', 0, 1, '2023-11-03 08:31:45.411931'),
(11, 'pbkdf2_sha256$390000$rLHWSDlWxFpMlCxSoL5ofW$b0qIzDg1IXxg689OowRv1CdFFXEW6gxoDEOj6AfFfDc=', '2023-11-16 05:19:35.729077', 0, 'wane', '', '', 'wasun@gmail.com', 0, 1, '2023-11-06 10:08:34.823595'),
(12, 'pbkdf2_sha256$390000$EIgNOpGTjwQI96jYTuGTbO$flNSU4gJqublADWsNu94apf7bMn4sbbCaw+5Y9mU55Y=', '2023-11-14 04:05:19.218153', 0, 'cro', '', '', 'suun@gmail.com', 0, 1, '2023-11-08 10:25:48.482837'),
(13, 'pbkdf2_sha256$390000$gkFWuHaud4wPg07D4AjqJl$kECRxnS6DPPf/aDyJJK6KXOSj13/4Y8eWqkOhjPyuEY=', NULL, 0, 'show', '', '', 'shadow@gmail.com', 0, 1, '2023-11-15 05:41:06.795239'),
(15, 'pbkdf2_sha256$390000$sHUVVPr7f1mMiGDJWC5d87$X1m0axM664b3XrG7frZ4qh3/TZqAE95KhE7Trq1xNZY=', NULL, 0, 'kam', '', '', 'addsun@gmail.com', 0, 1, '2023-11-15 05:48:02.672074'),
(16, 'pbkdf2_sha256$390000$NRxPIZ0ms1MULOa0SeueYf$13vqOw5PpdzOXHO+n3oXSKQwQS/KETd2NQL7LNhk0GE=', NULL, 0, 'sdfds', '', '', 'sdsun@gmail.com', 0, 1, '2023-11-15 05:51:37.413390'),
(17, 'pbkdf2_sha256$390000$h48f0AsiQNy5h9lUaoujDS$BWxH7MW5fMOqsQwQ2c4gB3KLwntYZloLcpfiC75k8KQ=', '2023-12-02 10:05:07.320553', 0, 'zorro', '', '', 'zorro@gmail.com', 0, 1, '2023-11-15 11:36:20.753586'),
(19, 'pbkdf2_sha256$390000$QzUabxuZORZbUMeaN6om1m$nYlmrayuoiJH6l4z2vZsKVzGJx2kkWkq+pLMr4ZTAHI=', '2023-11-16 04:40:58.212346', 0, 'zorro2', '', '', 'zorro2@gmail.com', 0, 1, '2023-11-15 11:38:28.009387'),
(20, 'pbkdf2_sha256$390000$aSnF8j3cTaYOCV9wD709O1$ELLOKhlMpXzotrfhRJuxyZpj9UGUyopJs/mXVrafEt0=', '2023-11-15 11:44:37.036734', 0, 'zorroo', '', '', 'zorro3@gmail.com', 0, 1, '2023-11-15 11:44:14.310157'),
(21, 'pbkdf2_sha256$390000$MZgrw29BveLFyNTEq7KdIh$yGMD6zYMg7aI1HllvpI2qaWE7RS3xEdExZivXpdDRlU=', NULL, 0, 'man', '', '', 'sssun@gmail.com', 0, 1, '2023-11-15 11:47:21.733885'),
(22, 'pbkdf2_sha256$390000$Xv3vayi5AUuWLabwnKmepI$ZXhhvt3io2yFxvf3b8AsuGiApIFaf8ZM3OeWnfI54Mc=', NULL, 0, 'zorro12', '', '', 'zzorro@gmail.com', 0, 1, '2023-11-15 11:51:22.129660'),
(23, 'pbkdf2_sha256$390000$1WN2xssDLgHof1W2iFL2fu$mBIEd3pt52yZa1QRBFqt25FKVWxb048a3zljrIBLSxI=', NULL, 0, 'zorro123', '', '', 'zzzorro@gmail.com', 0, 1, '2023-11-15 11:51:59.306741'),
(24, 'pbkdf2_sha256$390000$5y0z3eHFmTmZqfUfJ0qoSK$rNndRCAvNbjIjSpxGLCoxN4XJOY8DiPfNkp5lUa2pJA=', '2023-11-16 11:24:45.418704', 0, 'zzzz', '', '', 'zooz@gmail.com', 0, 1, '2023-11-15 11:54:49.705245'),
(25, 'pbkdf2_sha256$390000$OqwJT2GLULx9Q9Dp6YGrn9$5Pf5+ZRzkrGDhDcwxU+JZ0erVJ7CIzCyjNsTUbgKh20=', '2023-11-28 15:00:34.497551', 0, 'sally', '', '', 'swaalbi@gmail.com', 0, 1, '2023-11-15 12:06:16.753741'),
(26, 'pbkdf2_sha256$390000$TR2RLjrJTjkPPUGQIVBoqQ$XsPW6AC4D6iBsnfwsu3A8Ij7zzRrB1iOuaC4vMcKR70=', '2023-11-25 13:01:38.526046', 0, 'kona', '', '', 'kosun@gmail.com', 0, 1, '2023-11-15 12:07:39.299616'),
(27, 'pbkdf2_sha256$390000$bdtoIugs2IDenw9xJgwAoW$le1YUoZTJAbAi6AvmsbuCJzNQ79+wTMa4sFfXrD4tEE=', '2023-11-15 12:10:01.308751', 0, 'killer', '', '', 'skysun@gmail.com', 0, 1, '2023-11-15 12:09:48.145862'),
(28, 'pbkdf2_sha256$390000$1XMDpvXSZH3Vn7aPPTEIQa$ESSDx86fHW7xSJ6fDlFIr2wQ3aEjTjUVZ3Fzt9Tlyp8=', NULL, 0, 'donz', '', '', 'sun@gmail.com', 0, 1, '2023-11-15 12:12:54.853129'),
(29, 'pbkdf2_sha256$390000$QdWZqCwWIoBZdayl42X31e$OBlFBUPB+2iaVikE6fmHab1gbRYixQlYBmCZWImOZik=', '2023-11-15 12:15:54.152749', 0, 'sunil223', '', '', 'sunildasap34@gmail.com', 0, 1, '2023-11-15 12:15:40.177838'),
(30, 'pbkdf2_sha256$390000$Nctc0evVAKspaTfejxXCnI$nQLpc06y19905ZHBuF1HpiobMCe5BAqjEVBR+WaMpcc=', '2023-11-16 11:38:34.282639', 0, 'killl', '', '', 'sapekkagamer000@gmail.com', 0, 1, '2023-11-15 12:20:11.162918'),
(31, 'pbkdf2_sha256$390000$dGWaXW4zZ2THo28eUfu6TR$5sd4PJc12VMfN4dJpcozXv1bGtqGPRphU4/2CBC77Wk=', NULL, 0, 'sunil22', '', '', 'himasasidhar@gmail.com', 0, 1, '2023-11-16 05:37:21.582197'),
(32, 'pbkdf2_sha256$390000$ePoVAVRtT9AXah8prO4b8a$NroLw7q45zp66bkTKoFtaCl7rwjrbLncOoZpX9mtX9U=', NULL, 0, 'ksunil22', '', '', 'shimasasidhar@gmail.com', 0, 1, '2023-11-16 05:38:00.253801'),
(33, 'pbkdf2_sha256$390000$mDkSMa4DWgpqhyIC0TcDmK$X1v6eMnJDfTrjNPbypFkin/CsFAVUEir3CIyhcm0WO4=', NULL, 0, 'kkk', '', '', 'skkkunildasap@gmail.com', 0, 1, '2023-11-16 05:39:20.060569'),
(34, 'pbkdf2_sha256$390000$e44cIEwysDi0jL8FuY9wbu$cHnmF0Bg4nzVw2d8CDpl0peBayz+gHhXP6X/u+mWmHY=', '2023-11-16 05:50:46.893852', 0, 'kkk1', '', '', 'dskkkunildasap@gmail.com', 0, 1, '2023-11-16 05:44:45.922037'),
(35, 'pbkdf2_sha256$390000$t7WEbWx3s0bTFzO2Bz4GGI$XExOzHwrka7RnwEc5NUUgITUEHiJC5fYlK2POGO8jOU=', '2023-12-30 10:06:16.784894', 0, 'chadmin', '', '', 'xasunilmdigitz@gmail.com', 0, 1, '2023-11-17 07:17:34.035828'),
(36, 'pbkdf2_sha256$390000$TF8Vb5Y8Zwf9ErieRaUhsr$qHFdtKgtZc6ahczuM7I3Bdof8glD6M1x1aV2xM28ZJg=', '2023-11-17 07:21:11.206002', 0, 'schadmin', '', '', 'sxasunilmdigitz@gmail.com', 0, 1, '2023-11-17 07:20:59.745713'),
(37, 'pbkdf2_sha256$390000$K88LMYWhnM0pCu0kgYOYQc$YD4V9GgsPUVWoTAD5/bS1c/QAzZahV0LtI8qfjpO2Qg=', NULL, 0, 'robin', '', '', 'nico@gmail.com', 0, 1, '2023-11-17 07:24:22.794448'),
(38, 'pbkdf2_sha256$390000$isVUfRMBRezjXBvdhw6Ce6$N9u964mxn7cvxcIIW0GIE381oj0MavmcPvImH/bbuxo=', NULL, 0, 'nicorobin', '', '', 'snico@gmail.com', 0, 1, '2023-11-17 07:24:45.525476'),
(39, 'pbkdf2_sha256$390000$ZGAwOjM5afaCNdAkfYO6xj$k2uifEmw5SpZqIbYQv1hvLN40Z8/Zkqfvznc/OT4FMM=', NULL, 0, 'nico_robin', '', '', 'snico_@gmail.com', 0, 1, '2023-11-17 07:25:18.375104'),
(40, 'pbkdf2_sha256$390000$dJHGI6vMShwtfHSh2uNCLQ$3OPDY/TDnoJj/moFtYqlW8RsSWbVAjChOBGegBEjXBg=', NULL, 0, 'ni', '', '', 's@gmail.com', 0, 1, '2023-11-17 07:26:04.212249'),
(41, 'pbkdf2_sha256$390000$JYZDAPrNhPMGRsBW278asG$Q1/JXUnD7nt8o3y8t/DLcWHZ3yjeKYfn1EzvQy0dBlY=', '2023-11-17 07:30:56.938200', 0, 'ccc', '', '', 'ccc@gmail.com', 0, 1, '2023-11-17 07:30:45.028713'),
(42, 'pbkdf2_sha256$390000$ns4nk3gzxjCsL9RKP8AcqC$jnhAIAX+S/bbpU0z6CdRdkIActPkGl+29kCfTO9g+Pw=', '2023-11-25 09:19:10.351391', 0, 'doll', '', '', 'doll@gmail.com', 0, 1, '2023-11-18 03:59:50.768962'),
(43, 'pbkdf2_sha256$390000$2gRL8G5nBmswv3BdiZs3CP$NGZ+FQp1MFYWlXnHYHvIDAoer9ztXsgXWAfpnEVmyvo=', '2023-11-25 09:18:48.796043', 0, 'link', '', '', 'solun@gmail.com', 0, 1, '2023-11-21 11:38:13.749543'),
(44, 'pbkdf2_sha256$390000$WpT1jwUbKYod34AfuJ172b$AITNrO+0VAweE3g65OgTCvSGOZoBGc65w767ytg9K1A=', '2023-11-25 09:13:05.966893', 0, 'kone', '', '', 'ss@gmail.com', 0, 1, '2023-11-25 08:49:09.596138'),
(45, 'pbkdf2_sha256$390000$BdXKRK9u3pZurYmlgPZLKP$NXcJM0nojekKH3wWU+oSqOLjdBVgGoluoU5JZCGWgDg=', NULL, 0, 'rone', '', '', 'aasun@gmail.com', 0, 1, '2023-11-29 10:32:25.043586'),
(46, 'pbkdf2_sha256$390000$LyZoNxuuQRj0Txgm5P6zSc$I+bjS/yMZNPTk9gx8uFiDmflU7Dab1EqOJVndpz54+I=', NULL, 0, 'wool', '', '', 'woalbi@gmail.com', 0, 1, '2023-11-29 10:41:41.092526'),
(47, 'pbkdf2_sha256$390000$xJ0fGvTlEHC7KzjwCNs8CU$2C5CXlgxOurPfO6FHDe0dfG4+3csdOhZiluNxX1jr0s=', NULL, 0, 'swool', '', '', 'swoalbi@gmail.com', 0, 1, '2023-11-29 10:42:14.528021'),
(48, 'pbkdf2_sha256$390000$jUob7XCJMJGONSXKowbB3K$X+rOXj6cV3d9E0cB8uIxwKjqM0v7xiBE9ybbT82bCW4=', NULL, 0, 'dg', '', '', 'dddsunildasap@gmail.com', 0, 1, '2023-11-29 10:45:41.511779'),
(49, 'pbkdf2_sha256$390000$17djpIsBypB3C1UBEjPuZ4$M4qbEEY5RUlsgSQl1m2QaOMYQDDK2ncYyyeh7FZ+Xwc=', NULL, 0, 'qol', '', '', 'assalbi@gmail.com', 0, 1, '2023-11-29 11:04:03.490217'),
(50, 'pbkdf2_sha256$390000$Y2ydWNEDbZNHUAw6jf6ala$LIAWSf6qTQswX75ZCChRorIlyZH3uMZa8MPbuqmaWcY=', NULL, 0, 'dsadmin', '', '', 'kolsun@gmail.com', 0, 1, '2023-11-29 11:15:26.569301'),
(51, 'pbkdf2_sha256$390000$TjVoFWJZpgfHAf1hd6JmL9$Y6VQY9Y9nvXtu2zqVwJtyej9NHiWd12h/895mAGhnkM=', NULL, 0, 'sab', '', '', 'solsun@gmail.com', 0, 1, '2023-11-29 11:18:51.450329'),
(52, 'pbkdf2_sha256$390000$h957qUdhYDg6nFXk4HrnPy$MQ4SuR1LbRFSryiz0h2+nDQL2OU0J9sf+QTxFqG+BNU=', NULL, 0, 'korb', '', '', 'losun@gmail.com', 0, 1, '2023-11-29 11:21:42.035983'),
(53, 'pbkdf2_sha256$390000$GwvjAMlDIWwSFbBPiWfv3v$c0s8F73mZ1NhsVjT2270KDrmDXpGyZ5Rl6uDm7FcAwA=', '2024-01-05 04:23:33.368029', 0, 'eeel', '', '', 'weasunilmdigitz@gmail.com', 0, 1, '2023-11-29 11:25:31.743912'),
(54, 'pbkdf2_sha256$390000$vWaCNTO71bPEYDGZwU2NuO$rs4ey/8tC++xu9SepWevKTAIeRAxyJmCn4EJ6S6HGzw=', '2024-01-19 11:10:32.792547', 0, 'cobalt', '', '', 'cobal@gmail.com', 0, 1, '2023-11-29 12:07:25.703557'),
(55, 'pbkdf2_sha256$390000$ofEfs2obXaQxdpxkfKyjgT$L984GCsNbx5JM/LkaAl/cQUfEkKiUxUtJJpLqBCaY7w=', '2023-11-29 12:29:06.779754', 0, 'kolle', '', '', 'kolllsunildasap@gmail.com', 0, 1, '2023-11-29 12:25:15.564298'),
(56, 'pbkdf2_sha256$390000$2CPkp95xxVQ68504ymNWRh$OssbeBg/7LFjQ9TjpdP2+krq6Aat6jN16XGGdL8fR0o=', '2023-12-05 05:18:40.480789', 0, 'wook', '', '', 'aolsunildasap@gmail.com', 0, 1, '2023-11-29 12:36:53.508963'),
(57, 'pbkdf2_sha256$390000$7DrBnafrNeyX7A51IH8TD5$mjdPR0rd2GxzzU7F1GEE5rJpqbieafbvVx2uW3z6eVw=', '2023-12-02 10:06:41.859712', 0, 'qoo', '', '', 'wapekkagamer000@gmail.com', 0, 1, '2023-11-30 04:21:26.938029'),
(58, 'pbkdf2_sha256$390000$Jw15ISa3rFBlcbZJUDHRGW$jcLOglSS4Xio3VpOEBOkM9R1/6VfCK7w6hFkOC6a0N0=', NULL, 0, 'qool', '', '', 'swapekkagamer000@gmail.com', 0, 1, '2023-11-30 04:22:10.656428'),
(59, 'pbkdf2_sha256$390000$GTjzcIhWbCPgZL9HW7LClj$CAORFpmfFfPIMBSKbxNG4++PKSXxaxXne+OTP0u4PfY=', NULL, 0, 'coco', '', '', 'se@gm', 0, 1, '2023-11-30 04:34:27.708311'),
(60, 'pbkdf2_sha256$390000$A9ga4dhiX3fNEbmvChh3o8$jItzdNXcurGQXD8CRu27Y9Jd67MSJP9LX2sjQhXki7Y=', '2023-11-30 10:21:55.464969', 0, 'kkkkk', '', '', 'pekkagamer000@gmail.com', 0, 1, '2023-11-30 04:37:47.498485'),
(61, 'pbkdf2_sha256$390000$PgrY7dPpGkhEyJJBz8ueOy$tFW41M542oxuOIn26GLtftQ8gL7HzznOX33JhEa7moM=', NULL, 0, 'cocos', '', '', 'saaaaasunildasap@gmail.com', 0, 1, '2023-11-30 04:40:03.498468'),
(62, 'pbkdf2_sha256$390000$S0J9tEFwRvx6bRgBs8ISGt$AFbr1IiR3SpqMMej2uJllAkFFIqoNhNvGiTcLggWwOg=', '2023-11-30 04:47:59.534156', 0, 'ddd', '', '', 'eeesun@gmail.com', 0, 1, '2023-11-30 04:42:50.767985'),
(63, 'pbkdf2_sha256$390000$WSIJyqFgXv74s3HndJSk7m$ISeqiuvLBxcrKzeWPVI62Lu/MqU0ocYtPQGHSxzLGHQ=', NULL, 0, 'fgg', '', '', 'sllun@gmail.com', 0, 1, '2023-11-30 07:01:47.610610'),
(64, 'pbkdf2_sha256$390000$A3Cpw9rDPGMGghTDrjLjFL$as8QSXdNjTadoeAUhZG5oWuBJH1XKdWk9MtNcODTXFI=', '2023-11-30 11:01:41.168669', 0, 'kid', '', '', 'kidsunildasap@gmail.com', 0, 1, '2023-11-30 10:23:01.131607'),
(65, 'pbkdf2_sha256$390000$9w5olmHsmqIkPNE17c0CjN$CViW+kpYjTbXifoV6XptHTssQv+IemSc291jylVVhso=', '2023-12-05 15:08:26.076286', 0, 'ee', '', '', 'dsf@gmail.com', 0, 1, '2023-12-02 10:34:45.524575'),
(66, 'pbkdf2_sha256$390000$i5HUtifGkNfQpNM2P47t6v$aGuGj43inPZNEdy30f5mAvXHLYAcIjMpmPaJmMTfuf4=', '2023-12-08 04:05:15.708212', 0, 'ronin', '', '', 'alfa@gmail.com', 0, 1, '2023-12-08 04:03:53.985109'),
(67, 'pbkdf2_sha256$390000$JzwyE3e8R25MyPYpmCrFmb$KzQ6CnkNl2iCLd0Er9C2AGVts36nFcHCl3t1U2K0QIA=', '2023-12-14 12:12:03.960240', 0, 'kolla', '', '', 'sss@gmail.com', 0, 1, '2023-12-08 07:02:16.929621'),
(68, 'pbkdf2_sha256$390000$U3q15wFGXqhBQFKYpnvhCd$ZYH9Y9Bt9uXlTnQVZq/fWkG3y+0YVX3SD98VivvNnrE=', '2023-12-14 12:41:55.299965', 0, 'kelly', '', '', 'dsun@gmail.com', 0, 1, '2023-12-13 04:30:02.698920'),
(69, 'pbkdf2_sha256$390000$04Y4vm1aaVmxTnmj6LokkI$AtOpizodc35vAdpjG984zbW5TgpyCHkWFpS60bG+pzY=', '2023-12-28 07:09:32.905005', 0, 'rebecca', '', '', 'rebecca@gmail.com', 0, 1, '2023-12-28 07:09:10.401231'),
(70, 'pbkdf2_sha256$390000$qwKitu2N5IUD2AyceQ3xtq$wNBdIcUuvTCXh5i7f3E6UfCN9uyK2SqBrnN5rjeJw8A=', '2024-01-19 12:36:39.924264', 0, 'kolk', '', '', 'dosun@gmail.com', 0, 1, '2024-01-19 12:36:26.695162');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-31 06:13:55.167130', '1', 'job_category object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-10-31 06:19:00.288079', '1', 'post object (1)', 1, '[{\"added\": {}}]', 15, 1),
(3, '2023-10-31 06:23:47.180441', '2', 'post object (2)', 1, '[{\"added\": {}}]', 15, 1),
(4, '2023-10-31 06:42:46.363390', '2', 'post object (2)', 2, '[]', 15, 1),
(5, '2023-10-31 06:42:56.269767', '2', 'post object (2)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(6, '2023-10-31 06:43:06.065744', '1', 'post object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(7, '2023-10-31 06:48:29.245198', '2', 'job_category object (2)', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-10-31 06:50:48.085871', '3', 'post object (3)', 1, '[{\"added\": {}}]', 15, 1),
(9, '2023-10-31 06:51:32.376036', '4', 'post object (4)', 1, '[{\"added\": {}}]', 15, 1),
(10, '2023-10-31 06:51:49.707113', '5', 'post object (5)', 1, '[{\"added\": {}}]', 15, 1),
(11, '2023-10-31 06:55:13.218401', '4', 'post object (4)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 15, 1),
(12, '2023-10-31 07:08:59.970737', '3', 'job_category object (3)', 1, '[{\"added\": {}}]', 8, 1),
(13, '2023-10-31 07:09:09.388757', '4', 'job_category object (4)', 1, '[{\"added\": {}}]', 8, 1),
(14, '2023-10-31 08:26:34.471188', '4', 'banner3', 2, '[]', 8, 1),
(15, '2023-10-31 08:26:50.720198', '2', 'Summer Collection', 2, '[]', 15, 1),
(16, '2023-10-31 08:34:34.673494', '5', 'Shoes Spring 2030', 2, '[{\"changed\": {\"fields\": [\"Job category id\"]}}]', 15, 1),
(17, '2023-10-31 09:11:50.620177', '1', 'Product_category object (1)', 1, '[{\"added\": {}}]', 11, 1),
(18, '2023-10-31 09:16:57.476052', '1', 'Product object (1)', 1, '[{\"added\": {}}]', 10, 1),
(19, '2023-10-31 09:17:22.306032', '1', 'Product object (1)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(20, '2023-10-31 09:18:37.026427', '2', 'Product object (2)', 1, '[{\"added\": {}}]', 10, 1),
(21, '2023-10-31 09:19:54.307327', '3', 'Product object (3)', 1, '[{\"added\": {}}]', 10, 1),
(22, '2023-10-31 09:20:37.078217', '4', 'Product object (4)', 1, '[{\"added\": {}}]', 10, 1),
(23, '2023-10-31 09:21:23.700555', '5', 'Product object (5)', 1, '[{\"added\": {}}]', 10, 1),
(24, '2023-10-31 09:22:10.324623', '6', 'Product object (6)', 1, '[{\"added\": {}}]', 10, 1),
(25, '2023-10-31 09:23:03.187843', '7', 'Product object (7)', 1, '[{\"added\": {}}]', 10, 1),
(26, '2023-10-31 09:23:46.570373', '8', 'Product object (8)', 1, '[{\"added\": {}}]', 10, 1),
(27, '2023-10-31 10:10:50.104306', '5', 'categeoryhome', 1, '[{\"added\": {}}]', 8, 1),
(28, '2023-10-31 10:12:31.429076', '6', 'Clothings Hot', 1, '[{\"added\": {}}]', 15, 1),
(29, '2023-10-31 10:17:55.043287', '6', 'bagprice', 1, '[{\"added\": {}}]', 8, 1),
(30, '2023-10-31 10:18:55.842235', '6', 'bagprice', 3, '', 8, 1),
(31, '2023-10-31 10:19:27.491424', '2', 'Product_category object (2)', 1, '[{\"added\": {}}]', 11, 1),
(32, '2023-10-31 10:20:20.905559', '9', 'Product object (9)', 1, '[{\"added\": {}}]', 10, 1),
(33, '2023-10-31 10:36:26.158240', '7', 'deal', 1, '[{\"added\": {}}]', 8, 1),
(34, '2023-10-31 10:37:37.460250', '7', 'DEAL OF THE WEEK', 1, '[{\"added\": {}}]', 15, 1),
(35, '2023-10-31 10:43:40.417395', '2', 'Product_category object (2)', 3, '', 11, 1),
(36, '2023-10-31 10:43:56.203174', '8', 'bag', 1, '[{\"added\": {}}]', 8, 1),
(37, '2023-10-31 10:45:23.001426', '8', 'Sale Of', 1, '[{\"added\": {}}]', 15, 1),
(38, '2023-10-31 10:46:27.399441', '8', 'Sale Of', 2, '[]', 15, 1),
(39, '2023-10-31 10:50:22.767131', '9', 'instasession', 1, '[{\"added\": {}}]', 8, 1),
(40, '2023-10-31 10:52:15.028533', '9', 'Instagram', 1, '[{\"added\": {}}]', 15, 1),
(41, '2023-10-31 10:56:57.898726', '10', 'news', 1, '[{\"added\": {}}]', 8, 1),
(42, '2023-10-31 11:00:36.083096', '10', 'LATEST NEWS', 1, '[{\"added\": {}}]', 15, 1),
(43, '2023-10-31 11:06:07.232673', '11', 'newsimg', 1, '[{\"added\": {}}]', 8, 1),
(44, '2023-10-31 11:07:58.496275', '11', 'What Curling Irons Are The Best Ones', 1, '[{\"added\": {}}]', 15, 1),
(45, '2023-10-31 11:08:39.017936', '12', 'Eternity Bands Do Last Forever', 1, '[{\"added\": {}}]', 15, 1),
(46, '2023-10-31 11:09:12.896878', '13', 'The Health Benefits Of Sunglasses', 1, '[{\"added\": {}}]', 15, 1),
(47, '2023-10-31 11:25:01.173203', '12', 'abouthead', 1, '[{\"added\": {}}]', 8, 1),
(48, '2023-10-31 11:25:37.891530', '14', 'About Us', 1, '[{\"added\": {}}]', 15, 1),
(49, '2023-10-31 11:30:44.016569', '14', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(50, '2023-10-31 11:32:03.256799', '13', 'question', 1, '[{\"added\": {}}]', 8, 1),
(51, '2023-10-31 11:32:35.677902', '15', 'Who We Are ?', 1, '[{\"added\": {}}]', 15, 1),
(52, '2023-10-31 11:33:10.119997', '16', 'Who We Do ?', 1, '[{\"added\": {}}]', 15, 1),
(53, '2023-10-31 11:33:59.263134', '17', 'Why Choose Us', 1, '[{\"added\": {}}]', 15, 1),
(54, '2023-10-31 11:38:20.305244', '14', 'testimonial', 1, '[{\"added\": {}}]', 8, 1),
(55, '2023-10-31 11:39:21.831244', '18', 'Augusta Schultz', 1, '[{\"added\": {}}]', 15, 1),
(56, '2023-10-31 11:43:46.054311', '18', 'Augusta Schultz', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(57, '2023-10-31 11:44:49.520902', '15', 'sucesschart', 1, '[{\"added\": {}}]', 8, 1),
(58, '2023-10-31 11:45:46.194457', '19', '102', 1, '[{\"added\": {}}]', 15, 1),
(59, '2023-10-31 11:46:26.368976', '20', '30', 1, '[{\"added\": {}}]', 15, 1),
(60, '2023-10-31 11:47:05.518762', '21', '98 %', 1, '[{\"added\": {}}]', 15, 1),
(61, '2023-10-31 11:51:12.229103', '22', '102', 1, '[{\"added\": {}}]', 15, 1),
(62, '2023-10-31 11:52:00.163393', '16', 'teamhead', 1, '[{\"added\": {}}]', 8, 1),
(63, '2023-10-31 11:52:49.475001', '23', 'OUR TEAM', 1, '[{\"added\": {}}]', 15, 1),
(64, '2023-10-31 11:55:34.393972', '17', 'teammembers', 1, '[{\"added\": {}}]', 8, 1),
(65, '2023-10-31 11:56:32.018426', '24', 'John Smith', 1, '[{\"added\": {}}]', 15, 1),
(66, '2023-10-31 11:57:10.765922', '25', 'Christine Wise', 1, '[{\"added\": {}}]', 15, 1),
(67, '2023-10-31 11:57:44.790765', '26', 'Sean Robbins', 1, '[{\"added\": {}}]', 15, 1),
(68, '2023-10-31 11:57:53.304409', '23', 'OUR TEAM', 2, '[{\"changed\": {\"fields\": [\"Post type\"]}}]', 15, 1),
(69, '2023-10-31 11:58:02.140355', '18', 'Augusta Schultz', 2, '[{\"changed\": {\"fields\": [\"Post type\"]}}]', 15, 1),
(70, '2023-10-31 11:58:35.173059', '27', 'Lucy Myers', 1, '[{\"added\": {}}]', 15, 1),
(71, '2023-10-31 12:01:12.761353', '18', 'partners', 1, '[{\"added\": {}}]', 8, 1),
(72, '2023-10-31 12:01:48.498587', '28', 'PARTNER', 1, '[{\"added\": {}}]', 15, 1),
(73, '2023-10-31 12:03:13.425364', '19', 'clients', 1, '[{\"added\": {}}]', 8, 1),
(74, '2023-10-31 12:03:57.484839', '29', '0', 1, '[{\"added\": {}}]', 15, 1),
(75, '2023-10-31 12:04:15.851453', '30', '0', 1, '[{\"added\": {}}]', 15, 1),
(76, '2023-10-31 12:04:30.583702', '31', '0', 1, '[{\"added\": {}}]', 15, 1),
(77, '2023-10-31 12:04:45.489124', '32', '0', 1, '[{\"added\": {}}]', 15, 1),
(78, '2023-10-31 12:05:06.042505', '33', '0', 1, '[{\"added\": {}}]', 15, 1),
(79, '2023-10-31 12:05:20.703174', '33', '0', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(80, '2023-10-31 12:05:35.881641', '34', '0', 1, '[{\"added\": {}}]', 15, 1),
(81, '2023-10-31 12:05:51.655508', '35', '0', 1, '[{\"added\": {}}]', 15, 1),
(82, '2023-10-31 12:06:08.130177', '36', '0', 1, '[{\"added\": {}}]', 15, 1),
(83, '2023-10-31 12:10:00.089170', '20', 'contacthead', 1, '[{\"added\": {}}]', 8, 1),
(84, '2023-10-31 12:13:05.676305', '37', 'INFORMATION', 1, '[{\"added\": {}}]', 15, 1),
(85, '2023-10-31 12:13:27.207139', '21', 'country', 1, '[{\"added\": {}}]', 8, 1),
(86, '2023-10-31 12:14:16.160752', '38', 'America', 1, '[{\"added\": {}}]', 15, 1),
(87, '2023-10-31 12:15:27.834267', '39', 'France', 1, '[{\"added\": {}}]', 15, 1),
(88, '2023-11-03 09:07:05.791282', '1', 'Product_category object (1)', 2, '[]', 11, 1),
(89, '2023-11-03 09:13:48.201502', '8', 'Product object (8)', 2, '[]', 10, 1),
(90, '2023-11-03 09:14:57.981946', '7', 'Product object (7)', 2, '[]', 10, 1),
(91, '2023-11-03 09:15:03.200859', '6', 'Product object (6)', 2, '[]', 10, 1),
(92, '2023-11-03 10:05:35.087192', '1', 'shoe', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(93, '2023-11-03 10:06:03.774279', '3', 'bag', 1, '[{\"added\": {}}]', 11, 1),
(94, '2023-11-03 10:06:14.738624', '7', 'Product object (7)', 2, '[{\"changed\": {\"fields\": [\"Product category\"]}}]', 10, 1),
(95, '2023-11-03 10:06:23.007364', '5', 'Product object (5)', 2, '[{\"changed\": {\"fields\": [\"Product category\"]}}]', 10, 1),
(96, '2023-11-03 10:06:47.201082', '4', 'cap', 1, '[{\"added\": {}}]', 11, 1),
(97, '2023-11-03 10:06:53.859164', '5', 'dress', 1, '[{\"added\": {}}]', 11, 1),
(98, '2023-11-03 10:07:05.652243', '8', 'Product object (8)', 2, '[{\"changed\": {\"fields\": [\"Product category\"]}}]', 10, 1),
(99, '2023-11-03 10:07:14.018898', '6', 'Product object (6)', 2, '[]', 10, 1),
(100, '2023-11-03 10:07:23.138337', '4', 'Product object (4)', 2, '[{\"changed\": {\"fields\": [\"Product category\"]}}]', 10, 1),
(101, '2023-11-03 10:07:31.319606', '2', 'Product object (2)', 2, '[{\"changed\": {\"fields\": [\"Product category\"]}}]', 10, 1),
(102, '2023-11-03 12:21:56.866599', '1', 'Summer Collection', 2, '[]', 15, 1),
(103, '2023-11-04 04:59:41.178407', '6', 'Product object (6)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(104, '2023-11-04 05:00:44.371766', '10', 'Product object (10)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(105, '2023-11-04 05:01:13.997590', '8', 'Product object (8)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(106, '2023-11-04 05:01:45.204553', '7', 'Product object (7)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(107, '2023-11-04 05:03:36.778493', '6', 'Product object (6)', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Image\"]}}]', 10, 1),
(108, '2023-11-04 05:03:59.960175', '5', 'Product object (5)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(109, '2023-11-04 05:05:52.968410', '4', 'Product object (4)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(110, '2023-11-04 05:06:34.215187', '3', 'Product object (3)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(111, '2023-11-04 05:07:14.280502', '2', 'Product object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(112, '2023-11-04 05:08:00.404809', '1', 'Product object (1)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(113, '2023-11-04 05:08:12.421062', '3', 'Product object (3)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(114, '2023-11-04 05:16:17.590871', '5', 'Product object (5)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(115, '2023-11-04 05:16:32.533083', '8', 'Product object (8)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(116, '2023-11-04 05:18:00.292937', '4', 'Product object (4)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(117, '2023-11-04 05:20:41.834207', '4', 'Product object (4)', 2, '[]', 10, 1),
(118, '2023-11-04 05:21:29.634810', '4', 'Product object (4)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(119, '2023-11-04 05:33:44.632443', '1', 'Product object (1)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 10, 1),
(120, '2023-11-06 09:43:35.057246', '1', 'homeslider', 2, '[]', 8, 1),
(121, '2023-11-06 09:43:56.130149', '1', 'Summer Collection', 2, '[]', 15, 1),
(122, '2023-11-06 09:44:05.301395', '2', 'Summer Collection', 2, '[]', 15, 1),
(123, '2023-11-06 10:05:08.201952', '1', 'sales', 1, '[{\"added\": {}}]', 18, 1),
(124, '2023-11-06 10:42:50.426064', '2', 'driver', 1, '[{\"added\": {}}]', 18, 1),
(125, '2023-11-06 10:42:56.482195', '2', 'driver', 2, '[]', 18, 1),
(126, '2023-11-06 10:43:11.864631', '3', 'taylor', 1, '[{\"added\": {}}]', 18, 1),
(127, '2023-11-06 11:39:14.176789', '1', 'Jobs object (1)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"Salary\", \"Skills\"]}}]', 17, 1),
(128, '2023-11-08 11:15:09.637016', '11', 'What Curling Irons Are The Best Ones', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(129, '2023-11-08 11:17:04.474374', '13', 'The Health Benefits Of Sunglasses', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(130, '2023-11-08 11:17:34.971234', '13', 'The Health Benefits Of Sunglasses', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(131, '2023-11-08 11:17:51.410517', '12', 'Eternity Bands Do Last Forever', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(132, '2023-11-08 11:30:09.194637', '10', 'Product object (10)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(133, '2023-11-08 11:48:15.570474', '5', 'dress', 2, '[]', 11, 1),
(134, '2023-11-08 11:49:07.671516', '10', 'Product object (10)', 2, '[]', 10, 1),
(135, '2023-11-09 11:42:21.737038', '11', 'Hip hop cap', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Price\", \"Description\"]}}]', 10, 1),
(136, '2023-11-10 04:19:03.940211', '13', 'The Health Benefits Of Sunglasses', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(137, '2023-11-10 04:19:22.248268', '12', 'Eternity Bands Do Last Forever', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(138, '2023-11-10 04:19:36.163248', '11', 'What Curling Irons Are The Best Ones', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(139, '2023-11-14 03:50:49.476188', '3', 'Clothing Collections 2030', 2, '[]', 15, 1),
(140, '2023-11-14 03:50:58.805390', '4', 'Acessories', 2, '[]', 15, 1),
(141, '2023-11-14 03:51:06.265916', '5', 'Shoes Spring 2030', 2, '[]', 15, 1),
(142, '2023-11-14 03:52:38.942517', '5', 'Shoes Spring 2030', 2, '[{\"changed\": {\"fields\": [\"Post category id\"]}}]', 15, 1),
(143, '2023-11-14 03:53:34.130619', '4', 'Acessories', 2, '[{\"changed\": {\"fields\": [\"Post category id\"]}}]', 15, 1),
(144, '2023-11-14 03:53:42.493091', '5', 'Shoes Spring 2030', 2, '[{\"changed\": {\"fields\": [\"Post category id\"]}}]', 15, 1),
(145, '2023-11-16 09:52:29.761383', '13', 'The Health Benefits Of Sunglasses', 2, '[]', 15, 1),
(146, '2023-11-16 09:52:37.229731', '12', 'Eternity Bands Do Last Forever', 2, '[]', 15, 1),
(147, '2023-11-16 09:52:43.271326', '11', 'What Curling Irons Are The Best Ones', 2, '[]', 15, 1),
(148, '2023-11-16 09:58:59.174297', '11', 'What Curling Irons Are The Best Ones', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(149, '2023-11-16 09:59:16.847567', '12', 'Eternity Bands Do Last Forever', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(150, '2023-11-16 09:59:20.606184', '12', 'Eternity Bands Do Last Forever', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(151, '2023-11-16 09:59:29.479402', '11', 'What Curling Irons Are The Best Ones', 2, '[]', 15, 1),
(152, '2023-11-16 09:59:42.628520', '13', 'The Health Benefits Of Sunglasses', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(153, '2023-11-21 12:14:14.207073', '22', 'instagram__pic', 1, '[{\"added\": {}}]', 8, 1),
(154, '2023-11-21 12:15:03.576438', '40', '0', 1, '[{\"added\": {}}]', 15, 1),
(155, '2023-11-21 12:15:17.024493', '41', '0', 1, '[{\"added\": {}}]', 15, 1),
(156, '2023-11-21 12:15:29.338193', '42', '0', 1, '[{\"added\": {}}]', 15, 1),
(157, '2023-11-21 12:15:40.720355', '43', '0', 1, '[{\"added\": {}}]', 15, 1),
(158, '2023-11-21 12:15:57.217756', '44', '0', 1, '[{\"added\": {}}]', 15, 1),
(159, '2023-11-21 12:16:08.636248', '45', '0', 1, '[{\"added\": {}}]', 15, 1),
(160, '2023-11-22 10:43:22.739979', '23', 'imgabout', 1, '[{\"added\": {}}]', 8, 1),
(161, '2023-11-22 10:44:55.527819', '46', '0', 1, '[{\"added\": {}}]', 15, 1),
(162, '2023-11-22 10:46:28.505109', '16', 'Who We Do ?', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(163, '2023-11-23 11:22:50.148831', '34', 'dftycgvuihb', 3, '', 10, 1),
(164, '2023-11-23 11:22:50.148831', '33', 'dftycgvuihb', 3, '', 10, 1),
(165, '2023-11-23 11:22:50.163963', '32', 'dftycgvuihb', 3, '', 10, 1),
(166, '2023-11-23 11:22:50.165285', '31', 'dftycgvuihb', 3, '', 10, 1),
(167, '2023-11-23 11:22:50.165285', '30', 'dftycgvuihb', 3, '', 10, 1),
(168, '2023-11-23 11:22:50.165285', '29', 'dftycgvuihb', 3, '', 10, 1),
(169, '2023-11-25 09:53:27.953257', '21', '98', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 15, 1),
(170, '2023-11-25 09:55:37.095948', '21', '98 &#37;', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 15, 1),
(171, '2023-11-25 09:55:50.440531', '21', '98', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 15, 1),
(172, '2023-11-25 09:56:23.771823', '21', 'int(98%)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 15, 1),
(173, '2023-11-25 09:56:45.745786', '21', '98', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 15, 1),
(174, '2023-11-29 06:39:55.156058', '3', 'tailor', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 18, 1),
(175, '2023-11-29 06:40:17.403909', '4', 'software development', 1, '[{\"added\": {}}]', 18, 1),
(176, '2023-11-29 06:40:56.800440', '5', 'electrical works', 1, '[{\"added\": {}}]', 18, 1),
(177, '2023-11-29 11:01:27.256748', '1', 'user_details object (1)', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 20, 1),
(178, '2023-11-29 11:32:40.044341', '2', 'user_details object (2)', 2, '[]', 20, 1),
(179, '2023-11-29 11:32:54.066105', '1', 'user_details object (1)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(180, '2023-11-29 11:34:05.655539', '1', 'user_details object (1)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(181, '2023-11-29 11:37:37.273884', '1', 'user_details object (1)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(182, '2023-11-29 11:50:09.043080', '1', 'user_details object (1)', 2, '[]', 20, 1),
(183, '2023-11-29 11:50:47.289603', '1', 'user_details object (1)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(184, '2023-11-29 11:50:51.887314', '6', 'user_details object (6)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(185, '2023-11-29 11:53:38.536810', '6', 'user_details object (6)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(186, '2023-11-29 12:03:36.945158', '6', 'user_details object (6)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(187, '2023-11-29 12:08:06.969996', '7', 'user_details object (7)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(188, '2023-11-29 12:28:53.221267', '8', 'user_details object (8)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(189, '2023-11-29 12:32:07.330751', '8', 'user_details object (8)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(190, '2023-11-29 12:38:01.317307', '9', 'user_details object (9)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(191, '2023-11-30 10:24:52.726571', '12', 'user_details object (12)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(192, '2023-12-02 10:16:57.746060', '24', 'avatar', 1, '[{\"added\": {}}]', 8, 1),
(193, '2023-12-02 10:17:50.309086', '47', '0', 1, '[{\"added\": {}}]', 15, 1),
(194, '2023-12-05 05:55:02.483061', '14', '', 3, '', 4, 1),
(195, '2023-12-08 04:04:56.944844', '14', 'user_details object (14)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(196, '2023-12-13 04:24:32.934884', '122', 'a bag of blu color', 3, '', 10, 1),
(197, '2023-12-13 04:24:32.934884', '116', 'eyy', 3, '', 10, 1),
(198, '2023-12-13 04:24:32.942939', '115', 'fdg', 3, '', 10, 1),
(199, '2023-12-13 04:24:32.942939', '114', 'sdfg', 3, '', 10, 1),
(200, '2023-12-13 04:24:32.942939', '112', 'df', 3, '', 10, 1),
(201, '2023-12-13 04:24:32.950938', '60', 'SFG', 3, '', 10, 1),
(202, '2023-12-13 04:24:32.950938', '59', 'rfwswg', 3, '', 10, 1),
(203, '2023-12-13 04:24:32.950938', '58', 'adsfgh', 3, '', 10, 1),
(204, '2023-12-13 04:24:32.958881', '55', 'dfgh', 3, '', 10, 1),
(205, '2023-12-13 04:24:32.958881', '48', 'dfdgh', 3, '', 10, 1),
(206, '2023-12-13 04:24:32.967960', '46', 'dsfgh', 3, '', 10, 1),
(207, '2023-12-13 04:28:45.780129', '28', 'round cap', 3, '', 10, 1),
(208, '2023-12-13 04:28:45.780129', '27', 'school bag', 3, '', 10, 1),
(209, '2023-12-13 04:28:45.780129', '26', 'school bag', 3, '', 10, 1),
(210, '2023-12-13 04:28:45.788128', '25', 'SPEQTA ', 3, '', 10, 1),
(211, '2023-12-13 04:28:45.788128', '24', 'campus', 3, '', 10, 1),
(212, '2023-12-13 04:28:45.788128', '23', 'hex cap', 3, '', 10, 1),
(213, '2023-12-13 04:28:45.797940', '22', 'ladies kurtha', 3, '', 10, 1),
(214, '2023-12-13 04:28:45.800522', '21', 't shirt', 3, '', 10, 1),
(215, '2023-12-13 04:28:45.802029', '20', 't shirt', 3, '', 10, 1),
(216, '2023-12-13 04:28:45.802029', '19', 't shirt', 3, '', 10, 1),
(217, '2023-12-13 04:28:45.802029', '12', 'shirt for men', 3, '', 10, 1),
(218, '2023-12-13 04:28:45.809357', '10', 'nike', 3, '', 10, 1),
(219, '2023-12-13 04:28:45.820656', '8', 'Basic Flowing Scarf', 3, '', 10, 1),
(220, '2023-12-13 04:28:45.822039', '7', 'Multi-pocket Chest Bag', 3, '', 10, 1),
(221, '2023-12-13 04:28:45.822039', '6', 'Ankle Boots', 3, '', 10, 1),
(222, '2023-12-13 04:28:45.828850', '5', 'Lether Backpack', 3, '', 10, 1),
(223, '2023-12-13 04:28:45.838578', '4', 'Diagonal Textured Cap', 3, '', 10, 1),
(224, '2023-12-13 04:28:45.841831', '3', 'puma', 3, '', 10, 1),
(225, '2023-12-13 04:28:45.841831', '2', 'Piqué Biker Jacket', 3, '', 10, 1),
(226, '2023-12-13 04:28:45.848288', '1', 'addidas', 3, '', 10, 1),
(227, '2023-12-13 04:30:39.062028', '16', 'user_details object (16)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1),
(228, '2023-12-13 04:36:18.678539', '6', 'equipments', 1, '[{\"added\": {}}]', 11, 1),
(229, '2023-12-13 04:46:58.012513', '39', 'sdffhbn', 3, '', 10, 1),
(230, '2023-12-30 04:10:55.946996', '134', 'Double adjustable elbow crutches', 3, '', 10, 1),
(231, '2023-12-30 04:10:55.955344', '133', 'backpack', 3, '', 10, 1),
(232, '2023-12-30 04:10:55.955344', '132', 'wheel chair', 3, '', 10, 1),
(233, '2023-12-30 04:10:55.955344', '131', 'bikers jackets', 3, '', 10, 1),
(234, '2023-12-30 04:10:55.955344', '127', 'shoe', 3, '', 10, 1),
(235, '2023-12-30 04:10:55.972157', '123', 'white cap', 3, '', 10, 1),
(236, '2023-12-30 04:11:47.653270', '29', 'Order object (29)', 3, '', 9, 1),
(237, '2023-12-30 04:11:47.653270', '28', 'Order object (28)', 3, '', 9, 1),
(238, '2023-12-30 04:11:47.653270', '27', 'Order object (27)', 3, '', 9, 1),
(239, '2023-12-30 04:11:47.668542', '26', 'Order object (26)', 3, '', 9, 1),
(240, '2023-12-30 04:11:47.669991', '25', 'Order object (25)', 3, '', 9, 1),
(241, '2023-12-30 04:11:47.669991', '24', 'Order object (24)', 3, '', 9, 1),
(242, '2023-12-30 04:11:47.669991', '23', 'Order object (23)', 3, '', 9, 1),
(243, '2023-12-30 04:11:47.669991', '22', 'Order object (22)', 3, '', 9, 1),
(244, '2023-12-30 04:11:47.669991', '21', 'Order object (21)', 3, '', 9, 1),
(245, '2023-12-30 04:11:47.685616', '20', 'Order object (20)', 3, '', 9, 1),
(246, '2023-12-30 04:11:47.687905', '19', 'Order object (19)', 3, '', 9, 1),
(247, '2023-12-30 04:11:47.690767', '18', 'Order object (18)', 3, '', 9, 1),
(248, '2023-12-30 04:11:47.690767', '17', 'Order object (17)', 3, '', 9, 1),
(249, '2023-12-30 04:11:47.690767', '16', 'Order object (16)', 3, '', 9, 1),
(250, '2023-12-30 04:11:47.698289', '15', 'Order object (15)', 3, '', 9, 1),
(251, '2023-12-30 04:11:47.702541', '14', 'Order object (14)', 3, '', 9, 1),
(252, '2023-12-30 04:11:47.706179', '13', 'Order object (13)', 3, '', 9, 1),
(253, '2023-12-30 04:11:47.706179', '12', 'Order object (12)', 3, '', 9, 1),
(254, '2023-12-30 04:11:47.714104', '11', 'Order object (11)', 3, '', 9, 1),
(255, '2023-12-30 04:11:47.714104', '10', 'Order object (10)', 3, '', 9, 1),
(256, '2023-12-30 04:11:47.722291', '9', 'Order object (9)', 3, '', 9, 1),
(257, '2023-12-30 04:11:47.722291', '8', 'Order object (8)', 3, '', 9, 1),
(258, '2023-12-30 04:11:47.730224', '7', 'Order object (7)', 3, '', 9, 1),
(259, '2023-12-30 04:11:47.738303', '6', 'Order object (6)', 3, '', 9, 1),
(260, '2023-12-30 04:11:47.738303', '5', 'Order object (5)', 3, '', 9, 1),
(261, '2023-12-30 04:11:47.746114', '4', 'Order object (4)', 3, '', 9, 1),
(262, '2023-12-30 04:11:47.746114', '3', 'Order object (3)', 3, '', 9, 1),
(263, '2023-12-30 04:11:47.754557', '2', 'Order object (2)', 3, '', 9, 1),
(264, '2023-12-30 04:12:07.310918', '32', 'Address_info object (32)', 3, '', 7, 1),
(265, '2023-12-30 04:12:07.310918', '31', 'Address_info object (31)', 3, '', 7, 1),
(266, '2023-12-30 04:12:07.327882', '29', 'Address_info object (29)', 3, '', 7, 1),
(267, '2023-12-30 04:12:07.327882', '28', 'Address_info object (28)', 3, '', 7, 1),
(268, '2023-12-30 04:12:07.327882', '26', 'Address_info object (26)', 3, '', 7, 1),
(269, '2023-12-30 04:12:07.327882', '25', 'Address_info object (25)', 3, '', 7, 1),
(270, '2023-12-30 04:12:07.342792', '23', 'Address_info object (23)', 3, '', 7, 1),
(271, '2023-12-30 04:12:07.344373', '14', 'Address_info object (14)', 3, '', 7, 1),
(272, '2023-12-30 04:12:07.344373', '11', 'Address_info object (11)', 3, '', 7, 1),
(273, '2023-12-30 09:28:07.741740', '7', 'handcrafts', 1, '[{\"added\": {}}]', 11, 1),
(274, '2023-12-30 09:29:45.914921', '7', 'handicrafts', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app', 'address_info'),
(17, 'app', 'jobs'),
(19, 'app', 'job_application'),
(18, 'app', 'job_category'),
(21, 'app', 'message'),
(9, 'app', 'order'),
(16, 'app', 'order_items'),
(15, 'app', 'post'),
(8, 'app', 'post_category'),
(10, 'app', 'product'),
(11, 'app', 'product_category'),
(14, 'app', 'product_multi_image'),
(12, 'app', 'profile'),
(22, 'app', 'room'),
(13, 'app', 'transaction_details'),
(20, 'app', 'user_details'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-31 06:08:29.873453'),
(2, 'auth', '0001_initial', '2023-10-31 06:08:30.685065'),
(3, 'admin', '0001_initial', '2023-10-31 06:08:30.919664'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-31 06:08:30.943906'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-31 06:08:30.962508'),
(6, 'app', '0001_initial', '2023-10-31 06:08:32.135541'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-10-31 06:08:32.268351'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-10-31 06:08:32.380398'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-10-31 06:08:32.417979'),
(10, 'auth', '0004_alter_user_username_opts', '2023-10-31 06:08:32.436352'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-10-31 06:08:32.521900'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-10-31 06:08:32.522960'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-10-31 06:08:32.543276'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-10-31 06:08:32.604449'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-10-31 06:08:32.638401'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-10-31 06:08:32.678245'),
(17, 'auth', '0011_update_proxy_permissions', '2023-10-31 06:08:32.707843'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-10-31 06:08:32.755560'),
(19, 'sessions', '0001_initial', '2023-10-31 06:08:32.818310'),
(20, 'app', '0002_alter_post_title', '2023-10-31 06:22:24.194713'),
(21, 'app', '0003_alter_post_image', '2023-10-31 06:39:28.208948'),
(22, 'app', '0004_rename_user_profile', '2023-10-31 08:24:52.725966'),
(23, 'app', '0005_profile_user', '2023-10-31 13:08:57.979853'),
(24, 'app', '0006_alter_profile_created_at', '2023-10-31 13:12:00.927512'),
(25, 'app', '0007_profile_choice', '2023-11-01 08:47:57.397639'),
(26, 'app', '0008_address_info_user', '2023-11-02 04:11:40.314238'),
(27, 'app', '0009_alter_address_info_created_at_and_more', '2023-11-02 04:15:58.018928'),
(28, 'app', '0010_alter_order_user', '2023-11-02 04:58:11.998701'),
(29, 'app', '0011_alter_order_subtotal_alter_order_total_price', '2023-11-02 04:59:35.045346'),
(30, 'app', '0012_alter_order_user_alter_transaction_details_user', '2023-11-02 05:03:26.496867'),
(31, 'app', '0013_rename_product_category_id_product_product_category', '2023-11-02 05:20:20.821068'),
(32, 'app', '0014_alter_address_info_name', '2023-11-02 08:59:39.148204'),
(33, 'app', '0015_rename_product_id_order_items_product', '2023-11-02 09:07:14.576513'),
(34, 'app', '0016_rename_product_order_items_product_id', '2023-11-02 09:09:07.688432'),
(35, 'app', '0017_rename_product_id_order_items_product', '2023-11-03 05:13:51.335882'),
(36, 'app', '0018_rename_product_order_items_product_id', '2023-11-03 05:17:17.920912'),
(37, 'app', '0019_alter_profile_choice', '2023-11-03 07:27:20.202119'),
(38, 'app', '0020_profile_roll_alter_profile_choice', '2023-11-03 08:27:59.958882'),
(39, 'app', '0021_jobs', '2023-11-05 10:37:42.057485'),
(40, 'app', '0022_rename_job_category_post_category_and_more', '2023-11-06 09:55:27.248955'),
(41, 'app', '0023_rename_job_category_id_post_post_category_id', '2023-11-06 09:59:58.834956'),
(42, 'app', '0024_job_category_alter_jobs_job_category', '2023-11-06 10:04:14.181140'),
(43, 'app', '0025_alter_jobs_user_id', '2023-11-07 04:07:24.401341'),
(44, 'app', '0026_product_user', '2023-11-07 05:37:17.296869'),
(45, 'app', '0027_rename_user_product_user_id', '2023-11-08 11:54:45.190527'),
(46, 'app', '0028_rename_user_id_product_user', '2023-11-08 12:00:32.636236'),
(47, 'app', '0026_product_user_id', '2023-11-08 12:07:04.414160'),
(48, 'app', '0027_alter_post_image', '2023-11-08 16:15:16.210920'),
(49, 'app', '0028_alter_post_image_alter_product_multi_image_image', '2023-11-08 16:20:16.711449'),
(50, 'app', '0029_alter_product_multi_image_product_id', '2023-11-08 16:59:55.312549'),
(51, 'app', '0030_rename_user_product_user_id', '2023-11-09 10:24:07.358152'),
(52, 'app', '0031_rename_user_id_product_user', '2023-11-09 10:24:07.362175'),
(53, 'app', '0032_remove_jobs_job_category_remove_jobs_user_id_and_more', '2023-11-09 11:30:50.225195'),
(54, 'app', '0033_initial', '2023-11-09 11:31:18.546372'),
(55, 'app', '0034_alter_product_title', '2023-11-09 12:23:30.883107'),
(56, 'app', '0035_job_application', '2023-11-14 06:16:54.486365'),
(57, 'app', '0036_job_application_job_id', '2023-11-14 06:23:32.138221'),
(58, 'app', '0037_alter_job_application_job_id', '2023-11-15 10:23:40.617313'),
(59, 'app', '0038_delete_job_application', '2023-11-15 10:46:11.745531'),
(60, 'app', '0039_job_application', '2023-11-15 10:46:28.214858'),
(61, 'app', '0040_profile_certificate', '2023-11-17 07:08:14.264002'),
(62, 'app', '0041_user_details', '2023-11-29 10:19:11.491654'),
(63, 'app', '0042_message_room', '2023-11-30 06:02:25.574591'),
(64, 'app', '0043_alter_room_name', '2023-12-01 08:30:23.000793'),
(65, 'app', '0044_message_user_id', '2023-12-02 11:45:04.710656'),
(66, 'app', '0045_remove_message_user_id', '2023-12-02 11:54:26.588311'),
(67, 'app', '0046_message_uid', '2023-12-04 05:16:27.650530'),
(68, 'app', '0047_message_receiver_id', '2023-12-05 04:30:05.380574'),
(69, 'app', '0048_delete_transaction_details', '2023-12-19 10:44:22.208493'),
(70, 'app', '0049_order_product', '2023-12-30 04:03:12.533636'),
(71, 'app', '0050_address_info_phone', '2024-01-02 05:26:48.912554'),
(72, 'app', '0051_alter_order_created_at_alter_order_items_created_at', '2024-01-02 07:06:57.099301');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0ebr7fmedwk00cug22axd64hdex15326', '.eJxVjEEOwiAQRe_C2pAhFGZw6d4zkIFBqRqalHbVeHdt0oVu_3vvbyryutS49jLHUdRZeVKn3zFxfpa2E3lwu086T22Zx6R3RR-06-sk5XU53L-Dyr1-ayIEuDlMTJJDomzSYMEhOjTBW8LCIgKekazxwVgoMIihkIOjJKjeH_EaNzo:1rDdVe:B4QblZhmvB-Q2o2YzFKOTsniB7MA6Gq_eC4My5DTFsE', '2023-12-28 04:39:42.464743'),
('19ygnu37rjyypfxerhtagnikkvafha92', '.eJxVjMsOwiAQRf-FtSHA8Cgu3fsNZBhAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hTuzMjGan3zEiPXLbSbpju3VOva3LHPmu8IMOfu0pPy-H-3dQcdRvLWNRBCoCGIICFqX0WkkimYwR2QnrgFJWE0zkyaIvQhkErcFF7Z1n7w_3OjdA:1rAm1c:YKASQS36T9IGn83tIXL5F1A1qLx2UQhk4AOLhTO3wRk', '2023-12-20 07:08:52.424887'),
('2cnky00gzw3qz57dfhvamfj0b8txhsmx', '.eJxVjMsOwiAQRf-FtSFDYaC4dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOQoE4_Y5M8ZHbTtKd2m2WcW7rMrHcFXnQLq9zys_L4f4dVOr1W2MqQxkBksfBokXlWRnPjBFGiGAsW2W0LgqAjaNiPFiO6Mih0U5b8f4A3KA2pw:1qzIIi:GBjf-_751j7a_UwwAoZyXnDHQmwq7pdV5idLCrriuWY', '2023-11-18 15:11:04.133100'),
('2ivj6leoixxnc2nmyx7qi3edq04d1e8r', '.eJxVjLEOwjAMRP8lM4oc4ySIkZ1viOzEkAJKpaadEP9OK3WA7XTv3b1N4mWuaek6paGYs3Hm8NsJ56e2DZQHt_to89jmaRC7KXan3V7Hoq_L7v4dVO51XdPRETgNgi5EQOESRSHTyeuaIXARCaSEigQQvXAsgKwMLviMN_P5AtpON_c:1qytAl:Rd6lUqkuVgjzTFgp0j5k-RsUgrBEXWF-guEW6xF9wRs', '2023-11-17 12:21:11.303573'),
('5gbkb6fgb5twn2utdh8ydhq499e8mfgq', '.eJxVjMsOwiAQRf-FtSHA8Cgu3fsNZBhAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hTuzMjGan3zEiPXLbSbpju3VOva3LHPmu8IMOfu0pPy-H-3dQcdRvLWNRBCoCGIICFqX0WkkimYwR2QnrgFJWE0zkyaIvQhkErcFF7Z1n7w_3OjdA:1r8wrJ:87Ia0yvMzjANuXXj4K2Bx67GSixzIJrxH1iS45Saysw', '2023-12-15 06:18:41.251922'),
('5yclvyev1c9tpxsunbgimk9fuw8b77re', '.eJxVjMsOwiAQRf-FtSHA8Cgu3fsNZBhAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hTuzMjGan3zEiPXLbSbpju3VOva3LHPmu8IMOfu0pPy-H-3dQcdRvLWNRBCoCGIICFqX0WkkimYwR2QnrgFJWE0zkyaIvQhkErcFF7Z1n7w_3OjdA:1rAm6Z:Go_67ggTPWgBmwp_20HL0SsCXSzjO7OLW6zCV2Q8BkE', '2023-12-20 07:13:59.216861'),
('6cbc3xmoai7hpt6kjdjqii16r5ebemgf', '.eJxVjMsOwiAQRf-FtSFDYaC4dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOQoE4_Y5M8ZHbTtKd2m2WcW7rMrHcFXnQLq9zys_L4f4dVOr1W2MqQxkBksfBokXlWRnPjBFGiGAsW2W0LgqAjaNiPFiO6Mih0U5b8f4A3KA2pw:1r0ym7:DfxTv1cH0rKH6KxPfQ62xC7HM3g96JukSa5EoLa97mw', '2023-11-23 06:44:23.432858'),
('77ykzrxtir1a9dt7g03mpwkh3t58vuhm', '.eJxVjMsOwiAQRf-FtSFDYaC4dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOQoE4_Y5M8ZHbTtKd2m2WcW7rMrHcFXnQLq9zys_L4f4dVOr1W2MqQxkBksfBokXlWRnPjBFGiGAsW2W0LgqAjaNiPFiO6Mih0U5b8f4A3KA2pw:1r1Oo6:APlXIvYAYkaqcZQbP1VNIwVZID4W2q_wkiHNaVLcN9Q', '2023-11-24 10:32:10.813103'),
('7aua2farcds7gflntinzjouqf10pqycm', '.eJxVjEsOwjAMBe-SNYrSpnZsluw5Q-TGKSmgVOpnhbg7VOoCtm9m3stE2dYStyXPcVRzNk1rTr9jL-mR6070LvU22TTVdR57uyv2oIu9Tpqfl8P9OyiylG_tKVGP4tklUgD0gTsgYm06DB2DYwiYQAQcoVd10g4s2AyKvk2C5v0B1NU3Ag:1r2kfB:oFQD3rWWM7bD7fsUl1_WOTVo9HWTnlWDAJttXLkxhx0', '2023-11-28 04:04:33.746320'),
('93b21v05nimzhccsuw4i3k9s8lylh703', '.eJxVjLsOgzAMAP_FM4owSRySsXu_AQXbFNoKJB4T4t9bJIZ2vTvdDk3e1r7ZFp2bQSABIhS_sM380vE08szjYzI8jes8tOZMzGUXc59E37er_Rv0eenPbwxI0gl7H9FXFCJFG7wGV0WxSo5QI6KqlFqrJe5IyAZshbuStf5OOc8rpB0CJCzAQnLH8QGtID0N:1r2sZE:IXPqXzEostrFm-4YZy1H6mSGLmPV625qx345mmilRzw', '2023-11-28 12:30:56.737034'),
('abyltc70y58t51q7kxe4l5qfh9m1yytl', '.eJxVjDsOwjAQBe_iGln-bmJKes5grb1rHECOFCcV4u4QKQW0b2beS0Tc1hq3zkucSJyF9eL0OybMD247oTu22yzz3NZlSnJX5EG7vM7Ez8vh_h1U7PVbswcqlHwZvR-B0ToTAhUT2FgoCpS2QIiki4PECtUAg-OMQWVMXifx_gAZ3ziW:1r3xyu:0Zh4DDikrxgXSbfxqzbqifT0XZ6NRdRNCQLl7igLpdw', '2023-12-01 12:29:56.113814'),
('balbw8imdfnff4oq2lb4pm3ec28nex1x', '.eJxVjMsOwiAQRf-FtSG8oS7d-w1kGAapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKc2ZlZzU6_YwJ8UNtJvkO7dY69rcuc-K7wgw5-7Zmel8P9O6gw6rcOqFBLI32yVhcqRaBRUinjDKUQrM3CF2GAFKIHcuDBeTOFScsgbVDs_QH5ojdN:1rJWEE:rtDnLr6hvxyplebFMWoZg8fUFXk0SDDeNARGUrhfxsc', '2024-01-13 10:06:02.025723'),
('bdjtcc4wdjixptyqrxnwrn573v4lba83', '.eJxVjLsOwjAMAP8lM4poTR5mZO83VE7skAJKpKadEP-OInWA9e50bzXTvuV5b7LOC6urMqBOvzBQfErphh9U7lXHWrZ1Cbon-rBNT5XldTvav0Gmlvs3CfpoAdGMGFNgB9ajG8yAI5N3cKFBADgZTOLIRX-WFMWMIMF7turzBQHcOD8:1rLbk5:nbwDLbaKjCxFxFUTfxqArkWo620msW3DSESD9QpgtvA', '2024-01-19 04:23:33.372026'),
('c6enbhb5y89nlfpqo294zgzuw8z6xhal', '.eJxVjMsOwiAQRf-FtSFDYaC4dO83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiTOQoE4_Y5M8ZHbTtKd2m2WcW7rMrHcFXnQLq9zys_L4f4dVOr1W2MqQxkBksfBokXlWRnPjBFGiGAsW2W0LgqAjaNiPFiO6Mih0U5b8f4A3KA2pw:1r2OvL:OMmnly0vKwfPOfsGvN8nBWI0XemnAU9GMlxsRkpkEcY', '2023-11-27 04:51:47.062349'),
('cdn27rtjusrjs8uo96avoq61cboyna36', '.eJxVjLEOwjAMRP8lM4oc4ySIkZ1viOzEkAJKpaadEP9OK3WA7XTv3b1N4mWuaek6paGYs3Hm8NsJ56e2DZQHt_to89jmaRC7KXan3V7Hoq_L7v4dVO51XdPRETgNgi5EQOESRSHTyeuaIXARCaSEigQQvXAsgKwMLviMN_P5AtpON_c:1r3Z2G:UtWC9pY3Kj7ofld0tlUHfxVqfOl6oeuf9xVVdhTPHB4', '2023-11-30 09:51:44.338329'),
('dem81d3njfctc58dqankt1yxnsyfr0i7', '.eJxVjDsOgzAQRO-yNbJYr42xy_ScAa3XJpBEIPGpEHcPSBRJM8XMm7dDy9vat9uS53ZIEMAaKH7LyPLO47WkF4_PSck0rvMQ1YWoe11UM6X8edzsn6DnpT_fGDstpCORFeqoYkRvNIpgsrbMrqwcScq6plq8VOy7UlsmY8hF450_pcLzCmEHDYEKIAhYAJ55HF8h_D2J:1rBrxP:fGHUL-53h0VkkRDvOwDqdmU9cPPyMD2RbZKn4pEfIhE', '2023-12-23 07:41:03.326411'),
('dhhvywriip0vzl4ws7se688i728nvl5s', '.eJxVjMsOwiAUBf-FtSEowgWX7vsNzX2AVA0kpV0Z_12bdKHbMzPnpUZclzKuPc3jJOqiwKjD70jIj1Q3Inest6a51WWeSG-K3mnXQ5P0vO7u30HBXr61z9lTzHBKTIBgnRUybN0x2GxNPItDCEY4AtocyEVK4iBjQnKekdX7AyHbOTY:1rQo6x:3DzrwP4HUYZvD-3c3izOOYKNMxpnLDcZ8QrDbLOAXw4', '2024-02-02 12:36:39.932264'),
('dn1xxoeo92fumh1vctbpm7we88ibp8z2', '.eJxVjEEOwiAQRe_C2pC2wGBduvcMZIYZpGogKe3KeHdD0oVu_3vvv1XAfcthb7KGhdVFwaxOvyNhfErphB9Y7lXHWrZ1Id0VfdCmb5XldT3cv4OMLfd6nCGl0YqXM7nBGoqQDLiJLCciiAMZTAzgkRFptugiyUTIXtzkk_p8ATcjObc:1rIkWK:8bspRca4LS9Eflb6_Be3qGvYKjRJFFI9btzegXnDiSc', '2024-01-11 07:09:32.909008'),
('dv21y3e4u5w26ylje01ut0o5c96magpy', '.eJxVjMsOwiAQRf-FtSEDRR4u3fsNZGAGqRqalHZl_HfbpAvd3nPOfYuI61Lj2nmOI4mLUCBOv2PC_OS2E3pgu08yT22ZxyR3RR60y9tE_Loe7t9BxV63uiRynoozrAHA8WBV0ICDI4PWgj0X9LaYkjBkn5QCHTJxNtltHqIWny8GbDgo:1rBSeF:BEwFdli1DfWPn801p-pBu3WVKUtaembejYfIRP1HSwA', '2023-12-22 04:39:35.924178'),
('eb7rzeusi374ovezb0ico0x28avs6f5b', '.eJxVjMsOwiAQRf-FtSHA8Cgu3fsNZBhAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hTuzMjGan3zEiPXLbSbpju3VOva3LHPmu8IMOfu0pPy-H-3dQcdRvLWNRBCoCGIICFqX0WkkimYwR2QnrgFJWE0zkyaIvQhkErcFF7Z1n7w_3OjdA:1rJWFj:lm64PF3QTeMsA0LkfZBx8FnDGaVeeFsbEYUyyZ8i5Bk', '2024-01-13 10:07:35.523503'),
('ft7bhr0pbmxysvzxwzwcuqbjlnbiu8be', '.eJxVjDsOgzAQBe-yNbLW2Gtjl-lzBrRr45CPQOJTIe4ekCiS9s282aDldenbde6m9pkhgkaofkfh9O6Gk-QXD49RpXFYpqeoU1EXndV9zN3ndrl_gZ7n_nhTLnVpEHOg2pEjHUTbIEIJG0xonThtjSkaUaznYgM6SeTZkzXeuCOaeFogbkAQdQUOYr3vX5AzO-k:1r3bjT:RsBduk6R-QBRN7fs4ElOEpMncExpSrc5sGhP4eAOrMs', '2023-11-30 12:44:31.040466'),
('gwt3ilw8p7ib3fq0c14ulxjyx5vbp34p', '.eJxVjDsOwjAQBe_iGllrb7zOUtJzhsjrDw6gRIqTCnF3iJQC2jcz76WGsK112FpehjGps6JOnX5HCfGRp52ke5hus47ztC6j6F3RB236Oqf8vBzu30ENrX5rsJ6tQyxEBk2MYHtEEEYXqBCTMHAUwo6zF4ESrc-mLwaAU3IB1PsD0H03FA:1r8end:mCOe0LfxFPvA8JugwynSYiIASqn_5XxiR_63xwnOxJM', '2023-12-14 11:01:41.173667'),
('gy7cg96ot1wmpmcqj2i7wh4a35b710kb', '.eJxVjDsOgzAQBe-yNbKwvdjYZfqcAa2965CPQOJTIe4ekCiS9s282aCjdem7dZapezJE0Aaq3zFRfstwEn7R8BhVHodleiZ1Kuqis7qPLJ_b5f4Fepr7440lo3UmYdN6RFMwiAg1zkuwnkKL2tkSHHkdikmEtWPDtdXeNqxZyxHNNC0QNzAQXQUWotn3L65lPJU:1r0frS:GB22njts7Tzw8OLpp1hE8LZJ7yqorKFaw0IekkrfMB0', '2023-11-22 10:32:38.450584'),
('i19xjmxukb68gq1q7dt65rsf07780l54', '.eJxVjMsOwiAQRf-FtSHA8Cgu3fsNZBhAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hTuzMjGan3zEiPXLbSbpju3VOva3LHPmu8IMOfu0pPy-H-3dQcdRvLWNRBCoCGIICFqX0WkkimYwR2QnrgFJWE0zkyaIvQhkErcFF7Z1n7w_3OjdA:1rDOGO:krKzuNwmRfB8R8oDSdhXQmeo88tvAl9go3IbXLH3pwI', '2023-12-27 12:22:56.474414'),
('i3rq1dkztwzley4htw0eqp24vbndc7j3', '.eJxVjDsOgzAQRO-yNbL8wQumTM8Z0Nq7DiQRSHwqxN0DEkXSTDHz5u3Q0bb23bbI3A0MDTgPxW8ZKb1lvBZ-0ficVJrGdR6iuhB1r4tqJ5bP42b_BD0t_fkWj5w5-lx7X6OQK20InG0Q6zBr1MYhE7HJJUbRpCusSkkUdKLoTTylieYVmh0MNKYAe-ZxfAH1sz3P:1r5gvv:FIR9vTqYEmkN4vcYnxs8Wwaq8P4nRO9ZowL5NL9Q6fk', '2023-12-06 06:41:59.131141'),
('i8f9ndnxfguuvdgjamwk5ivix165256s', '.eJxVjEEOwiAQRe_C2hBEGKhL956hmRkGqRpISrsy3l2bdKHb_977LzXiupRx7TKPU1Jn5U_q8DsS8kPqRtId661pbnWZJ9Kbonfa9bUleV529--gYC_f2gIHAyJWZPA-u0DgGBEhmsECICTJyQgjZBJmZykj8jEGCJ4Jo3p_AC2oOYw:1rLLDv:YrER4gFDBiIA7ypFWxVkptEV7iryl501ZthWv6iMpJs', '2024-01-18 10:45:15.887007'),
('kfcm37yl3716cdlat258oiq0c7xqne0x', 'eyJjYXJ0Ijp7IiI6NSwiMiI6MSwiNiI6MSwiOCI6MX19:1r2lJH:CDnJfLcgVnOuA8G3PziKo7J94-o7eKOQT2sKyiHwAjk', '2023-11-28 04:45:59.456098'),
('khszh5ogperen5bvz47bt3g2xjl431p3', 'eyJjYXJ0Ijp7IjEiOjEsIjUiOjF9fQ:1rBXO7:gRcLuYk8NIp4L_6y8M7RVQeVdCcQLcXmCZ6gM0xOMZw', '2023-12-22 09:43:15.237613'),
('lfc20xugmskkyg13t0vy8o1adk4zdiqu', '.eJxVjMsOwiAQRf-FtSHA8Cgu3fsNZBhAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hTuzMjGan3zEiPXLbSbpju3VOva3LHPmu8IMOfu0pPy-H-3dQcdRvLWNRBCoCGIICFqX0WkkimYwR2QnrgFJWE0zkyaIvQhkErcFF7Z1n7w_3OjdA:1rBZ7c:s6G4Nktp25RTGLMSbdktJkYOfbKFFXg3nNt6ufCTqk4', '2023-12-22 11:34:20.082782'),
('m0kjl0dwb79p1bwlnkiu37gvdta36s4a', '.eJxVjjEOgzAQBP9yNbLOxtjYZfq8AZ19l0ASgYShQvw9IFEk7c7uaDfoaF36bi0ydwNDBA_Vb5Yov2U8Ab9ofE4qT-MyD0mdFXXRou4Ty-d2df8EPZX-WOcmGCasm9prSog2aCQXiJDYuuDF-1psa1PClFuW8CB2pkFDYnRIeEgzzQvEDRxEXR0_o973L6EAPP8:1qyW89:2EJbVfPjMPBW3GxFG6h6P9PxO2e8E9lG0d35cbyWj3I', '2023-11-16 11:44:57.361337'),
('mwd8j4qozm3f9834f7488cntxqimi7tw', '.eJxVjMsOwiAQRf-FtSHA8Cgu3fsNZBhAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hTuzMjGan3zEiPXLbSbpju3VOva3LHPmu8IMOfu0pPy-H-3dQcdRvLWNRBCoCGIICFqX0WkkimYwR2QnrgFJWE0zkyaIvQhkErcFF7Z1n7w_3OjdA:1rKIHA:PuhUdMguxovUUXaNm71svGhJrqLTHlYgIQ_sVM1ARa4', '2024-01-15 13:24:16.865888'),
('n5cswelhlar3cqbi2r65t2wfpknvns8p', '.eJxVjEEOwiAQAP_C2ZBuKUvx6L1vIMAuUjWQlPZk_Lsh6UGvM5N5C-ePPbuj8eZWElcBIC6_MPj45NINPXy5Vxlr2bc1yJ7I0za5VOLX7Wz_Btm33L_WAFKiqLUFPaKxaJXRbKbRkmKcENgCMNPAMyuMCQmVgUAxDZFn8fkC4aI3yg:1r2PrI:Vn1c8HMYM9zM1eJh6qfQ9MjU-kiw1sD9Rnw39EeMlp4', '2023-11-27 05:51:40.600976'),
('oatlnwbxvhniwarzzlxvw6nyq24ff2om', '.eJxVjDsOwjAQBe_iGln-bmJKes5grb1rHECOFCcV4u4QKQW0b2beS0Tc1hq3zkucSJyF9eL0OybMD247oTu22yzz3NZlSnJX5EG7vM7Ez8vh_h1U7PVbswcqlHwZvR-B0ToTAhUT2FgoCpS2QIiki4PECtUAg-OMQWVMXifx_gAZ3ziW:1r5lH1:Qn3f7v8Pdvrwp8djNYN4lD8RmL93uVqRE3KxKsvPKg4', '2023-12-06 11:20:03.749199'),
('ofz8qqe2hesx2uuoawv7im8kjxebb23c', '.eJxVjMsOwiAQRf-FtSG8oS7d-w1kGAapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKc2ZlZzU6_YwJ8UNtJvkO7dY69rcuc-K7wgw5-7Zmel8P9O6gw6rcOqFBLI32yVhcqRaBRUinjDKUQrM3CF2GAFKIHcuDBeTOFScsgbVDs_QH5ojdN:1rBRl7:uDnK8nsv57J7RVBJEf4ESJlq3HRdmeF0D5KPlHLrg6M', '2023-12-22 03:42:37.813024'),
('p0s6zltz7qda6csmea1m1oy2wa5cp9rt', '.eJxVjEEOwiAQRe_C2pCOQCku3fcMZGBmpGpoUtqV8e7apAvd_vfef6mI21ri1niJE6mLckadfseE-cF1J3THept1nuu6TEnvij5o0-NM_Lwe7t9BwVa-dQDMGcQEz52It4OcjTCIBW-dzcAejOtJREIW4zsZGHzqkQDQknPq_QEYejh3:1rLbcw:sLm8z2Kd-DosX_YPUTb70KZoxm3E_-cf32aejPX-Tes', '2024-01-19 04:16:10.662250'),
('qhttahiedadzsqmvf0702yy3jp0b8l4f', '.eJxVjEEOwiAQRe_C2pAhFGZw6d4zkIFBqRqalHbVeHdt0oVu_3vvbyryutS49jLHUdRZeVKn3zFxfpa2E3lwu086T22Zx6R3RR-06-sk5XU53L-Dyr1-ayIEuDlMTJJDomzSYMEhOjTBW8LCIgKekazxwVgoMIihkIOjJKjeH_EaNzo:1rDl2J:WFt2vqUedOn71PPPZJrmxjBbigQuwLJgptWUXPa6eU4', '2023-12-28 12:41:55.299965'),
('r0p0d9wkuyknbx6lsvzshtx6pi76q2vj', '.eJxVjDEOgzAQBP9yNbI4n40xZfq8AZ3PJpBEIGGoEH8PRBRJM8XO7m7Q8rr07ZrT3A4RGrAGit8wsLzSeJr45PExKZnGZR6COivqslndp5jet6v7d9Bz7o81hk4L6UBkhTqqGNEbjSIYrS2TKytHEpOuqRYvFfuu1JbJGHLBeOePU-F5gWYDhAYL0F_SwX3_ACHMPYc:1rCuuu:G5VSZp3KyG6YZcSHo45---0GdeC9m8hnxxkRZGG4b_I', '2023-12-26 05:02:48.513938'),
('r8whqeglt48mt8zacbxprvmd4450rd19', '.eJxVjDsOgzAQRO-yNbLwn3WZPmdAa68dSCKQ-FSIuwciGpop5r2ZDRJNC4QNHARdgf9nA0FWoI7cK2hpXbp2nfPU9gwBLNy6SOmThxPwm4bXKNI4LFMfxamIi87iOXL-Pi73dtDR3B3rRM47RPbWaCQdncroGkp1lMyktcyxoLGFUTlrUBbyde2sZquy1EXB_gNiHz7n:1qyUGz:8L2tI6OEQbeA8xgLs0_PcFtjl8N3qwaGVgBVICyEhGw', '2023-11-16 09:45:57.985203'),
('rkwzx49nah0rkhr20kjwkk1fh8t1594z', '.eJxVjMsOwiAQRf-FtSG8oS7d-w1kGAapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKc2ZlZzU6_YwJ8UNtJvkO7dY69rcuc-K7wgw5-7Zmel8P9O6gw6rcOqFBLI32yVhcqRaBRUinjDKUQrM3CF2GAFKIHcuDBeTOFScsgbVDs_QH5ojdN:1rBZYR:g-pLPLxyUh4qC49J4KHG0M_e-7NH3ZJYw19CgHkSPto', '2023-12-22 12:02:03.520157'),
('rkyu8alrj4p2j8s4l6p6eddn8vd8sdn7', '.eJxVjEsOwiAUAO_C2hCgfF269wzkPR6VqoGktCvj3ZWkC93OTObFIuxbiXvPa1yInZlU7PQLEdIj12HoDvXWeGp1WxfkI-GH7fzaKD8vR_s3KNDL-BIKnMBbNylLCYKYJVij7ayTtFmbyaCXQjglhfaU8AuEVck7AyHIzN4f7uU3Aw:1r2Plo:kRxw_b80xr7gY7_M7gmaTfbx6vciPDdzbVJK1ArBgao', '2023-11-27 05:46:00.045602'),
('rnin57uyjh72q3orlnifv7c92k018vmj', '.eJxVjLEOwjAMRP8lM4oc4ySIkZ1viOzEkAJKpaadEP9OK3WA7XTv3b1N4mWuaek6paGYs3Hm8NsJ56e2DZQHt_to89jmaRC7KXan3V7Hoq_L7v4dVO51XdPRETgNgi5EQOESRSHTyeuaIXARCaSEigQQvXAsgKwMLviMN_P5AtpON_c:1rFXZC:udGasIzQM65FqaB-0ZFRE8JUE4pTduYRU9vWkgjfdXs', '2024-01-02 10:43:14.017859'),
('s9w6aiijyk76eqhphw7kzutrt7hmbfu9', '.eJxVjjsOgzAQRO-yNbL8wTamTM8Z0Hq9jkkikPhUiLsHJIqkmWLmzWh26HFbS78tPPdDghYcVL9eRHrzeAXpheNzEjSN6zxEcSHiThfRTYk_j5v9Gyi4lLMtvUJJTVA6GOdybYwNzqLmYBWz9paIkaOUVnnKAWVMjFRjlg0aZ69XhPMK7Q4eWlWBPvU4vpR6PQs:1qyWP6:pBEA0bFlQxJs66APpw9nbQmGNt9SwNk3fNFeu6EQoCQ', '2023-11-16 12:02:28.310849'),
('sud8rynz6f3epu8pylgpmbf5cxmhpwzd', '.eJxVjDEOgzAQBP9yNbLA4LOhTM8b0Pl8DiQRSBgqxN9jJBqqlXZm9wCmdYPugKq20FVFTpfzLGCgfRuHPck6TAE6MDU8Sk_8lfki4UPze1G8zNs6eXUp6qZJ9UuQ3-t2HwcjpTGvNbItUUSLtMbExnpsmIjQla1GJAwSQylMGL0wN9pHIq6cRWvYk4PzD5k8P5k:1rLLDU:2QbkvP-h_YeHPzg2GEaDJL181zztTNDPsAidw3_Bz8Y', '2024-01-18 10:44:48.072090'),
('svbgbvdrje7b9dhv4j30xan1um5d5ujj', '.eJxVjrEOgzAMRP_FM4qc1CRVxu79BmQnbqGtQIIwIf69QWJot9Pdu9Nt0PFa-m5ddO6GDBEsNL-ecHrreAT5xeNzMmkayzyIORBzpou5T1k_t5P9G-h56WubLpbQqhdnfUAnnIMoJrq2WjV6ziKelJw6QgytcMjoWBmtb5N71NHEc4G41YeRGnAQ7b5_AalBPTM:1r5gCL:BNwXUI4_7szESsUOGCYBbqtScwbs9Jfn-GLj5h6Zvjk', '2023-12-06 05:54:53.645597'),
('ubhoodwo9giz246ojos9h9ab53luelm7', '.eJxVjLEOgzAMRP_FM4pMCAlh7N5vQHbsFtoKJAIT4t8LEkO73HD37m3Q0br03Zp17gaBFgIUvx1Teut4DvKi8TmZNI3LPLA5EXOt2dwn0c_tYv8EPeX-eKc6WiGs6iqUxIgulkg-EiGJ8zFoCJW6xjEjp0Y0Pki8rdGS2jIyHtJE8wLtBh5aW4A7ct-_oPo8_g:1qyS7y:EgRvplgLjiqZuwYlfeux9zqQOz8Is3AZgqiZQuoP8AE', '2023-11-16 07:28:30.578695'),
('vyg5u6fhul72qsr87rabcailahrg4uhn', '.eJxVjMsOwiAQRf-FtSHA8Cgu3fsNZBhAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hTuzMjGan3zEiPXLbSbpju3VOva3LHPmu8IMOfu0pPy-H-3dQcdRvLWNRBCoCGIICFqX0WkkimYwR2QnrgFJWE0zkyaIvQhkErcFF7Z1n7w_3OjdA:1rBSkD:ZwVyj0udZ3MXnfmrN5O-kSHJ53axpic9P46Cb2U25h4', '2023-12-22 04:45:45.653083'),
('zv6stnxs7d5tqvrohsuvby0976tly47v', '.eJxVjMsOwiAQRf-FtSHA8Cgu3fsNZBhAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hTuzMjGan3zEiPXLbSbpju3VOva3LHPmu8IMOfu0pPy-H-3dQcdRvLWNRBCoCGIICFqX0WkkimYwR2QnrgFJWE0zkyaIvQhkErcFF7Z1n7w_3OjdA:1rBYpJ:UhUJQdob2RdHtubF12zyPl04xsJ_lmqganvQlM1_ZFU', '2023-12-22 11:15:25.192377');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_address_info`
--
ALTER TABLE `app_address_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `app_jobs`
--
ALTER TABLE `app_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_jobs_job_category_id_b361ee77_fk_app_job_category_id` (`job_category_id`),
  ADD KEY `app_jobs_user_id_id_bcce6e5d_fk_auth_user_id` (`user_id_id`);

--
-- Indexes for table `app_job_application`
--
ALTER TABLE `app_job_application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_job_application_job_id_id_f59187c6_fk_app_jobs_id` (`job_id_id`),
  ADD KEY `app_job_application_user_id_id_ae3a7093_fk_auth_user_id` (`user_id_id`);

--
-- Indexes for table `app_job_category`
--
ALTER TABLE `app_job_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_message`
--
ALTER TABLE `app_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_order`
--
ALTER TABLE `app_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_order_user_id_f25a9fc4_fk_auth_user_id` (`user_id`),
  ADD KEY `app_order_product_id_02495a9c_fk_app_product_id` (`product_id`);

--
-- Indexes for table `app_order_items`
--
ALTER TABLE `app_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_order_items_order_id_fc630146_fk_app_order_id` (`order_id`),
  ADD KEY `app_order_items_product_id_id_1199c6e6_fk_app_product_id` (`product_id_id`);

--
-- Indexes for table `app_post`
--
ALTER TABLE `app_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_post_Post_category_id_id_c07d7ccb_fk_app_post_category_id` (`Post_category_id_id`);

--
-- Indexes for table `app_post_category`
--
ALTER TABLE `app_post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_product`
--
ALTER TABLE `app_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_product_product_category_id_68e01bce_fk_app_produ` (`product_category_id`),
  ADD KEY `app_product_user_id_e5c98310_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `app_product_category`
--
ALTER TABLE `app_product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_product_multi_image`
--
ALTER TABLE `app_product_multi_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_product_multi_image_product_id_id_a5a4b4df_fk_app_product_id` (`product_id_id`);

--
-- Indexes for table `app_profile`
--
ALTER TABLE `app_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `app_room`
--
ALTER TABLE `app_room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_room_name_62acabc0_uniq` (`name`) USING HASH;

--
-- Indexes for table `app_user_details`
--
ALTER TABLE `app_user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_address_info`
--
ALTER TABLE `app_address_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `app_jobs`
--
ALTER TABLE `app_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `app_job_application`
--
ALTER TABLE `app_job_application`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `app_job_category`
--
ALTER TABLE `app_job_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app_message`
--
ALTER TABLE `app_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `app_order`
--
ALTER TABLE `app_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `app_order_items`
--
ALTER TABLE `app_order_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `app_post`
--
ALTER TABLE `app_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `app_post_category`
--
ALTER TABLE `app_post_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `app_product`
--
ALTER TABLE `app_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `app_product_category`
--
ALTER TABLE `app_product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `app_product_multi_image`
--
ALTER TABLE `app_product_multi_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1450;

--
-- AUTO_INCREMENT for table `app_profile`
--
ALTER TABLE `app_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `app_room`
--
ALTER TABLE `app_room`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `app_user_details`
--
ALTER TABLE `app_user_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_address_info`
--
ALTER TABLE `app_address_info`
  ADD CONSTRAINT `app_address_info_user_id_bd707b87_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app_jobs`
--
ALTER TABLE `app_jobs`
  ADD CONSTRAINT `app_jobs_job_category_id_b361ee77_fk_app_job_category_id` FOREIGN KEY (`job_category_id`) REFERENCES `app_job_category` (`id`),
  ADD CONSTRAINT `app_jobs_user_id_id_bcce6e5d_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app_job_application`
--
ALTER TABLE `app_job_application`
  ADD CONSTRAINT `app_job_application_job_id_id_f59187c6_fk_app_jobs_id` FOREIGN KEY (`job_id_id`) REFERENCES `app_jobs` (`id`),
  ADD CONSTRAINT `app_job_application_user_id_id_ae3a7093_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app_order`
--
ALTER TABLE `app_order`
  ADD CONSTRAINT `app_order_user_id_f25a9fc4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app_order_items`
--
ALTER TABLE `app_order_items`
  ADD CONSTRAINT `app_order_items_order_id_fc630146_fk_app_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`id`),
  ADD CONSTRAINT `app_order_items_product_id_id_1199c6e6_fk_app_product_id` FOREIGN KEY (`product_id_id`) REFERENCES `app_product` (`id`);

--
-- Constraints for table `app_post`
--
ALTER TABLE `app_post`
  ADD CONSTRAINT `app_post_Post_category_id_id_c07d7ccb_fk_app_post_category_id` FOREIGN KEY (`Post_category_id_id`) REFERENCES `app_post_category` (`id`);

--
-- Constraints for table `app_product`
--
ALTER TABLE `app_product`
  ADD CONSTRAINT `app_product_product_category_id_68e01bce_fk_app_produ` FOREIGN KEY (`product_category_id`) REFERENCES `app_product_category` (`id`),
  ADD CONSTRAINT `app_product_user_id_e5c98310_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app_product_multi_image`
--
ALTER TABLE `app_product_multi_image`
  ADD CONSTRAINT `app_product_multi_image_product_id_id_a5a4b4df_fk_app_product_id` FOREIGN KEY (`product_id_id`) REFERENCES `app_product` (`id`);

--
-- Constraints for table `app_profile`
--
ALTER TABLE `app_profile`
  ADD CONSTRAINT `app_profile_user_id_87d292a0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app_user_details`
--
ALTER TABLE `app_user_details`
  ADD CONSTRAINT `app_user_details_user_id_f417e019_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
