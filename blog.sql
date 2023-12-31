-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: srv-pleskdb42.ps.kz:3306
-- Время создания: Июн 30 2023 г., 15:19
-- Версия сервера: 10.6.11-MariaDB
-- Версия PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `un343748_blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Путешествие', '2023-06-24 14:59:46', '2023-06-24 14:59:46', NULL),
(2, 'Спорт', '2023-06-24 14:59:54', '2023-06-24 14:59:54', NULL),
(3, 'Досуг и хобби', '2023-06-24 15:00:04', '2023-06-24 15:00:04', NULL),
(4, 'Автомир', '2023-06-24 15:00:14', '2023-06-28 13:03:48', NULL),
(5, 'новости мира', '2023-06-24 15:00:27', '2023-06-28 13:03:24', '2023-06-28 13:03:24'),
(6, 'вебпрограммирование', '2023-06-24 15:00:42', '2023-06-28 13:03:20', '2023-06-28 13:03:20'),
(7, 'айти новости', '2023-06-24 15:00:54', '2023-06-28 13:03:17', '2023-06-28 13:03:17'),
(8, 'Любимые места', '2023-06-24 15:01:22', '2023-06-28 13:04:11', NULL),
(9, 'разные интересы', '2023-06-24 15:01:35', '2023-06-28 13:03:14', '2023-06-28 13:03:14'),
(10, 'работа', '2023-06-24 15:01:49', '2023-06-28 13:03:12', '2023-06-28 13:03:12'),
(11, 'приятное общение', '2023-06-24 15:02:07', '2023-06-28 13:03:10', '2023-06-28 13:03:10');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'С новым годом)', '2023-06-30 03:02:34', '2023-06-30 03:02:34'),
(2, 2, 1, 'как ты бро', '2023-06-30 03:04:09', '2023-06-30 03:04:09');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_08_100000_create_telescope_entries_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2023_06_16_164531_create_categories_table', 1),
(6, '2023_06_16_165449_create_posts_table', 1),
(7, '2023_06_16_165610_create_tags_table', 1),
(8, '2023_06_16_165818_create_post_tags_table', 1),
(9, '2023_06_19_140806_add_soft_delete_to_tags_table', 1),
(10, '2023_06_20_055743_add_columns_for_images_to_posts_table', 1),
(11, '2023_06_20_121727_add_column_soft_deletes_to_categories_table', 1),
(12, '2023_06_21_074131_add_soft_deletes_to_posts_table', 1),
(13, '2023_06_21_193603_add_soft_deletes_to_users_table', 1),
(14, '2023_06_22_050234_add_column_role_to_users_table', 1),
(15, '2023_06_23_083326_create_jobs_table', 1),
(16, '2023_06_24_093115_create_post_user_likes_table', 1),
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_resets_table', 1),
(34, '2019_08_19_000000_create_failed_jobs_table', 1),
(35, '2023_06_16_164531_create_categories_table', 1),
(36, '2023_06_16_165449_create_posts_table', 1),
(37, '2023_06_16_165610_create_tags_table', 1),
(38, '2023_06_16_165818_create_post_tags_table', 1),
(39, '2023_06_19_140806_add_soft_delete_to_tags_table', 1),
(40, '2023_06_20_055743_add_columns_for_images_to_posts_table', 1),
(41, '2023_06_20_121727_add_column_soft_deletes_to_categories_table', 1),
(42, '2023_06_21_074131_add_soft_deletes_to_posts_table', 1),
(43, '2023_06_21_193603_add_soft_deletes_to_users_table', 1),
(44, '2023_06_22_050234_add_column_role_to_users_table', 1),
(45, '2023_06_23_083326_create_jobs_table', 1),
(46, '2023_06_24_093115_create_post_user_likes_table', 1),
(47, '2023_06_24_170655_create_comments_table', 1),
(48, '2018_08_08_100000_create_telescope_entries_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('misha@gmail.com', '$2y$10$BvHLgJPYPm5kUdIvFUTB8OWcfpaQpAkfcxzU/LPD1Qdn.LzwUiPOu', '2023-06-29 06:07:08'),
('ura07srr@gmail.com', '$2y$10$wbPH54XZ/s1i5GsatzL2E.mgYHqZZdz2ozYZn5NyWW77p71kThSmG', '2023-06-29 06:10:57');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `preview_image` varchar(255) DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `category_id`, `created_at`, `updated_at`, `preview_image`, `main_image`, `deleted_at`) VALUES
(1, 'Прогулка по реке', 'прогулка на снегоходе по реке Чаган.', 3, '2023-06-24 15:10:30', '2023-06-24 15:10:30', 'images/lwWst1drm5B5mKTDUPFXt0zOXWSEHjZXiwxA3EDK.jpg', 'images/XDaDd7cdIm5jrwhU5eav7umZrfowO0kppnxRjFfR.jpg', NULL),
(2, 'Поездка в авто...', 'фото сделанное зимой....', 4, '2023-06-24 15:14:31', '2023-06-26 02:59:03', 'images/8301pexInrPjQ5MteZuyURJYKLtuxSLHBN86nXcG.jpg', 'images/VNlS5ls0ec0dLsmWOeJV25L49QVbPNKMO2kof8qT.jpg', NULL),
(3, 'Стамбул. Дворец Топкапе', 'прогулки по Стамбулу и его историческим местам...', 1, '2023-06-24 15:16:21', '2023-06-24 15:16:21', 'images/GRZNeBineH0OwS3XUr88xkQbZPR2fX5RvSW7ljwR.jpg', 'images/BiroE2WbNYa8C37Dr8cUhTlZhLMCmhubvfenOOiF.jpg', NULL),
(4, 'Прогулка по проливу Босфор', 'Прогулка по проливу Босфор в Стамбуле...', 8, '2023-06-24 15:18:55', '2023-06-24 15:18:55', 'images/7RgzpgeQGUyZTCfMqoM6o7WU0DjFCNzDBbZ2ril4.jpg', 'images/gVonsRiYXIFOoW5uZqkXSjuVfTmsl44xZZJjjGaS.jpg', NULL),
(5, 'Полет на воздушном шаре', 'Полет на воздушном шаре в национальном парке под открытым небом Каппадокия вблизи города Гереме страны Турция.', 8, '2023-06-24 15:21:27', '2023-06-24 15:21:27', 'images/31X4SQQVBxqe5qMeXZAXnr5NEodkWvCTeGzmHdWt.png', 'images/AfTDza0lOzrU5iAQ0PuCJJObj2IsuIS17YzVLwki.png', NULL),
(6, 'Я на прогулке', 'Прогулка по Новой площади в своем родном городе)', 3, '2023-06-24 15:25:54', '2023-06-24 15:25:54', 'images/fz9VjtJwLeVkCCqU7DsYYRNBqVbedGkqV6x25yCa.jpg', 'images/4htzdsAUp0tK5DabDutvMjfjb06UbqNXJ6763DBR.jpg', NULL),
(7, 'Красное море - погружение на коралловый риф', 'Египет. Шарм Аль Шейх. Прогулка по морю и дайвинг.', 3, '2023-06-25 12:45:10', '2023-06-25 12:45:10', 'images/h7w6Yyj4CXa3rXs88z1Sv1OpQihXSYonQLGEfmGZ.jpg', 'images/pSRJBkl4VGW5DvaUKy2tEBev9UjAMACbPy2uO5Cn.jpg', NULL),
(8, 'Пирамиды', 'Египет. Каир. Пирамиды', 1, '2023-06-25 12:46:55', '2023-06-25 12:46:55', 'images/KWpdl8JGw9PKfoKr1lDOKxYPNHP4Xi7FhqTmPzrk.jpg', 'images/75DaxOYJS7G5X6ejeTHLoEVcWwa3y6zrEUnLtEma.jpg', NULL),
(9, 'Отель Аква блу с аквапарком', 'отдых в аквапарке', 1, '2023-06-25 12:48:44', '2023-06-25 12:48:44', 'images/hykNyXkFbQIHd1QZ4k5L0xNMkk2GLilH5lF7hKFa.jpg', 'images/NsK319Mu6PcJ6qTYuIUDK7qsQMKlwVQLsI2Rv37F.jpg', NULL),
(10, 'Рос Мохаммед врата Аллаха', 'Египет. Экскурсия по заповедникам Рос Мохаммед итд', 1, '2023-06-25 12:51:15', '2023-06-25 12:51:15', 'images/ahUP5QUIkFCCrpy2tXu4AgxdMb4usKJImzMBvC57.jpg', 'images/jDifVmXqjnLnlZzFJ2PIuFcjxoN2zMLcGmryBfp1.jpg', NULL),
(11, 'Шарм Аль Шейх Аквапарк 5*', '&nbsp;Прогулка по территории отеля Шарм Аль Шейх Аквапарк 5*', 1, '2023-06-25 12:53:42', '2023-06-25 12:53:42', 'images/wg1KX0RNoXYSRlukTbutlW2gHevk7EIBkLocIRiZ.jpg', 'images/1cgdjLmGC175AKpBugJJcYo591dBYRBQLZiijFsa.jpg', NULL),
(12, 'Бухта', 'Египет. Шарм Аль Шейх. Экскурсия по морю и суши.', 1, '2023-06-25 12:55:51', '2023-06-28 13:05:34', 'images/Klb92un6DzoGnOiznIliAJoe25PykSqhvstt5FDg.jpg', 'images/6zzuYkal9N2No6vyPL5QgvO2elDyUl6ttFkA4X7Q.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `post_user_likes`
--

CREATE TABLE `post_user_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_user_likes`
--

INSERT INTO `post_user_likes` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Лето', '2023-06-24 14:55:24', '2023-06-24 14:55:24', NULL),
(2, 'Осень', '2023-06-24 14:55:32', '2023-06-24 14:55:32', NULL),
(3, 'авто', '2023-06-24 14:55:49', '2023-06-24 14:55:49', NULL),
(4, 'горы', '2023-06-24 14:55:56', '2023-06-24 14:55:56', NULL),
(5, 'море', '2023-06-24 14:56:02', '2023-06-24 14:56:02', NULL),
(6, 'селфи', '2023-06-24 14:56:09', '2023-06-24 14:56:09', NULL),
(7, 'улыбки', '2023-06-24 14:56:18', '2023-06-24 14:56:18', NULL),
(8, 'природа', '2023-06-24 14:56:25', '2023-06-24 14:56:25', NULL),
(9, 'отдых', '2023-06-24 14:56:34', '2023-06-24 14:56:34', NULL),
(10, 'пейзажи', '2023-06-24 14:56:49', '2023-06-24 14:56:49', NULL),
(11, 'фото и видеосьемка', '2023-06-24 14:57:57', '2023-06-24 14:57:57', NULL),
(12, 'дома', '2023-06-24 14:58:28', '2023-06-24 14:58:28', NULL),
(13, 'амфитеатр', '2023-06-24 14:58:50', '2023-06-24 14:58:50', NULL),
(14, 'прогулка', '2023-06-24 14:58:59', '2023-06-24 14:58:59', NULL),
(15, 'плавание', '2023-06-24 14:59:12', '2023-06-24 14:59:12', NULL),
(16, 'солнечный день', '2023-06-24 14:59:28', '2023-06-24 14:59:28', NULL),
(17, 'зима', '2023-06-25 12:38:54', '2023-06-25 12:38:54', NULL),
(18, 'весна', '2023-06-25 12:39:09', '2023-06-25 12:39:09', NULL),
(19, 'дайвинг', '2023-06-25 12:39:25', '2023-06-25 12:39:25', NULL),
(20, 'погружение', '2023-06-25 12:39:47', '2023-06-25 12:39:47', NULL),
(21, 'пирамиды', '2023-06-25 12:40:02', '2023-06-25 12:40:02', NULL),
(22, 'исторические места', '2023-06-25 12:40:16', '2023-06-25 12:40:16', NULL),
(23, 'отель', '2023-06-25 12:40:32', '2023-06-25 12:40:32', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `role`) VALUES
(1, 'admin', 'ura07srr@gmail.com', NULL, '$2y$10$RJ3MyNHCVxeccqkFWZMaKe72hpCQeJd77ZURBnzTm/P0TS8Sovos2', NULL, '2023-06-29 11:05:53', '2023-06-29 11:05:53', NULL, 1),
(2, 'Vasya S', 'volvo3@mail.ru', NULL, '$2y$10$oQRRLPIZHh30IwlhH7SvvusUhjcKGVzFF2j33i7IwUyRD9BDroaIO', NULL, '2023-06-30 02:58:32', '2023-06-30 02:58:32', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_idx` (`category_id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_idx` (`post_id`),
  ADD KEY `post_tag_tag_idx` (`tag_id`);

--
-- Индексы таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pul_post_idx` (`post_id`),
  ADD KEY `pul_user_idx` (`user_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `post_category_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tag_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_fk` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  ADD CONSTRAINT `pul_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `pul_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
