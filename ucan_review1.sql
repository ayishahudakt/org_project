-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2025 at 11:36 AM
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
-- Database: `ucan32`
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
(1, 'EMPOWERING ABILITIES', 'Celebrating Strength, Talent & Inclusion', 'We create opportunities, resources, and communities where people of all abilities can thrive. Our commitment is to accessibility, dignity, and equal opportunity for everyone', 'JOIN US', 'static/img/How-to-improve-the-quality-of-life-of-Persons-with-Disability_Tj9Q65V.jpg', '06:18:54.000000', 1),
(2, 'EMPOWERING ABILITIES', 'Celebrating Strength, Talent & Inclusion 2030', 'We create opportunities, resources, and communities where people of all abilities can thrive. Our commitment is to accessibility, dignity, and equal opportunity for everyone.', 'JOIN US', 'static/img/copy1_LOmSjiY.jpg', '06:23:46.000000', 1),
(3, 'Handmade Products', '0', '0', '0', 'static/img/7811904_xCIf3fo.jpg', '06:50:46.000000', 2),
(4, 'Creative Designs', '0', '0', '0', 'static/img/Writing_the_perfect_job_description_teHXBSe.jpg', '06:51:30.000000', 3),
(5, 'Opportunities Jobs', '0', '0', '0', 'static/img/about-us_SPmjIKE.jpg', '06:51:48.000000', 4),
(6, 'Clothings Hot', 'Shoe Collection', 'Accessories', '0', 'static/img/product-1.jpg', '10:12:29.000000', 5),
(7, 'DEAL OF THE WEEK', 'Multi-pocket Chest Bag Black', '0', '0', 'static/img/details-payment.png', '10:37:35.000000', 7),
(8, 'Sale Of', '29.6', '0', '0', 'static/img/product-sale.png', '10:45:21.000000', 8),
(9, 'Community Highlights', '0', 'Discover the creativity and strength of our community. From handmade crafts to inspiring stories, here are glimpses of how differently-abled individuals are making a difference.', '0', 'static/img/instagram-1.jpg', '10:52:12.000000', 9),
(10, 'LATEST NEWS', 'Fashion New Trends', '0', '0', 'static/img/instagram-6.jpg', '11:00:35.000000', 10),
(11, 'What Curling Irons Are The Best Ones', '16 February 2020', '0', '0', 'static/img/blog-3_r1utDTK.jpg', '11:07:53.000000', 11),
(12, 'Eternity Bands Do Last Forever', '21 February 2020', '0', '0', 'static/img/blog-1_4XT7M96.jpg', '11:08:37.000000', 11),
(13, 'The Health Benefits Of Sunglasses', '28 February 2020', '0', '0', 'static/img/blog-2.jpg', '11:09:11.000000', 11),
(14, 'About Us', 'Home', 'About Us', '0', 'static/img/copy1_6ZyarVX.jpg', '11:25:36.000000', 12),
(15, 'Who We Are ?', '0', 'We are a supportive community created for persons with physical disabilities, offering them a space to express their abilities, showcase their products, and build confidence through opportunities.', '0', 'static/img/team-1.jpg', '11:32:34.000000', 13),
(16, 'Who We Do ?', '0', 'Our platform allows disabled persons to sell their products, apply for jobs, and connect with companies. At the same time, buyers and organizations can support them by purchasing products or offering meaningful employment.', '0', 'static/img/testimonial-author_IynPH2Q.jpg', '11:33:08.000000', 13),
(17, 'Why Choose Us', '0', 'Choosing us means standing for inclusion and empowerment. Every purchase and every job opportunity on our platform directly helps create independence, dignity, and hope for persons with disabilities.', '0', 'static/img/team-2.jpg', '11:33:58.000000', 13),
(18, 'Stephen Hawking', 'Theoretical physicist and cosmologist', '“However difficult life may seem, there is always something you can do and succeed at. It matters that you don’t just give up.”', '0', 'static/img/Stephen_Hawking.StarChild_LGJJVJI.jpg', '11:39:20.000000', 14),
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
(37, 'INFORMATION', 'Contact Us', 'We are a community built to support, connect, and empower persons with disabilities.\r\nIf you have questions, need guidance, or would like to collaborate, we’re here to listen and help.', '0', 'static/img/client-6_sAEddRi.png', '12:13:04.000000', 20),
(38, 'Head Office', 'Community Center, 2nd Floor, Main Road, Kochi, Ke', '91 98765 43210', '0', 'static/img/client-6_5OvDGL4.png', '12:14:14.000000', 21),
(39, 'Support & Helpline', 'Email: support@dpc-community.org', 'Helpline: 1800-123-456 (Toll Free)', '0', 'static/img/client-7_wKVlUoU.png', '12:15:20.000000', 21),
(40, '0', '0', '0', '0', 'static/img/61c5d7068485234d9e4ba2b4_shopping-g64ade007b_1920_qGk7Xye.jpg', '17:45:03.572048', 22),
(41, '0', '0', '0', '0', 'static/img/43307_Hj3VmBu.jpg', '17:45:17.024493', 22),
(42, '0', '0', '0', '0', 'static/img/copy3_Cojk2F2.jpg', '17:45:29.336614', 22),
(43, '0', '0', '0', '0', 'static/img/4472381_PbIkehn.jpg', '17:45:40.718354', 22),
(44, '0', '0', '0', '0', 'static/img/Writing_the_perfect_job_description_MrdqPUn.jpg', '17:45:57.216607', 22),
(45, '0', '0', '0', '0', 'static/img/digitalcreation_Qqa0rVh.jpg', '17:46:08.634249', 22),
(46, '0', '0', '0', '0', 'static/img/2311593_FVVSdBh.jpg', '16:14:55.527819', 23),
(47, '0', '0', '0', '0', 'static/img/unknown_profile_tzQuDfA.jpg', '15:47:50.307083', 24);

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
(140, 'Leather Bag', 12000, 'Good quality stylish bag', 'product/bag_8nP9pg7.jpeg', '15:01:29.848666', 3, 71);

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
(7, 'handicrafts', '14:58:07.730772'),
(8, 'other', '14:07:20.026095');

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
(1452, 'product_multi_image/s-l1200_D85KaLr.jpg', '15:01:29.887605', 140),
(1453, 'product_multi_image/bag_4gps13G.jpeg', '15:01:29.898846', 140);

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
(45, '', 'shinfa', 'yes', 'seller', '', '', 'KADANTHODI', 'Mulliakurssi', 'India', 'Malappuram', '', '14:59:38.725109', 71, 'disabled_certificate/Disability-Certificate.jpg'),
(46, '', 'Shiyana', 'no', 'company', '', '', 'KADANTHODI', 'Mulliakurssi', 'India', 'Malappuram', '', '15:02:25.704853', 72, ''),
(47, '', 'Unaisa', 'no', 'company', '', '', 'KADANTHODI', 'Mulliakurssi', 'India', 'Malappuram', '', '15:03:40.227996', 73, ''),
(48, '', 'Iqbal', 'no', 'user', '', '', 'KADANTHODI', 'Mulliakurssi', 'India', 'Malappuram', '', '15:04:29.841531', 74, '');

-- --------------------------------------------------------

--
-- Table structure for table `app_room`
--

CREATE TABLE `app_room` (
  `id` bigint(20) NOT NULL,
  `name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(19, 0, 71),
(20, 1, 72),
(21, 1, 73),
(22, 1, 74);

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
(1, 'pbkdf2_sha256$600000$S7tNzce791wS4DvJPNsyoJ$haB1h5nzbXhu5kagcHLsc9kMPBdPP/3IvxR3chv8jN0=', '2025-08-23 09:29:59.742618', 1, 'admin', '', '', '', 1, 1, '2023-10-31 06:09:35.113706'),
(71, 'pbkdf2_sha256$600000$CBeiYcy8A9SI7PG41tJOJd$i/sZ3VkZvH+0d4OQ+FSPj1D7yOv7giiBIWV0YMd5teU=', '2025-08-23 09:30:23.766824', 0, 'Shinfa', '', '', 'shinfa@gmail.com', 0, 1, '2025-08-23 09:29:37.430666'),
(72, 'pbkdf2_sha256$600000$1nHagaJ20LpziFzpJfz0V3$V9RHOOcP2f+B6mTU0KLKkpxziwTjTGXum5zawB2I450=', '2025-08-23 09:32:31.208925', 0, 'Shiyana', '', '', 'Shiyana@gmail.com', 0, 1, '2025-08-23 09:32:24.466296'),
(73, 'pbkdf2_sha256$600000$vOElNh50pGoHiatfz2wDaB$mKHSrD4nLlHYydWfLvDwvfOio9hiIbYhg9b5YJCqM0I=', '2025-08-23 09:33:46.042158', 0, 'Unaisa', '', '', 'Unaisa@gmail.com', 0, 1, '2025-08-23 09:33:39.000193'),
(74, 'pbkdf2_sha256$600000$bm4m0KfCOTASm1VFO4iPOz$Sn5T1sdPG3oG5z26zWCn6js7+q0oLNP1lBdPiXyS6O4=', '2025-08-23 09:34:37.165838', 0, 'Iqbal', '', '', 'Iqbal@gmail.com', 0, 1, '2025-08-23 09:34:28.638787');

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
(274, '2023-12-30 09:29:45.914921', '7', 'handicrafts', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 11, 1),
(275, '2025-08-23 08:36:44.998354', '7', 'admin180', 3, '', 4, 1),
(276, '2025-08-23 08:36:44.998354', '5', 'adminsir', 3, '', 4, 1),
(277, '2025-08-23 08:36:45.006409', '41', 'ccc', 3, '', 4, 1),
(278, '2025-08-23 08:36:45.008083', '35', 'chadmin', 3, '', 4, 1),
(279, '2025-08-23 08:36:45.010968', '54', 'cobalt', 3, '', 4, 1),
(280, '2025-08-23 08:36:45.010968', '59', 'coco', 3, '', 4, 1),
(281, '2025-08-23 08:36:45.010968', '61', 'cocos', 3, '', 4, 1),
(282, '2025-08-23 08:36:45.010968', '12', 'cro', 3, '', 4, 1),
(283, '2025-08-23 08:36:45.024651', '62', 'ddd', 3, '', 4, 1),
(284, '2025-08-23 08:36:45.027392', '48', 'dg', 3, '', 4, 1),
(285, '2025-08-23 08:36:45.027392', '42', 'doll', 3, '', 4, 1),
(286, '2025-08-23 08:36:45.027392', '28', 'donz', 3, '', 4, 1),
(287, '2025-08-23 08:36:45.027392', '50', 'dsadmin', 3, '', 4, 1),
(288, '2025-08-23 08:36:45.039244', '9', 'eduk', 3, '', 4, 1),
(289, '2025-08-23 08:36:45.042180', '65', 'ee', 3, '', 4, 1),
(290, '2025-08-23 08:36:45.044526', '53', 'eeel', 3, '', 4, 1),
(291, '2025-08-23 08:36:45.046285', '63', 'fgg', 3, '', 4, 1),
(292, '2025-08-23 08:36:45.046285', '15', 'kam', 3, '', 4, 1),
(293, '2025-08-23 08:36:45.054283', '68', 'kelly', 3, '', 4, 1),
(294, '2025-08-23 08:36:45.054283', '64', 'kid', 3, '', 4, 1),
(295, '2025-08-23 08:36:45.060269', '27', 'killer', 3, '', 4, 1),
(296, '2025-08-23 08:36:45.062844', '30', 'killl', 3, '', 4, 1),
(297, '2025-08-23 08:36:45.065610', '33', 'kkk', 3, '', 4, 1),
(298, '2025-08-23 08:36:45.069188', '34', 'kkk1', 3, '', 4, 1),
(299, '2025-08-23 08:36:45.072172', '60', 'kkkkk', 3, '', 4, 1),
(300, '2025-08-23 08:36:45.077050', '70', 'kolk', 3, '', 4, 1),
(301, '2025-08-23 08:36:45.080221', '67', 'kolla', 3, '', 4, 1),
(302, '2025-08-23 08:36:45.080221', '55', 'kolle', 3, '', 4, 1),
(303, '2025-08-23 08:36:45.086359', '26', 'kona', 3, '', 4, 1),
(304, '2025-08-23 08:36:45.086359', '44', 'kone', 3, '', 4, 1),
(305, '2025-08-23 08:36:45.091118', '52', 'korb', 3, '', 4, 1),
(306, '2025-08-23 08:36:45.094257', '32', 'ksunil22', 3, '', 4, 1),
(307, '2025-08-23 08:36:45.096224', '43', 'link', 3, '', 4, 1),
(308, '2025-08-23 08:36:45.101302', '21', 'man', 3, '', 4, 1),
(309, '2025-08-23 08:36:45.104036', '40', 'ni', 3, '', 4, 1),
(310, '2025-08-23 08:36:45.108260', '38', 'nicorobin', 3, '', 4, 1),
(311, '2025-08-23 08:36:45.110671', '39', 'nico_robin', 3, '', 4, 1),
(312, '2025-08-23 08:36:45.113441', '49', 'qol', 3, '', 4, 1),
(313, '2025-08-23 08:36:45.116134', '57', 'qoo', 3, '', 4, 1),
(314, '2025-08-23 08:36:45.119691', '58', 'qool', 3, '', 4, 1),
(315, '2025-08-23 08:36:45.122454', '69', 'rebecca', 3, '', 4, 1),
(316, '2025-08-23 08:36:45.125528', '37', 'robin', 3, '', 4, 1),
(317, '2025-08-23 08:36:45.128900', '45', 'rone', 3, '', 4, 1),
(318, '2025-08-23 08:36:45.131592', '66', 'ronin', 3, '', 4, 1),
(319, '2025-08-23 08:36:45.134289', '51', 'sab', 3, '', 4, 1),
(320, '2025-08-23 08:36:45.137044', '10', 'sadmin', 3, '', 4, 1),
(321, '2025-08-23 08:36:45.139787', '25', 'sally', 3, '', 4, 1),
(322, '2025-08-23 08:36:45.142346', '36', 'schadmin', 3, '', 4, 1),
(323, '2025-08-23 08:36:45.143023', '16', 'sdfds', 3, '', 4, 1),
(324, '2025-08-23 08:36:45.147432', '13', 'show', 3, '', 4, 1),
(325, '2025-08-23 08:36:45.150971', '6', 'sun21', 3, '', 4, 1),
(326, '2025-08-23 08:36:45.153709', '31', 'sunil22', 3, '', 4, 1),
(327, '2025-08-23 08:36:45.153709', '29', 'sunil223', 3, '', 4, 1),
(328, '2025-08-23 08:36:45.158891', '2', 'sunildas', 3, '', 4, 1),
(329, '2025-08-23 08:36:45.161736', '3', 'sunildas1', 3, '', 4, 1),
(330, '2025-08-23 08:36:45.164390', '4', 'sunildasap1', 3, '', 4, 1),
(331, '2025-08-23 08:36:45.167908', '8', 'sunilll', 3, '', 4, 1),
(332, '2025-08-23 08:36:45.170480', '47', 'swool', 3, '', 4, 1),
(333, '2025-08-23 08:36:45.170480', '11', 'wane', 3, '', 4, 1),
(334, '2025-08-23 08:36:45.174662', '56', 'wook', 3, '', 4, 1),
(335, '2025-08-23 08:36:45.178279', '46', 'wool', 3, '', 4, 1),
(336, '2025-08-23 08:36:45.181067', '17', 'zorro', 3, '', 4, 1),
(337, '2025-08-23 08:36:45.183713', '22', 'zorro12', 3, '', 4, 1),
(338, '2025-08-23 08:36:45.185695', '23', 'zorro123', 3, '', 4, 1),
(339, '2025-08-23 08:36:45.187438', '19', 'zorro2', 3, '', 4, 1),
(340, '2025-08-23 08:36:45.190938', '20', 'zorroo', 3, '', 4, 1),
(341, '2025-08-23 08:36:45.190938', '24', 'zzzz', 3, '', 4, 1),
(342, '2025-08-23 08:36:55.947107', '33', 'w1', 3, '', 22, 1),
(343, '2025-08-23 08:36:55.953431', '32', 'Room', 3, '', 22, 1),
(344, '2025-08-23 08:36:55.953431', '31', 'sunil', 3, '', 22, 1),
(345, '2025-08-23 08:37:20.029306', '8', 'other', 1, '[{\"added\": {}}]', 11, 1),
(346, '2025-08-23 08:37:33.430480', '24', 'avatar', 2, '[]', 8, 1),
(347, '2025-08-23 08:38:03.474308', '152', 'gg', 3, '', 21, 1),
(348, '2025-08-23 08:38:03.507963', '151', 'hlo', 3, '', 21, 1),
(349, '2025-08-23 08:38:03.521984', '150', 'gg', 3, '', 21, 1),
(350, '2025-08-23 08:38:03.524369', '149', 'hlo', 3, '', 21, 1),
(351, '2025-08-23 08:38:03.526282', '148', 'oolo', 3, '', 21, 1),
(352, '2025-08-23 08:38:03.526282', '147', 'dx', 3, '', 21, 1),
(353, '2025-08-23 08:38:03.526282', '146', 'hhh', 3, '', 21, 1),
(354, '2025-08-23 08:38:03.537648', '145', 'foo', 3, '', 21, 1),
(355, '2025-08-23 08:38:03.541012', '144', 'hlo', 3, '', 21, 1),
(356, '2025-08-23 08:38:03.543969', '143', 'hlo', 3, '', 21, 1),
(357, '2025-08-23 08:38:03.547110', '142', 'hil', 3, '', 21, 1),
(358, '2025-08-23 08:38:03.549886', '141', 'hi', 3, '', 21, 1),
(359, '2025-08-23 08:38:03.552366', '140', 'hlo', 3, '', 21, 1),
(360, '2025-08-23 08:38:03.555661', '139', 'hello', 3, '', 21, 1),
(361, '2025-08-23 08:38:03.557599', '138', 'helo', 3, '', 21, 1),
(362, '2025-08-23 08:38:03.559377', '137', 'gg', 3, '', 21, 1),
(363, '2025-08-23 08:38:03.563033', '136', 'hi', 3, '', 21, 1),
(364, '2025-08-23 08:38:03.563033', '135', 'hhjj', 3, '', 21, 1),
(365, '2025-08-23 08:38:03.569862', '134', 'gg', 3, '', 21, 1),
(366, '2025-08-23 08:38:03.573160', '133', 'hello', 3, '', 21, 1),
(367, '2025-08-23 08:38:03.574995', '132', 'sunil', 3, '', 21, 1),
(368, '2025-08-23 08:38:03.578392', '131', 'sunil', 3, '', 21, 1),
(369, '2025-08-23 08:38:03.581715', '130', 'gg', 3, '', 21, 1),
(370, '2025-08-23 08:38:03.584743', '129', 'hhh', 3, '', 21, 1),
(371, '2025-08-23 08:38:03.587367', '128', 'helo', 3, '', 21, 1),
(372, '2025-08-23 08:38:03.589266', '127', 'hi', 3, '', 21, 1),
(373, '2025-08-23 08:38:03.592658', '126', 'hello', 3, '', 21, 1),
(374, '2025-08-23 08:38:03.592658', '125', 'hlo', 3, '', 21, 1),
(375, '2025-08-23 08:38:03.592658', '124', 'hi', 3, '', 21, 1),
(376, '2025-08-23 08:38:03.592658', '123', 'j', 3, '', 21, 1),
(377, '2025-08-23 08:38:03.601446', '122', 'olll', 3, '', 21, 1),
(378, '2025-08-23 08:38:03.601446', '121', 'acac', 3, '', 21, 1),
(379, '2025-08-23 08:38:03.607663', '120', 'xccv', 3, '', 21, 1),
(380, '2025-08-23 08:38:03.609351', '119', 'sunil', 3, '', 21, 1),
(381, '2025-08-23 08:38:03.609351', '118', 'fgh', 3, '', 21, 1),
(382, '2025-08-23 08:38:03.613893', '117', 'helo', 3, '', 21, 1),
(383, '2025-08-23 08:38:03.617428', '116', 'hj', 3, '', 21, 1),
(384, '2025-08-23 08:38:03.619798', '115', 'hi', 3, '', 21, 1),
(385, '2025-08-23 08:38:03.619798', '114', 'sunil', 3, '', 21, 1),
(386, '2025-08-23 08:38:03.625742', '113', 'hlo', 3, '', 21, 1),
(387, '2025-08-23 08:38:03.628400', '112', 'helop', 3, '', 21, 1),
(388, '2025-08-23 08:38:03.628400', '111', 'hlo', 3, '', 21, 1),
(389, '2025-08-23 08:38:03.628400', '110', 'ttt', 3, '', 21, 1),
(390, '2025-08-23 08:38:03.628400', '109', 'scsfv', 3, '', 21, 1),
(391, '2025-08-23 08:38:03.628400', '108', 'vb', 3, '', 21, 1),
(392, '2025-08-23 08:38:03.640962', '107', 'hello', 3, '', 21, 1),
(393, '2025-08-23 08:38:03.643881', '106', 'hi', 3, '', 21, 1),
(394, '2025-08-23 08:38:03.644973', '105', 'helo', 3, '', 21, 1),
(395, '2025-08-23 08:38:03.647543', '104', 'hello', 3, '', 21, 1),
(396, '2025-08-23 08:38:03.650133', '103', 'hlo', 3, '', 21, 1),
(397, '2025-08-23 08:38:03.652784', '102', 'hi', 3, '', 21, 1),
(398, '2025-08-23 08:38:03.656902', '101', 'fdhh', 3, '', 21, 1),
(399, '2025-08-23 08:38:03.659341', '100', 'eeeeeeeeeee', 3, '', 21, 1),
(400, '2025-08-23 08:38:03.659341', '99', 'hhhhhhh', 3, '', 21, 1),
(401, '2025-08-23 08:38:03.659341', '98', 'gg', 3, '', 21, 1),
(402, '2025-08-23 08:38:03.659341', '97', 'sunil', 3, '', 21, 1),
(403, '2025-08-23 08:38:03.659341', '96', 'hello', 3, '', 21, 1),
(404, '2025-08-23 08:38:03.672610', '95', 'helo', 3, '', 21, 1),
(405, '2025-08-23 08:38:03.675068', '94', 'hi', 3, '', 21, 1),
(406, '2025-08-23 08:38:03.677517', '93', '', 3, '', 21, 1),
(407, '2025-08-23 08:38:03.680146', '92', 'helo', 3, '', 21, 1),
(408, '2025-08-23 08:38:03.682707', '91', 'hello', 3, '', 21, 1),
(409, '2025-08-23 08:38:03.685240', '90', 'hi', 3, '', 21, 1),
(410, '2025-08-23 08:38:03.687849', '89', 'hlo', 3, '', 21, 1),
(411, '2025-08-23 08:38:03.690849', '88', 'helo', 3, '', 21, 1),
(412, '2025-08-23 08:38:03.692728', '87', 'hi', 3, '', 21, 1),
(413, '2025-08-23 08:38:03.692728', '86', 'hello', 3, '', 21, 1),
(414, '2025-08-23 08:38:03.692728', '85', 'gg', 3, '', 21, 1),
(415, '2025-08-23 08:38:03.692728', '84', 'helo', 3, '', 21, 1),
(416, '2025-08-23 08:38:03.692728', '83', 'hlo', 3, '', 21, 1),
(417, '2025-08-23 08:38:03.705537', '82', 'hi', 3, '', 21, 1),
(418, '2025-08-23 08:38:03.708312', '81', 'sunil', 3, '', 21, 1),
(419, '2025-08-23 08:38:03.710390', '80', 'sunil', 3, '', 21, 1),
(420, '2025-08-23 08:38:03.713025', '79', 'hello', 3, '', 21, 1),
(421, '2025-08-23 08:38:03.715532', '78', 'gg', 3, '', 21, 1),
(422, '2025-08-23 08:38:03.718672', '77', 'hi', 3, '', 21, 1),
(423, '2025-08-23 08:38:03.721432', '76', 'sunil', 3, '', 21, 1),
(424, '2025-08-23 08:38:03.724481', '75', 'gg', 3, '', 21, 1),
(425, '2025-08-23 08:38:03.726802', '74', 'helo', 3, '', 21, 1),
(426, '2025-08-23 08:38:03.730208', '73', 'helo', 3, '', 21, 1),
(427, '2025-08-23 08:38:03.732763', '72', 'hlo', 3, '', 21, 1),
(428, '2025-08-23 08:38:03.735300', '71', 'hello', 3, '', 21, 1),
(429, '2025-08-23 08:38:03.737317', '70', 'gg', 3, '', 21, 1),
(430, '2025-08-23 08:38:03.737317', '69', 'gg', 3, '', 21, 1),
(431, '2025-08-23 08:38:03.742907', '68', 'helo', 3, '', 21, 1),
(432, '2025-08-23 08:38:03.745420', '67', '', 3, '', 21, 1),
(433, '2025-08-23 08:38:03.748085', '66', 'hi', 3, '', 21, 1),
(434, '2025-08-23 08:38:03.750622', '65', 'helo', 3, '', 21, 1),
(435, '2025-08-23 08:38:03.753170', '64', '', 3, '', 21, 1),
(436, '2025-08-23 08:38:03.755741', '63', 'sunil', 3, '', 21, 1),
(437, '2025-08-23 08:38:03.757855', '62', 'helo', 3, '', 21, 1),
(438, '2025-08-23 08:38:03.761397', '61', 'hlo', 3, '', 21, 1),
(439, '2025-08-23 08:38:03.763926', '60', 'hello', 3, '', 21, 1),
(440, '2025-08-23 08:38:03.766436', '59', 'hi', 3, '', 21, 1),
(441, '2025-08-23 08:38:03.769180', '58', 'hi', 3, '', 21, 1),
(442, '2025-08-23 08:38:03.771954', '57', 'helo', 3, '', 21, 1),
(443, '2025-08-23 08:38:03.774130', '56', 'gg', 3, '', 21, 1),
(444, '2025-08-23 08:38:03.775224', '55', 'sunil', 3, '', 21, 1),
(445, '2025-08-23 08:38:03.779980', '54', 'hi', 3, '', 21, 1),
(446, '2025-08-23 08:38:03.782576', '53', 'hi', 3, '', 21, 1),
(447, '2025-08-23 08:38:16.222342', '52', 'hello', 3, '', 21, 1),
(448, '2025-08-23 08:38:16.234985', '51', 'gg', 3, '', 21, 1),
(449, '2025-08-23 08:38:16.244451', '50', 'hlo', 3, '', 21, 1),
(450, '2025-08-23 08:38:16.250264', '49', 'gg', 3, '', 21, 1),
(451, '2025-08-23 08:38:16.253867', '48', 'gg', 3, '', 21, 1),
(452, '2025-08-23 08:38:16.257811', '47', 'wwwww', 3, '', 21, 1),
(453, '2025-08-23 08:38:16.261947', '46', 'sunil', 3, '', 21, 1),
(454, '2025-08-23 08:38:16.266154', '45', 'hghh', 3, '', 21, 1),
(455, '2025-08-23 08:38:16.267887', '44', 'helo', 3, '', 21, 1),
(456, '2025-08-23 08:38:16.267887', '43', 'gg', 3, '', 21, 1),
(457, '2025-08-23 08:38:16.267887', '42', 'helo', 3, '', 21, 1),
(458, '2025-08-23 08:38:16.267887', '41', 'hello', 3, '', 21, 1),
(459, '2025-08-23 08:38:16.282918', '40', 'helodc', 3, '', 21, 1),
(460, '2025-08-23 08:38:16.286817', '39', 'hlo', 3, '', 21, 1),
(461, '2025-08-23 08:38:16.291503', '38', 'hi', 3, '', 21, 1),
(462, '2025-08-23 08:38:16.291503', '37', 'hlo', 3, '', 21, 1),
(463, '2025-08-23 08:38:16.296394', '36', 'hello', 3, '', 21, 1),
(464, '2025-08-23 08:38:16.299540', '35', 'hi', 3, '', 21, 1),
(465, '2025-08-23 08:38:16.303020', '34', 'sunil', 3, '', 21, 1),
(466, '2025-08-23 08:38:16.303020', '33', 'helo', 3, '', 21, 1),
(467, '2025-08-23 08:38:16.303020', '32', '', 3, '', 21, 1),
(468, '2025-08-23 08:38:16.311433', '31', '', 3, '', 21, 1),
(469, '2025-08-23 08:38:16.313597', '30', 'hlo', 3, '', 21, 1),
(470, '2025-08-23 08:38:16.316244', '29', 'hello', 3, '', 21, 1),
(471, '2025-08-23 08:38:16.318068', '28', '', 3, '', 21, 1),
(472, '2025-08-23 08:38:16.318068', '27', '', 3, '', 21, 1),
(473, '2025-08-23 08:38:16.324564', '26', 'hlo', 3, '', 21, 1),
(474, '2025-08-23 08:38:16.324564', '25', '', 3, '', 21, 1),
(475, '2025-08-23 08:38:16.328494', '24', 'helo', 3, '', 21, 1),
(476, '2025-08-23 08:38:16.328494', '23', 'hello', 3, '', 21, 1),
(477, '2025-08-23 08:38:16.333200', '22', 'helo', 3, '', 21, 1),
(478, '2025-08-23 08:38:16.334931', '21', 'hi', 3, '', 21, 1),
(479, '2025-08-23 08:38:16.334931', '20', 'hello', 3, '', 21, 1),
(480, '2025-08-23 08:38:16.340973', '19', 'hello', 3, '', 21, 1),
(481, '2025-08-23 08:38:16.343542', '18', 'hello', 3, '', 21, 1),
(482, '2025-08-23 08:38:16.344589', '17', 'hlo', 3, '', 21, 1),
(483, '2025-08-23 08:38:16.348365', '16', 'hello', 3, '', 21, 1),
(484, '2025-08-23 08:38:16.350346', '15', 'helo', 3, '', 21, 1),
(485, '2025-08-23 08:38:16.352787', '14', 'dhnn', 3, '', 21, 1),
(486, '2025-08-23 08:38:16.355289', '13', 'wsfwgt', 3, '', 21, 1),
(487, '2025-08-23 08:38:16.357850', '12', 'helo', 3, '', 21, 1),
(488, '2025-08-23 08:38:16.360405', '11', 'gg', 3, '', 21, 1),
(489, '2025-08-23 08:38:16.363011', '10', 'hello', 3, '', 21, 1),
(490, '2025-08-23 08:38:16.366096', '9', 'helo', 3, '', 21, 1),
(491, '2025-08-23 08:38:16.367834', '8', '', 3, '', 21, 1),
(492, '2025-08-23 08:38:16.371097', '7', '', 3, '', 21, 1),
(493, '2025-08-23 08:38:16.373767', '6', 'hi', 3, '', 21, 1),
(494, '2025-08-23 08:38:16.376388', '5', 'hlo', 3, '', 21, 1),
(495, '2025-08-23 08:38:16.379012', '4', 'ok', 3, '', 21, 1),
(496, '2025-08-23 08:38:16.381601', '3', 'hlo', 3, '', 21, 1),
(497, '2025-08-23 08:38:16.383535', '2', 'hi', 3, '', 21, 1),
(498, '2025-08-23 08:38:16.386198', '1', 'hlo', 3, '', 21, 1),
(499, '2025-08-23 08:39:24.373379', '47', '0', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(500, '2025-08-23 08:44:10.696631', '1', 'EMPOWERING ABILITIES', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Job title\", \"Description\", \"Description2\", \"Image\"]}}]', 15, 1),
(501, '2025-08-23 08:45:02.824934', '2', 'EMPOWERING ABILITIES', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Job title\", \"Description\", \"Description2\", \"Image\"]}}]', 15, 1),
(502, '2025-08-23 08:45:27.777451', '1', 'EMPOWERING ABILITIES', 2, '[{\"changed\": {\"fields\": [\"Description2\"]}}]', 15, 1),
(503, '2025-08-23 08:45:46.130348', '2', 'EMPOWERING ABILITIES', 2, '[{\"changed\": {\"fields\": [\"Description2\"]}}]', 15, 1),
(504, '2025-08-23 08:46:38.621733', '40', '0', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(505, '2025-08-23 08:46:52.272870', '41', '0', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(506, '2025-08-23 08:47:04.050731', '42', '0', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(507, '2025-08-23 08:47:18.061487', '43', '0', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(508, '2025-08-23 08:47:29.499706', '44', '0', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(509, '2025-08-23 08:48:00.736022', '45', '0', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(510, '2025-08-23 08:53:03.695928', '3', 'Community Highlights', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\"]}}]', 15, 1),
(511, '2025-08-23 08:53:38.706351', '4', 'Creative Designs', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\"]}}]', 15, 1),
(512, '2025-08-23 08:54:26.972243', '5', 'Opportunities for Jobs', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Image\"]}}]', 15, 1),
(513, '2025-08-23 08:56:01.166840', '5', 'Opportunities for Jobs', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(514, '2025-08-23 09:01:23.167058', '5', 'Opportunities Jobs', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 15, 1),
(515, '2025-08-23 09:02:34.658765', '3', 'Handmade Products', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 15, 1),
(516, '2025-08-23 09:04:21.619599', '9', 'Community Highlights', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Job title\", \"Description\"]}}]', 15, 1),
(517, '2025-08-23 09:04:49.828311', '9', 'Community Highlights', 2, '[]', 15, 1),
(518, '2025-08-23 09:09:28.740353', '15', 'Who We Are ?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 15, 1),
(519, '2025-08-23 09:09:52.873309', '16', 'Who We Do ?', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 15, 1),
(520, '2025-08-23 09:10:10.880894', '17', 'Why Choose Us', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 15, 1),
(521, '2025-08-23 09:12:30.932455', '18', 'Stephen Hawking', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Job title\", \"Description\", \"Image\"]}}]', 15, 1),
(522, '2025-08-23 09:13:13.540997', '14', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(523, '2025-08-23 09:14:13.731383', '46', '0', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(524, '2025-08-23 09:14:52.950485', '46', '0', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(525, '2025-08-23 09:21:28.114233', '37', 'INFORMATION', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 15, 1),
(526, '2025-08-23 09:22:05.780018', '38', 'Head Office', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Job title\", \"Description\"]}}]', 15, 1),
(527, '2025-08-23 09:23:33.561242', '39', 'Support & Helpline', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Job title\", \"Description\"]}}]', 15, 1),
(528, '2025-08-23 09:30:07.249096', '19', 'user_details object (19)', 2, '[{\"changed\": {\"fields\": [\"Block status\"]}}]', 20, 1);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `app_product_category`
--
ALTER TABLE `app_product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `app_product_multi_image`
--
ALTER TABLE `app_product_multi_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1454;

--
-- AUTO_INCREMENT for table `app_profile`
--
ALTER TABLE `app_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `app_room`
--
ALTER TABLE `app_room`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `app_user_details`
--
ALTER TABLE `app_user_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

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
