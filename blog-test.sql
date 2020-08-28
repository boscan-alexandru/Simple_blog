-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: aug. 28, 2020 la 11:07 AM
-- Versiune server: 10.1.37-MariaDB
-- Versiune PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `blog-test`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `failed_jobs`
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
-- Structură tabel pentru tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2014_10_12_000000_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/img/default.jpg',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `image_url`, `status`, `created_at`, `updated_at`) VALUES
(3, 'asdadfsdfsdfsdfsd', 'werwerwerwerwe', 'img/1598561805.jpg', 'ertertert', '2020-08-27 17:56:46', '2020-08-27 17:56:46'),
(4, 'contact', 'etetetertet', 'img/1598562378.jpg', 'ertertert', '2020-08-27 18:06:18', '2020-08-27 18:06:18'),
(5, 'sdfsdfsfdssfsd', 'sdfsdfsdfsdfsd', 'img/1598563649.gif', 'Nigga', '2020-08-27 18:27:29', '2020-08-27 18:27:29'),
(6, 'This is a post', 'This is a awesome post by me!', 'img/1598563690.jpg', 'Done', '2020-08-27 18:28:10', '2020-08-27 18:28:10'),
(7, 'asdadfsdfsdfsdfsd', 'thissssss', 'img/1598564048.jpg', 'Ciorna', '2020-08-27 18:34:08', '2020-08-27 18:34:08'),
(8, 'sdfsdfsdfsdf', 'sdsdfsdfsdfsdf', 'img/1598564074.jpg', 'Status', '2020-08-27 18:34:34', '2020-08-27 18:34:34'),
(9, 'asdasdfsdfsd', 'sdfsdfsdfsdfsd', 'img/1598564102.png', 'Publicat', '2020-08-27 18:35:02', '2020-08-27 18:35:02'),
(10, 'my post ford', 'sdfsdfsdfsdfsdfsdfsdf', 'img/1598564129.jpeg', 'postat', '2020-08-27 18:35:29', '2020-08-27 18:35:29');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alexandru Boscan', 'alexboscan4@gmail.com', NULL, '$2y$10$YgEuCSyOZiMYBU8P3qNP4OECQXoJA/oMmtTgkD7Ls1I8TYqWfgZAW', NULL, '2020-08-27 15:55:08', '2020-08-27 15:55:08');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexuri pentru tabele `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_id_unique` (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pentru tabele `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
