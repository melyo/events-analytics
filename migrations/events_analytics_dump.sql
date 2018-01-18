-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: events_analytics
-- ------------------------------------------------------
-- Server version	10.1.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES
(1,'level 1','end','2018-01-12 00:42:28','2018-01-12 02:45:47'),
(2,'level 1','end','2018-01-12 12:42:28','2018-01-12 13:32:47'),
(3,'level 1','end','2018-01-13 00:42:28','2018-01-13 01:43:47'),
(4,'level 1','end','2018-01-13 12:42:28','2018-01-13 13:43:47'),
(5,'level 1','end','2018-01-13 17:42:28','2018-01-13 20:43:47'),
(6,'level 1','end','2018-01-13 23:42:28','2018-01-13 23:43:47'),
(7,'level 1','end','2018-01-14 00:42:28','2018-01-14 01:43:47'),
(8,'level 1','end','2018-01-14 12:42:28','2018-01-14 14:43:47'),
(9,'level 1','end','2018-01-15 00:42:28','2018-01-14 01:43:47'),
(10,'level 1','end','2018-01-15 12:42:28','2018-01-15 15:43:47'),
(11,'level 1','end','2018-01-15 16:42:28','2018-01-15 16:53:47'),
(12,'level 1','end','2018-01-15 17:42:28','2018-01-15 17:43:47'),
(13,'level 1','end','2018-01-15 18:42:28','2018-01-15 19:43:47'),
(14,'level 1','end','2018-01-15 22:42:28','2018-01-15 23:43:47'),
(15,'level 1','end','2018-01-16 00:42:28','2018-01-16 01:43:47'),
(16,'level 1','end','2018-01-16 17:42:28','2018-01-16 17:53:47'),
(17,'level 1','end','2018-01-17 00:42:28','2018-01-17 01:43:47'),
(18,'level 1','end','2018-01-17 06:42:28','2018-01-17 09:43:47'),
(19,'level 1','end','2018-01-17 15:42:28','2018-01-17 16:43:47'),
(20,'level 1','end','2018-01-18 00:42:28','2018-01-18 01:43:47'),
(21,'level 1','end','2018-01-18 03:42:28','2018-01-18 04:43:47'),
(22,'level 1','end','2018-01-18 07:42:28','2018-01-18 08:43:47'),

(23,'level 2','end','2018-01-12 00:42:28','2018-01-12 01:43:47'),
(24,'level 2','end','2018-01-12 06:42:28','2018-01-12 10:43:47'),
(25,'level 2','end','2018-01-13 00:42:28','2018-01-13 01:43:47'),
(26,'level 2','end','2018-01-13 02:42:28','2018-01-13 03:43:47'),
(27,'level 2','end','2018-01-14 00:42:28','2018-01-14 01:43:47'),
(28,'level 2','end','2018-01-14 07:42:28','2018-01-14 09:43:47'),
(29,'level 2','end','2018-01-14 18:42:28','2018-01-14 19:43:47'),
(30,'level 2','end','2018-01-15 00:42:28','2018-01-15 01:43:47'),
(31,'level 2','end','2018-01-15 20:42:28','2018-01-15 22:43:47'),
(32,'level 2','end','2018-01-16 00:42:28','2018-01-16 01:43:47'),
(33,'level 2','end','2018-01-16 07:42:28','2018-01-16 09:43:47'),
(34,'level 2','end','2018-01-16 10:42:28','2018-01-16 12:43:47'),
(35,'level 2','end','2018-01-17 00:42:28','2018-01-17 01:43:47'),
(36,'level 2','end','2018-01-17 06:42:28','2018-01-17 06:53:47'),
(37,'level 2','end','2018-01-17 18:42:28','2018-01-17 19:43:47'),
(38,'level 2','end','2018-01-17 22:42:28','2018-01-17 23:43:47'),
(39,'level 2','end','2018-01-18 00:42:28','2018-01-18 01:43:47'),
(40,'level 2','end','2018-01-18 05:42:28','2018-01-18 17:43:47'),
(41,'level 2','end','2018-01-18 09:42:28','2018-01-18 12:43:47'),
(42,'level 2','end','2018-01-18 19:42:28','2018-01-18 20:43:47'),
(43,'level 2','end','2018-01-18 22:42:28','2018-01-18 23:43:47');

/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES
(1,'purchase 1','2018-01-12 22:45:09'),
(2,'purchase 1','2018-01-12 00:41:57'),
(3,'purchase 1','2018-01-13 22:45:09'),
(4,'purchase 1','2018-01-13 00:41:57'),
(5,'purchase 1','2018-01-14 22:45:09'),
(6,'purchase 1','2018-01-14 00:41:57'),
(7,'purchase 1','2018-01-14 22:45:09'),
(8,'purchase 1','2018-01-14 00:41:57'),
(9,'purchase 1','2018-01-15 22:45:09'),
(10,'purchase 1','2018-01-15 00:41:57'),
(11,'purchase 1','2018-01-15 22:45:09'),
(12,'purchase 1','2018-01-15 00:41:57'),
(13,'purchase 1','2018-01-16 22:45:09'),
(14,'purchase 1','2018-01-17 00:41:57'),
(15,'purchase 1','2018-01-18 22:45:09'),
(16,'purchase 1','2018-01-18 00:41:57'),

(17,'purchase 2','2018-01-12 22:45:09'),
(18,'purchase 2','2018-01-12 00:41:57'),
(19,'purchase 2','2018-01-12 22:45:09'),
(20,'purchase 2','2018-01-13 00:41:57'),
(21,'purchase 2','2018-01-14 22:45:09'),
(22,'purchase 2','2018-01-14 00:41:57'),
(23,'purchase 2','2018-01-15 22:45:09'),
(24,'purchase 2','2018-01-15 00:41:57'),
(25,'purchase 2','2018-01-15 22:45:09'),
(26,'purchase 2','2018-01-15 00:41:57'),
(27,'purchase 2','2018-01-16 22:45:09'),
(28,'purchase 2','2018-01-16 00:41:57'),
(29,'purchase 2','2018-01-16 22:45:09'),
(30,'purchase 2','2018-01-16 00:41:57'),
(31,'purchase 2','2018-01-17 22:45:09'),
(32,'purchase 2','2018-01-17 00:41:57'),
(33,'purchase 2','2018-01-17 22:45:09'),
(34,'purchase 2','2018-01-17 00:41:57'),
(35,'purchase 2','2018-01-18 22:45:09'),
(36,'purchase 2','2018-01-18 00:41:57'),
(37,'purchase 2','2018-01-18 22:45:09'),
(38,'purchase 2','2018-01-18 00:41:57'),
(39,'purchase 2','2018-01-18 22:45:09'),
(40,'purchase 2','2018-01-18 00:41:57'),
(41,'purchase 2','2018-01-18 22:45:09');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-12  9:45:38
