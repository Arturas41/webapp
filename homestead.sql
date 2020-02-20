-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 20, 2020 at 03:49 AM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `subject_id`, `subject_type`, `type`, `created_at`, `updated_at`) VALUES
(4, 1, 6, 'App\\CForumThread', 'created_CForumThread', '2020-01-14 01:19:26', '2020-01-14 01:19:26'),
(5, 1, 6, 'App\\CForumThread', 'deleting_CForumThread', '2020-01-14 01:19:30', '2020-01-14 01:19:30'),
(6, 1, 7, 'App\\CForumThread', 'created_CForumThread', '2020-01-14 01:20:17', '2020-01-14 01:20:17'),
(7, 1, 5, 'App\\CForumReply', 'created_CForumReply', '2020-01-14 01:20:22', '2020-01-14 01:20:22'),
(8, 1, 6, 'App\\CForumReply', 'created_CForumReply', '2020-01-14 01:20:28', '2020-01-14 01:20:28'),
(9, 1, 7, 'App\\CForumThread', 'deleting_CForumThread', '2020-01-14 01:20:36', '2020-01-14 01:20:36'),
(10, 1, 5, 'App\\CForumReply', 'deleting_CForumReply', '2020-01-14 01:20:36', '2020-01-14 01:20:36'),
(11, 1, 6, 'App\\CForumReply', 'deleting_CForumReply', '2020-01-14 01:20:36', '2020-01-14 01:20:36'),
(12, 1, 8, 'App\\CForumThread', 'created_CForumThread', '2020-01-14 03:14:07', '2020-01-14 03:14:07'),
(13, 1, 7, 'App\\CForumReply', 'created_CForumReply', '2020-01-14 04:09:37', '2020-01-14 04:09:37'),
(14, 1, 9, 'App\\CForumThread', 'created_CForumThread', '2020-01-14 16:03:04', '2020-01-14 16:03:04'),
(15, 1, 10, 'App\\CForumThread', 'created_CForumThread', '2020-01-14 16:04:45', '2020-01-14 16:04:45'),
(16, 1, 11, 'App\\CForumThread', 'created_CForumThread', '2020-01-14 16:15:15', '2020-01-14 16:15:15'),
(17, 1, 8, 'App\\CForumReply', 'created_CForumReply', '2020-01-14 16:55:16', '2020-01-14 16:55:16'),
(18, 1, 3, 'App\\Favorite', 'created_Favorite', '2020-01-14 16:55:22', '2020-01-14 16:55:22'),
(19, 1, 9, 'App\\CForumReply', 'created_CForumReply', '2020-01-14 17:10:20', '2020-01-14 17:10:20'),
(20, 1, 10, 'App\\CForumReply', 'created_CForumReply', '2020-01-14 17:10:26', '2020-01-14 17:10:26'),
(21, 1, 4, 'App\\Favorite', 'created_Favorite', '2020-01-14 17:10:29', '2020-01-14 17:10:29'),
(22, 1, 11, 'App\\CForumReply', 'created_CForumReply', '2020-01-14 17:19:55', '2020-01-14 17:19:55'),
(23, 1, 5, 'App\\Favorite', 'created_Favorite', '2020-01-14 17:20:07', '2020-01-14 17:20:07'),
(24, 1, 12, 'App\\CForumThread', 'created_CForumThread', '2020-01-14 19:35:36', '2020-01-14 19:35:36'),
(25, 1, 12, 'App\\CForumReply', 'created_CForumReply', '2020-01-14 19:44:11', '2020-01-14 19:44:11'),
(26, 1, 12, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-14 19:44:17', '2020-01-14 19:44:17'),
(27, 1, 13, 'App\\CForumReply', 'created_CForumReply', '2020-01-14 19:44:23', '2020-01-14 19:44:23'),
(28, 1, 14, 'App\\CForumReply', 'created_CForumReply', '2020-01-14 19:44:28', '2020-01-14 19:44:28'),
(29, 1, 14, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-14 19:44:32', '2020-01-14 19:44:32'),
(30, 1, 13, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-14 23:27:23', '2020-01-14 23:27:23'),
(31, 1, 15, 'App\\CForumReply', 'created_CForumReply', '2020-01-14 23:27:36', '2020-01-14 23:27:36'),
(32, 1, 16, 'App\\CForumReply', 'created_CForumReply', '2020-01-14 23:27:36', '2020-01-14 23:27:36'),
(33, 1, 17, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 00:04:05', '2020-01-15 00:04:05'),
(34, 1, 17, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 00:04:17', '2020-01-15 00:04:17'),
(35, 1, 18, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 00:05:24', '2020-01-15 00:05:24'),
(36, 1, 18, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 00:05:30', '2020-01-15 00:05:30'),
(37, 1, 6, 'App\\Favorite', 'created_Favorite', '2020-01-15 01:22:24', '2020-01-15 01:22:24'),
(38, 1, 7, 'App\\Favorite', 'created_Favorite', '2020-01-15 01:23:18', '2020-01-15 01:23:18'),
(39, 1, 17, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 01:33:19', '2020-01-15 01:33:19'),
(40, 1, 8, 'App\\Favorite', 'created_Favorite', '2020-01-15 01:35:40', '2020-01-15 01:35:40'),
(41, 1, 17, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:10:55', '2020-01-15 03:10:55'),
(42, 1, 16, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:10:58', '2020-01-15 03:10:58'),
(43, 1, 15, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:10:59', '2020-01-15 03:10:59'),
(44, 1, 18, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 03:11:05', '2020-01-15 03:11:05'),
(45, 1, 19, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 03:11:15', '2020-01-15 03:11:15'),
(46, 1, 20, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 03:11:20', '2020-01-15 03:11:20'),
(47, 1, 9, 'App\\Favorite', 'created_Favorite', '2020-01-15 03:11:28', '2020-01-15 03:11:28'),
(48, 1, 19, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:11:40', '2020-01-15 03:11:40'),
(49, 1, 21, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 03:11:55', '2020-01-15 03:11:55'),
(50, 1, 18, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:12:55', '2020-01-15 03:12:55'),
(51, 1, 21, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:13:03', '2020-01-15 03:13:03'),
(52, 1, 22, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 03:13:12', '2020-01-15 03:13:12'),
(53, 1, 20, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:14:27', '2020-01-15 03:14:27'),
(54, 1, 23, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 03:14:29', '2020-01-15 03:14:29'),
(55, 1, 24, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 03:14:35', '2020-01-15 03:14:35'),
(56, 1, 24, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:14:59', '2020-01-15 03:14:59'),
(57, 1, 22, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:16:49', '2020-01-15 03:16:49'),
(58, 1, 25, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 03:20:50', '2020-01-15 03:20:50'),
(59, 1, 23, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:21:12', '2020-01-15 03:21:12'),
(60, 1, 26, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 03:27:20', '2020-01-15 03:27:20'),
(61, 1, 27, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 03:27:27', '2020-01-15 03:27:27'),
(62, 1, 28, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 03:28:36', '2020-01-15 03:28:36'),
(63, 1, 29, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 03:28:41', '2020-01-15 03:28:41'),
(64, 1, 29, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:29:01', '2020-01-15 03:29:01'),
(65, 1, 28, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:29:13', '2020-01-15 03:29:13'),
(66, 1, 25, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 03:29:22', '2020-01-15 03:29:22'),
(67, 1, 30, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 16:09:53', '2020-01-15 16:09:53'),
(68, 1, 31, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 16:10:26', '2020-01-15 16:10:26'),
(69, 1, 32, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 16:44:00', '2020-01-15 16:44:00'),
(70, 1, 33, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 16:47:15', '2020-01-15 16:47:15'),
(71, 1, 34, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 16:51:25', '2020-01-15 16:51:25'),
(72, 1, 35, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 16:51:54', '2020-01-15 16:51:54'),
(73, 1, 36, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 16:52:13', '2020-01-15 16:52:13'),
(74, 1, 37, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 16:55:44', '2020-01-15 16:55:44'),
(75, 1, 38, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 16:59:41', '2020-01-15 16:59:41'),
(76, 1, 39, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 16:59:55', '2020-01-15 16:59:55'),
(77, 1, 40, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 16:59:57', '2020-01-15 16:59:57'),
(78, 1, 41, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:00:06', '2020-01-15 17:00:06'),
(79, 1, 42, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:00:13', '2020-01-15 17:00:13'),
(80, 1, 43, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:01:40', '2020-01-15 17:01:40'),
(81, 1, 44, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:04:52', '2020-01-15 17:04:52'),
(82, 1, 45, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:04:54', '2020-01-15 17:04:54'),
(83, 1, 46, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:05:05', '2020-01-15 17:05:05'),
(84, 1, 47, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:07:35', '2020-01-15 17:07:35'),
(85, 1, 48, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:08:03', '2020-01-15 17:08:03'),
(86, 1, 49, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:11:03', '2020-01-15 17:11:03'),
(87, 1, 50, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:11:33', '2020-01-15 17:11:33'),
(88, 1, 51, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:11:39', '2020-01-15 17:11:39'),
(89, 1, 52, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:12:08', '2020-01-15 17:12:08'),
(90, 1, 53, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:12:13', '2020-01-15 17:12:13'),
(91, 1, 54, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:16:27', '2020-01-15 17:16:27'),
(92, 1, 26, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:17:58', '2020-01-15 17:17:58'),
(93, 1, 27, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:18:00', '2020-01-15 17:18:00'),
(94, 1, 30, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:18:01', '2020-01-15 17:18:01'),
(95, 1, 31, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:18:04', '2020-01-15 17:18:04'),
(96, 1, 32, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:18:04', '2020-01-15 17:18:04'),
(97, 1, 33, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:18:06', '2020-01-15 17:18:06'),
(98, 1, 34, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:18:17', '2020-01-15 17:18:17'),
(99, 1, 35, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:18:33', '2020-01-15 17:18:33'),
(100, 1, 54, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:18:54', '2020-01-15 17:18:54'),
(101, 1, 53, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:18:56', '2020-01-15 17:18:56'),
(102, 1, 52, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:18:58', '2020-01-15 17:18:58'),
(103, 1, 51, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:18:58', '2020-01-15 17:18:58'),
(104, 1, 50, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:18:59', '2020-01-15 17:18:59'),
(105, 1, 49, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:00', '2020-01-15 17:19:00'),
(106, 1, 48, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:00', '2020-01-15 17:19:00'),
(107, 1, 47, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:01', '2020-01-15 17:19:01'),
(108, 1, 45, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:01', '2020-01-15 17:19:01'),
(109, 1, 46, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:02', '2020-01-15 17:19:02'),
(110, 1, 44, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:03', '2020-01-15 17:19:03'),
(111, 1, 43, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:04', '2020-01-15 17:19:04'),
(112, 1, 42, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:04', '2020-01-15 17:19:04'),
(113, 1, 41, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:05', '2020-01-15 17:19:05'),
(114, 1, 40, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:06', '2020-01-15 17:19:06'),
(115, 1, 39, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:07', '2020-01-15 17:19:07'),
(116, 1, 38, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:08', '2020-01-15 17:19:08'),
(117, 1, 37, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:09', '2020-01-15 17:19:09'),
(118, 1, 55, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:19:16', '2020-01-15 17:19:16'),
(119, 1, 56, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:19:20', '2020-01-15 17:19:20'),
(120, 1, 55, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:23', '2020-01-15 17:19:23'),
(121, 1, 57, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:19:25', '2020-01-15 17:19:25'),
(122, 1, 36, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:27', '2020-01-15 17:19:27'),
(123, 1, 58, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:19:29', '2020-01-15 17:19:29'),
(124, 1, 59, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:19:33', '2020-01-15 17:19:33'),
(125, 1, 57, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:36', '2020-01-15 17:19:36'),
(126, 1, 56, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:19:38', '2020-01-15 17:19:38'),
(127, 1, 60, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:20:46', '2020-01-15 17:20:46'),
(128, 1, 58, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:20:51', '2020-01-15 17:20:51'),
(129, 1, 60, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:20:54', '2020-01-15 17:20:54'),
(130, 1, 59, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:20:57', '2020-01-15 17:20:57'),
(131, 1, 61, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:20:59', '2020-01-15 17:20:59'),
(132, 1, 62, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:21:02', '2020-01-15 17:21:02'),
(133, 1, 63, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:21:04', '2020-01-15 17:21:04'),
(134, 1, 61, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:21:07', '2020-01-15 17:21:07'),
(135, 1, 63, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:21:09', '2020-01-15 17:21:09'),
(136, 1, 64, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:23:11', '2020-01-15 17:23:11'),
(137, 1, 65, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:23:14', '2020-01-15 17:23:14'),
(138, 1, 66, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:23:16', '2020-01-15 17:23:16'),
(139, 1, 62, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:23:18', '2020-01-15 17:23:18'),
(140, 1, 64, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:23:48', '2020-01-15 17:23:48'),
(141, 1, 65, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:24:21', '2020-01-15 17:24:21'),
(142, 1, 67, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:24:29', '2020-01-15 17:24:29'),
(143, 1, 68, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:24:32', '2020-01-15 17:24:32'),
(144, 1, 66, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:27:22', '2020-01-15 17:27:22'),
(145, 1, 69, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:27:28', '2020-01-15 17:27:28'),
(146, 1, 70, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:27:30', '2020-01-15 17:27:30'),
(147, 1, 67, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:27:37', '2020-01-15 17:27:37'),
(148, 1, 68, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:30:09', '2020-01-15 17:30:09'),
(149, 1, 69, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:30:14', '2020-01-15 17:30:14'),
(150, 1, 70, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:31:01', '2020-01-15 17:31:01'),
(151, 1, 71, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:41:27', '2020-01-15 17:41:27'),
(152, 1, 72, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:41:59', '2020-01-15 17:41:59'),
(153, 1, 73, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:42:02', '2020-01-15 17:42:02'),
(154, 1, 73, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:42:09', '2020-01-15 17:42:09'),
(155, 1, 71, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:42:16', '2020-01-15 17:42:16'),
(156, 1, 74, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:42:25', '2020-01-15 17:42:25'),
(157, 1, 74, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:42:31', '2020-01-15 17:42:31'),
(158, 1, 75, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:42:33', '2020-01-15 17:42:33'),
(159, 1, 76, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:42:33', '2020-01-15 17:42:33'),
(160, 1, 77, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:42:37', '2020-01-15 17:42:37'),
(161, 1, 78, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:42:40', '2020-01-15 17:42:40'),
(162, 1, 77, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:42:45', '2020-01-15 17:42:45'),
(163, 1, 76, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:42:48', '2020-01-15 17:42:48'),
(164, 1, 79, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:43:06', '2020-01-15 17:43:06'),
(165, 1, 80, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:43:08', '2020-01-15 17:43:08'),
(166, 1, 81, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:43:10', '2020-01-15 17:43:10'),
(167, 1, 82, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:43:10', '2020-01-15 17:43:10'),
(168, 1, 83, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:43:12', '2020-01-15 17:43:12'),
(169, 1, 82, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:43:16', '2020-01-15 17:43:16'),
(170, 1, 80, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:43:21', '2020-01-15 17:43:21'),
(171, 1, 78, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:43:53', '2020-01-15 17:43:53'),
(172, 1, 72, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:43:56', '2020-01-15 17:43:56'),
(173, 1, 81, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:43:58', '2020-01-15 17:43:58'),
(174, 1, 75, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:44:58', '2020-01-15 17:44:58'),
(175, 1, 79, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:44:59', '2020-01-15 17:44:59'),
(176, 1, 84, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:45:03', '2020-01-15 17:45:03'),
(177, 1, 85, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:45:06', '2020-01-15 17:45:06'),
(178, 1, 86, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 17:45:09', '2020-01-15 17:45:09'),
(179, 1, 84, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:45:10', '2020-01-15 17:45:10'),
(180, 1, 85, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:45:11', '2020-01-15 17:45:11'),
(181, 1, 86, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 17:45:11', '2020-01-15 17:45:11'),
(182, 1, 87, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 18:30:30', '2020-01-15 18:30:30'),
(183, 1, 87, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 18:30:33', '2020-01-15 18:30:33'),
(184, 1, 88, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 18:42:21', '2020-01-15 18:42:21'),
(185, 1, 89, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 18:42:24', '2020-01-15 18:42:24'),
(186, 1, 90, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 18:42:26', '2020-01-15 18:42:26'),
(187, 1, 91, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 18:42:28', '2020-01-15 18:42:28'),
(188, 1, 92, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 18:42:31', '2020-01-15 18:42:31'),
(189, 1, 93, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 18:46:17', '2020-01-15 18:46:17'),
(190, 1, 94, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 18:46:28', '2020-01-15 18:46:28'),
(191, 1, 95, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 18:48:09', '2020-01-15 18:48:09'),
(192, 1, 96, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 18:48:11', '2020-01-15 18:48:11'),
(193, 1, 97, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 18:48:14', '2020-01-15 18:48:14'),
(194, 1, 98, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 19:35:19', '2020-01-15 19:35:19'),
(195, 1, 95, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 19:35:26', '2020-01-15 19:35:26'),
(196, 1, 96, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 19:35:30', '2020-01-15 19:35:30'),
(197, 1, 98, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 19:35:33', '2020-01-15 19:35:33'),
(198, 1, 91, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 19:35:40', '2020-01-15 19:35:40'),
(199, 1, 92, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-15 19:35:44', '2020-01-15 19:35:44'),
(200, 1, 99, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 23:37:29', '2020-01-15 23:37:29'),
(201, 1, 100, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 23:37:37', '2020-01-15 23:37:37'),
(202, 1, 101, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 23:38:20', '2020-01-15 23:38:20'),
(203, 1, 102, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 23:38:31', '2020-01-15 23:38:31'),
(204, 1, 103, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 23:38:37', '2020-01-15 23:38:37'),
(205, 1, 10, 'App\\Favorite', 'created_Favorite', '2020-01-15 23:39:23', '2020-01-15 23:39:23'),
(206, 1, 104, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 23:39:35', '2020-01-15 23:39:35'),
(207, 2, 105, 'App\\CForumReply', 'created_CForumReply', '2020-01-15 23:40:46', '2020-01-15 23:40:46'),
(208, 2, 106, 'App\\CForumReply', 'created_CForumReply', '2020-01-16 04:26:34', '2020-01-16 04:26:34'),
(209, 2, 107, 'App\\CForumReply', 'created_CForumReply', '2020-01-16 04:26:34', '2020-01-16 04:26:34'),
(210, 2, 108, 'App\\CForumReply', 'created_CForumReply', '2020-01-16 04:28:45', '2020-01-16 04:28:45'),
(211, 1, 104, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:08:51', '2020-01-16 05:08:51'),
(212, 1, 102, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:08:53', '2020-01-16 05:08:53'),
(213, 1, 103, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:08:54', '2020-01-16 05:08:54'),
(214, 1, 100, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:08:56', '2020-01-16 05:08:56'),
(215, 1, 101, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:08:56', '2020-01-16 05:08:56'),
(216, 1, 97, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:09:00', '2020-01-16 05:09:00'),
(217, 1, 99, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:09:00', '2020-01-16 05:09:00'),
(218, 1, 93, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:09:02', '2020-01-16 05:09:02'),
(219, 1, 94, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:09:03', '2020-01-16 05:09:03'),
(220, 1, 89, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:09:05', '2020-01-16 05:09:05'),
(221, 1, 90, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:09:05', '2020-01-16 05:09:05'),
(222, 1, 83, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:09:07', '2020-01-16 05:09:07'),
(223, 1, 88, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-16 05:09:08', '2020-01-16 05:09:08'),
(224, 1, 109, 'App\\CForumReply', 'created_CForumReply', '2020-01-16 05:09:20', '2020-01-16 05:09:20'),
(225, 1, 110, 'App\\CForumReply', 'created_CForumReply', '2020-01-16 05:09:47', '2020-01-16 05:09:47'),
(226, 1, 111, 'App\\CForumReply', 'created_CForumReply', '2020-01-16 05:10:01', '2020-01-16 05:10:01'),
(227, 1, 112, 'App\\CForumReply', 'created_CForumReply', '2020-01-16 05:10:54', '2020-01-16 05:10:54'),
(228, 1, 113, 'App\\CForumReply', 'created_CForumReply', '2020-01-16 05:11:39', '2020-01-16 05:11:39'),
(229, 1, 114, 'App\\CForumReply', 'created_CForumReply', '2020-01-16 05:11:50', '2020-01-16 05:11:50'),
(230, 1, 13, 'App\\CForumThread', 'created_CForumThread', '2020-01-20 21:53:47', '2020-01-20 21:53:47'),
(231, 1, 111, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-23 05:22:40', '2020-01-23 05:22:40'),
(232, 1, 115, 'App\\CForumReply', 'created_CForumReply', '2020-01-23 05:23:54', '2020-01-23 05:23:54'),
(233, 1, 116, 'App\\CForumReply', 'created_CForumReply', '2020-01-23 05:24:07', '2020-01-23 05:24:07'),
(234, 1, 115, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-23 05:24:10', '2020-01-23 05:24:10'),
(235, 1, 105, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-23 05:24:15', '2020-01-23 05:24:15'),
(236, 1, 106, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-23 05:24:15', '2020-01-23 05:24:15'),
(237, 1, 107, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-23 05:24:15', '2020-01-23 05:24:15'),
(238, 1, 108, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-23 05:24:15', '2020-01-23 05:24:15'),
(239, 1, 109, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-23 05:24:15', '2020-01-23 05:24:15'),
(240, 1, 110, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-23 05:24:15', '2020-01-23 05:24:15'),
(241, 1, 112, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-23 05:24:15', '2020-01-23 05:24:15'),
(242, 1, 113, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-23 05:24:15', '2020-01-23 05:24:15'),
(243, 1, 114, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-23 05:24:15', '2020-01-23 05:24:15'),
(244, 1, 116, 'App\\CForumReply', 'deleted_CForumReply', '2020-01-23 05:24:15', '2020-01-23 05:24:15'),
(245, 1, 12, 'App\\CForumThread', 'deleted_CForumThread', '2020-01-23 05:24:15', '2020-01-23 05:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `angleslash_posts`
--

CREATE TABLE `angleslash_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(2083) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `angleslash_posts`
--

INSERT INTO `angleslash_posts` (`id`, `created_at`, `updated_at`, `title`, `url`, `sub_id`, `user_id`) VALUES
(1, '2020-01-16 23:39:36', '2020-01-16 23:39:36', 'asdf', 'https://vegibit.com/install-laravel-homestead-on-windows/', 1, 1),
(2, '2020-01-23 02:32:39', '2020-01-23 02:32:39', 'asdf', 'https://vegibit.com/install-laravel-homestead-on-windows/', 3, 1),
(3, '2020-01-23 05:03:09', '2020-01-23 05:03:09', 'asdf', 'https://vegibit.com/install-laravel-homestead-on-windows/123', 3, 1),
(4, '2020-01-23 05:03:26', '2020-01-23 05:03:26', 'asdf', 'https://vegibit.com/install-laravel-homestead-on-windows/123', 3, 1),
(5, '2020-01-23 05:06:19', '2020-01-23 05:06:19', 'psot123123123', 'https://vegibit.com/install-laravel-homestead-on-windows/', 3, 1),
(6, '2020-01-23 05:14:27', '2020-01-23 05:14:27', 'asdf', 'https://vegibit.com/install-laravel-homestead-on-windows/', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `angleslash_post_angleslash_tag`
--

CREATE TABLE `angleslash_post_angleslash_tag` (
  `angleslash_post_id` int(10) UNSIGNED NOT NULL,
  `angleslash_tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `angleslash_post_votes`
--

CREATE TABLE `angleslash_post_votes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `angleslash_post_votes`
--

INSERT INTO `angleslash_post_votes` (`id`, `created_at`, `updated_at`, `type`, `user_id`, `post_id`) VALUES
(2, '2020-01-16 23:39:43', '2020-01-16 23:39:43', 'up', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `angleslash_subs`
--

CREATE TABLE `angleslash_subs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `angleslash_subs`
--

INSERT INTO `angleslash_subs` (`id`, `created_at`, `updated_at`, `name`, `owner_id`) VALUES
(1, '2020-01-16 23:39:18', '2020-01-16 23:39:18', 'arturas', 1),
(2, '2020-01-23 00:32:37', '2020-01-23 00:32:37', 'arturas1', 1),
(3, '2020-01-23 02:32:19', '2020-01-23 02:32:19', 'test', 1),
(4, '2020-01-23 02:52:57', '2020-01-23 02:52:57', 'arturas123', 1),
(5, '2020-01-23 05:05:37', '2020-01-23 05:05:37', 'test123123', 1),
(6, '2020-01-23 05:14:11', '2020-01-23 05:14:11', 'sub123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `angleslash_tags`
--

CREATE TABLE `angleslash_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_forum_channels`
--

CREATE TABLE `c_forum_channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_forum_channels`
--

INSERT INTO `c_forum_channels` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'asdf', 'asdf', '2020-01-13 18:01:40', '2020-01-13 18:01:40'),
(2, 'asdf1', 'asdf1', '2020-01-13 18:01:40', '2020-01-13 18:01:40'),
(3, 'asdf12', 'asdf12', '2020-01-13 18:23:54', '2020-01-13 18:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `c_forum_replies`
--

CREATE TABLE `c_forum_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_forum_thread_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_forum_replies`
--

INSERT INTO `c_forum_replies` (`id`, `c_forum_thread_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'gfd hfghdfhfgh', '2020-01-13 16:02:38', '2020-01-13 16:02:38'),
(2, 1, 1, 'dfh fgh gf', '2020-01-13 16:02:41', '2020-01-13 16:02:41'),
(3, 1, 1, 'g gh g', '2020-01-13 16:02:45', '2020-01-13 16:02:45'),
(7, 8, 1, 'cvdg gsdf', '2020-01-14 04:09:37', '2020-01-14 04:09:37'),
(8, 11, 1, 'g dg', '2020-01-14 16:55:15', '2020-01-14 16:55:15'),
(9, 11, 1, 'wetver', '2020-01-14 17:10:20', '2020-01-14 17:10:20'),
(10, 11, 1, 't t t', '2020-01-14 17:10:25', '2020-01-14 17:10:25'),
(11, 11, 1, 'd dfgdfg', '2020-01-14 17:19:55', '2020-01-14 17:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `c_forum_threads`
--

CREATE TABLE `c_forum_threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `c_forum_channel_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_forum_threads`
--

INSERT INTO `c_forum_threads` (`id`, `user_id`, `c_forum_channel_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'asdf ti', 'gfdsd gfsdfgfdfb fg', '2020-01-13 16:02:33', '2020-01-13 16:02:33'),
(3, 1, 1, 'asdf', 'qwfafsdf asdfsdf', '2020-01-13 23:42:08', '2020-01-13 23:42:08'),
(4, 1, 1, 'asdf', 'qwfafsdf asdfsdf', '2020-01-13 23:42:08', '2020-01-13 23:42:08'),
(5, 1, 3, 'asdf ti', 'qwfafsdf asdfsdfd sf sdf d', '2020-01-13 23:44:05', '2020-01-13 23:44:05'),
(8, 1, 1, 'asdfasdf', 'dss s sf sdfsg f', '2020-01-14 03:14:07', '2020-01-14 03:14:07'),
(9, 1, 1, 'dsfgsdfgdfs df', 'g sdfdfg', '2020-01-14 16:03:04', '2020-01-14 16:03:04'),
(10, 1, 1, 'asdfasdf tt', 'tt tt', '2020-01-14 16:04:44', '2020-01-14 16:04:44'),
(11, 1, 2, 'df sd fasdf asd', 'dadf', '2020-01-14 16:15:15', '2020-01-14 16:15:15'),
(13, 1, 1, 'a', '[', '2020-01-20 21:53:47', '2020-01-20 21:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `c_forum_thread_subscriptions`
--

CREATE TABLE `c_forum_thread_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `c_forum_thread_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_study_materials`
--

CREATE TABLE `c_study_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `reference` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_study_materials`
--

INSERT INTO `c_study_materials` (`id`, `user_id`, `reference`, `title`, `created_at`, `updated_at`, `note`) VALUES
(52, 1, 'http://homestead.test/#/c_study/materials/create/50123tt', 'with priority', '2020-01-29 09:03:33', '2020-01-29 09:03:33', 'with priority'),
(54, 1, 'http://homestead.test/#/c_study/materials/createasdsffsd', 'priodddddddddddddddddddddddddddddddddddddddddddd', '2020-01-29 10:07:56', '2020-01-29 10:08:36', 'regfvgsdfgsd'),
(55, 1, 'http://homestead.test/#/c_study/materials/createrwrerw', 'eregwt', '2020-01-29 10:18:30', '2020-01-29 10:18:30', 'dfgfhsg'),
(56, 1, 'http://homestead.test/#/c_study/materials/createewewefefcqw', 'fasdfsdsf', '2020-01-29 10:19:42', '2020-01-29 10:19:42', 'fqwefqw'),
(58, 1, 'http://homestead.test/#/c_study/materials/create/56affdsff', 'rrgerge', '2020-01-29 10:23:23', '2020-01-29 10:23:23', 'ff'),
(59, 1, 'http://homestead.test/#/c_study/materials/create123231323', 'ddddddddddddddddddddddddddd dddddddddd', '2020-01-29 10:25:34', '2020-01-30 08:09:37', 'adafafscfsdafcfdsfasdfd'),
(60, 1, 'http://homestead.test/#/c_study/materials/create231232', 'low', '2020-01-29 10:32:31', '2020-01-29 10:32:31', 'v'),
(61, 1, 'http://homestead.test/#/c_study/materials/creategasdfsagd', 'asgsfdsgsdf', '2020-01-30 13:32:47', '2020-01-30 13:32:47', 'sgddfa'),
(62, 1, 'http://homestead.test/#/c_study/materials/createfasdfsdfasd', 'fresh', '2020-01-30 15:19:52', '2020-01-30 15:19:52', 'dfasfsdfd af sdf sdfas'),
(63, 1, 'http://homestead.test/#/c_study/materials/create1423423', 'parent', '2020-01-31 09:11:50', '2020-01-31 09:11:50', 'http://homestead.test/#/c_study/materials/createsafsfadfsd'),
(64, 1, 'http://homestead.test/#/c_study/materials/create/61ssfsadfas', 'dfasdsdfs', '2020-01-31 09:51:36', '2020-01-31 09:51:36', 'adsfadsdsd'),
(65, 1, 'http://homestead.test/#/c_study/materials/create/64dsdsdds', 'uytuyurtut', '2020-01-31 10:16:31', '2020-01-31 10:16:31', 'rtutrurutu'),
(66, 1, 'http://homestead.test/#/c_study/materials/create/65', 'dasfasdfsd', '2020-01-31 10:17:43', '2020-01-31 10:17:43', 'afsdsfasf sdfasdf asdf'),
(67, 1, 'http://homestead.test/#/c_study/materials/create/65ddasds', 'uuuuuuuuuuuu', '2020-01-31 10:18:53', '2020-01-31 10:18:53', 'dsfa df asdf sd'),
(69, 1, 'http://homestead.test/#/c_study/materials/createdsadsd', 'fdfsfdsfdfsdf', '2020-01-31 10:21:02', '2020-01-31 10:21:02', 'fsdfsfsdgas fddas fd s'),
(70, 1, 'http://homestead.test/#/c_study/materials/create/68ddfsdf', 'dsfasdfasgdfg', '2020-01-31 10:37:49', '2020-01-31 10:37:49', 'fasdfdsfad'),
(71, 1, 'https://vegibit.com/write-a-great-blog-post/', 'Write A Great Blog Post', '2020-02-01 15:01:32', '2020-02-01 15:01:32', NULL),
(72, 1, 'https://vegibit.com/you-should-use-twitter-bootstrap/', 'You Should Use Twitter Bootstrap!', '2020-02-01 15:07:17', '2020-02-01 15:07:17', NULL),
(73, 1, 'https://vegibit.com/get-your-cloud-based-networking-at-home-with-skydog/', 'Get your cloud based networking at home with Skydog', '2020-02-01 15:13:33', '2020-02-01 15:13:33', 'Last updated January 14, 2014'),
(74, 1, 'https://vegibit.com/how-to-learn-cisco-networking/', 'How to Learn Cisco Networking', '2020-02-01 15:22:00', '2020-02-01 15:22:00', NULL),
(75, 1, 'https://www.cisco.com/c/en/us/training-events/training-certifications/certifications/entry/ccent.html', 'Begin with the CCENT level certification', '2020-02-01 15:24:14', '2020-02-01 15:24:14', NULL),
(76, 1, 'https://vegibit.com/whats-next-for-bootstrap/', 'What’s Next For Bootstrap', '2020-02-01 15:50:21', '2020-02-01 15:50:21', NULL),
(77, 1, 'https://vegibit.com/introduction-to-php-variables-and-data-types/', 'Introduction to PHP – Variables and Data Types', '2020-02-01 15:55:25', '2020-02-01 16:05:16', 'PHP supports the following basic data types:\nInteger—Used for whole numbers\nFloat (also called double)—Used for real numbers\nString—Used for strings of characters\nBoolean—Used for true or false values\nArray—Used to store multiple data items\nObject—Used for storing instances of classes\nNull - variable has not been assigned a value\nResource - DB connection, IO connection...\nPHP is a weakly typed language(variable does not need to be declared with a type)'),
(78, 1, 'https://vegibit.com/what-a-constant-is-and-how-to-declare-one/', 'What a Constant is and how to declare one', '2020-02-01 16:10:11', '2020-02-01 16:10:11', 'define(	‘ONEMINUTE’, 60);'),
(79, 1, 'https://vegibit.com/understanding-php-variable-scope/', 'Understanding PHP Variable Scope', '2020-02-01 16:17:35', '2020-02-01 16:17:35', 'The native super globals can be viewed anywhere in the program.\nConstants can be used outside as well as inside functions, i.e., they have global visibility.\nWhen you define a global variable in a script, that variable will have visibility in all areas of that script except for inside of functions within that same script.\nVariables that get declared inside of functions as global will refer to the global variables that share the same name.\nStatic variables declared inside of functions can’t be seen outside of the function, but they do retain their value between function calls.\nPlain vanilla variables inside of functions will be destroyed and unusable once the function has completed its execution.\nThe arrays $_GET and $_POST have special scope rules. They are the well known superglobals with visibility everywhere outside and inside of functions.\nList of superglobal variables:\n$GLOBALS  //An array of all global variables (Like the global keyword, this allows you to \n// access global variables inside a function. for example, as $GLOBALS[‘somevariable’].)\n$_SERVER  //An array of server environment variables\n$_GET  //An array of variables passed to the script via the GET method\n$_POST  //An array of variables passed to the script via the POST method\n$_COOKIE  //An array of cookie variables\n$_FILES  //An array of variables related to file uploads\n$_ENV  //An array of environment variables\n$_REQUEST  //An array of all user input including the contents of input including\n$_GET, $_POST, and $_COOKIE (but not including $_FILES since PHP 4.3.0)\n$_SESSION  //An array of session variables'),
(80, 1, 'https://vegibit.com/using-operators-in-php/', 'Using Operators in PHP', '2020-02-01 16:28:26', '2020-02-01 16:28:26', NULL),
(81, 1, 'https://vegibit.com/group-scope-in-active-directory/', 'Group Scope in Active Directory', '2020-02-01 16:35:15', '2020-02-01 16:35:15', 'have no clue whats active directory'),
(82, 1, 'https://vegibit.com/install-and-configure-windows-server-2012-with-windows-powershell/', 'Install and Configure Windows Server 2012 with Windows Powershell', '2020-02-01 20:02:09', '2020-02-01 20:02:09', NULL),
(83, 1, 'https://www.youtube.com/watch?v=Eqbhag0YNiE', 'How to Install Server Manager in Windows 10 1809 - 2020', '2020-02-01 20:03:30', '2020-02-01 20:03:30', NULL),
(84, 1, 'https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/about/', 'Introduction to Hyper-V on Windows 10', '2020-02-01 20:22:56', '2020-02-01 20:22:56', NULL),
(85, 1, 'https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v', 'Install Hyper-V on Windows 10', '2020-02-01 20:41:23', '2020-02-01 21:09:04', 'Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All\nEnable Hyper-v:\nDISM /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V'),
(86, 1, 'https://www.faqforge.com/windows/check-processor-support-slat-second-level-address-translation/', 'How to Check if Processor Supports SLAT (Second Level Address Translation)', '2020-02-01 20:42:46', '2020-02-01 20:42:46', 'C:\\>coreinfo.exe -v\n\nCoreinfo v3.31 - Dump information on system CPU and memory topology\nCopyright (C) 2008-2014 Mark Russinovich\nSysinternals - www.sysinternals.com\n\nAMD Ryzen 5 3550H with Radeon Vega Mobile Gfx\nAMD64 Family 23 Model 24 Stepping 1, AuthenticAMD\nMicrocode signature: 00000000\nHYPERVISOR      -       Hypervisor is present\nSVM             *       Supports AMD hardware-assisted virtualization\nNP              *       Supports AMD nested page tables (SLAT)'),
(87, 1, 'https://www.amd.com/en/products/apu/amd-ryzen-5-3550h#product-specs', 'AMD Ryzen™ 5 3550H Mobile Processor with Radeon™ Vega 8 Graphics', '2020-02-01 21:02:32', '2020-02-01 21:02:32', NULL),
(88, 1, 'https://www.techrepublic.com/article/reset-your-windows-10-system-with-the-keep-my-files-option/', 'Reset your Windows 10 system with the Keep My Files option', '2020-02-02 08:28:17', '2020-02-02 08:39:06', 'wellllllll that just happen\n[desctop]/Removed/Apps.html\nC:\\Windows\\System32\\drivers\\etc\\hosts\n192.168.10.10  homestead.test\n192.168.10.10  phpmyadmin.test'),
(89, 1, 'https://devanswers.co/install-composer-php-windows-10/', 'How to Install Composer and PHP on Windows 10', '2020-02-02 08:30:53', '2020-02-02 08:30:53', 'PHP 7.2 (7.2.27) - VC15 x64 Non Thread Safe (2020-Jan-22 14:08:42)'),
(90, 1, 'https://www.virtualbox.org/wiki/Downloads', 'virtualbox downloads', '2020-02-02 08:34:37', '2020-02-02 08:34:37', 'VirtualBox 6.1.2'),
(91, 1, 'https://developer.microsoft.com/en-us/windows/downloads/windows-10-sdk', 'Windows 10 SDK', '2020-02-02 08:37:10', '2020-02-02 08:37:10', NULL),
(92, 1, 'https://www.vagrantup.com/downloads.html', 'Download Vagrant', '2020-02-02 08:41:05', '2020-02-02 08:41:05', 'Vagrant (2.2.7)'),
(93, 1, 'https://gitforwindows.org/', 'git for windows', '2020-02-02 08:42:29', '2020-02-02 08:42:29', 'v2.25.0'),
(94, 1, 'https://notepad-plus-plus.org/downloads/v7.8.4/', 'notepad-plus-plus downloads', '2020-02-02 08:43:28', '2020-02-02 08:43:28', 'Notepad++ 7.8.4'),
(95, 1, 'https://netbeans.org/downloads/8.0.2/', 'NetBeans IDE download', '2020-02-02 10:40:05', '2020-02-02 10:42:05', 'NetBeans IDE 8.0.2'),
(96, 1, 'https://www.oracle.com/technetwork/java/javase/downloads/jdk13-downloads-5672538.html', 'Java SE Development Kit Download', '2020-02-02 10:45:10', '2020-02-02 10:45:10', 'v 13'),
(97, 1, 'https://www.java.com/en/download/windows_offline.jsp', 'Download Java for Windows Offline Installation', '2020-02-02 11:36:11', '2020-02-02 11:36:11', 'Version 8 Update 241'),
(98, 1, 'https://isoriver.com/windows-server-2012/', 'Windows Server 2012 ISO Download 64 bit full version', '2020-02-02 11:50:01', '2020-02-02 11:50:01', NULL),
(99, 1, 'https://vegibit.com/what-is-active-directory/', 'What is Active Directory', '2020-02-02 12:07:56', '2020-02-02 12:07:56', 'still no clue'),
(100, 1, 'https://searchwindowsserver.techtarget.com/definition/Active-Directory', 'Active Directory', '2020-02-02 12:30:05', '2020-02-02 12:30:05', NULL),
(101, 1, 'https://vegibit.com/domain-controllers-in-active-directory/', 'Domain Controllers in Active Directory', '2020-02-02 12:55:17', '2020-02-02 12:55:17', NULL),
(102, 1, 'https://vegibit.com/3-concepts-of-administering-windows-server-2012/', '3 Concepts of Administering Windows Server 2012', '2020-02-02 12:56:49', '2020-02-02 12:56:49', NULL),
(103, 1, 'https://vegibit.com/add-a-dns-server-in-windows-server/', 'Add a DNS Server in Windows Server', '2020-02-02 13:01:54', '2020-02-02 13:01:54', NULL),
(104, 1, 'https://vegibit.com/register-voip-phone-to-sip-server/', 'Register VoIP Phone to SIP Server', '2020-02-02 13:28:19', '2020-02-02 13:28:19', 'The Session Initiation Protocol (SIP) is a signaling protocol used for initiating, maintaining, and terminating real-time sessions that include voice, video and messaging applications.[1] SIP is used for signaling and controlling multimedia communication sessions in applications of Internet telephony for voice and video calls, in private IP telephone systems, in instant messaging over Internet Protocol (IP) networks as well as mobile phone calling over LTE (VoLTE).\nLDAP stands for Lightweight Directory Access Protocol. As the name suggests, it is a lightweight client-server protocol for accessing directory services, specifically X.500-based directory services. LDAP runs over TCP/IP or other connection oriented transfer services. LDAP is defined in RFC2251 \"The Lightweight Directory Access Protocol (v3).'),
(105, 1, 'https://www.tldp.org/HOWTO/LDAP-HOWTO/index.html', 'LDAP Linux HOWTO', '2020-02-02 13:29:24', '2020-02-02 13:29:24', NULL),
(106, 1, 'https://vegibit.com/setting-up-the-aec-in-soundstructure/', 'Setting up the AEC in Soundstructure', '2020-02-02 15:04:52', '2020-02-02 15:04:52', NULL),
(107, 1, 'https://vegibit.com/the-3-most-common-types-of-cloud-computing/', 'The 3 Most Common Types of Cloud Computing', '2020-02-02 15:12:51', '2020-02-02 15:12:51', 'Infrastructure as a Service (IaaS) - VM Cloud\nPlatform as a Service (PaaS) - host databases, web servers, or even VoIP services etc. \nSoftware as a Service (SaaS) - software. and software dependencies managed by provider'),
(108, 1, 'https://vegibit.com/4-reasons-microsoft-lync-continues-to-grow/', '4 Reasons Microsoft Lync Continues to Grow', '2020-02-02 15:16:19', '2020-02-02 15:16:19', NULL),
(109, 1, 'https://vegibit.com/controllers-in-codeigniter/', 'Controllers in Codeigniter', '2020-02-02 15:47:07', '2020-02-02 15:47:07', NULL),
(110, 1, 'https://vegibit.com/7-tips-and-tricks-for-twitter-bliss/', '7 Tips and Tricks for Twitter Bliss', '2020-02-02 15:51:25', '2020-02-02 15:51:25', NULL),
(111, 1, 'https://vegibit.com/learn-php-and-programming-by-using-the-eclipse-pdt-debugger/', 'Learn PHP and Programming by using the Eclipse PDT Debugger', '2020-02-02 15:54:49', '2020-02-02 15:54:49', NULL),
(112, 1, 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2019-12/R/eclipse-php-2019-12-R-win32-x86_64.zip', 'Eclipse editor download', '2020-02-02 15:56:25', '2020-02-02 15:56:25', 'File: eclipse-php-2019-12-R-win32-x86_64.zip'),
(113, 1, 'https://vegibit.com/5-hashtag-concepts-in-the-world-of-twitter/', '5 Hashtag Concepts in the World of Twitter', '2020-02-02 17:39:03', '2020-02-02 17:39:03', NULL),
(114, 1, 'https://vegibit.com/5-tips-to-grow-your-blog-traffic/', '5 Tips to Grow Your Blog Traffic', '2020-02-02 17:44:42', '2020-02-02 17:44:42', NULL),
(115, 1, 'https://vegibit.com/how-to-retweet-on-twitter/', 'How to Retweet on Twitter', '2020-02-02 17:49:06', '2020-02-02 17:49:06', NULL),
(116, 1, 'https://vegibit.com/what-are-codeigniter-sessions/', 'What are Codeigniter Sessions', '2020-02-02 18:14:29', '2020-02-02 18:14:29', '$this->session->userdata(\'some_data\');\n$this->session->all_userdata()\n$this->session->unset_userdata($array_items);\n$this->session->set_flashdata(\'item\', \'value\');'),
(117, 1, 'https://vegibit.com/learning-about-views-in-model-view-controller/', 'Learning About Views in Model View Controller', '2020-02-02 18:19:20', '2020-02-02 18:19:20', '$this->load->view(\'sayhiview\', $data);\n<?php foreach ($interests as $interest):?> \n<li><?php echo $interest;?></li>\n<?php endforeach;?>'),
(118, 1, 'https://vegibit.com/codeigniter-model-tutorial/', 'Codeigniter Model Tutorial', '2020-02-02 18:31:28', '2020-02-02 18:31:28', NULL),
(119, 1, 'https://vegibit.com/top-10-websites-for-social-networking/', 'Top 10 Websites for Social Networking', '2020-02-02 18:36:00', '2020-02-02 18:36:00', NULL),
(120, 1, 'https://vegibit.com/php-array-functions/', 'The Top 17 Most Popular PHP Array Functions', '2020-02-02 18:46:13', '2020-02-02 19:08:34', 'is_array($array);//TRUE or FALSE\nin_array(\"searchValue\", $array);//TRUE or FALSE\narray_merge($array1,$array2); // array2 overwrites array1\narrray_keys($array);//get keys \narray_key_exists($array);\narray_shift ( $array ); // same as array_pop() , but shifts key/val of poped array value\narray_push($a1,a2);\narray_pop($a1,a2);\narray_value($a);//all values recursive\narray_map ( \'call_back_function\', $items );\narray_unique($a); //gets only unique values\narray_slice($a,$start_with_index,$count_starting_from_index);\narray_diff(a1,a2);\narray_search($search_for,$array); //$searh_for or FALSE\narray_reverse($array); //order DESC\narray_unshift($value, $array) // add smth to array start => array ( \'interests\' => \'music\' ) + $array;'),
(121, 1, 'https://www.php.net/manual/en/function.array-merge.php', 'array_merge', '2020-02-02 18:46:41', '2020-02-02 18:46:41', NULL),
(122, 1, 'https://vegibit.com/the-top-9-most-popular-php-string-functions/', 'The Top 9 Most Popular PHP String Functions', '2020-02-03 15:10:33', '2020-02-03 15:10:33', 'subsrt($string,$position,$count);\nstrlen($string);\nstr_replace ( mixed $search , mixed $replace , mixed $subject [, int &$count ] ) : mixed\nsearch\nThe value being searched for, otherwise known as the needle. An array may be used to designate multiple needles.\nreplace\nThe replacement value that replaces found search values. An array may be used to designate multiple replacements.\nsubject\nThe string or array being searched and replaced on, otherwise known as the haystack.\nIf subject is an array, then the search and replace is performed with every entry of subject, and the return value is an array as well.\ncount\nIf passed, this will be set to the number of replacements performed.\ntrim($string, $symbols);\nstrpos($haystack, $needle, [$offset]);\nstrtolower();\nstrtoupper();\nis_string();\nstrstr($haystack, $needle); // TRUE/FALSE'),
(123, 1, 'https://vegibit.com/what-are-functions-in-php/', 'What are Functions in PHP', '2020-02-03 15:22:25', '2020-02-03 15:22:25', NULL),
(124, 1, 'https://vegibit.com/3-easy-steps-to-creating-awesome-twitter-lists-via-the-twitter-api/', '3 Easy Steps to Creating Awesome Twitter lists via the Twitter API', '2020-02-03 15:31:19', '2020-02-03 15:31:19', NULL),
(125, 1, 'https://developer.twitter.com/en/docs/basics/getting-started', 'Get started with the Twitter API developer platform', '2020-02-03 15:35:07', '2020-02-03 15:35:07', NULL),
(126, 1, 'https://vegibit.com/build-your-own-news-aggregator-with-twitter-bootstrap-and-simplepie/', 'Build Your Own News Aggregator with Twitter Bootstrap and SimplePie', '2020-02-03 15:39:09', '2020-02-03 15:39:09', NULL),
(127, 1, 'https://vegibit.com/the-most-awesome-php-script-to-highlight-your-code/', 'The Most Awesome PHP Script to Highlight Your Code', '2020-02-03 15:44:06', '2020-02-03 16:52:19', '#/general_playground/highlight_your_code'),
(128, 1, 'https://nodejs.org/en/', 'nodejs install', '2020-02-03 16:11:04', '2020-02-03 16:11:04', 'Download for Windows (x64)\n12.14.1 LTS'),
(129, 1, 'https://vegibit.com/be-the-best-you-can-be/', 'Be the BEST You Can Be!', '2020-02-04 21:39:42', '2020-02-04 21:39:42', NULL),
(130, 1, 'https://vegibit.com/twitter-bootstrap-modal-tutorial/', 'Twitter Bootstrap Modal Tutorial', '2020-02-04 21:41:28', '2020-02-04 21:41:28', NULL),
(131, 1, 'https://vegibit.com/top-12-websites-for-twitter-bootstrap/', 'Top 12 Websites for Twitter Bootstrap', '2020-02-04 21:44:02', '2020-02-04 21:44:02', NULL),
(132, 1, 'https://vegibit.com/top-19-most-influential-web-designers-on-twitter/', 'Top 19 Most Influential Web Designers on Twitter', '2020-02-04 21:45:30', '2020-02-04 21:45:30', NULL),
(133, 1, 'https://vegibit.com/11-reasons-why-it-rocks-to-be-a-web-designer/', '11 Reasons Why It Rocks to Be a Web Designer', '2020-02-04 21:46:19', '2020-02-04 21:46:19', NULL),
(134, 1, 'https://vegibit.com/install-laravel-on-windows/', 'Install Laravel on Windows', '2020-02-04 21:47:59', '2020-02-04 21:47:59', 'composer create-project laravel/laravel blog --prefer-dist'),
(135, 1, 'https://vegibit.com/7-ways-to-use-twitter-for-business/', '7 Ways to Use Twitter for Business', '2020-02-04 21:48:40', '2020-02-04 21:48:40', NULL),
(136, 1, 'https://vegibit.com/the-top-10-ways-to-get-more-traffic-to-your-website-or-blog/', 'The Top 10 Ways to Get More Traffic to Your Website or Blog', '2020-02-04 21:49:37', '2020-02-04 21:49:37', NULL),
(137, 1, 'https://vegibit.com/crud-in-laravel-4/', 'Crud In Laravel 4', '2020-02-04 21:50:55', '2020-02-04 21:50:55', NULL),
(138, 1, 'https://vegibit.com/laravel-eloquent-orm-tutorial/', 'Laravel Eloquent ORM Tutorial', '2020-02-04 22:03:25', '2020-02-04 22:03:25', NULL),
(139, 1, 'https://vegibit.com/json-in-laravel/', 'https://vegibit.com/json-in-laravel/', '2020-02-04 22:08:08', '2020-02-04 22:08:08', NULL),
(140, 1, 'https://vegibit.com/what-is-the-ioc-container-in-laravel/', 'What is the IoC Container in Laravel', '2020-02-04 22:21:32', '2020-02-04 22:21:32', 'In Laravel, the $app object is your container'),
(141, 1, 'https://vegibit.com/what-is-a-laravel-interface/', 'What is a Laravel Interface?', '2020-02-04 23:44:09', '2020-02-04 23:44:09', 'App::bind(\'SomeInterface\', \'ClassImplementingSomeInterface\');\n$classImplementingSomeInterfaceInstance = App::make(\'SomeInterface\');  \ncan be injected into controllers directly:\nclass SomeController extends BaseController {\n	public function __construct(SomeInterface $someClass)\n	{\n		$this->$someClass= $someClass;\n	}\n}'),
(142, 1, 'https://vegibit.com/many-to-many-relationships-in-laravel/', 'Many to Many Relationships in Laravel', '2020-02-05 00:03:04', '2020-02-05 00:03:04', 'Blogpost::find(4)->tags()->save($tag); //saves to tag table and pivit \n$blogpost->tags()->detach(5); //deletes relation from pivit table\n$blogpost->tags()->attach(2); //adds relation to pivit table\n$blogpost->tags()->sync(array(1)); // deletes all relations and and then adds'),
(143, 1, 'https://github.com/laracasts/Laravel-5-Generators-Extended', 'laracasts / Laravel-5-Generators-Extended', '2020-02-05 00:03:44', '2020-02-05 00:03:44', NULL),
(144, 1, 'https://vegibit.com/enter-the-facade/', 'Enter The Facade', '2020-02-05 00:41:37', '2020-02-05 00:41:37', '\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\nAll of these class files extend the Facade class, and act as support classes to get access to an object in the IoC Container\nSo basicly facades are used for clean syntax'),
(145, 1, 'https://vegibit.com/laravel-routing-tutorial/', 'Laravel Routing Tutorial', '2020-02-05 11:41:50', '2020-02-05 11:41:50', 'Route::get(\'route_path/{param?}\', function($param = null){\n//optional param\n})'),
(146, 1, 'https://vegibit.com/introduction-to-laravel-controllers/', 'Introduction To Laravel Controllers', '2020-02-05 11:43:44', '2020-02-05 11:43:44', NULL),
(147, 1, 'https://vegibit.com/laravel-restful-controllers/', 'Laravel RESTful Controllers', '2020-02-05 12:13:37', '2020-02-05 13:56:16', 'REST has 6 main constraints:\nClient Server\nStateless:\nI don’t know your application, but when talking about “state” in terms of an API and it being “statement”, it means that one API request should have no knowledge of any API request that came before it.\nSo every time you make an API request, you need to tell that server who you are. Each and every time. The usual way to do this is with some form of token (be it a simple token stored against the user in the server’s database; an OAuth token; a JWT; and so on). You pass the authentication will your requests, and each time the server will look up the user that corresponds with that token and will go either, “Yes, that’s a valid user” or, “No, that token’s invalid. You’re unauthorised to perform this request.”\n\nCSRF basically is an attack that makes your browser submit a form that you haven\'t requested.\nThis means you for example receive an email from X, click a button and because you have the necessary cookies and permissions you have accidentally submitted a form that you have never requested.\nWith the token set in your cookie what happens is that the server makes sure that at least you have requested the form, and that single time (same form tomorrow will have a different cookie).\nSo it\'s true, an attacker can submit a form if he can trick you at the same moment that you requested the form he wants to submit, but in security is everything about probabilities.\nThis token is also generated per request meaning it cannot be reused once it’s used once. \n\nCacheable:\nLayered System\nCode On Demand/MVC in laravel:\n\"One of the most common architectures is the so-called 3-tier architecture, where you have data access, business logic and presentation\"\nUniform Interface:\nThe Uniform Interface is a constraint that is placed on REST services in order to simplify things (and ensure that services can be managed independently from one another) and they are as follows :\n\nIdentification Of Resources\nThis basically states that a request will need to identify the resources that it is looking for (via a URL). Additionally, the resources themselves may not have any relationship with how they are returned to the client (i.e. you can request a given resource in JSON, XML, or some other format based on how your API was built).\nResource Manipulation through Representation\nThis basically states that when a client has a given resource, along with any metadata, that they should have enough information to either modify or delete the resource (i.e. there isn\'t anything left out that it would need to call to the API to do these things).\nSelf Descriptive Messages\nA message should have enough information to let the server know how to process it (i.e. the type of request, mime types, etc.)\nHypermedia as the Engine of Application State (HATEOAS)\nAccessing an API should be similar to accessing a web page (i.e. you should be able to discover other areas of the API much as a user would discover links on a page). Basically a response can contain links and point to other areas of the API that are available. The attached link to HATEOAS goes into this in a bit more detail.'),
(148, 1, 'https://nordicapis.com/defining-stateful-vs-stateless-web-services/', 'Defining Stateful vs Stateless Web Services', '2020-02-05 12:15:34', '2020-02-05 12:15:34', NULL),
(149, 1, 'https://laracasts.com/discuss/channels/requests/statelessness-in-rest-not-keeping-sessions-on-the-server', 'statelessness-in-rest-not-keeping-sessions-on-the-server', '2020-02-05 13:04:06', '2020-02-05 13:04:06', NULL),
(150, 1, 'https://blog.pusher.com/csrf-laravel-verifycsrftoken/', 'VerifyCsrfToken works and how to prevent attacks', '2020-02-05 13:04:38', '2020-02-05 13:04:38', NULL),
(151, 1, 'https://www.cloudways.com/blog/laravel-csrf/', 'How to Use Laravel CSRF Protection for Your Apps', '2020-02-05 13:07:24', '2020-02-05 13:07:24', NULL),
(152, 1, 'https://blog.qualys.com/securitylabs/2015/01/14/do-your-anti-csrf-tokens-really-protect-your-applications-from-csrf-attack', 'Do Your Anti-CSRF Tokens Really Protect Your Web Apps from CSRF Attacks?', '2020-02-05 13:35:26', '2020-02-05 13:35:26', NULL),
(153, 1, 'https://github.com/spatie/laravel-responsecache', 'laravel-responsecache git', '2020-02-05 13:44:28', '2020-02-05 13:44:28', NULL),
(154, 1, 'https://www.youtube.com/watch?v=XaGXPObx2Gs&t=97s', 'Sending digital information over a wire | Networking tutorial (1 of 13)', '2020-02-05 15:12:22', '2020-02-05 17:51:15', 'ASCII Code - The extended ASCII table'),
(155, 1, 'https://www.ascii-code.com/', 'ascii codes', '2020-02-05 15:13:49', '2020-02-05 15:13:49', NULL),
(156, 1, 'https://www.youtube.com/watch?v=lUo45NqPyq8&t=1s', 'Intro to fiber optics and RF encoding | Networking tutorial (2 of 13)', '2020-02-05 15:14:24', '2020-02-05 17:51:59', NULL),
(157, 1, 'https://youtu.be/8BhjXqw9MqI', 'Clock synchronization and Manchester coding | Networking tutorial (3 of 13)', '2020-02-05 15:15:55', '2020-02-05 17:53:21', 'clock slip - bits missed over time'),
(158, 1, 'https://youtu.be/i8CmibhvZ0c', 'Analyzing actual Ethernet encoding | Networking tutorial (4 of 13)', '2020-02-05 15:33:30', '2020-02-05 17:53:57', NULL),
(159, 1, 'https://youtu.be/xrVN9jKjIKQ', 'The importance of framing | Networking tutorial (5 of 13)', '2020-02-05 15:34:04', '2020-02-05 17:54:23', '01111110 - flag\n011111[0]10 - bit stuffing\ninter frame gap/IFG - silence before signal starts \npreamble - 56 bits of 1 and 0 to synchronize clocks\n..10101[1]0101001.. - start of the frame'),
(160, 1, 'https://youtu.be/1XrRT0CmzYw', 'Frame formats | Networking tutorial (6 of 13)', '2020-02-05 15:47:12', '2020-02-05 17:54:47', 'Ethernet:\nPreamble/start frame delimeter(SFD) - 56 bits \nDestiation address - MAC address 6bytes (ex:00:0a:95:9d:68:16) destination address that is send to swich. ff:ff:ff:ff:ff:ff:ff -special address - send to all devices on switch\nSource address - -//- its own address that is send to swich\nEther type - 2 byte (ex: 0800 - ip address)\nPayload - 48-1500 bytes. Data it self\nFrame check sequence -4bytes. checks for corrupted data\nPPP(point to point):\nFlag(01111110)\nAddress - 1 byte (ff constant, because receiver is only one )\nControl - 1 byte (03 constant)\nProtocol -  2 bytes(same as ether type)\nPayload\nFCS - 4 bytes\nFlag'),
(161, 1, 'https://youtu.be/MGAaTqFct_I', 'Lower layers of the OSI model | Networking tutorial (7 of 13)', '2020-02-05 16:08:55', '2020-02-05 17:55:16', NULL),
(162, 1, 'https://youtu.be/rPoalUa4m8E', 'The Internet Protocol | Networking tutorial (8 of 13)', '2020-02-05 16:19:02', '2020-02-05 17:56:04', NULL),
(163, 1, 'https://youtu.be/aamG4-tH_m8', 'ARP: Mapping between IP and Ethernet | Networking tutorial (9 of 13)', '2020-02-05 16:31:33', '2020-02-05 17:56:30', 'ether type for ARC is 0806'),
(164, 1, 'https://youtu.be/xNbdeyEI-nE', 'Looking at ARP and ping packets | Networking tutorial (10 of 13)', '2020-02-05 16:42:00', '2020-02-05 17:56:54', NULL),
(165, 1, 'https://youtu.be/VWJ8GmYnjTs', 'Hop-by-hop routing | Networking tutorial (11 of 13)', '2020-02-05 16:55:26', '2020-02-05 17:57:25', NULL),
(166, 1, 'https://youtu.be/4IMc3CaMhyY', 'TCP: Transmission control protocol | Networking tutorial (12 of 13)', '2020-02-05 17:37:37', '2020-02-05 17:57:55', NULL),
(167, 1, 'https://youtu.be/F27PLin3TV0', 'TCP connection walkthrough | Networking tutorial (13 of 13)', '2020-02-05 17:50:30', '2020-02-05 17:59:00', NULL),
(168, 1, 'https://www.wireshark.org/download.html', 'Download Wireshark', '2020-02-05 18:13:40', '2020-02-05 18:13:40', 'Stable Release (3.2.1) \nWindows Installer (64-bit)'),
(169, 1, 'https://vegibit.com/laravel-blade-templating/', 'Laravel Blade Templating', '2020-02-05 18:46:18', '2020-02-05 18:46:18', NULL),
(170, 1, 'https://vegibit.com/laravel-form-class/', 'Laravel Form Class', '2020-02-05 19:01:36', '2020-02-05 19:01:36', NULL),
(171, 1, 'https://vegibit.com/laravel-validation/', 'Laravel Validation', '2020-02-05 19:12:17', '2020-02-05 19:12:17', NULL),
(172, 1, 'https://vegibit.com/php-string-helper-functions/', 'PHP String Helper Functions', '2020-02-05 19:17:13', '2020-02-05 19:17:13', NULL),
(173, 1, 'https://vegibit.com/custom-helper-functions-in-laravel/', 'Custom Helper Functions in Laravel', '2020-02-06 10:07:46', '2020-02-06 10:07:46', 'self:: - call static function in same class (like $this->)\ncheck out composer.json file if its new project'),
(174, 1, 'https://vegibit.com/the-ultimate-guide-to-php-functions/', 'The Ultimate Guide to PHP Functions', '2020-02-06 10:17:32', '2020-02-06 10:17:32', NULL),
(175, 1, 'https://vegibit.com/the-27-most-popular-file-functions-in-php/', 'The 27 Most Popular File Functions in PHP', '2020-02-06 10:45:10', '2020-02-06 10:45:10', NULL),
(176, 1, 'https://vegibit.com/object-oriented-php/', 'The Ultimate Guide To Object Oriented PHP', '2020-02-06 11:55:41', '2020-02-06 11:55:41', NULL),
(177, 1, 'https://vegibit.com/what-is-twitter-bootstrap/', 'What Is Twitter Bootstrap?', '2020-02-06 11:59:38', '2020-02-06 11:59:38', NULL),
(178, 1, 'https://vegibit.com/install-twitter-bootstrap/', 'Install Twitter Bootstrap', '2020-02-06 12:01:52', '2020-02-06 12:01:52', NULL),
(179, 1, 'https://vegibit.com/create-a-twitter-bootstrap-page/', 'Create a Twitter Bootstrap Page', '2020-02-06 12:05:13', '2020-02-06 12:05:13', NULL),
(180, 1, 'https://vegibit.com/twitter-bootstrap-12-column-grid/', 'Twitter Bootstrap 12 Column Grid', '2020-02-06 12:08:52', '2020-02-06 12:08:52', NULL),
(181, 1, 'http://www.motherfuckingwebsite.com/', 'This is a motherfucking website.', '2020-02-06 12:12:41', '2020-02-06 12:12:41', NULL),
(182, 1, 'https://vegibit.com/twitter-bootstrap-grid-tutorial/', 'Twitter Bootstrap Grid Tutorial', '2020-02-06 12:15:45', '2020-02-06 12:15:45', NULL),
(183, 1, 'https://vegibit.com/twitter-bootstrap-classes/', 'Twitter Bootstrap Classes', '2020-02-06 13:48:13', '2020-02-06 13:48:13', NULL),
(184, 1, 'https://vegibit.com/twitter-bootstrap-navigation-elements/', 'Twitter Bootstrap Navigation Elements', '2020-02-06 13:49:42', '2020-02-06 13:49:42', NULL),
(185, 1, 'https://vegibit.com/getting-started-with-javascript-programming/', 'Getting Started With JavaScript Programming', '2020-02-06 13:55:21', '2020-02-06 13:55:21', NULL),
(186, 1, 'https://vegibit.com/javascript-code-structure/', 'JavaScript Code Structure', '2020-02-06 14:00:04', '2020-02-06 14:00:04', NULL),
(187, 1, 'https://vegibit.com/using-variables-and-conditionals-in-javascript/', 'Using Variables and Conditionals in JavaScript', '2020-02-06 14:03:22', '2020-02-06 14:03:22', NULL),
(188, 1, 'https://vegibit.com/javascript-operators-and-expressions/', 'JavaScript Operators and Expressions', '2020-02-06 14:11:04', '2020-02-06 14:11:04', NULL),
(189, 1, 'https://vegibit.com/javascript-types-and-objects-tutorial/', 'JavaScript Types and Objects Tutorial', '2020-02-06 14:16:14', '2020-02-06 14:16:14', NULL),
(190, 1, 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math', 'Math JavaScript', '2020-02-06 14:16:42', '2020-02-06 14:16:42', NULL),
(191, 1, 'https://vegibit.com/document-object-model-tutorial/', 'Document Object Model Tutorial', '2020-02-06 14:20:49', '2020-02-06 14:20:49', NULL),
(192, 1, 'https://vegibit.com/javascript-events-tutorial/', 'JavaScript Events Tutorial', '2020-02-06 14:22:38', '2020-02-06 14:22:38', NULL),
(193, 1, 'https://vegibit.com/javascript-functions-tutorial/', 'JavaScript Functions Tutorial', '2020-02-06 14:28:17', '2020-02-06 14:28:17', NULL),
(194, 1, 'https://vegibit.com/most-popular-javascript-frameworks/', 'Most Popular JavaScript Frameworks', '2020-02-06 14:46:12', '2020-02-06 14:46:12', NULL),
(195, 1, 'https://vegibit.com/jquery-selectors-and-filters/', 'jQuery Selectors and Filters', '2020-02-06 14:49:59', '2020-02-06 14:49:59', NULL),
(196, 1, 'https://vegibit.com/traverse-the-dom-with-jquery/', 'Traverse the DOM With jQuery', '2020-02-06 14:51:05', '2020-02-06 14:51:05', NULL),
(197, 1, 'https://vegibit.com/the-most-popular-content-manipulation-methods-in-jquery/', 'The Most Popular Content Manipulation Methods in jQuery', '2020-02-06 14:52:57', '2020-02-06 14:52:57', NULL),
(198, 1, 'https://vegibit.com/jquery-event-handling/', 'jQuery Event Handling', '2020-02-06 14:54:28', '2020-02-06 14:54:28', NULL),
(199, 1, 'https://vegibit.com/jquery-effects-and-animation-methods/', 'jQuery Effects and Animation Methods', '2020-02-07 20:46:09', '2020-02-07 20:46:09', NULL),
(200, 1, 'https://vegibit.com/jquery-ajax-tutorial/', 'jQuery AJAX Tutorial', '2020-02-07 20:50:52', '2020-02-07 20:50:52', NULL),
(201, 1, 'https://vegibit.com/what-is-html/', 'What Is HTML', '2020-02-07 20:58:30', '2020-02-07 20:58:30', NULL),
(202, 1, 'https://vegibit.com/digging-in-to-html-fundamentals/', 'Digging In To HTML Fundamentals', '2020-02-07 21:03:53', '2020-02-07 21:03:53', NULL),
(203, 1, 'https://vegibit.com/the-top-11-most-important-html-text-features-to-learn/', 'The Top 11 Most Important HTML Text Features to Learn', '2020-02-07 21:05:50', '2020-02-07 21:09:30', NULL),
(204, 1, 'https://vegibit.com/working-with-html-images/', 'Working With HTML Images', '2020-02-07 21:10:55', '2020-02-07 21:10:55', NULL),
(205, 1, 'https://vegibit.com/html-hyperlinks-tutorial/', 'HTML Hyperlinks Tutorial', '2020-02-07 21:14:09', '2020-02-07 21:14:09', NULL),
(206, 1, 'https://vegibit.com/html5-data-attributes/', 'HTML5 Data Attributes', '2020-02-07 21:16:39', '2020-02-07 21:16:39', NULL),
(207, 1, 'https://vegibit.com/html-form-tutorial/', 'HTML Form Tutorial', '2020-02-07 21:18:53', '2020-02-07 21:18:53', NULL),
(208, 1, 'https://vegibit.com/web-design-blogs/', 'Web Design Blogs', '2020-02-07 21:23:01', '2020-02-07 21:23:01', NULL),
(209, 1, 'https://vegibit.com/design-inspiration-sites/', 'Design Inspiration Sites', '2020-02-07 21:24:56', '2020-02-07 21:24:56', NULL),
(210, 1, 'https://vegibit.com/color-palette-websites/', 'Color Palette Websites', '2020-02-07 21:26:18', '2020-02-07 21:26:18', NULL),
(211, 1, 'https://vegibit.com/vegithemes-twitter-bootstrap-themes/', 'VegiThemes Twitter Bootstrap Themes', '2020-02-07 21:27:30', '2020-02-07 21:27:30', NULL),
(212, 1, 'https://vegibit.com/laravel-auth-tutorial/', 'Laravel Auth Tutorial', '2020-02-07 22:55:09', '2020-02-07 22:55:09', NULL),
(213, 1, 'https://vegibit.com/composer-dependency-tutorial/', 'Composer Dependency Tutorial', '2020-02-07 23:02:43', '2020-02-07 23:02:43', 'Note that there is also a new file in the directory called composer.lock. This is a *very* important file! Basically what it does is lock in the versions you have specified in the composer.json file so that if you or someone else runs composer install in the future, only those specified versions will be installed, *not* the latest and greatest versions which might cause bugs or breakage of your app.\n\nYou can bypass this by using composer update. What this command does is pretend that a composer.lock file is not there, or just ignores it. Composer will look for any wildcard * characters in the composer.json file and download the latest versions for the dependencies. Maybe you want this, maybe you don’t. Just be aware of the difference between composer install and composer update.'),
(214, 1, 'http://composer.json.jolicode.com/', 'Composer Cheat Sheet for developers', '2020-02-07 23:03:42', '2020-02-07 23:03:42', NULL),
(215, 1, 'https://vegibit.com/composer-autoloading-tutorial/', 'Composer Autoloading Tutorial', '2020-02-07 23:21:11', '2020-02-07 23:21:11', '1. File Based Autoloading\n2. Classmap Based Autoloading\n3. PSR-0 Based Autoloading\n4. PSR-4 Based Autoloading'),
(216, 1, 'https://stackoverflow.com/questions/24868586/what-are-the-differences-between-psr-0-and-psr-4', 'What Are the Differences Between PSR-0 and PSR-4?', '2020-02-07 23:21:49', '2020-02-07 23:21:49', NULL),
(217, 1, 'https://vegibit.com/php-namespaces-tutorial/', 'PHP Namespaces Tutorial', '2020-02-07 23:49:48', '2020-02-07 23:49:48', NULL),
(218, 1, 'https://vegibit.com/laravel-file-structure/', 'Laravel File Structure', '2020-02-08 01:03:35', '2020-02-08 01:03:35', NULL),
(219, 1, 'https://vegibit.com/laravel-repository-pattern/', 'Laravel Repository Pattern', '2020-02-08 01:35:40', '2020-02-08 01:35:40', NULL),
(220, 1, 'https://bosnadev.com/2015/03/07/using-repository-pattern-in-laravel-5/?utm_source=prettus-l5-repository&utm_medium=readme&utm_campaign=prettus-l5-repository', 'Using Repository Pattern in Laravel 5', '2020-02-08 01:36:42', '2020-02-08 01:36:42', NULL),
(221, 1, 'https://github.com/andersao/l5-repository', 'andersao / l5-repository', '2020-02-08 01:56:44', '2020-02-08 01:56:44', NULL),
(222, 1, 'https://vegibit.com/laravel-event-listeners/', 'Laravel Event Listeners', '2020-02-08 02:46:01', '2020-02-08 02:46:01', NULL),
(223, 1, 'https://vegibit.com/laravel-cache-tutorial/', 'Laravel Cache Tutorial', '2020-02-08 03:04:43', '2020-02-08 03:04:43', NULL),
(224, 1, 'https://vegibit.com/what-are-laravel-filters/', 'What are Laravel Filters?', '2020-02-08 13:42:42', '2020-02-08 13:42:42', NULL),
(225, 1, 'https://vegibit.com/flash-messages-in-laravel/', 'Flash Messages in Laravel', '2020-02-08 13:46:29', '2020-02-08 13:46:29', NULL),
(226, 1, 'https://vegibit.com/send-email-with-laravel/', 'Send Email With Laravel', '2020-02-08 13:53:52', '2020-02-08 13:53:52', NULL),
(227, 1, 'https://vegibit.com/send-a-tweet-with-laravel/', 'Send a Tweet with Laravel', '2020-02-08 13:59:39', '2020-02-08 13:59:39', NULL),
(228, 1, 'https://vegibit.com/digg-reader-review/', 'Digg Reader Review', '2020-02-08 14:07:08', '2020-02-08 14:07:08', NULL),
(229, 1, 'https://vegibit.com/introduction-to-mysql/', 'Introduction to MySQL', '2020-02-08 16:03:57', '2020-02-08 16:03:57', NULL),
(230, 1, 'https://vegibit.com/data-types-in-mysql/', 'Data Types in MySQL', '2020-02-08 16:14:33', '2020-02-08 16:14:33', NULL),
(231, 1, 'https://vegibit.com/the-declarative-nature-of-sql/', 'The Declarative Nature of SQL', '2020-02-08 16:21:07', '2020-02-08 16:21:07', NULL),
(232, 1, 'https://vegibit.com/creating-databases-and-tables-in-mysql/', 'Creating Databases and Tables in MySQL', '2020-02-08 16:34:24', '2020-02-08 16:34:24', NULL),
(233, 1, 'https://vegibit.com/getting-started-with-data-manipulation-language-in-mysql/', 'Getting Started with Data Manipulation Language in MySQL', '2020-02-08 17:52:45', '2020-02-08 17:52:45', NULL),
(234, 1, 'https://vegibit.com/mysql-function-tutorial/', 'MySQL Function Tutorial', '2020-02-08 17:58:04', '2020-02-08 17:58:04', NULL),
(235, 1, 'https://vegibit.com/working-with-common-mysql-string-functions/', 'Working With Common MySQL String Functions', '2020-02-08 18:02:36', '2020-02-08 18:02:36', NULL),
(236, 1, 'https://vegibit.com/what-are-mysql-operators/', 'What are MySQL Operators?', '2020-02-08 18:06:09', '2020-02-08 18:06:09', NULL),
(237, 1, 'https://vegibit.com/mysql-group-by-having-limit-offset-and-more/', 'MySQL Group By Having Limit Offset and More!', '2020-02-08 18:12:04', '2020-02-08 18:12:04', 'mysql>  select last_name, group_concat(cell_phone separator \' | \') from friends group by last_name; \nmysql> select last_name, group_concat(cell_phone separator \' | \') from friends group by last_name having count(*)=2;'),
(238, 1, 'https://vegibit.com/what-is-a-mysql-join/', 'What is a MySQL Join?', '2020-02-08 18:19:11', '2020-02-08 18:19:11', NULL),
(239, 1, 'https://vegibit.com/what-is-wordpress/', 'What is WordPress?', '2020-02-08 18:27:15', '2020-02-08 18:27:15', NULL),
(240, 1, 'https://vegibit.com/wordpress-dashboard-tutorial/', 'WordPress Dashboard Tutorial', '2020-02-08 18:32:00', '2020-02-08 18:32:00', NULL),
(241, 1, 'https://vegibit.com/wordpress-toolbar/', 'WordPress Toolbar Tutorial', '2020-02-08 18:33:31', '2020-02-08 18:33:31', NULL),
(242, 1, 'https://vegibit.com/the-art-of-creating-a-wordpress-post/', 'The Art of Creating a WordPress Post', '2020-02-08 18:34:42', '2020-02-08 18:34:42', NULL),
(243, 1, 'https://vegibit.com/wordpress-links-and-images/', 'WordPress Links and Images', '2020-02-08 18:35:36', '2020-02-08 18:35:36', NULL),
(244, 1, 'https://vegibit.com/even-more-awesome-wordpress-fundamentals/', 'Even More Awesome WordPress Fundamentals', '2020-02-08 18:37:35', '2020-02-08 18:37:35', NULL),
(245, 1, 'https://vegibit.com/what-is-php/', 'What is PHP?', '2020-02-08 18:41:56', '2020-02-08 18:41:56', NULL),
(246, 1, 'https://vegibit.com/php-code-structure/', 'PHP Code Structure', '2020-02-08 18:52:59', '2020-02-08 18:52:59', NULL),
(247, 1, 'https://vegibit.com/php-variables-and-strings-tutorial/', 'PHP Variables and Strings Tutorial', '2020-02-08 18:56:32', '2020-02-08 18:56:32', NULL),
(248, 1, 'https://vegibit.com/php-string-functions/', 'The Ultimate PHP String Functions List', '2020-02-08 19:24:19', '2020-02-08 19:24:19', NULL),
(249, 1, 'https://eater.net/8bit', 'Build an 8-bit computer from scratch', '2020-02-15 17:04:32', '2020-02-15 17:04:32', NULL),
(250, 1, 'https://youtu.be/HyznrdDSSGM', '8-bit computer update', '2020-02-15 17:09:56', '2020-02-15 17:09:56', NULL),
(251, 1, 'https://www.youtube.com/watch?v=33vbFFFn04k', 'How semiconductors work', '2020-02-15 17:31:17', '2020-02-15 17:31:17', 'PN junction\ndepletion region'),
(252, 1, 'https://youtu.be/DXvAlwMAxiA', 'How a transistor works', '2020-02-15 18:09:18', '2020-02-15 18:09:18', NULL),
(253, 1, 'https://youtu.be/sTu3LwpF6XI', 'Making logic gates from transistors', '2020-02-15 19:50:33', '2020-02-15 19:50:33', NULL),
(254, 1, 'https://youtu.be/KM0DdEaY5sY', 'SR latch', '2020-02-15 20:05:11', '2020-02-15 20:05:11', NULL),
(255, 1, 'https://youtu.be/peCh_859q7Q', 'D latch', '2020-02-15 20:15:24', '2020-02-15 20:15:24', NULL),
(256, 1, 'https://youtu.be/YW-_GkUguMM', 'D flip-flop', '2020-02-15 20:33:37', '2020-02-15 20:33:37', NULL),
(257, 1, 'https://youtu.be/F1OC5e7Tn_o', 'JK flip-flop', '2020-02-15 21:12:06', '2020-02-15 21:12:06', NULL),
(258, 1, 'https://youtu.be/st3mUEub99E', 'JK flip-flop racing', '2020-02-15 22:11:32', '2020-02-15 22:11:32', NULL),
(259, 1, 'https://youtu.be/rXHSB5w7CyE', 'Master-slave JK flip-flop', '2020-02-15 22:24:56', '2020-02-15 22:24:56', NULL),
(260, 1, 'https://youtu.be/exGEmA67dNc', 'Binary counter', '2020-02-15 22:31:15', '2020-02-15 22:31:15', NULL),
(261, 1, 'https://www.youtube.com/watch?v=g_1HyxBzjl0', 'Program counter design', '2020-02-15 22:47:57', '2020-02-15 22:47:57', NULL),
(262, 1, 'https://www.youtube.com/watch?v=tNwU7pK_3tk', 'Program counter build', '2020-02-15 23:54:32', '2020-02-15 23:54:32', NULL),
(263, 1, 'https://youtu.be/kRlSFm519Bo', 'Astable 555 timer - 8-bit computer clock - part 1', '2020-02-16 00:27:40', '2020-02-16 00:27:40', NULL),
(264, 1, 'https://youtu.be/81BgFhm2vz8', 'Monostable 555 timer - 8-bit computer clock - part 2', '2020-02-16 00:42:09', '2020-02-16 00:42:09', NULL),
(265, 1, 'https://youtu.be/WCwJNnx36Rk', 'Bistable 555 - 8-bit computer clock - part 3', '2020-02-16 00:53:13', '2020-02-16 00:53:13', NULL),
(266, 1, 'https://youtu.be/SmQ5K7UQPMM', 'Clock logic - 8-bit computer clock - part 4', '2020-02-16 01:06:57', '2020-02-16 01:06:57', NULL),
(267, 1, 'https://youtu.be/QzWW-CBugZo', 'Bus architecture and how register transfers work - 8 bit register - Part 1', '2020-02-16 01:37:54', '2020-02-16 01:37:54', NULL),
(268, 1, 'https://youtu.be/faAjse109Q8', 'Tri-state logic: Connecting multiple outputs together - 8 bit register - Part 2', '2020-02-16 01:48:54', '2020-02-16 01:48:54', NULL),
(269, 1, 'https://youtu.be/-arYx_oVIj8', 'Designing and building a 1-bit register - 8 bit register - Part 3', '2020-02-16 09:28:42', '2020-02-16 09:28:42', NULL),
(270, 1, 'https://youtu.be/CiMaWbz_6E8', 'Building an 8-bit register - 8-bit register - Part 4', '2020-02-16 09:29:25', '2020-02-16 09:29:25', NULL),
(271, 1, 'https://youtu.be/9WE3Obdjtv0', 'Testing our computer\'s registers - 8-bit register - Part 5', '2020-02-16 09:41:20', '2020-02-16 09:41:20', NULL),
(272, 1, 'https://youtu.be/wvJc9CZcvBc', 'Learn how computers add numbers and build a 4 bit adder circuit', '2020-02-16 20:20:10', '2020-02-16 20:20:10', NULL),
(273, 1, 'https://www.youtube.com/watch?v=4qH4unVtJkE', 'Twos complement: Negative numbers in binary', '2020-02-16 20:34:35', '2020-02-16 20:34:35', NULL),
(274, 1, 'https://youtu.be/mOVOS9AjgFs', 'ALU Design', '2020-02-16 20:53:42', '2020-02-16 20:53:42', NULL),
(275, 1, 'https://youtu.be/S-3fXU3FZQc', 'Building the ALU', '2020-02-16 21:11:55', '2020-02-16 21:11:55', NULL),
(276, 1, 'https://youtu.be/U7Q8-2YZTUU', 'Troubleshooting the ALU', '2020-02-16 21:38:46', '2020-02-16 21:38:46', NULL),
(277, 1, 'https://youtu.be/4nCMDvnR2Fg', 'Testing the computer\'s ALU', '2020-02-16 21:45:25', '2020-02-16 21:45:25', NULL),
(278, 1, 'https://youtu.be/FnxPIZR1ybs', '8-bit computer RAM intro', '2020-02-16 22:52:45', '2020-02-16 22:52:45', NULL),
(279, 1, 'https://youtu.be/uYXwCBo40iA', 'RAM module build - part 1', '2020-02-16 23:06:56', '2020-02-16 23:06:56', NULL),
(280, 1, 'https://youtu.be/KNve2LCcSRc', 'RAM module build - part 2', '2020-02-16 23:34:26', '2020-02-16 23:34:26', NULL),
(281, 1, 'https://youtu.be/5rl1tEFXKt0', 'RAM module build - part 3', '2020-02-16 23:49:09', '2020-02-16 23:49:09', NULL),
(282, 1, 'https://youtu.be/Vw3uDOUJRGw', 'RAM module testing and troubleshooting', '2020-02-17 00:44:55', '2020-02-17 00:44:55', NULL),
(283, 1, 'https://youtu.be/7zffjsXqATg', 'Designing a 7-segment hex decoder', '2020-02-17 01:18:14', '2020-02-17 01:18:14', NULL),
(284, 1, 'https://youtu.be/BA12Z7gQ4P0', 'Using an EEPROM to replace combinational logic', '2020-02-17 01:43:52', '2020-02-17 01:43:52', NULL),
(285, 1, 'https://youtu.be/K88pgWhEb1M', 'Build an Arduino EEPROM programmer', '2020-02-17 03:33:11', '2020-02-17 03:33:11', NULL),
(286, 1, 'https://youtu.be/dLh1n2dErzE', 'Build an 8-bit decimal display for our 8-bit computer', '2020-02-17 04:41:02', '2020-02-17 04:41:02', NULL),
(287, 1, 'https://youtu.be/-6JAgFWCL9w', '8-bit computer build: Connecting the bus', '2020-02-17 05:18:45', '2020-02-17 05:18:45', NULL),
(288, 1, 'https://youtu.be/AwUirxi9eBg', '8-bit CPU control signal overview', '2020-02-17 05:57:50', '2020-02-17 05:57:50', NULL),
(289, 1, 'https://youtu.be/C8txvmXUIJQ', 'FPGA based CPU designs from the 90s, PART I', '2020-02-18 13:57:55', '2020-02-18 13:57:55', NULL),
(290, 1, 'https://youtu.be/5OUfx2F43ek', 'FPGA based CPU designs from the 90s, PART II', '2020-02-18 14:21:56', '2020-02-18 14:21:56', NULL),
(291, 1, 'https://youtu.be/dXdoim96v5A', '8-bit CPU control logic: Part 1', '2020-02-18 14:53:18', '2020-02-18 14:53:18', NULL),
(292, 1, 'https://youtu.be/X7rCxs1ppyY', '8-bit CPU control logic: Part 2', '2020-02-18 15:44:49', '2020-02-18 15:44:49', NULL),
(293, 1, 'https://youtu.be/6bwo1JxDdWo', 'What if All The Oil On Earth Runs Out Before 2040?', '2020-02-18 16:01:11', '2020-02-18 16:01:11', NULL),
(294, 1, 'https://youtu.be/dHWFpkGsxOs', '8-bit CPU control logic: Part 3', '2020-02-18 16:45:39', '2020-02-18 16:45:39', NULL),
(295, 1, 'https://youtu.be/AUwbtG6z6pI', 'EEVblog #1 - Rigol DS1052E Oscilloscope Review', '2020-02-18 17:26:14', '2020-02-18 17:26:14', NULL),
(296, 1, 'https://youtu.be/HtFro0UKqkk', '8-bit CPU reset circuit and power supply tips', '2020-02-18 19:03:06', '2020-02-18 19:03:06', NULL),
(297, 1, 'https://youtu.be/JUVt_KYAp-I', 'Reprogramming CPU microcode with an Arduino', '2020-02-18 19:35:06', '2020-02-18 19:35:06', NULL),
(298, 1, 'https://youtu.be/-BeTq99LqUo', 'Dangerous tattoo remover from eBay is a MILLION watt laser', '2020-02-18 20:13:12', '2020-02-18 20:13:12', NULL),
(299, 1, 'https://youtu.be/Oij-BdIkPgQ', 'DIY Overclocked Plasma Globe. 2500V to a MILLION volts', '2020-02-18 20:30:56', '2020-02-18 20:30:56', NULL),
(300, 1, 'https://youtu.be/FCscQGBIL-Y', 'Adding more machine language instructions to the CPU', '2020-02-18 20:50:33', '2020-02-18 20:50:33', NULL),
(301, 1, 'https://youtu.be/AqNDk_UJW4k', 'Making a computer Turing complete', '2020-02-18 21:25:11', '2020-02-18 21:25:11', NULL);
INSERT INTO `c_study_materials` (`id`, `user_id`, `reference`, `title`, `created_at`, `updated_at`, `note`) VALUES
(302, 1, 'https://youtu.be/bFSnXNIsK4A', '105 STL Algorithms in Less Than an Hour', '2020-02-18 22:44:03', '2020-02-18 22:44:03', NULL),
(303, 1, 'https://quantum-computing.ibm.com/support', 'quantum-computing.ibm', '2020-02-18 23:14:10', '2020-02-18 23:14:10', NULL),
(304, 1, 'https://medium.com/@decodoku', 'https://medium.com/@decodoku', '2020-02-18 23:40:49', '2020-02-18 23:40:49', NULL),
(305, 1, 'https://www.youtube.com/watch?v=kM3SuHNZVVU', 'Quantum Battleships: A game running on a real quantum computer', '2020-02-18 23:41:39', '2020-02-18 23:41:39', NULL),
(306, 1, 'https://youtu.be/JRIPV0dPAd4', 'A Beginner’s Guide To Quantum Computing', '2020-02-18 23:45:24', '2020-02-18 23:45:24', NULL),
(307, 1, 'https://youtu.be/ObnosznZvHY', 'CPU flags register', '2020-02-19 00:20:50', '2020-02-19 00:20:50', NULL),
(308, 1, 'https://youtu.be/Zg1NdPKoosU', 'Conditional jump instructions', '2020-02-19 01:07:14', '2020-02-19 01:07:14', NULL),
(309, 1, 'https://youtu.be/9PPrrSyubG0', 'Programming my 8-bit breadboard computer', '2020-02-19 01:52:42', '2020-02-19 01:52:42', NULL),
(310, 1, 'https://youtu.be/35zLnS3fXeA', 'Stepping through a program on the 8-bit breadboard computer', '2020-02-19 02:07:05', '2020-02-19 02:07:05', NULL),
(311, 1, 'https://youtu.be/yOyaJXpAYZQ', 'Comparing C to machine language', '2020-02-19 02:30:24', '2020-02-19 02:30:24', NULL),
(312, 1, 'https://youtu.be/a73ZXDJtU48', 'Programming Fibonacci on a breadboard computer', '2020-02-19 02:38:50', '2020-02-19 02:38:50', NULL),
(313, 1, 'https://youtu.be/CdqvY_vY1XA', 'Experimenting with LEDs | Digital electronics (1 of 10)', '2020-02-19 03:07:23', '2020-02-19 03:07:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_study_material_previous_current`
--

CREATE TABLE `c_study_material_previous_current` (
  `previous_id` bigint(20) NOT NULL,
  `current_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_study_material_previous_current`
--

INSERT INTO `c_study_material_previous_current` (`previous_id`, `current_id`) VALUES
(67, 68),
(68, 70),
(71, 72),
(72, 73),
(73, 74),
(74, 75),
(74, 76),
(76, 77),
(77, 78),
(78, 79),
(79, 80),
(80, 81),
(81, 82),
(82, 83),
(82, 84),
(84, 85),
(85, 86),
(85, 88),
(88, 89),
(88, 90),
(88, 91),
(88, 92),
(88, 93),
(88, 94),
(88, 95),
(88, 96),
(88, 97),
(82, 98),
(82, 99),
(99, 100),
(100, 101),
(101, 102),
(82, 103),
(82, 104),
(104, 105),
(104, 106),
(106, 107),
(107, 108),
(108, 109),
(109, 110),
(110, 111),
(111, 112),
(111, 113),
(113, 114),
(114, 115),
(115, 116),
(116, 117),
(117, 118),
(118, 119),
(119, 120),
(120, 121),
(120, 122),
(122, 123),
(123, 124),
(124, 125),
(124, 126),
(126, 127),
(88, 128),
(127, 129),
(129, 130),
(130, 131),
(131, 132),
(132, 133),
(133, 134),
(134, 135),
(135, 136),
(136, 137),
(137, 138),
(138, 139),
(139, 140),
(140, 141),
(141, 142),
(142, 143),
(142, 144),
(144, 145),
(145, 146),
(146, 147),
(147, 148),
(147, 149),
(147, 150),
(147, 151),
(147, 152),
(147, 153),
(154, 155),
(154, 156),
(156, 157),
(157, 158),
(158, 159),
(159, 160),
(160, 161),
(161, 162),
(162, 163),
(163, 164),
(164, 165),
(165, 166),
(166, 167),
(164, 168),
(147, 169),
(169, 170),
(170, 171),
(171, 172),
(172, 173),
(173, 174),
(174, 175),
(175, 176),
(176, 177),
(177, 178),
(178, 179),
(179, 180),
(180, 181),
(180, 182),
(182, 183),
(183, 184),
(184, 185),
(185, 186),
(186, 187),
(187, 188),
(188, 189),
(189, 190),
(189, 191),
(191, 192),
(192, 193),
(193, 194),
(194, 195),
(195, 196),
(196, 197),
(197, 198),
(198, 199),
(199, 200),
(200, 201),
(201, 202),
(202, 203),
(203, 204),
(204, 205),
(205, 206),
(206, 207),
(207, 208),
(208, 209),
(209, 210),
(210, 211),
(211, 212),
(212, 213),
(213, 214),
(213, 215),
(215, 216),
(215, 217),
(217, 218),
(218, 219),
(219, 220),
(219, 221),
(219, 222),
(222, 223),
(223, 224),
(224, 225),
(225, 226),
(226, 227),
(227, 228),
(228, 229),
(229, 230),
(230, 231),
(231, 232),
(232, 233),
(233, 234),
(234, 235),
(235, 236),
(236, 237),
(237, 238),
(238, 239),
(239, 240),
(240, 241),
(241, 242),
(242, 243),
(243, 244),
(244, 245),
(245, 246),
(246, 247),
(247, 248),
(249, 250),
(250, 251),
(251, 252),
(252, 253),
(253, 254),
(254, 255),
(255, 256),
(256, 257),
(257, 258),
(258, 259),
(259, 260),
(260, 261),
(261, 262),
(262, 263),
(263, 264),
(264, 265),
(265, 266),
(266, 267),
(267, 268),
(268, 269),
(269, 270),
(270, 271),
(271, 272),
(272, 273),
(273, 274),
(274, 275),
(275, 276),
(276, 277),
(277, 278),
(278, 279),
(279, 280),
(280, 281),
(281, 282),
(282, 283),
(283, 284),
(284, 285),
(285, 286),
(286, 287),
(287, 288),
(289, 290),
(288, 291),
(291, 292),
(292, 294),
(294, 296),
(296, 297),
(297, 300),
(300, 301),
(303, 304),
(301, 307),
(307, 308),
(308, 309),
(309, 310),
(310, 311),
(311, 312),
(312, 313);

-- --------------------------------------------------------

--
-- Table structure for table `c_study_test`
--

CREATE TABLE `c_study_test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorited_id` bigint(20) NOT NULL,
  `favorited_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `favorited_id`, `favorited_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'App\\CForumReply', '2020-01-13 16:07:22', '2020-01-13 16:07:22'),
(2, 1, 2, 'App\\CForumReply', '2020-01-13 16:08:46', '2020-01-13 16:08:46'),
(3, 1, 8, 'App\\CForumReply', '2020-01-14 16:55:22', '2020-01-14 16:55:22'),
(4, 1, 10, 'App\\CForumReply', '2020-01-14 17:10:29', '2020-01-14 17:10:29'),
(5, 1, 11, 'App\\CForumReply', '2020-01-14 17:20:07', '2020-01-14 17:20:07'),
(7, 1, 16, 'App\\CForumReply', '2020-01-15 01:23:18', '2020-01-15 01:23:18'),
(8, 1, 17, 'App\\CForumReply', '2020-01-15 01:35:39', '2020-01-15 01:35:39'),
(10, 1, 83, 'App\\CForumReply', '2020-01-15 23:39:23', '2020-01-15 23:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `releasedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `user_id`, `title`, `publisher`, `releasedate`, `image`, `created_at`, `updated_at`) VALUES
(5, 1, 'gsgsdfg', 'sdfgf', '2020-01-20 00:00:00', 'public/images/kvuGzQjwKHurPRz4J6nqyVvsKuh0gmLtmTCp2G65.jpeg', '2020-01-21 01:13:22', '2020-01-21 01:13:22'),
(6, 1, 'dfas fdfsfdsfdsdf', 'f asdf sd fdf sadf', '2020-01-21 00:00:00', 'public/images/Rgxd7Q5XziYTWWCJrTUqEdtSoG1OcObYt1QzaNQf.jpeg', '2020-01-21 01:15:30', '2020-01-21 01:15:30'),
(7, 1, 'gsgsdfgd', 'ffsfafs', '2020-01-07 00:00:00', 'public/images/NPvoF0SDm7sYPApmu94lPLHbXFs8J4idJ86MwptG.jpeg', '2020-01-21 01:38:52', '2020-01-21 01:38:52'),
(8, 1, 'thank u', 'hhhhh', '2019-12-31 00:00:00', 'public/images/sToyY5se93mZDR12VqOGeoGS0YEEJ98LhenvH0Ny.jpeg', '2020-01-21 08:51:45', '2020-01-21 08:51:45'),
(9, 1, 'gsgsdfgff', 'sdfgf', '2019-12-31 00:00:00', 'public/images/FHI5GFWfhxGT8BzVib64n4C3MYxrJ6i9RV4yWQCy.jpeg', '2020-01-21 08:57:05', '2020-01-21 08:57:05'),
(10, 1, 'gsgsdfggfdgfg', 'sdfgf', '2019-12-31 00:00:00', 'public/images/lHiQFAYlHYtZytGylUYbrwp2b5Wh3esyKJzfd86J.jpeg', '2020-01-21 08:58:50', '2020-01-21 08:58:50'),
(11, 1, 'fsa f gsdf gsdf sfdg', 'sdfgf', '2019-12-31 00:00:00', 'public/images/a93QEL6RDziT7992LruwzxwYHbGHcPhb4gvyo88F.jpeg', '2020-01-21 09:00:06', '2020-01-21 09:00:06'),
(12, 1, 'dsfa df', 'asdf adsf', '2019-12-31 00:00:00', 'public/images/9Dx5JUXy45zh1l94ZY3KY8rTidJimNRbgZ24HLEw.jpeg', '2020-01-21 09:02:04', '2020-01-21 09:02:04'),
(13, 1, 'gsgsdfgf', 'sdfgf', '2019-12-31 00:00:00', 'public/images/6hDl8RNFIdM086BP3tiB1g19AWJUG9Qe5Um0OmUl.jpeg', '2020-01-21 09:03:08', '2020-01-21 09:03:08'),
(14, 1, 'gsgsdfgfgdsfg', 'fsgdfg', '2019-12-31 00:00:00', 'public/images/OdYTcZlcsCdakiKu0Ab79pfvhRQsWiofJLPVvgXZ.jpeg', '2020-01-21 09:03:43', '2020-01-21 09:03:43'),
(15, 1, 'gsgsdfgfgsfdgdfg d', 'fg sfdg sdf', '2020-01-14 00:00:00', 'public/images/IJF0gWaCscMPuU8eCXNrMAQHnrxkCZ7ED36IcLhG.jpeg', '2020-01-21 09:04:13', '2020-01-21 09:04:13'),
(16, 1, 'gsgsdfggfsg sdf g', 'sdfgf', '2019-12-31 00:00:00', 'public/images/cBaEWsvaxkhxEI924ENPi1tNoiKKG648kY0oACQL.jpeg', '2020-01-21 09:06:29', '2020-01-21 09:06:29'),
(17, 1, 'gsgsdfg ertwr tert ert wert', 'wertwert', '2020-01-13 00:00:00', 'public/images/lxDjbz48gZ6zC939i4opMJb9rGbWscucdaGIRlkc.jpeg', '2020-01-21 09:07:16', '2020-01-21 09:07:16'),
(18, 1, 'gsgsdfg d d d new', 'sdfgf', '2020-01-13 00:00:00', 'public/images/hvL5x1heNjX25EhHdj8jlpWyp42M1Te2ACjg6qwN.jpeg', '2020-01-21 09:42:33', '2020-01-21 09:42:33'),
(19, 1, 'sfsf asdf sdf asdf sadfsaf', 'a d fas fasd fasdf', '2020-01-14 00:00:00', 'public/images/LQcosvH2pmLsHCbRTVqhOaN7Sjs6x3WDajzRGExE.jpeg', '2020-01-21 09:44:59', '2020-01-21 09:44:59'),
(20, 1, 'gsgsdfgf fsd fsd fasd fadf asdf', 'adsf sdafdf', '2019-12-31 00:00:00', 'public/images/u6yZFW1DrcF2VgOYLYgHsvYy58HJZVRn7r2XNv0r.jpeg', '2020-01-21 09:48:22', '2020-01-21 09:48:22'),
(21, 1, 'test', 'test', '2020-01-21 00:00:00', 'public/images/XjI5FGdwG9VyDYcYnVzfY6LcI54fX1xfuYwiaEGX.jpeg', '2020-01-21 23:22:13', '2020-01-21 23:22:13'),
(22, 1, 'gsgsdfgll', 'sdfgf', '2020-01-14 00:00:00', 'public/images/HsRl3R1oMvCGfot2AGN2pbKipb2BTCOQAbV2aquh.jpeg', '2020-01-22 06:22:23', '2020-01-22 06:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `learn_topics`
--

CREATE TABLE `learn_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `done_theory` tinyint(1) NOT NULL DEFAULT '0',
  `done_practice` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `learn_topics`
--

INSERT INTO `learn_topics` (`id`, `title`, `url`, `note`, `done_theory`, `done_practice`, `parent_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'fadasdfsdfsdf', 'https://vegibit.com/configure-form-and-button-for-a-post-request/', NULL, 0, 0, NULL, 1, '2020-01-13 16:00:39', '2020-01-13 16:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2014_10_12_100000_create_password_resets_table', 1),
(22, '2019_05_03_000001_create_customer_columns', 1),
(23, '2019_05_03_000002_create_subscriptions_table', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_29_171821_create_components_table', 1),
(26, '2019_12_30_001724_create_learn_topics_table', 1),
(27, '2019_12_31_172024_create_posts_table', 1),
(28, '2019_12_31_172058_create_post_votes_table', 1),
(29, '2019_12_31_172130_create_subs_table', 1),
(30, '2019_12_31_172208_foreign_keys', 1),
(31, '2020_01_01_192653_create_angleslash_tags_table', 1),
(32, '2020_01_07_170606_create_games_table', 1),
(33, '2020_01_07_193547_create_reviews_table', 1),
(34, '2020_01_10_131409_create_c_forum_threads_table', 1),
(35, '2020_01_10_131939_create_c_forum_replies_table', 1),
(36, '2020_01_10_201414_add_c_forum_channel_id_to_c_forum_threads_table', 1),
(37, '2020_01_10_202103_create_c_forum_channels_table', 1),
(38, '2020_01_13_133357_create_favorites_table', 1),
(39, '2020_01_13_233131_create_activities_table', 2),
(40, '2020_01_15_205052_create_c_forum_thread_subscriptions_table', 3),
(41, '2020_01_15_221932_create_notifications_table', 4),
(42, '2020_01_16_051533_add_avatar_path_to_users_table', 5),
(43, '2020_01_17_191333_create_c_study_materials_table', 6),
(44, '2020_01_18_013426_create_tags_table', 6),
(45, '2020_01_18_013708_create_taggables_table', 6),
(46, '2020_01_18_014728_create_c_study_test_table', 6),
(48, '2020_01_26_023819_add_reference_is_unique_to_c_study_materials_table', 7),
(50, '2020_01_27_044929_add_notes_column_to_c_study_materials_table', 8),
(51, '2020_01_29_045025_create_ratings_table', 9),
(52, '2020_01_29_084609_create_priorities_table', 10),
(53, '2020_01_29_151246_create_to_doables_table', 11),
(54, '2020_01_29_152356_create_to_dos_table', 11),
(57, '2020_01_31_092328_create_c_study_material_previous_current_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('35b45731-765f-41e7-a2c1-52a1c74d5b5b', 'App\\Notifications\\CForum\\YouWereMentioned', 'App\\User', 1, '{\"message\":\"arturas2 mentioned you in new\",\"link\":\"\\/c_forum\\/threads\\/asdf1\\/12#reply-106\"}', '2020-01-16 04:27:17', '2020-01-16 04:26:34', '2020-01-16 04:27:17'),
('3cd88c12-9f25-4b47-88f5-8aead986aa3b', 'App\\Notifications\\CForum\\ThreadWasUpdated', 'App\\User', 1, '{\"message\":\"arturas2 replied to new\",\"link\":\"\\/c_forum\\/threads\\/asdf1\\/12#reply-105\"}', '2020-01-15 23:48:01', '2020-01-15 23:40:46', '2020-01-15 23:48:01'),
('48073a29-48cb-4939-b704-2ad88a82d2e1', 'App\\Notifications\\CForum\\YouWereMentioned', 'App\\User', 1, '{\"message\":\"arturas mentioned you in new\",\"link\":\"\\/c_forum\\/threads\\/asdf1\\/12#reply-111\"}', '2020-01-16 05:12:26', '2020-01-16 05:10:01', '2020-01-16 05:12:26'),
('5ecff7bd-4f6f-448d-a793-4f7569239125', 'App\\Notifications\\CForum\\ThreadWasUpdated', 'App\\User', 1, '{\"message\":\"arturas2 replied to new\",\"link\":\"\\/c_forum\\/threads\\/asdf1\\/12#reply-107\"}', '2020-01-16 04:27:27', '2020-01-16 04:26:34', '2020-01-16 04:27:27'),
('779b449b-187c-4905-8140-75e753f8b2e7', 'App\\Notifications\\CForum\\YouWereMentioned', 'App\\User', 1, '{\"message\":\"arturas2 mentioned you in new\",\"link\":\"\\/c_forum\\/threads\\/asdf1\\/12#reply-108\"}', '2020-01-16 04:29:04', '2020-01-16 04:28:45', '2020-01-16 04:29:04'),
('97f0617b-786f-4ce8-932d-68a2eb1310ab', 'App\\Notifications\\CForum\\ThreadWasUpdated', 'App\\User', 1, '{\"message\":\"arturas2 replied to new\",\"link\":\"\\/c_forum\\/threads\\/asdf1\\/12#reply-106\"}', '2020-01-16 04:27:30', '2020-01-16 04:26:34', '2020-01-16 04:27:30'),
('b69da02c-3165-4765-bab7-1824efa7f239', 'App\\Notifications\\CForum\\ThreadWasUpdated', 'App\\User', 1, '{\"message\":\"arturas2 replied to new\",\"link\":\"\\/c_forum\\/threads\\/asdf1\\/12#reply-108\"}', '2020-01-16 04:29:11', '2020-01-16 04:28:45', '2020-01-16 04:29:11'),
('c5a23152-608d-486d-8d5a-d3c78fe4f128', 'App\\Notifications\\CForum\\YouWereMentioned', 'App\\User', 1, '{\"message\":\"arturas2 mentioned you in new\",\"link\":\"\\/c_forum\\/threads\\/asdf1\\/12#reply-107\"}', '2020-01-16 04:27:32', '2020-01-16 04:26:34', '2020-01-16 04:27:32'),
('f64951dd-a7dd-4070-ba49-5882b976ce1e', 'App\\Notifications\\CForum\\YouWereMentioned', 'App\\User', 1, '{\"message\":\"arturas mentioned you in new\",\"link\":\"\\/c_forum\\/threads\\/asdf1\\/12#reply-114\"}', '2020-01-16 23:34:19', '2020-01-16 05:11:50', '2020-01-16 23:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

CREATE TABLE `priorities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL,
  `prioritized_id` bigint(20) NOT NULL,
  `prioritized_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `value`, `prioritized_id`, `prioritized_type`) VALUES
(1, 4, 52, 'App\\CStudyMaterial'),
(2, 3, 54, 'App\\CStudyMaterial'),
(3, 3, 55, 'App\\CStudyMaterial'),
(4, 5, 56, 'App\\CStudyMaterial'),
(5, 5, 58, 'App\\CStudyMaterial'),
(6, 0, 59, 'App\\CStudyMaterial'),
(7, 1, 60, 'App\\CStudyMaterial'),
(8, 3, 61, 'App\\CStudyMaterial'),
(10, 4, 1, 'App\\ToDo'),
(11, 3, 2, 'App\\ToDo'),
(12, 3, 3, 'App\\ToDo'),
(14, 1, 62, 'App\\CStudyMaterial'),
(16, 4, 6, 'App\\ToDo'),
(18, 0, 8, 'App\\ToDo'),
(19, 4, 9, 'App\\ToDo'),
(20, 5, 10, 'App\\ToDo'),
(21, 3, 11, 'App\\ToDo'),
(22, 5, 12, 'App\\ToDo'),
(23, 5, 63, 'App\\CStudyMaterial'),
(24, 3, 64, 'App\\CStudyMaterial'),
(25, 4, 65, 'App\\CStudyMaterial'),
(26, 3, 66, 'App\\CStudyMaterial'),
(27, 3, 67, 'App\\CStudyMaterial'),
(29, 3, 69, 'App\\CStudyMaterial'),
(30, 4, 13, 'App\\ToDo'),
(31, 4, 70, 'App\\CStudyMaterial'),
(32, 0, 71, 'App\\CStudyMaterial'),
(33, 0, 72, 'App\\CStudyMaterial'),
(34, 0, 73, 'App\\CStudyMaterial'),
(35, 3, 14, 'App\\ToDo'),
(36, 3, 15, 'App\\ToDo'),
(37, 3, 74, 'App\\CStudyMaterial'),
(38, 4, 75, 'App\\CStudyMaterial'),
(39, 3, 16, 'App\\ToDo'),
(40, 3, 17, 'App\\ToDo'),
(41, 3, 18, 'App\\ToDo'),
(42, 3, 19, 'App\\ToDo'),
(43, 3, 20, 'App\\ToDo'),
(44, 3, 21, 'App\\ToDo'),
(45, 3, 22, 'App\\ToDo'),
(46, 3, 23, 'App\\ToDo'),
(47, 3, 24, 'App\\ToDo'),
(48, 3, 25, 'App\\ToDo'),
(49, 3, 26, 'App\\ToDo'),
(50, 3, 27, 'App\\ToDo'),
(51, 3, 28, 'App\\ToDo'),
(52, 3, 29, 'App\\ToDo'),
(53, 3, 30, 'App\\ToDo'),
(54, 3, 31, 'App\\ToDo'),
(55, 3, 32, 'App\\ToDo'),
(56, 3, 33, 'App\\ToDo'),
(57, 3, 34, 'App\\ToDo'),
(58, 3, 35, 'App\\ToDo'),
(59, 3, 36, 'App\\ToDo'),
(60, 3, 37, 'App\\ToDo'),
(61, 3, 38, 'App\\ToDo'),
(62, 3, 39, 'App\\ToDo'),
(63, 3, 40, 'App\\ToDo'),
(64, 3, 41, 'App\\ToDo'),
(65, 3, 42, 'App\\ToDo'),
(66, 0, 76, 'App\\CStudyMaterial'),
(67, 0, 77, 'App\\CStudyMaterial'),
(68, 4, 43, 'App\\ToDo'),
(69, 0, 78, 'App\\CStudyMaterial'),
(70, 3, 44, 'App\\ToDo'),
(71, 1, 79, 'App\\CStudyMaterial'),
(72, 3, 45, 'App\\ToDo'),
(73, 1, 80, 'App\\CStudyMaterial'),
(74, 1, 81, 'App\\CStudyMaterial'),
(75, 0, 46, 'App\\ToDo'),
(76, 5, 82, 'App\\CStudyMaterial'),
(77, 0, 83, 'App\\CStudyMaterial'),
(78, 3, 84, 'App\\CStudyMaterial'),
(79, 3, 47, 'App\\ToDo'),
(80, 3, 48, 'App\\ToDo'),
(81, 3, 49, 'App\\ToDo'),
(82, 3, 50, 'App\\ToDo'),
(83, 3, 51, 'App\\ToDo'),
(84, 3, 52, 'App\\ToDo'),
(85, 3, 53, 'App\\ToDo'),
(86, 0, 54, 'App\\ToDo'),
(87, 3, 85, 'App\\CStudyMaterial'),
(88, 0, 86, 'App\\CStudyMaterial'),
(89, 3, 55, 'App\\ToDo'),
(90, 0, 56, 'App\\ToDo'),
(91, 3, 57, 'App\\ToDo'),
(92, 3, 87, 'App\\CStudyMaterial'),
(93, 3, 58, 'App\\ToDo'),
(94, 0, 59, 'App\\ToDo'),
(95, 3, 60, 'App\\ToDo'),
(96, 0, 61, 'App\\ToDo'),
(97, 0, 62, 'App\\ToDo'),
(98, 0, 63, 'App\\ToDo'),
(99, 0, 64, 'App\\ToDo'),
(100, 3, 65, 'App\\ToDo'),
(101, 0, 66, 'App\\ToDo'),
(102, 3, 67, 'App\\ToDo'),
(103, 0, 68, 'App\\ToDo'),
(104, 0, 69, 'App\\ToDo'),
(105, 1, 88, 'App\\CStudyMaterial'),
(106, 3, 70, 'App\\ToDo'),
(107, 1, 89, 'App\\CStudyMaterial'),
(108, 0, 90, 'App\\CStudyMaterial'),
(109, 3, 71, 'App\\ToDo'),
(110, 2, 91, 'App\\CStudyMaterial'),
(111, 0, 92, 'App\\CStudyMaterial'),
(112, 0, 93, 'App\\CStudyMaterial'),
(113, 0, 94, 'App\\CStudyMaterial'),
(114, 0, 95, 'App\\CStudyMaterial'),
(115, 0, 96, 'App\\CStudyMaterial'),
(116, 0, 97, 'App\\CStudyMaterial'),
(117, 0, 98, 'App\\CStudyMaterial'),
(118, 1, 99, 'App\\CStudyMaterial'),
(119, 3, 72, 'App\\ToDo'),
(120, 3, 73, 'App\\ToDo'),
(121, 3, 74, 'App\\ToDo'),
(122, 3, 75, 'App\\ToDo'),
(123, 3, 76, 'App\\ToDo'),
(124, 3, 77, 'App\\ToDo'),
(125, 3, 78, 'App\\ToDo'),
(126, 1, 100, 'App\\CStudyMaterial'),
(127, 3, 79, 'App\\ToDo'),
(128, 3, 101, 'App\\CStudyMaterial'),
(129, 5, 80, 'App\\ToDo'),
(130, 5, 102, 'App\\CStudyMaterial'),
(131, 3, 81, 'App\\ToDo'),
(132, 5, 103, 'App\\CStudyMaterial'),
(133, 3, 82, 'App\\ToDo'),
(134, 0, 104, 'App\\CStudyMaterial'),
(135, 3, 83, 'App\\ToDo'),
(136, 1, 105, 'App\\CStudyMaterial'),
(137, 0, 106, 'App\\CStudyMaterial'),
(138, 0, 107, 'App\\CStudyMaterial'),
(139, 0, 108, 'App\\CStudyMaterial'),
(140, 3, 84, 'App\\ToDo'),
(141, 0, 109, 'App\\CStudyMaterial'),
(142, 0, 110, 'App\\CStudyMaterial'),
(143, 0, 85, 'App\\ToDo'),
(144, 0, 111, 'App\\CStudyMaterial'),
(145, 0, 112, 'App\\CStudyMaterial'),
(146, 0, 86, 'App\\ToDo'),
(147, 0, 87, 'App\\ToDo'),
(148, 0, 113, 'App\\CStudyMaterial'),
(149, 0, 114, 'App\\CStudyMaterial'),
(150, 0, 115, 'App\\CStudyMaterial'),
(151, 0, 116, 'App\\CStudyMaterial'),
(152, 0, 117, 'App\\CStudyMaterial'),
(153, 0, 118, 'App\\CStudyMaterial'),
(154, 3, 88, 'App\\ToDo'),
(155, 3, 89, 'App\\ToDo'),
(156, 0, 119, 'App\\CStudyMaterial'),
(157, 0, 90, 'App\\ToDo'),
(158, 0, 120, 'App\\CStudyMaterial'),
(159, 0, 121, 'App\\CStudyMaterial'),
(160, 3, 91, 'App\\ToDo'),
(161, 2, 122, 'App\\CStudyMaterial'),
(162, 3, 92, 'App\\ToDo'),
(163, 0, 123, 'App\\CStudyMaterial'),
(164, 0, 124, 'App\\CStudyMaterial'),
(165, 3, 93, 'App\\ToDo'),
(166, 1, 125, 'App\\CStudyMaterial'),
(167, 0, 126, 'App\\CStudyMaterial'),
(168, 0, 94, 'App\\ToDo'),
(169, 1, 127, 'App\\CStudyMaterial'),
(170, 0, 128, 'App\\CStudyMaterial'),
(171, 3, 95, 'App\\ToDo'),
(172, 0, 129, 'App\\CStudyMaterial'),
(173, 0, 130, 'App\\CStudyMaterial'),
(174, 0, 131, 'App\\CStudyMaterial'),
(175, 0, 132, 'App\\CStudyMaterial'),
(176, 0, 133, 'App\\CStudyMaterial'),
(177, 0, 134, 'App\\CStudyMaterial'),
(178, 0, 135, 'App\\CStudyMaterial'),
(179, 0, 136, 'App\\CStudyMaterial'),
(180, 0, 137, 'App\\CStudyMaterial'),
(181, 3, 96, 'App\\ToDo'),
(182, 3, 97, 'App\\ToDo'),
(183, 2, 138, 'App\\CStudyMaterial'),
(184, 0, 139, 'App\\CStudyMaterial'),
(185, 3, 98, 'App\\ToDo'),
(186, 3, 99, 'App\\ToDo'),
(187, 3, 100, 'App\\ToDo'),
(188, 2, 140, 'App\\CStudyMaterial'),
(189, 3, 101, 'App\\ToDo'),
(190, 2, 141, 'App\\CStudyMaterial'),
(191, 3, 102, 'App\\ToDo'),
(192, 3, 103, 'App\\ToDo'),
(193, 3, 142, 'App\\CStudyMaterial'),
(194, 1, 143, 'App\\CStudyMaterial'),
(195, 3, 104, 'App\\ToDo'),
(196, 0, 105, 'App\\ToDo'),
(197, 3, 106, 'App\\ToDo'),
(198, 3, 107, 'App\\ToDo'),
(199, 3, 144, 'App\\CStudyMaterial'),
(200, 3, 108, 'App\\ToDo'),
(201, 0, 145, 'App\\CStudyMaterial'),
(202, 0, 146, 'App\\CStudyMaterial'),
(203, 0, 147, 'App\\CStudyMaterial'),
(204, 0, 148, 'App\\CStudyMaterial'),
(205, 0, 149, 'App\\CStudyMaterial'),
(206, 0, 150, 'App\\CStudyMaterial'),
(207, 0, 151, 'App\\CStudyMaterial'),
(208, 0, 152, 'App\\CStudyMaterial'),
(209, 3, 109, 'App\\ToDo'),
(210, 3, 153, 'App\\CStudyMaterial'),
(211, 0, 154, 'App\\CStudyMaterial'),
(212, 0, 155, 'App\\CStudyMaterial'),
(213, 0, 156, 'App\\CStudyMaterial'),
(214, 0, 157, 'App\\CStudyMaterial'),
(215, 0, 158, 'App\\CStudyMaterial'),
(216, 0, 159, 'App\\CStudyMaterial'),
(217, 0, 160, 'App\\CStudyMaterial'),
(218, 0, 161, 'App\\CStudyMaterial'),
(219, 0, 162, 'App\\CStudyMaterial'),
(220, 3, 110, 'App\\ToDo'),
(221, 0, 111, 'App\\ToDo'),
(222, 1, 163, 'App\\CStudyMaterial'),
(223, 0, 112, 'App\\ToDo'),
(224, 0, 164, 'App\\CStudyMaterial'),
(225, 0, 165, 'App\\CStudyMaterial'),
(226, 0, 166, 'App\\CStudyMaterial'),
(227, 0, 167, 'App\\CStudyMaterial'),
(228, 0, 168, 'App\\CStudyMaterial'),
(229, 0, 169, 'App\\CStudyMaterial'),
(230, 0, 170, 'App\\CStudyMaterial'),
(231, 3, 113, 'App\\ToDo'),
(232, 1, 171, 'App\\CStudyMaterial'),
(233, 0, 172, 'App\\CStudyMaterial'),
(234, 0, 173, 'App\\CStudyMaterial'),
(235, 3, 114, 'App\\ToDo'),
(236, 2, 174, 'App\\CStudyMaterial'),
(237, 3, 115, 'App\\ToDo'),
(238, 3, 116, 'App\\ToDo'),
(239, 3, 117, 'App\\ToDo'),
(240, 3, 118, 'App\\ToDo'),
(241, 3, 119, 'App\\ToDo'),
(242, 3, 120, 'App\\ToDo'),
(243, 3, 121, 'App\\ToDo'),
(244, 3, 122, 'App\\ToDo'),
(245, 3, 123, 'App\\ToDo'),
(246, 3, 124, 'App\\ToDo'),
(247, 3, 125, 'App\\ToDo'),
(248, 3, 126, 'App\\ToDo'),
(249, 3, 127, 'App\\ToDo'),
(250, 3, 128, 'App\\ToDo'),
(251, 3, 129, 'App\\ToDo'),
(252, 3, 130, 'App\\ToDo'),
(253, 3, 131, 'App\\ToDo'),
(254, 3, 132, 'App\\ToDo'),
(255, 3, 133, 'App\\ToDo'),
(256, 3, 134, 'App\\ToDo'),
(257, 3, 135, 'App\\ToDo'),
(258, 3, 136, 'App\\ToDo'),
(259, 3, 137, 'App\\ToDo'),
(260, 3, 138, 'App\\ToDo'),
(261, 3, 139, 'App\\ToDo'),
(262, 3, 140, 'App\\ToDo'),
(263, 3, 141, 'App\\ToDo'),
(264, 3, 175, 'App\\CStudyMaterial'),
(265, 0, 176, 'App\\CStudyMaterial'),
(266, 0, 177, 'App\\CStudyMaterial'),
(267, 0, 178, 'App\\CStudyMaterial'),
(268, 0, 179, 'App\\CStudyMaterial'),
(269, 0, 180, 'App\\CStudyMaterial'),
(270, 0, 181, 'App\\CStudyMaterial'),
(271, 0, 182, 'App\\CStudyMaterial'),
(272, 0, 183, 'App\\CStudyMaterial'),
(273, 0, 184, 'App\\CStudyMaterial'),
(274, 0, 185, 'App\\CStudyMaterial'),
(275, 0, 186, 'App\\CStudyMaterial'),
(276, 0, 187, 'App\\CStudyMaterial'),
(277, 0, 188, 'App\\CStudyMaterial'),
(278, 0, 189, 'App\\CStudyMaterial'),
(279, 0, 190, 'App\\CStudyMaterial'),
(280, 0, 191, 'App\\CStudyMaterial'),
(281, 0, 192, 'App\\CStudyMaterial'),
(282, 0, 193, 'App\\CStudyMaterial'),
(283, 3, 142, 'App\\ToDo'),
(284, 1, 194, 'App\\CStudyMaterial'),
(285, 0, 195, 'App\\CStudyMaterial'),
(286, 0, 196, 'App\\CStudyMaterial'),
(287, 0, 197, 'App\\CStudyMaterial'),
(288, 0, 198, 'App\\CStudyMaterial'),
(289, 0, 199, 'App\\CStudyMaterial'),
(290, 0, 200, 'App\\CStudyMaterial'),
(291, 0, 201, 'App\\CStudyMaterial'),
(292, 0, 202, 'App\\CStudyMaterial'),
(293, 0, 203, 'App\\CStudyMaterial'),
(294, 0, 204, 'App\\CStudyMaterial'),
(295, 0, 205, 'App\\CStudyMaterial'),
(296, 0, 206, 'App\\CStudyMaterial'),
(297, 0, 207, 'App\\CStudyMaterial'),
(298, 0, 208, 'App\\CStudyMaterial'),
(299, 0, 209, 'App\\CStudyMaterial'),
(300, 0, 210, 'App\\CStudyMaterial'),
(301, 0, 211, 'App\\CStudyMaterial'),
(302, 0, 212, 'App\\CStudyMaterial'),
(303, 0, 213, 'App\\CStudyMaterial'),
(304, 3, 143, 'App\\ToDo'),
(305, 2, 214, 'App\\CStudyMaterial'),
(306, 0, 215, 'App\\CStudyMaterial'),
(307, 0, 216, 'App\\CStudyMaterial'),
(308, 3, 144, 'App\\ToDo'),
(309, 1, 217, 'App\\CStudyMaterial'),
(310, 3, 145, 'App\\ToDo'),
(311, 1, 218, 'App\\CStudyMaterial'),
(312, 3, 146, 'App\\ToDo'),
(313, 4, 219, 'App\\CStudyMaterial'),
(314, 3, 147, 'App\\ToDo'),
(315, 3, 220, 'App\\CStudyMaterial'),
(316, 3, 148, 'App\\ToDo'),
(317, 3, 149, 'App\\ToDo'),
(318, 4, 221, 'App\\CStudyMaterial'),
(319, 0, 222, 'App\\CStudyMaterial'),
(320, 3, 150, 'App\\ToDo'),
(321, 3, 151, 'App\\ToDo'),
(322, 1, 223, 'App\\CStudyMaterial'),
(323, 0, 224, 'App\\CStudyMaterial'),
(324, 0, 225, 'App\\CStudyMaterial'),
(325, 0, 226, 'App\\CStudyMaterial'),
(326, 0, 227, 'App\\CStudyMaterial'),
(327, 0, 228, 'App\\CStudyMaterial'),
(328, 0, 229, 'App\\CStudyMaterial'),
(329, 0, 230, 'App\\CStudyMaterial'),
(330, 0, 231, 'App\\CStudyMaterial'),
(331, 0, 232, 'App\\CStudyMaterial'),
(332, 0, 233, 'App\\CStudyMaterial'),
(333, 0, 234, 'App\\CStudyMaterial'),
(334, 0, 235, 'App\\CStudyMaterial'),
(335, 0, 236, 'App\\CStudyMaterial'),
(336, 3, 152, 'App\\ToDo'),
(337, 3, 153, 'App\\ToDo'),
(338, 1, 237, 'App\\CStudyMaterial'),
(339, 0, 238, 'App\\CStudyMaterial'),
(340, 0, 239, 'App\\CStudyMaterial'),
(341, 0, 240, 'App\\CStudyMaterial'),
(342, 0, 241, 'App\\CStudyMaterial'),
(343, 0, 242, 'App\\CStudyMaterial'),
(344, 0, 243, 'App\\CStudyMaterial'),
(345, 0, 244, 'App\\CStudyMaterial'),
(346, 0, 245, 'App\\CStudyMaterial'),
(347, 0, 246, 'App\\CStudyMaterial'),
(348, 0, 247, 'App\\CStudyMaterial'),
(349, 3, 154, 'App\\ToDo'),
(350, 1, 248, 'App\\CStudyMaterial'),
(351, 0, 249, 'App\\CStudyMaterial'),
(352, 0, 250, 'App\\CStudyMaterial'),
(353, 0, 155, 'App\\ToDo'),
(354, 2, 251, 'App\\CStudyMaterial'),
(355, 3, 156, 'App\\ToDo'),
(356, 0, 252, 'App\\CStudyMaterial'),
(357, 0, 253, 'App\\CStudyMaterial'),
(358, 0, 254, 'App\\CStudyMaterial'),
(359, 0, 255, 'App\\CStudyMaterial'),
(360, 0, 256, 'App\\CStudyMaterial'),
(361, 0, 257, 'App\\CStudyMaterial'),
(362, 0, 258, 'App\\CStudyMaterial'),
(363, 0, 259, 'App\\CStudyMaterial'),
(364, 0, 260, 'App\\CStudyMaterial'),
(365, 0, 261, 'App\\CStudyMaterial'),
(366, 0, 262, 'App\\CStudyMaterial'),
(367, 0, 263, 'App\\CStudyMaterial'),
(368, 0, 264, 'App\\CStudyMaterial'),
(369, 0, 265, 'App\\CStudyMaterial'),
(370, 0, 266, 'App\\CStudyMaterial'),
(371, 0, 267, 'App\\CStudyMaterial'),
(372, 0, 268, 'App\\CStudyMaterial'),
(373, 0, 269, 'App\\CStudyMaterial'),
(374, 0, 270, 'App\\CStudyMaterial'),
(375, 0, 271, 'App\\CStudyMaterial'),
(376, 0, 272, 'App\\CStudyMaterial'),
(377, 0, 273, 'App\\CStudyMaterial'),
(378, 0, 274, 'App\\CStudyMaterial'),
(379, 0, 275, 'App\\CStudyMaterial'),
(380, 0, 276, 'App\\CStudyMaterial'),
(381, 0, 277, 'App\\CStudyMaterial'),
(382, 0, 278, 'App\\CStudyMaterial'),
(383, 0, 279, 'App\\CStudyMaterial'),
(384, 0, 280, 'App\\CStudyMaterial'),
(385, 0, 281, 'App\\CStudyMaterial'),
(386, 0, 282, 'App\\CStudyMaterial'),
(387, 0, 283, 'App\\CStudyMaterial'),
(388, 0, 284, 'App\\CStudyMaterial'),
(389, 3, 285, 'App\\CStudyMaterial'),
(390, 3, 286, 'App\\CStudyMaterial'),
(391, 3, 287, 'App\\CStudyMaterial'),
(392, 3, 288, 'App\\CStudyMaterial'),
(393, 0, 289, 'App\\CStudyMaterial'),
(394, 0, 290, 'App\\CStudyMaterial'),
(395, 3, 291, 'App\\CStudyMaterial'),
(396, 3, 292, 'App\\CStudyMaterial'),
(397, 0, 293, 'App\\CStudyMaterial'),
(398, 3, 294, 'App\\CStudyMaterial'),
(399, 0, 295, 'App\\CStudyMaterial'),
(400, 3, 296, 'App\\CStudyMaterial'),
(401, 0, 297, 'App\\CStudyMaterial'),
(402, 0, 298, 'App\\CStudyMaterial'),
(403, 0, 299, 'App\\CStudyMaterial'),
(404, 0, 300, 'App\\CStudyMaterial'),
(405, 0, 301, 'App\\CStudyMaterial'),
(406, 0, 302, 'App\\CStudyMaterial'),
(407, 3, 157, 'App\\ToDo'),
(408, 4, 303, 'App\\CStudyMaterial'),
(409, 4, 304, 'App\\CStudyMaterial'),
(410, 0, 305, 'App\\CStudyMaterial'),
(411, 0, 306, 'App\\CStudyMaterial'),
(412, 0, 307, 'App\\CStudyMaterial'),
(413, 0, 308, 'App\\CStudyMaterial'),
(414, 0, 309, 'App\\CStudyMaterial'),
(415, 0, 310, 'App\\CStudyMaterial'),
(416, 0, 311, 'App\\CStudyMaterial'),
(417, 0, 312, 'App\\CStudyMaterial'),
(418, 0, 313, 'App\\CStudyMaterial');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` decimal(3,1) NOT NULL,
  `rated_id` bigint(20) NOT NULL,
  `rated_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `value`, `rated_id`, `rated_type`) VALUES
(1, '3.0', 50, 'App\\CStudyMaterial'),
(2, '2.5', 51, 'App\\CStudyMaterial'),
(3, '4.5', 52, 'App\\CStudyMaterial'),
(4, '2.5', 53, 'App\\CStudyMaterial'),
(5, '2.5', 54, 'App\\CStudyMaterial'),
(6, '2.5', 55, 'App\\CStudyMaterial'),
(7, '2.5', 56, 'App\\CStudyMaterial'),
(8, '2.5', 57, 'App\\CStudyMaterial'),
(9, '2.5', 58, 'App\\CStudyMaterial'),
(10, '2.5', 59, 'App\\CStudyMaterial'),
(11, '4.0', 60, 'App\\CStudyMaterial'),
(12, '1.5', 61, 'App\\CStudyMaterial'),
(13, '2.5', 62, 'App\\CStudyMaterial'),
(14, '3.0', 63, 'App\\CStudyMaterial'),
(15, '2.5', 64, 'App\\CStudyMaterial'),
(16, '2.5', 65, 'App\\CStudyMaterial'),
(17, '2.5', 66, 'App\\CStudyMaterial'),
(18, '2.5', 67, 'App\\CStudyMaterial'),
(20, '2.5', 69, 'App\\CStudyMaterial'),
(21, '4.5', 70, 'App\\CStudyMaterial'),
(22, '0.5', 71, 'App\\CStudyMaterial'),
(23, '0.5', 72, 'App\\CStudyMaterial'),
(24, '1.0', 73, 'App\\CStudyMaterial'),
(25, '2.5', 74, 'App\\CStudyMaterial'),
(26, '2.5', 75, 'App\\CStudyMaterial'),
(27, '0.5', 76, 'App\\CStudyMaterial'),
(28, '1.0', 77, 'App\\CStudyMaterial'),
(29, '1.0', 78, 'App\\CStudyMaterial'),
(30, '2.0', 79, 'App\\CStudyMaterial'),
(31, '2.0', 80, 'App\\CStudyMaterial'),
(32, '2.5', 81, 'App\\CStudyMaterial'),
(33, '2.5', 82, 'App\\CStudyMaterial'),
(34, '2.5', 83, 'App\\CStudyMaterial'),
(35, '2.5', 84, 'App\\CStudyMaterial'),
(36, '2.5', 85, 'App\\CStudyMaterial'),
(37, '2.5', 86, 'App\\CStudyMaterial'),
(38, '2.5', 87, 'App\\CStudyMaterial'),
(39, '2.5', 88, 'App\\CStudyMaterial'),
(40, '2.5', 89, 'App\\CStudyMaterial'),
(41, '2.5', 90, 'App\\CStudyMaterial'),
(42, '2.5', 91, 'App\\CStudyMaterial'),
(43, '2.5', 92, 'App\\CStudyMaterial'),
(44, '2.5', 93, 'App\\CStudyMaterial'),
(45, '2.5', 94, 'App\\CStudyMaterial'),
(46, '2.5', 95, 'App\\CStudyMaterial'),
(47, '2.5', 96, 'App\\CStudyMaterial'),
(48, '2.5', 97, 'App\\CStudyMaterial'),
(49, '2.5', 98, 'App\\CStudyMaterial'),
(50, '2.5', 99, 'App\\CStudyMaterial'),
(51, '2.5', 100, 'App\\CStudyMaterial'),
(52, '2.5', 101, 'App\\CStudyMaterial'),
(53, '2.5', 102, 'App\\CStudyMaterial'),
(54, '2.5', 103, 'App\\CStudyMaterial'),
(55, '2.5', 104, 'App\\CStudyMaterial'),
(56, '2.5', 105, 'App\\CStudyMaterial'),
(57, '2.5', 106, 'App\\CStudyMaterial'),
(58, '2.5', 107, 'App\\CStudyMaterial'),
(59, '2.5', 108, 'App\\CStudyMaterial'),
(60, '2.5', 109, 'App\\CStudyMaterial'),
(61, '2.5', 110, 'App\\CStudyMaterial'),
(62, '2.5', 111, 'App\\CStudyMaterial'),
(63, '2.5', 112, 'App\\CStudyMaterial'),
(64, '0.5', 113, 'App\\CStudyMaterial'),
(65, '0.5', 114, 'App\\CStudyMaterial'),
(66, '0.5', 115, 'App\\CStudyMaterial'),
(67, '1.0', 116, 'App\\CStudyMaterial'),
(68, '1.0', 117, 'App\\CStudyMaterial'),
(69, '1.0', 118, 'App\\CStudyMaterial'),
(70, '1.0', 119, 'App\\CStudyMaterial'),
(71, '2.5', 120, 'App\\CStudyMaterial'),
(72, '2.5', 121, 'App\\CStudyMaterial'),
(73, '2.5', 122, 'App\\CStudyMaterial'),
(74, '2.5', 123, 'App\\CStudyMaterial'),
(75, '2.5', 124, 'App\\CStudyMaterial'),
(76, '2.5', 125, 'App\\CStudyMaterial'),
(77, '1.0', 126, 'App\\CStudyMaterial'),
(78, '4.0', 127, 'App\\CStudyMaterial'),
(79, '2.5', 128, 'App\\CStudyMaterial'),
(80, '1.0', 129, 'App\\CStudyMaterial'),
(81, '1.0', 130, 'App\\CStudyMaterial'),
(82, '1.0', 131, 'App\\CStudyMaterial'),
(83, '1.0', 132, 'App\\CStudyMaterial'),
(84, '1.0', 133, 'App\\CStudyMaterial'),
(85, '1.0', 134, 'App\\CStudyMaterial'),
(86, '1.0', 135, 'App\\CStudyMaterial'),
(87, '1.0', 136, 'App\\CStudyMaterial'),
(88, '1.0', 137, 'App\\CStudyMaterial'),
(89, '2.5', 138, 'App\\CStudyMaterial'),
(90, '1.0', 139, 'App\\CStudyMaterial'),
(91, '2.5', 140, 'App\\CStudyMaterial'),
(92, '4.0', 141, 'App\\CStudyMaterial'),
(93, '4.0', 142, 'App\\CStudyMaterial'),
(94, '2.5', 143, 'App\\CStudyMaterial'),
(95, '5.0', 144, 'App\\CStudyMaterial'),
(96, '2.0', 145, 'App\\CStudyMaterial'),
(97, '1.0', 146, 'App\\CStudyMaterial'),
(98, '4.0', 147, 'App\\CStudyMaterial'),
(99, '1.0', 148, 'App\\CStudyMaterial'),
(100, '1.0', 149, 'App\\CStudyMaterial'),
(101, '1.0', 150, 'App\\CStudyMaterial'),
(102, '1.0', 151, 'App\\CStudyMaterial'),
(103, '1.5', 152, 'App\\CStudyMaterial'),
(104, '4.0', 153, 'App\\CStudyMaterial'),
(105, '2.0', 154, 'App\\CStudyMaterial'),
(106, '2.0', 155, 'App\\CStudyMaterial'),
(107, '2.0', 156, 'App\\CStudyMaterial'),
(108, '2.0', 157, 'App\\CStudyMaterial'),
(109, '2.0', 158, 'App\\CStudyMaterial'),
(110, '2.0', 159, 'App\\CStudyMaterial'),
(111, '2.0', 160, 'App\\CStudyMaterial'),
(112, '2.0', 161, 'App\\CStudyMaterial'),
(113, '2.0', 162, 'App\\CStudyMaterial'),
(114, '2.0', 163, 'App\\CStudyMaterial'),
(115, '5.0', 164, 'App\\CStudyMaterial'),
(116, '2.0', 165, 'App\\CStudyMaterial'),
(117, '2.0', 166, 'App\\CStudyMaterial'),
(118, '2.0', 167, 'App\\CStudyMaterial'),
(119, '1.0', 168, 'App\\CStudyMaterial'),
(120, '1.5', 169, 'App\\CStudyMaterial'),
(121, '1.5', 170, 'App\\CStudyMaterial'),
(122, '2.0', 171, 'App\\CStudyMaterial'),
(123, '1.5', 172, 'App\\CStudyMaterial'),
(124, '2.0', 173, 'App\\CStudyMaterial'),
(125, '2.0', 174, 'App\\CStudyMaterial'),
(126, '4.0', 175, 'App\\CStudyMaterial'),
(127, '1.5', 176, 'App\\CStudyMaterial'),
(128, '1.0', 177, 'App\\CStudyMaterial'),
(129, '1.0', 178, 'App\\CStudyMaterial'),
(130, '1.0', 179, 'App\\CStudyMaterial'),
(131, '1.0', 180, 'App\\CStudyMaterial'),
(132, '3.0', 181, 'App\\CStudyMaterial'),
(133, '1.0', 182, 'App\\CStudyMaterial'),
(134, '1.0', 183, 'App\\CStudyMaterial'),
(135, '1.0', 184, 'App\\CStudyMaterial'),
(136, '1.0', 185, 'App\\CStudyMaterial'),
(137, '1.0', 186, 'App\\CStudyMaterial'),
(138, '1.0', 187, 'App\\CStudyMaterial'),
(139, '1.0', 188, 'App\\CStudyMaterial'),
(140, '1.0', 189, 'App\\CStudyMaterial'),
(141, '3.0', 190, 'App\\CStudyMaterial'),
(142, '1.0', 191, 'App\\CStudyMaterial'),
(143, '1.0', 192, 'App\\CStudyMaterial'),
(144, '1.0', 193, 'App\\CStudyMaterial'),
(145, '2.0', 194, 'App\\CStudyMaterial'),
(146, '1.0', 195, 'App\\CStudyMaterial'),
(147, '1.0', 196, 'App\\CStudyMaterial'),
(148, '1.0', 197, 'App\\CStudyMaterial'),
(149, '1.0', 198, 'App\\CStudyMaterial'),
(150, '1.0', 199, 'App\\CStudyMaterial'),
(151, '1.0', 200, 'App\\CStudyMaterial'),
(152, '1.0', 201, 'App\\CStudyMaterial'),
(153, '1.0', 202, 'App\\CStudyMaterial'),
(154, '1.0', 203, 'App\\CStudyMaterial'),
(155, '1.0', 204, 'App\\CStudyMaterial'),
(156, '1.0', 205, 'App\\CStudyMaterial'),
(157, '1.0', 206, 'App\\CStudyMaterial'),
(158, '1.0', 207, 'App\\CStudyMaterial'),
(159, '1.0', 208, 'App\\CStudyMaterial'),
(160, '1.0', 209, 'App\\CStudyMaterial'),
(161, '1.0', 210, 'App\\CStudyMaterial'),
(162, '1.0', 211, 'App\\CStudyMaterial'),
(163, '2.0', 212, 'App\\CStudyMaterial'),
(164, '2.0', 213, 'App\\CStudyMaterial'),
(165, '4.0', 214, 'App\\CStudyMaterial'),
(166, '4.0', 215, 'App\\CStudyMaterial'),
(167, '2.0', 216, 'App\\CStudyMaterial'),
(168, '2.0', 217, 'App\\CStudyMaterial'),
(169, '2.0', 218, 'App\\CStudyMaterial'),
(170, '4.0', 219, 'App\\CStudyMaterial'),
(171, '2.0', 220, 'App\\CStudyMaterial'),
(172, '4.0', 221, 'App\\CStudyMaterial'),
(173, '2.0', 222, 'App\\CStudyMaterial'),
(174, '2.0', 223, 'App\\CStudyMaterial'),
(175, '1.5', 224, 'App\\CStudyMaterial'),
(176, '2.0', 225, 'App\\CStudyMaterial'),
(177, '2.0', 226, 'App\\CStudyMaterial'),
(178, '2.0', 227, 'App\\CStudyMaterial'),
(179, '1.0', 228, 'App\\CStudyMaterial'),
(180, '1.5', 229, 'App\\CStudyMaterial'),
(181, '1.5', 230, 'App\\CStudyMaterial'),
(182, '1.5', 231, 'App\\CStudyMaterial'),
(183, '1.5', 232, 'App\\CStudyMaterial'),
(184, '1.5', 233, 'App\\CStudyMaterial'),
(185, '1.5', 234, 'App\\CStudyMaterial'),
(186, '1.5', 235, 'App\\CStudyMaterial'),
(187, '1.5', 236, 'App\\CStudyMaterial'),
(188, '2.0', 237, 'App\\CStudyMaterial'),
(189, '1.5', 238, 'App\\CStudyMaterial'),
(190, '0.5', 239, 'App\\CStudyMaterial'),
(191, '0.5', 240, 'App\\CStudyMaterial'),
(192, '0.5', 241, 'App\\CStudyMaterial'),
(193, '0.5', 242, 'App\\CStudyMaterial'),
(194, '0.5', 243, 'App\\CStudyMaterial'),
(195, '0.5', 244, 'App\\CStudyMaterial'),
(196, '1.0', 245, 'App\\CStudyMaterial'),
(197, '1.0', 246, 'App\\CStudyMaterial'),
(198, '1.0', 247, 'App\\CStudyMaterial'),
(199, '2.0', 248, 'App\\CStudyMaterial'),
(200, '2.5', 249, 'App\\CStudyMaterial'),
(201, '2.5', 250, 'App\\CStudyMaterial'),
(202, '4.0', 251, 'App\\CStudyMaterial'),
(203, '3.5', 252, 'App\\CStudyMaterial'),
(204, '3.0', 253, 'App\\CStudyMaterial'),
(205, '3.0', 254, 'App\\CStudyMaterial'),
(206, '3.0', 255, 'App\\CStudyMaterial'),
(207, '3.0', 256, 'App\\CStudyMaterial'),
(208, '3.0', 257, 'App\\CStudyMaterial'),
(209, '3.0', 258, 'App\\CStudyMaterial'),
(210, '3.0', 259, 'App\\CStudyMaterial'),
(211, '4.0', 260, 'App\\CStudyMaterial'),
(212, '3.0', 261, 'App\\CStudyMaterial'),
(213, '3.0', 262, 'App\\CStudyMaterial'),
(214, '3.5', 263, 'App\\CStudyMaterial'),
(215, '3.5', 264, 'App\\CStudyMaterial'),
(216, '3.5', 265, 'App\\CStudyMaterial'),
(217, '3.5', 266, 'App\\CStudyMaterial'),
(218, '3.5', 267, 'App\\CStudyMaterial'),
(219, '3.5', 268, 'App\\CStudyMaterial'),
(220, '4.0', 269, 'App\\CStudyMaterial'),
(221, '4.0', 270, 'App\\CStudyMaterial'),
(222, '4.0', 271, 'App\\CStudyMaterial'),
(223, '4.0', 272, 'App\\CStudyMaterial'),
(224, '4.0', 273, 'App\\CStudyMaterial'),
(225, '4.0', 274, 'App\\CStudyMaterial'),
(226, '4.0', 275, 'App\\CStudyMaterial'),
(227, '4.0', 276, 'App\\CStudyMaterial'),
(228, '4.0', 277, 'App\\CStudyMaterial'),
(229, '4.0', 278, 'App\\CStudyMaterial'),
(230, '4.0', 279, 'App\\CStudyMaterial'),
(231, '4.0', 280, 'App\\CStudyMaterial'),
(232, '4.0', 281, 'App\\CStudyMaterial'),
(233, '4.0', 282, 'App\\CStudyMaterial'),
(234, '4.0', 283, 'App\\CStudyMaterial'),
(235, '4.0', 284, 'App\\CStudyMaterial'),
(236, '4.0', 285, 'App\\CStudyMaterial'),
(237, '4.0', 286, 'App\\CStudyMaterial'),
(238, '4.0', 287, 'App\\CStudyMaterial'),
(239, '4.0', 288, 'App\\CStudyMaterial'),
(240, '3.0', 289, 'App\\CStudyMaterial'),
(241, '3.0', 290, 'App\\CStudyMaterial'),
(242, '4.0', 291, 'App\\CStudyMaterial'),
(243, '4.0', 292, 'App\\CStudyMaterial'),
(244, '1.5', 293, 'App\\CStudyMaterial'),
(245, '4.0', 294, 'App\\CStudyMaterial'),
(246, '2.0', 295, 'App\\CStudyMaterial'),
(247, '4.0', 296, 'App\\CStudyMaterial'),
(248, '4.0', 297, 'App\\CStudyMaterial'),
(249, '2.0', 298, 'App\\CStudyMaterial'),
(250, '2.0', 299, 'App\\CStudyMaterial'),
(251, '4.0', 300, 'App\\CStudyMaterial'),
(252, '4.0', 301, 'App\\CStudyMaterial'),
(253, '1.5', 302, 'App\\CStudyMaterial'),
(254, '4.0', 303, 'App\\CStudyMaterial'),
(255, '4.0', 304, 'App\\CStudyMaterial'),
(256, '2.0', 305, 'App\\CStudyMaterial'),
(257, '3.0', 306, 'App\\CStudyMaterial'),
(258, '4.0', 307, 'App\\CStudyMaterial'),
(259, '4.0', 308, 'App\\CStudyMaterial'),
(260, '4.0', 309, 'App\\CStudyMaterial'),
(261, '4.0', 310, 'App\\CStudyMaterial'),
(262, '4.0', 311, 'App\\CStudyMaterial'),
(263, '4.0', 312, 'App\\CStudyMaterial'),
(264, '2.0', 313, 'App\\CStudyMaterial');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `game_id` bigint(20) NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `game_id`, `body`, `created_at`, `updated_at`) VALUES
(6, 1, 5, 'r fsd', '2020-01-21 09:25:16', '2020-01-21 09:25:16'),
(7, 1, 5, 'r fsd', '2020-01-21 09:25:16', '2020-01-21 09:25:16'),
(8, 1, 5, 'fff', '2020-01-21 09:25:26', '2020-01-21 09:25:26'),
(9, 1, 5, 'gggggggggggggggggggggg', '2020-01-21 12:49:00', '2020-01-21 12:49:00'),
(10, 1, 5, 'ryertyeryert n nh', '2020-01-21 12:50:32', '2020-01-21 12:50:32'),
(11, 1, 5, 'ffffff', '2020-01-21 12:54:53', '2020-01-21 12:54:53'),
(12, 1, 5, 'fff', '2020-01-21 12:57:54', '2020-01-21 12:57:54'),
(13, 1, 5, 'fff1231231231231231231231412314231', '2020-01-21 12:58:07', '2020-01-21 12:58:07'),
(14, 1, 5, 'ggggggggggggg', '2020-01-21 13:01:39', '2020-01-21 13:01:39'),
(15, 1, 5, 'new', '2020-01-21 13:01:56', '2020-01-21 13:01:56'),
(16, 1, 5, 'asdfasd', '2020-01-21 13:03:18', '2020-01-21 13:03:18'),
(17, 1, 5, 'asdfasdd', '2020-01-21 13:03:32', '2020-01-21 13:03:32'),
(18, 1, 5, 'asdfasdd', '2020-01-21 13:04:00', '2020-01-21 13:04:00'),
(19, 1, 5, 'asdfasdd', '2020-01-21 13:05:21', '2020-01-21 13:05:21'),
(20, 1, 5, 'asdfasdd', '2020-01-21 13:05:30', '2020-01-21 13:05:30'),
(21, 1, 5, 'asdfasdd', '2020-01-21 13:06:53', '2020-01-21 13:06:53'),
(22, 1, 5, 'asdfasdd', '2020-01-21 13:08:50', '2020-01-21 13:08:50'),
(23, 1, 5, 'asdfasdd', '2020-01-21 13:09:28', '2020-01-21 13:09:28'),
(24, 1, 5, 'llllllllll', '2020-01-21 13:10:30', '2020-01-21 13:10:30'),
(25, 1, 5, 'fffffffffffffefefefefef', '2020-01-21 13:11:23', '2020-01-21 13:11:23'),
(26, 1, 8, '1333', '2020-01-21 13:12:15', '2020-01-21 13:12:15'),
(27, 1, 8, 'fasdfsdfasf', '2020-01-21 13:13:40', '2020-01-21 13:13:40'),
(28, 1, 8, 'egerweerferfefr', '2020-01-21 13:14:26', '2020-01-21 13:14:26'),
(29, 1, 8, 'wqefefqweqwef', '2020-01-21 13:15:02', '2020-01-21 13:15:02'),
(30, 1, 8, 'fffffffffffffffffffffffffffffffffffffffffffffffffffffff', '2020-01-21 13:15:07', '2020-01-21 13:15:07'),
(31, 1, 8, 'unshift', '2020-01-21 13:16:14', '2020-01-21 13:16:14'),
(32, 1, 21, 'ggg', '2020-01-21 23:22:32', '2020-01-21 23:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `taggable_id` bigint(20) NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'App\\CStudyMaterial', '2020-01-18 05:12:43', '2020-01-18 05:12:43'),
(2, 2, 1, 'App\\CStudyMaterial', '2020-01-18 05:13:27', '2020-01-18 05:13:27'),
(3, 1, 1, 'App\\CStudyTest', '2020-01-18 05:13:27', '2020-01-18 05:13:27'),
(4, 1, 26, 'App\\CStudyMaterial', NULL, NULL),
(5, 2, 26, 'App\\CStudyMaterial', NULL, NULL),
(6, 1, 27, 'App\\CStudyMaterial', NULL, NULL),
(7, 2, 27, 'App\\CStudyMaterial', NULL, NULL),
(8, 1, 29, 'App\\CStudyMaterial', NULL, NULL),
(9, 2, 29, 'App\\CStudyMaterial', NULL, NULL),
(10, 3, 29, 'App\\CStudyMaterial', NULL, NULL),
(11, 1, 30, 'App\\CStudyMaterial', NULL, NULL),
(12, 2, 30, 'App\\CStudyMaterial', NULL, NULL),
(13, 3, 30, 'App\\CStudyMaterial', NULL, NULL),
(14, 1, 30, 'App\\CStudyMaterial', NULL, NULL),
(15, 1, 31, 'App\\CStudyMaterial', NULL, NULL),
(16, 2, 31, 'App\\CStudyMaterial', NULL, NULL),
(17, 3, 31, 'App\\CStudyMaterial', NULL, NULL),
(18, 1, 31, 'App\\CStudyMaterial', NULL, NULL),
(19, 4, 31, 'App\\CStudyMaterial', NULL, NULL),
(20, 1, 32, 'App\\CStudyMaterial', NULL, NULL),
(21, 2, 32, 'App\\CStudyMaterial', NULL, NULL),
(22, 3, 32, 'App\\CStudyMaterial', NULL, NULL),
(23, 1, 32, 'App\\CStudyMaterial', NULL, NULL),
(24, 5, 32, 'App\\CStudyMaterial', NULL, NULL),
(25, 1, 33, 'App\\CStudyMaterial', NULL, NULL),
(26, 2, 33, 'App\\CStudyMaterial', NULL, NULL),
(27, 3, 33, 'App\\CStudyMaterial', NULL, NULL),
(28, 1, 33, 'App\\CStudyMaterial', NULL, NULL),
(29, 5, 33, 'App\\CStudyMaterial', NULL, NULL),
(30, 6, 33, 'App\\CStudyMaterial', NULL, NULL),
(31, 1, 34, 'App\\CStudyMaterial', NULL, NULL),
(32, 2, 34, 'App\\CStudyMaterial', NULL, NULL),
(33, 3, 34, 'App\\CStudyMaterial', NULL, NULL),
(34, 1, 34, 'App\\CStudyMaterial', NULL, NULL),
(35, 5, 34, 'App\\CStudyMaterial', NULL, NULL),
(36, 6, 34, 'App\\CStudyMaterial', NULL, NULL),
(37, 1, 35, 'App\\CStudyMaterial', NULL, NULL),
(38, 2, 35, 'App\\CStudyMaterial', NULL, NULL),
(39, 3, 35, 'App\\CStudyMaterial', NULL, NULL),
(40, 1, 35, 'App\\CStudyMaterial', NULL, NULL),
(41, 5, 35, 'App\\CStudyMaterial', NULL, NULL),
(42, 1, 36, 'App\\CStudyMaterial', NULL, NULL),
(43, 2, 36, 'App\\CStudyMaterial', NULL, NULL),
(44, 1, 37, 'App\\CStudyMaterial', NULL, NULL),
(45, 2, 37, 'App\\CStudyMaterial', NULL, NULL),
(46, 7, 37, 'App\\CStudyMaterial', NULL, NULL),
(47, 7, 36, 'App\\CStudyMaterial', NULL, NULL),
(48, 1, 38, 'App\\CStudyMaterial', NULL, NULL),
(49, 2, 38, 'App\\CStudyMaterial', NULL, NULL),
(50, 7, 38, 'App\\CStudyMaterial', NULL, NULL),
(51, 1, 41, 'App\\CStudyMaterial', NULL, NULL),
(52, 2, 41, 'App\\CStudyMaterial', NULL, NULL),
(58, 4, 43, 'App\\CStudyMaterial', NULL, NULL),
(61, 4, 44, 'App\\CStudyMaterial', NULL, NULL),
(71, 14, 42, 'App\\CStudyMaterial', NULL, NULL),
(72, 15, 42, 'App\\CStudyMaterial', NULL, NULL),
(73, 16, 42, 'App\\CStudyMaterial', NULL, NULL),
(74, 17, 42, 'App\\CStudyMaterial', NULL, NULL),
(75, 18, 42, 'App\\CStudyMaterial', NULL, NULL),
(76, 19, 42, 'App\\CStudyMaterial', NULL, NULL),
(77, 20, 42, 'App\\CStudyMaterial', NULL, NULL),
(100, 1, 41, 'App\\CStudyMaterial', NULL, NULL),
(101, 2, 41, 'App\\CStudyMaterial', NULL, NULL),
(102, 1, 41, 'App\\CStudyMaterial', NULL, NULL),
(103, 2, 41, 'App\\CStudyMaterial', NULL, NULL),
(104, 1, 41, 'App\\CStudyMaterial', NULL, NULL),
(105, 2, 41, 'App\\CStudyMaterial', NULL, NULL),
(106, 44, 42, 'App\\CStudyMaterial', NULL, NULL),
(107, 3, 42, 'App\\CStudyMaterial', NULL, NULL),
(108, 45, 42, 'App\\CStudyMaterial', NULL, NULL),
(109, 46, 45, 'App\\CStudyMaterial', NULL, NULL),
(110, 47, 46, 'App\\CStudyMaterial', NULL, NULL),
(111, 46, 47, 'App\\CStudyMaterial', NULL, NULL),
(112, 46, 48, 'App\\CStudyMaterial', NULL, NULL),
(113, 48, 48, 'App\\CStudyMaterial', NULL, NULL),
(117, 48, 50, 'App\\CStudyMaterial', NULL, NULL),
(118, 49, 50, 'App\\CStudyMaterial', NULL, NULL),
(119, 50, 50, 'App\\CStudyMaterial', NULL, NULL),
(120, 48, 51, 'App\\CStudyMaterial', NULL, NULL),
(121, 49, 51, 'App\\CStudyMaterial', NULL, NULL),
(122, 50, 51, 'App\\CStudyMaterial', NULL, NULL),
(123, 51, 51, 'App\\CStudyMaterial', NULL, NULL),
(124, 48, 52, 'App\\CStudyMaterial', NULL, NULL),
(125, 49, 52, 'App\\CStudyMaterial', NULL, NULL),
(126, 50, 52, 'App\\CStudyMaterial', NULL, NULL),
(127, 51, 52, 'App\\CStudyMaterial', NULL, NULL),
(128, 52, 53, 'App\\CStudyMaterial', NULL, NULL),
(129, 52, 54, 'App\\CStudyMaterial', NULL, NULL),
(130, 53, 56, 'App\\CStudyMaterial', NULL, NULL),
(131, 53, 57, 'App\\CStudyMaterial', NULL, NULL),
(132, 53, 58, 'App\\CStudyMaterial', NULL, NULL),
(133, 54, 59, 'App\\CStudyMaterial', NULL, NULL),
(137, 58, 60, 'App\\CStudyMaterial', NULL, NULL),
(138, 59, 61, 'App\\CStudyMaterial', NULL, NULL),
(139, 60, 62, 'App\\CStudyMaterial', NULL, NULL),
(140, 61, 63, 'App\\CStudyMaterial', NULL, NULL),
(141, 59, 64, 'App\\CStudyMaterial', NULL, NULL),
(142, 59, 65, 'App\\CStudyMaterial', NULL, NULL),
(144, 62, 70, 'App\\CStudyMaterial', NULL, NULL),
(145, 63, 70, 'App\\CStudyMaterial', NULL, NULL),
(146, 64, 71, 'App\\CStudyMaterial', NULL, NULL),
(147, 64, 72, 'App\\CStudyMaterial', NULL, NULL),
(148, 64, 73, 'App\\CStudyMaterial', NULL, NULL),
(149, 65, 73, 'App\\CStudyMaterial', NULL, NULL),
(150, 64, 74, 'App\\CStudyMaterial', NULL, NULL),
(151, 66, 75, 'App\\CStudyMaterial', NULL, NULL),
(152, 67, 75, 'App\\CStudyMaterial', NULL, NULL),
(153, 68, 75, 'App\\CStudyMaterial', NULL, NULL),
(154, 66, 74, 'App\\CStudyMaterial', NULL, NULL),
(155, 68, 74, 'App\\CStudyMaterial', NULL, NULL),
(156, 64, 76, 'App\\CStudyMaterial', NULL, NULL),
(157, 64, 77, 'App\\CStudyMaterial', NULL, NULL),
(158, 69, 77, 'App\\CStudyMaterial', NULL, NULL),
(159, 64, 78, 'App\\CStudyMaterial', NULL, NULL),
(160, 69, 78, 'App\\CStudyMaterial', NULL, NULL),
(161, 64, 79, 'App\\CStudyMaterial', NULL, NULL),
(162, 69, 79, 'App\\CStudyMaterial', NULL, NULL),
(163, 64, 80, 'App\\CStudyMaterial', NULL, NULL),
(164, 69, 80, 'App\\CStudyMaterial', NULL, NULL),
(165, 64, 81, 'App\\CStudyMaterial', NULL, NULL),
(166, 70, 81, 'App\\CStudyMaterial', NULL, NULL),
(167, 71, 81, 'App\\CStudyMaterial', NULL, NULL),
(168, 64, 82, 'App\\CStudyMaterial', NULL, NULL),
(169, 71, 82, 'App\\CStudyMaterial', NULL, NULL),
(170, 72, 82, 'App\\CStudyMaterial', NULL, NULL),
(171, 71, 83, 'App\\CStudyMaterial', NULL, NULL),
(172, 72, 83, 'App\\CStudyMaterial', NULL, NULL),
(173, 71, 84, 'App\\CStudyMaterial', NULL, NULL),
(174, 72, 84, 'App\\CStudyMaterial', NULL, NULL),
(175, 73, 84, 'App\\CStudyMaterial', NULL, NULL),
(176, 71, 85, 'App\\CStudyMaterial', NULL, NULL),
(177, 72, 85, 'App\\CStudyMaterial', NULL, NULL),
(178, 73, 85, 'App\\CStudyMaterial', NULL, NULL),
(179, 71, 86, 'App\\CStudyMaterial', NULL, NULL),
(180, 72, 86, 'App\\CStudyMaterial', NULL, NULL),
(181, 73, 86, 'App\\CStudyMaterial', NULL, NULL),
(182, 74, 87, 'App\\CStudyMaterial', NULL, NULL),
(183, 71, 88, 'App\\CStudyMaterial', NULL, NULL),
(184, 72, 88, 'App\\CStudyMaterial', NULL, NULL),
(185, 72, 98, 'App\\CStudyMaterial', NULL, NULL),
(186, 64, 99, 'App\\CStudyMaterial', NULL, NULL),
(187, 71, 99, 'App\\CStudyMaterial', NULL, NULL),
(189, 71, 100, 'App\\CStudyMaterial', NULL, NULL),
(190, 75, 100, 'App\\CStudyMaterial', NULL, NULL),
(191, 71, 101, 'App\\CStudyMaterial', NULL, NULL),
(192, 64, 101, 'App\\CStudyMaterial', NULL, NULL),
(193, 71, 102, 'App\\CStudyMaterial', NULL, NULL),
(194, 64, 102, 'App\\CStudyMaterial', NULL, NULL),
(195, 64, 103, 'App\\CStudyMaterial', NULL, NULL),
(196, 71, 103, 'App\\CStudyMaterial', NULL, NULL),
(197, 64, 104, 'App\\CStudyMaterial', NULL, NULL),
(198, 71, 104, 'App\\CStudyMaterial', NULL, NULL),
(199, 64, 106, 'App\\CStudyMaterial', NULL, NULL),
(200, 64, 107, 'App\\CStudyMaterial', NULL, NULL),
(201, 64, 108, 'App\\CStudyMaterial', NULL, NULL),
(202, 64, 109, 'App\\CStudyMaterial', NULL, NULL),
(203, 76, 109, 'App\\CStudyMaterial', NULL, NULL),
(204, 64, 110, 'App\\CStudyMaterial', NULL, NULL),
(205, 64, 111, 'App\\CStudyMaterial', NULL, NULL),
(206, 77, 111, 'App\\CStudyMaterial', NULL, NULL),
(207, 77, 112, 'App\\CStudyMaterial', NULL, NULL),
(208, 72, 112, 'App\\CStudyMaterial', NULL, NULL),
(209, 64, 113, 'App\\CStudyMaterial', NULL, NULL),
(210, 64, 114, 'App\\CStudyMaterial', NULL, NULL),
(211, 64, 115, 'App\\CStudyMaterial', NULL, NULL),
(212, 64, 116, 'App\\CStudyMaterial', NULL, NULL),
(213, 76, 116, 'App\\CStudyMaterial', NULL, NULL),
(214, 64, 117, 'App\\CStudyMaterial', NULL, NULL),
(215, 76, 117, 'App\\CStudyMaterial', NULL, NULL),
(216, 64, 118, 'App\\CStudyMaterial', NULL, NULL),
(217, 76, 118, 'App\\CStudyMaterial', NULL, NULL),
(218, 64, 119, 'App\\CStudyMaterial', NULL, NULL),
(219, 64, 120, 'App\\CStudyMaterial', NULL, NULL),
(220, 69, 120, 'App\\CStudyMaterial', NULL, NULL),
(221, 78, 120, 'App\\CStudyMaterial', NULL, NULL),
(222, 69, 121, 'App\\CStudyMaterial', NULL, NULL),
(223, 78, 121, 'App\\CStudyMaterial', NULL, NULL),
(224, 64, 122, 'App\\CStudyMaterial', NULL, NULL),
(225, 69, 122, 'App\\CStudyMaterial', NULL, NULL),
(226, 79, 122, 'App\\CStudyMaterial', NULL, NULL),
(227, 64, 123, 'App\\CStudyMaterial', NULL, NULL),
(228, 69, 123, 'App\\CStudyMaterial', NULL, NULL),
(229, 64, 124, 'App\\CStudyMaterial', NULL, NULL),
(230, 69, 124, 'App\\CStudyMaterial', NULL, NULL),
(231, 80, 124, 'App\\CStudyMaterial', NULL, NULL),
(232, 69, 125, 'App\\CStudyMaterial', NULL, NULL),
(233, 80, 125, 'App\\CStudyMaterial', NULL, NULL),
(234, 64, 126, 'App\\CStudyMaterial', NULL, NULL),
(235, 69, 126, 'App\\CStudyMaterial', NULL, NULL),
(236, 64, 127, 'App\\CStudyMaterial', NULL, NULL),
(237, 69, 127, 'App\\CStudyMaterial', NULL, NULL),
(238, 64, 129, 'App\\CStudyMaterial', NULL, NULL),
(239, 64, 130, 'App\\CStudyMaterial', NULL, NULL),
(240, 64, 131, 'App\\CStudyMaterial', NULL, NULL),
(241, 81, 131, 'App\\CStudyMaterial', NULL, NULL),
(242, 64, 132, 'App\\CStudyMaterial', NULL, NULL),
(243, 64, 133, 'App\\CStudyMaterial', NULL, NULL),
(244, 64, 134, 'App\\CStudyMaterial', NULL, NULL),
(245, 82, 134, 'App\\CStudyMaterial', NULL, NULL),
(246, 83, 134, 'App\\CStudyMaterial', NULL, NULL),
(247, 64, 135, 'App\\CStudyMaterial', NULL, NULL),
(248, 64, 136, 'App\\CStudyMaterial', NULL, NULL),
(249, 64, 137, 'App\\CStudyMaterial', NULL, NULL),
(250, 82, 137, 'App\\CStudyMaterial', NULL, NULL),
(251, 64, 138, 'App\\CStudyMaterial', NULL, NULL),
(252, 82, 138, 'App\\CStudyMaterial', NULL, NULL),
(253, 84, 138, 'App\\CStudyMaterial', NULL, NULL),
(254, 64, 139, 'App\\CStudyMaterial', NULL, NULL),
(255, 82, 139, 'App\\CStudyMaterial', NULL, NULL),
(256, 64, 140, 'App\\CStudyMaterial', NULL, NULL),
(257, 82, 140, 'App\\CStudyMaterial', NULL, NULL),
(258, 64, 141, 'App\\CStudyMaterial', NULL, NULL),
(259, 82, 141, 'App\\CStudyMaterial', NULL, NULL),
(260, 64, 142, 'App\\CStudyMaterial', NULL, NULL),
(261, 82, 142, 'App\\CStudyMaterial', NULL, NULL),
(262, 82, 143, 'App\\CStudyMaterial', NULL, NULL),
(263, 64, 144, 'App\\CStudyMaterial', NULL, NULL),
(264, 82, 144, 'App\\CStudyMaterial', NULL, NULL),
(265, 64, 145, 'App\\CStudyMaterial', NULL, NULL),
(266, 82, 145, 'App\\CStudyMaterial', NULL, NULL),
(267, 64, 146, 'App\\CStudyMaterial', NULL, NULL),
(268, 82, 146, 'App\\CStudyMaterial', NULL, NULL),
(269, 64, 147, 'App\\CStudyMaterial', NULL, NULL),
(270, 82, 147, 'App\\CStudyMaterial', NULL, NULL),
(271, 82, 148, 'App\\CStudyMaterial', NULL, NULL),
(272, 85, 148, 'App\\CStudyMaterial', NULL, NULL),
(273, 64, 149, 'App\\CStudyMaterial', NULL, NULL),
(274, 82, 149, 'App\\CStudyMaterial', NULL, NULL),
(275, 82, 150, 'App\\CStudyMaterial', NULL, NULL),
(276, 82, 151, 'App\\CStudyMaterial', NULL, NULL),
(277, 82, 152, 'App\\CStudyMaterial', NULL, NULL),
(278, 82, 153, 'App\\CStudyMaterial', NULL, NULL),
(279, 86, 154, 'App\\CStudyMaterial', NULL, NULL),
(280, 68, 154, 'App\\CStudyMaterial', NULL, NULL),
(281, 87, 154, 'App\\CStudyMaterial', NULL, NULL),
(282, 88, 155, 'App\\CStudyMaterial', NULL, NULL),
(283, 86, 156, 'App\\CStudyMaterial', NULL, NULL),
(284, 68, 156, 'App\\CStudyMaterial', NULL, NULL),
(285, 87, 156, 'App\\CStudyMaterial', NULL, NULL),
(286, 86, 157, 'App\\CStudyMaterial', NULL, NULL),
(287, 68, 157, 'App\\CStudyMaterial', NULL, NULL),
(288, 87, 157, 'App\\CStudyMaterial', NULL, NULL),
(289, 86, 158, 'App\\CStudyMaterial', NULL, NULL),
(290, 68, 158, 'App\\CStudyMaterial', NULL, NULL),
(291, 87, 158, 'App\\CStudyMaterial', NULL, NULL),
(292, 86, 159, 'App\\CStudyMaterial', NULL, NULL),
(293, 68, 159, 'App\\CStudyMaterial', NULL, NULL),
(294, 87, 159, 'App\\CStudyMaterial', NULL, NULL),
(295, 86, 160, 'App\\CStudyMaterial', NULL, NULL),
(296, 68, 160, 'App\\CStudyMaterial', NULL, NULL),
(297, 87, 160, 'App\\CStudyMaterial', NULL, NULL),
(298, 86, 161, 'App\\CStudyMaterial', NULL, NULL),
(299, 68, 161, 'App\\CStudyMaterial', NULL, NULL),
(300, 87, 161, 'App\\CStudyMaterial', NULL, NULL),
(301, 86, 162, 'App\\CStudyMaterial', NULL, NULL),
(302, 68, 162, 'App\\CStudyMaterial', NULL, NULL),
(303, 87, 162, 'App\\CStudyMaterial', NULL, NULL),
(304, 86, 163, 'App\\CStudyMaterial', NULL, NULL),
(305, 68, 163, 'App\\CStudyMaterial', NULL, NULL),
(306, 87, 163, 'App\\CStudyMaterial', NULL, NULL),
(307, 86, 164, 'App\\CStudyMaterial', NULL, NULL),
(308, 68, 164, 'App\\CStudyMaterial', NULL, NULL),
(309, 87, 164, 'App\\CStudyMaterial', NULL, NULL),
(310, 86, 165, 'App\\CStudyMaterial', NULL, NULL),
(311, 68, 165, 'App\\CStudyMaterial', NULL, NULL),
(312, 87, 165, 'App\\CStudyMaterial', NULL, NULL),
(313, 86, 166, 'App\\CStudyMaterial', NULL, NULL),
(314, 68, 166, 'App\\CStudyMaterial', NULL, NULL),
(315, 87, 166, 'App\\CStudyMaterial', NULL, NULL),
(316, 86, 167, 'App\\CStudyMaterial', NULL, NULL),
(317, 68, 167, 'App\\CStudyMaterial', NULL, NULL),
(318, 87, 167, 'App\\CStudyMaterial', NULL, NULL),
(319, 64, 169, 'App\\CStudyMaterial', NULL, NULL),
(320, 82, 169, 'App\\CStudyMaterial', NULL, NULL),
(321, 64, 170, 'App\\CStudyMaterial', NULL, NULL),
(322, 82, 170, 'App\\CStudyMaterial', NULL, NULL),
(323, 64, 171, 'App\\CStudyMaterial', NULL, NULL),
(324, 82, 171, 'App\\CStudyMaterial', NULL, NULL),
(325, 64, 172, 'App\\CStudyMaterial', NULL, NULL),
(326, 82, 172, 'App\\CStudyMaterial', NULL, NULL),
(327, 64, 173, 'App\\CStudyMaterial', NULL, NULL),
(328, 82, 173, 'App\\CStudyMaterial', NULL, NULL),
(329, 64, 174, 'App\\CStudyMaterial', NULL, NULL),
(330, 82, 174, 'App\\CStudyMaterial', NULL, NULL),
(331, 64, 175, 'App\\CStudyMaterial', NULL, NULL),
(332, 82, 175, 'App\\CStudyMaterial', NULL, NULL),
(333, 64, 176, 'App\\CStudyMaterial', NULL, NULL),
(334, 82, 176, 'App\\CStudyMaterial', NULL, NULL),
(335, 64, 177, 'App\\CStudyMaterial', NULL, NULL),
(336, 81, 177, 'App\\CStudyMaterial', NULL, NULL),
(337, 64, 178, 'App\\CStudyMaterial', NULL, NULL),
(338, 81, 178, 'App\\CStudyMaterial', NULL, NULL),
(339, 64, 179, 'App\\CStudyMaterial', NULL, NULL),
(340, 81, 179, 'App\\CStudyMaterial', NULL, NULL),
(341, 64, 180, 'App\\CStudyMaterial', NULL, NULL),
(342, 81, 180, 'App\\CStudyMaterial', NULL, NULL),
(343, 64, 182, 'App\\CStudyMaterial', NULL, NULL),
(344, 81, 182, 'App\\CStudyMaterial', NULL, NULL),
(345, 64, 183, 'App\\CStudyMaterial', NULL, NULL),
(346, 81, 183, 'App\\CStudyMaterial', NULL, NULL),
(347, 64, 184, 'App\\CStudyMaterial', NULL, NULL),
(348, 81, 184, 'App\\CStudyMaterial', NULL, NULL),
(349, 64, 185, 'App\\CStudyMaterial', NULL, NULL),
(350, 89, 185, 'App\\CStudyMaterial', NULL, NULL),
(351, 64, 186, 'App\\CStudyMaterial', NULL, NULL),
(352, 89, 186, 'App\\CStudyMaterial', NULL, NULL),
(353, 64, 187, 'App\\CStudyMaterial', NULL, NULL),
(354, 89, 187, 'App\\CStudyMaterial', NULL, NULL),
(355, 64, 188, 'App\\CStudyMaterial', NULL, NULL),
(356, 89, 188, 'App\\CStudyMaterial', NULL, NULL),
(357, 64, 189, 'App\\CStudyMaterial', NULL, NULL),
(358, 89, 189, 'App\\CStudyMaterial', NULL, NULL),
(359, 89, 190, 'App\\CStudyMaterial', NULL, NULL),
(360, 90, 190, 'App\\CStudyMaterial', NULL, NULL),
(361, 64, 191, 'App\\CStudyMaterial', NULL, NULL),
(362, 89, 191, 'App\\CStudyMaterial', NULL, NULL),
(363, 64, 192, 'App\\CStudyMaterial', NULL, NULL),
(364, 89, 192, 'App\\CStudyMaterial', NULL, NULL),
(365, 64, 193, 'App\\CStudyMaterial', NULL, NULL),
(366, 89, 193, 'App\\CStudyMaterial', NULL, NULL),
(367, 64, 194, 'App\\CStudyMaterial', NULL, NULL),
(368, 89, 194, 'App\\CStudyMaterial', NULL, NULL),
(369, 64, 195, 'App\\CStudyMaterial', NULL, NULL),
(370, 89, 195, 'App\\CStudyMaterial', NULL, NULL),
(371, 91, 195, 'App\\CStudyMaterial', NULL, NULL),
(372, 64, 196, 'App\\CStudyMaterial', NULL, NULL),
(373, 89, 196, 'App\\CStudyMaterial', NULL, NULL),
(374, 91, 196, 'App\\CStudyMaterial', NULL, NULL),
(375, 64, 197, 'App\\CStudyMaterial', NULL, NULL),
(376, 89, 197, 'App\\CStudyMaterial', NULL, NULL),
(377, 91, 197, 'App\\CStudyMaterial', NULL, NULL),
(378, 64, 198, 'App\\CStudyMaterial', NULL, NULL),
(379, 89, 198, 'App\\CStudyMaterial', NULL, NULL),
(380, 91, 198, 'App\\CStudyMaterial', NULL, NULL),
(381, 64, 199, 'App\\CStudyMaterial', NULL, NULL),
(382, 89, 199, 'App\\CStudyMaterial', NULL, NULL),
(383, 91, 199, 'App\\CStudyMaterial', NULL, NULL),
(384, 64, 200, 'App\\CStudyMaterial', NULL, NULL),
(385, 89, 200, 'App\\CStudyMaterial', NULL, NULL),
(386, 91, 200, 'App\\CStudyMaterial', NULL, NULL),
(387, 64, 201, 'App\\CStudyMaterial', NULL, NULL),
(388, 89, 201, 'App\\CStudyMaterial', NULL, NULL),
(389, 91, 201, 'App\\CStudyMaterial', NULL, NULL),
(390, 64, 202, 'App\\CStudyMaterial', NULL, NULL),
(391, 89, 202, 'App\\CStudyMaterial', NULL, NULL),
(392, 91, 202, 'App\\CStudyMaterial', NULL, NULL),
(393, 64, 203, 'App\\CStudyMaterial', NULL, NULL),
(394, 89, 203, 'App\\CStudyMaterial', NULL, NULL),
(395, 91, 203, 'App\\CStudyMaterial', NULL, NULL),
(396, 64, 204, 'App\\CStudyMaterial', NULL, NULL),
(397, 89, 204, 'App\\CStudyMaterial', NULL, NULL),
(398, 91, 204, 'App\\CStudyMaterial', NULL, NULL),
(399, 64, 205, 'App\\CStudyMaterial', NULL, NULL),
(400, 89, 205, 'App\\CStudyMaterial', NULL, NULL),
(401, 91, 205, 'App\\CStudyMaterial', NULL, NULL),
(402, 64, 206, 'App\\CStudyMaterial', NULL, NULL),
(403, 89, 206, 'App\\CStudyMaterial', NULL, NULL),
(404, 91, 206, 'App\\CStudyMaterial', NULL, NULL),
(405, 64, 207, 'App\\CStudyMaterial', NULL, NULL),
(406, 89, 207, 'App\\CStudyMaterial', NULL, NULL),
(407, 91, 207, 'App\\CStudyMaterial', NULL, NULL),
(408, 64, 208, 'App\\CStudyMaterial', NULL, NULL),
(409, 89, 208, 'App\\CStudyMaterial', NULL, NULL),
(410, 91, 208, 'App\\CStudyMaterial', NULL, NULL),
(411, 64, 209, 'App\\CStudyMaterial', NULL, NULL),
(412, 89, 209, 'App\\CStudyMaterial', NULL, NULL),
(413, 64, 210, 'App\\CStudyMaterial', NULL, NULL),
(414, 89, 210, 'App\\CStudyMaterial', NULL, NULL),
(415, 64, 211, 'App\\CStudyMaterial', NULL, NULL),
(416, 64, 212, 'App\\CStudyMaterial', NULL, NULL),
(417, 82, 212, 'App\\CStudyMaterial', NULL, NULL),
(418, 64, 213, 'App\\CStudyMaterial', NULL, NULL),
(419, 82, 213, 'App\\CStudyMaterial', NULL, NULL),
(420, 92, 214, 'App\\CStudyMaterial', NULL, NULL),
(421, 64, 215, 'App\\CStudyMaterial', NULL, NULL),
(422, 82, 215, 'App\\CStudyMaterial', NULL, NULL),
(423, 92, 215, 'App\\CStudyMaterial', NULL, NULL),
(424, 64, 217, 'App\\CStudyMaterial', NULL, NULL),
(425, 69, 217, 'App\\CStudyMaterial', NULL, NULL),
(426, 64, 218, 'App\\CStudyMaterial', NULL, NULL),
(427, 69, 218, 'App\\CStudyMaterial', NULL, NULL),
(428, 82, 218, 'App\\CStudyMaterial', NULL, NULL),
(429, 64, 219, 'App\\CStudyMaterial', NULL, NULL),
(430, 69, 219, 'App\\CStudyMaterial', NULL, NULL),
(431, 82, 219, 'App\\CStudyMaterial', NULL, NULL),
(432, 64, 220, 'App\\CStudyMaterial', NULL, NULL),
(433, 69, 220, 'App\\CStudyMaterial', NULL, NULL),
(434, 82, 220, 'App\\CStudyMaterial', NULL, NULL),
(435, 64, 221, 'App\\CStudyMaterial', NULL, NULL),
(436, 69, 221, 'App\\CStudyMaterial', NULL, NULL),
(437, 82, 221, 'App\\CStudyMaterial', NULL, NULL),
(438, 64, 222, 'App\\CStudyMaterial', NULL, NULL),
(439, 69, 222, 'App\\CStudyMaterial', NULL, NULL),
(440, 82, 222, 'App\\CStudyMaterial', NULL, NULL),
(441, 64, 223, 'App\\CStudyMaterial', NULL, NULL),
(442, 69, 223, 'App\\CStudyMaterial', NULL, NULL),
(443, 82, 223, 'App\\CStudyMaterial', NULL, NULL),
(444, 64, 224, 'App\\CStudyMaterial', NULL, NULL),
(445, 69, 224, 'App\\CStudyMaterial', NULL, NULL),
(446, 82, 224, 'App\\CStudyMaterial', NULL, NULL),
(447, 64, 225, 'App\\CStudyMaterial', NULL, NULL),
(448, 69, 225, 'App\\CStudyMaterial', NULL, NULL),
(449, 82, 225, 'App\\CStudyMaterial', NULL, NULL),
(450, 64, 226, 'App\\CStudyMaterial', NULL, NULL),
(451, 69, 226, 'App\\CStudyMaterial', NULL, NULL),
(452, 82, 226, 'App\\CStudyMaterial', NULL, NULL),
(453, 64, 227, 'App\\CStudyMaterial', NULL, NULL),
(454, 69, 227, 'App\\CStudyMaterial', NULL, NULL),
(455, 82, 227, 'App\\CStudyMaterial', NULL, NULL),
(456, 64, 228, 'App\\CStudyMaterial', NULL, NULL),
(457, 64, 229, 'App\\CStudyMaterial', NULL, NULL),
(458, 93, 229, 'App\\CStudyMaterial', NULL, NULL),
(459, 64, 230, 'App\\CStudyMaterial', NULL, NULL),
(460, 93, 230, 'App\\CStudyMaterial', NULL, NULL),
(461, 64, 231, 'App\\CStudyMaterial', NULL, NULL),
(462, 93, 231, 'App\\CStudyMaterial', NULL, NULL),
(463, 64, 232, 'App\\CStudyMaterial', NULL, NULL),
(464, 93, 232, 'App\\CStudyMaterial', NULL, NULL),
(465, 64, 233, 'App\\CStudyMaterial', NULL, NULL),
(466, 93, 233, 'App\\CStudyMaterial', NULL, NULL),
(467, 64, 234, 'App\\CStudyMaterial', NULL, NULL),
(468, 93, 234, 'App\\CStudyMaterial', NULL, NULL),
(469, 64, 235, 'App\\CStudyMaterial', NULL, NULL),
(470, 93, 235, 'App\\CStudyMaterial', NULL, NULL),
(471, 64, 236, 'App\\CStudyMaterial', NULL, NULL),
(472, 93, 236, 'App\\CStudyMaterial', NULL, NULL),
(473, 64, 237, 'App\\CStudyMaterial', NULL, NULL),
(474, 93, 237, 'App\\CStudyMaterial', NULL, NULL),
(475, 64, 238, 'App\\CStudyMaterial', NULL, NULL),
(476, 93, 238, 'App\\CStudyMaterial', NULL, NULL),
(477, 64, 239, 'App\\CStudyMaterial', NULL, NULL),
(478, 94, 239, 'App\\CStudyMaterial', NULL, NULL),
(479, 64, 240, 'App\\CStudyMaterial', NULL, NULL),
(480, 94, 240, 'App\\CStudyMaterial', NULL, NULL),
(481, 64, 241, 'App\\CStudyMaterial', NULL, NULL),
(482, 94, 241, 'App\\CStudyMaterial', NULL, NULL),
(483, 64, 242, 'App\\CStudyMaterial', NULL, NULL),
(484, 94, 242, 'App\\CStudyMaterial', NULL, NULL),
(485, 64, 243, 'App\\CStudyMaterial', NULL, NULL),
(486, 94, 243, 'App\\CStudyMaterial', NULL, NULL),
(487, 64, 244, 'App\\CStudyMaterial', NULL, NULL),
(488, 94, 244, 'App\\CStudyMaterial', NULL, NULL),
(489, 64, 245, 'App\\CStudyMaterial', NULL, NULL),
(490, 69, 245, 'App\\CStudyMaterial', NULL, NULL),
(491, 64, 246, 'App\\CStudyMaterial', NULL, NULL),
(492, 69, 246, 'App\\CStudyMaterial', NULL, NULL),
(493, 64, 247, 'App\\CStudyMaterial', NULL, NULL),
(494, 69, 247, 'App\\CStudyMaterial', NULL, NULL),
(495, 64, 248, 'App\\CStudyMaterial', NULL, NULL),
(496, 69, 248, 'App\\CStudyMaterial', NULL, NULL),
(497, 86, 250, 'App\\CStudyMaterial', NULL, NULL),
(498, 87, 250, 'App\\CStudyMaterial', NULL, NULL),
(499, 86, 251, 'App\\CStudyMaterial', NULL, NULL),
(500, 87, 251, 'App\\CStudyMaterial', NULL, NULL),
(501, 86, 252, 'App\\CStudyMaterial', NULL, NULL),
(502, 87, 252, 'App\\CStudyMaterial', NULL, NULL),
(503, 86, 253, 'App\\CStudyMaterial', NULL, NULL),
(504, 87, 253, 'App\\CStudyMaterial', NULL, NULL),
(505, 86, 254, 'App\\CStudyMaterial', NULL, NULL),
(506, 87, 254, 'App\\CStudyMaterial', NULL, NULL),
(507, 86, 255, 'App\\CStudyMaterial', NULL, NULL),
(508, 87, 255, 'App\\CStudyMaterial', NULL, NULL),
(509, 86, 256, 'App\\CStudyMaterial', NULL, NULL),
(510, 87, 256, 'App\\CStudyMaterial', NULL, NULL),
(511, 86, 257, 'App\\CStudyMaterial', NULL, NULL),
(512, 87, 257, 'App\\CStudyMaterial', NULL, NULL),
(513, 86, 258, 'App\\CStudyMaterial', NULL, NULL),
(514, 87, 258, 'App\\CStudyMaterial', NULL, NULL),
(515, 86, 259, 'App\\CStudyMaterial', NULL, NULL),
(516, 87, 259, 'App\\CStudyMaterial', NULL, NULL),
(517, 86, 260, 'App\\CStudyMaterial', NULL, NULL),
(518, 87, 260, 'App\\CStudyMaterial', NULL, NULL),
(519, 86, 261, 'App\\CStudyMaterial', NULL, NULL),
(520, 87, 261, 'App\\CStudyMaterial', NULL, NULL),
(521, 86, 262, 'App\\CStudyMaterial', NULL, NULL),
(522, 87, 262, 'App\\CStudyMaterial', NULL, NULL),
(523, 86, 263, 'App\\CStudyMaterial', NULL, NULL),
(524, 87, 263, 'App\\CStudyMaterial', NULL, NULL),
(525, 86, 264, 'App\\CStudyMaterial', NULL, NULL),
(526, 87, 264, 'App\\CStudyMaterial', NULL, NULL),
(527, 86, 265, 'App\\CStudyMaterial', NULL, NULL),
(528, 87, 265, 'App\\CStudyMaterial', NULL, NULL),
(529, 86, 266, 'App\\CStudyMaterial', NULL, NULL),
(530, 87, 266, 'App\\CStudyMaterial', NULL, NULL),
(531, 86, 267, 'App\\CStudyMaterial', NULL, NULL),
(532, 87, 267, 'App\\CStudyMaterial', NULL, NULL),
(533, 86, 268, 'App\\CStudyMaterial', NULL, NULL),
(534, 87, 268, 'App\\CStudyMaterial', NULL, NULL),
(535, 86, 269, 'App\\CStudyMaterial', NULL, NULL),
(536, 87, 269, 'App\\CStudyMaterial', NULL, NULL),
(537, 86, 270, 'App\\CStudyMaterial', NULL, NULL),
(538, 87, 270, 'App\\CStudyMaterial', NULL, NULL),
(539, 86, 271, 'App\\CStudyMaterial', NULL, NULL),
(540, 87, 271, 'App\\CStudyMaterial', NULL, NULL),
(541, 86, 272, 'App\\CStudyMaterial', NULL, NULL),
(542, 87, 272, 'App\\CStudyMaterial', NULL, NULL),
(543, 86, 273, 'App\\CStudyMaterial', NULL, NULL),
(544, 87, 273, 'App\\CStudyMaterial', NULL, NULL),
(545, 86, 274, 'App\\CStudyMaterial', NULL, NULL),
(546, 87, 274, 'App\\CStudyMaterial', NULL, NULL),
(547, 86, 275, 'App\\CStudyMaterial', NULL, NULL),
(548, 87, 275, 'App\\CStudyMaterial', NULL, NULL),
(549, 86, 276, 'App\\CStudyMaterial', NULL, NULL),
(550, 87, 276, 'App\\CStudyMaterial', NULL, NULL),
(551, 86, 277, 'App\\CStudyMaterial', NULL, NULL),
(552, 87, 277, 'App\\CStudyMaterial', NULL, NULL),
(553, 86, 278, 'App\\CStudyMaterial', NULL, NULL),
(554, 87, 278, 'App\\CStudyMaterial', NULL, NULL),
(555, 86, 279, 'App\\CStudyMaterial', NULL, NULL),
(556, 87, 279, 'App\\CStudyMaterial', NULL, NULL),
(557, 86, 280, 'App\\CStudyMaterial', NULL, NULL),
(558, 87, 280, 'App\\CStudyMaterial', NULL, NULL),
(559, 86, 281, 'App\\CStudyMaterial', NULL, NULL),
(560, 87, 281, 'App\\CStudyMaterial', NULL, NULL),
(561, 86, 282, 'App\\CStudyMaterial', NULL, NULL),
(562, 87, 282, 'App\\CStudyMaterial', NULL, NULL),
(563, 86, 283, 'App\\CStudyMaterial', NULL, NULL),
(564, 87, 283, 'App\\CStudyMaterial', NULL, NULL),
(565, 86, 284, 'App\\CStudyMaterial', NULL, NULL),
(566, 87, 284, 'App\\CStudyMaterial', NULL, NULL),
(567, 86, 285, 'App\\CStudyMaterial', NULL, NULL),
(568, 87, 285, 'App\\CStudyMaterial', NULL, NULL),
(569, 86, 286, 'App\\CStudyMaterial', NULL, NULL),
(570, 87, 286, 'App\\CStudyMaterial', NULL, NULL),
(571, 86, 287, 'App\\CStudyMaterial', NULL, NULL),
(572, 87, 287, 'App\\CStudyMaterial', NULL, NULL),
(573, 86, 288, 'App\\CStudyMaterial', NULL, NULL),
(574, 87, 288, 'App\\CStudyMaterial', NULL, NULL),
(575, 86, 289, 'App\\CStudyMaterial', NULL, NULL),
(576, 95, 289, 'App\\CStudyMaterial', NULL, NULL),
(577, 86, 290, 'App\\CStudyMaterial', NULL, NULL),
(578, 95, 290, 'App\\CStudyMaterial', NULL, NULL),
(579, 86, 291, 'App\\CStudyMaterial', NULL, NULL),
(580, 87, 291, 'App\\CStudyMaterial', NULL, NULL),
(581, 86, 292, 'App\\CStudyMaterial', NULL, NULL),
(582, 87, 292, 'App\\CStudyMaterial', NULL, NULL),
(583, 86, 294, 'App\\CStudyMaterial', NULL, NULL),
(584, 87, 294, 'App\\CStudyMaterial', NULL, NULL),
(585, 86, 295, 'App\\CStudyMaterial', NULL, NULL),
(586, 96, 295, 'App\\CStudyMaterial', NULL, NULL),
(587, 86, 296, 'App\\CStudyMaterial', NULL, NULL),
(588, 87, 296, 'App\\CStudyMaterial', NULL, NULL),
(589, 86, 297, 'App\\CStudyMaterial', NULL, NULL),
(590, 87, 297, 'App\\CStudyMaterial', NULL, NULL),
(591, 86, 299, 'App\\CStudyMaterial', NULL, NULL),
(592, 97, 299, 'App\\CStudyMaterial', NULL, NULL),
(593, 86, 300, 'App\\CStudyMaterial', NULL, NULL),
(594, 87, 300, 'App\\CStudyMaterial', NULL, NULL),
(595, 86, 301, 'App\\CStudyMaterial', NULL, NULL),
(596, 87, 301, 'App\\CStudyMaterial', NULL, NULL),
(597, 86, 302, 'App\\CStudyMaterial', NULL, NULL),
(598, 98, 302, 'App\\CStudyMaterial', NULL, NULL),
(599, 86, 307, 'App\\CStudyMaterial', NULL, NULL),
(600, 87, 307, 'App\\CStudyMaterial', NULL, NULL),
(601, 86, 308, 'App\\CStudyMaterial', NULL, NULL),
(602, 87, 308, 'App\\CStudyMaterial', NULL, NULL),
(603, 86, 309, 'App\\CStudyMaterial', NULL, NULL),
(604, 87, 309, 'App\\CStudyMaterial', NULL, NULL),
(605, 86, 310, 'App\\CStudyMaterial', NULL, NULL),
(606, 87, 310, 'App\\CStudyMaterial', NULL, NULL),
(607, 86, 311, 'App\\CStudyMaterial', NULL, NULL),
(608, 87, 311, 'App\\CStudyMaterial', NULL, NULL),
(609, 86, 312, 'App\\CStudyMaterial', NULL, NULL),
(610, 87, 312, 'App\\CStudyMaterial', NULL, NULL),
(611, 86, 313, 'App\\CStudyMaterial', NULL, NULL),
(612, 87, 313, 'App\\CStudyMaterial', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tag1', '2020-01-18 05:14:47', '2020-01-18 05:14:47'),
(2, 'tag2', '2020-01-18 05:14:47', '2020-01-18 05:14:47'),
(3, 'newtag', '2020-01-26 06:49:51', '2020-01-26 06:49:51'),
(4, 'asdf', '2020-01-26 06:54:32', '2020-01-26 06:54:32'),
(5, 'fsdf23_asdf', '2020-01-26 07:06:25', '2020-01-26 07:06:25'),
(6, 'fffff', '2020-01-26 10:32:44', '2020-01-26 10:32:44'),
(7, 'new', '2020-01-26 11:48:06', '2020-01-26 11:48:06'),
(8, 'asdf1', '2020-01-27 09:56:55', '2020-01-27 09:56:55'),
(9, 'asdf12', '2020-01-27 09:56:55', '2020-01-27 09:56:55'),
(10, 'asdf14', '2020-01-27 09:56:55', '2020-01-27 09:56:55'),
(11, 'asdf15', '2020-01-27 09:56:56', '2020-01-27 09:56:56'),
(12, 'asdf16', '2020-01-27 09:56:56', '2020-01-27 09:56:56'),
(13, 'asdf17', '2020-01-27 09:56:56', '2020-01-27 09:56:56'),
(14, 'asdf18', '2020-01-27 09:56:56', '2020-01-27 09:56:56'),
(15, 'asdf19', '2020-01-27 09:56:56', '2020-01-27 09:56:56'),
(16, 'asdf123', '2020-01-27 09:56:56', '2020-01-27 09:56:56'),
(17, 'asdf1242', '2020-01-27 09:56:56', '2020-01-27 09:56:56'),
(18, 'asdf1253', '2020-01-27 09:56:57', '2020-01-27 09:56:57'),
(19, 'asdf1325236236', '2020-01-27 09:56:57', '2020-01-27 09:56:57'),
(20, 'asdf132434234', '2020-01-27 09:56:57', '2020-01-27 09:56:57'),
(21, 'asdf1fwerfeferg', '2020-01-27 09:56:57', '2020-01-27 09:56:57'),
(22, 'asdf1ewfegrh', '2020-01-27 09:56:57', '2020-01-27 09:56:57'),
(23, 'ffffffffffffffffffffffffffffffffffff', '2020-01-28 16:14:23', '2020-01-28 16:14:23'),
(24, '{\"id\":1,\"name\":\"tag1\",\"created_at\":\"2020-01-18 05:14:47\",\"updated_at\":\"2020-01-18 05:14:47\",\"pivot\":{\"taggable_id\":42,\"tag_id\":1,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:10', '2020-01-28 16:41:10'),
(25, '{\"id\":2,\"name\":\"tag2\",\"created_at\":\"2020-01-18 05:14:47\",\"updated_at\":\"2020-01-18 05:14:47\",\"pivot\":{\"taggable_id\":42,\"tag_id\":2,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:10', '2020-01-28 16:41:10'),
(26, '{\"id\":4,\"name\":\"asdf\",\"created_at\":\"2020-01-26 06:54:32\",\"updated_at\":\"2020-01-26 06:54:32\",\"pivot\":{\"taggable_id\":42,\"tag_id\":4,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:10', '2020-01-28 16:41:10'),
(27, '{\"id\":8,\"name\":\"asdf1\",\"created_at\":\"2020-01-27 09:56:55\",\"updated_at\":\"2020-01-27 09:56:55\",\"pivot\":{\"taggable_id\":42,\"tag_id\":8,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:10', '2020-01-28 16:41:10'),
(28, '{\"id\":9,\"name\":\"asdf12\",\"created_at\":\"2020-01-27 09:56:55\",\"updated_at\":\"2020-01-27 09:56:55\",\"pivot\":{\"taggable_id\":42,\"tag_id\":9,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:10', '2020-01-28 16:41:10'),
(29, '{\"id\":10,\"name\":\"asdf14\",\"created_at\":\"2020-01-27 09:56:55\",\"updated_at\":\"2020-01-27 09:56:55\",\"pivot\":{\"taggable_id\":42,\"tag_id\":10,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:10', '2020-01-28 16:41:10'),
(30, '{\"id\":11,\"name\":\"asdf15\",\"created_at\":\"2020-01-27 09:56:56\",\"updated_at\":\"2020-01-27 09:56:56\",\"pivot\":{\"taggable_id\":42,\"tag_id\":11,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:10', '2020-01-28 16:41:10'),
(31, '{\"id\":12,\"name\":\"asdf16\",\"created_at\":\"2020-01-27 09:56:56\",\"updated_at\":\"2020-01-27 09:56:56\",\"pivot\":{\"taggable_id\":42,\"tag_id\":12,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:10', '2020-01-28 16:41:10'),
(32, '{\"id\":13,\"name\":\"asdf17\",\"created_at\":\"2020-01-27 09:56:56\",\"updated_at\":\"2020-01-27 09:56:56\",\"pivot\":{\"taggable_id\":42,\"tag_id\":13,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:11', '2020-01-28 16:41:11'),
(33, '{\"id\":14,\"name\":\"asdf18\",\"created_at\":\"2020-01-27 09:56:56\",\"updated_at\":\"2020-01-27 09:56:56\",\"pivot\":{\"taggable_id\":42,\"tag_id\":14,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:11', '2020-01-28 16:41:11'),
(34, '{\"id\":15,\"name\":\"asdf19\",\"created_at\":\"2020-01-27 09:56:56\",\"updated_at\":\"2020-01-27 09:56:56\",\"pivot\":{\"taggable_id\":42,\"tag_id\":15,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:11', '2020-01-28 16:41:11'),
(35, '{\"id\":16,\"name\":\"asdf123\",\"created_at\":\"2020-01-27 09:56:56\",\"updated_at\":\"2020-01-27 09:56:56\",\"pivot\":{\"taggable_id\":42,\"tag_id\":16,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:11', '2020-01-28 16:41:11'),
(36, '{\"id\":17,\"name\":\"asdf1242\",\"created_at\":\"2020-01-27 09:56:56\",\"updated_at\":\"2020-01-27 09:56:56\",\"pivot\":{\"taggable_id\":42,\"tag_id\":17,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:11', '2020-01-28 16:41:11'),
(37, '{\"id\":18,\"name\":\"asdf1253\",\"created_at\":\"2020-01-27 09:56:57\",\"updated_at\":\"2020-01-27 09:56:57\",\"pivot\":{\"taggable_id\":42,\"tag_id\":18,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:11', '2020-01-28 16:41:11'),
(38, '{\"id\":19,\"name\":\"asdf1325236236\",\"created_at\":\"2020-01-27 09:56:57\",\"updated_at\":\"2020-01-27 09:56:57\",\"pivot\":{\"taggable_id\":42,\"tag_id\":19,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:11', '2020-01-28 16:41:11'),
(39, '{\"id\":20,\"name\":\"asdf132434234\",\"created_at\":\"2020-01-27 09:56:57\",\"updated_at\":\"2020-01-27 09:56:57\",\"pivot\":{\"taggable_id\":42,\"tag_id\":20,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:11', '2020-01-28 16:41:11'),
(40, '{\"id\":21,\"name\":\"asdf1fwerfeferg\",\"created_at\":\"2020-01-27 09:56:57\",\"updated_at\":\"2020-01-27 09:56:57\",\"pivot\":{\"taggable_id\":42,\"tag_id\":21,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:11', '2020-01-28 16:41:11'),
(41, '{\"id\":22,\"name\":\"asdf1ewfegrh\",\"created_at\":\"2020-01-27 09:56:57\",\"updated_at\":\"2020-01-27 09:56:57\",\"pivot\":{\"taggable_id\":42,\"tag_id\":22,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:11', '2020-01-28 16:41:11'),
(42, '{\"id\":23,\"name\":\"ffffffffffffffffffffffffffffffffffff\",\"created_at\":\"2020-01-28 16:14:23\",\"updated_at\":\"2020-01-28 16:14:23\",\"pivot\":{\"taggable_id\":42,\"tag_id\":23,\"taggable_type\":\"App\\\\CStudyMaterial\"}}', '2020-01-28 16:41:11', '2020-01-28 16:41:11'),
(43, 'eeeeeeeeeeeeeeeeeeeeee', '2020-01-28 18:35:54', '2020-01-28 18:35:54'),
(44, 'fffffffffffff', '2020-01-28 18:36:21', '2020-01-28 18:36:21'),
(45, 'nretag', '2020-01-28 18:43:16', '2020-01-28 18:43:16'),
(46, 'sfasd', '2020-01-29 03:55:48', '2020-01-29 03:55:48'),
(47, 'shsdfg', '2020-01-29 03:58:18', '2020-01-29 03:58:18'),
(48, 'rrrr', '2020-01-29 04:10:44', '2020-01-29 04:10:44'),
(49, 'asdadds', '2020-01-29 06:24:41', '2020-01-29 06:24:41'),
(50, 'yyyyyyy', '2020-01-29 06:24:41', '2020-01-29 06:24:41'),
(51, 'with_priority', '2020-01-29 09:01:23', '2020-01-29 09:01:23'),
(52, 'hhdfhhg', '2020-01-29 10:03:36', '2020-01-29 10:03:36'),
(53, 'sdsdfasd', '2020-01-29 10:19:42', '2020-01-29 10:19:42'),
(54, 'ffddf', '2020-01-29 10:25:34', '2020-01-29 10:25:34'),
(55, 'dddddsdsf', '2020-01-29 10:32:31', '2020-01-29 10:32:31'),
(56, 'rhfhfghfdh', '2020-01-29 15:00:38', '2020-01-29 15:00:38'),
(57, 'yytreyty', '2020-01-29 15:00:58', '2020-01-29 15:00:58'),
(58, 'kk', '2020-01-29 15:39:50', '2020-01-29 15:39:50'),
(59, 'dafsdgf', '2020-01-30 13:32:47', '2020-01-30 13:32:47'),
(60, 'smyh', '2020-01-30 15:19:52', '2020-01-30 15:19:52'),
(61, 'test', '2020-01-31 09:11:50', '2020-01-31 09:11:50'),
(62, 'etrerter', '2020-01-31 10:19:57', '2020-01-31 10:19:57'),
(63, 'fffffffff', '2020-01-31 10:37:49', '2020-01-31 10:37:49'),
(64, 'vegibit', '2020-02-01 15:01:32', '2020-02-01 15:01:32'),
(65, 'skydog', '2020-02-01 15:13:33', '2020-02-01 15:13:33'),
(66, 'cisco', '2020-02-01 15:24:14', '2020-02-01 15:24:14'),
(67, 'certificate', '2020-02-01 15:24:14', '2020-02-01 15:24:14'),
(68, 'network', '2020-02-01 15:24:14', '2020-02-01 15:24:14'),
(69, 'php', '2020-02-01 15:55:25', '2020-02-01 15:55:25'),
(70, 'active_directory', '2020-02-01 16:35:15', '2020-02-01 16:35:15'),
(71, 'microsoft', '2020-02-01 16:36:35', '2020-02-01 16:36:35'),
(72, 'install', '2020-02-01 20:02:09', '2020-02-01 20:02:09'),
(73, 'hyper-v', '2020-02-01 20:22:57', '2020-02-01 20:22:57'),
(74, 'processor', '2020-02-01 21:02:32', '2020-02-01 21:02:32'),
(75, 'searchwindowsserver', '2020-02-02 12:30:39', '2020-02-02 12:30:39'),
(76, 'codeigniter', '2020-02-02 15:47:07', '2020-02-02 15:47:07'),
(77, 'eclipse', '2020-02-02 15:54:50', '2020-02-02 15:54:50'),
(78, 'array', '2020-02-02 18:46:13', '2020-02-02 18:46:13'),
(79, 'string', '2020-02-03 15:10:33', '2020-02-03 15:10:33'),
(80, 'twitter', '2020-02-03 15:31:19', '2020-02-03 15:31:19'),
(81, 'bootstrap', '2020-02-04 21:44:02', '2020-02-04 21:44:02'),
(82, 'laravel', '2020-02-04 21:48:00', '2020-02-04 21:48:00'),
(83, 'wamp', '2020-02-04 21:48:00', '2020-02-04 21:48:00'),
(84, 'eloquent', '2020-02-04 22:03:26', '2020-02-04 22:03:26'),
(85, 'stateless', '2020-02-05 12:15:34', '2020-02-05 12:15:34'),
(86, 'youtube', '2020-02-05 15:13:02', '2020-02-05 15:13:02'),
(87, 'ben_eater', '2020-02-05 15:13:02', '2020-02-05 15:13:02'),
(88, 'ascii', '2020-02-05 15:13:49', '2020-02-05 15:13:49'),
(89, 'javascript', '2020-02-06 13:55:21', '2020-02-06 13:55:21'),
(90, 'math', '2020-02-06 14:16:42', '2020-02-06 14:16:42'),
(91, 'jquery', '2020-02-06 14:49:59', '2020-02-06 14:49:59'),
(92, 'composer', '2020-02-07 23:03:42', '2020-02-07 23:03:42'),
(93, 'mysql', '2020-02-08 16:03:57', '2020-02-08 16:03:57'),
(94, 'wordpress', '2020-02-08 18:27:16', '2020-02-08 18:27:16'),
(95, 'joe_smith', '2020-02-18 13:57:55', '2020-02-18 13:57:55'),
(96, 'eevblog', '2020-02-18 17:26:14', '2020-02-18 17:26:14'),
(97, 'styropyro', '2020-02-18 20:30:56', '2020-02-18 20:30:56'),
(98, 'coding_tech', '2020-02-18 22:44:04', '2020-02-18 22:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `to_doables`
--

CREATE TABLE `to_doables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `to_do_id` bigint(20) NOT NULL,
  `to_doable_id` bigint(20) NOT NULL,
  `to_doable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `to_doables`
--

INSERT INTO `to_doables` (`id`, `to_do_id`, `to_doable_id`, `to_doable_type`) VALUES
(2, 1, 61, 'App\\CStudyMaterial'),
(3, 2, 61, 'App\\CStudyMaterial'),
(4, 3, 61, 'App\\CStudyMaterial'),
(7, 6, 62, 'App\\CStudyMaterial'),
(9, 8, 62, 'App\\CStudyMaterial'),
(10, 9, 62, 'App\\CStudyMaterial'),
(11, 10, 62, 'App\\CStudyMaterial'),
(12, 11, 60, 'App\\CStudyMaterial'),
(13, 12, 63, 'App\\CStudyMaterial'),
(14, 13, 70, 'App\\CStudyMaterial'),
(15, 14, 74, 'App\\CStudyMaterial'),
(16, 15, 74, 'App\\CStudyMaterial'),
(17, 16, 75, 'App\\CStudyMaterial'),
(18, 17, 75, 'App\\CStudyMaterial'),
(19, 18, 75, 'App\\CStudyMaterial'),
(20, 19, 75, 'App\\CStudyMaterial'),
(21, 20, 75, 'App\\CStudyMaterial'),
(22, 21, 75, 'App\\CStudyMaterial'),
(23, 22, 75, 'App\\CStudyMaterial'),
(24, 23, 75, 'App\\CStudyMaterial'),
(25, 24, 75, 'App\\CStudyMaterial'),
(26, 25, 75, 'App\\CStudyMaterial'),
(27, 26, 75, 'App\\CStudyMaterial'),
(28, 27, 75, 'App\\CStudyMaterial'),
(29, 28, 75, 'App\\CStudyMaterial'),
(30, 29, 75, 'App\\CStudyMaterial'),
(31, 30, 75, 'App\\CStudyMaterial'),
(32, 31, 75, 'App\\CStudyMaterial'),
(33, 32, 75, 'App\\CStudyMaterial'),
(34, 33, 75, 'App\\CStudyMaterial'),
(35, 34, 75, 'App\\CStudyMaterial'),
(36, 35, 75, 'App\\CStudyMaterial'),
(37, 36, 75, 'App\\CStudyMaterial'),
(38, 37, 75, 'App\\CStudyMaterial'),
(39, 38, 75, 'App\\CStudyMaterial'),
(40, 39, 75, 'App\\CStudyMaterial'),
(41, 40, 75, 'App\\CStudyMaterial'),
(42, 41, 75, 'App\\CStudyMaterial'),
(43, 42, 75, 'App\\CStudyMaterial'),
(44, 43, 78, 'App\\CStudyMaterial'),
(45, 44, 79, 'App\\CStudyMaterial'),
(46, 45, 80, 'App\\CStudyMaterial'),
(47, 46, 82, 'App\\CStudyMaterial'),
(48, 47, 84, 'App\\CStudyMaterial'),
(49, 48, 84, 'App\\CStudyMaterial'),
(50, 49, 84, 'App\\CStudyMaterial'),
(51, 50, 84, 'App\\CStudyMaterial'),
(52, 51, 84, 'App\\CStudyMaterial'),
(53, 52, 84, 'App\\CStudyMaterial'),
(54, 53, 84, 'App\\CStudyMaterial'),
(55, 54, 85, 'App\\CStudyMaterial'),
(56, 55, 86, 'App\\CStudyMaterial'),
(57, 56, 85, 'App\\CStudyMaterial'),
(58, 57, 87, 'App\\CStudyMaterial'),
(59, 58, 85, 'App\\CStudyMaterial'),
(60, 59, 88, 'App\\CStudyMaterial'),
(61, 60, 88, 'App\\CStudyMaterial'),
(62, 61, 88, 'App\\CStudyMaterial'),
(63, 62, 88, 'App\\CStudyMaterial'),
(64, 63, 88, 'App\\CStudyMaterial'),
(65, 64, 88, 'App\\CStudyMaterial'),
(66, 65, 88, 'App\\CStudyMaterial'),
(67, 66, 88, 'App\\CStudyMaterial'),
(68, 67, 88, 'App\\CStudyMaterial'),
(69, 68, 88, 'App\\CStudyMaterial'),
(70, 69, 88, 'App\\CStudyMaterial'),
(71, 70, 89, 'App\\CStudyMaterial'),
(72, 71, 91, 'App\\CStudyMaterial'),
(73, 72, 100, 'App\\CStudyMaterial'),
(74, 73, 100, 'App\\CStudyMaterial'),
(75, 74, 100, 'App\\CStudyMaterial'),
(76, 75, 100, 'App\\CStudyMaterial'),
(77, 76, 100, 'App\\CStudyMaterial'),
(78, 77, 100, 'App\\CStudyMaterial'),
(79, 78, 100, 'App\\CStudyMaterial'),
(80, 79, 101, 'App\\CStudyMaterial'),
(81, 80, 102, 'App\\CStudyMaterial'),
(82, 81, 103, 'App\\CStudyMaterial'),
(83, 82, 104, 'App\\CStudyMaterial'),
(84, 83, 105, 'App\\CStudyMaterial'),
(85, 84, 109, 'App\\CStudyMaterial'),
(86, 85, 111, 'App\\CStudyMaterial'),
(87, 86, 111, 'App\\CStudyMaterial'),
(88, 87, 111, 'App\\CStudyMaterial'),
(89, 88, 119, 'App\\CStudyMaterial'),
(90, 89, 119, 'App\\CStudyMaterial'),
(91, 90, 120, 'App\\CStudyMaterial'),
(92, 91, 122, 'App\\CStudyMaterial'),
(93, 92, 122, 'App\\CStudyMaterial'),
(94, 93, 125, 'App\\CStudyMaterial'),
(95, 94, 127, 'App\\CStudyMaterial'),
(96, 95, 127, 'App\\CStudyMaterial'),
(97, 96, 138, 'App\\CStudyMaterial'),
(98, 97, 138, 'App\\CStudyMaterial'),
(99, 98, 140, 'App\\CStudyMaterial'),
(100, 99, 140, 'App\\CStudyMaterial'),
(101, 100, 140, 'App\\CStudyMaterial'),
(102, 101, 141, 'App\\CStudyMaterial'),
(103, 102, 141, 'App\\CStudyMaterial'),
(104, 103, 142, 'App\\CStudyMaterial'),
(105, 104, 144, 'App\\CStudyMaterial'),
(106, 105, 144, 'App\\CStudyMaterial'),
(107, 106, 144, 'App\\CStudyMaterial'),
(108, 107, 144, 'App\\CStudyMaterial'),
(109, 108, 144, 'App\\CStudyMaterial'),
(110, 109, 153, 'App\\CStudyMaterial'),
(111, 110, 163, 'App\\CStudyMaterial'),
(112, 111, 163, 'App\\CStudyMaterial'),
(113, 112, 164, 'App\\CStudyMaterial'),
(114, 113, 171, 'App\\CStudyMaterial'),
(115, 114, 174, 'App\\CStudyMaterial'),
(116, 115, 175, 'App\\CStudyMaterial'),
(117, 116, 175, 'App\\CStudyMaterial'),
(118, 117, 175, 'App\\CStudyMaterial'),
(119, 118, 175, 'App\\CStudyMaterial'),
(120, 119, 175, 'App\\CStudyMaterial'),
(121, 120, 175, 'App\\CStudyMaterial'),
(122, 121, 175, 'App\\CStudyMaterial'),
(123, 122, 175, 'App\\CStudyMaterial'),
(124, 123, 175, 'App\\CStudyMaterial'),
(125, 124, 175, 'App\\CStudyMaterial'),
(126, 125, 175, 'App\\CStudyMaterial'),
(127, 126, 175, 'App\\CStudyMaterial'),
(128, 127, 175, 'App\\CStudyMaterial'),
(129, 128, 175, 'App\\CStudyMaterial'),
(130, 129, 175, 'App\\CStudyMaterial'),
(131, 130, 175, 'App\\CStudyMaterial'),
(132, 131, 175, 'App\\CStudyMaterial'),
(133, 132, 175, 'App\\CStudyMaterial'),
(134, 133, 175, 'App\\CStudyMaterial'),
(135, 134, 175, 'App\\CStudyMaterial'),
(136, 135, 175, 'App\\CStudyMaterial'),
(137, 136, 175, 'App\\CStudyMaterial'),
(138, 137, 175, 'App\\CStudyMaterial'),
(139, 138, 175, 'App\\CStudyMaterial'),
(140, 139, 175, 'App\\CStudyMaterial'),
(141, 140, 175, 'App\\CStudyMaterial'),
(142, 141, 175, 'App\\CStudyMaterial'),
(143, 142, 194, 'App\\CStudyMaterial'),
(144, 143, 214, 'App\\CStudyMaterial'),
(145, 144, 217, 'App\\CStudyMaterial'),
(146, 145, 218, 'App\\CStudyMaterial'),
(147, 146, 219, 'App\\CStudyMaterial'),
(148, 147, 220, 'App\\CStudyMaterial'),
(149, 148, 219, 'App\\CStudyMaterial'),
(150, 149, 221, 'App\\CStudyMaterial'),
(151, 150, 223, 'App\\CStudyMaterial'),
(152, 151, 223, 'App\\CStudyMaterial'),
(153, 152, 237, 'App\\CStudyMaterial'),
(154, 153, 237, 'App\\CStudyMaterial'),
(155, 154, 248, 'App\\CStudyMaterial'),
(156, 155, 251, 'App\\CStudyMaterial'),
(157, 156, 251, 'App\\CStudyMaterial'),
(158, 157, 303, 'App\\CStudyMaterial');

-- --------------------------------------------------------

--
-- Table structure for table `to_dos`
--

CREATE TABLE `to_dos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `to_dos`
--

INSERT INTO `to_dos` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'first', '2020-01-30 16:06:47', '2020-01-30 15:18:52'),
(2, 'hrjtrjj', '2020-01-30 15:18:52', '2020-01-30 15:18:52'),
(3, 'yyyyyyyyyyyyyyyyyy', '2020-01-30 15:18:52', '2020-01-30 15:18:52'),
(6, 'newooo', '2020-01-30 16:21:43', '2020-01-30 16:46:03'),
(8, 'eeeeeeeeeeeee', '2020-01-30 16:46:03', '2020-01-30 16:46:03'),
(9, 'tttttttttt', '2020-01-30 16:46:03', '2020-01-30 16:46:03'),
(10, 'etetefef', '2020-01-30 16:46:04', '2020-01-30 16:46:04'),
(11, 'll', '2020-01-30 16:52:01', '2020-01-30 16:52:01'),
(12, 'create child', '2020-01-31 09:11:50', '2020-01-31 09:11:50'),
(13, 'fsdgsdf', '2020-01-31 10:37:49', '2020-01-31 10:37:49'),
(14, 'Layer 2 Traffic', '2020-02-01 15:22:00', '2020-02-01 15:42:32'),
(15, 'Layer 3 Traffic', '2020-02-01 15:22:00', '2020-02-01 15:42:33'),
(16, 'OSI Model?', '2020-02-01 15:41:34', '2020-02-01 15:41:34'),
(17, 'TCP/IP', '2020-02-01 15:41:34', '2020-02-01 15:41:34'),
(18, 'IP address format', '2020-02-01 15:41:34', '2020-02-01 15:41:34'),
(19, 'public and private addressing', '2020-02-01 15:41:34', '2020-02-01 15:41:34'),
(20, 'address classes', '2020-02-01 15:41:34', '2020-02-01 15:41:34'),
(21, 'TCP/IP: TCP and UDP Communication', '2020-02-01 15:41:34', '2020-02-01 15:41:34'),
(22, 'TCP windowing, sequence numbers, and acknowledgements', '2020-02-01 15:41:35', '2020-02-01 15:41:35'),
(23, 'architecture of a MAC address', '2020-02-01 15:41:35', '2020-02-01 15:41:35'),
(24, 'UTP and Fiber Optics', '2020-02-01 15:41:35', '2020-02-01 15:41:35'),
(25, 'straight-through vs. crossover cables', '2020-02-01 15:41:35', '2020-02-01 15:41:35'),
(26, 'an end-to-end picture of cabling in a corporate environment', '2020-02-01 15:41:35', '2020-02-01 15:41:35'),
(27, 'CSMA/CD', '2020-02-01 15:41:35', '2020-02-01 15:41:35'),
(28, 'Understanding LAN Switches', '2020-02-01 15:41:35', '2020-02-01 15:41:35'),
(29, 'Cisco Switch IOS', '2020-02-01 15:41:35', '2020-02-01 15:41:35'),
(30, 'Configuring Switch Security(Cisco)', '2020-02-01 15:41:35', '2020-02-01 15:41:35'),
(31, 'Optimizing and Troubleshooting Switches', '2020-02-01 15:41:35', '2020-02-01 15:41:35'),
(32, 'Understanding Wireless Networking', '2020-02-01 15:41:35', '2020-02-01 15:41:35'),
(33, 'Wireless Security and Implementation', '2020-02-01 15:41:36', '2020-02-01 15:41:36'),
(34, 'IP subnetting', '2020-02-01 15:41:36', '2020-02-01 15:41:36'),
(35, 'SDM, CCP, and DHCP Server Configuration', '2020-02-01 15:41:36', '2020-02-01 15:41:36'),
(36, 'Implementing Static Routing', '2020-02-01 15:41:36', '2020-02-01 15:41:36'),
(37, 'Implementing Dynamic Routing with RIP', '2020-02-01 15:41:36', '2020-02-01 15:41:36'),
(38, 'Routing: Internet Access with NAT and PAT', '2020-02-01 15:41:36', '2020-02-01 15:41:36'),
(39, 'Routing: WAN Connectivity', '2020-02-01 15:41:36', '2020-02-01 15:41:36'),
(40, 'Management and Security: Telnet, SSH, and CDP', '2020-02-01 15:41:36', '2020-02-01 15:41:36'),
(41, 'Management and Security: File Management', '2020-02-01 15:41:36', '2020-02-01 15:41:36'),
(42, 'GNS3 Lab Emulation Software', '2020-02-01 15:41:36', '2020-02-01 15:41:36'),
(43, 'phpinfo() - could be another topic', '2020-02-01 16:10:11', '2020-02-01 16:10:11'),
(44, 'try out  superglobal variables', '2020-02-01 16:17:35', '2020-02-01 16:17:35'),
(45, 'Bitwise Operators', '2020-02-01 16:28:26', '2020-02-01 16:28:26'),
(46, 'Install Server Manager', '2020-02-01 20:02:09', '2020-02-02 12:58:05'),
(47, 'Live migration of virtual machines from one host to another', '2020-02-01 20:25:26', '2020-02-01 20:25:26'),
(48, 'Hyper-V Replica', '2020-02-01 20:25:26', '2020-02-01 20:25:26'),
(49, 'Virtual Fiber Channel', '2020-02-01 20:25:26', '2020-02-01 20:25:26'),
(50, 'SR-IOV networking', '2020-02-01 20:25:26', '2020-02-01 20:25:26'),
(51, 'Shared .VHDX', '2020-02-01 20:25:27', '2020-02-01 20:25:27'),
(52, 'Quick Create and the VM Gallery', '2020-02-01 20:25:27', '2020-02-01 20:25:27'),
(53, 'Default network (NAT switch)', '2020-02-01 20:25:27', '2020-02-01 20:25:27'),
(54, 'check if 64-bit Processor with Second Level Address Translation (SLAT)', '2020-02-01 20:41:23', '2020-02-02 12:57:37'),
(55, 'check other info about processor', '2020-02-01 20:43:59', '2020-02-01 20:43:59'),
(56, 'check if CPU support for VM Monitor Mode Extension (VT-c on Intel CPUs). - it does', '2020-02-01 20:48:44', '2020-02-02 12:57:37'),
(57, 'check my processor specifications', '2020-02-01 21:02:32', '2020-02-01 21:02:32'),
(58, 'end series whenever ill use hyper-v', '2020-02-02 08:23:20', '2020-02-02 12:57:37'),
(59, 'Composer - Php Dependency Manager', '2020-02-02 08:28:17', '2020-02-02 10:39:28'),
(60, 'Docker Desktop', '2020-02-02 08:28:18', '2020-02-02 10:39:28'),
(61, 'Firebird 3.0.4.33054 (x64)', '2020-02-02 08:28:18', '2020-02-02 10:39:28'),
(62, 'Git version 2.24.1.2', '2020-02-02 08:28:18', '2020-02-02 10:39:28'),
(63, 'Google Chrome', '2020-02-02 08:28:18', '2020-02-02 10:39:28'),
(64, 'Microsoft Visual C++ 2015-2019 Redistributable (x64)', '2020-02-02 08:28:18', '2020-02-02 10:39:28'),
(65, 'MySQL Workbench 8.0 CE', '2020-02-02 08:28:18', '2020-02-02 10:39:28'),
(66, 'NetBeans IDE 8.0.2', '2020-02-02 08:28:18', '2020-02-02 10:39:29'),
(67, 'Node.js', '2020-02-02 08:28:18', '2020-02-02 10:39:29'),
(68, 'Oracle VM VirtualBox 5.2.30', '2020-02-02 08:28:18', '2020-02-02 10:39:29'),
(69, 'Vagrant', '2020-02-02 08:28:18', '2020-02-02 10:39:29'),
(70, 'php thread safe and non safe dif', '2020-02-02 08:30:53', '2020-02-02 08:30:53'),
(71, 'Windows 10 SDK - what is it?', '2020-02-02 08:37:10', '2020-02-02 08:37:10'),
(72, 'Red Hat Directory Server, Apache Directory and OpenLDAP', '2020-02-02 12:30:05', '2020-02-02 12:30:39'),
(73, 'Eclipse plug-ins', '2020-02-02 12:30:05', '2020-02-02 12:30:40'),
(74, 'Make the right move with the Active Directory Migration Tool', '2020-02-02 12:30:05', '2020-02-02 12:30:40'),
(75, 'Automate Active Directory jobs with PowerShell scripts', '2020-02-02 12:30:05', '2020-02-02 12:30:40'),
(76, 'Debug an Active Directory domain join failure on Windows Server', '2020-02-02 12:30:05', '2020-02-02 12:30:40'),
(77, 'How to use Azure Active Directory differently than classic AD', '2020-02-02 12:30:05', '2020-02-02 12:30:40'),
(78, 'Organize Active Directory with these strategies', '2020-02-02 12:30:05', '2020-02-02 12:30:40'),
(79, 'make sense out of this topic some  day', '2020-02-02 12:55:17', '2020-02-02 12:55:17'),
(80, 'try on VM', '2020-02-02 12:56:49', '2020-02-02 12:56:49'),
(81, 'try once VM ready', '2020-02-02 13:01:54', '2020-02-02 13:01:54'),
(82, 'LDAP-HOWTO', '2020-02-02 13:28:19', '2020-02-02 13:29:44'),
(83, 'start new group(series)', '2020-02-02 13:29:24', '2020-02-02 13:29:24'),
(84, 'no routes annotations or route file?', '2020-02-02 15:47:07', '2020-02-02 15:47:07'),
(85, 'download and install eclipse', '2020-02-02 15:54:50', '2020-02-02 17:34:16'),
(86, 'conf and run debug', '2020-02-02 16:21:48', '2020-02-02 17:34:16'),
(87, 'try examples', '2020-02-02 16:21:48', '2020-02-02 17:34:16'),
(88, 'Edgerank', '2020-02-02 18:36:01', '2020-02-02 18:36:01'),
(89, 'organic search engine rankings', '2020-02-02 18:36:01', '2020-02-02 18:36:01'),
(90, 'array_merge() merge conflict?', '2020-02-02 18:46:13', '2020-02-02 19:08:35'),
(91, 'str_replace ( mixed $search , mixed $replace , mixed $subject [, int &$count ] ) : mixed what if count is passed with a value', '2020-02-03 15:10:33', '2020-02-03 15:13:59'),
(92, 'fix visual bug, when to do list item is too long', '2020-02-03 15:13:59', '2020-02-03 15:13:59'),
(93, 'if there is nothing else to read..', '2020-02-03 15:35:07', '2020-02-03 15:35:07'),
(94, 'try', '2020-02-03 15:44:06', '2020-02-03 17:01:02'),
(95, 'find files that web service can read/execute/write', '2020-02-03 17:01:02', '2020-02-03 17:01:02'),
(96, 'new ReflectionClass();//read and try', '2020-02-04 22:03:26', '2020-02-04 22:03:26'),
(97, 'Event::listen(\'illuminate.query\', function($sql) { 	var_dump($sql); }); //try', '2020-02-04 22:03:26', '2020-02-04 22:03:26'),
(98, 'App::bind or just write a class', '2020-02-04 22:21:32', '2020-02-04 22:21:32'),
(99, 'read more about dependency injection and container', '2020-02-04 22:21:32', '2020-02-04 22:21:32'),
(100, '$app = app(); 	print_r($app); //try', '2020-02-04 22:21:32', '2020-02-04 22:21:32'),
(101, 'check out laravel\'s build in interfaces/contracts', '2020-02-04 23:44:09', '2020-02-04 23:45:16'),
(102, 'fix spacing/tabing in index html', '2020-02-04 23:45:16', '2020-02-04 23:45:16'),
(103, 'try  Jeffrey Way’s Generator tool', '2020-02-05 00:03:04', '2020-02-05 00:03:04'),
(104, 'where are IoC objects registred in the first place?', '2020-02-05 00:41:37', '2020-02-05 00:43:25'),
(105, 'when facecade accessed multiple times is object intiated multiple times? (is it singleton?) - no', '2020-02-05 00:41:37', '2020-02-05 00:43:25'),
(106, 'Maintains ability to Test Code. Integration with Mockery is built into the Facade class to allow for quick and easy object mocking.', '2020-02-05 00:41:37', '2020-02-05 00:43:25'),
(107, 'are $app[‘router’]->get() and App::make(\'router\')->get() and Route::get();is the same? - try', '2020-02-05 00:41:37', '2020-02-05 00:43:25'),
(108, 'Roll Your Own Facade(try to make laravel\'s interface and make facade out of it)', '2020-02-05 00:43:25', '2020-02-05 00:43:25'),
(109, 'try', '2020-02-05 13:44:28', '2020-02-05 13:44:28'),
(110, 'ARP - address resolution protocol in detail', '2020-02-05 16:31:33', '2020-02-05 17:56:30'),
(111, 'MAC address ip/24', '2020-02-05 16:31:33', '2020-02-05 17:56:30'),
(112, 'install wireshark', '2020-02-05 16:42:00', '2020-02-05 18:36:43'),
(113, 'Define Rules in the Model', '2020-02-05 19:12:17', '2020-02-05 19:12:17'),
(114, 'Returning a Value; $array_map - try', '2020-02-06 10:17:32', '2020-02-06 10:17:41'),
(115, 'file_exists();', '2020-02-06 10:45:11', '2020-02-06 10:45:11'),
(116, 'is_file();', '2020-02-06 10:45:11', '2020-02-06 10:45:11'),
(117, 'is_readable();', '2020-02-06 10:45:11', '2020-02-06 10:45:11'),
(118, 'is_writable();', '2020-02-06 10:45:11', '2020-02-06 10:45:11'),
(119, 'filesize();', '2020-02-06 10:45:11', '2020-02-06 10:45:11'),
(120, 'fopen();', '2020-02-06 10:45:11', '2020-02-06 10:45:11'),
(121, 'ftell();', '2020-02-06 10:45:11', '2020-02-06 10:45:11'),
(122, 'fwrite();/fputs();', '2020-02-06 10:45:11', '2020-02-06 10:45:11'),
(123, 'fclose();', '2020-02-06 10:45:12', '2020-02-06 10:45:12'),
(124, 'fread();', '2020-02-06 10:45:12', '2020-02-06 10:45:12'),
(125, 'file_get_contents();', '2020-02-06 10:45:12', '2020-02-06 10:45:12'),
(126, 'Exclusively lock/lock types', '2020-02-06 10:45:12', '2020-02-06 10:45:12'),
(127, 'file();', '2020-02-06 10:45:12', '2020-02-06 10:45:12'),
(128, 'glob()', '2020-02-06 10:45:12', '2020-02-06 10:45:12'),
(129, 'basename();', '2020-02-06 10:45:12', '2020-02-06 10:45:12'),
(130, 'dirname();', '2020-02-06 10:45:12', '2020-02-06 10:45:12'),
(131, 'pathinfo();', '2020-02-06 10:45:12', '2020-02-06 10:45:12'),
(132, 'realpath();', '2020-02-06 10:45:13', '2020-02-06 10:45:13'),
(133, 'unlink();', '2020-02-06 10:45:13', '2020-02-06 10:45:13'),
(134, 'rename();', '2020-02-06 10:45:13', '2020-02-06 10:45:13'),
(135, 'copy();', '2020-02-06 10:45:13', '2020-02-06 10:45:13'),
(136, 'filemtime();', '2020-02-06 10:45:13', '2020-02-06 10:45:13'),
(137, 'is_dir();', '2020-02-06 10:45:13', '2020-02-06 10:45:13'),
(138, 'mkdir();', '2020-02-06 10:45:13', '2020-02-06 10:45:13'),
(139, 'opendir();', '2020-02-06 10:45:13', '2020-02-06 10:45:13'),
(140, 'chmode()', '2020-02-06 10:45:13', '2020-02-06 10:45:13'),
(141, 'make File class, make lib dir, load in composer.json, use it in Highlight Your Code page', '2020-02-06 10:45:13', '2020-02-06 10:45:13'),
(142, 'D3.js could be a map for materials', '2020-02-06 14:46:12', '2020-02-06 14:46:12'),
(143, 'try', '2020-02-07 23:03:42', '2020-02-07 23:03:42'),
(144, 'PHP 5.3 - namespaces rly?..', '2020-02-07 23:49:48', '2020-02-07 23:49:48'),
(145, '\"files\": [             \"app/Helper.php\"         ], delete from webapp', '2020-02-08 01:03:36', '2020-02-08 01:03:36'),
(146, 'When ill make filter functionality use this pattern ether create own or use one in github', '2020-02-08 01:35:40', '2020-02-08 01:55:47'),
(147, 'is Criteria needed?', '2020-02-08 01:36:42', '2020-02-08 01:36:42'),
(148, 'namespace App\\Filters; do i still need that?', '2020-02-08 01:55:47', '2020-02-08 01:55:47'),
(149, 'try every single example', '2020-02-08 01:56:45', '2020-02-08 01:56:45'),
(150, 'By default it is set to file, however any of the following are supported: database, apc, memcached, redis, and array.', '2020-02-08 03:04:43', '2020-02-08 03:04:43'),
(151, 'try examples', '2020-02-08 03:04:43', '2020-02-08 03:04:43'),
(152, 'try group_concat', '2020-02-08 18:12:04', '2020-02-08 18:12:04'),
(153, 'try having', '2020-02-08 18:12:05', '2020-02-08 18:12:05'),
(154, 'practice', '2020-02-08 19:24:20', '2020-02-08 19:24:20'),
(155, 'diode', '2020-02-15 17:31:18', '2020-02-15 17:55:55'),
(156, 'diode types', '2020-02-15 17:55:55', '2020-02-15 17:55:55'),
(157, 'must try', '2020-02-18 23:14:10', '2020-02-18 23:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `avatar_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `avatar_path`) VALUES
(1, 'arturas', 'arturas.zilinskas.asdf@gmail.com', NULL, '$2y$10$Zd9/DtFMu4Xhc/NBxB/kq.Y49tk2Z7DxiI3f291zWGIcjjhfBTWU2', NULL, '2020-01-13 16:00:27', '2020-01-23 05:21:22', NULL, NULL, NULL, NULL, 'storage/avatars/UZh5wSvA5F5SmfhUtiLZAMRZcT9QIGZJAptVCLgc.jpeg'),
(2, 'arturas2', 'arturas.zilinskas.asdf2@gmail.com', NULL, '$2y$10$K4h4hcfE.IG69X.8j5BWpubJF0HrxYB6uIK9Oc9W4ufiJyupX3uK2', NULL, '2020-01-15 23:40:18', '2020-01-15 23:40:18', NULL, NULL, NULL, NULL, NULL),
(3, 'arturas', 'arturas.zilinskas.asdf1@gmail.com', NULL, '$2y$10$yFU/juIUhDP1GAKUxMHUheSwNCaA.tiv5PS8w6nvtxFsefeeIc7w.', NULL, '2020-01-21 21:22:42', '2020-01-21 21:22:42', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_index` (`user_id`),
  ADD KEY `activities_subject_id_index` (`subject_id`);

--
-- Indexes for table `angleslash_posts`
--
ALTER TABLE `angleslash_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `angleslash_posts_sub_id_foreign` (`sub_id`),
  ADD KEY `angleslash_posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `angleslash_post_angleslash_tag`
--
ALTER TABLE `angleslash_post_angleslash_tag`
  ADD KEY `angleslash_post_angleslash_tag_angleslash_post_id_index` (`angleslash_post_id`),
  ADD KEY `angleslash_post_angleslash_tag_angleslash_tag_id_index` (`angleslash_tag_id`);

--
-- Indexes for table `angleslash_post_votes`
--
ALTER TABLE `angleslash_post_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `angleslash_post_votes_user_id_foreign` (`user_id`),
  ADD KEY `angleslash_post_votes_post_id_foreign` (`post_id`);

--
-- Indexes for table `angleslash_subs`
--
ALTER TABLE `angleslash_subs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `angleslash_subs_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `angleslash_tags`
--
ALTER TABLE `angleslash_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_forum_channels`
--
ALTER TABLE `c_forum_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_forum_replies`
--
ALTER TABLE `c_forum_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_forum_threads`
--
ALTER TABLE `c_forum_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_forum_thread_subscriptions`
--
ALTER TABLE `c_forum_thread_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `c_forum_thread_subscriptions_user_id_c_forum_thread_id_unique` (`user_id`,`c_forum_thread_id`),
  ADD KEY `c_forum_thread_subscriptions_c_forum_thread_id_foreign` (`c_forum_thread_id`);

--
-- Indexes for table `c_study_materials`
--
ALTER TABLE `c_study_materials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `c_study_materials_reference_unique` (`reference`(768));

--
-- Indexes for table `c_study_test`
--
ALTER TABLE `c_study_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorites_user_id_favorited_id_favorited_type_unique` (`user_id`,`favorited_id`,`favorited_type`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learn_topics`
--
ALTER TABLE `learn_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `to_doables`
--
ALTER TABLE `to_doables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `to_dos`
--
ALTER TABLE `to_dos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `angleslash_posts`
--
ALTER TABLE `angleslash_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `angleslash_post_votes`
--
ALTER TABLE `angleslash_post_votes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `angleslash_subs`
--
ALTER TABLE `angleslash_subs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `angleslash_tags`
--
ALTER TABLE `angleslash_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components`
--
ALTER TABLE `components`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_forum_channels`
--
ALTER TABLE `c_forum_channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `c_forum_replies`
--
ALTER TABLE `c_forum_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `c_forum_threads`
--
ALTER TABLE `c_forum_threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `c_forum_thread_subscriptions`
--
ALTER TABLE `c_forum_thread_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_study_materials`
--
ALTER TABLE `c_study_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `c_study_test`
--
ALTER TABLE `c_study_test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `learn_topics`
--
ALTER TABLE `learn_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `to_doables`
--
ALTER TABLE `to_doables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `to_dos`
--
ALTER TABLE `to_dos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `angleslash_posts`
--
ALTER TABLE `angleslash_posts`
  ADD CONSTRAINT `angleslash_posts_sub_id_foreign` FOREIGN KEY (`sub_id`) REFERENCES `angleslash_subs` (`id`),
  ADD CONSTRAINT `angleslash_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `angleslash_post_votes`
--
ALTER TABLE `angleslash_post_votes`
  ADD CONSTRAINT `angleslash_post_votes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `angleslash_posts` (`id`),
  ADD CONSTRAINT `angleslash_post_votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `angleslash_subs`
--
ALTER TABLE `angleslash_subs`
  ADD CONSTRAINT `angleslash_subs_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `c_forum_thread_subscriptions`
--
ALTER TABLE `c_forum_thread_subscriptions`
  ADD CONSTRAINT `c_forum_thread_subscriptions_c_forum_thread_id_foreign` FOREIGN KEY (`c_forum_thread_id`) REFERENCES `c_forum_threads` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
