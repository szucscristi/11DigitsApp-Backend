-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for mydatabase
CREATE DATABASE IF NOT EXISTS `mydatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydatabase`;

-- Dumping structure for table mydatabase.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.blogs: ~0 rows (approximately)

-- Dumping structure for table mydatabase.categorii
CREATE TABLE IF NOT EXISTS `categorii` (
  `id` bigint unsigned NOT NULL,
  `denumire` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mydatabase.categorii: ~4 rows (approximately)
INSERT INTO `categorii` (`id`, `denumire`) VALUES
	(1, 'Tricouri'),
	(2, 'Pantaloni'),
	(3, 'Camasi'),
	(4, 'Hanorace'),
	(5, 'Jachete & Paltoane');

-- Dumping structure for table mydatabase.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table mydatabase.forms
CREATE TABLE IF NOT EXISTS `forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Nume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Prenume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Telefon` varchar(50) DEFAULT NULL,
  `Adresa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mydatabase.forms: ~4 rows (approximately)
INSERT INTO `forms` (`id`, `Nume`, `Prenume`, `Email`, `Telefon`, `Adresa`, `created_at`, `updated_at`) VALUES
	(1, 'test1', 'test2', 'cristian.stefan.szucs@gmail.com', '0756512443', 'aaww', '2023-07-18 05:17:12', '2023-07-18 05:17:12'),
	(2, 'test1', 'test2', 'cristian.stefan.szucs@gmail.com', '0756512443', 'aaww', '2023-07-18 05:17:32', '2023-07-18 05:17:32'),
	(3, 'dwdw', 'dwdwdw', 'cristian.stefan.szucs@gmail.com', '0756512443', 'arare', '2023-07-18 05:25:01', '2023-07-18 05:25:01'),
	(4, 'testare', 'testare', 'cristian.stefan.szucs@gmail.com', '0756512443', 'sstrr', '2023-07-18 05:28:57', '2023-07-18 05:28:57'),
	(5, 'testtt', 'tettt', 'cristian.stefan.szucs@gmail.com', '0756512443', 'asassa', '2023-07-20 14:43:28', '2023-07-20 14:43:28');

-- Dumping structure for table mydatabase.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.migrations: ~10 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_07_17_095621_create_blogs_table', 1),
	(6, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
	(7, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
	(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
	(9, '2016_06_01_000004_create_oauth_clients_table', 2),
	(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- Dumping structure for table mydatabase.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.oauth_access_tokens: ~9 rows (approximately)
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('00d8b128e19e3d3cbde1abc7f9120daaf4f1331301be1f3024df74829bc37cbbb0c0a37003517166', 3, 1, 'App', '[]', 0, '2023-07-20 06:55:26', '2023-07-20 06:55:26', '2024-07-20 09:55:26'),
	('0180b35f60d7995de63506a8203ec6b13e3b4e3518ffeafce1c871f4a49e02422b8ce6eb0ae38178', 3, 1, 'App', '[]', 0, '2023-07-19 10:17:42', '2023-07-19 10:17:42', '2024-07-19 13:17:42'),
	('018365ceaa755c313f5660d102f70ac6546e58a0adf2c7c3e693a480b4b1f8487163e3a825d9236c', 3, 1, 'App', '[]', 0, '2023-07-20 06:49:04', '2023-07-20 06:49:04', '2024-07-20 09:49:04'),
	('11db8ca1216079ad49f27862a60505369d2e2c6f42c5792a85846bbaace87394679fbb853efba906', 3, 1, 'App', '[]', 0, '2023-07-20 05:58:28', '2023-07-20 05:58:28', '2024-07-20 08:58:28'),
	('1dfb0dff0f8825beae5395261243e1c59dacbd11a1c78a4a022d94ff71de209289977029867ad04b', 3, 1, 'App', '[]', 0, '2023-07-20 06:02:28', '2023-07-20 06:02:28', '2024-07-20 09:02:28'),
	('30852a7b3192972ba402875af3e97a8c5605299cff58771ba2e90425e7e60cbb9c46ae3373e54404', 3, 1, 'App', '[]', 0, '2023-07-20 06:16:47', '2023-07-20 06:16:47', '2024-07-20 09:16:47'),
	('31b9c47a8f1c2ecba96094480fbe289bf54605fcd3bcce8509b64619963b007713fc54ac99f49040', 3, 1, 'App', '[]', 0, '2023-07-20 14:42:57', '2023-07-20 14:42:57', '2024-07-20 17:42:57'),
	('3229f742b96c315c83e731ec5321d5c04085c1fe4daa77d3148f2a60d9bd222500af7ac46aea1cbd', 3, 1, 'App', '[]', 0, '2023-07-20 05:49:31', '2023-07-20 05:49:31', '2024-07-20 08:49:31'),
	('33b39ef41bdc87717a60d7ef6d3a998ee4b3a7731c4738506c695cb32155d2347494770348d93053', 3, 1, 'App', '[]', 0, '2023-07-20 08:20:07', '2023-07-20 08:20:07', '2024-07-20 11:20:07'),
	('3eb3c50c0df360bb66b6056f4d497c4a2aaed423b8ad287205eeba725eb2c5618a4934f89922eb60', 2, 1, 'MyApp', '[]', 0, '2023-07-18 06:17:53', '2023-07-18 06:17:53', '2024-07-18 09:17:53'),
	('3edf37bcdf4ac025c3e10de873701550c67e4abbcaef959157ecb9dbebc187057e4860daa68c3c94', 3, 1, 'App', '[]', 0, '2023-07-19 09:50:28', '2023-07-19 09:50:28', '2024-07-19 12:50:28'),
	('40edf8c8718cce5d70b269392fc646b1a2418a77dff47e1609aace8127fd0cde68cd69e584d28e7a', 3, 1, 'App', '[]', 0, '2023-07-19 10:10:21', '2023-07-19 10:10:21', '2024-07-19 13:10:21'),
	('470089ea1be224d0307d2a730acdaa4d4921160c36fc0c0e2b6670cd0e83e7bd69838fdf6e98e479', 3, 1, 'App', '[]', 0, '2023-07-20 08:10:03', '2023-07-20 08:10:03', '2024-07-20 11:10:03'),
	('52a20704bd3a55ef92073f8f67f4b736ac940dc31a02fd8f23010a6d70f86e55b0dbe2d7a4b068bc', 3, 1, 'App', '[]', 0, '2023-07-20 07:18:17', '2023-07-20 07:18:17', '2024-07-20 10:18:17'),
	('54a1f743538dd7ee4eaf51c369246cd4cc1ac2ff30ca61e64c743ca31de476b24aeaf28d38f97ba2', 3, 1, 'App', '[]', 0, '2023-07-20 06:11:58', '2023-07-20 06:11:58', '2024-07-20 09:11:58'),
	('578f51d6f920e82c4c28a8a58db5a85d3e31e49f3fa7c8e1441e3bd2b683e518e4db2f38324c1133', 3, 1, 'App', '[]', 0, '2023-07-20 05:17:41', '2023-07-20 05:17:42', '2024-07-20 08:17:41'),
	('6374283f5be3c8f3f9ad8b6fd3a291a0506dcc19202682a223c192e6725ab959e4294f9b1755901a', 3, 1, 'App', '[]', 0, '2023-07-20 06:03:11', '2023-07-20 06:03:11', '2024-07-20 09:03:11'),
	('6dcd86adc6802b007a734f42dce083cc2300051129244103cef9b299e68f35fd43f06d2c3b16249d', 3, 1, 'App', '[]', 0, '2023-07-20 08:21:37', '2023-07-20 08:21:37', '2024-07-20 11:21:37'),
	('70f8a736f763a41bb83332ee1e848bf2739b7e5ba455f3ea6388b3c1997b72a7e59e39360eb37f0c', 1, 1, 'MyApp', '[]', 0, '2023-07-17 09:40:30', '2023-07-17 09:40:30', '2024-07-17 12:40:30'),
	('8115521b7b9a10410083bfcff9d36c64d19578a31086602821d4fde1274d41d6cced240a793a2404', 3, 1, 'App', '[]', 0, '2023-07-20 07:16:03', '2023-07-20 07:16:03', '2024-07-20 10:16:03'),
	('8dea1309bfc3734a0a7d3954de8e052e862cc966a580d17d204d0e65d6d7f54a72d37248fc50a55a', 3, 1, 'App', '[]', 0, '2023-07-20 06:09:41', '2023-07-20 06:09:41', '2024-07-20 09:09:41'),
	('a725b36aed341eec524c04aa72abf24a074eee82dd1da3e43c00e3341e65f6ab21db90dc644c00c9', 3, 1, 'App', '[]', 0, '2023-07-20 09:57:58', '2023-07-20 09:57:58', '2024-07-20 12:57:58'),
	('a9b9fba836e628327632bce3c566f8ab9e90fdeee2ee21055b8d295bd484051f1a26bfeff22c61e6', 3, 1, 'App', '[]', 0, '2023-07-19 09:50:10', '2023-07-19 09:50:10', '2024-07-19 12:50:10'),
	('ac93d98d10b49e7f372edee8b72a34b01fdd4031b6821e73668611b3a1e2dd64cd33c8c8b648f386', 3, 1, 'App', '[]', 0, '2023-07-19 10:15:42', '2023-07-19 10:15:42', '2024-07-19 13:15:42'),
	('aef8f5c5b2aea15499a1526464079fd2383d669b92da2db9940242fd8a632850d0c688d99156e177', 3, 1, 'App', '[]', 0, '2023-07-19 10:05:07', '2023-07-19 10:05:07', '2024-07-19 13:05:07'),
	('b4a06f8c7fb3576168d14ff294341ee668a1dde2ab4633c86b3c171f3d60e2fc9bcde763f57c5830', 3, 1, 'App', '[]', 0, '2023-07-20 05:36:37', '2023-07-20 05:36:37', '2024-07-20 08:36:37'),
	('bfc65cb88ddeab7cd9a4fe354fe4019805992963ce2f2f2c0662732e44cb286e5b82fda34573bc41', 3, 1, 'App', '[]', 0, '2023-07-19 10:02:51', '2023-07-19 10:02:51', '2024-07-19 13:02:51'),
	('d0799daf7f17053867d658ef7ae97b4cd26c379d718e021e60866ad4e6e7b64ff3ec75c79d245f6f', 3, 1, 'App', '[]', 0, '2023-07-20 06:13:31', '2023-07-20 06:13:31', '2024-07-20 09:13:31'),
	('db370447d4e6523fe66615a25579e545e2d61531243a67dc2e85f5106fb049f99fc3f7eb23e9870c', 3, 1, 'App', '[]', 0, '2023-07-20 06:16:22', '2023-07-20 06:16:22', '2024-07-20 09:16:22'),
	('e3af5db9595f45341c63dfd7f68c5f5c89f9449fc0835a5d53b972a064ddc33acd1aa3cf2bff8163', 3, 1, 'App', '[]', 0, '2023-07-20 06:54:14', '2023-07-20 06:54:14', '2024-07-20 09:54:14'),
	('ed82b574c70c04a1f948dc1755ee5858c694e373f0373101a7292f8c99e960fb61755816d67f1013', 3, 1, 'App', '[]', 0, '2023-07-20 06:47:17', '2023-07-20 06:47:17', '2024-07-20 09:47:17'),
	('f13848bf4a079f14eac0890cba08282935d5b8bb1299ba78a2abc6e9be2a750ef24d30fe9c63b7c8', 3, 1, 'App', '[]', 0, '2023-07-21 03:50:00', '2023-07-21 03:50:00', '2024-07-21 06:50:00'),
	('f3774be7fcc326cda86ba3cce32f21565cbb75c09449a8c55f5ff9f3d5334684f7b3a895af1493f9', 3, 1, 'App', '[]', 0, '2023-07-20 06:49:44', '2023-07-20 06:49:44', '2024-07-20 09:49:44'),
	('fec5ee7a30b405da9cf1df53fa28a108bd50d0c343c3498d10324f7d98d6b76e77e598c1da7fbfc2', 1, 1, 'MyApp', '[]', 0, '2023-07-17 09:39:25', '2023-07-17 09:39:25', '2024-07-17 12:39:25');

-- Dumping structure for table mydatabase.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.oauth_auth_codes: ~0 rows (approximately)

-- Dumping structure for table mydatabase.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.oauth_clients: ~0 rows (approximately)
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'rSLYZOkhzysztvgdfaKlIAaIV415aoXuRkSOXsA9', NULL, 'http://localhost', 1, 0, 0, '2023-07-17 07:47:35', '2023-07-17 07:47:35'),
	(2, NULL, 'Laravel Password Grant Client', 'mmW5L6MC5rdwlo7vIMLeRhW1H7POvEAdwLrkMpwf', 'users', 'http://localhost', 0, 1, 0, '2023-07-17 07:47:35', '2023-07-17 07:47:35');

-- Dumping structure for table mydatabase.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.oauth_personal_access_clients: ~0 rows (approximately)
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2023-07-17 07:47:35', '2023-07-17 07:47:35');

-- Dumping structure for table mydatabase.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.oauth_refresh_tokens: ~0 rows (approximately)

-- Dumping structure for table mydatabase.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table mydatabase.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table mydatabase.produse
CREATE TABLE IF NOT EXISTS `produse` (
  `id` bigint unsigned NOT NULL,
  `denumire` varchar(50) DEFAULT NULL,
  `descriere` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pret` int DEFAULT NULL,
  `id_categorie` int DEFAULT NULL,
  `alegere` varchar(50) DEFAULT NULL,
  `imagine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table mydatabase.produse: ~21 rows (approximately)
INSERT INTO `produse` (`id`, `denumire`, `descriere`, `pret`, `id_categorie`, `alegere`, `imagine`) VALUES
	(0, 'Jacheta sport Relaxed Fit', 'Mărime: L\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială lejeră\r\nGuler: Guler ridicat\r\nStil: Smoching\r\nStil mânecă: Mâneci raglan\r\nDescriere: Albastru-închis/albastru, În culori bloc', 70, 5, 'Barbati', 'JachetaSportRelaxedFitBarbati.jpg'),
	(1, 'Tricou Relaxed Fit', 'Mărime: L\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci scurte\r\nCroială: Croială lejeră\r\nRăscroială: Decolteu rotund\r\nDescriere: Galben, Uni\r\nConcept: BASICS', 48, 1, 'Femei', 'TricouRelaxedFitFemei.jpg'),
	(2, 'Tricou de bumbac', 'Lungime: Lungime normală\r\nLungime mânecă: Cu mâneci scurte\r\nRăscroială: Decolteu rotund\r\nDescriere: Negru, Uni\r\nConcept: BASICS', 20, 1, 'Copii', 'TricouDeBumbacCopii.jpg'),
	(3, 'Tricou Long Fit', 'Mărime: M\r\nLungime: Lungă\r\nLungime mânecă: Cu mâneci scurte\r\nRăscroială: Decolteu rotund\r\nDescriere: Alb, Uni\r\nConcept: BASICS, DIVIDED', 35, 1, 'Barbati', 'TricouLongFitBarbati.jpg'),
	(4, 'Tricou cu imprimeu', 'Lungime: Lungime normală\r\nLungime mânecă: Cu mâneci scurte\r\nCroială: Croială largă\r\nRăscroială: Decolteu rotund\r\nDescriere: Bej-deschis/mov/verde, Fructe de pădure\r\nConcept: EXCLUSIV PENTRU BEBELUȘI\r\nBine de știut: Foarte moale', 38, 1, 'Bebelusi', 'TricouCuImprimeuBebelusi.jpg'),
	(5, 'Pantaloni Regular Fit din amestec de in', 'Mărime: Modelul are 185cm/6\'1" și poartă mărimea M\r\nMărime: Interiorul piciorului: Lungime: 76.0 cm (Mărimea L)\r\nLungime: Lungă\r\nÎnălțime talie: Cu talie normală\r\nCroială: Croială normală\r\nDescriere: Crem, Uni\r\nConcept: H&M MAN', 130, 2, 'Barbati', 'PantaloniRegularFitDinAmestecDeInBarbati.jpg'),
	(6, 'Pantaloni de costum Skinny Fit', 'Mărime: Modelul are 188cm/6\'2" și poartă mărimea 50\r\nLungime: Lungă\r\nÎnălțime talie: Cu talie normală\r\nCroială: Croială foarte strânsă\r\nStil: Pantaloni de costum\r\nDescriere: Uni\r\nConcept: H&M MAN', 120, 2, 'Barbati', 'PantaloniDeCostumSkinnyFitBarbati.jpg'),
	(7, 'Jacheta de baschet din DryMove', 'Lungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială largă\r\nGuler: Guler ridicat\r\nStil: Jachetă de baseball\r\nFuncţii: Înlătură umezeala\r\nDescriere: Albastru/alb, Uni\r\nConcept: H&M Move', 109, 5, 'Copii', 'JachetaDeBaschetDinDryMoveCopii.jpg'),
	(8, 'Hanorac Oversized Fit', 'Mărime: Modelul are 184cm/6\'0" și poartă mărimea M\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Supradimensionat\r\nStil: Bluză cu glugă\r\nDescriere: Negru/portocaliu, Venice', 50, 4, 'Barbati', 'HanoracOversizedFitBarbati.jpg'),
	(9, 'Hanorac cu imprimeu Relaxed Fit', 'Marime: L\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială lejeră\r\nStil: Bluză cu glugă\r\nDescriere: Gri-închis/alb/negru', 129, 4, 'Copii', 'HanoracCuImprimeuRelaxedFitCopii.jpg'),
	(10, 'Camasa din amestec de in alba', 'Mărime: M\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială normală\r\nGuler: Guler răsfrânt\r\nDescriere: Alb, Uni', 92, 3, 'Femei', 'CamasaDinAmestecDeInFemei.jpg'),
	(11, 'Camasa din amestec de in', 'Marime: S\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială largă\r\nGuler: Guler răsfrânt\r\nDescriere: Negru, Uni', 89, 3, 'Copii', 'CamasaDinAmestecDeInCopii.jpg'),
	(12, 'Tricou Relaxed Fit', 'Mărime: M\r\nLungime: Lungă\r\nLungime mânecă: Cu mâneci lungi\r\nRăscroială: Decolteu tip V\r\nDescriere: Negru, Uni\r\nConcept: BASICS', 25, 1, 'Barbati', 'TricouRelaxedFitBarbati.jpg'),
	(13, 'Camasa din amestec de in', 'Mărime: L\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci scurte\r\nCroială: Croială normală\r\nGuler: Cămașă cu guler deschis\r\nDescriere: Alb/negru, Cu dungi\r\nConcept: H&M MAN', 110, 3, 'Barbati', 'CamasaRegularFitDinAmestecDeInBarbati.jpg'),
	(14, 'Jacheta supradimensionata din denim', 'Mărime: M\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Supradimensionat\r\nGuler: Guler răsfrânt\r\nStil: Jachetă în stil camionagiu\r\nDescriere: Albastru-denim deschis, Uni\r\nConcept: DIVIDED', 200, 5, 'Femei', 'JachetaSupradimensionataDinDenim.jpg'),
	(15, 'Pantaloni largi de twill', 'Mărime: 38\r\nLungime: Lungă\r\nÎnălțime talie: Cu talie înaltă\r\nCroială: Croială strânsă\r\nStil: Drept pe picioare, Largi\r\nDescriere: Negru, Uni', 85, 2, 'Femei', 'PantaloniLargiDeTwillFemei.jpg'),
	(16, 'Hanorac cu fermuar', 'Mărime: S\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială normală\r\nStil: Jachetă cu glugă\r\nDescriere: Albastru-închis, Uni\r\nConcept: BASICS, EVERYDAY FASHION', 90, 4, 'Femei', 'HanoracCuFermuarFemei.jpg'),
	(17, 'Loose Fit Jeans', 'Marime: M\r\nLungime: Lungă\r\nÎnălțime talie: Cu talie normală\r\nCroială: Croială largă\r\nStil: Drept pe picioare\r\nDescriere: Albastru-denim deschis, Uni', 110, 2, 'Copii', 'LooseFitJeansCopii.jpg'),
	(18, 'Pantaloni, 3 perechi', 'Marime: 50 (0-1M)\r\nBucăți/Perechi: 3\r\nLungime: Lungă\r\nÎnălțime talie: Cu talie înaltă\r\nDescriere: Uni', 60, 2, 'Bebelusi', 'PantaloniTreiPerechiBebelusi.jpg'),
	(19, 'Camasa de bumbac', 'Marime: 74 (6-9M)\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială normală\r\nGuler: Guler răsfrânt\r\nDescriere: Alb, Uni', 35, 3, 'Bebelusi', 'CamasaDeBumbacBebelusi.jpg'),
	(20, 'Hanorac cu fermuar', 'Marime: 56(1-2M)\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nCroială: Croială normală\r\nStil: Jachetă cu glugă\r\nDescriere: Bej/alb, Cu dungi\r\nConcept: BASICS', 55, 4, 'Bebelusi', 'HanoracCuFermuarBebelusi.jpg'),
	(21, 'Jacheta matlasata', 'Marime: 50(0-1M)\r\nLungime: Lungime normală\r\nLungime mânecă: Cu mâneci lungi\r\nRăscroială: Decolteu rotund\r\nDescriere: Gri-deschis/alb/galben-șofran, Cu motive, Umbrele\r\nConcept: EXCLUSIV PENTRU BEBELUȘI', 100, 5, 'Bebelusi', 'JachetaMatlasataBebelusi.jpg');

-- Dumping structure for table mydatabase.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mydatabase.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(3, 'Szucs Cristian', 'cristian.stefan.szucs@gmail.com', NULL, '$2y$10$Txr/ztI5qvda0kVJN1hssOI5NIjpsmwPNEornqNo.Yhq9ysU6L6A6', NULL, '2023-07-18 06:40:39', '2023-07-18 06:40:39');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
