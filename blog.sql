-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 27 2023 г., 16:34
-- Версия сервера: 5.7.39
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, 'автомир', '2023-06-24 15:00:14', '2023-06-24 15:00:14', NULL),
(5, 'новости мира', '2023-06-24 15:00:27', '2023-06-24 15:00:27', NULL),
(6, 'вебпрограммирование', '2023-06-24 15:00:42', '2023-06-24 15:00:42', NULL),
(7, 'айти новости', '2023-06-24 15:00:54', '2023-06-24 15:00:54', NULL),
(8, 'любимые места', '2023-06-24 15:01:22', '2023-06-24 15:01:22', NULL),
(9, 'разные интересы', '2023-06-24 15:01:35', '2023-06-24 15:01:35', NULL),
(10, 'работа', '2023-06-24 15:01:49', '2023-06-24 15:01:49', NULL),
(11, 'приятное общение', '2023-06-24 15:02:07', '2023-06-24 15:02:07', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `message`, `created_at`, `updated_at`) VALUES
(5, 1, 11, 'Hello whats ap bro?', '2023-06-26 12:33:54', '2023-06-26 12:33:54'),
(6, 1, 5, 'hello', '2023-06-26 12:35:29', '2023-06-26 12:35:29'),
(7, 1, 5, 'Красиво...', '2023-06-26 13:44:11', '2023-06-26 14:03:21'),
(8, 1, 7, 'test comment', '2023-06-26 13:56:35', '2023-06-26 13:56:35'),
(9, 2, 2, 'hello bro', '2023-06-26 14:07:16', '2023-06-26 14:07:16'),
(10, 3, 2, 'Салам', '2023-06-26 14:29:41', '2023-06-26 14:29:41'),
(11, 3, 7, 'Ого)', '2023-06-27 06:37:23', '2023-06-27 06:37:23');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
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
(47, '2023_06_24_170655_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `preview_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(12, 'Смотровая площадка', 'Египет. Шарм Аль Шейх. Экскурсия по морю и суши.', 1, '2023-06-25 12:55:51', '2023-06-25 12:55:51', 'images/Klb92un6DzoGnOiznIliAJoe25PykSqhvstt5FDg.jpg', 'images/6zzuYkal9N2No6vyPL5QgvO2elDyUl6ttFkA4X7Q.jpg', NULL);

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

--
-- Дамп данных таблицы `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, NULL, NULL),
(2, 1, 8, NULL, NULL),
(3, 1, 9, NULL, NULL),
(4, 1, 10, NULL, NULL),
(5, 1, 11, NULL, NULL),
(6, 1, 14, NULL, NULL),
(7, 2, 3, NULL, NULL),
(8, 2, 6, NULL, NULL),
(9, 2, 11, NULL, NULL),
(10, 2, 14, NULL, NULL),
(11, 3, 1, NULL, NULL),
(12, 3, 9, NULL, NULL),
(13, 3, 11, NULL, NULL),
(14, 3, 14, NULL, NULL),
(15, 3, 16, NULL, NULL),
(16, 4, 1, NULL, NULL),
(17, 4, 5, NULL, NULL),
(18, 4, 6, NULL, NULL),
(19, 4, 9, NULL, NULL),
(20, 4, 11, NULL, NULL),
(21, 4, 14, NULL, NULL),
(22, 5, 1, NULL, NULL),
(23, 5, 4, NULL, NULL),
(24, 5, 6, NULL, NULL),
(25, 5, 8, NULL, NULL),
(26, 5, 10, NULL, NULL),
(27, 5, 14, NULL, NULL),
(28, 5, 16, NULL, NULL),
(29, 6, 1, NULL, NULL),
(30, 6, 6, NULL, NULL),
(31, 6, 7, NULL, NULL),
(32, 6, 11, NULL, NULL),
(33, 6, 14, NULL, NULL),
(34, 7, 5, NULL, NULL),
(35, 7, 9, NULL, NULL),
(36, 7, 11, NULL, NULL),
(37, 7, 15, NULL, NULL),
(38, 7, 19, NULL, NULL),
(39, 7, 20, NULL, NULL),
(40, 8, 6, NULL, NULL),
(41, 8, 16, NULL, NULL),
(42, 8, 21, NULL, NULL),
(43, 8, 22, NULL, NULL),
(44, 9, 5, NULL, NULL),
(45, 9, 9, NULL, NULL),
(46, 9, 11, NULL, NULL),
(47, 9, 14, NULL, NULL),
(48, 9, 17, NULL, NULL),
(49, 9, 23, NULL, NULL),
(50, 10, 9, NULL, NULL),
(51, 10, 11, NULL, NULL),
(52, 10, 14, NULL, NULL),
(53, 10, 16, NULL, NULL),
(54, 10, 22, NULL, NULL),
(55, 11, 5, NULL, NULL),
(56, 11, 6, NULL, NULL),
(57, 11, 9, NULL, NULL),
(58, 11, 11, NULL, NULL),
(59, 11, 14, NULL, NULL),
(60, 11, 16, NULL, NULL),
(61, 11, 23, NULL, NULL),
(62, 12, 4, NULL, NULL),
(63, 12, 5, NULL, NULL),
(64, 12, 6, NULL, NULL),
(65, 12, 7, NULL, NULL),
(66, 12, 8, NULL, NULL),
(67, 12, 10, NULL, NULL),
(68, 12, 14, NULL, NULL);

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
(36, 1, 2, NULL, NULL),
(40, 4, 2, NULL, NULL),
(43, 3, 2, NULL, NULL),
(53, 2, 2, NULL, NULL),
(58, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `role`) VALUES
(1, 'Rinat', 'ura07srr@gmail.com', '2023-06-24 14:54:52', '$2y$10$8gBaxHZqW8i3hc1.yk7ImuT1tpAEQMpz8Zvz76z8nNOlXCxbI3tj2', NULL, '2023-06-24 14:54:17', '2023-06-24 14:54:52', NULL, 1),
(2, 'Bob', 'bob@gmail.com', NULL, '$2y$10$45ySkwwzo6xYk8m3gziY0..Y.wD5Og03c2uUvbVKp5cZmn.JsT/gW', NULL, '2023-06-24 15:02:47', '2023-06-24 15:02:47', NULL, 0),
(3, 'Ivan', 'ivanov@mail.ru', '2023-06-26 14:16:55', '$2y$10$1UCfnFuz7BITPqr3C0hsj.BkbShqBn1nOSu5hb0sop9215ktZ9myq', NULL, '2023-06-26 14:15:40', '2023-06-26 14:16:55', NULL, NULL);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_idx` (`post_id`),
  ADD KEY `comments_user_idx` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
