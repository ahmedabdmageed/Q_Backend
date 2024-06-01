-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 15, 2024 at 12:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empty_shortzz`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '4PfWrCtPLoYGDInQgDflRBRsLKwUxdTQwVUwwayx', NULL, 'http://localhost', 1, 0, 0, '2021-03-22 02:05:21', '2021-03-22 02:05:21'),
(2, NULL, 'Laravel Password Grant Client', 'gZdczTJXtFsOwKGX02sLHU6yjSPEjYADq0XOzsWC', 'users', 'http://localhost', 0, 1, 0, '2021-03-22 02:05:21', '2021-03-22 02:05:21'),
(3, 1, 'Bubbletok', 'p9UDAOjQNqwLNIIAWd9fl1itLPKbHY9JTAwnxXsz', NULL, 'http://127.0.0.1:8000/', 0, 0, 0, '2021-03-22 02:05:39', '2021-03-22 02:05:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-22 02:05:21', '2021-03-22 02:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_profile` varchar(100) NOT NULL,
  `unique_key` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_profile`, `unique_key`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@retrytech.com', 'admin@123', 'profile_638.jpeg', 'dev123', '2021-03-16 06:16:45', '2021-05-25 05:33:29'),
(2, 'tester', 'testadmin@retrytech.com', 'tester', 'profile_638.jpeg', 'dev123', '2021-03-16 06:16:45', '2021-05-25 05:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookmark`
--

CREATE TABLE `tbl_bookmark` (
  `bookmark_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coin_plan`
--

CREATE TABLE `tbl_coin_plan` (
  `coin_plan_id` int(11) NOT NULL,
  `coin_plan_name` varchar(100) NOT NULL,
  `coin_plan_description` text NOT NULL,
  `coin_plan_price` varchar(50) NOT NULL,
  `coin_amount` int(11) NOT NULL,
  `playstore_product_id` varchar(100) NOT NULL,
  `appstore_product_id` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coin_rate`
--

CREATE TABLE `tbl_coin_rate` (
  `coin_rate_id` int(11) NOT NULL,
  `usd_rate` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_coin_rate`
--

INSERT INTO `tbl_coin_rate` (`coin_rate_id`, `usd_rate`, `created_at`, `updated_at`) VALUES
(1, '0.0001', '2021-03-16 06:27:48', '2021-03-20 06:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_followers`
--

CREATE TABLE `tbl_followers` (
  `follower_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gifts`
--

CREATE TABLE `tbl_gifts` (
  `id` int(55) NOT NULL,
  `coin_price` int(55) DEFAULT NULL,
  `image` varchar(555) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hash_tags`
--

CREATE TABLE `tbl_hash_tags` (
  `hash_tag_id` int(11) NOT NULL,
  `hash_tag_name` varchar(100) NOT NULL,
  `move_explore` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'if move to explore to display search tab in default hash tag wise video',
  `move_to_banner` tinyint(1) NOT NULL DEFAULT 0,
  `hash_tag_profile` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_likes`
--

CREATE TABLE `tbl_likes` (
  `like_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `notification_id` int(11) NOT NULL,
  `sender_user_id` int(11) NOT NULL,
  `received_user_id` int(11) NOT NULL,
  `notification_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'send_coin',
  `item_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `id` int(55) NOT NULL,
  `privacy` text DEFAULT NULL,
  `termsofuse` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `privacy`, `termsofuse`, `created_at`, `updated_at`) VALUES
(1, '<pre style=\"font-family: Menlo, Monaco, Consolas, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 13px;=\"\" padding:=\"\" 9.5px;=\"\" margin-bottom:=\"\" 10px;=\"\" line-height:=\"\" 1.42857;=\"\" word-break:=\"\" break-all;=\"\" overflow-wrap:=\"\" break-word;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" rgb(245,=\"\" 245,=\"\" 245);=\"\" border:=\"\" 1px=\"\" solid=\"\" rgb(204,=\"\" 204,=\"\" 204);=\"\" border-radius:=\"\" 4px;\"=\"\"><h1 style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 36px; font-family: AR12; font-weight: normal; color: rgb(58, 72, 81); white-space: normal;\"><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"font-family: ALO8; font-size: 22px; border: 0px; margin: 0px; padding: 0px;\">Dating&nbsp;</span><span style=\"font-family: ALO8; font-size: 22px;\">Privacy Policy</span><br></p></h1><h1 style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 36px; font-family: AR12; font-weight: normal; color: rgb(58, 72, 81); white-space: normal;\"><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Demos follows the relevant legal requirements and takes all reasonable precautions to safeguard personal information.</span></p><ol style=\"border: 0px; margin: 20px 0px 20px 3px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">INTRODUCTION</span></li></ol><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Demos is committed to protecting your privacy and security. This policy explains how and why we use your personal data, to ensure you remain informed and in control of your information.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">You can decide not to receive communications or change how we contact you at any time. If you wish to do so please contact us by emailing&nbsp;hello@demos.co.uk, writing to 76 Vincent Square, London, SW1 2PD or 020 3878 3955 (Lines open 9.30am – 6pm, Mon – Fri).</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We will never sell your personal data, and will only ever share it with organisations we work with where necessary and if its privacy and security are guaranteed. Personal information submitted to Demos is only used to contact you regarding Demos activities.&nbsp;</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Information about visitors to the Demos website domain is automatically logged for the purposes of statistical analysis. Such information includes the IP address from which you visit, referral address, and other technical information such as browser type and operating system. Your email address is not automatically logged without your knowledge.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We will not distribute, sell, trade or rent your personal information to third parties. Demos may provide aggregate statistics about our website’s users, traffic patterns and related site information to reputable third-parties such as Demos’s funding bodies or potential partners. Such statistical information will not include personally identifying information.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Questions?</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Any questions you have in relation to this policy or how we use your personal data should be sent to&nbsp;hello@demos.co.uk&nbsp;for the attention of Demos’ Head of External Affairs.</span></p><ol style=\"border: 0px; margin: 20px 0px 20px 3px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">ABOUT US</span></li></ol><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Your personal data (i.e. any information which identifies you, or which can be identified as relating to you personally) will be collected and used by Demos (charity no:1042046,&nbsp; company registration no: 2977740).</span></p><ol style=\"border: 0px; margin: 20px 0px 20px 3px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">THE INFORMATION WE COLLECT</span></li></ol><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Personal data you provide</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We collect data you provide to us. This includes information you give when joining as a member or signing up to our newsletter, placing an order or communicating with us. For example:</span></p><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">personal details (name, job title, organisation and email) when you sign up to our newsletter and / or events.</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">financial information (payment information such as credit/debit card or direct debit details, when making donations or paying for a service. Please see section 8 for more information on payment security); and</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">details of Demos events you have attended.</span></li></ul><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Sensitive personal data</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We do not normally collect or store sensitive personal data (such as information relating to health, beliefs or political affiliation) about those signed up to Demos’s newsletter. However there are some situations where this will occur (e.g. if you have an accident on one of our events). If this does occur, we’ll take extra care to ensure your privacy rights are protected.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Accidents or incidents</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">If an accident or incident occurs on our property, at one of our events or involving one of our staff then we’ll keep a record of this (which may include personal data and sensitive personal data).</span></p><ol style=\"border: 0px; margin: 20px 0px 20px 3px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">HOW WE USE INFORMATION2222</span></li></ol><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We only ever use your personal data with your consent, or where it is necessary in order to:</span></p><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">enter into, or perform, a contract with you;</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">comply with a legal duty;</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">protect your vital interests;</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">for our own (or a third party’s) lawful interests, provided your rights don’t override these.</span></li></ul><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">In any event, we’ll only use your information for the purpose or purposes it was collected for (or else for closely related purposes).</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Administration</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We use personal data for administrative purposes (i.e. on our research and events programmes). This includes:</span></p><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">maintaining databases of those signed up to our newsletter;</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">fulfilling orders for goods or services (whether placed online, over the phone or in person);</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">helping us respect your choices and preferences (e.g. if you ask not to receive marketing material, we’ll keep a record of this).</span></li></ul><ol style=\"border: 0px; margin: 20px 0px 20px 3px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">DISCLOSING AND SHARING DATA</span></li></ol><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Your personal data – which may include your name, organisation, position, and email address are held by our mailing list provider. By signing up to our newsletter you are agreeing to the terms and conditions of MailChimp.com (</span><a href=\"https://mailchimp.com/legal/terms/\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(14, 40, 42); outline: none;\">http://mailchimp.com/legal/terms/</a><span style=\"border: 0px; margin: 0px; padding: 0px;\">). This information is not shared with any other organisation. If you wish to unsubscribe from our mailing list at any time, you can do so by clicking the ‘unsubscribe’ link, found at the bottom of any email we send you – or by sending your name and email address to&nbsp;</span><span style=\"border: 0px; margin: 0px; padding: 0px;\">hello@demos.co.uk</span><span style=\"border: 0px; margin: 0px; padding: 0px;\">&nbsp;– stating ‘Unsubscribe’ in the email in the subject line or body of the email.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">If you register to attend an event, your personal data which may include your name, organisation, and email address are held by our event registration provider. By registering to attend an event you are agreeing to the terms and conditions of Eventbrite (</span><a href=\"https://www.eventbrite.com/l/LegalTerms/\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(14, 40, 42); outline: none;\">https://www.eventbrite.com/l/LegalTerms/</a><span style=\"border: 0px; margin: 0px; padding: 0px;\">)</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Occasionally, where we partner with other organisations, we may also share information with them (for example, if you register to attend an event being jointly organised by us and another organisation). We’ll only share information when necessary and we will never share your contact information (e.g. email or telephone).</span></p><ol style=\"border: 0px; margin: 20px 0px 20px 3px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">MARKETING</span></li></ol><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Demos will ask for individuals to “opt-in” for most communications. This includes all our marketing communications (the term marketing is broadly defined and covers information shared in our newsletter.)</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We use personal data to communicate with people, to promote Demos and to help with fundraising activities. This includes keeping you up to date with information from Demos on our research, events, news, job opportunities and other information relating to our work.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">You can decide not to receive communications or change how we contact you at any time. If you wish to do so please contact us by emailing&nbsp;</span><span style=\"border: 0px; margin: 0px; padding: 0px;\">hello@demos.co.uk,</span><span style=\"border: 0px; margin: 0px; padding: 0px;\">&nbsp;writing to Demos, 76 Vincent Square, London SW1P 2PD or telephoning 020 3878 3955 (Lines open 9.30am – 6pm, Mon – Fri).</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">What does ‘marketing’ mean?</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Marketing does not just mean offering things for sale, but also includes news and information about:</span></p><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">our research programme, including details of recent reports or blogs;</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">our events and activities; and</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">job opportunities.</span></li></ul><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">When you receive a communication, we may collect information about how you respond to or interact with that communication, and this may affect how we communicate with you in future.</span></p><ol style=\"border: 0px; margin: 20px 0px 20px 3px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">HOW WE PROTECT DATA</span></li></ol><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We employ a variety of physical and technical measures to keep your data safe and to prevent unauthorised access to, or use or disclosure of your personal information.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Electronic data and databases are stored on secure computer systems and we control who has access to information (using both physical and electronic means). Our staff receive data protection training and we have a set of detailed data protection procedures which personnel are required to follow when handling personal data.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Payment security</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">All electronic Demos forms that request financial data use pass your details to our payment provider (Stripe Payments Europe:&nbsp;</span><a href=\"https://stripe.com/gb/privacy\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(14, 40, 42); outline: none;\">https://stripe.com/gb/privacy</a><span style=\"border: 0px; margin: 0px; padding: 0px;\">;&nbsp;</span><a href=\"https://stripe.com/privacy-shield-policy\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(14, 40, 42); outline: none;\">https://stripe.com/privacy-shield-policy</a><span style=\"border: 0px; margin: 0px; padding: 0px;\">). Demos complies with the payment card industry data security standard (PCI-DSS) published by the PCI Security Standards Council, and will never store card details. If you would rather make a payment through BACS or by cheque please contact us by emailing&nbsp;hello@demos.co.uk, writing to Unit 1, Lloyd’s Wharf, 2-3 Mill Street, London SE1 2BD or telephoning 020 3878 3955 (Lines open 9.30am – 6pm, Mon – Fri).</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Of course, we cannot guarantee the security of your home computer or the internet, and any online communications (e.g. information provided by email or our website) are at the user’s own risk.</span></p><ol style=\"border: 0px; margin: 20px 0px 20px 3px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">STORAGE</span></li></ol><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Where we store information</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Demos’ operations are based in England and we store our data within the European Union.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">How long we store information</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We will only use and store information for so long as it is required for the purposes it was collected for. How long information will be stored for depends on the information in question and what it is being used for. For example, if you ask us not to send you marketing emails, we will stop storing your emails for marketing purposes (though we’ll keep a record of your preference not to be emailed).</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We continually review what information we hold and delete what is no longer required. We never store payment card information.</span></p><ol style=\"border: 0px; margin: 20px 0px 20px 3px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">KEEPING YOU IN CONTROL</span></li></ol><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We want to ensure you remain in control of your personal data. Part of this is making sure you understand your legal rights, which are as follows:</span></p><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">the right to confirmation as to whether or not we have your personal data and, if we do, to obtain a copy of the personal information we hold (this is known as subject access request);</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">the right to have your data erased (though this will not apply where it is necessary for us to continue to use the data for a lawful reason);</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">the right to have inaccurate data rectified;</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">the right to object to your data being used for marketing or profiling; and</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">where technically feasible, you have the right to personal data you have provided to us which we process automatically on the basis of your consent or the performance of a contract. This information will be provided in a common electronic format.</span></li></ul><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Please keep in mind that there are exceptions to the rights above and, though we will always try to respond to your satisfaction, there may be situations where we are unable to do so.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">If you would like further information on your rights or wish to exercise them, please write to Demos’ Head of External Affairs, 76 Vincent Square, London, SW1P 2PD or by email;&nbsp;hello@demos.co.uk</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Complaints</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">You can complain to Demos directly by contacting our Head of External Affairs using the details set out above.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">If you are not happy with our response, or you believe that your data protection or privacy rights have been infringed, you can complain to the UK Information Commissioner’s Office which regulates and enforces data protection law in the UK. Details of how to do this can be found at&nbsp;</span><a href=\"https://www.ico.org.uk/\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(14, 40, 42); outline: none;\">www.ico.org.uk</a></p><ol style=\"border: 0px; margin: 20px 0px 20px 3px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">COOKIES AND LINKS TO OTHER SITES</span></li></ol><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Cookies</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We use cookies on our website. Cookies files are downloaded to a device when certain websites are accessed by users, allowing the website to identify that user on subsequent visits.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">The only cookies in use on our site are for Google Analytics. Google Analytics are tools employed by organisations to help them understand how visitors engage with their website, so improvements can be made. Google Analytics collects information anonymously – and reports overall trends, without disclosing information on individual visitors. By using our site you are consenting to saving and sending us this data. You can opt out of Google Analytics – which will not affect how you visit our site. Further information on this can be found here:&nbsp;</span><a href=\"https://tools.google.com/dlpage/gaoptout\" style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(14, 40, 42); outline: none;\">https://tools.google.com/dlpage/gaoptout</a></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Our website uses local storage strictly for system administration to provide you with the best possible experience – used in order to create reports relating to web traffic and user preferences. This includes: your IP address; details of which web browser or operating system was used; and information on how you use the site.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Links to other sites</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Our website contains hyperlinks to many other websites. We are not responsible for the content or functionality of any of those external websites.</span></p><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">If an external website requests personal information from you (e.g. in connection with an order for goods or services), the information you provide will not be covered by the Demos’ Privacy Policy. We suggest you read the privacy policy of any website before providing any personal information.</span></p><ol style=\"border: 0px; margin: 20px 0px 20px 3px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">CHANGES TO THIS PRIVACY POLICY</span></li></ol><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We’ll amend this Privacy Policy from time to time to ensure it remains up-to-date and accurately reflects how and why we use your personal data. The current version of our Privacy Policy will always be posted on our website.</span></p></h1><h4 style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 20px; font-family: AR12; font-weight: normal; color: rgb(58, 72, 81); white-space: normal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Note on compliance with the General Data Protection Regulation as pertaining to use of social media data within Demos projects</span></h4><h1 style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 36px; font-family: AR12; font-weight: normal; color: rgb(58, 72, 81); white-space: normal;\"><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">The Centre for the Analysis of Social Media (CASM) often conducts research which involves the collection and analysis of publicly available data from social media platforms.&nbsp; Much of this data, including usernames, is considered personal data under the General Data Protection Regulation (GDPR). In order to ensure this data is processed lawfully and transparently, the following procedures are followed by CASM projects undertaken by Demos:</span></p><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">All data collected from social media platforms is accessed through the official application programming interface (API) of that platform, and stored and used in compliance with that API’s terms of service.</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Data is only collected from platforms for which users have provided clear consent, as defined in Article 4(11) of the GDPR, to provide that platform with published data</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">CASM often applies techniques in artificial intelligence to social media data, in order to conduct research on this data. As we have throughout our history as a research centre, we ensure that the reasons for applying these techniques, the methodology used to analyse data, and the conclusions drawn from our analysis are presented clearly and fully in each report. This includes publishing detailed accuracy scores for any machine learning algorithms applied as part of the research.</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">This data is securely stored on a monitored server, accessible only to CASM staff, and encrypted in transit. In the event that a data breach is discovered, CASM will act swiftly to ensure that damage from this breach is minimised, including informing relevant supervisory authorities and acting to identify and resolve any security issues allowing the breach.</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Demos will maintain a publicly accessible page on its website for each project, explaining the sources and character of data collected for that project, the purposes for which this data will be used, and including contact details for a designated member of staff responsible for responding to public queries about this data.</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Data collected from social media sites is not stored for longer than is necessary to complete each project</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">In order to respect the rights of data controllers to maintain control of their personal data, CASM will remove from any dataset personal data pertaining to an individual who requests such deletion. This includes taking reasonable measures to ensure that content deleted from social media platforms is also removed from datasets used by CASM.</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">CASM does not publish any personal data collected during its research, nor is personal data shared with third parties external to CASM or transferred out of the UK, without the explicit consent of the data subject. Any data published or shared with a third party is aggregated, anonymised or altered to prevent identification a natural person.</span></li></ul><ul style=\"border: 0px; margin: 20px 0px 20px 20px; padding: 0px; font-size: 18px; list-style: none; font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Where quotes from social media users are published in reports, these quotes are bowdlerised – altered in a way which preserves meaning but prevents retroactive identification of the original post through e.g an online search. An occasional exception to this policy is observed when the user is publically known to the extent that they would not reasonably expect their social media posts to be private. It should be noted here that the GDPR only applies to natural persons, and not companies or organisations.</span></li></ul><p style=\"border: 0px; margin: 20px 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word; color: rgb(58, 72, 81); font-family: ABOOK1, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">This Privacy Policy was last updated on 05.07.2020 234</span></p></h1></pre><p>\r\n                    </p>', '<pre courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 13px;=\"\" padding:=\"\" 9.5px;=\"\" margin-bottom:=\"\" 10px;=\"\" line-height:=\"\" 1.42857;=\"\" word-break:=\"\" break-all;=\"\" overflow-wrap:=\"\" break-word;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" background-color:=\"\" rgb(245,=\"\" 245,=\"\" 245);=\"\" border:=\"\" 1px=\"\" solid=\"\" rgb(204,=\"\" 204,=\"\" 204);=\"\" border-radius:=\"\" 4px;\"=\"\" style=\"font-size: 12.25px;\"><h1 style=\"margin: 20px 0px; font-weight: normal; font-size: 36px; border: 0px; padding: 0px; font-family: AR12; color: rgb(58, 72, 81); white-space: normal;\"><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"font-family: Poppins; font-size: 22px;\">Dating Terms Of Use</span><br></p></h1><h1 style=\"margin: 20px 0px; font-weight: normal; font-size: 36px; border: 0px; padding: 0px; font-family: AR12; color: rgb(58, 72, 81); white-space: normal;\"><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Demos follows the relevant legal requirements and takes all reasonable precautions to safeguard personal information.</span></p><ol times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 3px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">INTRODUCTION</span></li></ol><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Demos is committed to protecting your privacy and security. This policy explains how and why we use your personal data, to ensure you remain informed and in control of your information.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">You can decide not to receive communications or change how we contact you at any time. If you wish to do so please contact us by emailing&nbsp;hello@demos.co.uk, writing to 76 Vincent Square, London, SW1 2PD or 020 3878 3955 (Lines open 9.30am – 6pm, Mon – Fri).</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We will never sell your personal data, and will only ever share it with organisations we work with where necessary and if its privacy and security are guaranteed. Personal information submitted to Demos is only used to contact you regarding Demos activities.&nbsp;</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Information about visitors to the Demos website domain is automatically logged for the purposes of statistical analysis. Such information includes the IP address from which you visit, referral address, and other technical information such as browser type and operating system. Your email address is not automatically logged without your knowledge.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We will not distribute, sell, trade or rent your personal information to third parties. Demos may provide aggregate statistics about our website’s users, traffic patterns and related site information to reputable third-parties such as Demos’s funding bodies or potential partners. Such statistical information will not include personally identifying information.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Questions?</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Any questions you have in relation to this policy or how we use your personal data should be sent to&nbsp;hello@demos.co.uk&nbsp;for the attention of Demos’ Head of External Affairs</span></p><ol times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 3px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">ABOUT US</span></li></ol><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Your personal data (i.e. any information which identifies you, or which can be identified as relating to you personally) will be collected and used by Demos (charity no:1042046,&nbsp; company registration no: 2977740).</span></p><ol times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 3px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">THE INFORMATION WE COLLECT</span></li></ol><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Personal data you provide</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We collect data you provide to us. This includes information you give when joining as a member or signing up to our newsletter, placing an order or communicating with us. For example:</span></p><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">personal details (name, job title, organisation and email) when you sign up to our newsletter and / or events.</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">financial information (payment information such as credit/debit card or direct debit details, when making donations or paying for a service. Please see section 8 for more information on payment security); and</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">details of Demos events you have attended.</span></li></ul><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Sensitive personal data</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We do not normally collect or store sensitive personal data (such as information relating to health, beliefs or political affiliation) about those signed up to Demos’s newsletter. However there are some situations where this will occur (e.g. if you have an accident on one of our events). If this does occur, we’ll take extra care to ensure your privacy rights are protected.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Accidents or incidents</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">If an accident or incident occurs on our property, at one of our events or involving one of our staff then we’ll keep a record of this (which may include personal data and sensitive personal data).</span></p><ol times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 3px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">HOW WE USE INFORMATION</span></li></ol><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We only ever use your personal data with your consent, or where it is necessary in order to:</span></p><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">enter into, or perform, a contract with you;</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">comply with a legal duty;</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">protect your vital interests;</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">for our own (or a third party’s) lawful interests, provided your rights don’t override these.</span></li></ul><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">In any event, we’ll only use your information for the purpose or purposes it was collected for (or else for closely related purposes).</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Administration</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We use personal data for administrative purposes (i.e. on our research and events programmes). This includes:</span></p><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">maintaining databases of those signed up to our newsletter;</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">fulfilling orders for goods or services (whether placed online, over the phone or in person);</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">helping us respect your choices and preferences (e.g. if you ask not to receive marketing material, we’ll keep a record of this).</span></li></ul><ol times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 3px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">DISCLOSING AND SHARING DATA</span></li></ol><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Your personal data – which may include your name, organisation, position, and email address are held by our mailing list provider. By signing up to our newsletter you are agreeing to the terms and conditions of MailChimp.com (</span><a href=\"https://mailchimp.com/legal/terms/\" style=\"color: rgb(14, 40, 42); border: 0px; margin: 0px; padding: 0px; outline: none;\">http://mailchimp.com/legal/terms/</a><span style=\"border: 0px; margin: 0px; padding: 0px;\">). This information is not shared with any other organisation. If you wish to unsubscribe from our mailing list at any time, you can do so by clicking the ‘unsubscribe’ link, found at the bottom of any email we send you – or by sending your name and email address to&nbsp;</span><span style=\"border: 0px; margin: 0px; padding: 0px;\">hello@demos.co.uk</span><span style=\"border: 0px; margin: 0px; padding: 0px;\">&nbsp;– stating ‘Unsubscribe’ in the email in the subject line or body of the email.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">If you register to attend an event, your personal data which may include your name, organisation, and email address are held by our event registration provider. By registering to attend an event you are agreeing to the terms and conditions of Eventbrite (</span><a href=\"https://www.eventbrite.com/l/LegalTerms/\" style=\"color: rgb(14, 40, 42); border: 0px; margin: 0px; padding: 0px; outline: none;\">https://www.eventbrite.com/l/LegalTerms/</a><span style=\"border: 0px; margin: 0px; padding: 0px;\">)</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Occasionally, where we partner with other organisations, we may also share information with them (for example, if you register to attend an event being jointly organised by us and another organisation). We’ll only share information when necessary and we will never share your contact information (e.g. email or telephone).</span></p><ol times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 3px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">MARKETING</span></li></ol><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Demos will ask for individuals to “opt-in” for most communications. This includes all our marketing communications (the term marketing is broadly defined and covers information shared in our newsletter.)</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We use personal data to communicate with people, to promote Demos and to help with fundraising activities. This includes keeping you up to date with information from Demos on our research, events, news, job opportunities and other information relating to our work.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">You can decide not to receive communications or change how we contact you at any time. If you wish to do so please contact us by emailing&nbsp;</span><span style=\"border: 0px; margin: 0px; padding: 0px;\">hello@demos.co.uk,</span><span style=\"border: 0px; margin: 0px; padding: 0px;\">&nbsp;writing to Demos, 76 Vincent Square, London SW1P 2PD or telephoning 020 3878 3955 (Lines open 9.30am – 6pm, Mon – Fri).</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">What does ‘marketing’ mean?</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Marketing does not just mean offering things for sale, but also includes news and information about:</span></p><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">our research programme, including details of recent reports or blogs;</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">our events and activities; and</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">job opportunities.</span></li></ul><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">When you receive a communication, we may collect information about how you respond to or interact with that communication, and this may affect how we communicate with you in future.</span></p><ol times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 3px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">HOW WE PROTECT DATA</span></li></ol><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We employ a variety of physical and technical measures to keep your data safe and to prevent unauthorised access to, or use or disclosure of your personal information.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Electronic data and databases are stored on secure computer systems and we control who has access to information (using both physical and electronic means). Our staff receive data protection training and we have a set of detailed data protection procedures which personnel are required to follow when handling personal data.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Payment security</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">All electronic Demos forms that request financial data use pass your details to our payment provider (Stripe Payments Europe:&nbsp;</span><a href=\"https://stripe.com/gb/privacy\" style=\"color: rgb(14, 40, 42); border: 0px; margin: 0px; padding: 0px; outline: none;\">https://stripe.com/gb/privacy</a><span style=\"border: 0px; margin: 0px; padding: 0px;\">;&nbsp;</span><a href=\"https://stripe.com/privacy-shield-policy\" style=\"color: rgb(14, 40, 42); border: 0px; margin: 0px; padding: 0px; outline: none;\">https://stripe.com/privacy-shield-policy</a><span style=\"border: 0px; margin: 0px; padding: 0px;\">). Demos complies with the payment card industry data security standard (PCI-DSS) published by the PCI Security Standards Council, and will never store card details. If you would rather make a payment through BACS or by cheque please contact us by emailing&nbsp;hello@demos.co.uk, writing to Unit 1, Lloyd’s Wharf, 2-3 Mill Street, London SE1 2BD or telephoning 020 3878 3955 (Lines open 9.30am – 6pm, Mon – Fri).</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Of course, we cannot guarantee the security of your home computer or the internet, and any online communications (e.g. information provided by email or our website) are at the user’s own risk.</span></p><ol times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 3px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">STORAGE</span></li></ol><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Where we store information</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Demos’ operations are based in England and we store our data within the European Union.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">How long we store information</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We will only use and store information for so long as it is required for the purposes it was collected for. How long information will be stored for depends on the information in question and what it is being used for. For example, if you ask us not to send you marketing emails, we will stop storing your emails for marketing purposes (though we’ll keep a record of your preference not to be emailed).</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We continually review what information we hold and delete what is no longer required. We never store payment card information.</span></p><ol times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 3px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">KEEPING YOU IN CONTROL</span></li></ol><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We want to ensure you remain in control of your personal data. Part of this is making sure you understand your legal rights, which are as follows:</span></p><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">the right to confirmation as to whether or not we have your personal data and, if we do, to obtain a copy of the personal information we hold (this is known as subject access request);</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">the right to have your data erased (though this will not apply where it is necessary for us to continue to use the data for a lawful reason);</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">the right to have inaccurate data rectified;</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">the right to object to your data being used for marketing or profiling; and</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">where technically feasible, you have the right to personal data you have provided to us which we process automatically on the basis of your consent or the performance of a contract. This information will be provided in a common electronic format.</span></li></ul><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Please keep in mind that there are exceptions to the rights above and, though we will always try to respond to your satisfaction, there may be situations where we are unable to do so.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">If you would like further information on your rights or wish to exercise them, please write to Demos’ Head of External Affairs, 76 Vincent Square, London, SW1P 2PD or by email;&nbsp;hello@demos.co.uk</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Complaints</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">You can complain to Demos directly by contacting our Head of External Affairs using the details set out above.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">If you are not happy with our response, or you believe that your data protection or privacy rights have been infringed, you can complain to the UK Information Commissioner’s Office which regulates and enforces data protection law in the UK. Details of how to do this can be found at&nbsp;</span><a href=\"https://www.ico.org.uk/\" style=\"color: rgb(14, 40, 42); border: 0px; margin: 0px; padding: 0px; outline: none;\">www.ico.org.uk</a></p><ol times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 3px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">COOKIES AND LINKS TO OTHER SITES</span></li></ol><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Cookies</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We use cookies on our website. Cookies files are downloaded to a device when certain websites are accessed by users, allowing the website to identify that user on subsequent visits.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">The only cookies in use on our site are for Google Analytics. Google Analytics are tools employed by organisations to help them understand how visitors engage with their website, so improvements can be made. Google Analytics collects information anonymously – and reports overall trends, without disclosing information on individual visitors. By using our site you are consenting to saving and sending us this data. You can opt out of Google Analytics – which will not affect how you visit our site. Further information on this can be found here:&nbsp;</span><a href=\"https://tools.google.com/dlpage/gaoptout\" style=\"color: rgb(14, 40, 42); border: 0px; margin: 0px; padding: 0px; outline: none;\">https://tools.google.com/dlpage/gaoptout</a></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Our website uses local storage strictly for system administration to provide you with the best possible experience – used in order to create reports relating to web traffic and user preferences. This includes: your IP address; details of which web browser or operating system was used; and information on how you use the site.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Links to other sites</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Our website contains hyperlinks to many other websites. We are not responsible for the content or functionality of any of those external websites.</span></p><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">If an external website requests personal information from you (e.g. in connection with an order for goods or services), the information you provide will not be covered by the Demos’ Privacy Policy. We suggest you read the privacy policy of any website before providing any personal information.</span></p><ol times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 3px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none decimal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">CHANGES TO THIS PRIVACY POLICY</span></li></ol><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">We’ll amend this Privacy Policy from time to time to ensure it remains up-to-date and accurately reflects how and why we use your personal data. The current version of our Privacy Policy will always be posted on our website.</span></p></h1><h4 style=\"margin: 20px 0px; font-weight: normal; font-size: 20px; border: 0px; padding: 0px; font-family: AR12; color: rgb(58, 72, 81); white-space: normal;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Note on compliance with the General Data Protection Regulation as pertaining to use of social media data within Demos projects</span></h4><h1 style=\"margin: 20px 0px; font-weight: normal; font-size: 36px; border: 0px; padding: 0px; font-family: AR12; color: rgb(58, 72, 81); white-space: normal;\"><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">The Centre for the Analysis of Social Media (CASM) often conducts research which involves the collection and analysis of publicly available data from social media platforms.&nbsp; Much of this data, including usernames, is considered personal data under the General Data Protection Regulation (GDPR). In order to ensure this data is processed lawfully and transparently, the following procedures are followed by CASM projects undertaken by Demos:</span></p><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">All data collected from social media platforms is accessed through the official application programming interface (API) of that platform, and stored and used in compliance with that API’s terms of service.</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Data is only collected from platforms for which users have provided clear consent, as defined in Article 4(11) of the GDPR, to provide that platform with published data</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">CASM often applies techniques in artificial intelligence to social media data, in order to conduct research on this data. As we have throughout our history as a research centre, we ensure that the reasons for applying these techniques, the methodology used to analyse data, and the conclusions drawn from our analysis are presented clearly and fully in each report. This includes publishing detailed accuracy scores for any machine learning algorithms applied as part of the research.</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">This data is securely stored on a monitored server, accessible only to CASM staff, and encrypted in transit. In the event that a data breach is discovered, CASM will act swiftly to ensure that damage from this breach is minimised, including informing relevant supervisory authorities and acting to identify and resolve any security issues allowing the breach.</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Demos will maintain a publicly accessible page on its website for each project, explaining the sources and character of data collected for that project, the purposes for which this data will be used, and including contact details for a designated member of staff responsible for responding to public queries about this data.</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Data collected from social media sites is not stored for longer than is necessary to complete each project</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">In order to respect the rights of data controllers to maintain control of their personal data, CASM will remove from any dataset personal data pertaining to an individual who requests such deletion. This includes taking reasonable measures to ensure that content deleted from social media platforms is also removed from datasets used by CASM.</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">CASM does not publish any personal data collected during its research, nor is personal data shared with third parties external to CASM or transferred out of the UK, without the explicit consent of the data subject. Any data published or shared with a third party is aggregated, anonymised or altered to prevent identification a natural person.</span></li></ul><ul times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px 20px 20px; border: 0px; padding: 0px; font-size: 18px; list-style: none;\"><li style=\"border: 0px; margin: 5px 0px 5px 20px; padding: 0px; list-style: outside none;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">Where quotes from social media users are published in reports, these quotes are bowdlerised – altered in a way which preserves meaning but prevents retroactive identification of the original post through e.g an online search. An occasional exception to this policy is observed when the user is publically known to the extent that they would not reasonably expect their social media posts to be private. It should be noted here that the GDPR only applies to natural persons, and not companies or organisations.</span></li></ul><p times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;\"=\"\" style=\"margin: 20px 0px; color: rgb(58, 72, 81); border: 0px; padding: 0px; font-size: 18px; overflow-wrap: break-word;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">This Privacy Policy was last updated on 05.07.2020</span></p></h1></pre>', '2022-05-18 10:45:41', '2023-08-25 01:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sound_id` int(11) NOT NULL DEFAULT 0,
  `post_description` longblob DEFAULT NULL,
  `post_hash_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` text NOT NULL,
  `video_view_count` int(11) NOT NULL DEFAULT 0,
  `is_trending` tinyint(1) NOT NULL DEFAULT 0,
  `can_comment` tinyint(1) NOT NULL DEFAULT 0,
  `can_duet` tinyint(1) NOT NULL DEFAULT 0,
  `can_save` tinyint(1) NOT NULL DEFAULT 0,
  `country_code` varchar(100) NOT NULL DEFAULT '+91',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile_category`
--

CREATE TABLE `tbl_profile_category` (
  `profile_category_id` int(11) NOT NULL,
  `profile_category_name` varchar(100) NOT NULL,
  `profile_category_image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_redeem_request`
--

CREATE TABLE `tbl_redeem_request` (
  `redeem_request_id` int(11) NOT NULL,
  `redeem_request_type` varchar(10) NOT NULL COMMENT 'paytm,paypal',
  `account` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report`
--

CREATE TABLE `tbl_report` (
  `report_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `report_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 for report_user,2 for report_video',
  `reason` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `contact_info` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rewarding_action`
--

CREATE TABLE `tbl_rewarding_action` (
  `rewarding_action_id` int(11) NOT NULL,
  `action_name` varchar(100) NOT NULL,
  `coin` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL DEFAULT '$',
  `coin_value` float NOT NULL DEFAULT 0.001,
  `min_redeem_coins` int(11) NOT NULL DEFAULT 1000,
  `min_fans_verification` int(55) NOT NULL DEFAULT 10,
  `min_fans_for_live` int(55) NOT NULL DEFAULT 100,
  `reward_video_upload` int(11) NOT NULL DEFAULT 0,
  `admob_banner` varchar(555) DEFAULT NULL,
  `admob_int` varchar(555) DEFAULT NULL,
  `admob_int_ios` varchar(255) DEFAULT NULL,
  `admob_banner_ios` varchar(255) DEFAULT NULL,
  `max_upload_daily` int(55) NOT NULL DEFAULT 10,
  `live_min_viewers` int(55) NOT NULL DEFAULT 0,
  `live_timeout` int(55) NOT NULL DEFAULT 0,
  `is_compress` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no 1=yes',
  `help_mail` varchar(999) DEFAULT NULL,
  `is_content_moderation` int(1) NOT NULL DEFAULT 0 COMMENT '0=no 1=yes',
  `sight_engine_api_user` varchar(555) DEFAULT NULL,
  `sight_engine_api_secret` varchar(555) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `currency`, `coin_value`, `min_redeem_coins`, `min_fans_verification`, `min_fans_for_live`, `reward_video_upload`, `admob_banner`, `admob_int`, `admob_int_ios`, `admob_banner_ios`, `max_upload_daily`, `live_min_viewers`, `live_timeout`, `is_compress`, `help_mail`, `is_content_moderation`, `sight_engine_api_user`, `sight_engine_api_secret`, `created_at`, `updated_at`) VALUES
(1, '$', 0.001, 100, 500, 5, 10, NULL, NULL, NULL, NULL, 2, 60, 100, 0, NULL, 0, NULL, NULL, '2022-04-06 06:16:05', '2022-12-05 00:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sound`
--

CREATE TABLE `tbl_sound` (
  `sound_id` int(11) NOT NULL,
  `sound_category_id` int(11) NOT NULL DEFAULT 0,
  `sound_title` varchar(250) NOT NULL,
  `sound` varchar(200) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `singer` varchar(100) NOT NULL,
  `sound_image` text NOT NULL,
  `added_by` varchar(10) NOT NULL DEFAULT 'user',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=not 1=deleted',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sound_category`
--

CREATE TABLE `tbl_sound_category` (
  `sound_category_id` int(11) NOT NULL,
  `sound_category_name` varchar(200) NOT NULL,
  `sound_category_profile` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=not 1=deleted',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_mobile_no` varchar(20) DEFAULT NULL,
  `user_profile` text DEFAULT NULL,
  `login_type` varchar(10) NOT NULL COMMENT 'facebook OR google',
  `identity` text NOT NULL,
  `platform` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 for android OR 2 for ios',
  `device_token` text NOT NULL,
  `is_verify` tinyint(1) NOT NULL DEFAULT 0,
  `is_notification` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=yes 0=off	',
  `my_wallet` int(11) NOT NULL DEFAULT 0,
  `bio` blob DEFAULT NULL,
  `profile_category` int(11) DEFAULT NULL,
  `fb_url` varchar(100) DEFAULT NULL,
  `insta_url` varchar(100) DEFAULT NULL,
  `youtube_url` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `freez_or_not` tinyint(1) NOT NULL DEFAULT 0,
  `timezone` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_block`
--

CREATE TABLE `tbl_user_block` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `block_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verification_request`
--

CREATE TABLE `tbl_verification_request` (
  `verification_request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `photo_id_image` text NOT NULL COMMENT 'add image',
  `photo_with_id_image` text NOT NULL COMMENT 'add image',
  `id_number` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_bookmark`
--
ALTER TABLE `tbl_bookmark`
  ADD PRIMARY KEY (`bookmark_id`);

--
-- Indexes for table `tbl_coin_plan`
--
ALTER TABLE `tbl_coin_plan`
  ADD PRIMARY KEY (`coin_plan_id`);

--
-- Indexes for table `tbl_coin_rate`
--
ALTER TABLE `tbl_coin_rate`
  ADD PRIMARY KEY (`coin_rate_id`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_followers`
--
ALTER TABLE `tbl_followers`
  ADD PRIMARY KEY (`follower_id`);

--
-- Indexes for table `tbl_gifts`
--
ALTER TABLE `tbl_gifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hash_tags`
--
ALTER TABLE `tbl_hash_tags`
  ADD PRIMARY KEY (`hash_tag_id`);

--
-- Indexes for table `tbl_likes`
--
ALTER TABLE `tbl_likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_profile_category`
--
ALTER TABLE `tbl_profile_category`
  ADD PRIMARY KEY (`profile_category_id`);

--
-- Indexes for table `tbl_redeem_request`
--
ALTER TABLE `tbl_redeem_request`
  ADD PRIMARY KEY (`redeem_request_id`);

--
-- Indexes for table `tbl_report`
--
ALTER TABLE `tbl_report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `tbl_rewarding_action`
--
ALTER TABLE `tbl_rewarding_action`
  ADD PRIMARY KEY (`rewarding_action_id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sound`
--
ALTER TABLE `tbl_sound`
  ADD PRIMARY KEY (`sound_id`);

--
-- Indexes for table `tbl_sound_category`
--
ALTER TABLE `tbl_sound_category`
  ADD PRIMARY KEY (`sound_category_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_user_block`
--
ALTER TABLE `tbl_user_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_verification_request`
--
ALTER TABLE `tbl_verification_request`
  ADD PRIMARY KEY (`verification_request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_bookmark`
--
ALTER TABLE `tbl_bookmark`
  MODIFY `bookmark_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_coin_plan`
--
ALTER TABLE `tbl_coin_plan`
  MODIFY `coin_plan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_coin_rate`
--
ALTER TABLE `tbl_coin_rate`
  MODIFY `coin_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_followers`
--
ALTER TABLE `tbl_followers`
  MODIFY `follower_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_gifts`
--
ALTER TABLE `tbl_gifts`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hash_tags`
--
ALTER TABLE `tbl_hash_tags`
  MODIFY `hash_tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_likes`
--
ALTER TABLE `tbl_likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_profile_category`
--
ALTER TABLE `tbl_profile_category`
  MODIFY `profile_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_redeem_request`
--
ALTER TABLE `tbl_redeem_request`
  MODIFY `redeem_request_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_report`
--
ALTER TABLE `tbl_report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_rewarding_action`
--
ALTER TABLE `tbl_rewarding_action`
  MODIFY `rewarding_action_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sound`
--
ALTER TABLE `tbl_sound`
  MODIFY `sound_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sound_category`
--
ALTER TABLE `tbl_sound_category`
  MODIFY `sound_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_block`
--
ALTER TABLE `tbl_user_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_verification_request`
--
ALTER TABLE `tbl_verification_request`
  MODIFY `verification_request_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
