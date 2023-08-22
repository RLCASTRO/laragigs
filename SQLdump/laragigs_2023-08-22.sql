# ************************************************************
# Sequel Ace SQL dump
# Version 20050
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 11.0.2-MariaDB-1:11.0.2+maria~ubu2204)
# Database: laragigs
# Generation Time: 2023-08-22 17:50:47 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table listings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `listings`;

CREATE TABLE `listings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `tags` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` varchar(600) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listings_user_id_foreign` (`user_id`),
  CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `listings` WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;

INSERT INTO `listings` (`id`, `user_id`, `title`, `logo`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`)
VALUES
	(1,2,'Deleniti laboriosam ipsa eos ad.',NULL,'laravel, api, backend','Greenholt, Anderson and Will','Orlandport','daisha.gibson@rice.com','http://www.torp.com/','Molestias blanditiis dolor blanditiis iure. Suscipit sed occaecati qui. Quas tempore quaerat ut qui quia. Dicta laudantium assumenda et est vel aliquam. Quasi est consequatur corrupti tenetur eum maxime dolores consequatur.','2023-08-21 20:03:10','2023-08-21 20:03:10'),
	(2,2,'Tempora non ad amet voluptatem molestias.',NULL,'laravel, api, backend','Olson PLC','Rogahnland','fjacobi@moen.net','http://www.terry.com/odio-architecto-voluptate-delectus-dignissimos-esse-qui-soluta-quis','Fugiat atque quisquam eaque necessitatibus ex. Quae eaque occaecati corrupti ad et.','2023-08-21 20:03:10','2023-08-21 20:03:10'),
	(3,2,'Eligendi corporis ratione ullam inventore et tempore.',NULL,'laravel, api, backend','Ebert, Effertz and Kessler','West Darianbury','stroman.deborah@rodriguez.com','https://price.net/inventore-molestias-ut-iusto-expedita-aspernatur-quas-et.html','Vel assumenda consequatur quo reiciendis in. Nostrum at debitis non possimus ea et rerum. Recusandae accusamus repellat voluptate adipisci blanditiis. Laborum ad harum corrupti occaecati error esse. Explicabo numquam quo ut explicabo aut.','2023-08-21 20:03:10','2023-08-21 20:03:10'),
	(4,2,'A ut voluptas odit et.',NULL,'laravel, api, backend','Haley, Lynch and Mitchell','Hermistonbury','rodrigo.stokes@pacocha.com','http://www.howe.com/recusandae-sunt-dolore-quos-quis-voluptas-eveniet','Minus quia suscipit enim mollitia eos sint. Ex quasi itaque itaque sed sed eligendi. Blanditiis ipsa odit aut quibusdam est in culpa. Libero est aut aliquam officiis sit alias minima dolor.','2023-08-21 20:03:10','2023-08-21 20:03:10'),
	(5,2,'Omnis et accusamus magni ipsam quas.',NULL,'laravel, api, backend','Dare-Prohaska','Harrisshire','wkunze@beier.com','http://bailey.net/tempore-odio-aliquam-magni-et.html','Ipsam voluptatem minima nemo expedita earum. Sit aut quod quis voluptatum corporis nisi quaerat. Ut assumenda soluta non harum et ea qui. Cupiditate et harum officiis molestias. Nostrum est praesentium ipsam libero.','2023-08-21 20:03:10','2023-08-21 20:03:10'),
	(6,2,'Unde et beatae dolor ut vitae non.',NULL,'laravel, api, backend','Thiel, Legros and Gutkowski','South Tinatown','santos.marks@farrell.net','http://www.sawayn.info/dolorum-hic-non-inventore-facilis-natus-adipisci-sit','Et vero tempora enim sit sed tempore. Quo in velit ab molestias eveniet ratione et. Excepturi est necessitatibus et consequatur harum et.','2023-08-21 20:03:10','2023-08-21 20:03:10'),
	(7,2,'Odio consequuntur adipisci dicta voluptatem voluptas corrupti.',NULL,'laravel, api, backend','Brakus Group','Greggbury','icarroll@aufderhar.org','http://www.schmidt.biz/sapiente-est-aspernatur-voluptatem-placeat-totam','Et ad tempora id. In doloremque optio magnam omnis. Vitae tempora ut nisi reprehenderit dolor odio tempore.','2023-08-21 20:03:10','2023-08-21 20:03:10'),
	(8,2,'Tempore natus distinctio explicabo.',NULL,'laravel, api, backend','Howe-Schneider','West Russelborough','merl90@powlowski.com','http://www.boyle.biz/ullam-ratione-voluptas-debitis-est-eaque','Ipsa id enim qui ipsam et nam. Sed quidem animi quae consequuntur. Voluptatum veritatis laudantium illo praesentium eos numquam.','2023-08-21 20:03:10','2023-08-21 20:03:10'),
	(9,2,'Bat-End Developer','logos/HQmu5eOG5iApsPhp1OqslDlRGEM1oN7ikegPqaTi.png','bat-end, bat-cave, B#','Wayne Enterprises','Gothan City/Remote','bruce.hr@waynes.com','www.iamnotbatman.com','Molestias blanditiis dolor blanditiis iure. Suscipit sed occaecati qui. Quas tempore quaerat ut qui quia. Dicta laudantium assumenda et est vel aliquam. Quasi est consequatur corrupti tenetur eum maxime dolores consequatur.  Molestias blanditiis dolor blanditiis iure. Suscipit sed occaecati qui. Quas tempore quaerat ut qui quia. Dicta laudantium assumenda et est vel aliquam. Quasi est consequatur corrupti tenetur eum maxime dolores consequatur.','2023-08-22 12:26:12','2023-08-22 12:26:12');

/*!40000 ALTER TABLE `listings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(46,'2014_10_12_000000_create_users_table',1),
	(47,'2014_10_12_100000_create_password_reset_tokens_table',1),
	(48,'2019_08_19_000000_create_failed_jobs_table',1),
	(49,'2019_12_14_000001_create_personal_access_tokens_table',1),
	(50,'2023_08_14_171617_create_listings_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_reset_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'John Doe','john@example.com','2023-08-21 20:03:10','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','3OSm9rXHt6','2023-08-21 20:03:10','2023-08-21 20:03:10'),
	(2,'Rodrigo','castro.rl@gmail.com',NULL,'$2y$10$AjuQe6r3p8TlEnTsVYTe8OUqk.6WfJvxY2KcrQkP6kXYrR.p6Yn6W',NULL,'2023-08-21 20:07:05','2023-08-21 20:07:05');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
