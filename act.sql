-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 08, 2020 at 08:29 AM
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
  `published_date` date DEFAULT NULL,
  `purchased` tinyint(1) DEFAULT NULL,
  `special_offer` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `image_url`, `published_date`, `purchased`, `special_offer`, `created_at`, `updated_at`) VALUES
(1, 'Isabell Purdy', 'https://lorempixel.com/640/480/?26556', '2020-02-07', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(2, 'Marjory Walter', 'https://lorempixel.com/640/480/?17185', '2020-02-07', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(3, 'Mozell Brown', 'https://lorempixel.com/640/480/?69701', '2020-02-07', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(4, 'Dominique Kulas', 'https://lorempixel.com/640/480/?56932', '2020-02-07', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(5, 'Mitchell Price IV', 'https://lorempixel.com/640/480/?45617', '2020-02-07', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(6, 'Holden McLaughlin Sr.', 'https://lorempixel.com/640/480/?90156', '2020-02-07', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(7, 'Whitney Sporer Jr.', 'https://lorempixel.com/640/480/?56830', '2020-02-07', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(8, 'Lizeth Swaniawski', 'https://lorempixel.com/640/480/?68004', '2020-02-07', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(9, 'Fiona Wisoky', 'https://lorempixel.com/640/480/?38765', '2020-02-07', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(10, 'Kathleen Leannon', 'https://lorempixel.com/640/480/?94258', '2020-02-07', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(11, 'Dorris Olson', 'https://lorempixel.com/640/480/?61765', '2020-02-07', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(12, 'Dr. Haylie Dibbert', 'https://lorempixel.com/640/480/?12648', '2020-02-07', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(13, 'Dr. Morton Cummings V', 'https://lorempixel.com/640/480/?85501', '2020-02-07', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(14, 'Hilbert Rohan', 'https://lorempixel.com/640/480/?93130', '2020-02-07', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(15, 'Gregorio Schmitt', 'https://lorempixel.com/640/480/?86397', '2020-02-07', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(16, 'Skye Harvey V', 'https://lorempixel.com/640/480/?69018', '2020-02-07', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(17, 'Rafaela Rath', 'https://lorempixel.com/640/480/?63612', '2020-02-07', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(18, 'Miss Jordane Huel', 'https://lorempixel.com/640/480/?24127', '2020-02-07', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(19, 'Dr. Alicia Marquardt II', 'https://lorempixel.com/640/480/?49677', '2020-02-07', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(20, 'Meta Parker', 'https://lorempixel.com/640/480/?19879', '2020-02-07', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(21, 'Mr. William McDermott II', 'https://lorempixel.com/640/480/?67380', '2020-02-07', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(22, 'Rebeca Doyle DDS', 'https://lorempixel.com/640/480/?14600', '2020-02-07', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(23, 'Mr. Amari Wiegand', 'https://lorempixel.com/640/480/?64350', '2020-02-07', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(24, 'Dalton Aufderhar I', 'https://lorempixel.com/640/480/?72103', '2020-02-07', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(25, 'Pascale Crona', 'https://lorempixel.com/640/480/?40435', '2020-02-07', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(27, 'Kattie Hauck', 'https://lorempixel.com/640/480/?27774', '2020-02-07', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(28, 'Ms. Lorna Mosciski', 'https://lorempixel.com/640/480/?45469', '2020-02-07', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(29, 'Eleanore Herzog', 'https://lorempixel.com/640/480/?58690', '2020-02-07', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(30, 'Alejandrin Carroll', 'https://lorempixel.com/640/480/?91571', '2020-02-07', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(31, 'Cletus Krajcik', 'https://lorempixel.com/640/480/?69889', '2020-02-07', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(32, 'Nia Jacobi', 'https://lorempixel.com/640/480/?76495', '2020-02-07', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(33, 'Prof. Lee Runolfsson', 'https://lorempixel.com/640/480/?23039', '2020-02-07', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(34, 'Ena Bernier', 'https://lorempixel.com/640/480/?88342', '2020-02-07', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(35, 'Rickey Shanahan II', 'https://lorempixel.com/640/480/?54061', '2020-02-07', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(36, 'Myrna Predovic', 'https://lorempixel.com/640/480/?28629', '2020-02-07', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(37, 'Buck White', 'https://lorempixel.com/640/480/?55096', '2020-02-07', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(38, 'Oda Lemke', 'https://lorempixel.com/640/480/?70120', '2020-02-07', 0, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(39, 'Milton Koss Jr.', 'https://lorempixel.com/640/480/?36142', '2020-02-07', 1, 0, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(40, 'Jaquan Schamberger DDS', 'https://lorempixel.com/640/480/?85853', '2020-02-07', 1, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(41, 'Arnoldo Shanahan', 'https://lorempixel.com/640/480/?81528', '2020-02-07', 0, 1, '2020-02-07 09:37:57', '2020-02-07 09:37:57'),
(42, 'Book of Life', 'https://lorempixel.com/640/480/?26556', '2020-01-28', 0, 1, '2020-02-07 20:31:01', '2020-02-07 20:31:01'),
(43, 'Book of Lies', 'https://lorempixel.com/640/480/?26557', '2020-01-29', 0, NULL, '2020-02-07 20:46:05', '2020-02-07 20:46:05');

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
(11, '2020_02_07_100556_add_user_role_to_users_table', 4),
(12, '2020_02_07_101617_create_role_user', 5),
(13, '2020_02_07_093212_add_new_columns_to_users_table', 6);

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
('1505eb2aa56330cfec442da393aa18ae8cff9b7ce958e21e3e8895b98c9a62150541819b6d4cb5f6', 26, 3, 'activelearning', '[]', 0, '2020-02-07 18:46:42', '2020-02-07 18:46:42', '2021-02-07 19:46:42'),
('465d1dad1f75f12b9ffe460923072f3cba1aab56cc8ea870a3b42511dac2b496fc0b77561e362233', 1, 3, 'activelearning', '[]', 0, '2020-02-07 13:39:54', '2020-02-07 13:39:54', '2021-02-07 14:39:54'),
('69e23369451b7a721a1bab5f64fb32de0148d79eb00d7ec86bd6d68754d313e167b3779772603868', 4, 3, 'activelearning', '[]', 0, '2020-02-07 09:53:07', '2020-02-07 09:53:07', '2021-02-07 10:53:07'),
('8a81cac04d5fa3432d48330de38c8a761252fbd65ebbefdadd38526a897534a0d09e5ca31bba24ce', 1, 3, 'activelearning', '[]', 0, '2020-02-07 05:57:33', '2020-02-07 05:57:33', '2021-02-07 06:57:33'),
('b5d15be5fb6140e951c05c5911852024351ed81838ab5c09bd93d6707cd000dc77522ecdcc34ce81', 26, 3, 'activelearning', '[]', 0, '2020-02-07 19:27:08', '2020-02-07 19:27:08', '2021-02-07 20:27:08'),
('b7292c852d9d391448a18c5e6104795c4596501be9b8713c6a0fd92dea1c4f3c24e3f6ecc38fde07', 26, 3, 'activelearning', '[]', 0, '2020-02-07 20:20:14', '2020-02-07 20:20:14', '2021-02-07 21:20:14'),
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
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(26, 'user1', 'Seks', 'users', '0806067222', 'user@activelearning.ro', NULL, '$2y$10$h0s9PnE1Y.fmgwjjccK1B.P59scW2VRmuhJc.VeT9IUG4TwVjzUbi', NULL, '2020-02-07 18:45:51', '2020-02-07 18:45:51', 1),
(27, 'Kathleen Block', 'Minnie Kiehn', 'ihoeger', '+1 (874) 221-0850', 'lea.connelly@nicolas.com', NULL, '$2y$10$t8/NetjQ3opDoCNdr7XOK.eUiZejl4vY7ZheVmFrU9ZSteW.5Q.ky', NULL, '2020-02-07 18:45:51', '2020-02-07 18:45:51', 2),
(28, 'Heather Kuphal', 'Vivian Friesen', 'users', '080808080', 'pokuneva@yahoo.com', NULL, 'password', NULL, '2020-02-07 18:45:51', '2020-02-07 20:21:55', 2),
(29, 'Tyson Labadie', 'Meghan Harber IV', 'dana.monahan', '426-823-7645', 'ctorp@pouros.net', NULL, '$2y$10$0Md6wAa56zVnQ/LIqoj8QORk8o.jIocFm3caU12PhcJ/ghfgrzTQm', NULL, '2020-02-07 18:45:51', '2020-02-07 18:45:51', 2),
(30, 'Mr. Milford Windler', 'Anderson Cummings', 'cornelius89', '+1-560-757-7399', 'jtromp@hotmail.com', NULL, '$2y$10$FMhQlhSNYnHsQEmmWVVqcOMmF0VDQkkxAq/c6Hx/Q.6M0Z6D66LsG', NULL, '2020-02-07 18:45:51', '2020-02-07 18:45:51', 2),
(31, 'Miss Gia Langosh', 'Kenya Bradtke', 'sid.abbott', '1-871-640-7678 x38509', 'nfay@volkman.org', NULL, '$2y$10$v55BYJIVCXBUuZg3BJEVxubcNf0GSuO4/cwGPSe6vsJvrak9a0cCe', NULL, '2020-02-07 18:45:51', '2020-02-07 18:45:51', 2),
(32, 'Kelsi Hane', 'Jarrell Williamson', 'zdurgan', '(657) 983-0935', 'vritchie@yahoo.com', NULL, '$2y$10$q3dujPHN/AgbUGGciIgzd.73iJ09y3h.St4A0uYqwnvzsjqYmUFAC', NULL, '2020-02-07 18:45:51', '2020-02-07 18:45:51', 1),
(33, 'Alejandra Mraz', 'Mallory Pouros', 'hickle.alexandria', '719-875-5657 x72807', 'america.bahringer@cartwright.com', NULL, '$2y$10$6GpaoqRfbp5INPtX/.BHm.9D3rZ4zKLtuyA4n4MxVjWIeHL/W/y12', NULL, '2020-02-07 18:45:51', '2020-02-07 18:45:51', 2),
(34, 'Myrtice Lebsack', 'Mollie Feest MD', 'sporer.jerrell', '(652) 806-9294', 'jlubowitz@parker.org', NULL, '$2y$10$0Ggx8k.JPwWkAJ5En04SCuNurkngm5TWk1FP6F2RYZrgpAJNaHhzW', NULL, '2020-02-07 18:45:51', '2020-02-07 18:45:51', 2),
(35, 'Mr. Berta Predovic Jr.', 'Maxwell Wisozk', 'mschmidt', '+18988996085', 'wisozk.schuyler@gmail.com', NULL, '$2y$10$4FCOGLiWpbJkyIdMnRSkm.o4xspPh7CIEt1KQTu1BJ.mS0PRnIAze', NULL, '2020-02-07 18:45:51', '2020-02-07 18:45:51', 2),
(36, 'Barry Gorczany', 'Claire Simonis', 'jayme40', '360-990-3752 x4238', 'volkman.felicia@hotmail.com', NULL, '$2y$10$1DhJoIZvWAeY1RY4gjRwQe1Q7Wlf5iti66g9sYBYqr2P4gVYSrnui', NULL, '2020-02-07 18:45:51', '2020-02-07 18:45:51', 1),
(37, 'Everardo Lynch', 'Margaret Kuphal', 'lenny09', '(869) 224-0101', 'iolson@hotmail.com', NULL, '$2y$10$CpJgj1CjOgDslJlURyIcquv2dElp1v75XZjMAf3ozPiYoBnD/umly', NULL, '2020-02-07 18:45:51', '2020-02-07 18:45:51', 2),
(38, 'Rosetta Thiel', 'Chase Kautzer', 'houston00', '1-998-612-4210 x42581', 'jhowe@harris.com', NULL, '$2y$10$qSPAstXIQ7u0MINowC3NyOv0ZCr11/Gf8Wxc/Fji/uBBpUQ0XoMVm', NULL, '2020-02-07 18:45:52', '2020-02-07 18:45:52', 2),
(39, 'Emiliano Waelchi', 'Prof. Sierra Goyette DVM', 'carmela.pagac', '870.628.1781', 'drussel@moen.com', NULL, '$2y$10$3vfpjKhGW9vzssbhTUVu8uP3PhBYqzOPbFnjh.hn3IUoTbe9ZqQ4O', NULL, '2020-02-07 18:45:52', '2020-02-07 18:45:52', 2),
(40, 'Dr. Jasper Lowe DVM', 'Carissa Bartell', 'pmaggio', '559-648-6489 x927', 'royal08@cronin.biz', NULL, '$2y$10$Eou91mKbcdzspLVIsTx6Q.g.UOcpeZXZnayOTJIDFhpQZGxBCeJ2e', NULL, '2020-02-07 18:45:52', '2020-02-07 18:45:52', 1),
(41, 'Prof. Rosamond Kilback PhD', 'Tressa Kulas IV', 'verlie27', '+1.509.776.7198', 'mjaskolski@yahoo.com', NULL, '$2y$10$R4XfFaCC2/kl.wM4g/9qTOhqZPeQzxas/M.NZIzZXudIRCSe9Furu', NULL, '2020-02-07 18:45:52', '2020-02-07 18:45:52', 2),
(42, 'Edgardo Rau', 'Isadore Mertz', 'nstamm', '(595) 406-3811 x2266', 'wshields@zboncak.com', NULL, '$2y$10$IGsr1KVvd0ZZ5yLLAoadau1TXWHp5hQMAmdfL0ipnP8Wk1Jtz3QfS', NULL, '2020-02-07 18:45:52', '2020-02-07 18:45:52', 2),
(43, 'Chelsie Cronin', 'Lizeth Moen', 'alvah.pfannerstill', '264-344-8183 x411', 'zkuhn@hotmail.com', NULL, '$2y$10$Q4DI3CQ5SS1a6Qt1sfC6xuHVgQtipmkuYQtST7YGp15qfYZ9AS8qy', NULL, '2020-02-07 18:45:52', '2020-02-07 18:45:52', 2),
(44, 'Mr. Sven Yost', 'Laurence Harris III', 'cfeil', '+1.848.566.0425', 'christiansen.jeanette@sauer.com', NULL, '$2y$10$F2RQV4KgCHVwh5AFOnGgpunwaZf7i7J9LErcLs/uiRpGzHDura8gC', NULL, '2020-02-07 18:45:52', '2020-02-07 18:45:52', 2),
(45, 'Kenna Grimes', 'Rhea Hills', 'welch.jack', '(523) 665-6684 x3657', 'jayde.johns@hotmail.com', NULL, '$2y$10$hsDUHAEcluQp.a9m8x.00OaazT.6jRIquM.slEdmVTwIfKnDMRKC6', NULL, '2020-02-07 18:45:52', '2020-02-07 18:45:52', 2),
(46, 'Prof. Elise Fadel', 'Hope Prosacco', 'daugherty.maximillian', '463-458-6375', 'hodkiewicz.ian@hotmail.com', NULL, '$2y$10$MfzhHly63Jx.BpEbFL95X.9NiEw0XG.gJ6PgcUJXGIiPeqTb83qf.', NULL, '2020-02-07 18:45:52', '2020-02-07 18:45:52', 2),
(47, 'Antonina Welch PhD', 'Alana Schroeder', 'josiah66', '+1 (516) 978-3689', 'hayden69@gottlieb.info', NULL, '$2y$10$/s7T.0dukzt0UxCtvEk5QO6YfrVRfC31EOhZGDBpKxpEuADcktLla', NULL, '2020-02-07 18:45:52', '2020-02-07 18:45:52', 2);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
