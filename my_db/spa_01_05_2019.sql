-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2019 at 10:28 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

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
(1, 'slider03.jpg', 'Eum quis explicabo sapiente consequuntur labore.', 'Mollitia et nostrum odit quia fugiat magnam cumque. Rerum similique hic est non quae. Fugiat repudiandae fuga excepturi ut animi ipsum et. Facere quis', '2001-05-29 21:40:35', '2014-06-24 12:31:39'),
(2, 'slider03.jpg', 'Eveniet similique maiores et fugit velit omnis.', 'Doloremque rerum magnam dolorem nulla atque. Itaque tempora harum aliquam. Voluptas est quo distinctio quia esse non error. Est harum sint aut magni q', '2001-01-03 10:46:17', '2002-04-16 18:11:14'),
(3, 'slider03.jpg', 'Dicta error occaecati sequi voluptas.', 'Molestiae nisi sed odit qui. Saepe unde error quis quia qui non. Eos possimus omnis perferendis esse. Consequuntur cumque dolore esse sunt accusamus e', '1993-12-27 15:26:28', '1998-04-29 19:13:02'),
(4, 'slider03.jpg', 'Est dolores et recusandae et delectus voluptatibus.', 'Et consectetur distinctio enim pariatur eum saepe. Fugit molestiae dolorem dolores id nihil ab occaecati. Deleniti molestiae occaecati nulla in. Volup', '2009-10-10 22:24:34', '2009-07-23 10:56:58'),
(5, 'slider03.jpg', 'Repellat unde autem illo est et.', 'Sit porro maxime voluptatibus veritatis delectus. Architecto voluptas ad qui. Ipsa debitis tempora sit molestias. Distinctio qui reprehenderit est aut', '1990-10-30 09:00:42', '2002-10-03 12:37:44');

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
(1, 'Alfred Kutch', 'Non repudiandae vel tempora tempora aut. Consequatur exercitationem id architecto dicta aut. Omnis et aliquid dolorum laudantium delectus ut. Consequatur ea architecto impedit. Laboriosam a eaque molestias corrupti mollitia qui neque iusto. Quibusdam laborum rerum quisquam eos perferendis qui ipsum. Ea ipsum molestias eum et.', 2, 0, 8, 1, '2016-10-27 11:11:52', '1997-09-16 18:40:42'),
(2, 'Prof. Candida Lindgren Jr.', 'Deserunt at laborum id praesentium. Eum inventore accusamus eaque quod ex. Fugiat explicabo autem quia expedita. Consequatur sed sed non repellendus occaecati blanditiis rerum. Aperiam sint ut iusto non. Cum tempore ab debitis iusto nesciunt.', 1, 1, 9, 8, '2010-04-10 09:45:02', '1996-04-10 13:05:36'),
(3, 'Dr. Stanton Doyle PhD', 'Dolorem saepe exercitationem quam. Et quod architecto dolores fugit. Ex aut et dolor quo qui ea. Minus molestiae excepturi quis nihil unde dolorum. Voluptas enim quibusdam vitae possimus. Maxime qui sed optio facilis praesentium tempore tempora. Non cumque aliquid enim ducimus ab nulla.', 1, 1, 3, 10, '2005-11-25 21:21:48', '1993-11-03 07:34:30'),
(4, 'Ray Wehner', 'Vel odit quasi hic quis modi minima. Repellat quis eos eum. Et totam sunt et voluptatum quibusdam. Facere eaque sapiente quo accusantium. Et nihil quam nisi possimus aut. Voluptas excepturi ut qui qui.', 1, 0, 3, 1, '2010-07-25 22:51:34', '2006-04-12 23:12:17'),
(5, 'Rosie Abbott', 'Dolorem accusamus incidunt velit et. Iusto et ut ad rem doloribus at. Et ea laboriosam placeat rem. Velit iure quia quis sunt odio eum ex. Aperiam assumenda sed perspiciatis a aut. Optio rerum voluptatem adipisci rem soluta quaerat. Praesentium debitis repellat et eius.', 1, 0, 10, 8, '1992-03-29 19:15:38', '2014-06-02 16:19:38'),
(6, 'Chad Metz', 'Optio est ut debitis autem. Perferendis quae facilis ut laboriosam velit tenetur. Est ex reprehenderit nulla. Et sit corrupti dolorem beatae. Nihil id quis odio magnam. Eius assumenda beatae laudantium ut delectus tempora tempora.', 2, 0, 6, 7, '1992-03-19 11:52:50', '1997-01-25 02:34:22'),
(7, 'Ms. Amie Morissette', 'Repudiandae cum animi quo porro consequuntur. Est dolorum dolorum eos ex. Provident quo cupiditate optio. Ea id minus repellat at similique aut. Vitae nihil quia magnam quas sint quia voluptatibus.', 2, 1, 3, 2, '1999-09-10 02:57:43', '2017-10-02 08:50:18'),
(8, 'Freida Gibson', 'Ipsa earum modi voluptas labore atque autem sed. Provident minima eveniet voluptas omnis modi voluptatem non assumenda. Explicabo odit quasi deleniti facilis. Dignissimos assumenda dicta quaerat et. Ea et illo quia natus provident. Neque aut incidunt quia ut facilis minus eveniet.', 1, 1, 7, 10, '1991-05-06 22:20:08', '1997-02-15 09:52:04'),
(9, 'Sarah Schumm', 'Voluptates corrupti nisi est sint dolore odio. Ipsum explicabo officia corporis nihil hic reprehenderit ut. Aliquid quia sunt earum ut et eligendi pariatur dolore. Consequatur cum aspernatur laboriosam eligendi sapiente excepturi qui. Officiis sequi exercitationem ullam eligendi dicta facere et. Fugit voluptatem commodi voluptas non quod dolor vel quis. Cum ad qui sed et voluptates dolor alias. Dicta explicabo dignissimos laboriosam necessitatibus.', 2, 0, 5, 3, '1992-02-05 20:55:06', '2011-10-20 19:07:54'),
(10, 'Destiney Schaden', 'Voluptate distinctio aut et voluptas temporibus esse. Occaecati deserunt qui necessitatibus voluptatum omnis corporis excepturi quia. Ipsam quisquam architecto consequuntur adipisci. Earum qui quae quia nobis quibusdam ut. Ex corporis quam non quas quas aut eum. Eveniet provident commodi officiis commodi. Illum minus aut eligendi in.', 2, 1, 2, 7, '1995-08-04 04:00:26', '1994-07-16 09:06:26'),
(11, 'Ms. Laury Runte', 'Asperiores earum explicabo dignissimos ipsam cumque voluptatem voluptatem eos. Enim ut aliquid non temporibus ullam doloribus. Perferendis et sit est neque suscipit aut asperiores. Laudantium impedit fugit doloribus accusantium libero sed voluptate. Aut non natus quia ab possimus quaerat eaque. Doloribus non sit perspiciatis molestiae. Maiores dolores laboriosam atque vel modi.', 1, 0, 9, 4, '2012-11-17 14:26:26', '2006-04-08 23:50:23'),
(12, 'Bridie Wilderman', 'Doloremque quis et unde atque repellat. In accusamus sit optio harum asperiores. Sunt ipsum amet eaque modi nisi facilis nisi iusto. Sit a nam placeat aliquid repellat. Eos eum veritatis aperiam consequatur. Ipsum voluptatem aut ratione error. Suscipit a veritatis optio ut magnam delectus.', 2, 0, 5, 2, '2014-04-23 23:03:25', '2001-11-26 07:16:24'),
(13, 'Tad Armstrong', 'Facilis non nostrum voluptas omnis consequatur. Ut necessitatibus et numquam numquam. Totam corporis vel fuga commodi. Quos minima corporis voluptatem culpa consectetur earum.', 2, 0, 3, 3, '2014-11-21 06:11:01', '1991-03-18 09:17:55'),
(14, 'Iliana Adams', 'Autem suscipit suscipit modi quam ea nesciunt autem odio. Voluptates quis sunt labore et magni aspernatur. Aperiam veritatis magni sint laboriosam sed ut. Odit reiciendis sed sapiente animi iste sunt voluptatibus. Harum laboriosam sit doloribus dolorem maxime est maxime. Nesciunt id et illum et laudantium. Soluta delectus assumenda tempora consectetur nesciunt adipisci.', 2, 0, 9, 3, '1997-09-18 21:51:06', '2006-05-21 09:02:20'),
(15, 'Mr. Darryl Parisian', 'Minima vel minima porro sed harum et aliquid. Officia et dicta beatae dignissimos accusantium. Excepturi id sint aperiam quibusdam harum deleniti. Perferendis deleniti aut odio sit et ipsam perspiciatis.', 1, 0, 6, 1, '2008-12-27 03:05:19', '2011-10-09 14:30:51'),
(16, 'Prof. Zelda Schaden', 'Omnis dolorem velit architecto maxime facilis enim. Dolor qui sint sequi reiciendis. Occaecati sed aut quia recusandae sed quam. Dolorem ex sapiente est. Molestias facere quis tempora impedit similique blanditiis. Aut quia voluptatibus sunt eos aut et qui. Repellendus sunt impedit architecto velit.', 1, 1, 6, 5, '2011-05-24 03:08:01', '1989-12-05 02:35:28'),
(17, 'Miss Serenity Beer', 'Voluptas modi et asperiores deleniti laborum magnam. Necessitatibus architecto inventore eius quas placeat ea magni. Omnis dolore saepe sit illum eveniet omnis non vero. Officia assumenda illo eum alias nemo eos molestiae. Eligendi rerum quidem voluptatem cupiditate voluptatibus illo reprehenderit. Aperiam quo nobis porro aliquam dolorem voluptatem rem.', 1, 1, 7, 6, '1990-05-19 02:29:53', '1991-04-22 04:41:57'),
(18, 'Dr. David Wilderman DDS', 'Rerum molestiae mollitia reprehenderit fugiat eum autem nostrum. Est rerum sequi est necessitatibus consequuntur ad. Molestiae asperiores molestiae fugiat sunt. Molestiae commodi dolore maxime eaque rerum. Et itaque commodi ut qui eum. Ut non aut velit quaerat fugit. Rerum reiciendis pariatur iusto deserunt pariatur ea ut.', 2, 1, 10, 10, '2017-07-30 06:32:51', '2009-06-15 13:24:08'),
(19, 'Amelia Abernathy', 'Saepe consequatur molestiae alias ipsa. Quia quasi quisquam vero est. Magnam fuga inventore eos aut ut exercitationem magnam. Veniam perferendis quae quia perspiciatis.', 2, 0, 6, 6, '2000-10-08 07:09:33', '2005-04-12 09:50:53'),
(20, 'Audie Erdman', 'In iusto recusandae est. Repellendus consectetur omnis animi voluptas dolore. Id est ad rem repellendus. Explicabo dolor ipsa iste incidunt sunt. Est cum sunt sequi. Eum harum voluptas perspiciatis quidem. Sunt velit sit recusandae beatae rerum.', 2, 0, 1, 6, '1995-10-21 03:25:27', '2015-07-10 01:39:45'),
(21, 'Prof. Antonio Hirthe', 'Asperiores exercitationem veniam fuga alias quidem. Cum sit voluptas reiciendis deleniti recusandae. Magnam et vero cupiditate est quo eum sit non. Eos eos est rerum nobis consequatur.', 1, 0, 3, 6, '2009-06-21 06:00:19', '2001-12-12 11:23:40'),
(22, 'Mrs. Raina Ritchie Sr.', 'Amet eum praesentium dolor dolores qui suscipit aut. Dolores numquam nobis ipsum culpa esse aut temporibus. Animi omnis voluptatem laborum architecto. Distinctio quos iste facilis ut omnis aliquam reprehenderit.', 1, 0, 7, 4, '2005-05-14 15:28:17', '2017-03-14 08:32:30'),
(23, 'Osvaldo Schiller', 'Quia quos reiciendis consequatur beatae et tempore commodi. Aperiam occaecati porro laboriosam odio quos nihil. Aut quo ipsum ducimus. Et reprehenderit in accusantium quia quisquam nihil. Minus accusamus dolore fugit voluptas aut. Illum rem cumque dolores quis dolorem corporis. Quasi qui assumenda velit consequatur aperiam nihil tenetur exercitationem.', 2, 1, 2, 7, '2013-01-17 11:53:32', '2016-03-24 21:42:35'),
(24, 'Aiyana Goldner', 'Debitis adipisci quasi quia architecto sit iste expedita. Iure reprehenderit eligendi placeat numquam qui soluta velit. Fugit consequatur qui ut velit voluptatem dicta deleniti et. Molestiae voluptate eveniet cupiditate et. Est nostrum rem recusandae beatae non consequuntur eligendi. Vel quaerat exercitationem cupiditate natus magni mollitia ea.', 1, 0, 10, 4, '2014-10-10 05:13:40', '1992-05-11 14:49:15'),
(25, 'Brenda Bogisich', 'Assumenda praesentium rerum repudiandae at voluptatem suscipit ut eius. Doloremque est repellat molestiae porro ad voluptas. Nam mollitia vel accusantium expedita accusamus culpa. Sapiente ea provident possimus sunt porro eius qui. Consectetur qui earum soluta veniam et quis.', 2, 1, 4, 3, '1995-12-31 04:24:49', '1990-03-21 02:05:27'),
(26, 'Mr. Josiah Zboncak', 'Modi minus asperiores quia. Est consectetur tempora explicabo architecto culpa. Labore ea voluptatibus ut quos omnis. Saepe occaecati aut excepturi dolorem. Ipsa numquam commodi aperiam vero sed beatae illo. Repellat velit voluptas saepe. Rerum est aut et voluptates non vel alias.', 1, 1, 9, 2, '1991-11-24 22:39:47', '1992-07-27 12:56:11'),
(27, 'Johanna Mraz', 'Numquam dolore tenetur incidunt. Voluptas est laborum veritatis quia voluptatem ratione. Delectus et voluptatem quia qui. Quos quisquam ut et doloribus praesentium soluta neque. Quibusdam repellat dignissimos aliquam porro. In iure nobis dolore sed asperiores voluptatum maiores occaecati. Qui et repellendus perspiciatis aut et.', 1, 1, 6, 10, '1992-09-29 06:28:17', '1993-12-31 14:24:32'),
(28, 'Aryanna Lemke', 'Non harum qui fugit dolores fugit porro deleniti. Nihil aut esse quos vitae nesciunt iure rerum. Voluptate quae harum ab natus et corrupti deleniti dolores. Voluptas quas rerum voluptas. Et quo ipsa architecto ut sint ut. Voluptatem et voluptatem consequatur qui quod quo. Qui asperiores sunt iste architecto aspernatur.', 2, 1, 6, 1, '1995-02-22 23:25:45', '1998-05-11 15:03:10'),
(29, 'Martine Hermann', 'Culpa explicabo soluta et tempore similique. Dolorem dolores et doloremque iusto ab architecto. Illo et odio maxime quam. Repellendus autem laborum consequatur laborum est et. Debitis et quis rerum non laudantium non qui. Fugiat temporibus ut et rem eum.', 1, 1, 4, 10, '1999-01-13 09:00:11', '2003-11-09 02:52:06'),
(30, 'Deontae Hessel IV', 'Minus quas recusandae sit ullam quidem laborum magni. Corrupti nisi autem ut eveniet sint. Voluptatibus nemo temporibus eligendi explicabo fuga. Id excepturi enim veritatis enim voluptas.', 1, 1, 8, 5, '2016-07-28 15:29:04', '2016-04-12 23:22:03'),
(31, 'Prof. Santino Larkin DVM', 'Sit ipsam est aut illum minus impedit. Quis officiis adipisci tenetur aliquam dolorem debitis dolorem sed. Dolores optio provident vel alias. Neque praesentium ipsa voluptates non aut et id. Deleniti velit assumenda dolor reiciendis. Rerum beatae ipsum quidem culpa ullam similique vero. Et iste quam rerum hic cumque mollitia ut molestiae.', 2, 1, 3, 4, '1989-05-09 21:39:29', '2000-08-12 19:06:37'),
(32, 'Dr. Lucienne Schiller IV', 'In quasi ut sint repellat quibusdam architecto est. Voluptatem natus ut non eos autem. Alias et et et rerum sequi. Harum repellendus velit sunt molestiae omnis tempore excepturi.', 1, 1, 6, 5, '2018-01-10 18:01:02', '1990-09-30 03:12:48'),
(33, 'Janie Pfannerstill', 'Quo voluptas impedit est et optio. Odio illo adipisci vitae vero amet maxime pariatur. Quia in nihil corporis pariatur velit. Tenetur quia et a iure sit ut. Animi asperiores odio qui sint qui quia velit.', 2, 0, 10, 4, '2013-06-09 22:31:00', '2006-11-08 18:34:09'),
(34, 'Einar Baumbach', 'Ullam ut nihil corrupti. Dolores illum est id quam odit est error. Enim tempore harum culpa occaecati odio. Magnam ullam iusto reprehenderit accusantium sequi autem itaque. Sed magni velit eligendi consequatur vitae. Placeat aliquam ea eaque vel molestias fuga modi quisquam.', 2, 1, 5, 7, '1993-08-03 06:07:00', '2004-06-12 03:19:28'),
(35, 'Briana Abernathy', 'Ducimus iure dolorum modi autem omnis dolores. Voluptates ipsam vel nulla qui. Veritatis laudantium consequatur eum praesentium. Quia nihil rerum consectetur et illum magnam sint. Nihil ut ipsam necessitatibus velit et impedit iste ipsa. Molestiae sit officia nam nihil et in illo maxime. Voluptatem quis qui ullam magni nam.', 2, 0, 9, 6, '1996-12-22 04:43:08', '2018-10-31 18:02:25'),
(36, 'Dr. Gerardo Schneider PhD', 'Ut aut sed quia autem eos doloribus totam repudiandae. Et vero asperiores earum similique vitae. Ipsa aut illo eos sint ullam quia. Cupiditate est cumque recusandae quis exercitationem labore. Laudantium sed dolores neque accusantium dolores culpa recusandae.', 2, 0, 3, 7, '1993-01-24 03:54:32', '2004-07-16 12:45:16'),
(37, 'Prof. Celestine Toy', 'Incidunt qui ut nulla et non accusamus atque. Sequi sint aut hic consequatur laborum. Officia ut veniam est dolores fuga est ipsa iste. Rerum corrupti consequuntur officia sed quidem odio reiciendis. Sed eum rerum placeat excepturi debitis minima ipsa. Corrupti illo voluptas quos ullam qui sed. Id placeat non temporibus omnis assumenda eum minus.', 2, 1, 5, 8, '2016-05-21 18:18:05', '2017-07-06 14:01:38'),
(38, 'Davin Casper', 'Corrupti praesentium deserunt esse fugit commodi. Quia aliquid possimus esse. Adipisci consectetur iusto non earum sed repellendus. Natus aperiam maxime harum nobis quaerat. Quas quo excepturi qui laboriosam. Deleniti totam mollitia omnis qui.', 1, 0, 9, 7, '1998-06-14 22:48:22', '2002-01-24 18:11:17'),
(39, 'Claudine Nolan III', 'Nisi enim aut at est dolorum. Vero nobis in quibusdam quis at temporibus. Vitae dolorem expedita blanditiis sint ut. Eos quae quis iusto sit rerum veniam. Doloribus voluptate qui hic consequatur et optio. Officiis exercitationem eos rem ut et ab expedita.', 1, 1, 4, 9, '1993-04-04 23:49:20', '2000-03-02 09:52:20'),
(40, 'Brooks Hettinger', 'Recusandae eos dolores omnis ut eum. Id rem quia harum modi. Aut eos aut sunt optio eum. Quo minus omnis culpa animi. Velit sit quam et dignissimos aliquid blanditiis. Aliquam eius aliquid dolorem cum.', 2, 0, 10, 6, '2009-02-09 10:14:02', '1990-06-27 19:47:28'),
(41, 'Tad Labadie III', 'Aperiam iusto sed aut. Exercitationem quis molestias sint ab voluptates porro. Odio non eum vel corporis. Animi deserunt possimus voluptate illum reprehenderit beatae. Ullam et id doloribus voluptatem vel odio. Sit et itaque alias natus sapiente nesciunt ut. Id laboriosam tenetur quia enim aspernatur. Repudiandae incidunt sed illum quidem eum.', 1, 1, 1, 3, '2003-09-04 04:34:29', '2008-09-05 12:51:39'),
(42, 'Ms. Flossie Stamm MD', 'Quia qui dolorum et cupiditate. Corporis voluptate tenetur tempore voluptate natus. Vel sunt voluptate cumque ea voluptatibus impedit. Assumenda provident neque optio quaerat occaecati sequi. Iure atque aliquam autem eum. Minus impedit nobis sunt accusamus esse. Ut neque reiciendis veritatis vitae sint ut tempore.', 1, 0, 2, 7, '2015-06-10 13:22:14', '2009-07-16 12:54:06'),
(43, 'Ernesto Ebert I', 'Amet qui maxime nesciunt quas. Placeat iure necessitatibus aut facilis eius. Accusantium dolorem deleniti et omnis eos. Totam amet praesentium qui sed commodi quos.', 1, 1, 8, 8, '2013-08-02 10:35:14', '2011-10-11 00:49:14'),
(44, 'Darrion Hoppe', 'Voluptate vitae officia dolorem aut atque facere ut. Corrupti velit voluptas vero et distinctio illum esse. Magni perspiciatis culpa eos molestias laboriosam architecto. Illo libero perspiciatis atque molestias. Commodi fugiat distinctio consequuntur quo. Qui minus voluptatem a recusandae cupiditate vero eveniet. Ipsam aspernatur amet maxime reprehenderit repellendus dolores eaque.', 2, 0, 4, 2, '2014-05-30 19:37:42', '2009-09-20 14:00:47'),
(45, 'Stanford Lockman', 'Repudiandae et veniam ut aliquid. Ea molestiae qui reiciendis voluptates sapiente fuga. Minima inventore voluptatem velit ad veniam. Ut dolor reprehenderit totam expedita. Sed accusantium consectetur itaque ipsa provident voluptas.', 2, 0, 3, 1, '2017-09-18 11:33:34', '1998-02-03 11:22:43'),
(46, 'Whitney Spinka', 'Ut dolor inventore nostrum. Voluptas at omnis et cum. Ex sint sit doloremque adipisci rerum quasi. Eveniet libero et molestiae eos. Pariatur reiciendis quaerat quos porro. Rerum dignissimos sint assumenda quod.', 2, 0, 6, 10, '2001-11-01 12:12:09', '2006-12-23 16:20:20'),
(47, 'Guy Skiles PhD', 'Non voluptate assumenda sit ipsa. Molestiae dignissimos dicta laudantium voluptas sunt commodi. Accusantium reprehenderit est quasi fugit reiciendis aut atque dolores. Impedit ipsam deserunt eaque et. Perspiciatis veniam officia est et quaerat quia dolorem. Eveniet voluptate quia quis.', 2, 0, 9, 2, '2007-06-02 15:27:54', '2014-05-06 19:45:02'),
(48, 'Moshe Klocko', 'Vero fugit asperiores eligendi voluptas officiis deserunt. Voluptatum quis voluptas corporis quia ex accusamus ipsa. Laboriosam commodi est nobis et hic dolorem. Eius modi aut cum accusamus. Similique est eum velit quam repellendus. Incidunt voluptas aut voluptatibus.', 2, 1, 7, 2, '1999-10-27 07:41:58', '2017-11-21 17:41:10'),
(49, 'Kaley Predovic', 'Voluptas tempora aspernatur sequi. Earum est ea sunt. Qui vero et dolores consectetur quia explicabo. Provident doloribus eveniet non enim dolores incidunt est. Sit quia quia deserunt suscipit quasi exercitationem.', 2, 0, 8, 9, '2007-10-06 05:48:19', '2005-02-02 03:09:43'),
(50, 'Johnpaul Flatley IV', 'Ab quam sint quae blanditiis tenetur. Molestiae maxime et et ipsum eos aut ratione. Rerum esse ut qui. Aut enim sint provident quia aut nam qui. Dolor est vel qui nostrum. Laudantium voluptas laudantium nobis saepe. Eum totam quas harum autem voluptatum optio.', 1, 1, 9, 7, '2004-12-07 10:13:24', '2011-09-17 16:46:42'),
(51, 'Samson VonRueden', 'Illo et iusto ea ut. Tempore quibusdam odio sapiente. Et et doloremque dolorem non inventore quia. Id fugit id et ut doloremque ullam placeat. Adipisci ut velit optio et suscipit minus deserunt aut. Ut eum ut qui id in.', 2, 0, 10, 4, '1994-01-22 06:44:37', '2002-07-11 05:50:59'),
(52, 'Jayme Quigley', 'Accusamus quis odio aliquam reiciendis facere. Enim inventore doloribus iure incidunt. Est rerum sed et quo asperiores ab. Enim odit quisquam adipisci sint. Totam nihil aut est ut voluptas non quia neque.', 2, 1, 3, 5, '2007-01-01 15:00:54', '1998-09-24 14:54:31'),
(53, 'Delaney Lemke', 'Et quidem fuga laborum corrupti dignissimos quaerat neque. Eos optio possimus quidem nam qui. Eum harum odit esse vero odio veritatis. Velit voluptatum aut aspernatur dolorem ex qui. Sed a omnis beatae sit sit adipisci.', 2, 1, 6, 10, '2002-03-06 09:16:25', '2000-03-10 00:17:16'),
(54, 'Dr. Mohammad Schmitt', 'Et veniam tenetur ea natus aut id quis. Aspernatur pariatur sit recusandae fuga reiciendis tempore quos. Distinctio fugiat illum harum consequatur tempore quam. Aliquid minus ea sit. In est et reiciendis qui.', 1, 0, 6, 10, '2017-12-20 10:05:56', '1995-09-27 22:11:04'),
(55, 'Elvera Tillman', 'Ipsa et qui optio nostrum reiciendis. Ullam id qui veritatis et. Ut quia enim ipsam est. Ipsa aut ratione omnis pariatur qui est sunt.', 1, 0, 4, 8, '1992-09-01 18:18:02', '2018-12-17 12:56:24'),
(56, 'Hertha Simonis', 'Ad quod neque cum quo aliquam asperiores. Praesentium id optio occaecati. Et quia occaecati error id corporis corporis id. Culpa ratione debitis aut dolores sed voluptatem. Et ut omnis tenetur magni est voluptatem. Explicabo voluptate quia distinctio voluptas ut. Debitis ut doloribus labore velit facilis illo dignissimos.', 2, 1, 7, 9, '2006-11-15 06:14:06', '1990-08-07 21:55:58'),
(57, 'Dakota Schaden', 'Qui inventore omnis tempora ipsa. Voluptatem itaque vel sapiente neque maiores fugit. Ipsum ex consequatur porro in velit iure quo. Assumenda velit aut maiores omnis aliquam autem excepturi. Accusamus omnis sunt debitis illo magnam officiis id corporis. Molestiae tenetur quia corrupti libero unde sunt alias. Voluptatem quae vel rerum debitis vel distinctio fugit.', 2, 0, 10, 3, '2003-01-19 14:44:43', '2011-09-10 17:17:41'),
(58, 'Prof. Javier Gottlieb Jr.', 'Possimus rerum ea voluptas ab nemo et. Ad adipisci cumque voluptatem eum quia tenetur voluptas minus. Quidem necessitatibus voluptatem voluptates dolores omnis omnis et quaerat. Quia dolor et ut ipsa recusandae sed.', 2, 0, 8, 7, '2013-08-02 03:57:45', '2014-11-06 14:09:09'),
(59, 'Candace Robel', 'Ipsam sed velit natus non amet. Error temporibus iure nobis ab perspiciatis. Eum qui esse sint ipsum nihil molestiae ratione. Laboriosam odio doloremque exercitationem voluptatem fuga. Assumenda hic ea velit est voluptas. Quia et neque alias nemo voluptatem sed sit.', 2, 1, 2, 8, '2004-09-26 17:58:21', '2003-04-28 13:00:39'),
(60, 'Helga Legros', 'Quibusdam laboriosam et perferendis voluptas ullam et rerum. Voluptatum rerum id possimus perspiciatis. Aliquid minima pariatur quia delectus. Est accusamus facilis culpa velit exercitationem.', 2, 0, 10, 8, '2008-07-25 05:33:45', '1998-03-24 10:54:10'),
(61, 'Evelyn Barrows PhD', 'Eum enim cupiditate est aut qui porro. Expedita est ea dolore consequatur nulla distinctio sed omnis. Quae necessitatibus culpa rerum est. Nostrum aut quis quos et. At iure culpa cumque est quo qui. Accusamus voluptatem est a minus ut.', 2, 0, 6, 1, '2003-08-03 22:47:01', '2010-01-18 21:35:48'),
(62, 'Enoch Hartmann', 'Omnis accusantium ut impedit quia quia eveniet placeat. Quo ratione occaecati eveniet nesciunt vero sapiente. Odit minus quia ratione et ducimus accusantium nesciunt. Exercitationem consequatur iure soluta suscipit. Blanditiis cumque et aut laudantium consectetur enim qui beatae. Sit et dolores ullam.', 2, 1, 8, 7, '1997-03-22 14:37:13', '2002-07-01 17:40:37'),
(63, 'Candelario Harber', 'Fuga enim exercitationem et eligendi quisquam eum qui. Quis odit laudantium voluptas praesentium iusto rerum autem. Ratione et vero doloremque consectetur et. Repellat perferendis iste quasi et. Alias qui quos non voluptatem cupiditate quasi voluptatum. Alias atque tempore ut dolore architecto repudiandae facere. Voluptas dignissimos ducimus dolorem consequatur aut blanditiis.', 1, 0, 8, 6, '1993-09-07 00:11:28', '2010-11-02 20:57:06'),
(64, 'Dena Langosh', 'Qui possimus blanditiis sunt dicta inventore. Non explicabo consequatur atque. Dignissimos voluptatem et reprehenderit architecto. Et voluptates cum ullam quia voluptatibus occaecati quasi.', 1, 0, 8, 3, '2013-12-09 05:35:58', '2013-12-12 17:13:28'),
(65, 'Prof. Rosanna Murphy I', 'Sint possimus corrupti ipsum et animi. Ut debitis cupiditate autem ut. Nostrum quo vitae mollitia blanditiis nesciunt et culpa. Eius ut sunt error assumenda repellendus et totam. Minus exercitationem rerum aut facilis repellat officia. Et dignissimos eaque velit repellat. Veniam laudantium ex ratione qui eveniet et natus.', 2, 1, 4, 2, '2013-03-23 21:54:54', '1999-09-27 17:16:42'),
(66, 'Mr. Carter Abshire DDS', 'Perspiciatis eveniet ex nisi voluptate et. Eos ullam qui quasi repellat sed omnis. Quia illo quos consequatur illum voluptates. Molestiae doloremque error mollitia delectus. Commodi excepturi iste delectus quis. Quo rerum sunt optio accusamus nobis officia libero.', 1, 1, 10, 4, '2013-12-29 06:43:51', '1991-11-09 16:08:14'),
(67, 'Mr. Cody Kuhlman', 'Nam provident eligendi dolore ab eveniet. Architecto pariatur quae non quibusdam qui. Fugit aspernatur atque suscipit qui quis. Ipsa rem at quis ducimus exercitationem quasi. Minima quo porro sit. Sequi id id esse cumque vero et illum.', 2, 0, 2, 6, '2018-06-18 11:11:48', '1993-01-15 15:24:04'),
(68, 'Vergie Kozey DVM', 'At rerum aut et nemo voluptas aspernatur excepturi. Qui tempora repellendus ex illo suscipit in. Aut non doloremque autem velit natus. Ut at ut et qui rerum. Ratione praesentium consectetur est magnam.', 1, 0, 2, 9, '1989-12-13 03:22:48', '1992-05-16 23:55:35'),
(69, 'Dr. Miles Quigley', 'Ut sapiente sunt qui blanditiis sit velit facere. Commodi nostrum officia cum qui. Omnis qui enim excepturi voluptas dolor dolore vel ut. Laboriosam vitae est nesciunt sunt hic. Dolor voluptas nulla aut totam. Voluptatum quidem facere eos similique et laboriosam.', 2, 1, 3, 3, '2002-11-28 05:12:49', '1999-06-10 15:47:31'),
(70, 'Tevin Gutmann', 'Labore aut odit eveniet quibusdam. Fugiat animi et vel. Eos voluptate et aliquam rem expedita animi. Modi voluptatibus eum ut totam blanditiis sed. Pariatur voluptas temporibus nemo. Aliquid non eum excepturi cumque est at ab.', 1, 1, 10, 5, '1992-08-13 05:05:03', '1991-12-31 05:30:12'),
(71, 'Vidal Willms V', 'Deserunt non dolores non. Ut vel eos voluptas consequatur. Harum quasi maiores id autem et dolor aut. Consequuntur magni enim ut et vitae. Non ipsa assumenda fugiat. Quo aperiam molestiae officia nulla delectus perferendis consectetur. Ratione voluptatibus cumque facere occaecati ut.', 1, 0, 4, 1, '1990-11-27 19:53:18', '1990-05-07 02:47:37'),
(72, 'Prof. Dameon Schroeder I', 'Et rerum voluptatem enim ut sed harum quam. Adipisci nobis tempore sit cupiditate autem nisi. Omnis ut blanditiis consectetur quo. Doloremque doloribus libero est qui et sit dolor. Labore qui sint optio inventore provident quam et. Quis sint inventore quo accusamus.', 2, 0, 8, 10, '2003-08-19 00:34:12', '1992-08-20 04:58:24'),
(73, 'Carmen Lesch', 'Qui iste doloremque est reprehenderit ea in. Quo dolore non vero qui. Tempora tenetur voluptatum sed maxime et quo perspiciatis. Repudiandae aut corrupti reprehenderit ut aperiam molestias deleniti facere. Rerum nesciunt illum vel perspiciatis rerum nobis dolorum ullam.', 1, 1, 6, 7, '2005-07-21 06:17:39', '2008-10-03 10:49:05'),
(74, 'Kari Leuschke II', 'Ut molestiae sunt qui omnis quam cum. Omnis quia dolorem deserunt aut vitae libero facilis ipsa. Rerum quia illo necessitatibus ipsam aliquam quia nostrum iste. Omnis voluptatem repellendus eaque perspiciatis reiciendis ad qui quas. Voluptas quod ut excepturi autem commodi eligendi. Ut aut delectus nam dolores.', 1, 1, 1, 3, '2008-12-24 19:55:51', '2003-03-31 07:37:19'),
(75, 'Brent Wyman', 'Adipisci molestiae placeat consequatur minus. Quas veritatis dicta et. Voluptatem consectetur ut totam qui quasi ex. Rerum modi dignissimos eum molestias. Repellendus et enim amet id omnis laudantium ad officia.', 1, 0, 8, 10, '1992-08-01 20:48:06', '1994-08-08 07:21:20'),
(76, 'Esta Bins', 'Dolores id distinctio praesentium laboriosam vitae. Nemo architecto consequatur pariatur qui qui asperiores quibusdam. Sed vero quia aperiam doloremque. Veniam et qui dolor aspernatur quae est. Sed quidem tempora non adipisci.', 1, 0, 5, 5, '1997-04-30 22:16:55', '2013-01-03 08:10:33'),
(77, 'Jarod Hane', 'Eum explicabo cum impedit odit. Esse corrupti eligendi voluptas ea sapiente dolorem. Saepe provident consequatur et quas veniam. Quia distinctio itaque cum officia officia. Perferendis pariatur ipsa qui est dolor id numquam animi. Sequi est tempore natus aperiam a possimus.', 2, 1, 10, 3, '1999-03-15 09:50:36', '2016-01-18 17:24:03'),
(78, 'Wendell Weimann', 'Expedita sequi sit architecto voluptatem. Delectus tempore impedit nam ut. Ut est et aut quos. Repellendus perferendis sequi et qui. Sit quaerat architecto accusantium impedit. Commodi voluptatem ea libero voluptatem odio.', 1, 0, 7, 10, '1991-05-25 12:28:42', '2000-04-16 06:34:55'),
(79, 'Mittie Emmerich', 'Et earum praesentium doloribus minima. Ea repellendus enim quo est ipsum maiores. Ut ab exercitationem quas autem rem esse. Eum vero odio similique et accusantium recusandae asperiores. Eligendi alias aut suscipit a.', 2, 1, 7, 5, '2002-09-15 18:26:49', '2011-08-14 14:42:39'),
(80, 'Prof. Jessyca Feest', 'Iste ea perferendis delectus et est assumenda. Est quia nemo eos quisquam. Non necessitatibus dolor laudantium ut recusandae quis. Voluptatem eveniet necessitatibus rem officia quia voluptatem beatae. Ab aut mollitia eveniet. Et illum rem autem tempora. Enim quia vel non eius voluptas et esse. Qui quidem repudiandae laborum ipsam consequatur deleniti.', 1, 1, 4, 1, '2002-02-13 07:59:46', '2011-09-08 21:17:46'),
(81, 'Lilyan Eichmann DVM', 'Odit corrupti et deserunt nobis quo impedit totam. Placeat modi non minus id velit veritatis expedita corrupti. Nihil iure quos quisquam qui nam voluptatum itaque. Eaque ad ullam asperiores est. Et quod tempora quibusdam adipisci et. Soluta est dicta quam sit consequatur est. Commodi sed quisquam ad accusamus facilis.', 1, 0, 8, 6, '2004-12-10 13:37:17', '1997-06-20 01:38:51'),
(82, 'Derick Dooley DVM', 'Nostrum unde odit quos inventore similique. Earum asperiores quo praesentium similique laudantium. Enim non qui modi magnam ut eligendi quis. Et dolorem earum nulla. Voluptatem et omnis magnam rerum quae autem consectetur. Esse excepturi natus consequatur laudantium rerum. Est corrupti veniam et aut suscipit possimus tempore.', 1, 1, 4, 7, '2007-09-07 19:02:42', '1991-02-23 08:18:54'),
(83, 'Isaiah Mraz PhD', 'Autem sint ipsum est non architecto inventore. Modi voluptatibus nulla soluta alias. Mollitia ut quaerat consequatur laboriosam. Ut aspernatur animi est sunt facere. Et dolorum eum possimus vel ea iusto quae. Et aperiam explicabo nisi. Quis nostrum beatae labore et sed distinctio.', 1, 1, 4, 8, '1998-12-21 23:34:59', '1991-10-11 18:41:03'),
(84, 'Prof. Elsa Price III', 'Nostrum sequi sunt ut molestias et. Modi magni qui vero aspernatur a voluptate. Aut non perferendis nisi consequuntur explicabo dolor. Et sint maiores voluptate omnis excepturi molestias corporis. Voluptas similique accusamus similique nobis iste. Incidunt quia aut eos veniam ut aut.', 2, 1, 5, 2, '2005-04-18 18:54:15', '1994-04-26 06:49:48'),
(85, 'Tristin Kautzer PhD', 'Saepe illum mollitia suscipit consequuntur. Aut expedita et aut enim porro. Officia maxime et voluptates quia iure vel dolor. In aspernatur est recusandae assumenda aliquam culpa. Consequatur ut porro quo ut. Ipsum voluptatem nisi tenetur. Voluptatibus accusantium ut ab odio iure.', 2, 0, 4, 7, '2001-06-06 03:55:36', '2017-04-16 06:02:48'),
(86, 'Miss Elza Luettgen IV', 'Eum odio beatae deserunt animi aut omnis dolores. Magni fuga sint aliquam. Adipisci sint est quia fuga fuga laborum laudantium nulla. Qui qui rerum voluptas. Expedita necessitatibus non sit quis. Enim nostrum ipsam hic iusto praesentium.', 1, 0, 5, 3, '1998-11-18 13:22:43', '1991-04-25 03:20:55'),
(87, 'Deondre Schiller I', 'Eum ut est nihil voluptatum. Accusantium deleniti et sit eum. Voluptatem nisi eos dolorem quis quia iste. Vel enim est iusto eligendi est rerum assumenda. Consequatur nam et eum inventore voluptatum ab neque. Ut qui voluptatibus et at.', 1, 1, 3, 8, '2013-06-26 14:46:35', '1996-11-25 07:52:11'),
(88, 'Lukas Runte', 'Mollitia sint architecto et iusto. Harum molestias distinctio consequatur. Quasi error voluptas dolor voluptate ut. Impedit natus placeat natus assumenda sit non delectus. Voluptatum animi recusandae dolores earum sapiente quibusdam.', 1, 1, 4, 2, '2015-02-19 09:54:00', '1997-08-09 04:32:19'),
(89, 'Fernando Dach', 'Pariatur in ratione tempore harum quisquam magni illum. Omnis et qui illo ut. Accusamus et est est soluta. Commodi modi est excepturi tempora dolores. Illum architecto cupiditate omnis et quibusdam officia.', 2, 1, 8, 7, '1990-03-09 10:08:57', '2002-04-04 05:11:15'),
(90, 'Mr. Aurelio Goyette IV', 'Quia consequuntur voluptas eos. Modi corrupti itaque quaerat est dolores. Harum sed sunt temporibus laborum dolores qui. Aliquam magnam quisquam blanditiis aut voluptatem quod. Ipsa voluptatem velit sit magni fugit debitis omnis. Mollitia veniam est omnis molestiae. Consectetur dolorem et quidem totam soluta.', 1, 0, 9, 2, '2003-07-12 08:03:53', '2007-03-08 11:09:39'),
(91, 'Virgie Kling', 'Nihil possimus aut suscipit est sed qui optio. Et id fugit nihil. Et eum voluptas sint explicabo numquam. Animi facilis et et quia consectetur. Voluptas nulla hic quo sit similique dolor iste.', 1, 1, 8, 3, '2003-10-14 04:53:18', '2001-04-23 22:23:26'),
(92, 'Mrs. Zetta Monahan', 'Illum a repudiandae reiciendis omnis. Ut et ut sed accusamus quo soluta sit. Voluptatibus aspernatur pariatur sit voluptatem perferendis magni ut. Rerum aliquid dolores autem molestiae a in.', 1, 0, 7, 8, '1991-01-25 20:37:36', '2003-10-30 21:03:01'),
(93, 'Horacio Lemke II', 'At ea quia suscipit omnis ut molestiae distinctio. Adipisci non quo cumque sint maxime aut assumenda. Et repellat distinctio facere a accusantium perferendis soluta est. Qui ut eius reprehenderit nemo error natus. Minus explicabo cumque voluptas.', 1, 0, 7, 6, '2004-01-31 18:52:00', '1992-07-11 01:11:06'),
(94, 'Keyshawn Hoeger', 'Reprehenderit dolores nostrum aut optio perferendis. Necessitatibus et sit autem assumenda repellat molestiae at. Nihil facilis odit deserunt et omnis iusto. Aut dolorem doloremque ut esse.', 1, 0, 5, 6, '1995-10-05 08:10:58', '1994-03-09 02:24:00'),
(95, 'Ms. Providenci Lubowitz', 'Dolor et aut atque quo. Facere dolorem ratione aut quis. Sunt qui facilis aut ipsam aliquam suscipit. Quas voluptatem sed odit ut nesciunt odit aut. Quibusdam eveniet quae cumque rerum vel. Corporis possimus aut labore est est aperiam. Autem recusandae rerum in voluptates cum.', 2, 0, 1, 9, '2006-08-15 10:27:49', '1990-11-15 22:42:15'),
(96, 'Mrs. Melisa Heathcote MD', 'Atque vel aperiam fuga rerum doloremque. Quia dolor ut repellendus ipsa non perspiciatis. Quia facilis laboriosam eaque tempore facere eveniet rem. Possimus est est beatae incidunt enim. Excepturi ut voluptate eos. Fuga porro hic eum eos.', 2, 1, 1, 6, '1996-07-11 06:37:38', '2002-10-10 06:30:08'),
(97, 'Mr. Kelton Fay III', 'Debitis ab ab id reprehenderit voluptatem necessitatibus commodi. Autem illo enim voluptate optio officiis. Maiores eum fugiat sed sapiente quos qui. Dolorem et sed incidunt et est repellendus adipisci. Et et reprehenderit omnis voluptatem et eius consequatur.', 2, 0, 9, 8, '2018-04-02 01:49:01', '2010-10-22 04:42:39'),
(98, 'Gunner Vandervort', 'Inventore magnam aut accusamus iusto hic et. Nam velit magnam quod rerum nihil non. Odio consequatur sit laboriosam. Consequatur omnis quae hic veniam asperiores illum. Excepturi temporibus magni doloremque laborum. Quod natus eos architecto beatae nihil ullam et.', 1, 1, 10, 4, '2001-09-26 15:46:19', '2000-03-01 21:02:10'),
(99, 'Miss Eula Graham', 'Quia fugit et veritatis porro. Facere autem repellat vitae perspiciatis quaerat eius. Asperiores voluptates ut sit et nihil. Aspernatur doloremque nisi porro aut sit tempore omnis. Quidem itaque voluptas accusantium debitis. Assumenda unde vel illum. Repudiandae eius nam error rerum ut.', 2, 0, 5, 10, '2003-01-23 11:35:01', '2013-11-09 19:23:15'),
(100, 'Mr. Alexys Reinger III', 'Consectetur ullam rerum architecto et vitae dolores impedit. Necessitatibus sapiente suscipit et quia tempore consequatur veniam. Vero ea voluptatem animi placeat. Nulla atque assumenda qui cupiditate enim. Corrupti illum rerum maiores cumque repellendus animi.', 2, 0, 1, 4, '1994-08-30 20:33:41', '2016-03-09 23:29:02');

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
(1, 'Gracie Monahan', '1-575-285-2588 x49995', 'Similique dolorem ut non possimus suscipit asperiores non. Error nihil temporibus quo beatae ea non. Ipsam commodi accusantium exercitationem est pers', 'Sit voluptas assumenda magnam magni cupiditate consequatur nemo. Dolores dolores omnis eligendi voluptatem et a. Distinctio quod quis est temporibus ea. Sit ex praesentium sint earum non.', '1990-05-16 22:29:34', '1991-07-03 14:41:53'),
(2, 'Ms. Dannie Larson Sr.', '1-403-449-7036 x6303', 'Molestiae harum illo qui aspernatur perferendis sed quo. Dicta esse tempora dignissimos corrupti. Qui maiores molestiae sapiente vel. Est facere nisi ', 'Molestiae et voluptatem officiis ducimus vitae ut possimus. Excepturi consequatur voluptas voluptas asperiores ipsa autem eum. Laborum est ut provident temporibus aliquid saepe ipsa velit. Consequuntur voluptas nesciunt aperiam aut voluptatibus cupiditate ut. Sit accusamus consequatur modi enim doloremque et similique. Ea soluta laborum earum cum delectus et sunt.', '2003-06-30 09:05:44', '2001-06-22 09:48:02'),
(3, 'Jannie Cole DDS', '(854) 925-2149', 'Voluptatem et error laboriosam commodi ut quasi est. Veniam voluptatem ipsum quos atque sapiente. Ducimus recusandae laborum voluptates occaecati beat', 'Commodi aliquam illo quos error accusamus voluptas. Aperiam ut ut incidunt sed recusandae quia ipsa. Ut neque accusamus et incidunt rerum sunt. Harum facere sed sunt et repellat officiis sequi. Reprehenderit vero odio repellendus porro soluta.', '1991-11-22 16:34:47', '2011-06-24 21:01:56'),
(4, 'Dedric Tremblay', '937.383.1676 x66392', 'Beatae impedit non quaerat rem dolores est. Tenetur modi repudiandae enim. Eos qui doloremque laboriosam eos est velit accusamus. Dolor eveniet offici', 'Vel laborum omnis velit libero iusto occaecati voluptatum. Autem consequatur sed et quo id voluptate iusto. Dolores autem non aliquid et voluptas fugiat necessitatibus aperiam. Ea voluptas ducimus facilis quis. Autem veniam odio sit iusto. Corrupti voluptas vel qui id. Et laudantium et ut quia magni et tempore.', '1998-07-06 15:23:42', '2008-04-16 11:50:10'),
(5, 'Lesly Gulgowski', '338.778.7108', 'Totam odit iste necessitatibus. Commodi nisi dolore quam vero autem. Perspiciatis molestiae distinctio culpa quo.', 'Aspernatur repellat non ullam perspiciatis. Esse officiis et et laudantium sed reiciendis fuga. At ut qui non quidem. Sed libero ducimus numquam consequatur velit quaerat. Totam et nam qui ut rem blanditiis incidunt. Sed quis dolor omnis cupiditate natus quia sed. Adipisci eos libero veritatis perspiciatis sapiente temporibus.', '2014-09-09 00:23:02', '2015-01-29 17:37:04'),
(6, 'Maria Davis', '(250) 324-6482 x7513', 'Aut est sequi veritatis quis. Et quos sit assumenda. Voluptatem numquam autem quidem quaerat consequatur ullam aut soluta.', 'Id repellat aliquam ut quam voluptatum. Molestiae ea ipsum aspernatur quia. Et quod quia nemo sit earum. Omnis illum at sit cum.', '2017-05-20 22:02:06', '2003-06-29 15:42:08'),
(7, 'Dr. Daniela Schuppe', '+1-774-416-9231', 'Porro saepe enim nostrum. Sint sint totam voluptatem animi libero aut. Nulla molestiae quis sit aliquam nisi ut. Et excepturi ratione delectus dolores', 'Ad voluptatibus explicabo facere odio. Esse impedit non ut. Ut vel nisi fuga. Dignissimos est voluptates aut voluptatum optio id qui. Rerum ipsa dolorem quis quasi possimus ratione. Ut et quia quia provident odio aut. Occaecati nulla non voluptatem excepturi.', '1997-06-29 02:14:42', '1990-04-26 10:45:15'),
(8, 'Kevon Hill', '1-785-323-6171', 'Eos officiis excepturi omnis qui ut dolorem soluta. Autem sunt commodi minima et sapiente. Officiis sit voluptatem id quaerat ut est. Consequatur dolo', 'Tenetur qui impedit aut laboriosam omnis necessitatibus. Iure et expedita qui tenetur est facilis et cumque. Et aspernatur est et. Quidem ut vel incidunt optio maiores adipisci ipsa. Repellat voluptas laboriosam dolorem consequatur error sed. Et et quia voluptates quibusdam est adipisci. Odit voluptatibus maiores quia magnam voluptate suscipit corporis non.', '2008-05-02 11:04:33', '2012-03-28 19:23:54'),
(9, 'Mr. Tristin Gerlach', '1-679-960-9228 x49664', 'Aliquid voluptatibus officia sapiente. Architecto exercitationem harum error sapiente consequuntur qui omnis. Esse quis accusamus sunt nemo. Voluptate', 'Blanditiis nemo eius alias impedit voluptates. Dicta fugiat doloremque occaecati delectus iusto in nostrum. Vel sit delectus adipisci expedita. Sed voluptatem architecto similique.', '1995-03-15 12:56:17', '2016-11-19 03:57:36'),
(10, 'Jayson Koelpin', '871-596-6828', 'Assumenda qui quia et sint. Cupiditate deleniti ut ipsa sed dolor minima. Autem et enim ipsa dicta rem. Labore neque autem sunt expedita.', 'Iste non ipsa natus vel explicabo minima. Veritatis enim maiores rem aut. Delectus sunt praesentium ea et sed quas. Suscipit est autem veniam sed illum. Harum dolor quasi impedit rerum rerum occaecati et dolor. Vel aperiam reprehenderit quis.', '2015-12-20 00:50:07', '2010-04-20 22:18:08'),
(11, 'Waino O\'Conner', '603.432.6000 x38118', 'Quisquam sit deleniti est ut ducimus. Reprehenderit doloribus et deleniti sit voluptates. Itaque nihil dolore saepe veritatis eaque quos.', 'Occaecati modi tempore praesentium unde et et totam. Velit labore ut laudantium totam sint qui. Ad fugiat sapiente sit ratione dolores quia. Ipsa ipsum qui est et rerum porro impedit. Quaerat id ullam sint provident non porro error et. Recusandae sapiente quasi ducimus beatae.', '2001-08-19 10:06:11', '1997-04-21 11:04:27'),
(12, 'Prof. Brandi Ruecker Jr.', '(284) 517-3503 x664', 'Delectus et molestiae aperiam eaque hic adipisci. Qui a in iusto aut fuga aut sit. Accusantium officia nemo vel.', 'Rem reiciendis molestiae id voluptate qui mollitia aut dignissimos. Vel facere alias illum natus aut qui. Cupiditate sequi nesciunt corporis perferendis accusamus similique et. Sint magnam voluptatem fuga et aperiam facilis.', '2006-09-27 17:45:59', '1999-12-01 14:38:33'),
(13, 'Adrian Rice', '363.236.6923 x1849', 'Corrupti iste tempora velit ut voluptatibus. Reprehenderit et odit ducimus esse nam ex quis et. Pariatur a quia facere aut omnis. Quasi quis sunt magn', 'Magnam fugiat aut et rerum dolore temporibus. Provident quos sit nisi. Rem sed incidunt dolorem molestias sed temporibus enim. Et vitae optio veritatis aut sequi optio repellendus perspiciatis.', '1992-04-13 07:55:43', '2009-03-16 00:17:10'),
(14, 'Nettie Schumm IV', '391-322-4165', 'Dolor aut dicta eum ab. Ut quos dolores quibusdam quasi architecto ut beatae. Accusantium mollitia et ea et minus ut.', 'Consequatur molestias veritatis porro et porro non a. Exercitationem voluptas modi voluptatibus provident. Enim corporis qui fuga. Impedit facilis aut dolor eius. Enim quaerat nulla impedit aperiam facere ut. Quod dolorem ut qui temporibus ipsam vitae ipsam.', '1990-12-15 10:59:03', '2010-08-21 12:50:44'),
(15, 'Maybelle Schmidt', '+1.458.892.5292', 'Et quia dolor voluptas molestiae repellendus non. Perferendis unde omnis sed similique tenetur temporibus quaerat. Eveniet aut velit dignissimos volup', 'Et facere enim voluptas possimus. Et consequatur nihil aliquam doloremque sint. Ex ut recusandae sit recusandae. Qui quo sunt odit aut nihil velit illo. Ut et rem illum maxime molestiae reiciendis. Magni maxime sunt maiores vero nihil in. Nihil laborum et eligendi voluptate eaque officia laudantium.', '2001-10-08 23:10:12', '2010-02-04 11:43:24'),
(16, 'Kallie Pouros', '1-856-893-8011 x3965', 'Reprehenderit et iusto delectus ut. Unde odit est suscipit rem perspiciatis inventore aperiam.', 'Consequuntur nihil rem exercitationem fugit est enim. Tempora aut illo aut quia ipsa. Ut consequatur maxime debitis. Beatae et nihil eveniet ratione et animi explicabo. Incidunt sunt ut minima vitae. Labore autem quis est est culpa ut omnis. Voluptas et animi voluptatem consequatur eius ipsa ut.', '2015-04-27 21:02:15', '2016-08-25 14:38:01'),
(17, 'Prof. Laverna Lynch', '770.323.3959', 'Animi sed maxime quibusdam et voluptatem aut. Natus in ullam earum aliquid nihil. Fugit suscipit similique aliquid. Dolor dolor et ab rerum delectus a', 'Nihil dolores rem voluptatum tempore. Exercitationem sit debitis et blanditiis. Est ullam et voluptas libero dolor sit. Corrupti sint voluptatem dignissimos adipisci consequatur voluptatum dolore accusantium. Delectus exercitationem iure omnis perspiciatis numquam explicabo.', '1991-06-07 12:17:54', '2018-04-03 00:09:50'),
(18, 'Dr. Jefferey Cruickshank Sr.', '(304) 405-8314', 'Cum dolorem enim reprehenderit corrupti praesentium odit. Recusandae facere totam molestiae natus. Laborum rerum ea earum.', 'Quod atque perferendis possimus pariatur laborum nisi dolorem. Culpa sit ea rerum molestias libero. Commodi atque velit aut necessitatibus deserunt. Ut adipisci voluptas amet. Doloremque velit esse praesentium aut. Voluptas eligendi beatae maiores soluta beatae doloremque autem expedita. Est velit illum qui qui.', '1997-04-14 00:33:36', '2004-04-30 08:18:30'),
(19, 'Cielo Hayes', '889-793-0012', 'Unde id vero quas eius ad esse rerum. Molestiae ut qui assumenda illo qui cum. Ipsam ut itaque explicabo ut non eveniet. Fugiat nisi et sit tenetur.', 'Dolores doloribus officia iure corrupti. Et sed incidunt sed voluptates. Ut beatae animi eos incidunt architecto. Quae quis ipsam consequatur ullam praesentium. Placeat quia molestiae velit sit. Ut qui mollitia laborum. Voluptas aspernatur fuga quia quia a voluptatem.', '1996-11-27 07:47:38', '1991-01-21 15:25:04'),
(20, 'Jodie Kessler', '(312) 910-7248 x6686', 'Vel omnis ut non. Fuga itaque voluptas magnam est eos. Enim sed aut qui voluptatibus sint eius iusto.', 'Ut itaque sunt debitis at et vel. Voluptas non neque quia nobis enim. Maiores et veritatis nostrum temporibus aut quasi. Consequatur quis doloremque minus itaque. Esse vero cumque autem. Pariatur rem et nihil ut non id. Porro incidunt non aspernatur nam eum vero reiciendis.', '2002-09-04 04:59:33', '2018-01-08 08:38:44'),
(21, 'Lurline Tremblay', '608.954.2422 x313', 'Harum explicabo et quidem atque labore et. Qui sit accusantium sunt dicta ad accusantium. Sit unde earum consequuntur qui commodi quae.', 'Quisquam expedita ea sed praesentium. Omnis sit pariatur sunt dolorem deleniti in. Non est illum est voluptas perferendis. Ipsam aspernatur at quasi omnis facilis qui iusto. Explicabo eius dolor sed enim sunt porro possimus maxime. Quo unde esse sunt. Soluta eum ipsa dolor voluptas et.', '1996-08-16 17:52:32', '1995-10-01 08:57:40'),
(22, 'Presley Bailey', '280.296.0871 x07905', 'Consequuntur quod est aspernatur est beatae et repudiandae reiciendis. Illum corporis ut sit nobis inventore ut. Esse id nam animi perspiciatis.', 'Porro porro est cupiditate voluptatibus hic quo. Non vero quos inventore accusamus consequuntur fuga sit. Impedit et fugit voluptas earum tempora vero. Et quod consequatur eos suscipit sapiente. Suscipit et iste et quam placeat. Voluptas fugiat ab tenetur quia.', '2008-12-20 09:46:14', '1993-07-12 23:55:49'),
(23, 'Dr. Alexandrea Skiles', '(592) 559-1855 x8473', 'Non vero porro qui non totam vero veniam. Nobis mollitia vel quidem sapiente aperiam qui similique. Tempora temporibus ab magni laborum et aut. Provid', 'Dolore nam eligendi qui quod facilis. Ducimus et perferendis quia ducimus dolorum aut. Rerum repudiandae asperiores voluptatum. Porro sapiente quam deleniti. Sapiente est sunt quibusdam nihil.', '1991-12-14 18:59:43', '1999-06-02 03:53:55'),
(24, 'Carleton Cormier', '657-215-8559 x7328', 'Inventore accusamus porro velit quas veritatis expedita dolorem. Maiores aut minus labore enim dicta maiores. Ex libero temporibus eos ea aperiam dolo', 'Voluptatibus neque dolor rerum. Laborum molestiae quaerat repudiandae impedit earum et. Excepturi pariatur asperiores recusandae natus. Exercitationem ut maxime officia. Vitae cupiditate voluptas consequuntur officiis possimus. Ea occaecati est quas nobis. Quod quia qui dolore rerum voluptas quos.', '1989-07-15 16:08:50', '1995-01-20 20:39:55'),
(25, 'Liana Goodwin', '(672) 384-8959 x5599', 'Aliquid vel quae accusamus sunt ipsa molestiae. Sint quam laborum asperiores ut. Est voluptas autem in temporibus.', 'Tempore ratione enim laboriosam. Voluptas excepturi omnis impedit qui. Et dicta quos non neque quisquam. Temporibus atque deleniti sed distinctio nulla facere.', '1997-04-23 19:34:09', '2014-06-06 06:12:02'),
(26, 'Alayna Russel', '+19308388415', 'Fugiat repellendus dolorem dolorem placeat dolorem perferendis. Alias corrupti autem est explicabo sunt velit. Tenetur voluptatem in culpa vero animi ', 'Optio harum dicta aut quod quasi occaecati repudiandae culpa. Omnis omnis enim et nihil recusandae beatae. Quasi assumenda quam deserunt aut laboriosam quo alias sed. Quo optio recusandae inventore.', '2002-06-03 18:40:59', '2011-03-28 08:57:19'),
(27, 'Mr. Cristopher Langosh', '(341) 781-3996 x2254', 'Quis totam voluptas quia labore consectetur neque. Est hic iste dolorem aut. Aperiam natus explicabo nemo rerum suscipit. Quae atque consequuntur est ', 'Sed nisi accusantium voluptates eum perferendis non reiciendis. Voluptas rerum molestiae ratione dolores odio. Minima molestias libero nostrum vel. Sit rerum sint ea et numquam sed optio. Sunt cupiditate et asperiores illum eius sit et atque. Est voluptatem totam optio. Debitis voluptas nulla dicta.', '1993-03-13 22:37:39', '2011-08-13 18:16:38'),
(28, 'Arvilla Cummings', '1-749-928-6129 x26357', 'Quas dignissimos quia velit. Voluptatem asperiores sed omnis sunt voluptas aliquid quam. Blanditiis nisi perferendis culpa voluptate sint. Repellendus', 'Eligendi ea facilis modi omnis accusamus cumque eum. Velit quo optio ut fugiat provident est aut. Perferendis ad debitis illo natus in temporibus. Quaerat vel dolorem laboriosam aut.', '2016-11-21 21:05:09', '2010-05-20 16:23:00'),
(29, 'Prof. Brooklyn Heller', '1-874-927-2521 x43285', 'Accusantium quia dignissimos rem quis quos et illo vel. Pariatur in aut est velit. Totam dolorem non vero est voluptas non.', 'Sint velit minima aut autem et. Excepturi debitis cumque itaque qui. Fugit aut ut est inventore dolorem. Aliquid quod illo deserunt. Ratione et libero adipisci omnis qui beatae sunt. Maiores quia ipsam laboriosam omnis impedit harum ea. Voluptates est asperiores alias ipsa occaecati omnis exercitationem. Aut repellat et rem voluptatibus.', '1999-07-31 16:47:29', '1990-10-07 09:14:24'),
(30, 'Miss Felicita Cummings', '543.523.4783', 'Saepe vitae repudiandae sed porro. Autem blanditiis molestias iusto harum iste. Voluptatibus sit voluptate earum qui ex voluptatibus. Tenetur omnis ex', 'Et odit necessitatibus hic et. Sed dolor praesentium veniam est eos debitis. Recusandae aut perferendis veniam nemo nihil a corrupti. Quod debitis sint consequatur quisquam molestias deserunt tenetur. Soluta qui aut laborum.', '1995-11-21 17:46:13', '1994-01-07 18:08:53'),
(31, 'Margret Stoltenberg', '+1.464.782.6689', 'Est repellendus illo voluptatem nihil necessitatibus possimus temporibus. Nemo neque assumenda aliquam error dignissimos reiciendis. Corrupti ea corpo', 'Quisquam aperiam vel et cum. Aliquam animi incidunt officiis et. Enim officiis porro sequi ullam ducimus ut doloribus dolor. Omnis et porro error cum similique dicta.', '1993-03-21 13:07:38', '2008-10-28 17:43:01'),
(32, 'Chris O\'Conner', '978-774-3147', 'Nihil nihil hic libero nesciunt eum. Assumenda qui ipsa eos. Est iure vel ab itaque sunt sint. Vero reprehenderit qui accusantium quos sit maiores qui', 'Qui sit quia voluptates itaque velit. Quod necessitatibus et ea voluptas. Est minus expedita quaerat illo accusantium fugiat mollitia. Dolorem enim sunt vel quasi quasi. Recusandae ab unde magnam repellat molestiae. Modi dignissimos tenetur quo aut velit. Omnis id non qui id recusandae hic.', '1995-05-01 15:33:57', '2012-07-06 17:23:28'),
(33, 'Valentin Howe', '258.209.7405 x14685', 'Et qui illum voluptas aut. Accusamus explicabo nam rerum nihil. Expedita deleniti fuga commodi molestiae rerum distinctio sunt.', 'Nemo sunt dolor excepturi perspiciatis quos quaerat. Id sapiente vero deserunt. Numquam magni qui et. Ad a possimus vitae aut harum non veniam. Nihil et sed unde maxime suscipit illo. Reiciendis officia ea recusandae ab. Velit dolores aliquam repellendus natus assumenda et hic.', '2013-02-09 10:26:58', '1997-11-29 07:11:51'),
(34, 'Krystal Senger', '+1 (913) 879-5168', 'Non consequuntur eum explicabo. Amet animi veniam porro sit iusto odio repudiandae. Ab ut sed qui quae natus consequatur in. Quis ut quod praesentium ', 'Incidunt aut quia rerum vel nam. Et odit quam officia iure incidunt ex natus. Magnam et quasi sunt et accusamus et rerum. Neque rerum pariatur ratione saepe illo ad reiciendis.', '1999-07-24 19:34:36', '2004-07-02 09:57:49'),
(35, 'Dr. Margarita Mante III', '1-565-206-0735 x274', 'Rerum quia nostrum unde ea. Et sed nemo vero et sint. Eos qui sapiente omnis cupiditate. Reprehenderit sapiente qui laudantium sit.', 'Neque accusamus qui vero eos nihil. Cum eum sit delectus blanditiis cum. Voluptatem nam voluptas sapiente dolor. Vitae error qui ex error impedit. Molestiae non eum voluptas consequatur aut.', '1994-06-10 07:48:40', '1989-10-14 03:44:45'),
(36, 'Jada Heidenreich', '(780) 314-9358', 'In veritatis dolor voluptate. Ratione impedit error sunt illum eos. Et sed quia eligendi in commodi accusamus. Illum fugit atque ipsam quo quae in.', 'Voluptatum ea cumque voluptatem et. Asperiores dolorem nostrum omnis molestiae iusto minima quisquam. Et nulla sit expedita quia sit modi. Quae officiis nesciunt veniam quia doloribus facere. Aut iste corporis repudiandae. Ex et iusto aperiam nobis sit.', '1999-04-11 20:00:40', '1997-12-26 07:51:24'),
(37, 'Dallas Quigley', '+1-969-359-0412', 'Architecto et maxime et. In tempore quam aut a harum alias aliquam. Et enim accusamus quia et exercitationem minima quam eveniet.', 'Est tempora voluptatum corrupti aut accusamus quam quasi. Dolorem harum fugiat delectus sed illo dignissimos. Est explicabo aut autem repellendus sed sapiente est. Enim amet quae voluptatum quia. Suscipit quis sit totam iusto illum voluptatem. Repellat dolorem reprehenderit fugiat quia perspiciatis modi id.', '2007-08-25 08:55:04', '1991-11-19 08:09:17'),
(38, 'Katheryn Schoen', '687-448-3871 x177', 'Et facilis est officia voluptatibus. Dolore magni quidem dignissimos quos non molestiae dignissimos. Qui ea suscipit ab ut laboriosam. Reprehenderit c', 'Enim et quae voluptatem quis. Pariatur molestiae quas nostrum pariatur expedita id. Consequatur amet tempore porro. Ab dolorem sunt itaque vel libero quae. Doloribus odit tenetur voluptas ut expedita id repudiandae ea.', '1992-03-28 02:36:19', '1994-05-05 11:35:12'),
(39, 'Dr. Audrey Armstrong PhD', '676.486.7171', 'Odit dolores non natus et beatae. Dolor reprehenderit exercitationem repudiandae officiis modi.', 'Similique qui iusto quia commodi error beatae ratione enim. Consequuntur molestiae ducimus perspiciatis mollitia dolorum. Maxime ratione dolorem nihil recusandae molestias minima esse quis. Nulla enim excepturi eius doloribus pariatur non qui accusantium. Aut unde alias sapiente earum.', '2002-12-14 01:08:53', '2013-08-22 14:04:32'),
(40, 'Laury Graham', '1-225-882-1003 x61511', 'Sit doloribus non ipsa ullam veniam. Blanditiis consequuntur officia eos. Et soluta amet sequi. Est enim in voluptatum qui cumque sint qui.', 'Mollitia molestiae est voluptas eveniet et. Illo qui laudantium id doloribus deserunt eius. Sit et unde eius sapiente cum odit eos nihil. Reiciendis qui laborum modi nulla incidunt laborum cumque.', '2004-05-03 19:33:04', '2006-08-19 15:22:42'),
(41, 'Guy Walsh DVM', '1-750-995-3855 x728', 'Itaque repellat fugit iure. Dicta sint tempora iure sit consequatur voluptas. Cupiditate et et error et ab.', 'Sed voluptatem adipisci quas rem quasi. Et incidunt doloribus et quo illo commodi rerum. Quia minus ea id quas nisi. Repellendus nostrum voluptates et a sit. Reprehenderit assumenda dolorum quidem. Ipsam alias sit cumque ut molestiae perspiciatis sequi.', '1990-03-13 00:56:29', '2018-09-03 02:44:17'),
(42, 'Dr. Rowland Bergstrom', '1-521-342-7479 x26327', 'Iste quo vel autem modi deleniti nihil modi. Sit labore cumque nesciunt esse aut culpa. Iste unde unde minima. Deleniti mollitia et laboriosam iure ip', 'Illo dolores maxime explicabo aspernatur quo. Incidunt aut facere minus. Et porro ducimus non quasi quam expedita iusto. Dolores voluptatibus fugit perferendis nulla. Ea harum dolorem accusamus est iusto.', '2003-01-25 17:30:25', '1991-05-29 01:06:30'),
(43, 'Miss Augustine Schumm III', '1-984-309-3594', 'Porro ipsam soluta ut explicabo dolores ullam quibusdam eius. Fugit a nam non dolorem sed.', 'Et dolore non ea et. Atque nobis perferendis voluptates placeat. Quaerat accusamus cum esse rerum. Ut quia quam similique quasi ea rem eum. Maiores commodi laboriosam nam eligendi rem nihil.', '2000-10-13 17:10:39', '2006-01-16 17:42:36'),
(44, 'Miss Tressie Walsh I', '896-939-2119 x1856', 'Expedita unde incidunt ut harum perferendis fugit. Voluptatum expedita minus possimus accusamus quod necessitatibus. Modi autem necessitatibus aut ist', 'Cupiditate deserunt sit modi voluptatem beatae et autem qui. Fugiat molestias ex enim. Et consequatur occaecati temporibus. Repellat assumenda in iure iste quia iste. Dolorum esse voluptas occaecati doloribus consequatur consequatur doloribus. Ut pariatur atque qui dolorem.', '1991-04-16 10:05:01', '1990-10-28 07:46:23'),
(45, 'Juston Considine', '1-280-220-1436', 'Et temporibus voluptatum rem esse vitae ut. Temporibus aperiam laborum qui aspernatur. Dolor porro at et sit. Aut consequatur quo doloribus.', 'Ratione facilis dolores sed ea. Et et et aut quia consequuntur optio optio aut. Quasi ipsa quod aut dolorem voluptatem similique. Eum consequatur dolorem in similique voluptatem. Quam exercitationem facere et maxime assumenda sequi magni.', '2004-01-15 11:18:06', '1999-03-23 16:14:18'),
(46, 'Alexandre Funk', '1-625-866-6989', 'Et est placeat quia tempora quibusdam labore. Vitae quia a reiciendis ab. Alias eum et et.', 'Similique at ullam debitis rerum. Labore quas sunt minima sint et. Aliquid in velit voluptates quasi eos facilis. Et sed provident et aut tenetur. Hic omnis facilis placeat labore sit aut ea aut. Illo praesentium id non aperiam nisi necessitatibus.', '1989-06-04 14:17:37', '2000-10-22 12:55:08'),
(47, 'Dr. Tyree Rohan', '(686) 529-0723', 'Voluptate culpa enim sunt ducimus est. Quod ex impedit ratione et ullam tempore.', 'Quisquam quod et voluptates vel ut ipsa aliquam. Eligendi accusamus quibusdam cum quia dicta magnam. Sunt corrupti minima et quam. Quia sit corporis aut quaerat doloribus animi.', '2018-08-17 04:52:41', '1995-06-08 01:33:08'),
(48, 'Joanie Boyer', '+16146649463', 'Consequatur quod provident id ut maxime et. Provident natus itaque rerum culpa est iure. Et nisi aliquam qui cupiditate. Quia culpa non accusamus sapi', 'Minus explicabo quo qui dolores. Dolorem quidem architecto incidunt sit nobis. Quo architecto explicabo quisquam repellendus vitae quasi accusantium. Nam ullam harum dolor rerum odio. Consequatur cum et est nihil quia quis libero. Dolor est voluptate qui optio et.', '1991-08-06 20:36:36', '2016-08-09 21:27:27'),
(49, 'Dr. Willie Legros DDS', '(447) 783-3837 x81812', 'Esse a atque repellat et ipsum aspernatur. Quia beatae voluptatem voluptas porro et. Ex dolores et quod ut. Odit velit dolor aut assumenda omnis.', 'Inventore labore accusantium illum est ex ipsam. Ea esse aut reprehenderit sed praesentium. Illum aut tenetur similique molestiae est numquam. Et nulla dolore ut voluptatem sapiente. Iure natus quis dicta iure eaque ab. Sint provident repudiandae doloribus eaque dolor nulla.', '2001-07-16 14:17:13', '2009-06-08 23:24:43'),
(50, 'Linwood Barrows', '(620) 918-1626 x796', 'Tempore porro ipsa sed illo fugit quos. Eos magnam aut quia quo. Sit qui molestiae excepturi quasi occaecati. Porro officia ea ullam.', 'Nam rerum nihil iste quaerat ea expedita. Animi voluptas quam praesentium dolorem ex. Deserunt consequatur magni sapiente tempore qui. Aut illum ut officia consectetur quae officiis. Quia aut dolore maxime est molestiae voluptas. Rerum sit id nam in harum reprehenderit.', '1989-06-08 01:55:41', '2007-02-16 17:38:02'),
(51, 'Prof. Trinity Jacobs Sr.', '(834) 784-1277 x589', 'Veniam fugit voluptatem maxime veritatis. Iste repudiandae sed quibusdam voluptas.', 'Illo enim voluptatem fugit amet. Dolorum illo aut enim at dignissimos a. Voluptas perferendis sint enim earum. Non consequatur beatae fugit laudantium a ea. Eos quidem sed sint dolores soluta. Labore corporis blanditiis voluptatem adipisci et sit error. Excepturi pariatur quo magnam.', '2017-10-16 07:15:17', '2008-04-18 17:36:58'),
(52, 'Reece Koch PhD', '(574) 615-2904 x31587', 'Ad iure in minima. Vel facere quia sint neque animi aut possimus. Nesciunt voluptas odit qui. Dolorum modi ab voluptatem eum iure ad eius.', 'Voluptatem provident laborum dolorem repellat adipisci. Eum fugit voluptate alias. Quia iste ut eius accusantium voluptatibus doloremque et. Sapiente accusamus autem maxime fugiat.', '2011-06-11 21:05:49', '2014-09-16 23:09:29'),
(53, 'Dr. Arnoldo Raynor DDS', '713-721-7014', 'Eius voluptatem dolorum quod quae quia impedit. Mollitia vitae tenetur magnam a iure aut qui. Saepe aspernatur deleniti quidem culpa et.', 'Quo voluptas nisi sint vitae quis eaque accusamus sint. Unde illo et ut repudiandae alias eos. Nulla ea molestias ut molestiae aliquam quia tempore. Laboriosam nisi labore enim fugiat consectetur et totam ipsa. Non eius et non ut fugiat voluptatum.', '2012-05-15 03:24:52', '2005-11-22 21:43:05'),
(54, 'Lawson Hartmann', '+18284062801', 'Hic mollitia ea aut autem earum porro laborum. Commodi et velit mollitia aut accusamus sequi dolore.', 'Esse aut voluptas deserunt beatae. Corporis cum corporis dolores doloremque. Tempore est atque ex voluptas aliquam hic sint. Autem exercitationem aperiam aperiam officia beatae blanditiis. Est provident tempora quis nulla harum. Et quis est in aut iusto. Fugiat cumque dolore atque et aliquid aut.', '2009-08-01 23:28:49', '2008-01-27 16:25:52'),
(55, 'Prof. Leola Schuppe DVM', '(614) 868-4062', 'Qui occaecati quo ea voluptas fugit adipisci eveniet. Id nulla saepe perferendis et quas aperiam rerum. Quisquam qui eum perferendis dolores unde ab i', 'Quia odit in aperiam consequatur nam. Similique voluptatem dolores aliquid neque perspiciatis. Maiores commodi qui et est sed. Omnis eveniet sunt aut et. Asperiores non similique voluptatem iure corrupti reprehenderit. Quidem dicta blanditiis ab. Non consequatur nihil velit soluta beatae quo.', '2013-04-15 00:49:23', '1995-10-24 03:37:45'),
(56, 'Bernie Tromp', '+1-331-293-1877', 'Quam voluptatem at quos voluptatem distinctio ipsam. Ex impedit nesciunt aut quo modi magnam aut. Necessitatibus ab est consequatur autem ut fuga dele', 'Ut saepe reiciendis nam libero molestias repudiandae. Accusamus consequatur ut mollitia et maiores rerum. Mollitia eos facilis blanditiis sed et aut. Possimus porro voluptas modi voluptatem aut. Omnis aut exercitationem rerum vel earum dolor. Ea et vel nam minima quae voluptas. Assumenda repudiandae amet velit est.', '2001-09-13 01:28:30', '2008-08-12 19:46:04'),
(57, 'Maudie Goyette Sr.', '278.857.6396 x4368', 'Et ut dignissimos delectus nostrum sed magni atque accusantium. Facilis et perferendis et rerum perspiciatis consequatur. Sunt et saepe delectus. Quas', 'Rem est a accusantium eaque similique incidunt labore. Expedita dolorem aut sed. Magni non illo et. Iure suscipit deleniti unde reiciendis occaecati iste. Rem sequi accusamus sapiente iusto. Esse corporis aut molestiae voluptatibus doloremque sed consequuntur.', '2003-03-24 19:25:51', '2005-07-19 19:01:30'),
(58, 'Ian Greenholt', '1-974-366-6382', 'Sequi iure veniam eius dolorem accusantium. At corrupti et eligendi in.', 'Suscipit facilis deserunt alias et. Voluptatem eos est ipsam aliquid. Aut quia consequatur laborum dolore sed dolores. Itaque dolorum et porro adipisci dignissimos accusamus magni.', '1999-01-26 14:55:32', '2011-08-07 22:32:54'),
(59, 'Hilton Bechtelar', '340-245-8515 x1214', 'Aliquam similique dolore at occaecati. Fugiat temporibus eum animi quae quam. Aut nesciunt voluptas odio eligendi a. Porro sed molestias inventore rei', 'Qui excepturi sed aut hic voluptas. Quo modi ut aut vel. Incidunt quos perspiciatis quis voluptatem cumque. Autem atque quas laborum quis. Ad voluptate debitis voluptas laboriosam deserunt.', '2009-11-05 07:27:15', '1998-11-23 07:32:13'),
(60, 'Dr. Dillon Rodriguez', '1-679-528-1300', 'Ea in ipsam itaque est explicabo autem. Nisi omnis voluptatem odio maiores. In ipsa itaque quia libero.', 'Incidunt nemo exercitationem autem. Magnam delectus cum quos exercitationem quia. Ratione nostrum rerum voluptatem omnis ipsum. Facilis perferendis dolorem pariatur tenetur delectus quos sit voluptate. Vero nemo ratione aut et minima soluta qui cum.', '2004-08-03 02:24:07', '1992-11-03 12:55:55'),
(61, 'Lonnie Bailey', '948-226-9341', 'Similique repellendus rerum itaque accusantium voluptatem assumenda. Totam est ut accusantium reprehenderit aut mollitia laborum. Itaque iure consequa', 'Nemo quia vero eaque quisquam voluptatem. Autem veniam dignissimos facilis deserunt soluta rerum quo aut. Ab alias harum voluptates. Quis quia voluptatum voluptatem quo porro ea quas voluptatibus. Ut et totam vero non est dolor. Voluptatum consequatur dolorem voluptatibus non dolores odio voluptates.', '2015-07-17 07:53:35', '2015-11-20 18:59:18'),
(62, 'Kristin Murphy', '1-924-582-7065 x242', 'Sit dolores odio facere quaerat magnam accusantium. Dolore praesentium quisquam ut molestias magni. Rerum sed dolorem provident rem ut neque perferend', 'Et in autem soluta sit occaecati illo. Ea repellendus eum eaque rerum ipsam voluptatem. Facere molestiae odio facilis nisi minus dolorem. Et rerum commodi est est enim earum. Tempora labore molestiae in qui.', '1995-10-06 00:34:08', '2000-03-07 22:43:11'),
(63, 'Mr. Gianni Carter', '1-540-328-2791', 'Iusto excepturi doloremque nihil. Ab sed dolorem voluptas ut eos maxime consequuntur. Hic aliquid aliquid ullam eligendi eligendi molestiae nam.', 'Et natus ut ut totam. Provident voluptas esse quidem. Magnam et dicta consequatur natus eos voluptas vitae. Rerum enim nobis deserunt ipsam placeat culpa quia voluptates. Voluptas cupiditate quam cumque enim voluptates officia consequatur. Possimus minus asperiores enim voluptas.', '2010-03-04 10:31:43', '2015-11-12 11:50:58'),
(64, 'Mario Wolf', '(263) 862-1915 x40843', 'Repudiandae inventore aperiam aperiam nobis. Praesentium eos nihil quisquam.', 'Nulla exercitationem voluptatem nulla iure qui. Rerum quis quidem ut voluptatem autem consequatur rem. Hic praesentium asperiores tenetur et. Voluptas culpa nobis nisi provident. Quae ullam quasi quas earum veniam. Similique qui sequi optio est velit eveniet optio.', '1999-07-09 02:46:28', '2004-11-21 12:34:02'),
(65, 'Isaiah Dickens', '947-600-6386', 'Eveniet nobis quam at nihil labore officia corporis. Voluptatem id iste animi perferendis magni voluptatem quia. Natus porro expedita ea amet et susci', 'Odit dolores laborum dolore dolore dolore illo amet. Tempora quas asperiores adipisci. Culpa vitae dolores deleniti magni ratione libero. Sed commodi vitae harum enim.', '2017-06-22 01:11:17', '2002-08-28 01:07:29'),
(66, 'Ms. Nyasia Olson', '967-613-4472', 'Excepturi molestias sint aspernatur quia sed suscipit. Rerum maiores qui praesentium quia. Quia eum voluptatem sint quia voluptas omnis.', 'Neque laudantium quia dolores et quos repudiandae a animi. In atque nemo accusamus qui qui. Accusamus sequi hic minima. Aliquid ut quidem consequatur. Harum eligendi ad minus officia laudantium tempora reiciendis.', '2012-11-07 02:30:18', '1998-11-25 16:00:16'),
(67, 'Hailee Kub', '320.387.6986', 'Quos mollitia doloribus optio soluta amet culpa libero. Ut non nihil saepe accusamus iure veritatis sint. Quos veritatis laboriosam labore in. Volupta', 'Dolore qui assumenda nihil deleniti nulla aut nihil. Deserunt harum et necessitatibus dolorum quis. Esse quam excepturi optio deleniti. Atque blanditiis consequatur recusandae harum sint vero. Atque sed molestiae sint accusantium doloremque error.', '2008-06-19 00:40:14', '2005-09-01 10:35:58'),
(68, 'Omari Rau PhD', '(331) 746-0669', 'Iste nam sit dolorem velit. Architecto exercitationem non maxime tempora pariatur sint quibusdam explicabo. Impedit iusto fugiat dignissimos nihil.', 'Id officia dolor quod quia sed cum. Natus voluptatem rerum esse vitae ratione. Beatae sapiente a quo aut sed. Ipsum et architecto consequatur sit voluptatem.', '2018-03-02 13:20:30', '2012-04-29 22:04:40'),
(69, 'Elsie Heaney V', '+1-891-807-5378', 'Sed suscipit non et voluptate modi velit. Harum est assumenda temporibus similique ab. Et excepturi in repudiandae voluptatem sit minus ut. Consequunt', 'Molestiae ad ut cum unde consequatur dolor. Dolorum sed nobis eligendi. Maxime sequi tempora ea et recusandae. Est consequatur sapiente laboriosam aperiam voluptatem.', '2006-03-11 14:05:06', '2012-11-15 18:24:24'),
(70, 'Judah Carroll Sr.', '+18158636079', 'Repudiandae qui nam ut ipsum dolore inventore veritatis. Dolores eligendi debitis nesciunt sit. Doloribus id qui ab inventore expedita ducimus.', 'Rem debitis placeat dolores minima alias amet. Voluptate accusantium ad et aut veniam dolorem nulla. Quod quia ut mollitia sint a sunt. Consectetur quaerat voluptatem omnis officiis odio debitis vitae praesentium.', '2004-12-13 02:55:05', '1992-09-02 01:01:35'),
(71, 'Mr. Jerod Wuckert Jr.', '+1-514-737-8950', 'Autem temporibus repellat dicta nulla sint. Eaque esse consectetur magnam quae nostrum aperiam. Maxime mollitia occaecati magni ullam distinctio animi', 'Debitis consequatur laboriosam rerum sit ab excepturi. Magni sint ea ex ad commodi perspiciatis. Odio suscipit sunt quia. Voluptatibus est omnis pariatur deleniti. Quos et eligendi in quasi ex velit et.', '1995-03-25 06:29:26', '1994-03-19 11:45:02'),
(72, 'Kasey Greenfelder', '917-956-8965 x08832', 'Porro reprehenderit ut facere molestiae esse. Vero error praesentium ratione aperiam voluptates qui.', 'Molestiae autem nam ea aperiam dolorum asperiores quia. Voluptas pariatur laborum nulla qui sequi eos est quia. Aut qui autem ipsa quibusdam. Qui officia nam incidunt harum esse exercitationem impedit. Consequatur eos et hic dignissimos dolor iusto. Veniam sint fugit ratione laborum dolorum quibusdam. Ex mollitia hic esse atque delectus at odio.', '1998-08-15 21:33:22', '2000-08-02 04:45:39'),
(73, 'Prof. Adolph Sauer II', '297-536-9050 x41455', 'Est qui incidunt sunt animi sed quidem atque. Quas ex culpa ducimus natus quibusdam consequuntur. Officia labore aut quis perspiciatis sapiente. Saepe', 'Ullam quos facilis dolores fuga. Quis enim velit vero est dignissimos aut. Sapiente repudiandae veniam ipsa iste. Possimus repellendus eaque quam dolorem hic ipsa magnam. Deleniti ullam atque amet quo voluptatem autem. Sapiente praesentium aliquam est aut omnis.', '1995-10-03 09:25:07', '2007-05-21 22:19:35'),
(74, 'Kali Casper', '(974) 912-7854', 'Alias vero suscipit incidunt harum. Vel animi architecto sint ut labore accusantium. Blanditiis non maxime doloribus quaerat sapiente.', 'Magni doloribus tempore esse consequatur mollitia et. Corporis omnis aspernatur et quia qui. Non necessitatibus est consequuntur. Quis reprehenderit nemo adipisci libero nobis harum perferendis.', '2000-11-08 12:27:36', '2007-10-11 07:24:31'),
(75, 'Leopoldo Weimann', '1-618-987-0425 x13460', 'Blanditiis omnis velit quisquam non sequi. Velit sit aut necessitatibus. Sed aliquam atque cupiditate repudiandae aut tenetur voluptatibus perferendis', 'Ut aut sapiente quas quae. Animi ratione deserunt corporis fuga voluptate inventore aliquid. Molestias voluptas velit cumque sed voluptas iure tempora. Dolor laudantium excepturi ut consequatur temporibus. Omnis similique explicabo quibusdam nisi rem maiores iusto voluptatum. Quis voluptates provident possimus sunt accusantium molestias atque. Quo quos similique dignissimos rerum esse facere corporis.', '2014-05-13 22:13:59', '1997-02-21 23:03:28'),
(76, 'Alanna Hegmann', '1-834-977-6810', 'Eius quia quisquam eum quidem. Velit voluptatum quod et dicta ducimus asperiores.', 'Aut perspiciatis quis omnis deleniti ut laboriosam quia. Voluptas et corrupti cumque et sint provident et. Sed eaque in accusantium sequi illum dolorem. Et recusandae sed perspiciatis adipisci commodi. Nostrum voluptas dolor assumenda atque enim assumenda repellendus voluptatem. Porro voluptatem eveniet tempore odio veritatis sint. Et ipsum ipsum quia et accusantium minima expedita.', '1993-10-28 13:04:40', '2016-08-10 01:02:03'),
(77, 'Jesse Schultz', '+1-719-717-5950', 'Hic voluptatibus in est et et sed. Aut sapiente occaecati ea consectetur nihil assumenda doloribus voluptatem. Inventore sunt a officia sunt sequi lab', 'Nam architecto dolorem exercitationem non minus omnis. Laudantium maiores qui non. A adipisci nulla fugit quibusdam eos animi voluptatem. Eum sint iste assumenda et placeat in. Repellat hic praesentium nemo porro id. Dolor nostrum illum sit cupiditate. Quas esse non aut fugiat ab.', '2010-03-08 00:24:49', '2013-08-18 03:33:27'),
(78, 'Jordon Sawayn', '786.237.7890 x804', 'Consequatur enim exercitationem qui esse voluptatem qui autem. Harum est ipsa alias qui voluptatum repellat. Et est adipisci excepturi quisquam qui do', 'Voluptatem et repudiandae enim architecto id. Officiis cum eum perspiciatis voluptatem. Quisquam nesciunt quam ut sequi. Nisi perferendis voluptas et voluptatem dolor repellendus laborum. Facilis harum dolorem ullam nesciunt. Et totam nisi accusantium a. Illo ipsam facilis quidem quia molestiae cum non.', '2002-02-12 02:50:41', '2018-09-30 11:40:45'),
(79, 'Chyna O\'Reilly', '+1.794.764.8204', 'Modi quia non nihil et ipsa. Fugiat et architecto error autem. Similique quis nisi est officia quibusdam. Suscipit esse neque saepe et fugiat non est ', 'Corporis et accusantium vel et nihil. Enim rerum sapiente asperiores voluptatibus dolor qui. Iure eos nobis consequuntur vel doloremque eos qui rem. Quia commodi numquam delectus deserunt rerum aut. Qui in earum provident nihil. Et vero ut et qui a. Nostrum velit quam molestiae odit sapiente.', '2009-03-22 22:39:42', '1992-09-14 19:56:18'),
(80, 'Mr. Harold Bahringer V', '(445) 236-5945 x4082', 'Iusto ad distinctio labore aut corporis vel at ipsa. Quod sint non ducimus amet autem dolorum.', 'Ut similique consequatur non et. Nulla quod soluta impedit qui assumenda. Quis officia enim nulla officiis ullam. Rerum velit doloribus corrupti amet. Aperiam aut soluta quis non voluptas iusto.', '1997-09-28 08:41:45', '2000-09-15 23:24:32'),
(81, 'Dr. Lexus Stamm', '914-960-8640', 'Ex exercitationem quod enim quod aut doloremque aliquid et. Rem quos libero sint quasi tenetur velit ea. Illo eum dolorem non vel sint.', 'Natus quaerat id asperiores a vitae nihil vero id. Sint suscipit tenetur sit quis. Recusandae eum exercitationem sed rerum natus. Provident qui autem sit voluptas. Ipsa quia cumque velit. Rem commodi dolor deserunt possimus unde aut voluptas.', '1989-07-18 13:09:27', '2001-01-29 12:09:03'),
(82, 'Mrs. Bria Towne', '+1 (471) 980-5663', 'Consequatur doloremque minus ipsum odio rerum illum. Quis cupiditate non consequuntur quis temporibus veritatis rerum. Et ipsam eum in. Ex ut ullam mo', 'In corporis totam numquam eum hic facere. Corrupti omnis quasi et est et. Autem aut sed voluptatem. Ad quam sit et culpa velit.', '1995-09-18 19:30:28', '2001-02-27 23:36:19'),
(83, 'Xzavier Gottlieb DDS', '1-665-259-5614 x619', 'Sequi laborum dolore et alias. Ut recusandae id neque.', 'Quia dolores voluptatum incidunt aut. Placeat iusto sint dicta ut. Consectetur dicta aut dolores nisi consequatur. Omnis voluptatem qui quod libero. Ut est voluptatum error. Beatae similique et et eum nam cumque. Quis quia asperiores magnam harum vel adipisci odio.', '2001-05-05 09:45:21', '2010-04-07 10:50:17'),
(84, 'Prof. Rose Mitchell', '217.256.8059', 'Quis in et vero rerum vero soluta fugit sed. Maiores quod iusto rem totam nulla soluta. Vel dicta sit et sint. Neque ut quia aperiam labore cum deleni', 'Eaque incidunt aliquid ut molestiae nobis. Maiores in consequuntur exercitationem quis ipsum minus aut. Ipsam itaque sit corporis eos cupiditate unde. Quam delectus officiis cumque nostrum omnis.', '1997-07-13 19:03:42', '2016-02-18 15:20:21'),
(85, 'Quinton Moore Sr.', '489-318-7641 x02705', 'Ratione natus est velit in. Vero culpa autem qui. Facilis et omnis molestiae qui.', 'Architecto illum deserunt nostrum. Placeat ratione aut quia et amet aut. Cum et sed dolorem. Porro aliquid id assumenda voluptatum in rem. Quisquam vel a quis mollitia ducimus. Laboriosam omnis ut qui ea ex quaerat odio repellat. Eum excepturi porro minima placeat quisquam ut a exercitationem.', '2003-04-20 17:26:18', '1996-12-18 10:30:53'),
(86, 'Mr. Dylan Bosco MD', '1-970-468-1865 x9634', 'Nihil veniam sunt maxime delectus voluptatem consequatur eius. Ab natus id omnis unde maiores voluptatem.', 'Nobis iusto perspiciatis nam magnam quidem repellat. Porro saepe blanditiis ullam sed eligendi unde et. Reiciendis laboriosam sint placeat velit ut quia est. Cupiditate eligendi corrupti deleniti occaecati laboriosam. Possimus a incidunt molestias illum veritatis quo itaque dolor. Consequatur aliquam nulla quia corrupti aut.', '2000-08-02 21:01:23', '2002-02-27 14:27:41'),
(87, 'Garnet Botsford', '(784) 937-4518', 'Deserunt saepe dignissimos praesentium odio voluptate. Quam libero et quos velit aspernatur autem. Non tempore consequatur tenetur ad in ea quia. Et q', 'Tempora mollitia earum a sunt at animi culpa blanditiis. Non facere voluptatem error excepturi unde atque. Praesentium ut corporis nam qui ut molestias doloremque. Iste porro quia voluptatem ad ea. Tempore quas vero quisquam optio rerum aperiam. Qui ea non nam sapiente ea.', '2015-08-25 08:53:31', '1999-01-11 17:59:38'),
(88, 'Ms. Katlyn Bechtelar Jr.', '795.808.7574 x4982', 'Sunt ipsum officia consequatur harum eveniet facilis blanditiis. Quasi occaecati tenetur quam vitae. Eaque quam fuga suscipit eius quaerat aut ipsa. S', 'In ut qui qui maxime sed excepturi qui. Non nesciunt quod atque eius expedita voluptas occaecati ea. Cumque inventore dolorum et repellat est. Sed facere veritatis asperiores occaecati fuga hic. Reiciendis autem reprehenderit dolor amet enim omnis eum repudiandae. Accusamus voluptatem itaque ratione amet deleniti nemo qui. Est quam eum reiciendis nihil.', '1990-02-23 11:23:31', '1991-05-28 05:57:37'),
(89, 'Armani Conroy', '(234) 587-7140 x127', 'Eum laboriosam nihil sit aut id maiores. Asperiores aspernatur fugiat assumenda voluptate eligendi eum. Repellat doloribus minus rerum quam.', 'Ut et ab aut ad porro. Magni et ut est ut perspiciatis pariatur enim architecto. Voluptas impedit aut non earum. Et quasi ut corrupti ea est perferendis. Non assumenda illo quam velit.', '1992-06-04 12:02:29', '1992-04-05 17:20:43'),
(90, 'Geovany Dickinson', '1-529-292-1876 x018', 'Et fugiat quidem exercitationem excepturi. Repellendus nisi id rerum pariatur. Iusto nihil itaque neque temporibus qui.', 'Ut sint ipsum accusantium velit. Ut non tenetur magnam quas quia nesciunt consequatur. Aut nam eveniet repellendus iusto cum ipsa dignissimos. Corrupti iure quidem qui est aperiam. Dolorem ut et sed debitis ab voluptatem sit. Nesciunt sint est cupiditate autem exercitationem. Nostrum quidem aperiam cumque temporibus dolorem quia omnis.', '1998-02-02 16:20:15', '1996-05-02 19:34:24'),
(91, 'Isai Nienow', '260-366-0156', 'Dolorem facere fuga repellat et maxime sint. Pariatur esse necessitatibus dicta sed repellendus. Consectetur sed maiores repellat vel occaecati. Enim ', 'In ut aspernatur suscipit ad nihil iure qui nobis. Eveniet quisquam dolorum voluptas minus temporibus tempore. Quibusdam ad reprehenderit rem vero aut magnam voluptatem. Ea est ut quo omnis et. Nulla dolorem modi illum voluptatibus labore facere.', '2010-10-16 15:42:18', '2016-01-20 10:58:58'),
(92, 'Dr. Solon Schneider', '+1 (790) 980-7935', 'Doloremque et impedit id voluptatum et. Et non enim culpa beatae. Ullam explicabo nam consequatur corporis dolores delectus.', 'Alias possimus aut necessitatibus earum debitis incidunt sapiente. Soluta est est molestias aut. Dolore nemo autem esse error. Rem consequatur id sapiente voluptatibus vero perspiciatis et. Dolorum sit quos enim sequi quia incidunt. Reprehenderit qui eligendi fuga distinctio vero nostrum minus ullam. Nostrum incidunt qui natus.', '2001-07-14 08:08:30', '2000-03-30 12:32:47'),
(93, 'Sigmund Lesch', '(785) 474-7131', 'Et enim eligendi et dolorem. Ipsa modi fuga nostrum unde vel aut incidunt. Amet rerum iusto quia eos.', 'Et et illum impedit ut. Sit voluptatem modi quis alias impedit doloremque. Mollitia tenetur vel enim facilis minus earum odio. Ullam in suscipit temporibus blanditiis rem aliquid doloremque.', '1993-12-19 06:03:09', '2009-06-03 02:32:35'),
(94, 'River Haag', '1-423-625-2898 x641', 'A enim commodi ex qui. Delectus in illum atque non esse libero minima.', 'Tenetur fugiat iste quia. Nostrum voluptas quaerat temporibus est voluptatem. Nemo temporibus eos ut iure voluptatem aperiam. Qui vel quis dolor occaecati aliquid temporibus sequi. Voluptatem sunt facere nostrum recusandae officia nostrum.', '2017-02-22 18:03:43', '2010-12-26 04:13:56'),
(95, 'Charity Rutherford', '+1-368-685-3009', 'Architecto voluptas quaerat eos sint. Molestiae amet dolorem qui sequi alias non qui molestias. Voluptatem ut similique dignissimos eius voluptatem di', 'Dolorum aut voluptas consequuntur beatae non. Sed qui et modi. Aut officiis non mollitia excepturi quia inventore. Asperiores sed culpa qui reiciendis. Reprehenderit voluptatem molestias aut delectus expedita accusamus suscipit. Dignissimos mollitia eveniet et exercitationem non.', '2009-07-23 13:22:30', '2005-01-22 14:06:26'),
(96, 'Rhea Murray', '(447) 669-2990 x419', 'Inventore tempore velit voluptatem optio quaerat delectus. Voluptate hic odio ea cupiditate et ex. Quo molestiae et porro nisi. Autem amet sunt ea tem', 'Velit ex in illo eos. Dolor omnis voluptate est maxime iusto itaque sint. Dolore doloribus magni rerum illum earum neque ut voluptatem. Consequatur nostrum et voluptatem culpa et provident tempora veritatis. Ut amet qui atque repellendus sit.', '2017-06-13 11:35:35', '2004-04-26 12:25:57'),
(97, 'Mr. Richard Reilly IV', '(727) 983-9704', 'Non vel mollitia nihil quidem magni ut pariatur. Id quae in illum autem ipsa. Consequatur optio tenetur nisi rerum ea. Architecto omnis facilis conseq', 'Pariatur eos rerum sed alias cumque. Veniam eum occaecati vel dolores voluptatum. Eius in repellendus minima quasi quae vero ut. Voluptatem recusandae et sequi. Omnis placeat sit omnis explicabo distinctio quidem.', '2002-04-16 00:57:00', '2008-07-20 12:40:48'),
(98, 'Mr. Presley Ledner DVM', '828-597-3207 x060', 'Totam eaque enim laborum sed ea sint. Qui velit porro sunt non aliquam asperiores.', 'Expedita possimus error est molestias quasi qui et. Inventore quaerat debitis in. Occaecati ex et est qui ducimus voluptates. Odit nemo quos itaque sit et. Nesciunt dolor molestias fugit qui et. Quaerat consequuntur cum voluptatum maiores dicta illum. Repudiandae laudantium expedita voluptatem sit.', '1996-08-16 11:29:14', '2018-09-12 11:51:24'),
(99, 'Prof. Erin Dietrich PhD', '553-499-9514 x10322', 'Maiores itaque ut sequi sed aliquid architecto. Reiciendis quaerat qui incidunt ut deserunt omnis voluptatem. Sint qui omnis sunt sequi.', 'A consequuntur nobis quia. Facere quo nemo aliquam et. Enim consequatur voluptatibus velit dolor vero. Quam quas unde nostrum harum officia aut.', '1990-08-12 05:32:19', '1999-02-13 02:25:09'),
(100, 'Prof. Ella Witting DDS', '889-952-7691 x1850', 'Quia enim corrupti accusamus harum. Vitae ducimus nisi sequi sed praesentium nobis. Ex nulla minima placeat est et et. Est autem enim qui est vitae hi', 'Nulla dicta nisi sit facere officia. Autem sed sed et consequatur accusamus esse. Similique id qui cum consequatur odio tempora. Ipsum laudantium magni ipsa culpa molestiae ut. Eum qui molestiae consequatur ad quis. Delectus sequi voluptates iusto dolores ex voluptatem non.', '2003-10-13 04:17:19', '2002-01-06 09:29:12');

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
(43, '2014_10_12_000000_create_users_table', 1),
(44, '2014_10_12_100000_create_password_resets_table', 1),
(45, '2019_03_28_131646_create_post_table', 1),
(46, '2019_03_28_131711_create_products_table', 1),
(47, '2019_03_28_131729_create_messages_table', 1),
(48, '2019_03_28_131746_create_comments_table', 1),
(49, '2019_03_28_131802_create_banners_table', 1);

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
(1, 'Laborum reprehenderit accusamus voluptates sunt voluptate est.', 'fullwidth01.jpg', 'Voluptatibus quis molestias ullam omnis. Quibusdam molestiae totam expedita. Aut harum adipisci sint fugiat non molestiae. Ea architecto voluptates recusandae autem rerum ut. Et occaecati omnis non quae dolore. Dolorem molestiae numquam esse debitis accusantium.', 'Cum officiis omnis molestias tempore labore nisi e', 'Architecto nostrum perferendis quam. Possimus opti', 'Dolorum sint quos quam et voluptatem nam velit. Au', NULL, NULL, 'slug-bai-viet-1', '2011-12-25 22:14:53', '2010-09-10 18:33:10'),
(2, 'Id excepturi veritatis itaque quae fugiat repellat.', 'fullwidth01.jpg', 'At est ad animi perferendis explicabo. Et est ipsum perspiciatis aperiam. Rerum adipisci illum ut ut. Aspernatur sequi quas aspernatur eos iste.', 'Maiores quis corrupti enim quia architecto corrupt', 'Nisi quas est a tempora explicabo. Veniam rem cons', 'Reiciendis et tenetur dolor ipsum possimus dolore.', NULL, NULL, 'slug-bai-viet-1', '2006-08-07 06:57:10', '2016-03-12 03:44:02'),
(3, 'Rem est eligendi perspiciatis mollitia pariatur incidunt ut.', 'fullwidth01.jpg', 'Enim laborum minus illum odio sunt dolorem. Non sint dolor voluptate sed dignissimos ea voluptas. Molestiae quis dolorem quam laborum aut recusandae. Quidem ducimus eos rem quia doloremque qui vero.', 'Dolor dicta ut aut qui esse. Facilis cum aspernatu', 'Perspiciatis aperiam repellat minus est veniam nih', 'Earum provident ratione dolores et. Sed dolor quas', NULL, NULL, 'slug-bai-viet-1', '1989-11-27 09:54:09', '2009-12-29 15:24:33'),
(4, 'Quo omnis molestiae fuga molestiae.', 'fullwidth01.jpg', 'Eveniet modi assumenda aperiam et est earum. Dolores aut eveniet dolorem. Aliquam repellendus earum dignissimos perferendis deleniti qui. Voluptates eos sequi sunt. Deleniti aut natus optio omnis dolorem vitae officiis. Tenetur repellendus quam officia.', 'Doloribus nam laudantium harum aut. Recusandae omn', 'Delectus et aperiam voluptas dolores voluptas est ', 'Amet maiores rerum velit et quasi aperiam. Sed qua', NULL, NULL, 'slug-bai-viet-1', '2009-08-28 04:09:16', '2001-08-17 12:43:07'),
(5, 'Modi doloribus ab explicabo similique.', 'fullwidth01.jpg', 'Iure qui repudiandae ratione est fugit architecto. Assumenda voluptatem quis iste accusantium. Soluta et perferendis nemo dolorem dolorem distinctio. Enim dolorem amet officia nam sed accusantium eveniet. Debitis et et commodi magni laborum omnis aut sequi. Enim dolor quo eius non. At facere neque aut numquam et non.', 'Necessitatibus et quidem aut aut incidunt autem se', 'Est voluptate enim ullam. Et tempore autem est eum', 'Omnis iusto nostrum at sapiente aut ab autem. Tene', NULL, NULL, 'slug-bai-viet-1', '2015-02-13 13:17:08', '2015-06-10 05:58:41'),
(6, 'Ut harum nisi vel est eos illum non.', 'fullwidth01.jpg', 'Sed id eligendi quos. Error blanditiis iure assumenda ut. Non dolores blanditiis dignissimos in. Consequuntur mollitia sit nulla ea molestiae. Est similique reiciendis voluptatem.', 'Recusandae quo excepturi eius quia et non occaecat', 'Voluptatem numquam sit quisquam soluta dicta reici', 'Eum qui nobis dicta hic atque animi. Sint perferen', NULL, NULL, 'slug-bai-viet-1', '1993-02-26 08:52:20', '2010-07-24 05:06:52'),
(7, 'Et dicta facere fugit placeat qui.', 'fullwidth01.jpg', 'Itaque et rerum animi aliquid id. Exercitationem perferendis recusandae et id praesentium et quasi. Excepturi quam necessitatibus id error officia quibusdam. Et quia ut iusto. Accusamus dolore rerum quia aut voluptas nihil. Ducimus dolores quo est esse sapiente qui. Et corrupti quas laudantium sit accusamus.', 'Itaque ut dicta illum enim hic veritatis. Id aliqu', 'At ullam modi est provident perspiciatis. Ratione ', 'Illum pariatur possimus deleniti. Expedita eligend', NULL, NULL, 'slug-bai-viet-1', '2004-04-11 00:42:14', '1997-05-11 20:55:30'),
(8, 'Omnis error nam vitae qui fugiat tempore molestias.', 'fullwidth01.jpg', 'Ut sint nostrum ut cupiditate. Non laborum ipsa enim. Qui vero consequatur impedit et amet. Minus vel aliquam voluptas omnis atque. Et dolorum voluptas occaecati enim adipisci aliquid culpa. Voluptatem sequi et cumque nostrum quod. Omnis quo autem quo.', 'Reprehenderit fugiat voluptatem consequuntur nam m', 'Voluptatem molestias et quaerat voluptatem suscipi', 'Et quis optio sit mollitia accusantium autem. Hic ', NULL, NULL, 'slug-bai-viet-1', '1989-05-07 03:07:33', '1996-08-25 19:45:06'),
(9, 'Sit omnis eos qui et enim quaerat qui.', 'fullwidth01.jpg', 'Quod eos maiores architecto magnam et omnis. Quibusdam vel sit non odio et ipsum eum dolorem. Sit aliquid illo eius ea sint quisquam. Dolor officia facere ullam voluptas velit sunt aut ipsum. Eligendi mollitia laboriosam tempore iste accusantium quae quis vero. Doloremque occaecati sit quam blanditiis impedit.', 'Non neque nesciunt dolores voluptatem beatae offic', 'Voluptas provident cumque dolores quia quo a. Cons', 'Rerum illo accusantium cumque voluptatibus quasi u', NULL, NULL, 'slug-bai-viet-1', '2009-01-19 07:25:19', '2001-01-03 15:38:42'),
(10, 'Iste officia qui deleniti qui ut sit libero.', 'fullwidth01.jpg', 'Sunt hic sed voluptatibus doloremque odio saepe. Velit aut qui sit eaque repellat omnis. Voluptatem labore ipsam debitis rerum aliquam repellendus. Doloribus esse consectetur consequatur non laborum mollitia doloremque. Quae ad sit minima. Quis minus in eos velit voluptatem iste. Eaque suscipit enim vel voluptas.', 'Illo non ut repudiandae corrupti sapiente autem ve', 'Nihil nihil occaecati ipsum nam assumenda. Exercit', 'Ut ipsam quis consectetur sunt neque illum. Laboru', NULL, NULL, 'slug-bai-viet-1', '1996-05-14 22:50:16', '2013-06-07 07:43:55');

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
(1, 'Optio quod quaerat asperiores.', 685.00, 'fullwidth01.jpg', 'Ea recusandae tenetur enim sint est. Delectus explicabo qui provident ut accusantium beatae. Fugit libero eaque quos nulla qui maiores. Minima commodi velit nulla ut.', 'Saepe qui aut quis. Qui accusantium eos consequatu', 'Molestiae atque quas nihil itaque. Nemo perferendi', 'Neque voluptas praesentium expedita accusamus volu', NULL, NULL, 'slug-san-pham-1', '1996-04-29 06:52:57', '1994-03-23 20:06:38'),
(2, 'Dolores dolore magnam eligendi animi voluptate iusto eum.', 880.00, 'fullwidth01.jpg', 'Quibusdam sed quasi minus unde non deserunt suscipit. Nulla est rerum vero cum officia sunt unde. Ullam odio dolorum repellendus distinctio libero nihil soluta veritatis. Enim ab perspiciatis dolorem porro vel. Sint aliquam nostrum vitae ipsam. Distinctio velit ut voluptatibus. Voluptatem qui numquam voluptatem voluptatum.', 'Voluptas rem veritatis vel dolorem consequatur und', 'Vitae quis ut ut magnam placeat. Saepe nesciunt vo', 'Qui laudantium ut soluta non qui fugit explicabo. ', NULL, NULL, 'slug-san-pham-1', '2006-06-07 12:21:00', '2012-02-28 04:22:06'),
(3, 'Quisquam placeat accusantium ex doloremque omnis.', 676.00, 'fullwidth01.jpg', 'Voluptas nulla nesciunt modi deleniti aut. Voluptatibus praesentium quaerat ad aliquam aliquam aut. Ipsa excepturi amet illum. Et quam ipsa a autem. Sint ea amet itaque quaerat sapiente at.', 'Veniam doloribus labore aut quis cupiditate rerum ', 'Sunt neque perferendis nemo commodi. Exercitatione', 'Non voluptatum excepturi aut in. Ut neque omnis se', NULL, NULL, 'slug-san-pham-1', '2012-10-04 13:54:54', '2000-04-17 12:34:19'),
(4, 'Dolor quidem dicta rerum odio.', 722.00, 'fullwidth01.jpg', 'Nisi beatae odio iusto. Magni similique et ex repellat dolor. Dolorem soluta aut voluptatem corporis quia facilis qui. Ipsam aut cupiditate quisquam et consequuntur ut occaecati.', 'Quasi nulla alias qui illum. Consequatur odio perf', 'Et quia veniam laudantium quibusdam ut dolorem omn', 'Omnis similique voluptate omnis dolore praesentium', NULL, NULL, 'slug-san-pham-1', '2004-04-16 01:20:43', '2010-08-27 10:12:12'),
(5, 'Dolores doloremque ipsa eaque est expedita optio et.', 233.00, 'fullwidth01.jpg', 'Est occaecati est aperiam voluptas. Incidunt ad sit dolores rerum. Iusto expedita nostrum sint fuga aliquam voluptatem. Corrupti minus ipsa delectus sequi. Harum amet et qui dolor reprehenderit ex id dolorum.', 'Eos aliquid quam commodi blanditiis quis. Qui comm', 'Quam eius in esse. Enim accusamus aut adipisci neq', 'Laudantium beatae reiciendis praesentium asperiore', NULL, NULL, 'slug-san-pham-1', '2013-10-21 03:45:32', '2016-05-13 14:07:57'),
(6, 'Fuga autem aut occaecati placeat minus est.', 165.00, 'fullwidth01.jpg', 'Libero et laudantium placeat commodi ullam laborum veritatis. Laudantium molestias aliquam dolorem delectus omnis minima. Dolor accusantium qui accusamus dolorum quas. Maxime voluptatibus iure voluptatibus. Dolorem voluptatem pariatur amet rem nam similique fugit.', 'Velit et et et impedit hic soluta autem. Illo expe', 'Placeat earum est iusto. A deleniti et porro at si', 'Veritatis omnis expedita voluptas tempora illum oc', NULL, NULL, 'slug-san-pham-1', '2003-01-30 05:22:09', '1989-05-11 05:32:53'),
(7, 'Sint doloribus est ipsam.', 184.00, 'fullwidth01.jpg', 'Veniam vero dolorum et error quae eos neque. Sapiente delectus non tempora. Velit voluptate cupiditate ducimus. Ipsum qui iusto voluptatem reprehenderit ea ut molestias. Est hic aut modi perspiciatis ea. Qui unde dolorum ipsam consequatur quia voluptatem porro.', 'Laudantium animi odio mollitia aut modi ipsum prae', 'Aut sed similique praesentium sit ut. Quam rerum u', 'Nobis est quis ullam ipsum laudantium consequatur ', NULL, NULL, 'slug-san-pham-1', '2002-11-23 14:09:50', '2010-06-26 10:25:49'),
(8, 'Dolor officiis quibusdam aperiam.', 12.00, 'fullwidth01.jpg', 'Autem voluptatem explicabo atque earum voluptatum dolor. Exercitationem eveniet quia rerum magni in est excepturi asperiores. Optio odio harum eaque laborum beatae maiores qui. Quis doloremque temporibus earum autem.', 'Dolores placeat porro dolore inventore incidunt et', 'Accusantium modi ea aut blanditiis quia quae quod.', 'Dolorum quia alias officia consequatur eius occaec', NULL, NULL, 'slug-san-pham-1', '1998-10-01 21:47:42', '1993-02-08 04:49:37'),
(9, 'Ea animi excepturi sunt et accusamus similique.', 549.00, 'fullwidth01.jpg', 'Vero adipisci aut non enim ut in. Et ipsa veniam quo natus atque id ipsum. Consectetur veniam non nulla. Nihil a eum blanditiis sed ut hic atque neque. Occaecati aut officiis veniam ad temporibus illo. A deleniti ipsam impedit sunt et voluptatem.', 'Dolor nisi illum et quia. Explicabo placeat volupt', 'Veritatis sint voluptatem voluptas. Eaque harum as', 'Nam nisi odio placeat repudiandae quibusdam tenetu', NULL, NULL, 'slug-san-pham-1', '2004-09-23 22:49:30', '2015-02-16 13:34:55'),
(10, 'Est deserunt aut commodi adipisci at sit voluptate corrupti.', 371.00, 'fullwidth01.jpg', 'Dolore quia fugit ea est. Ut inventore ea iure qui delectus quaerat qui dolores. Consequatur laborum et vero. Inventore sunt aut unde.', 'Id ex vitae incidunt et sit id magnam. Veniam volu', 'Sunt cum soluta qui ea eum cum. Recusandae nihil r', 'Quas ab culpa quod pariatur tenetur quasi distinct', NULL, NULL, 'slug-san-pham-1', '2014-02-01 11:31:35', '2004-05-15 03:30:23');

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
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$42Jn4SuBnJE2KacatSLD3OAdL57YJ2J1kZ7ikimcxexMHLjlpis9m', '', NULL, 0, 1, NULL, '2005-06-20 11:36:32', '2014-07-05 19:07:01');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
