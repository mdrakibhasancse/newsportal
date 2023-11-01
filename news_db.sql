-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2023 at 06:49 AM
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
-- Database: `news_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `links` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name_en`, `name_bn`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lifestyle', 'জীবনযাপন', 1, '2023-11-01 00:35:34', '2023-11-01 00:35:34'),
(2, 1, 'Politics', 'রাজনীতি\n', 1, '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(3, 1, 'Crime', 'অপরাধ', 1, '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(4, 1, 'Opinion', 'মতামত', 1, '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(5, 1, 'Sports', 'খেলা', 1, '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(6, 1, 'Entertainment', 'বিনোদন', 1, '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(7, 1, 'Job', 'চাকরি', 1, '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(9, 1, 'Business', 'বাণিজ্য', 1, '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(10, 1, 'Youth', 'বিশ্ব', 1, '2023-11-01 00:35:35', '2023-11-01 00:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `division_id` bigint UNSIGNED NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `user_id`, `name_en`, `name_bn`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dhaka', 'ঢাকা', '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(2, 1, 'Mymensingh', 'ময়মনসিংহঃ', '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(3, 1, 'Khulna', 'খুলনা', '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(4, 1, 'Rangpur', 'রংপুর', '2023-11-01 00:35:36', '2023-11-01 00:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_tvs`
--

CREATE TABLE `live_tvs` (
  `id` bigint UNSIGNED NOT NULL,
  `embed_code` text COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_tvs`
--

INSERT INTO `live_tvs` (`id`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QGbGyhVzpJk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, '2023-11-01 00:35:36', '2023-11-01 00:35:36');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_30_154251_create_categories_table', 1),
(6, '2022_11_02_140441_create_sub_categories_table', 1),
(7, '2022_11_05_154359_create_districts_table', 1),
(8, '2022_11_05_154632_create_sub_districts_table', 1),
(9, '2022_11_08_121840_create_news_table', 1),
(10, '2022_11_10_122623_create_socials_table', 1),
(11, '2022_11_10_124504_create_seos_table', 1),
(12, '2022_11_10_131814_create_namazs_table', 1),
(13, '2022_11_10_135404_create_live_tvs_table', 1),
(14, '2022_11_10_181728_create_notices_table', 1),
(15, '2022_11_10_190743_create_website_links_table', 1),
(16, '2022_11_10_195542_create_photo_galleries_table', 1),
(17, '2022_11_10_195724_create_video_galleries_table', 1),
(18, '2022_11_18_175018_rename_districts_table_to_divisions_table', 1),
(19, '2022_11_18_175244_rename_sub_districts_table_to_districts_table', 1),
(20, '2022_11_21_185825_create_ads_table', 1),
(21, '2022_11_27_075201_add_mutiple_column_to_users_table', 1),
(22, '2022_12_05_120712_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `namazs`
--

CREATE TABLE `namazs` (
  `id` bigint UNSIGNED NOT NULL,
  `fojor_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `johr_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asor_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `magrib_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `esha_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jummah_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fojor_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `johr_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asor_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `magrib_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `esha_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jummah_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `namazs`
--

INSERT INTO `namazs` (`id`, `fojor_en`, `johr_en`, `asor_en`, `magrib_en`, `esha_en`, `jummah_en`, `fojor_bn`, `johr_bn`, `asor_bn`, `magrib_bn`, `esha_bn`, `jummah_bn`, `created_at`, `updated_at`) VALUES
(1, '5:00 AM', '1:30 PM', '4:00 PM', '5:10 PM', '7:30 PM', '1:30 PM', '৫:০০ পূর্বাহ্ন', '১:৩০ অপরাহ্ন', '৪:০০ অপরাহ্ন', '৫:০০ অপরাহ্ন', '৭:৩০ অপরাহ্ন', '১:৩০ অপরাহ্ন', '2023-11-01 00:35:36', '2023-11-01 00:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `subcategory_id` bigint UNSIGNED DEFAULT NULL,
  `division_id` bigint UNSIGNED DEFAULT NULL,
  `district_id` bigint UNSIGNED DEFAULT NULL,
  `news_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `des_bn` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `headline` int DEFAULT NULL,
  `first_section_big` int DEFAULT NULL,
  `first_section_small` int DEFAULT NULL,
  `others_section_big` int DEFAULT NULL,
  `others_section_small` int DEFAULT NULL,
  `news_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `notice_en` text COLLATE utf8mb4_unicode_ci,
  `notice_bn` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `photo_galleries`
--

CREATE TABLE `photo_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `google_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_author`, `meta_title`, `meta_keyword`, `meta_description`, `google_analytics`, `google_verification`, `alexa_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Daliy News', 'Daliy News', 'newspaper script, magazine, Blog, sports, opinion', 'বাংলাদেশসহ বিশ্বের সর্বশেষ সংবাদ শিরোনাম, প্রতিবেদন, বিশ্লেষণ, খেলা, বিনোদন, চাকরি, ', 'Google Analytics lets you measure your advertising ROI', 'Ownership verification means to Search Console specific', 'We retired Alexa.com on May 1, 202/', '2023-11-01 00:35:36', '2023-11-01 00:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` text COLLATE utf8mb4_unicode_ci,
  `address_bn` text COLLATE utf8mb4_unicode_ci,
  `phone_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy_right` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `address_en`, `address_bn`, `phone_en`, `phone_bn`, `email`, `copy_right`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Netrokona', 'নেত্রকোনা', '01976009329', '০১৯৭৬০০৯৩২৯', 'admin@gmail.com', 'All rights reserved © 2022 Daily News Paper', '2023-11-01 00:35:36', '2023-11-01 00:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'https://web.facebook.com/', 'https://twitter.com/i/flow/login', 'https://www.youtube.com/', 'https://www.instagram.com/', 'https://www.linkedin.com/feed/', '2023-11-01 00:35:36', '2023-11-01 00:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `user_id`, `category_id`, `name_en`, `name_bn`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'Mrs. Christy Quitzon I', 'Jordan Grant', 0, '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(4, 1, 6, 'Modesta Armstrong', 'Mr. Ruben Hettinger PhD', 1, '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(5, 1, 6, 'Miss Mabel Mertz', 'Antone Dach', 0, '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(6, 1, 10, 'Nels Spinka', 'Brent Heaney', 1, '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(8, 1, 6, 'Marjolaine Morar', 'Grace Marvin I', 1, '2023-11-01 00:35:35', '2023-11-01 00:35:35'),
(9, 1, 7, 'Mrs. Jayda Gulgowski PhD', 'Demarco Hoeger', 1, '2023-11-01 00:35:35', '2023-11-01 00:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL DEFAULT '0',
  `category` int DEFAULT NULL,
  `division` int DEFAULT NULL,
  `news` int DEFAULT NULL,
  `setting` int DEFAULT NULL,
  `gallery` int DEFAULT NULL,
  `ads` int DEFAULT NULL,
  `role` int DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `category`, `division`, `news`, `setting`, `gallery`, `ads`, `role`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '$2y$10$OciHERPZEsTyzigdJqwEIOtwN//yWDF/BceMoI0itZJj76a0Orsz6', NULL, '2023-11-01 00:35:33', '2023-11-01 00:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `video_galleries`
--

CREATE TABLE `video_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `website_links`
--

CREATE TABLE `website_links` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `website_name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_en_unique` (`name_en`),
  ADD UNIQUE KEY `categories_name_bn_unique` (`name_bn`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_districts_name_en_unique` (`name_en`),
  ADD UNIQUE KEY `sub_districts_name_bn_unique` (`name_bn`),
  ADD KEY `sub_districts_user_id_foreign` (`user_id`),
  ADD KEY `sub_districts_division_id_foreign` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_name_en_unique` (`name_en`),
  ADD UNIQUE KEY `districts_name_bn_unique` (`name_bn`),
  ADD KEY `districts_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `live_tvs`
--
ALTER TABLE `live_tvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `namazs`
--
ALTER TABLE `namazs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`),
  ADD KEY `news_category_id_foreign` (`category_id`),
  ADD KEY `news_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `news_division_id_foreign` (`division_id`),
  ADD KEY `news_district_id_foreign` (`district_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notices_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_galleries_user_id_foreign` (`user_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_en_unique` (`name_en`),
  ADD UNIQUE KEY `sub_categories_name_bn_unique` (`name_bn`),
  ADD KEY `sub_categories_user_id_foreign` (`user_id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_galleries`
--
ALTER TABLE `video_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_galleries_user_id_foreign` (`user_id`);

--
-- Indexes for table `website_links`
--
ALTER TABLE `website_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_links_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_tvs`
--
ALTER TABLE `live_tvs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `namazs`
--
ALTER TABLE `namazs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_galleries`
--
ALTER TABLE `video_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_links`
--
ALTER TABLE `website_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `sub_districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_districts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `divisions`
--
ALTER TABLE `divisions`
  ADD CONSTRAINT `districts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  ADD CONSTRAINT `photo_galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_galleries`
--
ALTER TABLE `video_galleries`
  ADD CONSTRAINT `video_galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `website_links`
--
ALTER TABLE `website_links`
  ADD CONSTRAINT `website_links_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
