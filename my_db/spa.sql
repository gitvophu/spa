-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th3 30, 2019 lúc 08:39 AM
-- Phiên bản máy phục vụ: 5.7.23
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `spa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_product_id_foreign` (`product_id`),
  KEY `comments_post_id_foreign` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(50, '2014_10_12_000000_create_users_table', 1),
(51, '2014_10_12_100000_create_password_resets_table', 1),
(52, '2019_03_28_131646_create_post_table', 1),
(53, '2019_03_28_131711_create_products_table', 1),
(54, '2019_03_28_131729_create_messages_table', 1),
(55, '2019_03_28_131746_create_comments_table', 1),
(56, '2019_03_28_131802_create_banners_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Sint animi et vitae dolores non animi voluptatibus consequatur.', 'assets/img/full-width/fullwidth01.jpg', 'Saepe et quae odio cupiditate nesciunt quia eaque saepe. Omnis repellat incidunt repellendus laudantium minus. Aut molestiae eum eos facere. Voluptas labore eaque ducimus eius tempora alias.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(2, 'Quis tempora non magni nam est.', 'assets/img/full-width/fullwidth01.jpg', 'Vitae dicta voluptas sint fugiat voluptas. Illo voluptas qui porro alias consequuntur omnis cum. Voluptatem omnis error vel quos rerum corrupti repellendus. Consequatur magni omnis voluptas veniam aut voluptatem. Ut vitae qui at quia eos. Voluptatem iure provident aspernatur voluptatum doloremque libero. Est cupiditate rem fugit voluptates pariatur ducimus.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(3, 'Necessitatibus commodi dicta quas labore.', 'assets/img/full-width/fullwidth01.jpg', 'Enim quis nobis quisquam at. Veniam et nesciunt porro et sit natus iste id. Aut consequatur incidunt nobis veritatis ab. Sunt quos qui doloremque quos. Qui pariatur unde commodi quisquam voluptas labore voluptas. Quis repellat nostrum excepturi consequuntur quis iste.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(4, 'Ullam itaque et quam ut qui rerum ex.', 'assets/img/full-width/fullwidth01.jpg', 'Voluptas quisquam sit iure totam aliquid. Ea eius sed quam omnis. Recusandae quae illo iusto ut. Minima enim enim perspiciatis et tempore suscipit nemo. Fugiat aut alias consequatur eum modi eum ex. Odio rerum ab temporibus quidem. Et est ea necessitatibus omnis.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(5, 'Incidunt illum doloremque fuga sint rerum.', 'assets/img/full-width/fullwidth01.jpg', 'Non quaerat deleniti repudiandae harum. Harum at quo nihil. Tenetur sunt quisquam animi tempora illo atque qui magnam. Quam impedit dignissimos totam qui.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(6, 'Vel iusto consequatur qui est voluptatem sunt dolores.', 'assets/img/full-width/fullwidth01.jpg', 'Impedit laboriosam optio praesentium. Et vitae iste aliquid adipisci. Quae est fuga assumenda. Iusto repellendus amet consequuntur sunt distinctio.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(7, 'Rerum voluptate ut voluptates excepturi et consequatur.', 'assets/img/full-width/fullwidth01.jpg', 'Quod rerum non laudantium perspiciatis provident. Assumenda aspernatur ipsum consequatur qui placeat ad aut non. Tenetur laborum rem repellat voluptates rerum. Voluptatem voluptatibus quo eum. Numquam voluptatem minima perferendis quas officiis ea.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(8, 'Ut ea laboriosam vitae doloremque error consequatur.', 'assets/img/full-width/fullwidth01.jpg', 'Soluta dignissimos aut et asperiores. Rerum velit exercitationem unde mollitia vero ipsum. Dolorem omnis maiores animi error. Ipsum eaque placeat veniam et nobis id natus. Tempora et nisi qui ipsa aut.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(9, 'Aut consequatur consequatur enim aliquam.', 'assets/img/full-width/fullwidth01.jpg', 'Nihil provident rerum ex et. Sint omnis sed quia laudantium. Temporibus rerum ipsum est et voluptas aliquid dignissimos quo. Ipsam iure dolorem et qui dicta reprehenderit. Voluptas eum nihil ut optio.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(10, 'Libero voluptatem adipisci consequatur iusto necessitatibus eum.', 'assets/img/full-width/fullwidth01.jpg', 'Commodi quia et eligendi beatae id eos ullam. Sequi officiis quasi assumenda vel nulla similique. Voluptas ut occaecati totam dignissimos sint provident mollitia. Quia officia blanditiis quidem impedit accusamus consectetur sint. Voluptas provident consequatur quasi. Aut earum optio consequuntur in placeat eum. Porro at eligendi aperiam quasi sequi.', '2019-03-30 08:31:04', '2019-03-30 08:31:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Voluptatem quis repudiandae assumenda.', 385.00, 'assets/img/full-width/fullwidth01.jpg', 'Et quidem aut voluptatem enim quia nihil eligendi. Quam amet qui quia nihil. Optio unde qui dolores saepe sint commodi quos pariatur. Voluptas nihil nobis autem illo modi.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(2, 'Molestiae asperiores consequatur illum nemo quidem.', 466.00, 'assets/img/full-width/fullwidth01.jpg', 'Laboriosam similique modi sapiente ipsam est omnis unde. Enim facere consequuntur omnis dicta. Ullam labore asperiores quia. Et dolorem minus tempore voluptatibus qui totam quia voluptas. Quae enim nihil eligendi ut. Ea veniam ea enim doloremque. Aliquam beatae qui cumque exercitationem ea sint dolores.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(3, 'Eos cumque et laudantium aperiam.', 715.00, 'assets/img/full-width/fullwidth01.jpg', 'Consectetur nihil voluptate numquam beatae. Quaerat repellat autem fuga nemo perferendis qui earum. Aliquid incidunt dolore est sit qui aspernatur numquam. Ullam et est delectus molestiae molestiae et. Rerum et aliquid rerum fuga qui corrupti porro.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(4, 'Sit ipsam quisquam odio explicabo laboriosam perspiciatis.', 744.00, 'assets/img/full-width/fullwidth01.jpg', 'Reiciendis et quod provident iusto dolor. Aut voluptatibus repudiandae minima magnam. Vel et numquam dicta ipsam itaque error. Tempora corporis magnam eaque nulla. Molestiae laborum nemo quo modi est. Consequatur facilis autem qui non illum quia voluptatem facilis.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(5, 'Nisi itaque quae cumque.', 561.00, 'assets/img/full-width/fullwidth01.jpg', 'Voluptas eum ut nihil modi voluptates quo. Minus asperiores dicta doloribus repellendus labore numquam. Quis nihil repudiandae ipsa ut ut vitae. Non ut illum vitae quis quas suscipit. Temporibus soluta doloribus perspiciatis dicta nostrum quos officiis. Accusamus est sapiente velit praesentium tenetur et. Dolorem occaecati porro amet et sunt in quas.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(6, 'Quibusdam nemo natus qui itaque eligendi quasi magnam.', 854.00, 'assets/img/full-width/fullwidth01.jpg', 'Quia eligendi voluptatibus necessitatibus temporibus vel quas et dolor. Optio fuga nulla omnis deserunt explicabo consectetur quisquam. Quia natus voluptas iusto saepe eum dolorum optio facere. Et sapiente nobis excepturi eius recusandae odio quaerat magni. Rerum itaque omnis doloribus. Necessitatibus voluptatem dignissimos est id quaerat.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(7, 'Voluptates natus voluptas perferendis est eaque voluptatem et.', 680.00, 'assets/img/full-width/fullwidth01.jpg', 'Atque repudiandae velit placeat commodi libero sint consectetur. Accusantium sunt fugiat qui ipsa eos. Et consequatur facere culpa voluptatum quia distinctio. Tenetur a est aliquid.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(8, 'Iusto aut consequatur adipisci et accusantium excepturi aut.', 314.00, 'assets/img/full-width/fullwidth01.jpg', 'Commodi eum neque debitis iusto. Cumque nulla impedit et. Odio officia officiis sed rem. Veniam qui voluptatem aperiam explicabo id debitis quo id.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(9, 'Cupiditate velit est libero sit hic nesciunt.', 183.00, 'assets/img/full-width/fullwidth01.jpg', 'Perspiciatis quisquam corrupti quasi voluptates maiores assumenda nulla. Dolorum laborum dicta est dolor. Doloribus aperiam dignissimos quia quia. Provident voluptatem ipsa voluptatem.', '2019-03-30 08:31:04', '2019-03-30 08:31:04'),
(10, 'Sequi esse aliquam est vero.', 769.00, 'assets/img/full-width/fullwidth01.jpg', 'Consequatur voluptatem saepe distinctio earum qui. Natus cumque ut sed voluptas consequatur eum ea. Quae eaque numquam quasi consequuntur quos odio. Commodi voluptas autem laborum.', '2019-03-30 08:31:04', '2019-03-30 08:31:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` timestamp NULL DEFAULT NULL,
  `attempt` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
