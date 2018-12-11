-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2018 a las 01:25:35
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `copei`
--
CREATE DATABASE IF NOT EXISTS `copei` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `copei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afiliados`
--

CREATE TABLE `afiliados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cedula` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parroquia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nacional', '1971-06-08 05:15:54', '1998-05-07 00:32:10'),
(2, 'Opinión', '1994-03-06 14:05:57', '1988-12-16 03:00:46'),
(3, 'Regiones', '1994-02-25 20:42:45', '1973-08-04 19:07:05'),
(4, 'Comunicados', '2015-03-16 22:56:10', '1999-02-09 12:51:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_10_231652_create_noticias_table', 1),
(4, '2018_08_10_234421_add_user_id_column_to_noticias', 1),
(5, '2018_08_10_235200_create_afiliados_table', 1),
(6, '2018_08_17_220755_create_groups_table', 1),
(7, '2018_08_17_221632_add_group_id_to_noticias_table', 1),
(8, '2018_08_28_215342_add_cedula_field_to_users_table', 1),
(9, '2018_08_28_215936_add_user_id_field_to_noticias_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuerpo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `importan` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `group_id`, `user_id`, `titulo`, `cuerpo`, `importan`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'Facere rem aut qui doloremque.', 'Et sint ut neque repellat excepturi aliquid. Et ipsa vel voluptatem cumque. Maiores natus fuga quisquam quam eos.', 0, '1999-03-15 14:05:38', '1992-10-09 22:40:50'),
(2, 1, 10, 'Provident natus at ipsa.', 'Necessitatibus quo aliquam sit provident beatae rerum. Autem illum quos et at magni iste. Doloribus consequatur vitae aut vel perspiciatis id est voluptatem. Dolor id ipsum ut est id.', 0, '2002-10-30 19:29:33', '1980-04-14 01:40:07'),
(3, 3, 9, 'Alias molestiae reprehenderit error qui.', 'Beatae eveniet iste ducimus dolorem eligendi. Tempora fugit est sunt quod. Nostrum rerum enim reprehenderit in alias voluptate ab. Ut voluptatum ipsa enim dignissimos.', 1, '1971-03-18 16:54:20', '1998-05-01 10:40:49'),
(4, 1, 1, 'Et est consequatur impedit quia maxime optio.', 'Fugiat dolorem voluptatem et aliquid. Qui ullam quis pariatur corporis voluptas quasi. Et maxime possimus neque laudantium non deleniti. Ad ut maiores architecto eos nihil.', 0, '2006-06-20 21:42:52', '1995-03-06 09:23:50'),
(5, 1, 7, 'Dolores deleniti veniam magnam in non.', 'Eaque cupiditate id libero soluta aut autem animi atque. Est architecto vel quaerat officia ut et quidem. Veniam illum minus illo esse illum aliquid. Eligendi ut omnis dolorum iure.', 1, '1981-11-18 12:48:26', '1986-02-24 13:05:39'),
(6, 2, 2, 'Provident quis magnam omnis maxime.', 'Illum suscipit suscipit magnam in et. Cupiditate animi facere libero quasi velit. Quae quibusdam saepe itaque. Praesentium dolorum totam voluptatem vero.', 0, '1987-02-21 11:02:03', '1980-10-14 18:58:44'),
(7, 2, 4, 'Ut non sit molestiae sed ea.', 'Libero ut ut minima velit. Dignissimos inventore aliquid est optio libero tempore.', 1, '1993-09-25 09:13:48', '2011-03-06 04:53:27'),
(8, 1, 5, 'Sed non excepturi laudantium maiores veniam dolores.', 'Inventore magnam beatae sed dolores vel et. Mollitia et ut aut molestiae dicta odio nihil. Qui dolore esse odio vero. Iste iure est earum natus ut qui.', 1, '1977-09-21 20:50:48', '2010-10-02 12:46:50'),
(9, 3, 9, 'Quam placeat veritatis maiores nam corrupti autem voluptas.', 'Rerum exercitationem dolorum voluptas natus non. Aut dolores et nihil est. Tempore vero architecto eos ipsam nobis est.', 1, '1973-05-30 16:08:19', '1995-03-16 01:25:17'),
(10, 3, 7, 'Et laboriosam quas consequatur excepturi.', 'Est nisi et quo. Aut rerum velit assumenda rerum dolor tenetur mollitia. Esse culpa ut numquam provident repudiandae quaerat animi.', 1, '2009-02-28 06:44:17', '2014-01-24 17:43:36'),
(11, 2, 10, 'Magni provident nesciunt commodi dignissimos.', 'Vitae vero consequatur hic similique qui consequatur natus. Totam modi quo rem vel maxime. Qui illo amet corrupti aut.', 1, '2008-05-28 23:46:29', '2017-01-07 14:23:26'),
(12, 1, 2, 'Dignissimos inventore nemo inventore qui dolore unde est.', 'Fugit quo soluta est eum minus et quibusdam officia. Reprehenderit possimus architecto et. Autem culpa harum libero maxime qui. In nobis quaerat omnis ex enim dolorem.', 0, '1979-08-12 12:09:12', '1991-12-28 05:56:32'),
(13, 3, 3, 'Quos vel expedita facilis maiores quis et eius.', 'Vero voluptatem sed sit dolor blanditiis ut quia quos. Tempore tenetur maxime nostrum accusantium. Cupiditate praesentium earum exercitationem labore reprehenderit dolore.', 0, '1982-01-10 18:10:09', '1986-04-20 19:12:02'),
(14, 2, 5, 'Rerum voluptatibus ex veritatis ea sapiente.', 'Officiis quasi voluptatem ea minima. Repellendus repellendus est porro repellendus corrupti molestias occaecati. Fugit qui quos nihil occaecati dignissimos quae.', 0, '1996-04-24 11:11:05', '2008-12-12 03:53:58'),
(15, 2, 5, 'Rerum similique veritatis aut quia ipsam tempora.', 'Possimus dolores debitis earum corrupti soluta fugiat. Dolorem harum ab sit aut.', 1, '2012-05-17 01:57:02', '1999-05-12 16:13:21'),
(16, 3, 5, 'Non voluptate autem eius qui sit.', 'Voluptatum aut saepe quos sint suscipit. Nisi velit sed quam minus eaque. Ipsam corporis qui velit expedita ut laboriosam quo. Deserunt nihil maiores maxime ex.', 0, '2014-04-01 19:10:22', '1978-03-07 15:29:27'),
(17, 2, 9, 'Et et quia quam quaerat.', 'Commodi quis non nobis aut. Tenetur voluptatem quia assumenda aliquam qui nihil consequuntur sit. Dicta recusandae omnis labore atque possimus illum. Aspernatur ea aliquid non architecto occaecati.', 0, '2002-10-22 10:31:08', '1982-07-22 05:24:53'),
(18, 2, 1, 'Non non repellat dolorem voluptates a.', 'Delectus et illo doloribus eum qui quo ipsa. A distinctio et quae. Saepe porro est et suscipit aliquid perspiciatis. Dolor laborum quo occaecati quae iure rerum magni culpa.', 1, '2000-10-08 08:50:32', '2015-03-10 15:27:58'),
(19, 2, 10, 'Asperiores harum in fuga distinctio illum.', 'Voluptates aperiam pariatur consectetur ipsa sunt. Nulla unde et impedit ea. Labore vitae et ea. Aut eum perferendis accusantium libero ea.', 1, '2005-02-09 09:55:43', '1976-06-05 21:36:07'),
(20, 3, 7, 'Incidunt qui excepturi mollitia eos eius.', 'Et eum voluptatem deserunt similique et. Iure aut voluptatem corrupti aut ex sunt beatae. Optio id unde commodi aut nisi consectetur vitae veniam.', 0, '1970-05-10 01:01:50', '2014-12-10 23:53:18'),
(21, 1, 7, 'Aperiam et ipsum ex enim magnam magni dolorem.', 'Cum asperiores ipsum excepturi a asperiores. Id et sit aperiam hic ipsa quaerat excepturi. Sit aliquid nam voluptatum ea. Est non omnis ipsum id ducimus placeat exercitationem placeat.', 1, '2007-02-24 03:26:31', '1992-03-13 02:47:32'),
(22, 4, 10, 'Voluptas officia qui sunt unde veritatis.', 'Enim nostrum corrupti quia qui facere velit. Itaque aut quo maxime labore et. Cum qui laboriosam qui sapiente.', 1, '2001-08-05 10:35:02', '1987-08-07 19:35:48'),
(23, 3, 2, 'Pariatur tempora illum assumenda excepturi.', 'Esse dignissimos doloremque dolorem sit illo quo commodi. Eos accusamus provident minus ut sed aut in eligendi. Illo minima aut quo ea necessitatibus esse. Et et sunt aut.', 1, '2015-03-27 10:16:51', '2004-01-22 23:24:00'),
(24, 1, 4, 'Magni et aspernatur deleniti laboriosam non corrupti.', 'In officia beatae necessitatibus. Iste non exercitationem dolores aut similique. Aut commodi in minima mollitia.', 0, '1970-10-19 11:52:21', '1999-04-26 05:31:09'),
(25, 3, 7, 'At non et et aspernatur et optio aut fugiat.', 'Non minima consequatur sequi quia et rem. Sint dolor repellat architecto perspiciatis. Amet adipisci cum alias. Adipisci officia et aliquam et sit saepe quo alias.', 1, '1980-11-18 06:11:33', '1972-10-28 18:21:54'),
(26, 1, 5, 'Voluptatem dicta nulla non nemo.', 'Ut ut voluptate explicabo distinctio perferendis aut distinctio. Quaerat qui temporibus porro non eius. Sed quisquam ab eos a.', 0, '1983-11-13 07:17:09', '1993-06-19 03:23:00'),
(27, 2, 3, 'Neque est ad ut voluptate delectus velit dolor.', 'Tenetur ut ab nemo. Accusamus quis exercitationem ut quia itaque. Non maiores dolore repellat aut dolores. Reprehenderit voluptas tenetur atque qui iure et.', 1, '1998-07-02 07:13:28', '1991-02-15 17:40:38'),
(28, 4, 4, 'Commodi voluptate nihil quo dolores vel accusamus velit facere.', 'Accusamus officia molestiae optio quas. Quibusdam molestiae architecto ipsam. Eaque ipsam sit aliquid sequi ut blanditiis id.', 0, '2017-01-22 05:28:32', '2001-09-09 02:57:16'),
(29, 1, 2, 'Tenetur harum voluptatem alias et ipsum.', 'Incidunt vel consequatur dignissimos sapiente vero ullam. Omnis voluptatem optio possimus fugiat ipsum. Et voluptas dolores aut rerum corrupti et.', 1, '2016-01-08 16:31:36', '1976-10-16 13:42:16'),
(30, 3, 4, 'Repellendus quaerat rerum corporis sed fuga quo labore.', 'Est aut et nesciunt eum cumque. Non consectetur facere odio numquam. Ullam veritatis aperiam explicabo praesentium consequuntur corrupti.', 0, '1981-10-16 01:34:57', '2000-01-20 15:44:50'),
(31, 2, 8, 'Totam alias deleniti maxime quia qui est a.', 'Minus nemo libero optio culpa. Molestias est aut quis accusamus in nihil facere. Ad animi quibusdam saepe sint modi. Rerum voluptatem soluta dolor ut quos.', 1, '2010-04-17 21:37:32', '1977-07-16 13:31:45'),
(32, 1, 3, 'Aut in sit id similique esse eius.', 'Ea saepe iure id in est. Ipsam dolores iste exercitationem et. Non provident veniam facilis. Adipisci aut voluptatibus sed omnis.', 0, '2003-07-12 06:27:14', '2014-08-20 08:40:37'),
(33, 1, 3, 'Eos deserunt aut voluptas fugiat nisi.', 'Harum eum debitis adipisci ad voluptatem fugit. Dolor nemo facere et. Magnam recusandae perferendis reiciendis nihil quae. Maiores qui cumque ratione consequuntur.', 1, '1999-07-26 17:41:01', '1990-09-25 21:55:22'),
(34, 4, 6, 'Dolorum ut animi corporis aperiam ut.', 'Sint reiciendis ipsam quaerat odio. Et dolor corporis eos similique. Odio fuga quibusdam sed libero et. Dolores quis molestiae odit optio ex.', 0, '1986-01-22 04:28:55', '1993-03-25 13:21:22'),
(35, 4, 9, 'Dolor non cupiditate eos quia possimus non.', 'Qui sunt vitae tenetur molestiae quia architecto beatae. Ut dolorem repudiandae enim perferendis. Corporis rerum reiciendis odit excepturi dolore.', 1, '1996-12-09 01:51:17', '1979-06-17 14:34:41'),
(36, 3, 9, 'Deserunt corrupti corporis odio aut voluptatum doloremque dolorum.', 'Cumque nam quam autem id harum. Minima velit veniam ducimus in facere possimus iusto. Et laboriosam cum fuga et cupiditate autem error. Eum architecto consequatur repellat pariatur illum est cum.', 0, '2008-03-22 17:03:37', '1992-04-28 04:34:36'),
(37, 2, 9, 'Maxime at sit eveniet sit.', 'Ut nesciunt est et nisi perferendis. Pariatur iure quae rerum placeat voluptas facilis dolorem quae. Numquam quia harum dolorum distinctio.', 1, '2008-12-01 15:38:02', '1977-07-13 21:37:28'),
(38, 2, 9, 'Est ab qui dolorem hic aliquam.', 'Accusamus dolores at maiores illo. Omnis quis iste et quas quis quo provident animi. Autem expedita quam ducimus quod dignissimos. Quia at facilis qui aut tempora.', 1, '1998-09-11 04:53:14', '2009-04-16 19:10:06'),
(39, 3, 1, 'Id nihil expedita nesciunt qui blanditiis assumenda.', 'Maiores modi distinctio nostrum et dignissimos similique nihil. Numquam vel esse velit quibusdam repellat magni alias blanditiis. Consectetur quod quia sunt non architecto molestias.', 1, '1972-11-29 10:20:20', '1995-12-27 20:19:42'),
(40, 3, 3, 'Est voluptate vel doloremque.', 'Qui vero nobis vel. Nam eaque deleniti reprehenderit dicta id voluptatem et. Rerum odit quisquam eos qui sit. Officia et provident tempore dolores.', 1, '1992-12-11 14:29:40', '1986-01-15 19:47:58'),
(41, 3, 7, 'Repellendus blanditiis non pariatur quibusdam nobis et adipisci.', 'Ut ipsam numquam fugiat ex atque id officiis. Est veritatis molestiae sed inventore sit veniam repellendus. Et dolorum fugiat dolores at et tempora voluptas. Rerum dicta a sunt omnis in.', 0, '2017-10-01 00:35:59', '1971-03-24 13:18:54'),
(42, 3, 8, 'Unde sequi vitae dolor repudiandae.', 'Voluptas quas voluptas nobis assumenda non. Corrupti libero ut nihil eius. Id eos illum et quis. Quo pariatur labore amet quam est dolor illum vel.', 0, '1998-10-29 20:31:02', '1992-02-27 01:55:03'),
(43, 2, 9, 'Inventore incidunt amet et exercitationem officiis accusamus.', 'Incidunt beatae qui ut fugiat. Aperiam iure deleniti vel excepturi maiores et. Eius id vitae deleniti dolorum corporis numquam et asperiores.', 1, '1989-12-08 01:25:40', '2012-10-21 13:00:30'),
(44, 1, 4, 'Rem debitis maiores magni laudantium autem.', 'Ullam excepturi qui autem sapiente iste. Laborum quam ut laudantium error. Eos est suscipit odit.', 0, '1980-07-05 22:22:22', '1972-08-05 13:30:32'),
(45, 3, 7, 'Dolorum saepe possimus natus dolores inventore et officiis.', 'Voluptate nostrum vel sapiente aut praesentium eveniet maxime. Sunt necessitatibus modi aut eaque. Velit nesciunt vel necessitatibus non facere expedita ut.', 1, '1978-10-08 18:37:17', '2013-11-05 14:33:10'),
(46, 1, 7, 'Est ducimus est temporibus.', 'Et porro consequuntur aut praesentium doloribus sit incidunt. Consectetur consequatur aut libero harum. Dolorem eius aliquam maxime vel sint omnis. Ut saepe sunt tempore qui est ullam.', 0, '1997-08-22 05:36:39', '2002-07-22 23:53:38'),
(47, 2, 5, 'Reprehenderit asperiores eum quia voluptates quaerat optio.', 'Velit veritatis optio possimus eveniet libero temporibus dolor. Et nisi rem enim sit. Doloribus sequi itaque sit dolore laborum.', 1, '2004-02-17 02:18:23', '1977-05-28 07:38:28'),
(48, 3, 9, 'Ea sint incidunt ea voluptas recusandae.', 'Qui ipsam blanditiis quis sunt. Dolorem dolore eligendi magni aperiam et. Laboriosam cum qui a rerum accusantium animi et. Libero vero fugiat quis iusto laborum ut qui.', 0, '1976-03-15 21:18:54', '2006-04-06 05:21:27'),
(49, 2, 7, 'Mollitia non repudiandae voluptatum non.', 'Pariatur eos sunt distinctio iste qui est cupiditate. Aut dolor in nihil rerum veniam sunt.', 0, '2001-09-06 20:55:24', '2009-03-19 17:35:57'),
(50, 1, 9, 'Et reprehenderit voluptas dolorem distinctio qui vitae.', 'Magni totam est consequatur qui. Quia rerum quia veniam totam modi nam voluptatum sed. Est sed qui est. Quis quia et quisquam voluptatem optio fuga voluptatem debitis.', 1, '2006-07-21 18:56:00', '2014-06-29 06:59:12'),
(51, 1, 11, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '2018-09-04 01:21:23', '2018-12-07 03:06:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cedula` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `cedula`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Vicente Gerhold DVM', '23637394', 'pfeffer.gene@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Rdqfx3uLAw', '2018-09-04 00:51:02', '2018-09-04 00:51:02'),
(2, 'Adelbert Davis V', '18286166', 'daisha.murray@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SHS4NT0swr', '2018-09-04 00:51:02', '2018-09-04 00:51:02'),
(3, 'Nakia Kunde', '20571214', 'fwuckert@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'x1x6ouTD1N', '2018-09-04 00:51:02', '2018-09-04 00:51:02'),
(4, 'Mekhi Mante', '8054395', 'krau@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9BMajMZkpA', '2018-09-04 00:51:02', '2018-09-04 00:51:02'),
(5, 'Demetris Koepp Sr.', '13201730', 'khalil.schowalter@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SOlnfUw9lj', '2018-09-04 00:51:03', '2018-09-04 00:51:03'),
(6, 'Fabian Zemlak', '10195823', 'laron95@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'HIjDHDlRhN', '2018-09-04 00:51:03', '2018-09-04 00:51:03'),
(7, 'Mariana Daniel', '19730126', 'okon.mallory@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FXtKZw2RHT', '2018-09-04 00:51:03', '2018-09-04 00:51:03'),
(8, 'Lelia Morissette I', '14101955', 'rhayes@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kWjRdX64sz', '2018-09-04 00:51:03', '2018-09-04 00:51:03'),
(9, 'Alfonzo Zboncak', '18412089', 'vcasper@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jJaxWJreCb', '2018-09-04 00:51:03', '2018-09-04 00:51:03'),
(10, 'Elwyn Hagenes I', '21801118', 'ocartwright@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OZTDWAwp7b', '2018-09-04 00:51:03', '2018-09-04 00:51:03'),
(11, 'deivy gutierrez', '95681276', 'dpaul_20@hotmail.com', '$2y$10$gCWgtvB.Vnknt5N7qL6g6uLqaonBXHP3FPwKooikSD.4GDEQSLaX.', 'wA1NIPRhbDpaKxAnnLtfHKSwI7dpHtwI6AQNvWJ68faLRzMfjqeqBIbA5lMd', '2018-09-04 01:17:10', '2018-09-04 01:17:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afiliados`
--
ALTER TABLE `afiliados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `afiliados_cedula_unique` (`cedula`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticias_group_id_foreign` (`group_id`),
  ADD KEY `noticias_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `afiliados`
--
ALTER TABLE `afiliados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `noticias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `notes`
--
CREATE DATABASE IF NOT EXISTS `notes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `notes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_02_010018_create_notes_table', 1),
(4, '2018_08_02_234504_add_id_to_notes_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `important` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'copei', 'noticias', '{\"sorted_col\":\"`noticias`.`group_id`  ASC\"}', '2018-09-03 22:35:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-12-07 00:18:40', '{\"lang\":\"es\",\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0,\"DefaultConnectionCollation\":\"utf8mb4_spanish_ci\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `proyecto1`
--
CREATE DATABASE IF NOT EXISTS `proyecto1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proyecto1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_30_124308_create_professions_table', 1),
(4, '2018_07_04_211201_add_profession_id_to_users', 1),
(5, '2018_07_14_160351_create_skills_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `professions`
--

CREATE TABLE `professions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `professions`
--

INSERT INTO `professions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Desarrollador Back-end', '2018-07-14 22:41:50', '2018-07-14 22:41:50'),
(2, 'Announcer', '2018-07-14 22:41:50', '2018-07-14 22:41:50'),
(3, 'Medical Technician', '2018-07-14 22:41:50', '2018-07-14 22:41:50'),
(4, 'Merchandise Displayer OR Window Trimmer', '2018-07-14 22:41:50', '2018-07-14 22:41:50'),
(5, 'Textile Worker', '2018-07-14 22:41:51', '2018-07-14 22:41:51'),
(6, 'Electrician', '2018-07-14 22:41:51', '2018-07-14 22:41:51'),
(7, 'Eligibility Interviewer', '2018-07-14 22:41:51', '2018-07-14 22:41:51'),
(8, 'Bicycle Repairer', '2018-07-14 22:41:51', '2018-07-14 22:41:51'),
(9, 'Upholsterer', '2018-07-14 22:41:51', '2018-07-14 22:41:51'),
(10, 'Gas Distribution Plant Operator', '2018-07-14 22:41:51', '2018-07-14 22:41:51'),
(11, 'Director Of Business Development', '2018-07-14 22:41:51', '2018-07-14 22:41:51'),
(12, 'Anthropologist OR Archeologist', '2018-07-14 22:41:52', '2018-07-14 22:41:52'),
(13, 'Landscaping', '2018-07-14 22:41:52', '2018-07-14 22:41:52'),
(14, 'Underground Mining', '2018-07-14 22:41:52', '2018-07-14 22:41:52'),
(15, 'Lathe Operator', '2018-07-14 22:41:52', '2018-07-14 22:41:52'),
(16, 'Pesticide Sprayer', '2018-07-14 22:41:52', '2018-07-14 22:41:52'),
(17, 'Sheet Metal Worker', '2018-07-14 22:41:52', '2018-07-14 22:41:52'),
(18, 'Decorator', '2018-07-14 22:41:52', '2018-07-14 22:41:52'),
(19, 'Real Estate Association Manager', '2018-07-14 22:41:53', '2018-07-14 22:41:53'),
(20, 'Claims Adjuster', '2018-07-14 22:41:53', '2018-07-14 22:41:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profession_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`, `profession_id`) VALUES
(1, 'Deivy', 'dpaul_20@hotmail.com', '$2y$10$ejD3Hi3tQZwQtx06i126JeYassyo6wHMAm3GlkuhLxryvoUhvS/bq', 1, NULL, '2018-07-14 22:41:53', '2018-07-14 22:41:53', 1),
(2, 'Juanito', 'dpaul@hotmail.com', '$2y$10$nnuHg23GYs1sA2l2IuFndex9x71YcTxLWKwiEKL.rumf8Ugi2Cfb2', 0, NULL, '2018-07-14 22:41:53', '2018-07-14 22:41:53', 1),
(3, 'Prof. Taurean Fahey Jr.', 'lbergnaum@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'npZUKqY8f6', '2018-07-14 22:41:54', '2018-07-14 22:41:54', 1),
(4, 'Quinn Bahringer PhD', 'olebsack@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'EacsZ1maIn', '2018-07-14 22:41:54', '2018-07-14 22:41:54', NULL),
(5, 'Bella Ratke', 'damion66@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'owJa1ttfKX', '2018-07-14 22:41:54', '2018-07-14 22:41:54', NULL),
(6, 'Terrence Davis', 'ziemann.sophia@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'UHhfdZKtK0', '2018-07-14 22:41:54', '2018-07-14 22:41:54', NULL),
(7, 'Miguel Gleason', 'nathaniel02@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'LHK7VSpcUv', '2018-07-14 22:41:54', '2018-07-14 22:41:54', NULL),
(8, 'Prof. Wava Yundt', 'grimes.clemmie@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'RgFRTtgpIW', '2018-07-14 22:41:54', '2018-07-14 22:41:54', NULL),
(9, 'Marjolaine Heaney I', 'candice.hamill@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'fPhRFJvsoW', '2018-07-14 22:41:54', '2018-07-14 22:41:54', NULL),
(10, 'Rhoda Smitham III', 'mollie.stehr@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'KDUlrqkyDH', '2018-07-14 22:41:55', '2018-07-14 22:41:55', NULL),
(11, 'Joelle Gusikowski', 'kurtis83@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'O2CddJEJ0n', '2018-07-14 22:41:55', '2018-07-14 22:41:55', NULL),
(12, 'Mr. Kristian Beier', 'lcorkery@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'oihmvqDgId', '2018-07-14 22:41:55', '2018-07-14 22:41:55', NULL),
(13, 'Jannie Morissette', 'dorthy.nitzsche@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'DnGgOHWedF', '2018-07-14 22:41:55', '2018-07-14 22:41:55', NULL),
(14, 'Wilson Hand', 'raynor.gustave@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'Vj7VoxOcoM', '2018-07-14 22:41:55', '2018-07-14 22:41:55', NULL),
(15, 'Gerardo D\'Amore', 'hgreen@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'c04Xa2iXML', '2018-07-14 22:41:55', '2018-07-14 22:41:55', NULL),
(16, 'Aniyah Beatty V', 'lexus.mills@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'lqQIom4Qtt', '2018-07-14 22:41:55', '2018-07-14 22:41:55', NULL),
(17, 'Edmond Stehr V', 'pfeffer.ramiro@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'FTslWFeRzR', '2018-07-14 22:41:55', '2018-07-14 22:41:55', NULL),
(18, 'Valentina Mohr', 'zula75@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, '2Q3k2hxdRl', '2018-07-14 22:41:56', '2018-07-14 22:41:56', NULL),
(19, 'Reyes Stracke', 'lind.eliezer@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, '1lSvTPCDEd', '2018-07-14 22:41:56', '2018-07-14 22:41:56', NULL),
(20, 'Mrs. Edwina Watsica', 'torphy.zackery@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'SANOVeN0Jh', '2018-07-14 22:41:56', '2018-07-14 22:41:56', NULL),
(21, 'Sydney Metz IV', 'jayda.bogisich@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'VN7xKp8dLF', '2018-07-14 22:41:56', '2018-07-14 22:41:56', NULL),
(22, 'Prof. Clark McGlynn', 'shania.blick@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'AmsSwMD55J', '2018-07-14 22:41:56', '2018-07-14 22:41:56', NULL),
(23, 'Mr. Jalon McKenzie', 'kulas.chandler@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, '0khquISp33', '2018-07-14 22:41:56', '2018-07-14 22:41:56', NULL),
(24, 'Dr. Mathilde Cruickshank', 'hellen.wyman@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, '2GzDxcjaBe', '2018-07-14 22:41:56', '2018-07-14 22:41:56', NULL),
(25, 'Dr. Marques Ryan', 'hbruen@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, '1dNaKutTat', '2018-07-14 22:41:57', '2018-07-14 22:41:57', NULL),
(26, 'Naomi Becker', 'wiegand.eugene@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'gNJKtZcCX3', '2018-07-14 22:41:57', '2018-07-14 22:41:57', NULL),
(27, 'Maverick Kovacek', 'austin.veum@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'zY4wnP9EcP', '2018-07-14 22:41:57', '2018-07-14 22:41:57', NULL),
(28, 'Meta Kuhn', 'sgulgowski@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'xX4j5hIw1V', '2018-07-14 22:41:57', '2018-07-14 22:41:57', NULL),
(29, 'Fern Stanton', 'mariam32@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, '5OUSu63aaJ', '2018-07-14 22:41:57', '2018-07-14 22:41:57', NULL),
(30, 'Shana Torphy', 'katharina.lubowitz@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'xrbvbRx7uK', '2018-07-14 22:41:57', '2018-07-14 22:41:57', NULL),
(31, 'Jana Will', 'marielle47@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'Pp99WaZbOh', '2018-07-14 22:41:57', '2018-07-14 22:41:57', NULL),
(32, 'Marquise Sauer', 'icruickshank@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'Hy9lIspegR', '2018-07-14 22:41:57', '2018-07-14 22:41:57', NULL),
(33, 'Mr. Tanner Cronin I', 'stanford47@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'M25qwY9L41', '2018-07-14 22:41:58', '2018-07-14 22:41:58', NULL),
(34, 'Glenda Rodriguez Jr.', 'tatyana28@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'GJIEwzq4Mh', '2018-07-14 22:41:58', '2018-07-14 22:41:58', NULL),
(35, 'Dr. Kyle Frami MD', 'ozboncak@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, '9bESerjMbt', '2018-07-14 22:41:58', '2018-07-14 22:41:58', NULL),
(36, 'Rosalia Brekke III', 'vwisoky@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'wcxx8AXYbQ', '2018-07-14 22:41:58', '2018-07-14 22:41:58', NULL),
(37, 'Nathen Effertz', 'nrempel@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'sIeXChggVt', '2018-07-14 22:41:58', '2018-07-14 22:41:58', NULL),
(38, 'Mr. Wilburn Simonis Jr.', 'brigitte95@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'ahEg6C6g3S', '2018-07-14 22:41:58', '2018-07-14 22:41:58', NULL),
(39, 'Harley Metz PhD', 'pcormier@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'wmUJ8NieK5', '2018-07-14 22:41:58', '2018-07-14 22:41:58', NULL),
(40, 'Ms. Myrtie Gottlieb I', 'wyatt95@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'IEod5tMZbA', '2018-07-14 22:41:58', '2018-07-14 22:41:58', NULL),
(41, 'Rodolfo Hyatt Sr.', 'sanford.marty@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'vHNW72jEPP', '2018-07-14 22:41:59', '2018-07-14 22:41:59', NULL),
(42, 'Erich Emmerich', 'lesly02@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'LQNwiy1W0a', '2018-07-14 22:41:59', '2018-07-14 22:41:59', NULL),
(43, 'Brandon Littel', 'arch.huel@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'bg1xMqhXWK', '2018-07-14 22:41:59', '2018-07-14 22:41:59', NULL),
(44, 'Rickey Bosco', 'hflatley@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, '9kOx8eIQsr', '2018-07-14 22:41:59', '2018-07-14 22:41:59', NULL),
(45, 'Myriam D\'Amore', 'rowe.minerva@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'a3GIo8E2xX', '2018-07-14 22:41:59', '2018-07-14 22:41:59', NULL),
(46, 'Prof. Freddie Kreiger MD', 'moore.logan@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, '5wipVnvzZe', '2018-07-14 22:41:59', '2018-07-14 22:41:59', NULL),
(47, 'Julio Donnelly', 'zieme.zoe@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'IF1pg46L4W', '2018-07-14 22:42:00', '2018-07-14 22:42:00', NULL),
(48, 'Gregg Ritchie', 'lavada.kessler@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'xtmvN1M7b2', '2018-07-14 22:42:00', '2018-07-14 22:42:00', NULL),
(49, 'Marianna Grimes', 'kuhlman.mark@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, '1g8KVU7bO4', '2018-07-14 22:42:00', '2018-07-14 22:42:00', NULL),
(50, 'Precious Hettinger', 'emile62@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'H2Qqqxtz6J', '2018-07-14 22:42:00', '2018-07-14 22:42:00', NULL),
(51, 'Fern Wyman', 'austyn.barton@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'gSM23W8gzt', '2018-07-14 22:42:00', '2018-07-14 22:42:00', NULL),
(52, 'Ignacio Feeney', 'wmaggio@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'xVkMsuAYHr', '2018-07-14 22:42:00', '2018-07-14 22:42:00', NULL),
(53, 'Prof. Brent White Jr.', 'adrianna26@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'qBnHYd26xx', '2018-07-14 22:42:00', '2018-07-14 22:42:00', NULL),
(54, 'lulu', 'lulu@gmail.com', '$2y$10$7FurbQAt2RjvVc/kkByrreovFsBvqu2os4ubrt4mQQrfH3L8CDF2O', 0, NULL, '2018-08-02 00:55:31', '2018-08-02 00:55:31', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `professions_title_unique` (`title`);

--
-- Indices de la tabla `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_profession_id_foreign` (`profession_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_profession_id_foreign` FOREIGN KEY (`profession_id`) REFERENCES `professions` (`id`);
--
-- Base de datos: `proyecto1_test`
--
CREATE DATABASE IF NOT EXISTS `proyecto1_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proyecto1_test`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_30_124308_create_professions_table', 1),
(4, '2018_07_04_211201_add_profession_id_to_users', 1),
(5, '2018_07_14_160351_create_skills_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `professions`
--

CREATE TABLE `professions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profession_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `professions_title_unique` (`title`);

--
-- Indices de la tabla `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_profession_id_foreign` (`profession_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_profession_id_foreign` FOREIGN KEY (`profession_id`) REFERENCES `professions` (`id`);
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
