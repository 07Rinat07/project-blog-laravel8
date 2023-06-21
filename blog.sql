-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 21 2023 г., 23:18
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
(1, 'Природа', '2023-06-20 14:11:32', '2023-06-20 14:11:32', NULL),
(2, 'Путешествия', '2023-06-20 14:11:43', '2023-06-20 14:11:43', NULL),
(3, 'Авто', '2023-06-20 14:11:51', '2023-06-20 14:11:51', NULL),
(4, 'Море', '2023-06-20 14:11:57', '2023-06-20 14:11:57', NULL),
(5, 'Домашнии питомцы', '2023-06-20 14:12:07', '2023-06-20 14:12:07', NULL),
(6, 'Новости', '2023-06-20 14:12:16', '2023-06-20 14:12:16', NULL),
(7, 'юмор', '2023-06-20 14:12:22', '2023-06-20 14:12:22', NULL),
(8, 'селфи', '2023-06-20 14:12:29', '2023-06-20 14:12:29', NULL);

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
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2023_06_16_164531_create_categories_table', 1),
(25, '2023_06_16_165449_create_posts_table', 1),
(26, '2023_06_16_165610_create_tags_table', 1),
(27, '2023_06_16_165818_create_post_tags_table', 1),
(28, '2023_06_19_140806_add_soft_delete_to_tags_table', 1),
(29, '2023_06_20_055743_add_columns_for_images_to_posts_table', 1),
(30, '2023_06_20_121727_add_column_soft_deletes_to_categories_table', 1),
(32, '2023_06_21_074131_add_soft_deletes_to_posts_table', 2),
(34, '2023_06_21_193603_add_soft_deletes_to_users_table', 3);

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
(2, 'Прогулка', 'fvdsvfd', 4, '2023-06-20 16:24:40', '2023-06-21 04:35:37', 'images/fQ7CdZMdrJmpNLf20v0270vYh2IBwObEkoUqcxX9.jpg', 'images/790UkfwJUMuKitShdN2GT36excjNTdzS92hxzgN8.jpg', NULL),
(3, 'Отдых', 'домашнии мурки итд', 4, '2023-06-20 16:36:01', '2023-06-21 04:45:15', 'images/np6bjHycQ99QsqlenW8ZZtIzVjNnT0sUnLLIG1oQ.jpg', 'images/KrOC9VFfuMxOiN0d8EVpWflsMeluhGyiLivE30gQ.jpg', '2023-06-21 04:45:15'),
(4, 'testagain1', 'eeeeew', 2, '2023-06-21 06:21:47', '2023-06-21 06:29:16', 'images/5m3ChfWPtSQNjKJtYQ7NwQEuoRfU7cHvPW9YLt8o.jpg', 'images/HoqUhBHu5Qj5aYIbclQx0rfBm1uEP5MLvB6HGrwx.jpg', NULL),
(5, 'Test post2', 'test content1', 2, '2023-06-21 11:14:01', '2023-06-21 16:03:00', 'images/SxokALpX3qxW61UcUvbmvwA4xPsJhVsVs11iHIjK.jpg', 'images/gUx6LzCSbfx6GMlxy1OG3CJxuLq7ZCCyD9shRU60.jpg', NULL);

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
(1, 2, 3, NULL, NULL),
(2, 2, 6, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 3, 6, NULL, NULL),
(5, 3, 7, NULL, NULL),
(6, 2, 2, NULL, NULL),
(7, 4, 3, NULL, NULL),
(8, 4, 7, NULL, NULL),
(9, 5, 3, NULL, NULL),
(11, 5, 7, NULL, NULL);

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
(1, 'питомцы', '2023-06-20 14:12:53', '2023-06-20 14:12:53', NULL),
(2, 'пейзаж', '2023-06-20 14:13:07', '2023-06-20 14:13:07', NULL),
(3, 'горы', '2023-06-20 14:13:15', '2023-06-20 14:13:15', NULL),
(4, 'в горах', '2023-06-20 14:14:07', '2023-06-20 14:14:16', '2023-06-20 14:14:16'),
(5, 'животные', '2023-06-20 14:14:31', '2023-06-20 14:14:31', NULL),
(6, 'селфи', '2023-06-20 14:14:38', '2023-06-20 14:14:38', NULL),
(7, 'видеосьемка и фотографии интересных мест', '2023-06-20 14:15:06', '2023-06-20 14:15:06', NULL),
(8, 'weather', '2023-06-21 16:04:35', '2023-06-21 16:04:35', NULL);

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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Nametest', 'test@gmail.com', NULL, '$2y$10$WxdJ93Y..df/VxN44aOaxeYk250fcx7p20FSa0GqVQXS9OdlXCPXW', NULL, '2023-06-21 16:41:10', '2023-06-21 16:41:14', '2023-06-21 16:41:14'),
(3, 'Bob', 'bob@gmail.com', NULL, '$2y$10$436.73.D0aYHNXFAGGBuruGQWU3nAPuLrLMNWD/OJRFIVejhPu8ae', NULL, '2023-06-21 16:58:40', '2023-06-21 17:14:53', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
