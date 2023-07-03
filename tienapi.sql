-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2023 at 06:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tienapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_brand`
--

CREATE TABLE `db_brand` (
  `id` int NOT NULL COMMENT 'Mã Loại',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'SLug Loại SP',
  `sort_order` int NOT NULL COMMENT 'Thứ tự',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT 'Hình đại diện',
  `metakey` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint NOT NULL DEFAULT '0' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint NOT NULL DEFAULT '0' COMMENT 'Người sửa',
  `status` tinyint NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `db_brand`
--

INSERT INTO `db_brand` (`id`, `name`, `slug`, `sort_order`, `image`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(15, 'Volvo', 'volvo', 0, 'volvo.png', 'volvo', 'Hãng xe Volvo có nguồn gốc Thụy Điển và mang nét thiết kế cổ điển kiểu Bắc Âu', '2023-06-22 00:24:27', 1, '2023-06-22 00:24:27', 0, 1),
(16, 'Mercedes', 'mercedes', 0, 'mercedes.png', 'mercedes', 'Mercedes-Benz là một trong những hãng sản xuất xe ô tô, xe buýt, xe tải danh tiếng trên thế giới', '2023-06-22 00:25:33', 1, '2023-06-22 00:25:33', 0, 1),
(17, 'Mazda', 'mazda', 0, 'mazda.png', 'mazda', 'Mazda chính là thương hiệu xe hơi của Nhật', '2023-06-22 00:27:09', 1, '2023-06-22 00:27:09', 0, 1),
(18, 'Toyota', 'toyota', 0, 'toyota.jpg', 'toyota', 'Hãng xe Nhật Bản, nổi tiếng với sự bền bỉ và ăn sâu vào tiềm thức của nhiều người Việt Nam', '2023-06-22 00:47:17', 1, '2023-06-22 00:47:17', 0, 1),
(20, 'Ford', 'ford', 0, 'ranger.png', 'ford ranger', 'Ford là hãng xe danh giá đến từ nước Mỹ', '2023-06-22 00:50:21', 1, '2023-06-22 00:53:16', 1, 1),
(21, 'Peugeot', 'peugeot', 0, 'peugeot.png', 'peugeot', 'Xe Peugeot của nước Pháp là 1 trong những thương hiệu xe sang nổi tiếng nhất toàn cầu.', '2023-06-22 00:51:48', 1, '2023-06-22 00:51:48', 0, 1),
(22, 'BMW', 'bmw', 0, 'bmw.png', 'bmw', 'BMW là hãng xe đến từ nước Đức, hãng xe này được thành lập ngày 7 tháng 3 năm 1961', '2023-06-22 01:07:13', 1, '2023-06-22 01:07:13', 0, 1),
(23, 'Audi', 'audi', 0, 'audi.png', 'audi', 'Cùng với hãng xe BMW và Mercedes, Audi cũng là hãng xe đến từ nước Đức', '2023-06-22 01:07:49', 1, '2023-06-22 01:07:49', 0, 1),
(24, 'KIA', 'kia', 0, 'kia.png', 'KIA', 'KIA là hãng xe của hàn quốc', '2023-06-23 00:22:01', 1, '2023-06-23 00:22:01', 0, 1),
(25, 'Jeep', 'jeep', 0, 'jeep.png', 'jeep', 'jeep king', '2023-06-23 00:50:08', 1, '2023-06-23 00:50:08', 0, 1),
(26, 'Mitsubishi', 'mitsubishi', 0, 'mitsubishi.png', 'Mitsubishi', 'Mitsubishi', '2023-06-23 01:55:55', 1, '2023-06-23 01:55:55', 0, 1),
(27, 'Nissan', 'nissan', 0, 'nissan.png', 'Nissan Việt Nam', 'Nissan Việt Nam', '2023-06-23 01:56:39', 1, '2023-06-23 01:56:39', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int NOT NULL COMMENT 'Mã Loại',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'SLug Loại SP',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'Mã cấp cha',
  `sort_order` int NOT NULL COMMENT 'Thứ tự',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Hình đại diện',
  `metakey` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint NOT NULL DEFAULT '0' COMMENT 'Người tạo',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint NOT NULL DEFAULT '0' COMMENT 'Người sửa',
  `status` tinyint NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `image`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(39, 'Dòng MPV', 'dong-mpv', 0, 1, 'dong-mpv.jpg', 'MPV', 'XE LAI ĐA DỤNG', '2023-06-22 07:14:58', 1, '2023-06-23 06:51:04', 1, 1),
(40, 'Dòng PICK UP', 'dong-pick-up', 0, 1, 'dong-pick-up.png', 'pickup', 'DÒNG XE BÁN TẢI', '2023-06-22 07:16:03', 1, '2023-06-23 06:50:23', 1, 1),
(41, 'Dòng SEDAN', 'dong-sedan', 0, 1, 'dong-sedan.jpg', 'SEDAN', 'CÁC DÒNG SEDAN', '2023-06-22 07:17:21', 1, '2023-06-23 06:49:23', 1, 1),
(42, 'Dòng Coupe', 'dong-coupe', 0, 1, 'dong-coupe.png', 'coupe', 'xe thể thao', '2023-06-22 08:09:05', 1, '2023-06-23 06:48:34', 1, 1),
(43, 'Dòng SUV', 'dong-suv', 0, 1, 'dong-suv.png', 'suv', 'dòng xe suv', '2023-06-22 08:09:43', 1, '2023-06-24 17:36:42', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int UNSIGNED NOT NULL,
  `site_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `metakey` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(155) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `facebook` varchar(155) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `twitter` varchar(155) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `youtube` varchar(155) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `googleplus` varchar(155) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` varchar(155) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `site_name`, `metakey`, `metadesc`, `author`, `phone`, `email`, `facebook`, `twitter`, `youtube`, `googleplus`, `status`) VALUES
(1, 'Cửa hàng thời trang', 'Cửa hàng thời trang', 'Cửa hàng thời trang', 'Hồ Diên Lợi', '0987654321', 'dienloisoft@gmail.com', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int NOT NULL COMMENT 'Mã liên hệ',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Họ và tên',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Email',
  `phone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Điện thoại',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tiêu đề',
  `detail` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Chi tiết',
  `replaydetail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'Nội dung liên hệ',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày liên hệ',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày trả lời',
  `updated_by` tinyint NOT NULL DEFAULT '0' COMMENT 'Người trả lời',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT 'Tráng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `name`, `email`, `phone`, `title`, `detail`, `replaydetail`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(9, 'Hà Ngọc Tiến', 'ngoctien@gmail.com', '0369864072', 'Tôi Có Nhu Cầu Mua Xe', 'Tôi đang muốn mua con Audi A8', NULL, '2023-06-29 20:40:25', '2023-06-29 20:40:25', 0, 1),
(10, 'A lỏ', 'alo@gmail.com', '0906666666', 'Tôi muốn mua con BMW M3 Cổ Điển', 'Tôi Có để ý con BMW M3 của bạn bạn tư vấn giúp tô nhé', NULL, '2023-06-29 20:47:47', '2023-06-29 20:47:47', 0, 1),
(11, 'Cường Đô La', 'cuongdola@gmail.com', '0903333333', 'Tôi Muốn Mua Con Peugeot RCZ', 'BÁN CHO TÔI CON PEUGEOT RCZ', NULL, '2023-06-29 20:51:25', '2023-06-29 20:51:25', 0, 1),
(12, 'Cường Đô La', 'cuongdola@gmail.com', '0903333333', 'Tôi Muốn Mua Con BMW I8 2023', 'BÁN CHO TÔI CON BMW I8', 'undefined', '2023-06-29 20:52:05', '2023-06-29 20:58:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_menu`
--

CREATE TABLE `db_menu` (
  `id` int NOT NULL COMMENT 'Mã Menu',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên Menu',
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Liên kết',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Kiểu Menu',
  `table_id` int NOT NULL DEFAULT '0' COMMENT 'Mã trong bảng',
  `sort_order` int NOT NULL DEFAULT '0' COMMENT 'Thứ tự',
  `position` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Vị trí',
  `level` int UNSIGNED DEFAULT NULL,
  `parent_id` int NOT NULL COMMENT 'Mã cấp cha',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày Tạo',
  `created_by` tinyint NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint NOT NULL DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `db_menu`
--

INSERT INTO `db_menu` (`id`, `name`, `link`, `type`, `table_id`, `sort_order`, `position`, `level`, `parent_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Trang chủ', '/', 'custom', 0, 1, 'mainmenu', 1, 0, '2022-11-22 12:36:05', 1, '2022-11-22 12:36:09', 1, 1),
(2, 'Tất Cả Dòng Xe', '/san-pham', 'page', 39, 2, 'mainmenu', 1, 0, '2022-11-22 13:13:46', 1, '2022-11-22 13:18:22', 1, 1),
(8, 'Dòng MPV', '/danh-muc-san-pham/dong-mpv', 'category', 8, 4, 'mainmenu', 2, 15, '2022-11-22 13:14:09', 1, '2023-06-26 03:27:13', 1, 1),
(10, 'Dòng Coupe', 'http://localhost:3000/danh-muc-san-pham/dong-coupe', 'category', 6, 13, 'mainmenu', 2, 15, '2022-11-22 13:14:09', 1, '2023-06-26 03:23:54', 1, 1),
(11, 'Dòng SUV', '/danh-muc-san-pham/dong-suv', 'category', 5, 12, 'mainmenu', 2, 15, '2022-11-22 13:14:09', 1, '2023-06-26 03:23:14', 1, 1),
(12, 'Dòng PICK UP', '/danh-muc-san-pham/dong-pick-up', 'category', 4, 11, 'mainmenu', 2, 15, '2022-11-22 13:14:09', 1, '2023-06-26 03:22:56', 1, 1),
(13, 'Dòng SEDAN', '/danh-muc-san-pham/dong-sedan', 'category', 3, 10, 'mainmenu', 2, 15, '2022-11-22 13:14:09', 1, '2023-06-26 03:22:08', 1, 1),
(15, 'Loại Xe', '', 'category', 1, 3, 'mainmenu', 1, 0, '2022-11-22 13:14:09', 1, '2023-06-26 03:26:41', 1, 1),
(17, 'Chính Sách Hoàn Tiền', '/chi-tiet-bai-viet/chinh-sach-hoan-tien', 'page', 38, 1, 'footermenu', 1, 0, '2022-11-22 13:55:36', 1, '2022-11-22 13:55:42', 1, 1),
(18, 'Chính sách bảo hành', '/chi-tiet-bai-viet/chinh-sach-bao-hanh', 'page', 37, 1, 'footermenu', 1, 0, '2022-11-22 13:55:36', 1, '2022-11-22 13:55:40', 1, 1),
(20, 'Tư Vấn Mua Xe', '/chi-tiet-bai-viet/lan-dau-mua-o-to-nen-mua-xe-gi-nen-mua-xe-cu-hay-moi', 'custom', 0, 1, 'mainmenu', 1, 0, '2022-11-22 12:36:05', 1, '2023-06-26 03:29:15', 1, 1),
(21, 'Giới Thiệu', '/chi-tiet-bai-viet/gioi-thieu', 'page', 0, 1, 'footermenu', 1, 0, '2022-11-22 12:36:05', 1, '2023-06-26 03:31:43', 1, 1),
(22, 'Bài Viết', '/bai-viet', 'custom', 0, 1, 'mainmenu', 1, 0, '2022-11-22 12:36:05', 1, '2023-06-26 03:32:47', 1, 1),
(25, 'Liên Hệ', '/lien-he', 'category', 0, 2, 'mainmenu', NULL, 0, '2023-06-26 03:33:08', 1, '2023-06-26 03:33:08', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_migrations`
--

CREATE TABLE `db_migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_migrations`
--

INSERT INTO `db_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_05_20_151734_create_brand_table', 1),
(3, '2023_05_20_151744_create_category_table', 1),
(4, '2023_05_20_151921_create_contact_table', 1),
(5, '2023_05_21_155614_create_menu_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Code đơn hàng',
  `user_id` int NOT NULL COMMENT 'Mã khách hàng',
  `exportdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày xuất',
  `deliveryaddress` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Địa chỉ người nhận',
  `deliveryname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên người nhận',
  `deliveryphone` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Điện thoại người nhận',
  `deliveryemail` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Email ngươig nhận',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày cập nhật',
  `updated_by` tinyint UNSIGNED DEFAULT NULL COMMENT 'Người cập nhật',
  `status` tinyint UNSIGNED NOT NULL COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `db_order`
--

INSERT INTO `db_order` (`id`, `code`, `user_id`, `exportdate`, `deliveryaddress`, `deliveryname`, `deliveryphone`, `deliveryemail`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, '20200107121212', 2, '2020-07-03 17:00:00', 'HCM', 'Hồ Đình Lợi', '0987654321', 'loi@gmail.com', '2020-06-30 17:00:00', '2022-12-07 04:23:53', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã CT Đơn hàng',
  `order_id` int UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `product_id` int UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `price` float(12,2) NOT NULL COMMENT 'Giá sản phẩm',
  `qty` int UNSIGNED NOT NULL COMMENT 'Số lượng',
  `amount` float(12,2) NOT NULL COMMENT 'Thành tiền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `order_id`, `product_id`, `price`, `qty`, `amount`) VALUES
(1, 1, 23, 250000.00, 2, 500000.00),
(2, 1, 25, 250000.00, 3, 750000.00),
(3, 2, 33, 250000.00, 2, 500000.00),
(4, 2, 43, 250000.00, 3, 750000.00);

-- --------------------------------------------------------

--
-- Table structure for table `db_personal_access_tokens`
--

CREATE TABLE `db_personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_post`
--

CREATE TABLE `db_post` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã bài viết',
  `topic_id` int UNSIGNED DEFAULT NULL COMMENT 'Mã chủ đề',
  `title` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tiêu đề bài viết',
  `slug` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Slug tiêu đề',
  `detail` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Chi tiết bài viết',
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hình ảnh',
  `type` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'post' COMMENT 'Kiểu bài viết',
  `metakey` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint NOT NULL DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `db_post`
--

INSERT INTO `db_post` (`id`, `topic_id`, `title`, `slug`, `detail`, `image`, `type`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(35, 2, 'Honda Khuyến Mãi Lớn', 'honda-khuyen-mai-lon', 'hương trình khuyến mãi xe Honda CR-V và City Honda Ô tô Quận 7 giới thiệu đến quý khách hàng chương trình khuyến mãi “Đón xe hay, thêm ngay quà tặng” với nhiều ưu đãi , hấp dẫn với tổng giá trị quà tặng lên tới gần 1️⃣4️⃣ triệu đồng dành riêng cho các khách hàng mua xe CR-V và City từ ngày 01/07/2023 đến hết ngày 30/7/2023', 'honda-khuyen-mai-lon.jpg', 'post', 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', '2022-11-22 13:03:06', 1, '2023-06-29 09:43:06', 1, 1),
(37, 4, 'Chính sách bảo hành', 'chinh-sach-bao-hanh', 'Chính sách bảo hành của Showroom Xe hơi:  Thời gian bảo hành:  Mỗi chiếc xe mua tại showroom của chúng tôi sẽ được áp dụng chính sách bảo hành trong một khoảng thời gian xác định, thông thường từ 1 đến 3 năm, tùy thuộc vào nhà sản xuất và mô hình xe. Thời gian bảo hành sẽ được tính từ ngày giao xe cho khách hàng. Phạm vi bảo hành:  Áp dụng chính sách bảo hành chỉ đối với xe mới được mua từ showroom chúng tôi và không áp dụng cho xe đã qua sử dụng. Chính sách bảo hành không bao gồm các hư hỏng do sử dụng không đúng cách, tai nạn, sự cố gây ra bởi người sử dụng, việc không tuân thủ hướng dẫn bảo dưỡng hoặc bất kỳ thay đổi không được phép trên xe. Bảo hành chỉ áp dụng cho chủ sở hữu ban đầu của xe và không có hiệu lực đối với chủ sở hữu mới sau khi xe được chuyển nhượng. Chính sách bảo hành không bao gồm các chi phí phát sinh khác như vận chuyển, lưu trữ, bảo hiểm hoặc bất kỳ chi phí khác không liên quan trực tiếp đến việc sửa chữa hoặc thay thế các bộ phận hỏng. Chính sách bảo hành của showroom xe hơi chúng tôi nhằm đảm bảo rằng khách hàng được hưởng một trải nghiệm mua sắm xe tin cậy và an tâm. Chúng tôi cam kết tuân thủ các quy định và điều kiện của chính sách này để đảm bảo rằng khách hàng nhận được sự hỗ trợ và sự chăm sóc tốt nhất trong quá trình sử dụng xe của mình.', 'chinh-sach-bao-hanh.jpg', 'page', 'Chính sách bảo hành', 'Chính sách bảo hành', '2022-11-22 13:08:13', 1, '2023-06-29 09:41:30', 1, 1),
(40, 2, 'Mùa Hè Sôi Động', 'mua-he-soi-dong', 'Honda Việt Nam thực hiện chương trình khuyến mại Hạ nhiệt mùa hè – Thoải mái lái xe Nhằm mục đích mang lại cho Khách hàng sử dụng ô tô của thương hiệu Honda  những trải nghiệm tuyệt vời về sản phẩm, Honda Việt Nam thực hiện chương trình khuyến mại: “Hạ nhiệt mùa hè – Thoải mái lái xe” từ ngày 15/07/2022 đến 15/09/2022 tại tất cả các Nhà Phân Phối Ô tô Honda trên toàn quốc.  Tên chương trình khuyến mại: “Hạ nhiệt mùa hè, thoải mái lái xe”. Địa bàn (phạm vi) khuyến mại: Tại các Nhà Phân Phối Ô tô Honda trên toàn quốc (sau đây gọi tắt là “NPP”) Hình thức khuyến mại: Giảm giá sản phẩm. Thời gian khuyến mại: Từ ngày 15/07/2022 đến hết ngày 15/09/2022 Hàng hóa, dịch vụ khuyến mại: Bộ sản phẩm gồm: a.  1 sản phẩm Lọc gió điều hòa kháng virus size S và 1 Chai dung dịch vệ sinh dàn lạnh. b.  1 sản phẩm Lọc gió điều hòa kháng virus size L và 1 Chai dung dịch vệ sinh dàn lạnh. Khách hàng của chương trình khuyến mại: Khách hàng mua Bộ sản phẩm theo mục 5 tại các NPP từ ngày 15/07/2022 đến hết ngày 15/09/2022. Cơ cấu và giá trị khuyến mại: Giảm giá cho 1 bộ sản phẩm bán ra. Khách hàng mua bộ sản phẩm tại mục “a.” Điều 5 sẽ được giảm: 232,500 VNĐ Khách hàng mua bộ sản phẩm tại mục “b.” Điều 5 sẽ được giảm: 247,500 VNĐ', 'mua-he-soi-dong.jpg', 'post', 'Mùa Hè Sôi Động', 'Mùa Hè Sôi Động', '2022-11-22 12:50:14', 1, '2023-06-29 09:42:27', 1, 1),
(41, 2, 'Thị trường ô tô tháng : chương trình giảm giá chỉ đếm trên đầu ngón tay', 'thi-truong-o-to-thang-chuong-trinh-giam-gia-chi-dem-tren-dau-ngon-tay', 'Dù chính sách ưu đãi phí trước bạ đã hết hiệu lực nhưng thị trường ô tô Việt đầu tháng 6 có rất ít những mẫu xe được chính hãng công bố giảm giá bán. Nếu như năm ngoái, khi chính sách ưu đãi 50% phí trước bạ hết hiệu lực, các hãng xe buộc phải tung ưu đãi giảm giá để kích cầu thì năm nay hoàn toàn ngược lại. Tình trạng khan hiếm hàng diễn ra trên diện rộng, buộc hầu hết các đại lý phải điều chỉnh tăng giá bán, một số mẫu xe còn bị bán bia kèm lạc gây bức xúc người tiêu dùng. Ngay từ đầu tháng 6, số lượng ô tô được giảm giá, ưu đãi chỉ đếm trên đầu ngón tay.Hãng Vinfast vẫn tiếp tục duy trì mức giảm giá 140-160 triệu đồng cho khách hàng mua xe VinFast LUX SA2.0, giảm 40 triệu đồng cho mẫu xe hạng A Vinfast Fadil.  Isuzu mu-X bản cũ 2021 cũng đang được giảm giá sâu đến 70 triệu đồng. Các đại lý đang muốn kích cầu, đẩy hàng tồn để chuẩn bị cho sự ra mắt của Isuzu mu-X 2022 sắp tới.  Sau giảm giá, Isuzu mu-X 2021 hiện chỉ còn 725 đến 879 triệu đồng, thấp hơn đáng kể giá niêm yết hãng 799-949 triệu đồng.  Ở phân khúc sedan cỡ B, Nissan Almera được các đại lý thông báo giảm 60 triệu đồng. Đây được xem là mức giảm sâu kéo giá xe hiện xuống thấp nhất so với các đối thủ cùng phân khúc.  Giá niêm yết của ba phiên bản Almera MT, Almera CVT, và Almera CVT Cao Cấp lần lượt là 469, 529, và 579 triệu đồng.', 'thi-truong-o-to-thang-chuong-trinh-giam-gia-chi-dem-tren-dau-ngon-tay.jpg', 'post', 'DEAL SHOCK THÁNG 7', 'DEAL SHOCK THÁNG 7', '2022-11-22 13:01:25', 1, '2023-06-29 09:43:02', 1, 1),
(46, 4, 'Giới thiệu', 'gioi-thieu', 'Chào mừng bạn đến với T-Super, nơi mang đến cho bạn trải nghiệm mua sắm xe hơi độc đáo và tuyệt vời nhất! Chúng tôi tự hào là một trang web bán xe hơi hàng đầu, mang đến cho khách hàng một sự lựa chọn đa dạng với danh sách xe phong phú và chất lượng.  Với T-Super, chúng tôi cam kết đem đến cho bạn không chỉ những chiếc xe hơi chất lượng cao, mà còn là trải nghiệm mua sắm trực tuyến hoàn hảo. Với giao diện đơn giản và thân thiện, trang web của chúng tôi giúp bạn dễ dàng tìm kiếm và xem thông tin chi tiết về các mẫu xe hấp dẫn. Bạn có thể dễ dàng duyệt qua danh sách các hãng xe nổi tiếng như Mercedes-Benz, BMW, Audi, Lexus và nhiều hãng khác, để tìm ra chiếc xe mơ ước của bạn.  T-Super không chỉ cung cấp thông tin đầy đủ về mỗi chiếc xe, mà còn cung cấp ảnh chất lượng cao và mô tả chi tiết về tính năng, công nghệ và tiện nghi. Bạn có thể dễ dàng so sánh các mẫu xe và lựa chọn những tính năng mà bạn quan tâm, để đảm bảo rằng bạn tìm được chiếc xe hoàn hảo phù hợp với nhu cầu và sở thích cá nhân của mình.  Ngoài ra, chúng tôi cung cấp dịch vụ tư vấn chuyên nghiệp thông qua đội ngũ nhân viên giàu kinh nghiệm. Họ sẵn sàng trợ giúp bạn tìm hiểu về các sản phẩm, giải đáp thắc mắc và đưa ra những gợi ý hữu ích để giúp bạn đưa ra quyết định mua sắm thông minh.  Với T-Super, chúng tôi cam kết đảm bảo sự hài lòng của khách hàng là ưu tiên hàng đầu. Chúng tôi xây dựng một môi trường mua sắm trực tuyến an toàn và bảo mật, đảm bảo thông tin cá nhân của bạn được bảo vệ tuyệt đối.Ngoài việc tìm kiếm và khám phá các mẫu xe hấp dẫn, T-Super cũng cung cấp cho bạn những dịch vụ hỗ trợ đáng tin cậy. Chúng tôi sẽ đồng hành cùng bạn từ giai đoạn tìm hiểu cho đến khi bạn sở hữu chiếc xe mới. Chúng tôi cung cấp thông tin về các chương trình khuyến mãi, giá cả cạnh tranh và các gói bảo hành hấp dẫn để bạn có thể lựa chọn một cách thông minh và tiết kiệm.  Bên cạnh đó, T-Super cũng cung cấp dịch vụ đánh giá xe hơi từ người dùng. Bạn có thể đọc và chia sẻ những đánh giá, nhận xét và kinh nghiệm từ những người đã sử dụng các mẫu xe trên trang web của chúng tôi. Điều này giúp bạn có cái nhìn toàn diện và đáng tin cậy về chất lượng và hiệu suất của từng mẫu xe.  Không chỉ dừng lại ở việc bán xe hơi, T-Super còn cung cấp các dịch vụ hậu mãi chất lượng. Đội ngũ kỹ thuật viên chuyên nghiệp và tận tâm sẽ hỗ trợ bạn với các dịch vụ bảo dưỡng, sửa chữa và thay thế linh kiện để đảm bảo xe của bạn luôn trong tình trạng hoạt động tốt nhất.  Hãy truy cập T-Super ngay hôm nay và khám phá một cách mới mẻ và tiện lợi để mua sắm xe hơi. Với sự kết hợp giữa chất lượng, đa dạng sản phẩm, dịch vụ tận tâm và trải nghiệm mua sắm tuyệt vời, chúng tôi tin rằng T-Super sẽ là địa chỉ tin cậy của bạn khi muốn sở hữu chiếc xe hơi mơ ước.', 'gioi-thieu.png', 'page', 'gioithieu', 'gioithieu', '2022-11-22 13:13:30', 1, '2023-06-29 09:42:05', 1, 1),
(56, 4, 'Chính Sách Hoàn Tiền', 'chinh-sach-hoan-tien', 'Chính sách hoàn tiền của Showroom Xe hơi:  Điều kiện hoàn tiền:  Khách hàng có thể yêu cầu hoàn tiền trong vòng 7 ngày kể từ ngày mua xe. Xe phải được trả về trong tình trạng hoàn toàn mới, không có dấu hiệu sử dụng, không có vết trầy xước và không có bất kỳ sự thay đổi nào về ngoại hình, cấu trúc hoặc tính năng so với khi khách hàng mua xe. Tất cả các tài liệu liên quan đến xe (hóa đơn, giấy tờ đăng ký, bảo hành, tài liệu kỹ thuật, v.v.) phải được trả lại kèm theo xe. Xe không được tham gia bất kỳ tai nạn, hỏng hóc hoặc sửa chữa bởi bên thứ ba sau khi mua. Quy trình hoàn tiền:  Khách hàng phải liên hệ với phòng bán hàng của showroom chúng tôi để thông báo việc yêu cầu hoàn tiền. Showroom sẽ tiến hành kiểm tra lại xe để đảm bảo đủ điều kiện hoàn tiền. Sau khi kiểm tra thành công, số tiền hoàn lại sẽ được chuyển trả cho khách hàng bằng cùng phương thức thanh toán ban đầu (nếu có thể) hoặc bằng phương thức khác thỏa thuận giữa hai bên. Chi phí liên quan đến việc trả lại xe (vận chuyển, bảo hiểm, v.v.) sẽ được khách hàng chịu trách nhiệm, trừ khi có thỏa thuận khác. Điều khoản và điều kiện:  Chính sách hoàn tiền chỉ áp dụng cho xe mới và không áp dụng cho xe đã qua sử dụng. Mọi chi phí phát sinh sau khi khách hàng đã nhận xe (bảo dưỡng, sửa chữa, v.v.) sẽ không được hoàn lại. Showroom có quyền từ chối yêu cầu hoàn tiền nếu xe không đáp ứng đủ điều kiện hoàn tiền hoặc nếu có bất kỳ vi phạm nào về quy định của chính sách này. Chính sách hoàn tiền này nhằm đảm bảo quyền lợi và sự hài lòng của khách hàng khi mua xe tại T-SUPER  chúng tôi. Chúng tôi cam kết tuân thủ chính sách này và tạo điều kiện thuận lợi nhất cho khách hàng trong quá trình mua sắm xe hơicủa mình. Chúng tôi hiểu rằng việc mua một chiếc xe là một quyết định quan trọng và có thể có những lý do đặc biệt mà khách hàng muốn hoàn tiền. Vì vậy, chính sách hoàn tiền của chúng tôi được thiết kế để đảm bảo sự linh hoạt và công bằng cho khách hàng. Dưới đây là những điểm quan trọng khác trong chính sách hoàn tiền của showroom xe hơi chúng tôi:  Phí xử lý:  Khi yêu cầu hoàn tiền được chấp nhận, chúng tôi có thể áp dụng một khoản phí xử lý nhỏ để bù đắp các chi phí liên quan đến quá trình xử lý và kiểm tra xe. Số tiền phí xử lý sẽ được thông báo rõ ràng cho khách hàng trước khi tiến hành hoàn tiền. Chính sách bảo hành:  Trong trường hợp khách hàng đã sử dụng xe trong thời gian ngắn và gặp phải vấn đề kỹ thuật, chúng tôi khuyến nghị khách hàng liên hệ với bộ phận bảo hành của chúng tôi để được hỗ trợ sửa chữa hoặc thay thế miễn phí. Chính sách bảo hành của chúng tôi sẽ được áp dụng riêng biệt và không ảnh hưởng đến quyền hoàn tiền của khách hàng. Quyền từ chối hoàn tiền:  Chúng tôi có quyền từ chối yêu cầu hoàn tiền nếu khách hàng vi phạm các điều khoản và điều kiện được nêu trong chính sách hoàn tiền. Trong trường hợp từ chối, chúng tôi sẽ cung cấp lý do cụ thể cho khách hàng và tìm cách giải quyết tranh chấp một cách hợp lý và hài hòa. Chính sách hoàn tiền của showroom xe hơi chúng tôi là một cam kết để đảm bảo sự hài lòng của khách hàng và xây dựng một mối quan hệ lâu dài dựa trên niềm tin và sự tôn trọng. Chúng tôi sẽ luôn nỗ lực hết mình để đáp ứng các yêu cầu hoàn tiền một cách công bằng và hiệu quả.', 'chinh-sach-hoan-tien.jpg', 'page', 'Chính-Sách-Hoàn-Tiền', 'Chính-Sách-Hoàn-Tiền', '2023-06-29 08:57:01', 1, '2023-06-29 09:38:42', 1, 1),
(57, 1, 'Lần đầu mua ô tô nên mua xe gì? Nên mua xe cũ hay mới?', 'lan-dau-mua-o-to-nen-mua-xe-gi-nen-mua-xe-cu-hay-moi', 'Nếu mua xe mới\r\nMua xe ô tô mới, bạn chính là chủ nhân đầu tiên của chiếc xe ấy. Trải nghiệm một chiếc ô tô mới chắc chắn sẽ phấn khích và hào hứng hơn rất nhiều so với xe cũ, nhất lại là khi bạn là người lần đầu mua xe.\r\n\r\nQuan trọng hơn, nếu mua ô tô cũ bạn phải lo lắng chất lượng xe, trong khi mua xe mới bạn có thể hoàn toàn yên tâm về chất lượng xe. Xe được hưởng chế độ bảo hành chính hãng trong thời gian tối thiểu 3 năm hoặc 100.000 km đầu tiên.\r\n\r\nTrong thời gian bảo hành, nếu xe có vấn đề gì thì có thể đưa xe đến đại lý kiểm tra, sửa chữa. Trong quá trình sử dụng, nếu có thắc mắc gì về việc sử dụng xe cũng có thể liên hệ bộ phận chăm sóc khách hàng hay hỗ trợ kỹ thuật của hãng để được giải đáp.Bên cạnh đó, nếu bạn lo lần đầu mua xe có nhiều bỡ ngỡ thì mua xe mới là một lựa chọn phù hợp. Bởi việc mua bán không phức tạp và tiềm ẩn nhiều rủi ro như với xe cũ. Đại lý chính hãng có nhân viên tư vấn, hỗ trợ nhiệt tình. Giá xe niêm yết rõ ràng. Hợp đồng mua bán đúng quy định. Thủ tục mua bán có đại lý hỗ trợ từ A đến Z.\r\n\r\nLần đầu mua ô tô nếu chọn xe mới bạn sẽ có nhiều sự lựa chọn hơn. Bạn có thể tuỳ ý lựa chọn loại xe, mẫu xe, phiên bản xe, màu xe… Bổ sung thêm option bất kỳ option nào mà bạn mong muốn. Nói cách khác là bạn có toàn quyền quyết định.  Nếu mua xe cũ\r\nĐiểm lợi lớn nhất khi mua xe cũ chính là chi phí thấp. Giá xe ô tô cũ chắc chắn thấp hơn xe mới dù là xe chạy lướt. Các chi phí khi mua xe ô tô cũ cũng thấp hơn nhất là phí trước bạ. Do đó, mua xe ô tô cũ người mua có thể tiết kiệm một số tiền không nhỏ.\r\n\r\nƯu điểm thứ hai khi mua ô tô cũ chính là tâm lý lái xe thoải mái. Điểm này đặc biệt phù hợp với người lần đầu mua xe. Nếu bạn vừa có bằng lái, chưa có nhiều kinh nghiệm lái xe thì mua xe ô tô cũ sẽ có tâm lý thoải mái hơn. Xe có bị va quẹt trầy xước cũng không cần quá lo lắng như xe mới. Bạn có thể “lăn xả” thoải mái để rèn luyện và nâng cao kỹ thuật lái xe.\r\n\r\nTuy nhiên mua ô tô cũ có một trở ngại lớn với người lần đầu mua xe đó là chất lượng xe. Đây cũng chính là điều khiến nhiều người phân vân có nên mua ô tô cũ hay không. Bởi thị trường mua bán ô tô cũ khá phức tạp, tiềm ẩn nhiều rủi ro, vì thế để chọn được một chiếc ô tô cũ còn tốt, nguồn gốc rõ ràng, giá cả hợp lý là điều không dễ, nhất là với người lần đầu mua xe chưa có kinh nghiệm.\r\n\r\nĐã có không ít trường hợp bị lừa khi mua xe ô tô cũ bởi các chiêu trò “mông má” làm mới xe ô tô cũ ngày càng tinh vi. Mua xe cũ phải kiểm tra xe có bị tai nạn không, có phải xe taxi hoàn lương không, xe có bị thuỷ kích không… phải kiểm tra máy xe, kiểm tra nội thất xe, kiểm tra khung gầm, kiểm tra giấy tờ xe… Dù hiện nay có dịch vụ kiểm tra xe ô tô cũ nhưng cũng đòi hỏi người mua cần kinh nghiệm và hiểu biết nhất định, biết cách trả giá khi mua ô tô cũ, biết các thủ tục sang tên xe ô tô…            Kinh nghiệm mua xe ô tô lần đầu\r\nTheo một số chuyên gia và người có kinh nghiệm, nếu lần đầu mua xe, người mua nên lưu ý:\r\n\r\nTham khảo ý kiến, tìm đến sự hỗ trợ của những người quen biết đã từng mua xe ô tô để được tư vấn chọn xe, tư vấn thủ tục mua bán xe…\r\n\r\nXác định rõ nhu cầu và yếu tố mà bản thân chú trọng. Ví dụ chú trọng điều nào nhất trong các yếu tố sau: thiết kế đẹp, trang bị hiện đại, bền bỉ, giữ giá tốt, thương hiệu có tiếng, nội thất rộng… Việc xác định này sẽ giúp dễ dàng chọn được mẫu xe phù hợp.\r\n\r\nTìm hiểu thật kỹ thông tin xe như thông số kỹ thuật (động cơ, hộp số, dẫn động…), hệ thống trang bị (ngoại thất, nội thất, tính năng an toàn), ưu nhược điểm xe, chi phí nuôi xe, đánh giá thực tế từ người dùng, so sánh với các xe cùng tầm giá… trước khi quyết định.', 'lan-dau-mua-o-to-nen-mua-xe-gi-nen-mua-xe-cu-hay-moi.jpg', 'post', 'Lần đầu mua ô tô nên mua xe gì? Nên mua xe cũ hay mới?', 'Lần đầu mua ô tô nên mua xe gì? Nên mua xe cũ hay mới?', '2023-06-29 10:51:03', 1, '2023-06-29 11:16:30', 1, 1),
(60, 1, 'Xe nhập khẩu chạy đua giảm giá cả nửa tỉ đồng', 'xe-nhap-khau-chay-dua-giam-gia-ca-nua-ti-dong', 'Dù kích cầu giảm giá mạnh nhiều dòng xe nhập khẩu nhưng doanh số vẫn tiếp tục \"lao dốc không phanh\". Các chuyên gia dự đoán xe nhập sẽ còn giảm hơn nữa trong các tháng tới. \r\nTrước tình hình các dòng ô tô sản xuất, lắp ráp trong nước sắp được hưởng lợi khi chính sách giảm 50% lệ phí trước bạ của Chính phủ sắp được áp dụng, thị trường ô tô Việt Nam ghi nhận với hàng chục mẫu xe nhập khẩu nguyên chiếc chạy đua bằng việc giảm giá hàng trăm triệu đồng.\r\n\r\nXe nhập giảm hàng trăm triệu đồng\r\n\r\nTheo khảo sát của PLO, hàng loạt hãng xe kinh doanh ô tô nhập khẩu nguyên chiếc như Subaru, Volkswagen, Toyota, Nissan, Mitsubishi, Mercedes-Benz, Thaco… đang tung ra nhiều đợt ưu đãi, giảm giá bán để đẩy hàng tồn, tăng doanh số trước các đối thủ là xe lắp ráp trong nước.\r\n\r\nĐầu tiên có thể kể đến hãng xe sang Mercedes-Benz đang mạnh tay giảm giá bán cho mẫu SUV GLC với mức giảm cao nhất lên tới gần 500 triệu đồng. Tuy nhiên, mức giảm này cũng chỉ áp dụng cho các xe đời 2022. Cụ thể, giá bán của GLC 200 giảm tới 360 triệu đồng, kéo giá bán từ 1,909 tỉ đồng xuống còn 1,549 tỉ đồng.\r\n\r\nTương tự như vậy, đối với phiên bản GLC 200 4Matic giảm hơn 400 triệu đồng. Đối với phiên bản GLC 300 4Matic, xe đang được hưởng mức giảm 500 triệu đồng.', 'xe-nhap-khau-chay-dua-giam-gia-ca-nua-ti-dong.jpg', 'post', 'Xe nhập khẩu chạy đua giảm giá cả nửa tỉ đồng', 'Xe nhập khẩu chạy đua giảm giá cả nửa tỉ đồng', '2023-06-29 09:47:30', 1, '2023-06-29 09:47:30', 1, 1),
(61, 1, 'Lexus GX 2024 được nhận cọc tại Việt Nam, xe nhập Mỹ, giá gần 7 tỷ đồng', 'lexus-gx-2024-duoc-nhan-coc-tai-viet-nam-xe-nhap-my-gia-gan-7-ty-dong', 'Lexus GX thế hệ mới ra mắt toàn cầu vào hồi đầu tháng 6/2023, và chỉ sau hơn 2 tuần xuất hiện trên thị trường, mẫu SUV hạng sang này đã được một số đại lý nhập khẩu tư nhân ở Việt Nam nhận đặt cọc.Xe có tên gọi chính thức là GX 550 thay vì GX 460 như đời cũ và có 6 phiên bản để khách hàng lựa chọn gồm: Premium, Premium+, Luxury, Luxury+, Overtrail và Overtrail+. Mức giá dự kiến được đưa ra là 6,95 tỷ đồng cho bản tiêu chuẩn và 7,4 tỷ cho bản cao cấp nhất. Xe nhập khẩu nguyên chiếc từ Mỹ.Theo tư vấn bán hàng đại lý tư nhân, thời gian chờ xe về Việt Nam khoảng 4-6 tháng kể từ thời điểm đặt cọc. Nếu không muốn mua những chiếc xe có sẵn, khách hàng có thể tùy biến \"option\" cho phù hợp với nhu cầu, nhưng thời gian chờ sẽ lâu hơn. Trong khi đó, phía Lexus Việt Nam vẫn chưa công bố kế hoạch đưa GX 2024 về nước.Lexus GX 2024 được phát triển dựa trên nền tảng khung gầm rời (body-on-frame) TNGA-F tương tự Land Cruiser 300 và Lexus LX600. Kích thước DxRxC của xe lần lượt là 5.005 x 2.114 x 1.915 - 1.935 mm và chiều dài cơ sở 2.850 mm. Như vậy, so với thế hệ cũ, xe dài hơn 125 mm, rộng hơn 229 mm, cao hơn 30 - 50 mm và trục cơ sở cũng tăng 61 mm.\r\n\r\nSo với đời cũ, ngoại hình của Lexus GX 2024 trông vuông vức, góc cạnh và có phần nam tính hơn. Phần đầu xe có lưới tản nhiệt con suốt nhưng tinh chỉnh tạo sự khác biệt so với các sản phẩm của Lexus hiện nay. Dải đèn LED định vị ban ngày hình chữ \"L\". Nắp ca-pô được thiết kế phình to, phần nào gợi nhắc đến các thế hệ Range Rover trước đây. Cản trước sơn đồng màu thân xe tựa như một tấm ốp bảo vệ, đi kèm đèn sương mù LED.', 'lexus-gx-2024-duoc-nhan-coc-tai-viet-nam-xe-nhap-my-gia-gan-7-ty-dong.jpg', 'post', 'Lexus GX 2024 được nhận cọc tại Việt Nam, xe nhập Mỹ, giá gần 7 tỷ đồng', 'Lexus GX 2024 được nhận cọc tại Việt Nam, xe nhập Mỹ, giá gần 7 tỷ đồng', '2023-06-29 09:50:02', 1, '2023-06-29 09:50:02', 1, 1),
(63, 1, 'Porsche 911 GT3 của Cường ĐôLa lên sàn xe cũ', 'porsche-911-gt3-cua-cuong-dola-len-san-xe-cu', 'Chiếc xe thể thao mới lăn bánh được hơn 5.000 km sau khoảng một năm sử dụng.Sau khi “đập hộp” siêu phẩm Porsche 911 Sport Classic, doanh nhân Nguyễn Quốc Cường - hay còn gọi là Cường Đôla - đã rao bán chiếc Porsche 911 GT3 mà anh mua vào tháng 3/2022. Xe thuộc đời 2022 và chỉ mới lăn bánh 5.000 km. Giá “sang tay” là 16,5 tỷ đồng.Khoảng hơn 1 năm sở hữu, Cường Đôla đã sử dụng \"ngựa Đức\" để tham gia hành trình xuyên 4 nước Đông Dương, với tổng quãng đường ước tính khoảng 4.000 km. Đó cũng là lần đầu tiên vị doanh nhân sinh năm 1982 sử dụng Porsche 911 GT3 để đi hành trình dài.', 'porsche-911-gt3-cua-cuong-dola-len-san-xe-cu.jpg', 'post', 'Porsche 911 GT3 của Cường ĐôLa lên sàn xe cũ', 'Porsche 911 GT3 của Cường ĐôLa lên sàn xe cũ', '2023-06-29 11:59:25', 1, '2023-06-29 11:59:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `category_id` int UNSIGNED NOT NULL COMMENT 'Mã loại sản phẩm',
  `brand_id` int UNSIGNED NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên sản phẩm',
  `slug` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Slug tên sản phẩm',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Hình ảnh',
  `detail` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Chi tiết',
  `qty` smallint UNSIGNED NOT NULL COMMENT 'Số lượng',
  `price` bigint NOT NULL COMMENT 'Giá',
  `price_sale` bigint NOT NULL COMMENT 'Giá khuyến mãi',
  `metakey` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `image`, `detail`, `qty`, `price`, `price_sale`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(46, 41, 1, 'Mercedes-Benz CLA 200', 'mercedes-benz-cla-200', 'mercedes-benz-cla-200.png', 'Mercedes CLA 200 2015 sử dụng động cơ 1.6L, kết hợp số tự động 7 cấp, công suất cực đại đạt 156 mã lực, mức tiêu thụ nhiên liệu trung bình 6L/100km', 1, 1549000000, 1349000000, 'CLA 200', 'Xe Mercedes CLA 200 2015 là đại diện nổi trội và thách thức của lối thiết kế Mercedes-Benz tiên phong. Sport Sedan mang thuộc tính rõ nén của các dòng xe trẻ trung, phong cách thể thao trong phân khúc xe sang.', '2023-06-29 07:10:40', 1, '2023-06-29 07:10:40', 1, 1),
(48, 43, 1, 'Lexus LX(Máy xăng)', 'lexus-lxmay-xang', 'lexus-lxmay-xang.png', 'Lexus LX570 sở hữu ngoại hình vững chãi của một chiếc SUV sang trọng với kích thước tổng thể 5080 x 1980 x 1865 mm. Dáng xe dài và thấp, đầu xe nổi bật với các đường nét thiết kế dứt khoát vốn dĩ rất đặc trưng của hàng xe Lexus.', 1, 8499999744, 8349000000, 'lexus', 'Lexus LX  là chiếc SUV hạng sang có thiết kế sang trọng và bề thế, sở hữu rất nhiều nét đặc trưng của Lexus. Nội thất xe rộng rãi hỗ trợ nhiều tính năng phục vu người dùng tốt hơn, khả năng vận hành mạnh mẽ, cho phép xe vượt địa hình hiệu quả.', '2023-06-29 07:11:30', 1, '2023-06-29 07:11:30', 1, 1),
(49, 41, 23, 'Audi A6 2023', 'audi-a6-2023', 'audi-a6-2023.jpg', 'Đầu xe Audi A6 2023 cuốn hút với lưới tản nhiệt lục giác khung đơn được tinh chỉnh cân đối và hài hoà hơn “người tiền nhiệm”. Lưới tản nhiệt tuy vẫn duy trì kiểu khung đơn mạ chrome thẳng đứng nhưng nâng cao hơn, mở rộng hơn về phương ngang, mang đến cái nhìn mạnh mẽ và sắc sảo', 1, 2990000000, 2549000000, 'AUDI A6', 'Audi A6 2023 có 2 phiên bản: 45 TFSI và 55 TFSI Quattro. Hiện tại mới chỉ có phiên bản Audi A6 45 TFSI về Việt Nam dưới hình thức nhập khẩu nguyên chiếc từ châu Âu.', '2023-06-29 07:12:36', 1, '2023-06-29 07:12:36', 1, 1),
(50, 41, 23, 'Audi A8L 55 TFSI Plus White', 'audi-a8l-55-tfsi-plus-white', 'audi-a8l-55-tfsi-plus-white.jpg', 'Xe sedan 5 chỗ  Audi A8L 55 TFSI Plus được thiết kế với 2 phiên bản là A8 tiêu chuẩn và A8L. Với phiên bản A8, xe có kích thước tổng thể lần lượt là 5172 x 1942 x 1473mm và trục cơ sở đạt 2998mm. Với phiên bản A8L có kích thước tổng thể (DxRxC) là 5302 x 1945 x 1485 mm. Chiều dài cơ sở của mẫu Audi A8L đạt 3128 mm', 1, 5850000000, 5650000000, 'audi a8', 'Audi A8 2023 đang được giới chuyên gia đánh giá là mẫu xe hội tụ đầy đủ nhất các ưu điểm của hãng xe nổi tiếng đến từ Đức.', '2023-06-29 07:13:33', 1, '2023-06-29 07:13:33', 1, 1),
(51, 42, 23, 'Audi R8 2023.', 'audi-r8-2023', 'audi-r8-2023.png', 'Trên phiên bản mới này Audi đã thay đổi đôi chút về thiết kế của phần đầu chiếc siêu xe Audi R8 2023. Nhìn vào phần đầu xe chúng ta sẽ thấy nổi bật với cụm lưới tản nhiệt dạng Single Frame cùng phần viền xung quanh được thiết kế lại đẹp mắt mà lại vô cùng cá tính', 1, 3499000000, 3299000000, 'AUDI R8', 'Audi R8 2023 phiên bản mới sở hữu diện mạo hầm hố sang trọng mà còn đi cùng những trang bị hiện đại nhất của hãng', '2023-06-29 07:15:01', 1, '2023-06-29 07:15:01', 1, 1),
(52, 41, 23, 'Audi A8 2023 BLACK', 'audi-a8-2023-black', 'audi-a8-2023-black.jpg', 'Xe sedan 5 chỗ Audi A8 2023 được thiết kế với 2 phiên bản là A8 tiêu chuẩn và A8L. Với phiên bản A8, xe có kích thước tổng thể lần lượt là 5172 x 1942 x 1473mm và trục cơ sở đạt 2998mm. Với phiên bản A8L có kích thước tổng thể (DxRxC) là 5302 x 1945 x 1485 mm. Chiều dài cơ sở của mẫu Audi A8L đạt 3128 mm', 1, 5100000000, 4900000000, 'AUDI A8', 'Audi A8 2023 đang được giới chuyên gia đánh giá là mẫu xe hội tụ đầy đủ nhất các ưu điểm của hãng xe nổi tiếng đến từ Đứ', '2023-06-29 07:15:55', 1, '2023-06-29 07:15:55', 1, 1),
(53, 42, 22, 'BMW i8', 'bmw-i8', 'bmw-i8.jpg', 'Phiên bản BMW i8 (2013) thương mại đầu tiên là một chiếc coupe hybrid dựa trên BWM i8 Concept. Xe được trang bị động cơ xăng tăng áp BMW TwinPower 3 xi lanh dung tích 1,5 lít tích hợp công nghệ BMW eDrive (sử dụng ở BMW i3) cho công suất tối đa 170 mã lực; kết hợp cùng động cơ điện cho công suất tối đa 131 mã lực. Xe có thể đạt tốc độ 0 – 100 km/h chỉ trong 4,5 giây.', 1, 8120000000, 7955000000, 'bmw', 'BMW i8 là một trong các mẫu siêu xe sở hữu thiết kế ấn tượng mang đến nhiều cảm xúc nhất trong làng siêu xe thế giới. Thiết kế này cũng gây một vài tranh cãi. Người thì cho là “quá tuyệt”, người thì bình phẩm “nhìn hơi kỳ”', '2023-06-29 07:16:40', 1, '2023-06-29 07:16:40', 1, 1),
(54, 41, 22, 'BMW M3 2023', 'bmw-m3-2023', 'bmw-m3-2023.png', 'BMW M3 2023 Competition sử dụng động cơ 3.0L - 06 xy lanh với công nghệ M TwinPower Turbo cho công suất lên đến 503 mã lực, tăng tốc từ 0 - 100 km/h chỉ trong 3,8s, tốc độ tối đa đạt 290 km/h.', 1, 5000000000, 4800000000, 'bmw m3', 'BMW M3 là phiên bản sedan hiệu suất cao thuộc dòng 3 Series của thương hiệu ô tô hạng sang nước Đứ', '2023-06-29 07:18:03', 1, '2023-06-29 07:18:03', 1, 1),
(56, 42, 22, 'BMW M3 Cổ Điển', 'bmw-m3-co-dien', 'bmw-m3-co-dien.jpg', 'Chỉ có 600 chiếc từng được chế tạo, và thân vỏ của nó chỉ chia sẻ mỗi phần nắp capô với mẫu E30 M3 tiêu chuẩn. Cung cấp sức mạnh cho M3 Sport Evolution là động cơ 4 xi lanh, 2,5 lít S14B23 cho công suất 238 mã lực. Đây được coi là một hiện tượng tại thời điểm đó', 1, 9100000000, 8890000000, 'bmw', 'Từ cuối năm 1989 đến đầu năm 1990, BMW đã giới thiệu phiên bản E30 Generation M3 Sport Evolution - chiếc xe đã trở thành huyền thoại và là một trong những chiếc xe cổ điển mang tính biểu tượng nhất mọi thời đại', '2023-06-29 07:18:38', 1, '2023-06-29 07:18:38', 1, 1),
(57, 41, 24, 'Kia K3 2022', 'kia-k3-2022', 'kia-k3-2022.jpg', 'Kia K3 2022 sở hữu kích thước tổng thể dài, rộng, cao là 4.640 mm, 1.800 mm và 1.450 mmm; chiều dài cơ sở ở mức 2.700; khoảng sáng gầm 150 mm', 1, 619000000, 550000000, 'kia', 'K3 thực tế là phiên bản mới của Cerato tại Việt Nam. Hãng xe Hàn Quốc thống nhất tên gọi K3 cho tất cả các thị trường kể từ đời này', '2023-06-29 07:19:04', 1, '2023-06-29 07:19:04', 1, 1),
(58, 41, 17, 'Mazda 3 2021', 'mazda-3-2021', 'mazda-3-2021.png', 'Động cơ SkyActiv-G mới trên Mazda3 được giới chuyên môn đánh giá cao ở khía cạnh cải thiện hiệu suất và tiết kiệm nhiên liệu nhờ công nghệ phun xăng trực tiếp với tỉ số nén cao nổi tiếng của Mazda.', 1, 799000000, 669000000, 'MAZDA 3', 'Mazda3 được tích hợp nhiều công nghệ tiên tiến nhất nhằm hỗ trợ tối đa tài xế, tăng trải nghiệm lái hứng khởi trong khi vẫn đảm bảo an toàn.', '2023-06-23 00:26:59', 1, '2023-06-23 00:26:59', 1, 1),
(59, 41, 18, 'Toyota Camry 2022', 'toyota-camry-2022', 'toyota-camry-2022.png', 'Toyota Camry 2022 sở hữu kích thước tổng thể dài, rộng, cao là 4.885 mm, 1.840 mm và 1.445 mmm; chiều dài cơ sở ở mức 2.825; khoảng sáng gầm 140 mm. Có thể nói, Camry sở hữu kích thước lớn nhất trong phân khúc Sedan hạng D khi lớn hơn hẳn so với các đối thủ như: Kia Optima, Volkswagen Passat, Subaru Outback...', 1, 1167000064, 1002700000, 'TOYOTA CAMRY', 'Chiếc xe gắn liền với nhiều cơ quan công quyền với không gian rộng, nhiều trang bị tiện nghị cho hàng ghế thứ hai, doanh số mẫu này luôn ổn định mặc dù có giai đoạn đi xuống nhưng Camry vẫn là mẫu xe được yêu thích trong phân khúc sedan cỡ D.', '2023-06-29 07:19:26', 1, '2023-06-29 07:19:26', 1, 1),
(60, 43, 25, 'Jeep Wrangler 2023', 'jeep-wrangler-2023', 'jeep-wrangler-2023.png', 'So với các dòng xe Jeep khác, Jeep Wrangler qua nhiều thế hệ vẫn giữ được những đường nét thiết kế đặc trưng, vốn đã trở thành biểu tượng của Jeep về một thiết kế SUV Offroad huyền thoại.', 1, 3700000000, 3600000000, 'jeep', 'Ra mắt lần đầu vào năm 1986 để thay thế dòng xe Jeep CJ, vốn là một chiếc xe được dân dụng hóa từ nguyên mẫu quân sự, Jeep Wrangler liên tục ra mắt thế hệ mới theo chu kỳ 10 năm', '2023-06-29 07:19:45', 1, '2023-06-29 07:19:45', 1, 1),
(61, 43, 16, 'Mercedes AMG G63', 'mercedes-amg-g63', 'mercedes-amg-g63.jpg', 'Mercedes-AMG G 63 sở hữu kích thước tổng thể dài x rộng x cao lần lượt là 4.763 x 1.855 x 1.938 (mm), những con số được đánh giá là khá hài hòa, cơ sở để tạo nên một \"cơ thể\" hoàn mỹ, khó cưỡng ngay từ cái nhìn đầu tiên. Đồng thời, các thông số này cũng dài hơn 101mm, rộng hơn 121mm và cao hơn 40mm so với thế hệ trước, hứa hẹn sẽ mang đến một không gian nội thất rộng rãi, thoải mái hơn.', 12, 15599990000, 1459000000, 'amg g63', 'Mercedes-Benz G-Class là một trong số những dòng SUV địa hình nổi tiếng với khả năng off-road đỉnh cao, một biểu tượng vượt thời gian. G-Class bắt đầu được mở bán từ năm 1979, đến năm 2002 bản hiệu suất cao mang tên Mercedes AMG G 63 chính thức ra đờ', '2023-06-29 07:20:17', 1, '2023-06-29 07:20:17', 1, 1),
(62, 43, 21, 'Peugeot 5008', 'peugeot-5008', 'peugeot-5008.png', 'Peugeot 5008 được trang bị động cơ tăng áp 1.6 THP công suất 165 mã lực tại tua máy 6.000 vòng/ phút. Sức kéo 245 Nm từ 1.400 – 4.000 vòng/ phút.', 1, 1120000000, 1000033333, 'peogeot', 'Peugeot 5008 là một chiếc SUV 7 chỗ có giá bán từ 1,304 tỷ với thiết kế độc đáo, khoang nội thất nổi bật với triết lý New i-Cockpit.', '2023-06-29 07:21:10', 1, '2023-06-29 07:21:10', 1, 1),
(63, 43, 15, 'Volvo XC60', 'volvo-xc60', 'volvo-xc60.png', 'Volvo XC60 2023 sở hữu những đường nét thiết kế tương tự đàn anh XC90 với phong cách cứng cáp, mạnh mẽ. Phần đầu xe sắc sảo với những mảng vác chạy dài từ nắp capo, hốc đèn chiếu sáng, cản trước đến đèn sương mù.', 1, 2500000000, 2333040000, 'volvo', 'Volvo XC60 2023 chính thức ra mắt thị trường nước ta tại Triển lãm Ô tô quốc tế Việt Nam 2017 (VIMS). Chiếc SUV hạng sang của hãng xe Thụy Điển sẽ đối đầu với các tên tuổi nổi tiếng ở Việt Nam như Audi Q5, Mercedes-Benz GLC,..', '2023-06-29 07:21:56', 1, '2023-06-29 07:21:56', 1, 1),
(64, 43, 16, 'Mercedes-Benz GLE 450 4Matic', 'mercedes-benz-gle-450-4matic', 'mercedes-benz-gle-450-4matic.jpg', 'Với những cải tiến giá trị, phiên bản mới này hứa hẹn sẽ là đại diện tiêu biểu cho thế hệ SUV 7 chỗ hiện đại trên thị trường xe hạng sang. Đặc biệt hơn, nhờ sử dụng công nghệ mới nhất từ hãng khối động cơ I6 tích hợp hệ thống Mild-hybrid EQ Boost, xe hoạt động một cách vô cùng êm ái và có khả năng tăng tốc cực ấn tượng, đủ sức để cùng bạn chinh phục mọi cung đường', 1, 2799999999, 2699999999, 'gle 450', 'Mercedes GLE 450 4Matic 2023 dòng xe thuộc phân khúc 7 chỗ thương hiệu nhà Mercedes-Benz đã rất thành công trong năm vừa qua', '2023-06-29 07:22:39', 1, '2023-06-29 07:22:39', 1, 1),
(65, 39, 18, 'Toyota Avanza Premio', 'toyota-avanza-premio', 'toyota-avanza-premio.png', 'Bản mới của Avanza thay đổi triệt để ngoại, nội thất. Động cơ mới loại 1,5 lít cho công suất 104 mã lực, mô-men xoắn cực đại 138 Nm. Hai tùy chọn cấu hình là số sàn MT giá 548 triệu đồng và CVT 588 triệu đồng.', 1, 558000000, 510000000, 'xe mpv', 'Avanza Premio thế hệ mới (thứ ba) được Toyota Việt Nam ra mắt vào 23/3, nhập khẩu Indonesia. Mẫu MPV phát triển dựa trên nền tảng khung gầm DNGA của hãng con Daihatsu, cạnh tranh các đối thủ như Suzuki Ertita, XL7, Mitsubishi Xpander.', '2023-06-29 07:23:24', 1, '2023-06-29 07:23:24', 1, 1),
(66, 39, 16, 'Mercedes-Benz V250 Luxury', 'mercedes-benz-v250-luxury', 'mercedes-benz-v250-luxury.jpg', 'Ra mắt với nhiều tinh chỉnh trong thiết kế ngoại thất, xe Mercedes V250 Luxury có diện mạo hoàn toàn khác biệt, trẻ trung và thể thao hơn. Khoang hành khách bên trong cũng được chú trọng tối ưu hóa, mang đến sự tiện nghi tối đa. Dưới đây là bài đánh giá về các thông số kỹ thuật của dòng xe này.', 1, 2890000000, 2689000000, 'xe mpv', 'Giá Mercedes-Benz V250 tại Việt Nam bắt đầu từ 2.569.000.000 VNĐ. Mức giá thấp nhất của mẫu xe Minivan 2020 là Luxury, cho đến Mercedes-Benz V250 AMG có giá 3.125.000.000 VNĐ.', '2023-06-29 07:23:57', 1, '2023-06-29 07:23:57', 1, 1),
(67, 39, 24, 'Kia Carnival 2022', 'kia-carnival-2022', 'kia-carnival-2022.jpg', 'Kia Carnival là thế hệ thứ 4 của mẫu xe Sedona. Việc đổi tên từ Sedona sang Carnival là để đồng nhất tên gọi trên toàn cầu, giống Cerato thành K3 mới, Optima thành K5 mới.\r\n\r\nXe có thiết kế mới, động cơ mới, kích thước lớn hơn, có thể tùy chọn số ghế ngồi cùng với hàng loạt tiện ích nội thất và công nghệ an toàn.', 1, 1499000000, 1293999999, 'kia canival', 'Carnival là thế hệ thứ 4 của mẫu Sedona, với cách đổi tên gọi để thống nhất trên thị trường toàn cầu, theo chính sách của Kia.', '2023-06-29 07:24:53', 1, '2023-06-29 07:24:53', 1, 1),
(68, 39, 24, 'Kia Rondo', 'kia-rondo', 'kia-rondo.png', 'Được biết đến là mẫu xe lớn nhất trong phân khúc \"Xe MPV cỡ nhỏ\"; Kia Rondo sở hữu kích thước ấn tượng lên tới 4.525 mm chiều dài, 1.805 mm chiều rộng và 1.610 mm chiều cao. Những thông số này vô cùng ấn tượng, lớn hơn hẳn so với các đối thủ như Mitsubishi Xpander, Suzuki XL7, Toyota Rush, Suzuki Ertiga...', 1, 559000000, 520000000, 'kia  mpv', 'Rondo là mẫu MPV gầm thấp thay thế cho chiếc Carens, được hướng đến cạnh tranh với Innova nhưng với kích thước nhỏ hơn, giá bán rẻ hơn.', '2023-06-29 07:25:13', 1, '2023-06-29 07:25:13', 1, 1),
(69, 39, 21, 'Peugeot Traveller', 'peugeot-traveller', 'peugeot-traveller.png', 'Peugeot Traveller bán ra hai phiên bản: Luxury cấu hình 7 chỗ và Premium 4+2 chỗ với hai ghế giữa hạng thương gia. Xe sở hữu chiều dài cơ sở 3.275 mm, khoảng sáng gầm xe 170 mm.', 1, 1549000000, 1424000000, 'xe mpv', 'Khoang lái của Traveller lắp màn hình cảm ứng 7 inch, màn hình HUD trên kính chắn gió. Bảng điều khiển trung tâm điều chỉnh chức năng của hệ thống điều hòa hai vùng, sưởi kính chắn gió, khóa cửa, trượt cửa.', '2023-06-29 07:25:49', 1, '2023-06-29 07:25:49', 1, 1),
(70, 39, 18, 'Toyota Alphard 2023', 'toyota-alphard-2023', 'toyota-alphard-2023.jpg', 'Toyota Alphard có kích thước tổng thể là chiều dài 4.945 mm, rộng 1.850 mm và cao 1.890 mm. Trọng lượng của xe là 2.185 kg, trọng lượng toàn tải là 2.710 kg. Chiều dài cơ sở của xe ở mức 3.000 mm. Khoảng sáng gầm xe 165 mm.', 1, 4420000000, 4223000000, 'xe mpv', 'Tại Việt Nam, Toyota Alphard 2021 được phân phối chính hãng chỉ 1 phiên bản duy nhất là bản Alphard 3.5 với mức giá niêm yết là 4 tỷ 240 triệu.', '2023-06-29 07:26:31', 1, '2023-06-29 07:26:31', 1, 1),
(71, 40, 26, 'Mitsubishi Triton 2021', 'mitsubishi-triton-2021', 'mitsubishi-triton-2021.jpg', 'Mitsubishi Triton sở hữu kích thước tổng thể dài, rộng và cao lần lượt là: 5.305 mm x 1.815 mm x 1.780 mm. Trong phân khúc xe bán tải cỡ trung, kích thước của xe cũng khá tương đương với các xe cùng phân khúc, thậm chí còn dài hơn so với: Nissan Navara, Mazda BT-50 hay Isuzu D-Max. Tuy nhiên, chiều dài cơ sở và khoảng sáng gầm xe lại thua thiệt hơn khi chỉ đạt ở mức 3.000 mm và 205 mm.', 1, 650000000, 619000000, 'Mitsubishi Triton 2021', 'Triton phiên bản mới sở hữu một ngoại hình mới mẻ cùng không gian nội thất gợi cảm xúc hơn cho chủ nhân của mẫu xe này.', '2023-06-29 07:27:05', 1, '2023-06-29 07:27:05', 1, 1),
(72, 40, 27, 'Nissan Navara 2022', 'nissan-navara-2022', 'nissan-navara-2022.jpg', 'Động cơ tăng áp kép 2,3 lít trên Nissan Navara 2022 cho công suất 190 mã lực, mô-men xoắn 450 Nm, đi kèm hộp số tự động 7 cấp. Sức mạnh này không khác biệt so với bản 2.5 cũ nhưng mô-men xoắn tối đa đạt được ở vòng tua máy sớm hơn (1.500 vòng/phút thay vì 2.000 vòng/phút như trước), cho sức kéo tốt hơn.', 1, 772000000, 699000000, 'nissan', 'Động cơ mới có trên hai phiên bản đắt nhất, Nissan Navara 4WD cao cấp, giá 945 triệu đồng và Navara Pro4X, giá 970 triệu đồng, đều dẫn động hai cầu. So với trước, mức giá tăng lần lượt 50 triệu và 25 triệu đồng.', '2023-06-29 07:27:31', 1, '2023-06-29 07:27:31', 1, 1),
(73, 40, 18, 'Toyota Hilux 2023', 'toyota-hilux-2023', 'toyota-hilux-2023.jpg', 'Toyota Hilux 2023 không được nâng cấp lớn mà chỉ có điều chỉnh về trang bị. Theo bảng thông số và trang bị được phía đại lý chia sẻ, phiên bản Toyota Hilux 2.4 E 4x2 AT sẽ có thêm cụm đèn chiếu sáng bi-LED tương tự bản Adventure trước đây cùng đèn phanh LED trên cao, có thể tự cân bằng góc chiếu và có chức năng đèn chờ dẫn đường. Mẫu cũ dùng đèn halogen kèm chóa phản xạ.', 1, 852000000, 752000000, 'Toyota Hilux 2023', 'Phiên bản này sẽ sử dụng động cơ Euro 5 mới, vẫn cho công suất 148 mã lực và mô men xoắn 400 Nm nhưng khác ở tiêu chuẩn khí thải. Hộp số vẫn là loại tự động 6 cấp với hệ dẫn động cầu sau.', '2023-06-23 02:09:44', 1, '2023-06-23 02:09:44', 1, 1),
(74, 40, 20, 'Ford Ranger 2022', 'ford-ranger-2022', 'ford-ranger-2022.jpg', 'Mẫu Ranger mới sở hữu kích thước tổng thể dài, rộng và cao lần lượt là 5.362 mm x 1.918 mm x 1.875 mm; riêng ở bản XL 2.0 4x4 MT thì chiều dài xe ngắn hơn 32 mm, ở mức 5.320 mm. Chiều dài cơ sở xe là 3.270 mm (tăng thêm 50 mm) đi cùng khoảng sáng gầm ở mức 235 mm.', 1, 665000000, 566000000, 'Ford Ranger 2022', 'Ranger được biết đến là vua ở phân khúc bán tải của thị trường Việt sở hữu nhiều ưu điểm như: đa dạng phiên bản, kiểu dáng bắt mắt và nhiều trang bị hiện đại. Với nhiều thay đổi ở thế hệ mới có thể sẽ khiến khoảng cách với các đối thủ càng nới rộng.', '2023-06-29 07:27:49', 1, '2023-06-29 07:27:49', 1, 1),
(75, 40, 20, 'Ford Ranger Raptor 2023', 'ford-ranger-raptor-2023', 'ford-ranger-raptor-2023.jpg', 'Động cơ không có gì thay đổi, vẫn là loại dầu 2.0 bi-turbo, công suất 207 mã lực tại 3.750 vòng/phút, mô-men xoắn cực đại 500 Nm từ 1.750-2.000 vòng/phút. Hộp số tự động 10 cấp. Những bản Ranger khác công suất ở mức 168 mã lực.', 1, 1522000000, 1499999999, 'Ford Ranger Raptor 2023', 'Ranger Raptor là phiên bản cao cấp nhất dòng Ranger. Xe tập trung vào khả năng off-road và trang bị nhiều tính năng.', '2023-06-29 07:28:13', 1, '2023-06-29 07:28:13', 1, 1),
(76, 40, 25, 'Jeep Gladiator 2023', 'jeep-gladiator-2023', 'jeep-gladiator-2023.jpg', 'dẫn động 2 cầu và hộp số tự động 8 cấp như Wrangler nhưng bán tải Jeep Gladiator lắp động cơ 3,6 lít V6, công suất 285 mã lực tại 6.400 vòng/phút, mô-men xoắn 347 mã lực tại 4.100 vòng/phút.', 1, 4430000000, 4232333000, 'Jeep Gladiator 2023', 'Gladiator chung khung gầm với Wrangler, là chiếc bán tải khác biệt với hầu hết đối thủ trên thị trường. Hãng thiết kế Gladiator với nhiều bộ phận có thể tháo rời, tăng tính cơ động khi dã ngoại, vượt địa hình.', '2023-06-29 07:29:55', 1, '2023-06-29 07:29:55', 1, 1),
(77, 40, 17, 'Mazda BT-50 2021', 'mazda-bt-50-2021', 'mazda-bt-50-2021.jpg', 'Mazda BT-50 mới sở hữu kích thước tổng thể dài, rộng và cao lần lượt là: 5.280 x 1.870 x 1.800 mm. Kích thước của thế hệ mới cũng nhỏ hơn thế hệ cũ về chiều dài là 85 mm, chiều cao cũng thấp hơn 21 mm nhưng chiều rộng lớn hơn 20 mm. So với các mẫu xe trong cùng phân khúc thì Mazda BT-50 cũng chỉ lớn hơn Isuzu D-Max, Nissan Navara và còn nhỏ hơn Ford Ranger, Toyota Hilux và Mitsubishi Triton.', 1, 718000000, 649000000, 'Mazda BT-50 2021', 'Phiên bản mới của Mazda BT-50 được thay đổi toàn bộ từ động cơ cho tới nội và ngoại thất. Điều này giúp mẫu xe có thêm những giá trị vô hình khác, đáp ứng nhiều nhu cầu sử dụng hơn thay vì chỉ là một mẫu xe bán tải dùng để chở hàng hóa.', '2023-06-29 07:29:24', 1, '2023-06-29 07:29:24', 1, 1),
(79, 42, 21, 'Peugeot RCZ', 'peugeot-rcz', 'peugeot-rcz.jpg', 'Phần đầu xe đặc trưng với cụm lưới tản nhiệt hình được thiết kế dạng tầng với phía trên là cụm được bo tròn giống chiếc mũ khía dưới được tạo hình đặc sắc như một chiếc miệng cười mang đến một nét độc đáo mà thú vị của xe. Cụm đèn trước được tích hợp dạng HID tự động điều chỉnh góc chiếu đi cùng với đó là dải LED sang trọng và tinh tế. Bên dưới là cụm đèn sương mù cũng được trang bị dạng LED  nằm trong hốc hút gió tạo nên sự thể thao cho chiếc xe.', 1, 1990000000, 1899000000, 'peogeot rcz', 'Peugeot RCZ không chỉ là một chiếc xe có cái tên nổi bật khác biệt so với các dòng xe trong gia đình, mà còn là một tác phẩm thiết kế coupe 2 cửa độc đáo và sáng tạo, phá vỡ các giới hạn về thể loại xe và mang lại cảm giác thể thao tột đỉnh, không thể tìm thấy ở bất kỳ mẫu xe nào khác tại châu Âu', '2023-06-29 05:44:44', 1, '2023-06-29 05:44:44', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã Slider',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên Slider',
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Liên kết',
  `position` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Vị trí',
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hình ảnh',
  `sort_order` int UNSIGNED NOT NULL COMMENT 'Thứ tự',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint UNSIGNED DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `position`, `image`, `sort_order`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(46, 'Ưu Đãi Tháng 7 Chào đón hè', 'http://localhost:3000/', 'slidershow', 'Ưu Đãi Tháng 7 Chào đón hè.jpg', 0, '2023-06-29 10:05:40', 1, '2023-06-29 10:05:40', 1, 1),
(48, 'Khuyễn mãi hè 2023', 'http://localhost:3000/', 'slidershow', 'Khuyễn mãi hè 2023.jpg', 0, '2023-06-29 10:08:38', 1, '2023-06-29 10:08:38', 1, 1),
(50, 'Ưu Đãi Mùa Hè', 'http://localhost:3000/', 'slidershow', 'Ưu Đãi Mùa Hè.png', 0, '2023-06-29 22:23:22', 1, '2023-06-29 22:23:22', 1, 1),
(52, 'uu dai lon', 'http://localhost:3000/', 'slidershow', 'uu dai lon.jpg', 0, '2023-06-29 22:24:41', 1, '2023-06-29 22:24:41', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_topic`
--

CREATE TABLE `db_topic` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã chủ đề',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên chủ đề',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Slug tên chủ đề',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Mã cấp cha',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Sắp xếp',
  `metakey` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `db_topic`
--

INSERT INTO `db_topic` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Tin tức', 'tin-tuc', 0, 1, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:14:39', 1, '2023-06-29 09:31:49', 1, 1),
(2, 'Khuyến Mãi', 'khuyen-mai', 0, 2, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:14:39', 1, '2023-06-29 09:32:07', 1, 1),
(4, 'Tổng Quan', 'tong-quan', 0, 1, 'tongquan', 'tongquan', '2023-06-17 00:47:40', 1, '2023-06-29 09:31:40', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã tài khoản',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Họ và tên',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên đăng nhâp',
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Mật khẩu',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Email',
  `gender` tinyint UNSIGNED NOT NULL COMMENT 'Giới tính',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Điện thoại',
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hình',
  `roles` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quyền truy cập',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `name`, `username`, `password`, `email`, `gender`, `phone`, `image`, `roles`, `address`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Quản trị', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin@gmail.com', 1, '0987654367', 'admin.jpg', 1, 'Hồ Chí Minh', '2020-07-01 00:16:03', 1, '2022-11-21 14:37:14', 1, 1),
(2, 'Khách hàng', 'khachhang', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'khachhang@gmail.com', 1, '0987654367', 'khachhang.jpg', 1, 'Hồ Chí Minh', '2020-07-01 00:16:03', 1, '2023-06-24 10:06:42', 1, 2),
(7, 'tien', 'ngoctien', '10012003', 'ngoctien@gmail.com', 1, '0369864072', 'tien.jpg', 1, 'tphcm', '2023-06-29 22:44:44', 1, '2023-06-29 22:44:44', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_brand`
--
ALTER TABLE `db_brand`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `db_menu`
--
ALTER TABLE `db_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `db_migrations`
--
ALTER TABLE `db_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `db_personal_access_tokens`
--
ALTER TABLE `db_personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tien_personal_access_tokens_token_unique` (`token`),
  ADD KEY `tien_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `db_post`
--
ALTER TABLE `db_post`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `db_topic`
--
ALTER TABLE `db_topic`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_brand`
--
ALTER TABLE `db_brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Mã liên hệ', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `db_menu`
--
ALTER TABLE `db_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Mã Menu', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `db_migrations`
--
ALTER TABLE `db_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã đơn hàng', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã CT Đơn hàng', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_personal_access_tokens`
--
ALTER TABLE `db_personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_post`
--
ALTER TABLE `db_post`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã bài viết', AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã sản phẩm', AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã Slider', AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `db_topic`
--
ALTER TABLE `db_topic`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã chủ đề', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã tài khoản', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
