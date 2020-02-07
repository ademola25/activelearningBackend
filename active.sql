-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 07, 2020 at 01:49 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `activelearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `purchased` tinyint(1) DEFAULT NULL,
  `special_offer` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `image_url`, `published_date`, `purchased`, `special_offer`, `created_at`, `updated_at`) VALUES
(1, 'Isabell Purdy', 'https://lorempixel.com/640/480/?26556', '2020-02-07 09:37:57', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(2, 'Marjory Walter', 'https://lorempixel.com/640/480/?17185', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(3, 'Mozell Brown', 'https://lorempixel.com/640/480/?69701', '2020-02-07 09:37:57', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(4, 'Dominique Kulas', 'https://lorempixel.com/640/480/?56932', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(5, 'Mitchell Price IV', 'https://lorempixel.com/640/480/?45617', '2020-02-07 09:37:57', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(6, 'Holden McLaughlin Sr.', 'https://lorempixel.com/640/480/?90156', '2020-02-07 09:37:57', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(7, 'Whitney Sporer Jr.', 'https://lorempixel.com/640/480/?56830', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(8, 'Lizeth Swaniawski', 'https://lorempixel.com/640/480/?68004', '2020-02-07 09:37:57', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(9, 'Fiona Wisoky', 'https://lorempixel.com/640/480/?38765', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(10, 'Kathleen Leannon', 'https://lorempixel.com/640/480/?94258', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(11, 'Dorris Olson', 'https://lorempixel.com/640/480/?61765', '2020-02-07 09:37:57', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(12, 'Dr. Haylie Dibbert', 'https://lorempixel.com/640/480/?12648', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(13, 'Dr. Morton Cummings V', 'https://lorempixel.com/640/480/?85501', '2020-02-07 09:37:57', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(14, 'Hilbert Rohan', 'https://lorempixel.com/640/480/?93130', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(15, 'Gregorio Schmitt', 'https://lorempixel.com/640/480/?86397', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(16, 'Skye Harvey V', 'https://lorempixel.com/640/480/?69018', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(17, 'Rafaela Rath', 'https://lorempixel.com/640/480/?63612', '2020-02-07 09:37:57', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(18, 'Miss Jordane Huel', 'https://lorempixel.com/640/480/?24127', '2020-02-07 09:37:57', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(19, 'Dr. Alicia Marquardt II', 'https://lorempixel.com/640/480/?49677', '2020-02-07 09:37:57', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(20, 'Meta Parker', 'https://lorempixel.com/640/480/?19879', '2020-02-07 09:37:57', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(21, 'Mr. William McDermott II', 'https://lorempixel.com/640/480/?67380', '2020-02-07 09:37:57', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(22, 'Rebeca Doyle DDS', 'https://lorempixel.com/640/480/?14600', '2020-02-07 09:37:57', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(23, 'Mr. Amari Wiegand', 'https://lorempixel.com/640/480/?64350', '2020-02-07 09:37:57', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(24, 'Dalton Aufderhar I', 'https://lorempixel.com/640/480/?72103', '2020-02-07 09:37:57', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(25, 'Pascale Crona', 'https://lorempixel.com/640/480/?40435', '2020-02-07 09:37:57', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(26, 'Werner Mante', 'https://lorempixel.com/640/480/?67183', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(27, 'Kattie Hauck', 'https://lorempixel.com/640/480/?27774', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(28, 'Ms. Lorna Mosciski', 'https://lorempixel.com/640/480/?45469', '2020-02-07 09:37:57', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(29, 'Eleanore Herzog', 'https://lorempixel.com/640/480/?58690', '2020-02-07 09:37:57', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(30, 'Alejandrin Carroll', 'https://lorempixel.com/640/480/?91571', '2020-02-07 09:37:57', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(31, 'Cletus Krajcik', 'https://lorempixel.com/640/480/?69889', '2020-02-07 09:37:57', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(32, 'Nia Jacobi', 'https://lorempixel.com/640/480/?76495', '2020-02-07 09:37:57', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(33, 'Prof. Lee Runolfsson', 'https://lorempixel.com/640/480/?23039', '2020-02-07 09:37:57', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(34, 'Ena Bernier', 'https://lorempixel.com/640/480/?88342', '2020-02-07 09:37:57', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(35, 'Rickey Shanahan II', 'https://lorempixel.com/640/480/?54061', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(36, 'Myrna Predovic', 'https://lorempixel.com/640/480/?28629', '2020-02-07 09:37:57', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(37, 'Buck White', 'https://lorempixel.com/640/480/?55096', '2020-02-07 09:37:57', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(38, 'Oda Lemke', 'https://lorempixel.com/640/480/?70120', '2020-02-07 09:37:57', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(39, 'Milton Koss Jr.', 'https://lorempixel.com/640/480/?36142', '2020-02-07 09:37:57', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(40, 'Jaquan Schamberger DDS', 'https://lorempixel.com/640/480/?85853', '2020-02-07 09:37:57', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(41, 'Arnoldo Shanahan', 'https://lorempixel.com/640/480/?81528', '2020-02-07 09:37:57', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_02_07_092418_create_books_table', 2),
(10, '2020_02_07_093212_add_new_columns_to_users_table', 3),
(11, '2020_02_07_100556_add_user_role_to_users_table', 4),
(12, '2020_02_07_101617_create_role_user', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('10e6b7ecc0edf9bb661edce515d140e400507a1096a78d101c5d1e044c3fef5990b356483af6604e', 1, 3, 'activelearning', '[]', 0, '2020-02-07 05:37:44', '2020-02-07 05:37:44', '2021-02-07 06:37:44'),
('69e23369451b7a721a1bab5f64fb32de0148d79eb00d7ec86bd6d68754d313e167b3779772603868', 4, 3, 'activelearning', '[]', 0, '2020-02-07 09:53:07', '2020-02-07 09:53:07', '2021-02-07 10:53:07'),
('8a81cac04d5fa3432d48330de38c8a761252fbd65ebbefdadd38526a897534a0d09e5ca31bba24ce', 1, 3, 'activelearning', '[]', 0, '2020-02-07 05:57:33', '2020-02-07 05:57:33', '2021-02-07 06:57:33'),
('cb92633036c660ad55fc04dc12f53293fcfe11c0cf20ed4eb49ef571d78e7ed3d9539cbae1deb11d', 1, 3, 'activelearning', '[]', 0, '2020-02-07 05:58:09', '2020-02-07 05:58:09', '2021-02-07 06:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Active-Learning Personal Access Client', 'KuJ7ghEoHohNdsaABoxIw068geFmM7cMoTKVk8rS', 'http://localhost', 1, 0, 0, '2020-02-06 20:30:23', '2020-02-06 20:30:23'),
(2, NULL, 'Active-Learning Password Grant Client', 'QeYGxAN2FiWJBDJ0pTNlPOkO9kvz3vbWlEIr0mm1', 'http://localhost', 0, 1, 0, '2020-02-06 20:30:23', '2020-02-06 20:30:23'),
(3, NULL, 'activelearning', 'mc5btBOIpgvCna2crglGwKwImwVG82Whxg0J3Txl', 'http://localhost', 1, 0, 0, '2020-02-06 20:43:56', '2020-02-06 20:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-02-06 20:30:23', '2020-02-06 20:30:23'),
(2, 3, '2020-02-06 20:43:56', '2020-02-06 20:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'staff', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_role` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `username`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_role`) VALUES
(1, 'user1', NULL, '', NULL, 'user@activelearning.ro', NULL, '$2y$10$m0FGmYwiyO.0d2lvm3H.WefCP8nR2sMgkKePPLAXG8qhbz5V2ReIq', NULL, '2020-02-07 05:21:52', '2020-02-07 05:21:52', 2),
(4, 'User', 'user_last', 'user1', '08060720222', 'user1@activelearning.ro', NULL, '$2y$10$mEJek.bPXKRMqamhGLND5.8dqMv53oAjIngRgKNInKMR.eKWcuYyK', NULL, '2020-02-07 08:48:31', '2020-02-07 08:48:31', 2),
(5, 'Felicity McLaughlin', 'Prof. Kristy Hartmann PhD', 'abshire.madge', '(298) 203-3719', 'myrtie.spencer@senger.info', NULL, '$2y$10$qWKPs3a6fA1I.l24MFB.IORNouS3pSqlinX.52e3VejWFqXBMWi1K', NULL, '2020-02-07 09:02:57', '2020-02-07 09:02:57', 2),
(6, 'Nannie Stark', 'Carolanne Kuhn PhD', 'lubowitz.anne', '(307) 836-2507 x169', 'antone.miller@rohan.net', NULL, '$2y$10$5Mjdyi.b8a825fV7lXFz8eD2KmEcsbKDmYpKcJ8xK8rMr3fozxAoK', NULL, '2020-02-07 09:02:57', '2020-02-07 09:02:57', 2),
(7, 'Reyes O\'Connell', 'Liliane Gleichner', 'ystracke', '+1.786.387.1631', 'israel31@yahoo.com', NULL, '$2y$10$xis6IxxPRXtUrM1HjVZwNOHwrBySUQPyXI0aPZjAhT0J3i/8uTu4i', NULL, '2020-02-07 09:02:57', '2020-02-07 09:02:57', 2),
(8, 'Kayley Lehner Sr.', 'Prof. Alexandre Bins', 'rrath', '+1 (886) 956-3128', 'raina59@gmail.com', NULL, '$2y$10$8ur5QS2S5wyGKoBssieaIua9q0dmhjmz7Zzyt/mnRJsWKgWOejxGW', NULL, '2020-02-07 09:02:57', '2020-02-07 09:02:57', 2),
(9, 'Wendell Fritsch', 'Luther Goyette', 'marquardt.dameon', '550.899.6005 x5521', 'pbins@gmail.com', NULL, '$2y$10$xTWIrHPKXcqRrSHed9rQ2OlIe16OBCeHd/3YE2L88o2/llbwyj7zC', NULL, '2020-02-07 09:02:57', '2020-02-07 09:02:57', 2),
(10, 'Prof. Marcus Homenick I', 'Kathryne Parker', 'champlin.titus', '(446) 655-6380', 'ewillms@hotmail.com', NULL, '$2y$10$ltpnwWOMu8Gn7O5CL4gCJu4GqWYWfkc2WqDMfrdIS8fTB5Y2tJ9RG', NULL, '2020-02-07 09:02:57', '2020-02-07 09:02:57', 2),
(11, 'Dr. Regan Towne', 'Prof. Hildegard Funk', 'kathryn08', '+1-993-622-0953', 'kelton.shanahan@adams.com', NULL, '$2y$10$miD9YTCJNM5.2hsE2fu5n.S2CJmJluWDm52x5tIgKuz4fpLJvrh22', NULL, '2020-02-07 09:02:57', '2020-02-07 09:02:57', 2),
(12, 'Prof. Camden Wyman', 'Americo Haley III', 'homenick.abraham', '930-904-6054 x053', 'wpollich@franecki.info', NULL, '$2y$10$ydWk3P8z.lHCQ5qbwv1AV.DpckJOETLwy.F.stPytTPLZKPy3nuGW', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2),
(13, 'Jackeline Kozey', 'Devon Labadie', 'lilian.goldner', '1-647-276-9276', 'jboehm@yahoo.com', NULL, '$2y$10$0dym71yBoUTe/jO6PzaVCOefYQocMqhdmytUH5yotNU7K4BeGTvpC', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2),
(14, 'Mrs. Suzanne Paucek', 'Sydnie Cummerata II', 'orn.leopoldo', '+1 (974) 217-1633', 'wtorphy@hotmail.com', NULL, '$2y$10$iIk4o5GZ99Pysj92CBVrleSzeIKaDyZuTB0CP90rCR13Cuy3eTKga', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2),
(15, 'Lexi Sauer', 'Sandrine Paucek', 'udavis', '(356) 841-4689', 'moberbrunner@gmail.com', NULL, '$2y$10$Rev08.9mQtJWk1aPgIzL2eKrUXo0DQhhnlNaiMm6tpA4pUPd6.2/6', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2),
(16, 'Ms. Lauriane Fisher I', 'Trevion Pagac', 'ahowe', '+1.537.833.5776', 'khoeger@hotmail.com', NULL, '$2y$10$u3iawJ5.rqkewcaAHtj55.hRc9lE4RoLnoPE7N9uS6kB3DcpJmJnW', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2),
(17, 'Earnest Rutherford', 'Leone Champlin I', 'deron.wintheiser', '805-804-6852', 'morar.cortez@beatty.com', NULL, '$2y$10$jK1VFZFRdDdw2U8vciY9KOC8Vj6KRnINNPInthyyFgk5pt7yg7MeO', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2),
(18, 'Mrs. Pearl Boyle', 'Nash Bartoletti', 'iortiz', '959-447-4444 x925', 'stanton.robbie@koss.com', NULL, '$2y$10$P517XUpp6hYlv/RU2awm5e44Awnkg4XHriC680RiZwdKc/uQQWupq', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2),
(19, 'Lisa Wilkinson', 'Buford Larkin', 'stokes.brendon', '1-872-981-1431 x41074', 'jett.roberts@gmail.com', NULL, '$2y$10$6PqQ5v3qZ/5.L/NG2zuhVei.Fxrlt8F77y6.eGq6FmKSmoifKbQXe', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2),
(20, 'Keshawn Rath', 'Juston Zemlak DDS', 'neva.roberts', '1-392-859-1771 x0784', 'ylubowitz@cronin.info', NULL, '$2y$10$orhJl/vDkGbP2CycwCJhs.a/KhIThzrv8z8PkNFXkEH4Io7lpe8zu', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2),
(21, 'Erin Satterfield', 'Lennie Mitchell', 'oquigley', '+15866390342', 'harvey.jodie@hotmail.com', NULL, '$2y$10$08rmbApJ0jJ54bHOguVLx.T2tpitDGWNzER0zm4yZ3N2xogXocKf2', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2),
(22, 'Roma Ruecker', 'Brennon Pfannerstill', 'emile87', '872.416.8415 x49296', 'qgislason@strosin.biz', NULL, '$2y$10$Q1n1B95NvcC5lxd0llahMev3YW0t6WiFCXI2wQ1zyvyJC/cvLcwcS', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2),
(23, 'Montana Bergstrom', 'Scottie Emmerich', 'moen.flo', '+1-976-952-9560', 'delphine21@cruickshank.info', NULL, '$2y$10$2Gv4btM2dm0aS9ds10PAnOwIuSXv2vITsE1Yc5hoIuWAxP7MLfmDW', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2),
(24, 'Alexandria Beer', 'Javonte Lesch', 'gleichner.bradford', '(496) 675-0852 x23100', 'schuster.darren@gmail.com', NULL, '$2y$10$Odl4R8.IM4UQ/syvmL5tteCyM87c/fhZt9/fF6hri0ToD68nOzWZO', NULL, '2020-02-07 09:02:58', '2020-02-07 09:02:58', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
