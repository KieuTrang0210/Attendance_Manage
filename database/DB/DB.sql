-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.11.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for eat2023
CREATE DATABASE IF NOT EXISTS `eat2023` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `eat2023`;

-- Dumping structure for table eat2023.attendances
CREATE TABLE IF NOT EXISTS `attendances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) unsigned NOT NULL,
  `date` date NOT NULL,
  `check_in_time` time NOT NULL,
  `check_out_time` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attendances_employee_id_foreign` (`employee_id`),
  CONSTRAINT `attendances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eat2023.attendances: ~32 rows (approximately)
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` (`id`, `employee_id`, `date`, `check_in_time`, `check_out_time`) VALUES
	(1, 11, '2022-02-26', '10:29:03', '17:33:27'),
	(2, 15, '1993-10-24', '06:43:30', '18:03:33'),
	(3, 9, '1999-10-09', '00:42:27', '10:42:18'),
	(4, 5, '2016-06-16', '10:55:26', '06:49:21'),
	(5, 8, '1990-01-22', '11:42:38', '01:24:18'),
	(6, 6, '2010-01-26', '00:26:49', '08:26:26'),
	(7, 5, '2012-05-19', '19:41:58', '03:12:06'),
	(8, 20, '1990-07-20', '22:59:26', '16:54:04'),
	(9, 16, '1989-11-13', '15:06:25', '12:32:11'),
	(10, 4, '2003-09-13', '03:23:07', '09:16:28'),
	(11, 5, '1980-04-10', '11:46:48', '07:37:01'),
	(12, 16, '2004-05-14', '00:44:36', '20:18:58'),
	(13, 9, '1988-11-14', '17:02:29', '11:29:36'),
	(14, 19, '1980-03-27', '19:32:27', '01:36:03'),
	(15, 14, '2012-01-27', '15:30:17', '02:29:55'),
	(16, 15, '2019-06-13', '08:11:00', '22:36:18'),
	(17, 6, '1978-09-17', '21:48:21', '19:08:59'),
	(18, 12, '2017-03-27', '07:25:32', '12:42:47'),
	(19, 9, '1996-04-06', '20:47:16', '17:59:32'),
	(20, 20, '1997-05-01', '04:56:48', '02:33:04'),
	(21, 16, '1995-05-26', '12:10:14', '05:15:13'),
	(22, 3, '2010-05-14', '13:43:56', '20:30:13'),
	(23, 4, '2008-06-21', '00:05:32', '18:40:01'),
	(24, 16, '1998-07-22', '15:12:16', '21:25:31'),
	(25, 2, '2006-11-24', '00:22:38', '21:40:38'),
	(26, 6, '1973-04-15', '20:23:01', '11:59:33'),
	(27, 9, '2004-04-05', '17:43:51', '08:58:34'),
	(28, 5, '1984-12-13', '21:52:33', '14:49:33'),
	(29, 15, '1981-02-01', '22:32:48', '09:25:36'),
	(30, 10, '2010-05-11', '06:21:56', '20:22:08'),
	(31, 5, '2023-05-01', '06:58:00', '17:56:00'),
	(33, 7, '2023-06-21', '07:00:00', '18:00:00');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;

-- Dumping structure for table eat2023.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eat2023.employees: ~20 rows (approximately)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `name`, `email`, `position`) VALUES
	(1, 'Gerson Stoltenberg', 'taya.collins@hotmail.com', 'Political Science Teacher'),
	(2, 'Dr. Marques Grady', 'ddouglas@gmail.com', 'Health Services Manager'),
	(3, 'Margarita Simonis', 'cormier.xavier@yahoo.com', 'Credit Checker'),
	(4, 'Rowland Denesik', 'carroll.jeffery@romaguera.com', 'Physicist'),
	(5, 'Brianne Heller', 'johnson.mathias@greenholt.net', 'Public Health Social Worker'),
	(6, 'King Hyatt PhD', 'pdare@schamberger.org', 'Fraud Investigator'),
	(7, 'Dr. Joan Swift', 'gerard53@gmail.com', 'Petroleum Engineer'),
	(8, 'Ramiro Grimes', 'vicenta16@yahoo.com', 'Potter'),
	(9, 'Miss Grace Hoeger Sr.', 'nestor.king@zboncak.com', 'Vice President Of Marketing'),
	(10, 'Crystal Rau MD', 'theresa43@medhurst.com', 'Postsecondary Education Administrators'),
	(11, 'Dr. Gabe Connell', 'shuels@gerlach.net', 'Home Health Aide'),
	(12, 'Hermann Casper III', 'lonnie.klein@mueller.org', 'Cartographer'),
	(13, 'Allie Wyman', 'tokeefe@mccullough.info', 'Webmaster'),
	(14, 'Elvis Nader', 'lubowitz.winfield@reynolds.com', 'Lawyer'),
	(15, 'Dr. Mack Schumm', 'lilian.murray@wuckert.net', 'Manager Tactical Operations'),
	(16, 'Valentine Turner', 'kleffler@christiansen.net', 'Loan Counselor'),
	(17, 'Miss America Barton', 'thea.dietrich@nitzsche.biz', 'Freight Inspector'),
	(18, 'Asa Mann', 'dvon@gmail.com', 'Healthcare Support Worker'),
	(19, 'Celestino Nitzsche MD', 'kstokes@abernathy.com', 'Cutting Machine Operator'),
	(20, 'Remington Kulas', 'kylie86@smith.com', 'Air Crew Officer');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table eat2023.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
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

-- Dumping data for table eat2023.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table eat2023.leave_requests
CREATE TABLE IF NOT EXISTS `leave_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) unsigned NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `leave_requests_employee_id_foreign` (`employee_id`),
  CONSTRAINT `leave_requests_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eat2023.leave_requests: ~20 rows (approximately)
/*!40000 ALTER TABLE `leave_requests` DISABLE KEYS */;
INSERT INTO `leave_requests` (`id`, `employee_id`, `start_date`, `end_date`, `status`) VALUES
	(1, 4, '1985-06-15', '2014-05-02', 'rejected'),
	(2, 10, '1977-12-30', '1973-04-30', 'rejected'),
	(3, 16, '1978-05-14', '2008-01-12', 'approved'),
	(4, 15, '1997-11-20', '1976-01-12', 'approved'),
	(5, 1, '1993-07-08', '1978-01-19', 'pending'),
	(6, 8, '1994-06-19', '2005-08-29', 'rejected'),
	(7, 9, '2007-02-02', '1993-08-27', 'approved'),
	(8, 12, '2016-01-23', '2012-11-01', 'pending'),
	(9, 6, '2002-08-26', '1970-09-03', 'rejected'),
	(10, 15, '1988-12-17', '2009-07-25', 'approved'),
	(11, 14, '2017-05-02', '1985-09-03', 'approved'),
	(12, 13, '1983-05-19', '2022-08-08', 'rejected'),
	(13, 20, '2016-05-03', '2010-12-03', 'rejected'),
	(14, 9, '1991-09-07', '1976-02-19', 'approved'),
	(15, 6, '2006-10-09', '2009-10-13', 'approved'),
	(16, 2, '1977-01-11', '1979-03-29', 'rejected'),
	(17, 3, '1983-01-15', '1981-02-15', 'approved'),
	(18, 13, '1997-09-09', '1983-12-23', 'pending'),
	(19, 19, '2010-11-08', '1974-07-12', 'approved'),
	(20, 13, '1981-10-31', '1990-05-20', 'pending');
/*!40000 ALTER TABLE `leave_requests` ENABLE KEYS */;

-- Dumping structure for table eat2023.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eat2023.migrations: ~7 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(8, '2014_10_12_000000_create_users_table', 1),
	(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(10, '2019_08_19_000000_create_failed_jobs_table', 1),
	(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(12, '2023_06_27_061454_create_employees_table', 1),
	(13, '2023_06_27_061821_create_attendances_table', 1),
	(14, '2023_06_27_062033_create_leave_requests_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table eat2023.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eat2023.password_reset_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;

-- Dumping structure for table eat2023.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
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

-- Dumping data for table eat2023.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table eat2023.users
CREATE TABLE IF NOT EXISTS `users` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eat2023.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
