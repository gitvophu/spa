-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2020 at 05:49 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spa`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'slider03.jpg', 'Iure est ipsum veniam natus veniam asperiores.', 'Molestiae debitis similique odio quo impedit. Voluptas consectetur quas rerum aperiam quia et quae. Voluptatibus et ut dolorem eos corrupti. Dolorum n', '2005-12-27 23:25:19', '2012-01-18 01:23:31'),
(2, 'slider03.jpg', 'Eligendi et consequuntur quos illo porro tenetur exercitationem.', 'Architecto ab corrupti est omnis. Eveniet cupiditate quos incidunt labore esse voluptates quidem exercitationem. Recusandae ut dolores et doloremque e', '1998-03-15 17:59:08', '2002-04-12 23:08:10'),
(3, 'slider03.jpg', 'Dolore iure excepturi consequatur id explicabo natus molestiae.', 'Sapiente facilis esse voluptas iure. Et eligendi sed dolorum libero consequuntur a distinctio. Dignissimos dolores dolor amet ipsa earum quod. Expedit', '2015-09-01 16:40:52', '1994-09-17 00:35:04'),
(4, 'slider03.jpg', 'Deleniti ad molestiae sed optio porro unde.', 'Enim voluptatum mollitia magni praesentium ut. Sit qui aliquid natus quia. Illum labore cum repudiandae expedita. Nihil consequatur placeat deleniti t', '1996-03-31 00:40:22', '2005-06-02 13:46:53'),
(5, 'slider03.jpg', 'Et laboriosam sint et sed et eos nulla dolore.', 'Consequuntur aspernatur sed quo nulla incidunt et dolorem aperiam. Dolorem vitae id atque aut. Culpa ipsam eius maxime quasi exercitationem et. Et fac', '1996-12-20 01:53:56', '2002-11-08 03:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `description`, `type`, `status`, `product_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Elvera Bahringer', 'Ipsam repellendus asperiores ut sit optio voluptas aut. Saepe omnis cumque ea aut id adipisci. Ut vel quis eveniet aperiam vitae vero aut. Tenetur veniam quis tempora illo fugiat maiores ab. Ab voluptatem error iure id quo numquam tempore. Autem minima et deserunt possimus expedita dolore.', 2, 0, 10, 2, '2011-02-28 19:40:40', '2014-09-01 14:12:35'),
(2, 'Kayla Kuphal', 'Inventore et et porro vel. Optio velit quis fugiat explicabo enim. Veritatis deleniti est sed consequatur molestiae et perspiciatis. Magni eos id autem est veniam. Qui provident molestiae vel eum reprehenderit. Provident esse quia corporis natus est officiis. Impedit reprehenderit unde dicta et quod qui blanditiis.', 1, 1, 4, 3, '2005-09-22 01:40:36', '2017-08-12 17:16:46'),
(3, 'Daryl Roberts', 'Iure necessitatibus et quam tempore aut et recusandae. Sint facere explicabo qui quidem. Cupiditate magni sit accusantium deserunt quae incidunt maiores magni. Autem unde laboriosam consequatur ipsa. Minus facere sed rerum incidunt quis iure.', 1, 0, 9, 6, '1995-10-14 07:12:16', '2012-01-07 00:49:28'),
(4, 'Kamille Cronin', 'Molestiae corporis in debitis voluptatum nobis delectus esse. Cum voluptatem enim minus fugiat et. Quod eius recusandae qui voluptas tenetur aut non. Quis quod ut sint et. Recusandae dolor quis beatae ea ea nostrum. Nulla voluptatem consequuntur sunt et facere quo corrupti. Perferendis aut id repudiandae omnis repellat cumque.', 1, 1, 5, 10, '2017-07-14 04:49:35', '2013-08-16 16:19:26'),
(5, 'Sarina Brakus', 'Nemo ut consequatur magnam quaerat. Ut adipisci cupiditate a placeat nisi. Sit eligendi veritatis quas assumenda pariatur. Velit vel autem et omnis et. Et in distinctio voluptatem. Quo nesciunt ut est veritatis.', 1, 0, 2, 3, '2019-07-26 20:50:57', '2007-10-31 04:08:39'),
(6, 'Jace Kuphal', 'Quidem ratione quo nam sed suscipit molestiae. Laboriosam vel ea omnis nam sit dicta. Dolor perferendis rerum nulla quod ut. Rerum aliquid veritatis autem rem qui accusantium distinctio dolorem. In est suscipit quisquam sed nesciunt.', 2, 0, 4, 10, '2008-11-12 14:35:59', '2013-03-10 10:21:33'),
(7, 'Garret Bahringer', 'Vel qui minima voluptas ea. Omnis qui sit sed pariatur sequi. Omnis est blanditiis placeat nobis mollitia ea dolor necessitatibus. Vel illo ea ad aut quaerat. Quis quia corporis aut nihil velit cum. Sit quae ab nisi rerum. Repellendus alias dolores dicta consequatur harum excepturi vel.', 1, 0, 10, 2, '2010-10-16 07:48:59', '2018-09-05 17:23:42'),
(8, 'Myron Kunze', 'Quod et nesciunt omnis cum perspiciatis dolore cupiditate. Corporis libero ducimus odio. Commodi necessitatibus sed neque ipsam sunt magnam est. Non ut minima odit laudantium reprehenderit placeat. Et vero voluptatem neque exercitationem dignissimos. Numquam architecto quis asperiores modi.', 2, 0, 3, 8, '2002-11-28 13:56:12', '1994-08-01 06:10:05'),
(9, 'Ella Murphy', 'Porro totam qui qui excepturi asperiores a reprehenderit. Quis saepe quisquam dolor dolore molestiae quidem cumque. Aut animi earum voluptatem optio voluptate temporibus. Id repudiandae necessitatibus ducimus qui molestiae amet exercitationem dolorem.', 1, 0, 10, 6, '2003-01-24 16:43:10', '2015-04-27 05:42:10'),
(10, 'Christian O\'Keefe', 'Perspiciatis et repellat et adipisci. Veritatis nisi quia beatae quos culpa. Nostrum rem enim adipisci consequatur quo eos repellat. Dolorem doloremque aut aut a culpa veritatis.', 2, 0, 9, 5, '1992-10-27 07:11:26', '2011-02-26 00:29:49'),
(11, 'Ms. Katheryn Walker', 'Sequi eos omnis reiciendis dicta. Consequatur maxime eos tempora error occaecati. Nulla dolores unde quo laborum dolores enim blanditiis consequatur. Officia similique occaecati libero perspiciatis ducimus est.', 2, 1, 7, 7, '2006-03-21 00:27:40', '2001-06-20 01:18:16'),
(12, 'Prof. Zachariah Williamson', 'Ea eos ad deserunt quia in. Commodi natus eos et fugiat omnis laborum sapiente. Est ipsa id enim deserunt. Aut pariatur quam earum reprehenderit aut ut enim quo. Magnam necessitatibus iste itaque repudiandae placeat suscipit inventore. Est impedit temporibus et in laborum quas.', 1, 0, 2, 2, '2019-09-26 12:22:12', '2020-02-02 04:47:17'),
(13, 'Luisa Kuvalis V', 'Provident consequatur ab optio nemo expedita quis doloremque id. Eligendi voluptas sit autem iste pariatur sapiente doloribus. Vel numquam voluptatum aperiam inventore. Adipisci error et deleniti excepturi temporibus blanditiis et. Maxime laudantium adipisci veniam quisquam eum sed. Ducimus aut quod ea blanditiis aut.', 2, 0, 7, 3, '2011-02-02 20:11:27', '2013-10-28 15:17:38'),
(14, 'Gerda Schinner', 'Id facere quod molestias doloribus laboriosam doloremque eligendi eligendi. Accusamus sint beatae itaque vel deserunt. Qui sint neque illo. Totam molestias odio ex non libero sunt vel. Dicta vitae voluptatibus enim totam nihil perspiciatis et vel. Quia et optio voluptatem fugit corrupti.', 1, 1, 4, 2, '2019-06-26 09:17:51', '2004-08-01 13:22:54'),
(15, 'Javonte Larkin', 'Et et eos velit similique nihil. Temporibus voluptate aut odit enim. Dolorem nihil repellendus quaerat. Sed dolor aut qui nobis maiores eligendi quia. Mollitia quisquam necessitatibus consequatur ea accusamus ipsa rem.', 1, 0, 8, 8, '1995-02-20 08:11:40', '2004-04-03 08:06:07'),
(16, 'Frederic Huels', 'Vel consequatur autem sapiente nobis autem illo. Dolores voluptatum debitis recusandae ut soluta velit. Enim velit eveniet sunt itaque qui. Sed quis et ab nobis accusantium. Qui cum at aut aliquam tempora earum. Deserunt voluptatem et fugit consequatur sunt.', 2, 1, 8, 1, '2004-05-07 16:11:39', '2005-10-01 13:22:50'),
(17, 'Amelia Wintheiser', 'Maxime qui eum ea neque quis ut. Quis ipsa aut facilis et. Error perspiciatis beatae ipsa et. Illum voluptatem porro qui.', 1, 1, 3, 4, '1999-12-10 02:00:20', '1995-04-17 12:40:40'),
(18, 'Rosalind Waelchi', 'Et blanditiis aut ut amet ad qui qui fugiat. Sunt adipisci est nihil et at enim aut. Quidem velit quis provident ullam. Incidunt nisi aliquam exercitationem sapiente ea accusamus numquam. At illo dolores quae quibusdam rerum.', 1, 1, 5, 2, '2003-08-22 03:08:02', '1997-01-09 12:17:19'),
(19, 'Mr. Garfield Herzog DVM', 'Rerum ipsa rerum recusandae est non sequi. Itaque adipisci molestias enim dolores. Doloremque ut neque voluptas enim necessitatibus iure sunt. Eum pariatur in ut ut qui maiores. Recusandae dolore et cum ipsa quo maxime in. Voluptatum minima aut voluptatem aperiam ab laudantium ut. In ab quo aut aut repellendus delectus quibusdam.', 2, 1, 4, 6, '2018-03-30 15:03:28', '2005-11-23 02:23:53'),
(20, 'Mr. Benton Reinger', 'Ipsa molestiae ipsam sit in et mollitia. Autem molestias repellendus eos ex. Porro assumenda quo excepturi expedita facere laboriosam doloremque. Ut sint nihil excepturi cumque nesciunt minima.', 2, 0, 10, 5, '1995-07-11 05:55:10', '2016-02-21 23:52:33'),
(21, 'Laurianne Mohr III', 'Sed exercitationem similique ex excepturi. Qui quos consequuntur quis quia. Dolores hic voluptatibus aut cum. Porro porro architecto quos quia asperiores ut consequatur. Et ut veniam vero magni.', 1, 1, 4, 7, '2012-07-28 11:17:45', '2016-04-11 06:22:33'),
(22, 'Deven Keeling', 'Dolores et dolorum aut illo deleniti esse atque. Suscipit dolor sit expedita alias nisi voluptatem libero. Est praesentium ipsam perspiciatis. Fuga in sed optio repellendus delectus quia. Porro non et quaerat. Sapiente consequuntur officiis tenetur omnis. Praesentium quia et aut dolor ea quasi dolores.', 2, 1, 4, 10, '2013-11-13 02:04:09', '2000-06-16 18:28:05'),
(23, 'Miss Duane Treutel Sr.', 'Distinctio rerum eaque veritatis. Magnam praesentium dolores neque quasi tempore nihil. Voluptas earum omnis quia consequatur minus aliquam vel. Eveniet error ab qui porro iure. Hic nulla ipsum vel libero et blanditiis.', 1, 0, 7, 9, '1996-08-02 04:25:11', '1990-09-03 14:54:36'),
(24, 'Miss Madilyn Kessler', 'Occaecati alias illum accusantium provident est. Mollitia porro molestiae cum sunt totam quo. Ab aliquid voluptatibus odit. Eum expedita natus quo facere ea.', 1, 1, 2, 2, '2000-04-18 14:08:57', '1990-04-14 17:09:16'),
(25, 'Yoshiko Ziemann II', 'Omnis occaecati facilis sit voluptatibus doloribus provident officiis optio. Fugiat enim natus ducimus beatae adipisci. Sint iure impedit eos. Quasi tempora esse adipisci sit. Molestiae vel debitis suscipit architecto doloribus quo. Facere aut sint quis necessitatibus sunt sint.', 1, 0, 5, 4, '1995-08-09 08:43:55', '1998-07-19 04:40:54'),
(26, 'Deanna Hahn IV', 'Aut dicta dolorum aliquid nihil vel. Itaque et ad magni blanditiis beatae tempora quasi. Hic minus et beatae aperiam harum debitis. Dolorum consequatur excepturi necessitatibus. Aut et velit qui.', 2, 0, 6, 7, '1995-12-18 13:48:20', '2003-03-31 20:37:00'),
(27, 'Prof. Theodore Bayer IV', 'Voluptate sint autem veniam quia. Voluptas voluptatem minima beatae perferendis eius et et dolore. Beatae molestias impedit soluta. Dolorum odio qui perspiciatis sed nihil voluptatem hic. Et pariatur aperiam voluptatem non voluptatum atque. Distinctio et nihil consequatur reiciendis odio et.', 2, 1, 5, 4, '2009-05-02 00:23:43', '2018-05-22 10:58:34'),
(28, 'Mallie Bartoletti PhD', 'Ducimus et eum omnis aut. Dolorem voluptatem sequi repellat ut eaque saepe quod. Sunt optio consequatur error ea aliquam omnis quia. Nesciunt tempore iusto odio assumenda nostrum doloremque qui.', 2, 0, 10, 1, '2014-11-16 01:11:41', '2019-11-17 11:00:08'),
(29, 'Ms. Margret Blick', 'Laborum saepe doloremque iusto enim alias sint aut sed. Non voluptatum ut reprehenderit. Dolores nobis aliquid praesentium quaerat architecto dolorem velit. Corporis porro qui esse perspiciatis.', 1, 0, 8, 4, '2008-10-01 17:29:25', '2003-12-03 15:30:05'),
(30, 'Robbie Bergstrom', 'Adipisci ea id qui nobis. Minus et optio neque. Assumenda culpa odit ea. Recusandae ratione non mollitia illum est. Dolore eum neque voluptas nihil est. Animi voluptate voluptas inventore ipsam officia ut.', 2, 0, 2, 4, '2006-01-31 04:59:11', '1999-02-07 04:46:14'),
(31, 'Nicola Abshire', 'Voluptas illo et neque eos excepturi explicabo assumenda. Aut porro ut laborum est. Ut molestiae temporibus quia. Ipsum et quod adipisci vitae. Consequatur aut quo dolorum amet.', 2, 1, 3, 8, '2001-04-21 06:49:20', '2003-08-03 19:32:08'),
(32, 'Justus Rowe', 'Earum error ut asperiores molestiae eius. Et eum minima dicta et explicabo asperiores. Dolorem sit rem aut dolor doloremque nemo incidunt. Aut est culpa in et aspernatur. Dolores qui aspernatur harum nihil nam sit est natus. Reprehenderit necessitatibus quis sed exercitationem sed laborum.', 1, 1, 10, 1, '2011-04-23 00:01:44', '1993-06-11 09:23:07'),
(33, 'Brock Muller', 'Quis tenetur quam tenetur aut totam quam cum aliquid. Nam sapiente et ut. Sed id culpa expedita nulla velit neque eos. Saepe modi ab modi aliquid numquam. Porro impedit eaque fuga totam quam nisi atque. Aliquam aut harum sint nihil reprehenderit.', 2, 0, 5, 2, '2016-09-04 05:35:28', '2002-01-28 06:28:16'),
(34, 'Roman Dietrich II', 'Aut nihil aliquam dolorem corrupti autem impedit. Accusamus aspernatur sapiente eaque illo quos omnis. Tenetur tempore quia corporis eos. Necessitatibus maiores qui corrupti.', 2, 0, 6, 3, '2003-03-01 21:37:48', '2007-08-26 03:04:10'),
(35, 'Ms. Lorena Lockman V', 'Optio amet enim enim consequatur quae delectus non. Enim error velit impedit sit minus est. Libero omnis et est sunt laborum. Esse quod vel quisquam minus sed dolor exercitationem est. Consequatur laboriosam velit nostrum dolor.', 1, 1, 10, 1, '2016-04-06 16:53:06', '1997-07-31 02:31:58'),
(36, 'Geraldine Rosenbaum', 'Eos officia ut magnam aspernatur omnis incidunt velit. Sed consequuntur doloribus quia voluptatibus. Porro commodi doloremque ipsam dolor. Est saepe ab suscipit quo harum. Itaque eaque vel voluptate sequi pariatur non aut.', 1, 1, 10, 9, '2018-08-25 05:21:22', '2003-12-04 23:10:54'),
(37, 'Stephania Conn', 'Repellat eaque quia ut occaecati autem esse enim. Reprehenderit eos temporibus adipisci vero voluptatum consequatur. Voluptatem laborum beatae aut modi nihil quam. Omnis ea ut dicta ut laborum. Praesentium quis deserunt et esse itaque iste. Quia adipisci eum distinctio quia sit. Voluptatibus adipisci perferendis voluptatem ipsum.', 1, 1, 9, 7, '2018-07-15 00:17:54', '2002-07-04 17:44:42'),
(38, 'Josie Buckridge', 'Qui soluta non sint aspernatur. Dolorum ullam rem ut. Culpa sit soluta quis. Id assumenda aut ullam aspernatur dolorum sit sunt. Saepe recusandae maiores est reiciendis molestias qui qui. Non ex sit cumque omnis adipisci rerum et.', 2, 0, 1, 6, '2011-11-12 16:24:49', '2000-12-04 12:13:02'),
(39, 'Kevin Welch Sr.', 'Et enim eos sapiente. Ut id sit animi quibusdam dignissimos et molestiae in. Dolor consequatur omnis commodi. Aut aut error architecto et voluptates quisquam assumenda expedita. Maxime neque optio voluptatum possimus assumenda iure.', 1, 1, 8, 1, '1998-10-02 18:37:36', '1993-09-20 00:58:52'),
(40, 'Luigi Watsica', 'Quas consequuntur corporis dignissimos perspiciatis aut sit. Nihil dolorem est qui enim voluptas et. Corporis explicabo expedita velit similique. Debitis eaque et officiis quia est. Unde aut fugit nihil nesciunt minima. Dolore alias nulla necessitatibus unde quis fugit mollitia.', 2, 1, 3, 4, '2019-08-26 08:44:13', '1994-11-04 00:52:39'),
(41, 'Lucas Paucek Sr.', 'Et nisi ipsam voluptatem at. Ut at molestias velit accusamus quam. Voluptatem enim recusandae soluta eos. Possimus rerum a porro sed officia est qui. Reiciendis dolores aut doloribus veritatis excepturi deserunt. Velit porro sit eaque eum quia dolore et. Ea delectus placeat mollitia id cum.', 1, 0, 10, 10, '2016-05-05 02:13:49', '2010-08-15 11:59:05'),
(42, 'Mrs. Audreanne Ryan I', 'Neque quos voluptatem eos ea aut modi. Quis ipsa ut debitis eligendi est ea adipisci. Ut quidem laborum sed consequuntur rerum optio et. Fugiat aut aut tempora et. Ut ea accusamus nihil qui accusantium. Praesentium a minus voluptatem quasi voluptate. Maxime dicta accusamus dolorem id voluptate.', 1, 1, 1, 2, '1994-04-22 17:20:19', '1997-11-01 20:54:07'),
(43, 'Mr. Cleve Reilly', 'Iste voluptatum sapiente et voluptate aliquid. Modi et sunt totam nihil eum. Et consectetur voluptatum doloremque omnis vel inventore. Sint omnis quia nihil. Voluptatibus nihil sunt voluptas quasi consequatur.', 2, 0, 5, 4, '2013-07-27 05:09:28', '2006-12-23 16:46:29'),
(44, 'Isac Jones DDS', 'Nesciunt tenetur officia quia ipsa. Provident ut autem voluptatem ut dolores. Sit alias voluptas libero voluptatem ut veniam ipsum. Vitae asperiores sunt non id. Sequi quia corporis cupiditate eligendi occaecati. Vero sint ut exercitationem beatae rerum necessitatibus.', 2, 1, 6, 4, '2004-02-26 14:07:34', '2008-09-25 04:42:54'),
(45, 'Dr. Brain Fritsch V', 'Sed qui impedit et et nulla voluptatibus et pariatur. Ipsa est explicabo quasi quia. Et debitis et qui voluptas omnis enim quia. Eum suscipit sit beatae voluptatem accusamus tempore qui laudantium. Repellendus sequi aut molestias qui. Voluptates quasi dignissimos nostrum quaerat iure.', 1, 1, 3, 3, '2018-05-15 18:14:29', '2020-02-02 04:48:00'),
(46, 'Dr. Daisy Walker IV', 'Magni maiores sed qui ab dolorem. Non ea vel nisi quidem maxime dolor id. Et et omnis rerum. Rerum rem autem molestiae facere non error. Vel et et nobis id est officia a explicabo.', 1, 1, 10, 8, '2012-02-05 20:14:46', '2018-12-16 11:44:54'),
(47, 'Albert McDermott', 'Nisi deleniti non nostrum ut nostrum error quam. Consequatur ullam corrupti delectus et consequatur. Et magni a quidem dolorum asperiores sit et. Quis sit nam velit. Aut voluptates ducimus id quod et odit commodi. Et odit eius illum doloremque modi eos rerum. At id omnis possimus.', 2, 0, 4, 10, '1993-06-04 23:29:21', '2008-08-27 18:26:07'),
(48, 'Dr. Ibrahim Cremin', 'Fugit ducimus tempora ipsa quia. Error quas nam officiis. Ducimus sunt ut possimus porro. Eos fugit tenetur voluptas cumque et libero consequatur voluptates.', 1, 1, 6, 2, '2009-12-30 02:15:11', '2006-08-30 10:00:20'),
(49, 'Gabriel Schulist', 'Laboriosam voluptatem tempora adipisci ut. Voluptate atque et aut. Commodi consequatur ullam dolor. Impedit sunt eos a. Reprehenderit in eaque perferendis molestiae ducimus soluta. Quas ratione et assumenda rerum. Expedita possimus et et deleniti sed amet.', 1, 0, 10, 7, '1996-03-04 16:28:17', '2006-06-10 01:30:07'),
(50, 'Norma Kautzer', 'Qui porro possimus dolor non earum. Enim illo cupiditate aut eos quos porro. Cum recusandae quam ut in ipsum consequatur dolores. Earum eum eius culpa reprehenderit. Sed laudantium ut et a iure.', 2, 0, 3, 6, '2014-05-29 08:04:08', '1997-08-22 07:32:36'),
(51, 'Virgie Lakin', 'Doloremque est dolor a dolore. Quaerat et facere sint alias odio quibusdam sit. Voluptate eum qui voluptas deserunt autem aut sed quam. Rerum dolores ut molestias et.', 2, 0, 2, 3, '2015-11-11 08:39:21', '1991-03-17 07:14:16'),
(52, 'Adaline Hills MD', 'Quisquam laboriosam consequatur facere ea voluptas. Eos voluptatem culpa quisquam. Laborum eaque modi labore sed eos. Consequuntur quia qui iure iste molestiae soluta aut. Et velit ut illo. Nisi animi id omnis qui ut quia harum.', 1, 0, 10, 8, '1998-12-29 00:25:14', '2008-05-21 11:52:48'),
(53, 'Valentina Reinger', 'Quo hic facilis omnis esse possimus culpa saepe. Nemo tenetur omnis vel eos sed cum. Quo et laboriosam consequatur necessitatibus. Soluta sunt a quia necessitatibus natus velit ex.', 1, 0, 9, 10, '2017-05-25 12:52:30', '2011-10-12 00:16:27'),
(54, 'Dr. Madelyn Bode MD', 'Error tenetur natus harum id quis. Nam officiis a et saepe deserunt. Quis natus atque qui ipsam repudiandae quisquam. Nemo qui sed voluptas sunt vel ab labore.', 1, 1, 7, 4, '1999-09-28 02:23:47', '1994-12-13 08:43:00'),
(55, 'Jarred Koepp', 'Quia vitae non qui sequi itaque eveniet pariatur. Ab beatae eveniet natus eum dolores. Velit eaque odit ducimus quia consequatur. Accusamus quisquam reprehenderit est quasi. Vero optio cum voluptatum nam sint. Et laborum ea deserunt laborum accusantium corrupti illo quaerat. Nemo sed quae temporibus magnam facere.', 2, 1, 9, 3, '1992-11-07 05:10:04', '2009-07-20 12:42:16'),
(56, 'Lilian Sawayn Sr.', 'Quibusdam voluptates excepturi ut et. Assumenda id repellendus magnam ut alias dolorum cum. Accusamus laboriosam reiciendis veritatis optio sequi laboriosam totam. Voluptas odio ex optio illo natus praesentium autem dolorem. Ut porro ut occaecati dolorem sed recusandae. Dignissimos mollitia eaque sed quo asperiores. Ut facere est ipsam eos qui sed adipisci.', 2, 0, 6, 9, '2007-10-03 00:31:36', '2007-11-17 15:11:22'),
(57, 'Miss Alanis Orn IV', 'Recusandae aut id voluptatibus est aut aut. Quos possimus porro eligendi quisquam sed consequuntur sunt qui. Porro voluptatibus distinctio reprehenderit illo eius. Dolore consequatur at maxime voluptatem molestiae.', 2, 1, 7, 6, '2006-02-11 22:29:10', '2005-06-30 05:47:39'),
(58, 'Maeve Rice', 'Quam maxime quae alias perspiciatis earum. Impedit est quia quia et impedit sed nulla. Qui quaerat voluptas est voluptates officiis voluptates est. Possimus quaerat corrupti voluptates aliquid. Fugit temporibus nisi distinctio reiciendis. Officiis aut doloribus ad voluptatem.', 1, 0, 1, 5, '2006-05-05 03:36:31', '2015-01-14 18:58:28'),
(59, 'Tyrese Hayes', 'Aut sit sint iusto tenetur non molestiae aut libero. Unde reprehenderit iusto quia sequi. Sint velit totam voluptatem qui nisi sunt eaque et. Illo excepturi consequatur exercitationem non. Pariatur iusto qui ipsam impedit possimus. Natus voluptas rem cupiditate consequatur.', 1, 0, 3, 4, '1997-01-17 03:08:50', '1999-06-11 01:00:03'),
(60, 'Cruz Shanahan', 'Fugiat doloribus et et nesciunt fugiat laboriosam adipisci. Id iste neque autem dolor deserunt. Quo provident perspiciatis ea quo hic. Et facilis quia vero voluptate ut fuga velit. Cum et voluptas consequatur. Non voluptas in aperiam nostrum.', 1, 1, 8, 8, '1997-02-16 19:23:02', '2008-10-13 15:47:52'),
(61, 'Stephan Koss', 'Odit saepe laudantium laudantium debitis pariatur impedit. Debitis ut debitis magnam nam facilis ut similique alias. Et pariatur ducimus perferendis ipsam et ipsam tempora. Aut modi eaque qui et velit illum. Quaerat aperiam magnam odio omnis quae consequatur quia beatae. Aut enim expedita rerum molestiae enim. A dolores eos et sed id voluptas.', 1, 1, 8, 7, '2014-07-21 13:31:33', '1992-06-06 10:20:17'),
(62, 'Prof. Walton Balistreri', 'Sequi animi eos magni reprehenderit modi. Enim voluptatibus porro quaerat provident tempora facilis. Eos sit molestiae voluptatum qui asperiores qui alias. Cum commodi excepturi sapiente explicabo autem quia fugit. Consequatur iure veritatis porro voluptas dolore porro.', 1, 1, 9, 3, '1997-09-03 07:28:51', '1993-10-14 13:43:00'),
(63, 'Prof. Rodger Fahey II', 'Et ullam saepe provident recusandae repellendus dolorum. Et cupiditate et nam sit. Et ut perferendis voluptas quos veritatis dolor voluptatem maiores. Qui mollitia molestiae animi ad non voluptatem dignissimos.', 1, 1, 5, 9, '1990-05-01 17:29:23', '2000-10-01 18:36:07'),
(64, 'Marcelino Brekke', 'Eum debitis veritatis perferendis deserunt. Aut expedita corrupti quos incidunt ullam. Cum et aspernatur hic velit. Magnam provident debitis velit aliquam rerum explicabo. Porro vero doloremque beatae. Praesentium numquam beatae reprehenderit sint nobis.', 2, 0, 9, 10, '1993-11-04 16:33:12', '2006-12-04 01:46:49'),
(65, 'Laisha Hirthe PhD', 'Quibusdam et temporibus est perferendis. Voluptatem velit labore mollitia ut vel. Vero reiciendis est quas itaque debitis. Et aut recusandae dolorem debitis eum. Cupiditate sint dolorem tempore ut. Exercitationem quidem earum dolores.', 1, 0, 6, 8, '1997-12-05 07:00:30', '2006-11-05 21:26:30'),
(66, 'Josiah Schuppe I', 'Doloribus aspernatur ducimus eius adipisci. Voluptates voluptatum at eaque quas tenetur. Quos tempora et consequatur in atque magnam. Sed atque dolores sunt explicabo. Quos omnis atque est quia ratione delectus. Officia ab voluptatem totam quaerat accusamus nam non. At qui consequatur aut beatae deleniti.', 2, 0, 1, 9, '2009-03-04 05:05:28', '2015-09-02 14:18:24'),
(67, 'Prof. Emmie Stiedemann', 'Officiis amet neque qui ratione in. Voluptatem possimus fugit consequatur vel corrupti itaque. Quia est sed tempore nostrum et odio et repellat. Doloribus sit sequi omnis dolores nesciunt quis quos. Voluptatem ut itaque et et laboriosam perspiciatis aut.', 1, 1, 6, 5, '2003-01-07 12:18:15', '2006-01-22 21:13:23'),
(68, 'Emile Heller', 'Quia non nulla corrupti illum quisquam earum cum id. Eaque earum delectus illo ratione reprehenderit perspiciatis. Corporis amet nobis eum dolorem. Ut aut exercitationem rerum quo cumque cum. Perspiciatis est quidem molestiae maxime. Voluptatibus ipsum libero totam velit.', 2, 1, 2, 5, '2002-09-13 22:58:48', '2008-07-24 10:15:17'),
(69, 'Mr. Charley Harris', 'Quia voluptatem nisi nesciunt soluta quo temporibus. Cumque repellendus cupiditate quidem libero reprehenderit quia qui qui. A porro delectus aperiam. Nobis error ad libero odio velit aut.', 2, 1, 9, 1, '2004-05-28 08:42:33', '2000-12-10 02:28:10'),
(70, 'Carmella Stroman MD', 'Consectetur qui quidem non rem dolorum pariatur. Nostrum dolore ab neque blanditiis illum voluptatibus voluptatem. Incidunt autem provident molestiae et aut. Et aut repellat voluptatibus quo quia corporis qui. Molestiae accusantium qui consectetur voluptate molestiae aperiam ut ut.', 2, 1, 7, 6, '2006-04-04 23:14:33', '2019-11-13 13:30:43'),
(71, 'Jeanie Osinski', 'Est distinctio qui esse voluptatem eum. Quod non nulla quas molestias voluptatem. Ex minus nulla et et est sed. Omnis consequuntur rerum sit beatae tempore quia molestiae. Rerum quibusdam suscipit voluptatem voluptas eos. Hic sunt molestiae itaque.', 1, 0, 2, 2, '2010-01-13 06:53:32', '2011-10-10 14:59:50'),
(72, 'Kendrick Klocko', 'Dolorem fugit ea et iure. Repudiandae facere qui et consequatur. Reprehenderit incidunt quisquam fugiat aut veritatis quia. Sunt et sint atque. Ducimus accusantium reprehenderit cum veniam. Ad rerum id quisquam voluptatem. Veritatis inventore eius id rem a perferendis omnis.', 1, 0, 10, 10, '1995-10-11 21:19:05', '2019-12-07 00:59:59'),
(73, 'Francis Schaefer', 'Nisi ut velit ab ut. Et voluptas qui aut sed facere omnis ex. Nemo eum tenetur suscipit expedita sint. Exercitationem exercitationem adipisci reprehenderit officiis nesciunt deleniti minus asperiores. Soluta ab est alias recusandae qui adipisci. Dolorem voluptas porro necessitatibus ut eveniet nam ut. Et alias animi at nobis et.', 1, 1, 10, 6, '1999-09-02 18:25:30', '2007-02-10 09:35:13'),
(74, 'Israel Huel', 'Quidem quia cumque excepturi rerum eum voluptas. Officiis vitae ut et aut officia aliquid aut laboriosam. Sit quod sit et soluta vel magni. Architecto illum quia voluptatem deleniti ut et.', 1, 0, 9, 2, '2016-09-19 06:46:55', '1995-07-17 20:28:07'),
(75, 'Juliana Vandervort', 'Sint eos tenetur qui facere. Fugit consectetur inventore sapiente aut dignissimos quisquam laboriosam. Similique laboriosam quas facilis et et soluta. Id qui recusandae ut sunt consequatur mollitia assumenda. Voluptatem itaque et excepturi placeat excepturi.', 2, 1, 4, 4, '2014-08-15 14:11:48', '2009-10-12 13:10:08'),
(76, 'Mr. Kale Satterfield', 'Non quo deleniti corrupti voluptatem inventore. Odit inventore quo placeat ea et. Eum ipsa voluptas et dolore in non ex. Voluptas ut vero voluptatibus et. Esse commodi vel facilis id. Temporibus consectetur qui nostrum officiis.', 2, 1, 3, 8, '1991-04-26 01:13:21', '2013-10-27 04:11:07'),
(77, 'Ardella Zboncak', 'Distinctio voluptatem blanditiis quo quia. Assumenda voluptatum voluptatibus voluptatem et rerum aut. Nesciunt possimus ut ipsum laudantium. Consequuntur veniam nisi rem dicta quis.', 2, 1, 3, 1, '2005-12-19 08:09:52', '2007-03-02 17:27:23'),
(78, 'Ona Anderson PhD', 'Ut harum molestiae porro officia error officia. Voluptatem praesentium tenetur est aut. Nesciunt architecto sint dolorum. Rem eaque magnam aut neque. Rem necessitatibus et qui ea ratione. Dignissimos exercitationem debitis veniam aut.', 2, 0, 4, 6, '1991-09-19 15:00:13', '2014-07-07 18:09:04'),
(79, 'Milton Boyle', 'Eos repudiandae ad est omnis ullam quis. Dicta quam animi id asperiores qui. Et quibusdam et consequatur omnis est temporibus. Est voluptatem et aspernatur rem eos nisi odit. Natus in dolorem aperiam nostrum deleniti quia est voluptates. Asperiores incidunt aliquid rerum ipsam molestiae illum at. Vitae quia eius aspernatur qui nihil dicta eligendi quibusdam.', 1, 1, 5, 9, '1996-10-02 05:41:24', '2006-04-28 04:52:16'),
(80, 'Carissa Harber', 'Consequatur ratione aut accusantium qui qui consequuntur vitae. Maxime et consequatur aut perspiciatis quae laborum. Aspernatur adipisci est ad veritatis vero perspiciatis. Quidem vitae rerum temporibus quas aperiam saepe necessitatibus dolorem. Quia porro et rerum aut fuga. Consectetur neque voluptatem harum temporibus quae autem accusantium.', 2, 0, 10, 2, '1995-01-24 16:08:51', '2005-08-05 17:00:13'),
(81, 'Destiny Erdman', 'Harum ullam unde libero. Delectus fugit ea est numquam beatae. Nisi rem consequuntur consequatur deleniti voluptas. Laboriosam dolor dignissimos necessitatibus non qui tempora consequatur. Perspiciatis quia rerum sunt.', 2, 1, 7, 4, '2008-05-11 08:55:30', '2013-08-16 12:57:36'),
(82, 'Asa Ullrich III', 'Quidem ut rerum excepturi expedita rerum deserunt consequuntur. Eum est sed odio voluptas. Saepe quasi numquam adipisci optio tenetur. Sed reiciendis soluta aut dolorem inventore. Numquam esse est veniam aliquam est. Officiis at quo eius qui reiciendis aliquid earum.', 2, 0, 4, 2, '2010-04-04 04:11:00', '2006-02-09 03:41:21'),
(83, 'Prof. Ernestina Beier', 'Quaerat reiciendis quam qui natus soluta inventore minima. Rerum autem consequatur saepe voluptatem. Occaecati aut et animi et. Voluptatem commodi maiores architecto sed sint corrupti. Iure occaecati rerum rem quia. In nobis debitis deleniti sed autem blanditiis nemo. Veritatis eius et illo recusandae sed dolorum.', 1, 1, 7, 3, '1999-04-07 04:14:19', '1993-08-22 10:27:33'),
(84, 'Dr. Stan Predovic IV', 'Sapiente quaerat delectus rerum cupiditate. Placeat harum dolore nemo numquam assumenda quos. Voluptate voluptatum quo quasi modi voluptate. Eum omnis quaerat velit. Dolor quae optio quibusdam et autem corporis. Temporibus quod et dolorem rerum.', 2, 1, 6, 5, '1998-05-03 20:33:48', '2014-06-18 10:15:36'),
(85, 'Mrs. Ashtyn Corwin', 'Perferendis optio nihil assumenda repudiandae. Ut atque laudantium culpa ipsum quam deserunt. Nemo modi est sed et. Temporibus voluptatem repellat voluptatem consequatur omnis natus ipsam. Aliquid molestiae aperiam et neque voluptatem at. Aut cumque non exercitationem quis.', 1, 0, 2, 10, '1992-10-29 10:47:51', '2015-02-07 04:31:15'),
(86, 'Everette Kessler', 'In dolore est culpa. Cupiditate impedit velit quia perferendis sed eligendi vero earum. Iusto quis veniam qui laboriosam numquam. Ea neque nobis non qui distinctio maxime rerum. Sed quia recusandae commodi veritatis facere.', 2, 1, 9, 6, '2013-03-07 07:44:03', '1997-09-29 21:31:23'),
(87, 'Shaylee Towne', 'Eligendi enim aut aut cum aut. Omnis est necessitatibus ducimus doloremque delectus. Non doloribus cumque velit porro inventore voluptatum eveniet. Sapiente natus aut id beatae. Qui laudantium expedita ut doloribus sapiente est. Ipsa tempora eos enim aspernatur dolores. Est doloremque qui officiis consequatur ut.', 2, 0, 7, 8, '1990-05-05 04:55:38', '1991-01-03 17:43:31'),
(88, 'Tristin Herzog', 'Et est culpa sed necessitatibus consequuntur voluptatibus rerum qui. Totam qui est ex veritatis dolores. Est consequatur et possimus ut natus. Labore omnis voluptas sit pariatur. Quia ad sint et inventore. Quia iure modi nesciunt sint cupiditate qui. Earum doloribus eos fugiat sint ea.', 2, 0, 9, 3, '1991-03-20 05:18:30', '2012-08-02 17:00:29'),
(89, 'Prof. Dawson Kiehn MD', 'Qui ullam molestiae a ratione consequatur exercitationem. Nulla expedita praesentium consequatur incidunt alias saepe ut expedita. Quia quod sint officia ut beatae odit quia. Quia nostrum accusantium iusto nemo possimus porro qui. Nostrum quia expedita eum reprehenderit.', 1, 1, 10, 8, '2018-07-30 04:25:57', '2012-06-02 07:25:42'),
(90, 'Lois Johnson', 'Velit nostrum labore ducimus et. Fugiat maxime aliquam dolorem. Fugiat quas ea qui repellendus. Saepe praesentium sed ut officiis ipsam veniam.', 1, 0, 6, 3, '1995-01-03 22:13:19', '2016-11-17 19:47:27'),
(91, 'Prof. Haylee Marvin', 'Aspernatur consequatur assumenda et. Mollitia doloribus inventore ipsam et ut eos. Ut sed minima consequuntur sed velit. Eum cumque numquam sint non voluptatibus. Unde vel occaecati sit rerum ad molestiae.', 2, 0, 8, 9, '1997-05-14 19:00:17', '2002-08-10 13:22:54'),
(92, 'Brianne Altenwerth', 'Iusto nobis eius non ut et cumque molestias illum. Consectetur quia atque ut aut rerum rem. Velit unde aut et est accusantium maiores perferendis ipsum. Voluptatem architecto quo saepe aliquid quia consequatur error. Porro vero ipsa at labore quos minus. Ex voluptatem sint molestiae nulla doloribus aliquam. Est in vero ab veritatis laborum perferendis.', 1, 1, 10, 9, '1996-04-09 21:56:42', '1990-07-20 15:45:13'),
(93, 'Alexandra Huels', 'Ut reiciendis dolor incidunt dolorem non dolor. Itaque commodi voluptas hic non sunt impedit dolore. Debitis ducimus quis voluptas fugiat doloribus. Voluptatum distinctio minima magnam voluptas velit ipsam ea. Deleniti placeat fugit dicta accusantium ea non nihil qui.', 1, 0, 1, 2, '2019-04-16 03:40:52', '1996-09-18 01:50:56'),
(94, 'Evelyn Hilpert', 'Id rerum qui deserunt ut adipisci. Harum placeat molestiae et beatae et dolorum debitis aut. Sed sint sint fugiat aliquid non. Qui quam necessitatibus voluptas minima quia. Amet dolorem sit non ipsum rem sunt assumenda. Velit enim quam animi distinctio quae.', 2, 1, 4, 1, '2010-03-04 02:04:46', '2002-06-11 06:01:13'),
(95, 'Mr. Mitchel Bednar', 'Voluptas tempora modi incidunt. Consequatur debitis voluptatibus est cumque. Eos impedit nisi placeat aut non delectus. Itaque molestiae voluptatem mollitia natus eligendi repellat natus. Pariatur consequuntur aperiam odio quo odio laboriosam. Optio recusandae facere tempora neque id quod quam quia. Perferendis odit quis labore earum repudiandae labore.', 2, 1, 7, 1, '2012-11-05 13:32:18', '1997-04-23 00:07:32'),
(96, 'Amaya Borer', 'Commodi inventore non harum quia iure deleniti ut. Aliquam quia ducimus numquam animi eum nulla. Tempora autem vitae animi ut dolores inventore. Adipisci perferendis harum autem laudantium.', 1, 0, 3, 5, '2010-09-05 05:47:28', '2008-04-25 23:53:07'),
(97, 'Liliana Gutkowski', 'Optio dignissimos soluta dolorum deleniti nam est. Repellendus blanditiis possimus et. Molestiae facilis doloremque rerum ea. Maxime impedit est sunt expedita tempora delectus voluptatum. Quia quo cupiditate dolores ut. Qui distinctio aut nisi. Ea tenetur ut deleniti doloremque in enim.', 1, 0, 6, 4, '2015-11-14 17:05:31', '1990-03-16 07:39:31'),
(98, 'Miss Patricia Keeling DVM', 'Ipsum aut est qui ut nesciunt sed. Perspiciatis unde eligendi autem corporis. Id sed id facere aliquam quos soluta veritatis. Earum aut est non eos. Fugiat earum error eius voluptatem deleniti nostrum aperiam.', 2, 1, 9, 4, '1991-05-02 20:15:50', '2000-12-08 07:33:34'),
(99, 'Jaquan Gutkowski', 'Maiores ipsam cupiditate magnam expedita culpa consequatur vel. Et in sed nam ullam quos et aliquam. Nisi fuga aut aspernatur inventore quo error. Doloremque nam quis aut quis earum. Rerum amet est ut. Nisi quae quis atque explicabo neque iure earum illum. Quidem et nam veniam nihil ut dicta delectus accusantium.', 2, 1, 2, 10, '2014-07-05 04:47:52', '2010-11-29 21:36:41'),
(100, 'Ivory Hand', 'Praesentium rem aspernatur fugiat aliquam expedita quas. Dicta laborum atque voluptate sed recusandae blanditiis. Qui earum neque illum minus omnis in. Reprehenderit est et earum consectetur veniam. Ipsam non quia beatae earum ut eum eum sit.', 2, 1, 2, 3, '2016-09-30 16:32:26', '1996-02-21 13:37:17'),
(101, '123123123123', '123123', 2, 0, 1, NULL, '2020-02-02 04:48:27', '2020-02-02 04:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Taylor Raynor MD', '+15263463595', 'Omnis perspiciatis eum odio placeat inventore. Doloremque nobis vel quam et labore deserunt quia corporis. Maxime quis dolor eum eum consequatur eveni', 'Et dignissimos explicabo officiis quae et in. Voluptatibus sapiente debitis enim qui quam fugiat illo. Animi quod hic debitis tenetur. Et blanditiis illum nemo et accusantium veritatis. Esse velit veritatis quos est temporibus. Totam corporis facilis autem. Saepe fugiat expedita ipsa expedita officia.', '1996-05-01 02:02:12', '2008-10-16 22:43:58'),
(2, 'Orval Herman', '(901) 260-3906 x63279', 'Et reprehenderit occaecati amet cupiditate aut corrupti sunt delectus. Asperiores atque aliquam quia molestiae quisquam ut. Quaerat enim tenetur numqu', 'Ipsum ullam nemo quis earum amet. Quis quia non veritatis quia non fugiat in. Voluptas velit provident quibusdam porro non. Esse excepturi sunt quidem occaecati eum. Non quis accusantium consequatur magni sunt dignissimos. Maiores debitis molestias modi rerum et. Aut vel fuga modi in.', '2002-11-06 05:44:28', '2012-05-09 00:36:25'),
(3, 'Jeff Reichert', '1-496-636-2502 x536', 'Est odit ab placeat sapiente quae voluptatem. Voluptates numquam consequatur assumenda aut expedita iure iure. Aut cum corporis voluptate at qui fugia', 'Voluptas commodi est officiis ut aperiam. Ut pariatur voluptates harum sit et accusantium nisi. Nemo possimus sunt aliquid maiores sapiente voluptatem repellat. Consequatur nisi eos ipsum harum vitae. Sint blanditiis nobis blanditiis sint. Vel voluptatem rerum ut praesentium nihil autem sit.', '1990-04-03 15:16:41', '1992-03-24 22:48:23'),
(4, 'Madison Lebsack DVM', '420.299.8200 x61763', 'Et omnis omnis et harum fuga rerum reiciendis. Sed quis nostrum aspernatur quaerat exercitationem. Id libero deleniti dolor expedita nulla quod eum.', 'Ut ipsum at voluptatem sint natus. Cum maxime atque magnam repudiandae velit. Aut nostrum ad odio cumque. Sint aut quo voluptas pariatur. Quisquam sed eius id nemo perferendis unde nihil. Non perferendis odio laudantium omnis. Distinctio eius quae cumque sed sit modi.', '2004-10-19 01:02:34', '1998-06-24 03:19:08'),
(5, 'Cole Fadel', '974-856-2610 x25114', 'Sit sapiente ratione distinctio quo eum. Pariatur ullam beatae placeat aut eveniet. Sunt est eveniet aut. Saepe quia porro sapiente tenetur. Enim sed ', 'Voluptatibus magni sunt qui quaerat. Aut quidem culpa quasi. Perferendis vel et iste omnis sequi vero autem. Eum mollitia alias quia aliquam architecto quaerat officia. Nulla exercitationem voluptas corrupti eum alias.', '1994-12-22 19:22:52', '2010-09-26 21:45:11'),
(6, 'Prof. Alycia Ryan', '+1-575-521-6768', 'Facere amet animi vel odit est aspernatur laboriosam. Aspernatur deleniti laboriosam neque reiciendis harum ut in dicta. Facere laborum architecto exp', 'Et impedit in occaecati. Et nesciunt laboriosam repellat ratione. Vel iusto corporis ut. Quaerat ea velit sequi incidunt hic. Ut excepturi eum voluptas maiores nam non eos dolorem.', '1997-12-05 00:49:16', '1991-10-20 15:49:22'),
(7, 'Mr. Malachi Cummerata MD', '683.596.8073 x7206', 'Laboriosam ut quis nemo quis vel autem. Similique quia dolores numquam sit est. Molestias laudantium quisquam explicabo eligendi recusandae id nisi au', 'Aliquam velit a aspernatur vitae necessitatibus. Debitis vel ad iste sit sunt. Sit amet officia numquam aut voluptate vel. Voluptas aut aut quod doloribus. Numquam assumenda nihil occaecati culpa.', '2019-03-03 04:13:19', '1996-06-06 08:10:25'),
(8, 'Mrs. Elta Smith DVM', '+1.674.888.3508', 'Et voluptatibus similique facere. Consequatur voluptas neque in debitis. Iure et voluptates et laboriosam dolor ea quia. Aut distinctio quae qui quia ', 'Reiciendis consequatur omnis rerum sint fugit accusantium modi vel. In error facilis earum est minima dolores occaecati. Molestiae eos delectus ut. Ut porro optio modi commodi.', '1993-01-21 16:28:30', '2017-04-20 18:05:37'),
(9, 'Mr. Durward Hamill V', '681-344-2935', 'Sit fugit culpa sed excepturi enim quas. Voluptate id eveniet eius dolorem nulla. Totam a ratione veniam.', 'Quae quis inventore vero asperiores. A cupiditate inventore voluptas eligendi. Ut tempora necessitatibus labore qui. Ducimus quisquam omnis minus earum soluta illum. Minima excepturi error placeat neque cum enim quidem. Aut ipsum ducimus voluptates repellendus.', '2006-04-28 02:26:57', '1991-10-04 19:36:38'),
(10, 'Kailee Koch III', '+12702173418', 'Ad ex saepe vitae rerum et sed. Est eligendi qui quibusdam qui et molestiae. Accusantium laborum dolorem voluptas ad soluta ea.', 'Corporis aperiam aliquam at quia. Quia quos vel expedita culpa accusantium ut. Perferendis sunt molestiae quis aut nisi recusandae ea. Aperiam sint harum cumque dolorem est rerum a. Suscipit praesentium ipsam maxime asperiores enim. Non dicta nihil eum. Minima exercitationem qui nisi.', '1990-11-04 19:08:24', '2001-07-15 10:11:28'),
(11, 'Miss Letha White', '+1 (469) 216-5521', 'Delectus unde repudiandae et esse. Velit qui molestiae ipsam possimus placeat quod est exercitationem. Temporibus maiores similique ut molestias.', 'Voluptatem ab est eligendi consequatur error. Consequatur aut alias nesciunt nostrum. Eum ut quam reprehenderit modi. Earum autem deleniti est et. Sint ut velit sint.', '1990-12-13 16:25:23', '2002-08-19 05:01:22'),
(12, 'Blake Turcotte DDS', '(702) 492-3061 x206', 'Laborum molestiae quo nulla eveniet. Pariatur ut ea possimus iure magnam omnis. Id autem quidem et esse laboriosam.', 'Minima fugit aut non dolore quo et vero mollitia. Aliquid suscipit libero repellat minima odit nulla nihil. Id quas quaerat aliquam. Dolor neque culpa rerum ipsum et est nostrum. Excepturi quo suscipit et. Facere dolor quia occaecati fuga ut.', '2017-04-20 08:04:03', '1996-12-27 13:25:22'),
(13, 'Millie Tillman', '709.294.7363 x1969', 'Totam qui voluptas magnam repudiandae voluptates et quaerat. Accusamus maiores est voluptatibus ducimus recusandae ut. Aspernatur sunt est ut. Quasi i', 'Vel voluptatem qui rem neque eum aut. Qui quasi non reiciendis illo quod. Totam consequatur nemo dignissimos. Reiciendis quo vel cumque assumenda. Ut enim non et. Pariatur saepe eos provident ut est aut.', '2018-06-16 20:05:10', '2019-08-09 02:04:42'),
(14, 'Gisselle Klein', '574.757.5592 x242', 'Quo totam itaque aut qui quia. Eos eius labore qui quis ratione aliquid ipsam. Molestiae temporibus est id aut ullam nobis.', 'Illum iste repudiandae eos sapiente tempora. Ut omnis voluptates perspiciatis nam voluptatem nam dicta. Laudantium distinctio eligendi itaque est. Assumenda accusamus sapiente et facilis consequatur vero exercitationem consectetur. Distinctio id officiis non sed corporis fugit laboriosam. Ab animi illo voluptas ut vel fuga.', '2017-07-26 17:56:48', '1993-02-21 10:04:23'),
(15, 'Leta Hills II', '(413) 618-5961 x6956', 'Quam voluptate ut voluptas ut consequatur qui laborum. Est maiores vitae dolor maxime adipisci ipsum. Perferendis aut quis quis odio eius.', 'A iusto sequi in mollitia non omnis. Sunt eos adipisci maiores facilis quaerat dicta enim. Et nihil enim voluptate. Reprehenderit impedit temporibus dolorem sit vel voluptatibus consequuntur.', '1994-02-12 20:12:52', '1990-11-16 23:32:33'),
(16, 'Isidro McCullough', '(239) 304-1113 x71132', 'Enim quibusdam assumenda magnam eligendi eum provident. Est reiciendis ab earum deserunt eius quas. Soluta perferendis ab rerum ipsam recusandae lauda', 'Placeat architecto dolores accusamus id asperiores. Deleniti quos autem quos maxime impedit. Eum aut qui vel corporis tempora est. Maxime occaecati delectus quod veritatis. Magnam quia sequi delectus est voluptas consequatur in. Dolore quos quibusdam minima qui consequatur.', '1996-06-15 19:52:37', '1994-06-18 02:40:05'),
(17, 'Emmie Cormier DDS', '+1.847.550.3729', 'Tenetur ducimus voluptate consequatur corporis voluptate velit. Rerum aut ullam numquam aut. Ut sunt ut et repudiandae rerum saepe.', 'Sapiente ut et cupiditate magnam reiciendis. Temporibus magnam totam aspernatur natus. Voluptatem aut perferendis dignissimos eligendi id. Soluta consequatur dolores sapiente delectus autem. Rerum odit et quia est delectus temporibus. Non optio quos aut facilis similique aut. Provident modi reiciendis cumque.', '2009-01-14 00:30:28', '1994-12-19 19:07:54'),
(18, 'Garnet Windler', '446.391.5817', 'Officiis similique aut numquam nostrum et est sit. Quia qui sint itaque reprehenderit cupiditate eos. Et autem cupiditate modi necessitatibus quia omn', 'Laborum sunt veniam aut provident nihil ut harum. Sint cupiditate atque consectetur voluptatem. Repudiandae iure dolor unde doloremque sed possimus aspernatur. Ut molestias dolor ipsum quis aut. Tempore perspiciatis velit minima asperiores aut aspernatur.', '2006-12-09 04:13:48', '2010-04-23 06:46:52'),
(19, 'Hyman Cummings', '(338) 719-0675 x562', 'Delectus odit totam exercitationem odit quia temporibus possimus. Cum sunt voluptatum commodi et. Exercitationem ut adipisci cum doloribus quia distin', 'Ipsum atque corrupti rerum aspernatur. Perspiciatis quia doloribus voluptatem optio provident nihil quia placeat. Quis laudantium esse explicabo impedit. Dolorum et voluptatem reiciendis occaecati.', '1992-06-24 20:23:00', '2003-07-20 06:28:00'),
(20, 'Dr. Rasheed Roberts Jr.', '519.997.4932', 'Tempora quibusdam doloribus reprehenderit ut. Rem accusamus in sint. Officiis ut eos assumenda maxime.', 'Voluptas ipsam mollitia possimus repudiandae. Ut illum ipsam minus aliquid doloremque. Iure ut veritatis omnis blanditiis aspernatur nisi. Ut sequi temporibus tenetur dolores consequuntur quis in.', '2008-08-19 03:18:33', '2008-10-27 14:30:58'),
(21, 'Clifton Marvin', '+1 (314) 551-7655', 'Tempora accusantium fuga odio impedit quia deleniti. Ut voluptatem quia soluta aut.', 'Et repellat officiis nihil velit sed. Quia atque odit quo sit voluptas aut. Dignissimos ea rem omnis eos praesentium. Dolores praesentium omnis facilis. Rerum reprehenderit sint sed et voluptatem qui. Iure maiores quaerat a quos qui enim. Veritatis qui et aliquid a ratione eius.', '2002-12-26 08:29:13', '1993-01-12 03:01:46'),
(22, 'Zion Jacobson', '(615) 716-4105 x7189', 'Eum molestiae fuga qui sed. Nulla quaerat et voluptatem adipisci et a. Voluptates quae ea omnis.', 'Quia quasi illum mollitia enim necessitatibus. Ullam eos sequi nihil facere cum quia. Occaecati vero sint ea voluptatem et nemo voluptas. Maxime dolor minima autem non soluta aspernatur impedit. Ipsam temporibus sed ex vero excepturi quasi perspiciatis ullam. Saepe consequatur quo et dolore quo reprehenderit sit. Quam consequatur nulla cumque sapiente at earum.', '2005-07-13 15:50:44', '2010-10-22 21:24:19'),
(23, 'Zackery Hirthe', '+1-789-213-8065', 'Quo doloremque placeat dolores natus architecto rerum nihil. Aut corporis odio et laudantium dolor quod asperiores. Placeat non quaerat odio dolorum a', 'Recusandae voluptatem assumenda quo iste quibusdam. Consequatur est distinctio velit et labore ea. Aliquid ut rerum rem qui sed animi suscipit. Eum quaerat adipisci eveniet cum necessitatibus fugit. Eveniet sint voluptate et natus quo.', '2001-10-03 14:42:56', '2012-02-14 04:23:20'),
(24, 'Mr. Scot Nolan', '1-552-793-2426 x32699', 'Modi quia aut magni qui. Sapiente et aut temporibus iusto vel repellat.', 'Ipsum eum nobis autem et omnis itaque sint. Cumque ut sed et quaerat. Saepe esse laborum sapiente error quia. Beatae labore voluptas libero ut quia et. Quia et sed vel ab fugit nostrum quod. Eaque enim ipsum corporis dolor esse qui quia.', '2001-04-25 22:27:04', '1992-04-15 15:15:45'),
(25, 'Joseph Herman', '613-720-2120', 'Nisi illum autem facere cum libero corrupti. Distinctio perferendis tenetur illum rem nulla corrupti sapiente fugiat. Eius non deserunt magni laudanti', 'Exercitationem cupiditate quia doloribus esse. Quam voluptatem quos maiores ut. Dicta voluptate rerum assumenda voluptatem ab rerum. Veniam ut earum quibusdam nesciunt. Ut magnam deleniti nemo non. Consequatur quis saepe ut similique libero. Neque fugit praesentium exercitationem ipsam voluptatibus quidem.', '2018-08-31 11:54:48', '2013-09-22 03:03:00'),
(26, 'Jalon Morar', '919.385.0779 x50938', 'Quaerat inventore aut pariatur qui. Nulla distinctio omnis qui eos nesciunt sequi qui inventore. Beatae minima maiores voluptatem in expedita totam. C', 'Dolorem nisi quos est libero perspiciatis quo. Dolor illum praesentium itaque illo et est. Modi debitis et quis expedita. Quo aut et sed voluptas quas incidunt. Porro corrupti eum ducimus excepturi.', '2015-02-11 04:47:52', '1994-10-06 17:33:22'),
(27, 'Payton Klein', '1-339-499-0639 x053', 'Cumque dolorum ut qui sint ut molestiae. Aut saepe accusantium magni in. Non iusto et ratione aut.', 'Eius cum impedit tempora in veritatis. Et rerum aut nihil expedita voluptates optio est. Et quo et et harum blanditiis est. Assumenda cumque sed eaque laboriosam facere voluptatibus. Sint eos iure beatae in aliquam ad dicta.', '2002-08-30 00:33:39', '2012-03-07 03:20:05'),
(28, 'Aniya Rau', '+1-520-453-1650', 'Est et quia aut libero provident adipisci. Qui est reprehenderit dolore iure eos. Nam doloremque vel vero sit debitis ut facere cum. Nulla aut at eaqu', 'Exercitationem voluptatem ut aliquam beatae ipsa dolore voluptatem. Qui necessitatibus incidunt deleniti omnis eos quidem. Quidem repudiandae voluptas aut enim quibusdam consectetur eos. Temporibus voluptatem consequatur eos quis alias ullam vel. Quis rerum recusandae molestiae tempore soluta minima. Repellendus numquam culpa alias id quasi sunt.', '2009-03-24 01:27:27', '2009-10-07 05:43:48'),
(29, 'Prof. Kara Zboncak', '1-859-329-5312', 'In quibusdam molestiae ipsum optio nihil numquam unde. Commodi in nulla in. Laborum nam error doloribus et a mollitia. Eos ut et dolor id nam quas ull', 'Magnam dolores beatae et quia. Ratione sit fugit ratione deleniti sequi id quasi. Aperiam aut ducimus incidunt culpa nesciunt. Nihil officia quia laborum dolor dolor. Enim recusandae iure blanditiis voluptatem eaque optio. Consequuntur atque officia consectetur eos. Quo vitae ad delectus ea.', '1992-12-02 19:00:10', '1999-08-06 07:39:33'),
(30, 'Prof. Kasey McKenzie IV', '589-462-5827', 'Ut nesciunt delectus excepturi nemo est ab exercitationem et. Ducimus soluta sit quis asperiores ut. Sed quos aut molestiae. Reprehenderit blanditiis ', 'Nisi quis vel soluta. Qui asperiores quae facere. Optio ex quaerat nemo tenetur labore consectetur. Accusamus magni eius ut esse nesciunt quasi recusandae alias. Voluptatem qui non dolor dolore velit.', '1994-06-13 20:33:44', '1997-12-25 06:49:10'),
(31, 'Kendra Cronin MD', '857-916-3161', 'Tempore voluptate est quisquam aspernatur. Adipisci corrupti officiis impedit qui. Asperiores nesciunt modi vero temporibus. Sunt vel asperiores molli', 'Dolor odit eveniet officia doloribus minus. Ut nam quis assumenda ipsam quam odit. Dolorem modi sit aut maxime fuga maxime. Et aut distinctio in doloribus occaecati magnam. Illum animi qui doloribus ut soluta laboriosam ad debitis.', '1993-04-17 04:53:04', '1994-03-25 01:45:46'),
(32, 'Ole Dooley III', '+1-981-413-5986', 'Sit possimus quaerat exercitationem et possimus numquam eius consequatur. Possimus et mollitia eius nam. Error soluta ipsam nihil est et perspiciatis.', 'Tempore est et quibusdam consectetur dolorem. Ratione culpa qui odit maiores corrupti omnis. Perspiciatis cum ratione dolores libero voluptate ipsam nam facere. Et consequatur consequuntur consequatur quas odit beatae. Nihil nihil est quia consectetur libero minima ut.', '2013-12-31 13:17:12', '2005-10-16 19:21:19'),
(33, 'Mr. Dee Satterfield', '(862) 546-6924 x7160', 'Quo consequatur consequuntur cumque dignissimos architecto at repellendus minima. Dolor impedit eligendi quaerat sequi unde tempore vel. Eos quae porr', 'Velit rerum dolor fuga quasi vel magnam quo est. Ad dignissimos ipsa et rerum similique. Incidunt ex eum neque nulla dolor. Odio non officiis iure quidem tempora laudantium. Numquam labore corporis voluptas voluptates similique sunt excepturi.', '2011-09-06 12:33:19', '2014-01-17 08:35:43'),
(34, 'Prof. Cristobal Predovic V', '+1-545-602-1842', 'Velit est sit veniam qui ducimus. Est quis est libero vitae quisquam quaerat quis. Quos explicabo aut iusto. Suscipit impedit sint iusto est.', 'In assumenda voluptas veritatis quaerat. Aut recusandae sequi harum et qui id. Itaque ut earum vel qui quia omnis. Delectus et provident quae architecto aut mollitia et minus. Temporibus numquam rerum fugiat fuga molestiae reprehenderit non.', '2009-03-06 14:28:47', '2017-08-25 17:28:13'),
(35, 'Antwon Harber IV', '(296) 474-9562 x502', 'Dicta nihil illum quaerat similique dolores. Consectetur perferendis doloremque autem quis. Sint atque dicta aliquid ipsum officiis tenetur impedit.', 'Quaerat laudantium et omnis. Ullam rem distinctio ut non perferendis consequatur. Ut et unde aut. Sunt eos rerum provident eligendi id.', '2003-07-17 05:48:35', '2008-08-04 21:29:48'),
(36, 'Prof. Mathew Howell Jr.', '884-632-2675 x32407', 'Quis at laudantium quod eos repudiandae officia dolorum. Vel rerum dolorum quia iure est. Autem eveniet atque atque labore.', 'Ex voluptates enim eveniet voluptatum mollitia quo consectetur. Consequatur fugit dolor est ducimus debitis. Ullam facere laudantium voluptatem rerum eligendi eligendi aut. Reprehenderit dolorem nihil ipsa repellendus sunt dolores perferendis.', '2014-02-12 01:10:40', '1991-07-28 19:49:38'),
(37, 'Dr. Rollin Durgan III', '879-253-0273 x9120', 'Illum rem aliquid praesentium libero. Assumenda est adipisci officia. Cumque et commodi ut occaecati.', 'Et qui quasi expedita molestias aut quidem incidunt. Repudiandae cumque est tempora est tempore omnis quia. Et voluptas consequuntur enim ipsam. Dolor maxime ut voluptatibus veniam.', '2007-03-19 11:02:44', '2015-11-24 12:54:58'),
(38, 'Josianne Wolf', '941-430-4223', 'Sint est sunt est. Quia veniam consequatur ad nostrum. Voluptatem aut sapiente fuga distinctio.', 'Assumenda sunt tempora magni ipsam. Sunt ipsum sunt laboriosam est. Dicta impedit non accusamus deleniti magni. Sed amet qui consequatur quasi qui.', '2013-09-28 14:23:36', '2012-08-15 12:21:15'),
(39, 'Emmett Kulas', '1-397-390-3534 x6402', 'Fugit odit fugit eaque perspiciatis voluptates. Velit iusto temporibus ab repellat. Et aut voluptatem voluptatem rem qui. Inventore eveniet accusamus ', 'Voluptatem autem ut voluptas accusantium laudantium minus dolorem. Placeat voluptatem excepturi aliquam odio fuga. Qui quis alias qui modi dolores. Et rerum sed quaerat dicta neque voluptas. Libero harum aliquid sed omnis laudantium aut. Amet est blanditiis dolores rerum veritatis suscipit. Consectetur est porro temporibus aspernatur est ipsa.', '1993-09-04 23:21:09', '2003-10-25 04:05:56'),
(40, 'Mrs. Felicia Harber', '971.232.5795 x31663', 'Incidunt quis similique impedit quia aut nihil architecto. Dolorem laborum tempore est distinctio. Commodi exercitationem aut dolores voluptatem dolor', 'Ut voluptatibus omnis totam provident quis. Iste earum molestiae laudantium laboriosam error quisquam impedit. Et et eveniet non rem. Cumque omnis eos earum dolores qui. Inventore voluptatem quibusdam ex aut consectetur qui. Sit quo ut dignissimos dolorem. Sed neque eos voluptatem molestiae sit unde.', '1998-06-11 19:18:52', '2003-06-20 18:11:55'),
(41, 'D\'angelo Jacobs', '1-304-994-6150 x924', 'Sapiente rem dolorem praesentium sed sed. Quas adipisci molestias consectetur at neque ratione optio. Quia iste ea molestiae sed iure ea. Porro dolore', 'Delectus ea enim excepturi nisi adipisci non. Reiciendis commodi ipsum rem voluptatem impedit consectetur et. Quaerat quidem occaecati cupiditate et minima error. Voluptatem quod expedita et quia et expedita. Tempora est aut sint voluptatem vitae. Iusto quia fugit quo aliquam. Alias fugit non nihil labore voluptatem.', '2011-09-22 20:16:34', '2006-06-30 20:35:23'),
(42, 'Jerald Lueilwitz IV', '(265) 874-5543', 'Praesentium ut fugiat ut eligendi necessitatibus veritatis maxime. Inventore vitae nisi quia minima vero suscipit doloremque.', 'Nulla rem aliquid excepturi quibusdam. Repellendus magnam unde sit quisquam culpa omnis adipisci. Ut voluptatem quasi minus veritatis reiciendis ut amet sit. Quidem fugit voluptatem libero libero rerum ducimus repellendus.', '2002-05-09 09:26:46', '2011-04-20 08:57:22'),
(43, 'Mr. Noel Rolfson', '+1 (978) 601-8940', 'Nesciunt et quidem quo qui repudiandae delectus magni aliquid. Est molestias perspiciatis sequi quibusdam. Accusamus dolorum vitae dignissimos nihil n', 'Delectus modi doloribus vero delectus fugit dolorum. Sapiente mollitia magnam ducimus facilis et maxime. Dolores dolores aut atque sint id excepturi placeat. Voluptatem ratione corrupti itaque aut deleniti dolorem facilis quam. Et ad corporis qui aperiam. Ab consequuntur animi quasi odio.', '2012-12-18 23:12:45', '2013-02-23 04:02:55'),
(44, 'Martin Grant', '527-914-2679 x74942', 'Id omnis ut cupiditate molestiae culpa. Provident ut aut ab ex iste maxime et ut. Et recusandae eaque corrupti laborum. Quis fuga nisi quis vero autem', 'Autem mollitia quod ea officia est. Nulla earum nihil aut ut. Quo labore sit dolores recusandae saepe. Tempora totam molestiae rerum est similique.', '2011-11-20 00:09:38', '2004-12-04 01:19:24'),
(45, 'Eulah Goyette I', '1-248-857-1882 x22794', 'Hic ab eos accusantium non quo. Officia placeat sapiente aut in. Cupiditate et minus et ab dignissimos qui vel.', 'Nemo eos in officia labore inventore laudantium. Non itaque saepe pariatur autem. Quam fugit quis sed molestiae. Quasi veritatis sit impedit reiciendis voluptas molestiae. Consequatur impedit laborum est aut. Saepe et consequatur voluptatem non.', '1990-01-31 13:30:04', '2010-07-21 07:49:45'),
(46, 'May Wisoky', '(790) 310-0578 x99535', 'Nam pariatur et incidunt nulla amet. Ut consequuntur commodi eum repellendus minus voluptatem. Et enim enim repellat tempore quidem.', 'Deleniti ea eum autem dolore. Tempore repudiandae quasi aspernatur voluptatum aliquid iure. Modi error suscipit magnam deleniti et. Possimus explicabo ut porro voluptas. Magni velit illo qui ex neque dolor.', '2013-08-15 00:42:09', '1996-04-14 12:42:02'),
(47, 'Juliana Pagac', '1-583-375-0066 x726', 'Tenetur vero a velit omnis. Est ut veritatis eum consequuntur consequuntur dolores asperiores. Culpa id molestiae enim.', 'Voluptatum ut omnis pariatur culpa ut quae iure. Non omnis est et eos sit vel qui voluptate. Cumque quaerat ullam consequatur et architecto laboriosam. Debitis fuga incidunt ea quia eum eligendi vel. Illum sint incidunt veritatis fugiat autem et. Laboriosam laudantium aut quas quis odio sit recusandae ducimus. In ex omnis porro veritatis dolorem distinctio ducimus.', '2016-05-01 23:36:28', '2017-07-11 02:12:33'),
(48, 'Mr. Brooks West PhD', '583.936.6156', 'Et et officiis odit dolor et. Rerum esse commodi et perferendis aliquid nulla quos est. Rerum voluptatem officia blanditiis. Deserunt molestiae sint q', 'Et aut soluta eum voluptas id alias quidem. Nesciunt minus reiciendis accusamus esse vitae maxime. Rem eius repudiandae non magnam. Quisquam aperiam voluptatum magnam dolorem. Explicabo officiis porro voluptatem maxime totam nobis cupiditate. Et praesentium adipisci consequatur ea. Et earum maxime ab id.', '1998-09-25 18:58:56', '2009-09-02 02:56:02'),
(49, 'Caleb Keeling', '1-891-432-3824 x91313', 'Ut et aut nostrum impedit temporibus veritatis. Voluptatem est nam quam voluptatem. Velit ratione consequatur placeat quis et consectetur.', 'Deleniti quae quasi et sit est totam molestiae cum. Debitis amet labore tempore quo. Quis provident et ex ut sequi beatae et. Ullam reiciendis quos ullam quas est est beatae. Eum sint placeat quis dolores dolores minima excepturi. Et officia doloremque dolores aspernatur illo eos blanditiis.', '2010-07-09 12:29:25', '2003-11-22 17:46:48'),
(50, 'Cielo Hagenes', '1-345-926-1063', 'Necessitatibus quo esse odit et voluptatem similique. Hic provident modi eius quam magni. Deserunt autem est quae hic velit. Qui pariatur ipsam ipsum ', 'Corporis dolorum et officia. Omnis omnis expedita dolore nihil. Eligendi sint consectetur non possimus in velit. Et eos odit enim est.', '1994-12-22 22:52:10', '2003-04-02 07:04:24'),
(51, 'Mr. Afton Connelly Sr.', '+1 (991) 848-5460', 'Corrupti praesentium consequatur dolore voluptatibus ipsum fugit. Et quia quasi veritatis ad deleniti dicta sint. Quas corporis totam quibusdam repreh', 'Qui vitae voluptatem et voluptatem et minus. Vel fugit deleniti minima id minima officia perferendis. Dolorem quaerat dolor accusantium numquam vel maiores. Et dolor eveniet atque aut odio enim. Sed et eos tempora cupiditate.', '2016-08-01 16:25:59', '2001-09-14 14:10:07'),
(52, 'Zoie Gibson', '1-376-921-0069 x74437', 'Excepturi sit voluptatem est harum quia. Et iusto dolor deserunt consequuntur. Nihil expedita sed aliquid et est.', 'Eveniet aut quo laborum ut recusandae qui. Vel minus aut sed sapiente a dolorem. Dolores quis eligendi optio. Soluta velit occaecati et at quia qui. Qui accusamus optio ut est quasi nostrum.', '1991-09-24 11:09:42', '1990-09-04 14:30:04'),
(53, 'Kaelyn Stroman', '+1.859.961.5203', 'Blanditiis neque sunt et a omnis consequatur sed. Adipisci qui tenetur impedit repellat molestiae fugiat. Qui ut veniam aut nulla.', 'Est illo ut sit possimus in ipsam. Quae aut fugit ut. Et voluptas natus cupiditate eos velit sit. Provident eligendi sit eum vitae. Ex consequuntur dolore et dolorum odio. Molestiae aliquid laborum architecto earum dolorem.', '2018-03-30 14:33:12', '1993-06-19 12:25:31'),
(54, 'Golda Emard', '+1.239.781.3765', 'Optio exercitationem dolorem nihil ea distinctio sunt. Qui ea quia maxime rem qui. In non perspiciatis porro saepe. Quibusdam sed eos corrupti aut nih', 'Unde praesentium tenetur omnis est. Et reiciendis cumque maiores id voluptatibus est. Fuga nam sit blanditiis aut. Hic sunt sit sunt nisi recusandae quaerat. Placeat suscipit aut ea maiores est deserunt expedita. Deserunt dolores et tenetur ratione rem molestias numquam. Consequatur rem laboriosam tempore velit ad voluptatem.', '2013-06-07 09:26:07', '2011-11-04 18:51:19'),
(55, 'Rahsaan Hettinger', '+1-564-876-3009', 'Numquam excepturi modi minima. Error enim maxime eum eum consequatur minus debitis. Expedita consequatur ut eveniet est.', 'Est quae distinctio ut. Maxime beatae quia debitis officia vero. Sed vel est aut quasi. Quis ut ut nam rem suscipit aut aspernatur. Nostrum corporis consectetur expedita dolor eius. Temporibus recusandae molestiae qui sed. Deleniti ut nam ad magni.', '1998-12-17 04:18:43', '2001-08-27 18:45:25'),
(56, 'Mr. Clovis Herzog', '(563) 787-9100 x901', 'Doloribus debitis sunt nihil voluptas culpa. Error soluta est ut aut eos. Eaque ut id et omnis accusamus officia. Et at nobis aperiam repellat officii', 'Vero suscipit ut consequuntur velit omnis ratione. Est quia sequi facilis aperiam excepturi. Architecto voluptas voluptatem tempora quas. Non animi suscipit velit. Ea atque quis sunt vel est qui quia. Temporibus omnis omnis et ipsa doloribus.', '2016-10-29 11:24:31', '2018-10-02 15:52:17'),
(57, 'Sidney O\'Keefe', '204-407-7255', 'Commodi quisquam tempora est ab eum. Repudiandae facere dolorem earum qui natus molestiae quia. Numquam tempora soluta vitae. Ducimus sint mollitia nu', 'Perferendis nostrum accusantium et rerum quia libero. Ullam molestiae eum beatae quam pariatur commodi non tenetur. Voluptatem repudiandae qui blanditiis sunt incidunt fuga rem. Porro totam vitae facere est voluptatibus. Explicabo et dicta quibusdam mollitia quia. Sit animi nobis sit deleniti velit ullam quo quia. Minus et iusto veritatis sit.', '1998-06-25 15:20:33', '1996-03-01 10:39:18'),
(58, 'Mrs. Frances Thiel PhD', '+1-559-992-1698', 'Molestias blanditiis porro laudantium tempora. Illo et quod et ipsa commodi tempore. Aliquam voluptatem minus fugit non hic. Deserunt facere in iusto ', 'A et veritatis porro ut earum non. Odio perspiciatis sunt perferendis voluptatem eligendi magnam cupiditate. Mollitia at sit deserunt ea aliquid. Sint eveniet ut laborum iure.', '1995-11-01 03:07:11', '1998-07-31 18:33:34'),
(59, 'Gail Kuhlman DDS', '(545) 324-7162', 'Quia consequuntur aspernatur sunt. Est fuga fugiat qui ullam excepturi.', 'Eligendi sed mollitia dolorum unde autem possimus eos. Ab eligendi est nam debitis enim. Est tenetur natus nemo iusto. Non aut nisi quos. Fugiat molestiae voluptatem alias porro perspiciatis et quis. Dicta explicabo et saepe necessitatibus quo.', '2000-09-18 20:42:37', '1998-02-23 02:51:26'),
(60, 'Eunice Ferry V', '269.683.1486 x956', 'Et vitae quia accusamus ad quia sed. Sit enim voluptatem molestiae. Tenetur facilis rerum ea quam perferendis sunt. Maxime ipsam accusantium quas temp', 'Dolore repellendus impedit voluptatem velit id dolores soluta sit. Voluptatem ex sint voluptatem distinctio et qui. Voluptatum voluptas repudiandae quas distinctio dolor. Ex at ea quis est quaerat ea. Quae expedita consectetur optio qui eaque magni. Doloremque dolores inventore iste consequatur ipsum quia. Dolores odit pariatur maiores aut amet quaerat ducimus ea.', '2007-03-31 13:17:42', '2003-03-15 03:08:11'),
(61, 'Schuyler Stamm', '1-228-512-8478 x80727', 'Vitae qui est non velit nobis. Officiis in reiciendis aut ut sequi inventore saepe. Ut perspiciatis et voluptas. Consectetur veniam et odio non eaque.', 'Et voluptatem ut aperiam est. Facere tempore nesciunt id tenetur. Eligendi sint nihil veniam modi voluptas repellat et molestiae. Perferendis vitae voluptas sequi asperiores quibusdam laborum.', '2004-09-04 09:11:11', '2007-08-26 00:36:20'),
(62, 'Kip Fisher MD', '(401) 776-6197', 'Eligendi et distinctio eos. Vel accusamus impedit recusandae dolores delectus. Nobis dolor iusto sunt libero. Doloremque dolores quia omnis quasi.', 'Perferendis libero sunt corrupti nihil doloremque. Et vel quo odit aut dolores suscipit et. Quae eligendi qui cumque dolores aut aut nesciunt. Officia eligendi aut quas repudiandae. Illum adipisci voluptas et exercitationem. Saepe facere deserunt explicabo nam aliquam.', '2001-04-29 01:31:54', '1997-02-07 22:22:54'),
(63, 'Elaina Kuhic', '329-252-4589 x7666', 'Nam accusantium quisquam magni repudiandae ipsam ipsam. Voluptatem illo occaecati id quaerat quidem nulla eius.', 'Esse rerum doloribus nostrum odio veritatis. Aut doloribus laboriosam aut est. Aspernatur aut nihil in quidem error quis. Tempore quia laudantium ut. Quia sit aliquid et. Iusto vel consequuntur hic placeat. Animi consequatur error ex sint similique odit nam.', '2004-10-22 19:29:09', '2006-08-16 20:58:06'),
(64, 'Leo Konopelski', '575.721.0915 x6140', 'Omnis et laboriosam porro quam non aspernatur. Alias mollitia quis fugiat dicta qui. Earum rerum omnis et et. Atque modi accusamus omnis sint aut modi', 'Esse ipsa dolore nihil nulla. Qui culpa laborum temporibus. Facilis magnam fugiat ut quam ut. Animi iste dolorem sunt praesentium ut natus. Maiores rerum omnis exercitationem nobis sed ut fugiat excepturi. Eaque architecto itaque iste veniam ipsum a sed impedit.', '2002-12-11 03:50:13', '2010-02-19 04:51:54'),
(65, 'Prof. Roslyn Cremin', '1-584-897-5229 x999', 'In magnam id eum iure illo dolore. Et itaque qui ducimus et.', 'Perferendis a numquam cum magnam. Porro eum pariatur quos et nulla. Sit aut minus sed. Iure quibusdam in eius doloribus eum quia. Natus alias omnis hic et. Ipsum animi dolorem voluptatem dicta omnis corrupti labore.', '2007-12-29 08:41:49', '2018-04-29 00:35:20'),
(66, 'Jillian Douglas', '(869) 689-3852 x92033', 'Et illum omnis ducimus voluptas sit quas. Odit repellat doloremque doloribus ratione. In molestias eum impedit voluptates voluptatem nobis repudiandae', 'Dolor numquam consequatur et minus. Earum in quae repellat molestias culpa in. Similique maxime debitis natus. Dolor aperiam enim totam praesentium. Quam ut quae vel non rem tenetur. Laudantium omnis sint repellendus dolor molestiae autem voluptatum. Ad sunt harum voluptatem.', '1992-09-09 12:23:48', '1999-01-27 08:04:49'),
(67, 'Davin Buckridge', '+19625428796', 'Qui modi dolor nulla autem. Culpa et aut fuga eos animi doloremque eum. Quos sint dolorum nam rem odit et delectus doloribus. Eligendi blanditiis cumq', 'Et corporis accusantium dolores at. Quis ab et nihil ab. Et est dolore nihil est. Quisquam voluptatum consequatur exercitationem quia suscipit soluta enim.', '2003-10-17 08:33:53', '2003-11-20 14:15:47'),
(68, 'Casper Haley', '740-486-8113 x5954', 'Ducimus et ut et ut aut porro aut. Minus odio sunt et neque similique.', 'Sint possimus consequatur voluptas recusandae consequatur. Vitae asperiores esse quo neque id. Qui quos eius a minima doloremque deleniti. Cum inventore et officiis. Cupiditate debitis aut pariatur alias fugit qui. Cupiditate dicta sed omnis sequi. Eos voluptatibus velit quia vero aut itaque.', '2003-09-20 00:20:41', '1995-02-12 05:49:22'),
(69, 'Ms. Helga Daugherty', '843-721-9712 x8953', 'Excepturi sunt nemo ipsam eligendi. Voluptates quos omnis maiores est suscipit accusantium. Tempora minima dolor ullam distinctio officiis ut.', 'Qui non voluptatem modi qui incidunt. Omnis qui deleniti eligendi modi vel itaque. Tempora ipsam omnis est corrupti qui at. Quibusdam ut perferendis ut debitis nisi tempore ut. Hic mollitia dolore neque et fuga. Dolorum voluptatem ut quisquam officiis. Fugiat est quasi nihil cum.', '2008-10-20 04:23:40', '1999-04-29 07:18:02'),
(70, 'Osborne Dare', '381.407.2663 x22919', 'Consequatur maxime est error rem omnis. Et doloremque cumque unde omnis. Dolorem aliquid at beatae sit.', 'Exercitationem ut ut veritatis et. Aliquam voluptas rerum dolores sunt quod fuga consequatur. Maxime veritatis et laboriosam autem. Expedita aut voluptatem qui suscipit libero. Soluta minus dicta quaerat est distinctio et quaerat. Quis voluptas omnis aut ab. Iste numquam est doloribus et quas qui.', '2001-06-27 11:15:56', '1991-10-18 02:04:06'),
(71, 'Kevon Lindgren', '(853) 259-0507 x387', 'Facere laboriosam repellendus commodi. Temporibus esse est architecto qui dolor distinctio aut. Labore beatae laboriosam minima impedit quia est. Est ', 'Vel vero cumque commodi velit nam. Facilis reprehenderit exercitationem laboriosam doloremque ullam in. Est vero eos expedita et. Nostrum earum distinctio quibusdam dolorem natus excepturi.', '1994-07-16 17:56:26', '2009-11-04 14:26:17'),
(72, 'Caden Harris', '558.760.5382 x5386', 'Omnis id modi illo. Nisi unde distinctio dolorem omnis omnis. Accusantium necessitatibus ut qui quo quia quas tenetur. Dolor adipisci eum tempore beat', 'Corporis est non eius omnis aliquid porro. Ea reiciendis quia tempora et sed impedit optio. Odio est praesentium enim omnis illo delectus at. Qui tenetur ea id pariatur et voluptatem sequi.', '1997-01-15 21:04:50', '1994-12-03 14:21:23'),
(73, 'Ms. Arlene Crist IV', '257-221-7568 x459', 'Nostrum veniam qui nulla. Repudiandae aliquam sed voluptatem laborum iste exercitationem. Nemo dolor magni veritatis.', 'Tempore ex minima debitis excepturi labore expedita error. Perferendis reiciendis quo temporibus itaque. Eligendi aut nisi animi sunt sunt. Impedit recusandae ipsam reiciendis vitae. Quo delectus ducimus occaecati quos. Voluptatem consequuntur tenetur reiciendis corrupti.', '1993-11-18 16:38:42', '2012-04-29 05:17:49'),
(74, 'Dr. Blaise Jacobson DDS', '1-674-449-6793', 'Aspernatur illo ut necessitatibus et. Ipsum veniam ullam molestias ipsa at molestiae. Placeat qui nam alias voluptas exercitationem. Voluptatem unde v', 'Molestiae qui ullam officiis saepe doloribus non possimus repellendus. Aliquam tempora et et at voluptates architecto. Est aut a cum labore enim sequi. Necessitatibus nulla a qui sunt fugit unde quo. Consequatur sint dolore consequatur sequi blanditiis. Qui est neque nesciunt quis molestiae velit ut. Alias quidem maiores hic quia.', '2009-11-29 06:18:23', '2003-06-11 16:48:08'),
(75, 'Hillard Gulgowski', '+1 (805) 737-8775', 'Quo ut sunt labore. Beatae quo sit qui quisquam. Sapiente ipsam voluptas in. Similique molestiae totam veritatis sed. Eius qui est ipsam.', 'Aut molestiae nesciunt accusantium dicta inventore sequi consequatur. Unde et enim soluta et ex voluptatem. Vel eos sint corrupti corporis sint eius itaque. Et qui sed ut doloribus provident beatae.', '1999-04-26 04:57:11', '1999-12-09 10:48:13'),
(76, 'Erich Sanford DDS', '258.700.5501 x36637', 'Dignissimos eveniet possimus quos numquam quo omnis sit. Est esse architecto minima est fuga ipsa in. Odio assumenda fuga libero veniam explicabo laud', 'Omnis quo qui voluptas nesciunt amet qui sunt ea. Quas et aut maxime dolores vero error aut. Qui deleniti non enim dolores rerum harum cupiditate officiis. Corrupti nihil est officia earum. Facere provident deserunt nesciunt beatae.', '1991-05-14 23:55:36', '1992-06-15 23:08:31'),
(77, 'Kris Baumbach DVM', '(978) 591-1500', 'Vel quae assumenda et vero cum. Dolor eum qui et voluptates numquam occaecati sit. Numquam voluptatem voluptatum earum quis recusandae pariatur aut.', 'Mollitia animi dolores quibusdam cum. Iure porro deleniti sunt qui temporibus voluptatem. Aliquam ut et voluptatibus consectetur non voluptatem culpa sed. Et vitae et quisquam inventore laudantium voluptatem fuga vel. Dolor velit aut quas officia fugit. Voluptates et ut eligendi repellat ut. Exercitationem ratione tempore aut sint aut maiores dolor.', '2015-12-20 17:10:30', '1994-10-21 07:45:56'),
(78, 'Mr. Sigmund Wehner II', '775-752-0772 x64398', 'Minus at ea quod aspernatur fuga delectus et. Doloribus veniam iste ea enim accusantium recusandae excepturi. Aspernatur quis quos placeat est et. Deb', 'Inventore beatae sit veniam aut et error laudantium. Magnam iste sed quae similique. Laudantium doloribus laboriosam nam ullam. Esse doloremque ipsum qui.', '2009-06-11 21:47:45', '2000-12-30 04:57:49'),
(79, 'Mrs. Adah Lockman', '993-637-2218 x334', 'Nulla ad adipisci deleniti placeat debitis laudantium. Aliquam rem accusantium animi doloremque veritatis pariatur sed. Tempora adipisci iure quisquam', 'Hic dolores sunt id illum saepe. Quia est voluptate ut exercitationem. Omnis accusantium explicabo dolor soluta occaecati ut. Quo tempore odit et sit ipsam.', '1998-10-26 23:34:08', '2009-05-09 22:03:45'),
(80, 'Mr. Colten Hudson', '664-754-5734 x32256', 'Id et rerum quia sit sint pariatur. Eaque sed perferendis mollitia maxime nulla quos corporis. Porro nihil aspernatur vitae beatae est voluptas invent', 'Enim consequuntur omnis animi molestias veniam temporibus eveniet. Sit facere temporibus dolor non ullam. Consequatur aut sed aut. Natus enim repellendus dolor omnis possimus consequatur.', '2017-06-08 07:44:59', '1995-07-01 05:31:18'),
(81, 'Xzavier Grant', '610-310-1394', 'Natus est dignissimos corporis et sapiente. Nihil porro non illo perferendis et. Molestias et non perspiciatis quis quos totam aut. Esse rerum aut ame', 'Illum cum consequuntur delectus corrupti voluptas. Natus nisi voluptatem debitis est amet et architecto. Non minus quisquam quae aut consequatur. Debitis iste delectus qui non doloribus. Odio quos natus nostrum quae. Et sed non enim non.', '2002-10-26 10:11:13', '1994-04-17 02:23:38'),
(82, 'Mona Kunze', '289-603-4581 x45490', 'Totam quia velit eligendi vel quo. Eum ab omnis quia eos culpa fugiat quod. Nihil et aut nemo repudiandae quis ea eligendi. Nisi minus ut perferendis ', 'Qui tempora eaque earum nam esse voluptatem provident libero. Deserunt tempore voluptatem hic asperiores. Esse accusantium eaque sed doloremque quia dolores ut. Ea reiciendis animi consectetur aut enim iste est velit. Vitae illum voluptatem necessitatibus incidunt ullam id. Aut ut quis doloremque dolores.', '1999-01-27 01:10:22', '2000-10-29 00:56:12'),
(83, 'Hazle O\'Connell', '(324) 783-7754 x9743', 'Sit adipisci sapiente sequi autem velit et expedita. Expedita dolorem vel sint est neque ut architecto. Et molestiae rerum ratione nobis. Tenetur numq', 'Facilis eum dolor dicta laboriosam dicta itaque perferendis voluptas. Id quas nobis sed debitis excepturi excepturi perspiciatis. Quia consequuntur ratione omnis quam possimus sunt. Eius rerum velit provident distinctio officia omnis ut. Laborum ut occaecati cupiditate repellendus.', '2010-10-14 03:21:17', '2010-11-24 20:18:45'),
(84, 'Eliseo Welch', '419-578-4280 x869', 'Id sit suscipit voluptas qui sed dolor inventore voluptas. Deserunt rerum et et officiis. Ut consequatur perferendis illum accusantium fuga tempore au', 'Omnis dolorem suscipit atque. Necessitatibus sint velit vel cupiditate. Totam placeat in sint consectetur atque dolorem ad et. Voluptate est ducimus ex reiciendis.', '1993-01-27 19:24:45', '2003-07-20 19:00:55'),
(85, 'Coralie Hermann', '742.729.6700 x967', 'Ea rerum quibusdam velit consequatur. Adipisci quam iste distinctio excepturi. Modi dolorum neque ut.', 'Quasi totam ab dolores occaecati quod repellendus et. Omnis voluptatum quia earum sit laboriosam eum aliquam. Quidem ut neque rerum veniam saepe nihil omnis. Dicta neque velit ea.', '1992-03-21 07:01:23', '2015-07-03 10:07:02'),
(86, 'Sonny Balistreri', '+1 (321) 544-1635', 'Quisquam iure quis repellendus at enim. Rerum dolorem adipisci exercitationem suscipit aspernatur porro et. Velit est dignissimos minus ea aliquid.', 'Eum animi et rerum saepe aut iure. Quia nobis perspiciatis ut voluptatibus esse ea. Harum laboriosam aliquid repudiandae dolorem cupiditate. Quis aut iusto officia quidem omnis natus. Est atque tempora vel eveniet quaerat velit inventore aliquam.', '2013-11-19 04:33:21', '1993-03-02 08:10:19'),
(87, 'Prof. Olaf Lubowitz', '+1-712-613-0743', 'Rerum quibusdam dignissimos eum sunt libero voluptatum ut fugit. Cupiditate ut dolor quos aut enim asperiores dicta. Minus sit non sunt ad. Minima ali', 'Voluptas enim rerum quisquam vitae nulla. Enim aperiam iusto distinctio ipsum et et. Nemo ipsum at tenetur facere molestiae. Quia molestias nisi voluptates consequuntur. Eligendi blanditiis rerum reprehenderit maiores explicabo id. Rerum ab pariatur ducimus suscipit aut.', '2003-01-04 02:28:19', '1995-01-04 21:35:58'),
(88, 'Antonetta Willms', '(629) 726-0985 x02673', 'Laudantium rem error aut sed enim sit aspernatur. Non eveniet ipsam est qui repellendus ad maiores. Hic saepe expedita ipsam consequatur.', 'Nemo libero sed quae accusamus iure. Voluptatibus accusantium nihil temporibus ex odio. Ut qui voluptatem sit voluptatem est et. Et et voluptatem est commodi dolor.', '1993-08-28 04:55:21', '1992-11-13 13:49:11'),
(89, 'Aubree Connelly DDS', '(997) 504-1633 x250', 'Sit nesciunt esse officia distinctio sit qui. Id sed eligendi fugiat rerum neque qui. Eius fugit harum voluptatem omnis quia quis illum. Tempore aut u', 'Repellendus unde quis corrupti possimus. Illo laboriosam architecto voluptatibus iure. Illum recusandae quia velit accusantium eum eaque. Ut enim accusantium dolor sed est. Nesciunt inventore illum molestiae autem cumque.', '2014-07-14 08:11:06', '2002-10-16 21:41:13'),
(90, 'Adan Raynor', '+14547500771', 'Accusantium sed repellat sit quibusdam perspiciatis. Architecto qui occaecati consequatur est facilis. Recusandae et maiores occaecati est molestias s', 'Sed expedita vero dignissimos ea doloremque harum non. Earum aliquam inventore nihil autem possimus. Dolore et earum velit voluptatem unde in. Tempore deserunt veniam voluptatem accusantium eveniet. Et provident quaerat dignissimos explicabo reiciendis recusandae praesentium. Tempora similique possimus at est. Dolor tempora repellat accusantium accusantium.', '2017-09-04 17:18:43', '1992-06-14 00:00:34'),
(91, 'Winston Goyette', '+1-308-685-2690', 'Eos a dignissimos est assumenda at temporibus quia. Deleniti qui voluptatibus qui sequi nihil. Eaque facilis perspiciatis et occaecati. Distinctio rei', 'Aliquid qui provident ipsam. Nobis aliquid tempora et. Est neque repellendus alias est. Quia voluptas non culpa officia voluptatum vel consequatur.', '2019-08-28 00:15:48', '2011-04-13 15:48:24'),
(92, 'Trent Huels V', '762-845-5625', 'Ut voluptas dolorum distinctio ipsa est harum laboriosam. Ex amet modi in vitae. Assumenda accusamus et eos non fuga molestiae quibusdam aspernatur. C', 'Vero nihil quo sint a. Dolorem voluptatem quia velit minus. Asperiores odio quam consequatur consequatur. Voluptates autem voluptas sit praesentium. Repellendus voluptas similique eum ut repellendus et et.', '2016-04-15 15:27:46', '2001-04-25 15:22:33'),
(93, 'Crystel Walter', '+1-661-431-1296', 'Veritatis voluptas et quod quam qui. Debitis unde officia qui qui. Sed eligendi repellat omnis quo architecto. Sequi aut voluptates quod.', 'In laudantium similique ex. Qui incidunt maiores vero dolorum distinctio dolores. Rem ut placeat nemo vel perferendis harum. Qui labore molestiae amet eum. Optio ut asperiores quia aliquid. Quis et eveniet et et qui.', '2017-04-12 17:37:24', '1990-02-15 10:36:09'),
(94, 'Ms. Asha Hills', '630.969.8882 x88557', 'Possimus nihil sed quo ea cupiditate perferendis. Optio autem perferendis aut ut non. Distinctio aut dolor laborum voluptatum.', 'Recusandae est distinctio sint et iste. Illo nam dolorem eaque soluta laboriosam quae porro. Sed omnis nostrum vitae. Voluptatem accusamus est harum minima pariatur qui. Sed id eos expedita non sunt. Provident aperiam ut et ipsa aliquid.', '2002-06-21 15:10:41', '2006-10-20 15:37:11'),
(95, 'Jeffry Littel', '204-707-0352 x7122', 'Explicabo minus voluptate reiciendis est velit. Molestias laudantium dolor exercitationem. Excepturi nobis optio et amet. Et vitae quam accusamus omni', 'Voluptatem qui accusantium nulla asperiores rerum et aut distinctio. Quasi suscipit dolore et rerum est. Id quasi rerum omnis nisi voluptatibus veritatis. Qui libero aut numquam qui ullam quidem asperiores. Asperiores dicta officia eum possimus corrupti repudiandae delectus. Modi et ipsum repellat dicta laborum sint.', '1998-06-30 11:53:04', '2008-06-12 02:27:24'),
(96, 'Prof. Clemens Kshlerin DDS', '+1 (269) 797-3390', 'Aliquid voluptatem ipsa ut dolorem sed. Perspiciatis officia magnam nesciunt. Hic quae voluptatibus corporis quia. Tempora accusantium ducimus aut cup', 'Consequuntur aut voluptas temporibus minima enim quasi eum. Et perspiciatis optio voluptate. Non id non architecto distinctio quibusdam. Voluptate iure nobis magni. Dolor voluptas optio temporibus nihil animi facere numquam.', '2010-09-13 00:32:36', '1994-05-27 03:06:53'),
(97, 'Dr. Pasquale Upton II', '239-876-9127 x5758', 'Aut earum fuga quae in enim veniam. Error vel repudiandae explicabo maiores laborum in. Incidunt modi et et illo.', 'Unde cupiditate ea repellendus in. Nulla odit dicta quis quis in ut id quod. Quas facere rerum est soluta suscipit magni. In corporis et eos et. Ipsa occaecati eaque praesentium iusto modi distinctio incidunt. Qui corporis recusandae itaque sed possimus. Soluta delectus sed molestias laborum minus.', '1993-01-12 15:46:46', '2011-05-20 02:55:51'),
(98, 'Prof. Robin Kessler', '(830) 339-7381 x21343', 'Facere natus ab voluptate sint et minus placeat. Et ut et voluptas. Enim in est numquam.', 'Voluptas velit est rerum quia. Sed eum pariatur occaecati vitae harum corporis. Incidunt earum aliquam tempora nemo dolor delectus. Incidunt id accusamus est numquam.', '2007-02-01 18:09:33', '2005-03-26 17:13:04'),
(99, 'Tavares Jacobs', '1-640-282-5312 x675', 'Adipisci dolores vel et ab suscipit ut. Eum ullam quam voluptatem accusamus amet qui magni. Praesentium voluptatem sint dolores et.', 'Et reiciendis quo debitis ad consequuntur sit et. Eum at non provident laborum similique repellat consequuntur. Consequatur tempora sed dolorum voluptatem aspernatur maiores nisi. Debitis est natus voluptas et assumenda.', '2018-01-11 07:07:18', '1994-06-04 16:40:11'),
(100, 'Mr. Harvey Schinner', '(268) 796-9820', 'Sapiente quia et ducimus sint cupiditate eaque debitis. Minima temporibus placeat molestiae perspiciatis enim vel. Labore magni laborum nihil et conse', 'Vel minus rerum minus a optio. Cumque cumque nostrum optio voluptatem. Et explicabo totam quo architecto repellendus aut. Cumque dolorum ea ratione vero autem veniam.', '1994-09-07 09:28:08', '2009-06-01 00:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `meta_name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'asdasdasd', NULL, NULL),
(2, 'app_id', 'asdasdasd', NULL, NULL);

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
(50, '2014_10_12_000000_create_users_table', 1),
(51, '2014_10_12_100000_create_password_resets_table', 1),
(52, '2019_03_28_131646_create_post_table', 1),
(53, '2019_03_28_131711_create_products_table', 1),
(54, '2019_03_28_131729_create_messages_table', 1),
(55, '2019_03_28_131746_create_comments_table', 1),
(56, '2019_03_28_131802_create_banners_table', 1),
(57, '2019_05_03_185948_create_metadata_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seoTitle` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seoKeyword` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seoDescription` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_app_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analyst` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `content`, `seoTitle`, `seoKeyword`, `seoDescription`, `fb_app_id`, `google_analyst`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Doloribus omnis eveniet id nobis.', 'fullwidth01.jpg', 'Minima quibusdam qui ea non. Explicabo perspiciatis velit rem odio eos ad. Assumenda ut temporibus porro nihil. Temporibus eligendi repudiandae dolorum deserunt. Earum aliquam velit ut consequatur deleniti exercitationem maxime.', 'Ea quo facilis debitis quisquam dolor est a. Aut e', 'Velit explicabo eligendi ut blanditiis. Sequi eum ', 'Non quo a id et. Provident quas optio est non. Eos', NULL, NULL, 'slug-bai-viet-1', '1993-11-03 19:48:44', '2013-01-28 17:06:01'),
(2, 'Eligendi qui aut illo id accusamus quos ipsa.', 'fullwidth01.jpg', 'Enim accusantium ullam molestiae consectetur sed. Saepe excepturi aut natus aut. Animi repellendus consequatur sunt porro error. Nesciunt quaerat voluptatem dolores. Quis asperiores beatae alias exercitationem autem nobis id. Aut praesentium eos eaque dolore.', 'Laudantium sapiente veritatis eius doloribus sapie', 'Harum enim qui nemo ut. Neque voluptas sunt offici', 'Sit aliquam voluptas officiis. Facilis numquam ut ', NULL, NULL, 'slug-bai-viet-1', '1997-12-13 05:33:56', '2005-06-04 15:47:39'),
(3, 'Exercitationem quae nihil est.', 'fullwidth01.jpg', 'Nihil deserunt cumque sit voluptates modi eum deleniti aspernatur. Rerum quidem sed temporibus vel itaque veritatis mollitia. Iste non non voluptates. Quia asperiores excepturi recusandae et expedita et. Adipisci aut est id possimus. Veniam provident harum aperiam. Rerum animi eius quisquam sit dicta consectetur.', 'Quod ipsum voluptas eligendi soluta facilis. Deser', 'Maxime rerum accusamus assumenda velit laborum. Fa', 'Incidunt quae omnis sed ut. Consequatur quo volupt', NULL, NULL, 'slug-bai-viet-1', '2009-01-17 07:48:14', '2008-05-05 14:46:10'),
(4, 'Ut voluptas fugit cumque enim sed nihil.', 'fullwidth01.jpg', 'Debitis architecto similique dolores soluta at et. Sed beatae voluptatem dolorem at doloribus maxime libero. Dolorem magnam qui eius. Tempore beatae velit tempore temporibus ut facilis. Minus eligendi quam qui consectetur. Aliquam similique dolorum vel alias laborum est.', 'Quisquam id et voluptatem aut qui. Nisi quaerat es', 'Non vel et alias et fuga. Deleniti nisi cupiditate', 'Exercitationem ab numquam distinctio. Consequatur ', NULL, NULL, 'slug-bai-viet-1', '2017-05-09 15:54:33', '2009-07-31 12:20:39'),
(5, 'Qui voluptas aut accusamus iste vero esse dolor.', 'fullwidth01.jpg', 'Ut placeat non fugiat beatae sunt. Accusamus qui veritatis a sit. Voluptatem quisquam omnis porro et architecto culpa sint. Enim perferendis quo similique qui reprehenderit sed quas. Maxime officiis quis aut quia nihil rerum maiores.', 'Illum voluptatum officia exercitationem ut consequ', 'Dignissimos dolor culpa suscipit minima. Quo non s', 'Quia ullam voluptas rerum doloremque error. Hic sa', NULL, NULL, 'slug-bai-viet-1', '2001-12-20 11:31:01', '2016-12-16 10:23:36'),
(6, 'Ullam saepe suscipit molestias vitae repudiandae.', 'fullwidth01.jpg', 'Beatae tenetur facilis facilis sit ipsa rem amet. In dolores occaecati iure accusantium ad tempore. Quidem suscipit dolor excepturi natus libero iste natus. Maiores voluptatibus odio et similique ex reiciendis omnis unde.', 'At et totam quia a iste. Voluptatum aut ipsa sed e', 'Nostrum harum quas fugit corrupti. Omnis voluptate', 'Facilis voluptas explicabo unde corrupti animi ver', NULL, NULL, 'slug-bai-viet-1', '1995-02-24 03:22:05', '1999-04-16 03:10:37'),
(7, 'Molestias libero reiciendis eos dicta quis illum suscipit et.', 'fullwidth01.jpg', 'Ab corrupti dolorem velit aspernatur. Aut hic ut quod natus at. Quasi tenetur impedit sint eius numquam sapiente. Doloribus similique ducimus beatae dolore. Et et commodi dolores impedit ex ex. Dolorum aut odio in et provident sed enim. Voluptatem molestiae dolor minus fuga.', 'Qui aut accusantium dignissimos aut voluptatem. Qu', 'Sint quod necessitatibus explicabo sit voluptas. I', 'Est ratione voluptatem ad dolorem et. Tenetur eos ', NULL, NULL, 'slug-bai-viet-1', '2007-07-04 15:14:43', '2002-04-02 15:43:26'),
(8, 'Est laudantium doloribus voluptatem vel.', 'fullwidth01.jpg', 'Id et ut consequatur labore voluptate. Inventore exercitationem et voluptas eaque. Eligendi at veniam consequatur dignissimos. Consequatur nisi qui dolorem non voluptas. Consequuntur non nostrum officiis inventore est.', 'Rerum quo illum eveniet voluptatem et. Quod vel ma', 'Omnis tempora ut dolorem iure vel sed dolorem. Vel', 'Et iusto omnis cupiditate optio consequatur. Ipsam', NULL, NULL, 'slug-bai-viet-1', '1998-03-24 07:54:24', '2005-06-23 20:23:16'),
(9, 'Deleniti molestiae saepe quasi natus eos molestiae.', 'fullwidth01.jpg', 'Ea quo rerum id sint. Qui qui quod est eveniet qui iusto. Quia rerum voluptatem molestias. Cumque qui est dolores nobis.', 'Hic deleniti consequatur sapiente quod quod. Omnis', 'Magnam quas quos sunt fugit. Amet quas pariatur at', 'Ratione ratione ut reiciendis quae et autem volupt', NULL, NULL, 'slug-bai-viet-1', '2000-07-05 16:33:28', '2012-08-17 13:13:08'),
(10, 'Voluptate quam adipisci aliquid necessitatibus a doloremque doloribus et.', 'fullwidth01.jpg', 'Dolores architecto libero fuga harum eos ratione. Omnis ducimus voluptas quae omnis aut. Et necessitatibus necessitatibus ipsam. Eos in non officia. Est placeat nostrum et error.', 'Quia et eos rem adipisci. Sit reprehenderit natus ', 'Voluptatibus rem est omnis nam. Aut rerum cum est ', 'Atque consequuntur temporibus omnis molestias quib', NULL, NULL, 'slug-bai-viet-1', '2009-07-09 08:38:46', '2000-03-19 09:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(11,2) NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seotitle` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seokeyword` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seodescription` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_app_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analyst` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `description`, `seotitle`, `seokeyword`, `seodescription`, `fb_app_id`, `google_analyst`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Rerum aut perferendis ipsum perspiciatis temporibus.', 139.00, 'fullwidth01.jpg', 'Quia ut sunt qui culpa labore mollitia sapiente. Fugit dignissimos quia tenetur fugit repudiandae repellendus ut. Veritatis voluptatem voluptatem quasi exercitationem. Suscipit aliquam consectetur aliquam illum. Magnam incidunt tenetur sit. Magnam facilis qui eius veritatis numquam modi aliquid.', 'Vel aperiam sint commodi omnis. Saepe ullam est al', 'Exercitationem veritatis maxime eum iusto commodi ', 'Dolor dolorem qui ullam veritatis. Iure laborum se', NULL, NULL, 'slug-san-pham-1', '1998-02-22 14:06:47', '2018-08-23 14:12:32'),
(2, 'Et reprehenderit velit non sequi.', 91.00, 'fullwidth01.jpg', 'Autem ut facilis labore consequuntur commodi earum vel. Nihil sint repudiandae et quidem possimus ut. Et libero id porro nisi labore. Ullam ut dignissimos enim alias voluptatem.', 'Ut nulla doloremque esse. Optio modi ipsam sit con', 'Veniam qui ex omnis alias quisquam sit. Quis odio ', 'Laboriosam esse tempore similique. Commodi molesti', NULL, NULL, 'slug-san-pham-1', '2018-04-09 14:17:33', '2018-03-24 23:24:34'),
(3, 'Voluptatem mollitia omnis voluptatem dolorum architecto.', 355.00, 'fullwidth01.jpg', 'Ut ipsa aut id autem dolores qui illum. Praesentium eum repellat omnis modi omnis incidunt. Illo mollitia rerum unde suscipit. Accusamus alias non quo ipsum iusto. Aut quasi nulla sed quam est vel. Dicta quaerat labore saepe et error nulla temporibus nisi. Aut maiores dolores qui dolore accusantium similique.', 'Quasi adipisci id non est ullam unde sit. Fugiat e', 'Qui veniam est ad hic maxime. Et dolorum qui tempo', 'Eum eius quibusdam provident. Et repellendus et do', NULL, NULL, 'slug-san-pham-1', '2012-07-11 21:16:07', '2015-07-21 10:23:27'),
(4, 'Eius rerum ipsum rerum excepturi rerum deserunt maiores.', 86.00, 'fullwidth01.jpg', 'Nihil ipsum similique fuga. Aliquam esse vel voluptatibus distinctio voluptas nemo. Facilis quasi aut voluptas delectus nemo qui sunt. Sunt vero molestias sed et dolorem. Enim omnis enim sit iste.', 'Odio quia ut repudiandae veritatis assumenda. Volu', 'Error qui officiis accusantium officia unde tempor', 'Inventore nisi enim officiis velit molestiae repre', NULL, NULL, 'slug-san-pham-1', '1991-05-20 13:47:51', '1998-09-25 09:31:00'),
(5, 'Dolores est nihil ut non.', 343.00, 'fullwidth01.jpg', 'Vitae voluptatibus adipisci et. Dolorum occaecati perferendis vitae omnis illo nulla quo laborum. Id aut similique maxime architecto. Est quis voluptatum assumenda in. Ipsum tenetur consequatur quia aut earum et facere.', 'Dolore neque reiciendis asperiores commodi aut. Ex', 'Reiciendis quos soluta sint. Nemo ea id maxime cor', 'Ut iure sit sunt ipsa. Officia dolorem nobis lauda', NULL, NULL, 'slug-san-pham-1', '1998-06-02 03:41:36', '2000-02-20 23:34:08'),
(6, 'Voluptatum saepe sunt ex.', 232.00, 'fullwidth01.jpg', 'Rerum deserunt maxime sunt facilis accusantium tenetur in. Aut qui qui placeat vel expedita. Facilis nesciunt a harum ducimus. Repudiandae repudiandae necessitatibus voluptas. Blanditiis sunt accusamus corrupti enim et expedita. Consequatur natus eos praesentium inventore libero fugiat illum non.', 'Ullam aspernatur occaecati recusandae omnis ad cul', 'Et excepturi enim et sequi ab. Itaque delectus nis', 'Est officiis magni qui a excepturi deserunt omnis ', NULL, NULL, 'slug-san-pham-1', '2018-06-26 01:04:29', '2004-10-25 11:51:38'),
(7, 'Quam amet aut fuga aut consectetur.', 755.00, 'fullwidth01.jpg', 'Id accusantium molestiae non. Doloribus eius rerum praesentium nesciunt. Inventore a magni quo officiis labore. Repellat voluptates labore dolor quia. Totam velit est vitae consequuntur consectetur itaque.', 'Animi voluptas debitis tenetur non. Ut voluptatum ', 'Nihil aut velit ex doloremque laudantium voluptate', 'Et ipsam magnam tempora. Aut quas similique est ex', NULL, NULL, 'slug-san-pham-1', '1993-10-27 18:44:36', '2014-03-18 16:10:55'),
(8, 'Illo ad aut dolor est in.', 893.00, 'fullwidth01.jpg', 'Atque ut repellendus facere odit ex iure. Odit aperiam unde ipsum qui cupiditate. Ut qui dolorem sunt culpa libero eos. Doloribus et ab neque corporis et.', 'Qui enim error qui error mollitia esse reprehender', 'Explicabo nostrum voluptatem ea explicabo qui nihi', 'Rerum eos quas facilis. Odit hic praesentium facil', NULL, NULL, 'slug-san-pham-1', '2003-01-26 14:37:05', '1994-08-21 10:10:29'),
(9, 'Quis ex perspiciatis tempora est enim sit voluptatibus.', 563.00, 'fullwidth01.jpg', 'Omnis quod ex dolore rerum qui consequatur. Nemo laborum nisi non incidunt. Esse aut vero asperiores quis ut perferendis dolor. Esse nihil reprehenderit velit vero. Porro aperiam doloribus voluptatum repellendus quam illum qui.', 'Consequatur accusamus enim dignissimos molestias f', 'Sit neque placeat voluptas et. Assumenda nihil cum', 'Ducimus ad voluptatem inventore officia facere exp', NULL, NULL, 'slug-san-pham-1', '1991-01-26 13:37:26', '2011-06-01 22:42:34'),
(10, 'Consequatur itaque repellendus voluptas sit.', 274.00, 'fullwidth01.jpg', 'Minus modi et sed nihil et excepturi libero. Earum beatae voluptatem facere adipisci aspernatur. Tenetur deleniti qui quasi aspernatur minus ut repudiandae dolor. Dicta dignissimos nisi pariatur sit.', 'Est sapiente dolorum delectus amet non. Quia esse ', 'Velit neque amet velit aut quo id doloremque. Sunt', 'Aspernatur architecto nemo odit iure voluptas dese', NULL, NULL, 'slug-san-pham-1', '2003-03-15 20:58:18', '1994-07-01 14:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_pass_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` timestamp NULL DEFAULT NULL,
  `attempt` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `reset_pass_token`, `last_access`, `attempt`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'vongocphu04@gmail.com', NULL, '$2y$10$A3C4nKbG4mZ2hwxD2e4oauclFXgpxXM.lXOLpnkmkcKL24woE2I4y', '', NULL, 0, 1, NULL, '1991-12-19 19:14:09', '1992-10-05 07:25:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_product_id_foreign` (`product_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
