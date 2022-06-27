-- MySQL dump 10.13  Distrib 5.6.50, for Linux (x86_64)
--
-- Host: localhost    Database: laraveladmindemo
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `admin_config`
--

DROP TABLE IF EXISTS `admin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_config_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_config`
--

LOCK TABLES `admin_config` WRITE;
/*!40000 ALTER TABLE `admin_config` DISABLE KEYS */;
INSERT INTO `admin_config` VALUES (1,'__configx__','do not delete','','2022-06-27 13:54:24','2022-06-27 13:54:24');
/*!40000 ALTER TABLE `admin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'我的面板','fa-bar-chart','/',NULL,NULL,'2022-06-27 13:57:02'),(2,0,2,'管理员','fa-tasks',NULL,NULL,NULL,'2022-06-27 13:51:49'),(3,2,3,'管理员列表','fa-users','auth/users',NULL,NULL,'2022-06-27 13:50:48'),(4,2,4,'角色管理','fa-user','auth/roles',NULL,NULL,'2022-06-27 13:51:03'),(5,2,5,'权限管理','fa-ban','auth/permissions',NULL,NULL,'2022-06-27 13:51:15'),(6,2,6,'后台菜单','fa-bars','auth/menu',NULL,NULL,'2022-06-27 13:55:50'),(7,2,7,'操作日志','fa-history','auth/logs',NULL,NULL,'2022-06-27 13:51:37'),(8,0,7,'Helpers','fa-gears','',NULL,'2022-05-10 15:08:56','2022-05-10 15:08:56'),(9,8,8,'Scaffold','fa-keyboard-o','helpers/scaffold',NULL,'2022-05-10 15:08:56','2022-05-10 15:08:56'),(10,8,9,'Database terminal','fa-database','helpers/terminal/database',NULL,'2022-05-10 15:08:56','2022-05-10 15:08:56'),(11,8,10,'Laravel artisan','fa-terminal','helpers/terminal/artisan',NULL,'2022-05-10 15:08:56','2022-05-10 15:08:56'),(12,8,11,'Routes','fa-list-alt','helpers/routes',NULL,'2022-05-10 15:08:56','2022-05-10 15:08:56'),(14,0,13,'系统设置','fa-toggle-on','configx/edit',NULL,'2022-06-27 13:53:38','2022-06-27 13:55:05'),(15,0,14,'媒体文件管理','fa-file','media',NULL,'2022-06-27 13:59:37','2022-06-27 14:09:17');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:06:30','2022-05-10 15:06:30'),(2,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:06:37','2022-05-10 15:06:37'),(3,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:06:38','2022-05-10 15:06:38'),(4,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:07:15','2022-05-10 15:07:15'),(5,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:07:16','2022-05-10 15:07:16'),(6,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:07:18','2022-05-10 15:07:18'),(7,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:07:33','2022-05-10 15:07:33'),(8,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:07:34','2022-05-10 15:07:34'),(9,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:07:35','2022-05-10 15:07:35'),(10,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:07:51','2022-05-10 15:07:51'),(11,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:07:52','2022-05-10 15:07:52'),(12,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:07:53','2022-05-10 15:07:53'),(13,1,'admin','GET','127.0.0.1','[]','2022-05-10 15:13:03','2022-05-10 15:13:03'),(14,1,'admin','GET','192.168.93.1','[]','2022-06-27 13:48:24','2022-06-27 13:48:24'),(15,1,'admin','GET','192.168.93.1','[]','2022-06-27 13:49:56','2022-06-27 13:49:56'),(16,1,'admin','GET','192.168.93.1','[]','2022-06-27 13:50:12','2022-06-27 13:50:12'),(17,1,'admin','GET','192.168.93.1','[]','2022-06-27 13:50:22','2022-06-27 13:50:22'),(18,1,'admin','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:50:22','2022-06-27 13:50:22'),(19,1,'admin','GET','192.168.93.1','[]','2022-06-27 13:50:22','2022-06-27 13:50:22'),(20,1,'admin/auth/users','GET','192.168.93.1','[]','2022-06-27 13:50:23','2022-06-27 13:50:23'),(21,1,'admin/auth/users','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:50:23','2022-06-27 13:50:23'),(22,1,'admin/auth/roles','GET','192.168.93.1','[]','2022-06-27 13:50:23','2022-06-27 13:50:23'),(23,1,'admin/auth/roles','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:50:24','2022-06-27 13:50:24'),(24,1,'admin/auth/permissions','GET','192.168.93.1','[]','2022-06-27 13:50:24','2022-06-27 13:50:24'),(25,1,'admin/auth/permissions','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:50:24','2022-06-27 13:50:24'),(26,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 13:50:25','2022-06-27 13:50:25'),(27,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:50:25','2022-06-27 13:50:25'),(28,1,'admin/auth/users','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:50:26','2022-06-27 13:50:26'),(29,1,'admin/auth/users','GET','192.168.93.1','[]','2022-06-27 13:50:27','2022-06-27 13:50:27'),(30,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:50:29','2022-06-27 13:50:29'),(31,1,'admin/auth/menu/3/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:50:38','2022-06-27 13:50:38'),(32,1,'admin/auth/menu/3','PUT','192.168.93.1','{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\\u5217\\u8868\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.mystore.xyz\\/admin\\/auth\\/menu\"}','2022-06-27 13:50:48','2022-06-27 13:50:48'),(33,1,'admin/auth/menu/3','GET','192.168.93.1','[]','2022-06-27 13:50:48','2022-06-27 13:50:48'),(34,1,'admin/auth/menu/3/edit','GET','192.168.93.1','[]','2022-06-27 13:50:48','2022-06-27 13:50:48'),(35,1,'admin/auth/users','GET','192.168.93.1','[]','2022-06-27 13:50:51','2022-06-27 13:50:51'),(36,1,'admin/auth/roles','GET','192.168.93.1','[]','2022-06-27 13:50:51','2022-06-27 13:50:51'),(37,1,'admin/auth/permissions','GET','192.168.93.1','[]','2022-06-27 13:50:51','2022-06-27 13:50:51'),(38,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 13:50:52','2022-06-27 13:50:52'),(39,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:50:52','2022-06-27 13:50:52'),(40,1,'admin/auth/menu/4/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:50:56','2022-06-27 13:50:56'),(41,1,'admin/auth/menu/4','PUT','192.168.93.1','{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.mystore.xyz\\/admin\\/auth\\/menu\"}','2022-06-27 13:51:03','2022-06-27 13:51:03'),(42,1,'admin/auth/menu/4','GET','192.168.93.1','[]','2022-06-27 13:51:03','2022-06-27 13:51:03'),(43,1,'admin/auth/menu/4/edit','GET','192.168.93.1','[]','2022-06-27 13:51:03','2022-06-27 13:51:03'),(44,1,'admin/auth/users','GET','192.168.93.1','[]','2022-06-27 13:51:05','2022-06-27 13:51:05'),(45,1,'admin/auth/roles','GET','192.168.93.1','[]','2022-06-27 13:51:05','2022-06-27 13:51:05'),(46,1,'admin/auth/permissions','GET','192.168.93.1','[]','2022-06-27 13:51:06','2022-06-27 13:51:06'),(47,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 13:51:06','2022-06-27 13:51:06'),(48,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:51:06','2022-06-27 13:51:06'),(49,1,'admin/auth/menu/5/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:51:09','2022-06-27 13:51:09'),(50,1,'admin/auth/menu/5','PUT','192.168.93.1','{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.mystore.xyz\\/admin\\/auth\\/menu\"}','2022-06-27 13:51:15','2022-06-27 13:51:15'),(51,1,'admin/auth/menu/5','GET','192.168.93.1','[]','2022-06-27 13:51:15','2022-06-27 13:51:15'),(52,1,'admin/auth/menu/5/edit','GET','192.168.93.1','[]','2022-06-27 13:51:15','2022-06-27 13:51:15'),(53,1,'admin/auth/users','GET','192.168.93.1','[]','2022-06-27 13:51:17','2022-06-27 13:51:17'),(54,1,'admin/auth/roles','GET','192.168.93.1','[]','2022-06-27 13:51:17','2022-06-27 13:51:17'),(55,1,'admin/auth/permissions','GET','192.168.93.1','[]','2022-06-27 13:51:17','2022-06-27 13:51:17'),(56,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 13:51:17','2022-06-27 13:51:17'),(57,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:51:17','2022-06-27 13:51:17'),(58,1,'admin/auth/menu/6/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:51:20','2022-06-27 13:51:20'),(59,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:51:29','2022-06-27 13:51:29'),(60,1,'admin/auth/menu/7/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:51:31','2022-06-27 13:51:31'),(61,1,'admin/auth/menu/7','PUT','192.168.93.1','{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.mystore.xyz\\/admin\\/auth\\/menu\"}','2022-06-27 13:51:37','2022-06-27 13:51:37'),(62,1,'admin/auth/menu/7','GET','192.168.93.1','[]','2022-06-27 13:51:37','2022-06-27 13:51:37'),(63,1,'admin/auth/menu/7/edit','GET','192.168.93.1','[]','2022-06-27 13:51:37','2022-06-27 13:51:37'),(64,1,'admin/auth/roles','GET','192.168.93.1','[]','2022-06-27 13:51:40','2022-06-27 13:51:40'),(65,1,'admin/auth/permissions','GET','192.168.93.1','[]','2022-06-27 13:51:40','2022-06-27 13:51:40'),(66,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 13:51:40','2022-06-27 13:51:40'),(67,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:51:40','2022-06-27 13:51:40'),(68,1,'admin/auth/menu/2/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:51:44','2022-06-27 13:51:44'),(69,1,'admin/auth/menu/2','PUT','192.168.93.1','{\"parent_id\":\"0\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.mystore.xyz\\/admin\\/auth\\/menu\"}','2022-06-27 13:51:49','2022-06-27 13:51:49'),(70,1,'admin/auth/menu/2','GET','192.168.93.1','[]','2022-06-27 13:51:49','2022-06-27 13:51:49'),(71,1,'admin/auth/menu/2/edit','GET','192.168.93.1','[]','2022-06-27 13:51:49','2022-06-27 13:51:49'),(72,1,'admin/auth/roles','GET','192.168.93.1','[]','2022-06-27 13:51:52','2022-06-27 13:51:52'),(73,1,'admin/auth/permissions','GET','192.168.93.1','[]','2022-06-27 13:51:53','2022-06-27 13:51:53'),(74,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 13:51:53','2022-06-27 13:51:53'),(75,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:51:53','2022-06-27 13:51:53'),(76,1,'admin/auth/menu/13/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:52:01','2022-06-27 13:52:01'),(77,1,'admin/config','GET','192.168.93.1','[]','2022-06-27 13:52:03','2022-06-27 13:52:03'),(78,1,'admin/config','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:52:04','2022-06-27 13:52:04'),(79,1,'admin','GET','192.168.93.1','[]','2022-06-27 13:52:13','2022-06-27 13:52:13'),(80,1,'admin','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:52:13','2022-06-27 13:52:13'),(81,1,'admin','GET','192.168.93.1','[]','2022-06-27 13:54:23','2022-06-27 13:54:23'),(82,1,'admin','GET','192.168.93.1','[]','2022-06-27 13:54:24','2022-06-27 13:54:24'),(83,1,'admin/config','GET','192.168.93.1','[]','2022-06-27 13:54:24','2022-06-27 13:54:24'),(84,1,'admin/configx/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:24','2022-06-27 13:54:24'),(85,1,'admin/config','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:26','2022-06-27 13:54:26'),(86,1,'admin/configx/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:29','2022-06-27 13:54:29'),(87,1,'admin/config','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:30','2022-06-27 13:54:30'),(88,1,'admin/configx/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:31','2022-06-27 13:54:31'),(89,1,'admin/config','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:31','2022-06-27 13:54:31'),(90,1,'admin/configx/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:32','2022-06-27 13:54:32'),(91,1,'admin/config','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:32','2022-06-27 13:54:32'),(92,1,'admin/config','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:33','2022-06-27 13:54:33'),(93,1,'admin/configx/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:34','2022-06-27 13:54:34'),(94,1,'admin/auth/users','GET','192.168.93.1','[]','2022-06-27 13:54:39','2022-06-27 13:54:39'),(95,1,'admin/auth/roles','GET','192.168.93.1','[]','2022-06-27 13:54:39','2022-06-27 13:54:39'),(96,1,'admin/auth/permissions','GET','192.168.93.1','[]','2022-06-27 13:54:39','2022-06-27 13:54:39'),(97,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 13:54:39','2022-06-27 13:54:39'),(98,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:39','2022-06-27 13:54:39'),(99,1,'admin/helpers/terminal/database','GET','192.168.93.1','[]','2022-06-27 13:54:40','2022-06-27 13:54:40'),(100,1,'admin/auth/menu/13','DELETE','192.168.93.1','{\"_method\":\"delete\",\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\"}','2022-06-27 13:54:45','2022-06-27 13:54:45'),(101,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:45','2022-06-27 13:54:45'),(102,1,'admin/auth/menu/14/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:54:48','2022-06-27 13:54:48'),(103,1,'admin/auth/menu/14','PUT','192.168.93.1','{\"parent_id\":\"0\",\"title\":\"\\u8bbe\\u7f6e\",\"icon\":\"fa-toggle-on\",\"uri\":\"configx\\/edit\",\"roles\":[null],\"permission\":null,\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.mystore.xyz\\/admin\\/auth\\/menu\"}','2022-06-27 13:54:58','2022-06-27 13:54:58'),(104,1,'admin/auth/menu/14','GET','192.168.93.1','[]','2022-06-27 13:54:59','2022-06-27 13:54:59'),(105,1,'admin/auth/menu/14/edit','GET','192.168.93.1','[]','2022-06-27 13:54:59','2022-06-27 13:54:59'),(106,1,'admin/auth/menu/14','PUT','192.168.93.1','{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"icon\":\"fa-toggle-on\",\"uri\":\"configx\\/edit\",\"roles\":[null],\"permission\":null,\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\",\"_method\":\"PUT\"}','2022-06-27 13:55:05','2022-06-27 13:55:05'),(107,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 13:55:05','2022-06-27 13:55:05'),(108,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 13:55:33','2022-06-27 13:55:33'),(109,1,'admin/auth/users','GET','192.168.93.1','[]','2022-06-27 13:55:35','2022-06-27 13:55:35'),(110,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 13:55:35','2022-06-27 13:55:35'),(111,1,'admin/auth/roles','GET','192.168.93.1','[]','2022-06-27 13:55:39','2022-06-27 13:55:39'),(112,1,'admin/auth/permissions','GET','192.168.93.1','[]','2022-06-27 13:55:39','2022-06-27 13:55:39'),(113,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 13:55:39','2022-06-27 13:55:39'),(114,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:55:39','2022-06-27 13:55:39'),(115,1,'admin/auth/menu/6/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:55:43','2022-06-27 13:55:43'),(116,1,'admin/auth/menu/6','PUT','192.168.93.1','{\"parent_id\":\"2\",\"title\":\"\\u540e\\u53f0\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.mystore.xyz\\/admin\\/auth\\/menu\"}','2022-06-27 13:55:50','2022-06-27 13:55:50'),(117,1,'admin/auth/menu/6','GET','192.168.93.1','[]','2022-06-27 13:55:50','2022-06-27 13:55:50'),(118,1,'admin/auth/menu/6/edit','GET','192.168.93.1','[]','2022-06-27 13:55:50','2022-06-27 13:55:50'),(119,1,'admin/auth/menu/6/edit','GET','192.168.93.1','[]','2022-06-27 13:55:53','2022-06-27 13:55:53'),(120,1,'admin/configx/edit','GET','192.168.93.1','[]','2022-06-27 13:55:56','2022-06-27 13:55:56'),(121,1,'admin/auth/roles','GET','192.168.93.1','[]','2022-06-27 13:56:00','2022-06-27 13:56:00'),(122,1,'admin/auth/permissions','GET','192.168.93.1','[]','2022-06-27 13:56:01','2022-06-27 13:56:01'),(123,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 13:56:01','2022-06-27 13:56:01'),(124,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:56:01','2022-06-27 13:56:01'),(125,1,'admin/auth/permissions','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:56:02','2022-06-27 13:56:02'),(126,1,'admin/auth/roles','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:56:03','2022-06-27 13:56:03'),(127,1,'admin/auth/users','GET','192.168.93.1','[]','2022-06-27 13:56:03','2022-06-27 13:56:03'),(128,1,'admin/auth/users','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:56:04','2022-06-27 13:56:04'),(129,1,'admin/auth/users','GET','192.168.93.1','[]','2022-06-27 13:56:04','2022-06-27 13:56:04'),(130,1,'admin','GET','192.168.93.1','[]','2022-06-27 13:56:46','2022-06-27 13:56:46'),(131,1,'admin','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:56:46','2022-06-27 13:56:46'),(132,1,'admin','GET','192.168.93.1','[]','2022-06-27 13:56:50','2022-06-27 13:56:50'),(133,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:56:53','2022-06-27 13:56:53'),(134,1,'admin/auth/menu/1/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:56:56','2022-06-27 13:56:56'),(135,1,'admin/auth/menu/1','PUT','192.168.93.1','{\"parent_id\":\"0\",\"title\":\"\\u6211\\u7684\\u9762\\u677f\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.mystore.xyz\\/admin\\/auth\\/menu\"}','2022-06-27 13:57:02','2022-06-27 13:57:02'),(136,1,'admin/auth/menu/1','GET','192.168.93.1','[]','2022-06-27 13:57:02','2022-06-27 13:57:02'),(137,1,'admin/auth/menu/1/edit','GET','192.168.93.1','[]','2022-06-27 13:57:02','2022-06-27 13:57:02'),(138,1,'admin','GET','192.168.93.1','[]','2022-06-27 13:57:04','2022-06-27 13:57:04'),(139,1,'admin','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 13:57:04','2022-06-27 13:57:04'),(140,1,'admin','GET','192.168.93.1','[]','2022-06-27 13:58:19','2022-06-27 13:58:19'),(141,1,'admin','GET','192.168.93.1','[]','2022-06-27 14:00:29','2022-06-27 14:00:29'),(142,1,'admin/media','GET','192.168.93.1','[]','2022-06-27 14:00:30','2022-06-27 14:00:30'),(143,1,'admin/media','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:00:30','2022-06-27 14:00:30'),(144,1,'admin/configx/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:00:33','2022-06-27 14:00:33'),(145,1,'admin/media','GET','192.168.93.1','[]','2022-06-27 14:00:33','2022-06-27 14:00:33'),(146,1,'admin/media','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:00:34','2022-06-27 14:00:34'),(147,1,'admin/media','GET','192.168.93.1','[]','2022-06-27 14:02:24','2022-06-27 14:02:24'),(148,1,'admin/media','GET','192.168.93.1','[]','2022-06-27 14:02:26','2022-06-27 14:02:26'),(149,1,'admin/media','GET','192.168.93.1','[]','2022-06-27 14:02:28','2022-06-27 14:02:28'),(150,1,'admin/media/upload','POST','192.168.93.1','{\"dir\":\"\\/\",\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\"}','2022-06-27 14:02:44','2022-06-27 14:02:44'),(151,1,'admin/media','GET','192.168.93.1','[]','2022-06-27 14:02:44','2022-06-27 14:02:44'),(152,1,'admin/media','GET','192.168.93.1','[]','2022-06-27 14:02:48','2022-06-27 14:02:48'),(153,1,'admin/media/delete','DELETE','192.168.93.1','{\"files\":[\"\\u65b0\\u5efa \\u6587\\u672c\\u6587\\u6863.html\"],\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\"}','2022-06-27 14:03:54','2022-06-27 14:03:54'),(154,1,'admin/media','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:03:54','2022-06-27 14:03:54'),(155,1,'admin','GET','192.168.93.1','[]','2022-06-27 14:03:57','2022-06-27 14:03:57'),(156,1,'admin','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:03:57','2022-06-27 14:03:57'),(157,1,'admin','GET','192.168.93.1','[]','2022-06-27 14:08:52','2022-06-27 14:08:52'),(158,1,'admin/media','GET','192.168.93.1','[]','2022-06-27 14:08:53','2022-06-27 14:08:53'),(159,1,'admin/media','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:08:53','2022-06-27 14:08:53'),(160,1,'admin/media','GET','192.168.93.1','[]','2022-06-27 14:08:57','2022-06-27 14:08:57'),(161,1,'admin/auth/users','GET','192.168.93.1','[]','2022-06-27 14:09:06','2022-06-27 14:09:06'),(162,1,'admin/auth/roles','GET','192.168.93.1','[]','2022-06-27 14:09:06','2022-06-27 14:09:06'),(163,1,'admin/auth/permissions','GET','192.168.93.1','[]','2022-06-27 14:09:06','2022-06-27 14:09:06'),(164,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 14:09:06','2022-06-27 14:09:06'),(165,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:06','2022-06-27 14:09:06'),(166,1,'admin/auth/menu/15/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:09','2022-06-27 14:09:09'),(167,1,'admin/auth/menu/15','PUT','192.168.93.1','{\"parent_id\":\"0\",\"title\":\"\\u5a92\\u4f53\\u6587\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa-file\",\"uri\":\"media\",\"roles\":[null],\"permission\":null,\"_token\":\"N70wwTvcWnRoOnvCuifddi2guD12ciNPpdKf5n9O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.mystore.xyz\\/admin\\/auth\\/menu\"}','2022-06-27 14:09:16','2022-06-27 14:09:16'),(168,1,'admin/auth/menu/15','GET','192.168.93.1','[]','2022-06-27 14:09:17','2022-06-27 14:09:17'),(169,1,'admin/auth/menu/15/edit','GET','192.168.93.1','[]','2022-06-27 14:09:17','2022-06-27 14:09:17'),(170,1,'admin/media','GET','192.168.93.1','[]','2022-06-27 14:09:18','2022-06-27 14:09:18'),(171,1,'admin/media','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:19','2022-06-27 14:09:19'),(172,1,'admin/configx/edit','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:20','2022-06-27 14:09:20'),(173,1,'admin/helpers/scaffold','GET','192.168.93.1','[]','2022-06-27 14:09:26','2022-06-27 14:09:26'),(174,1,'admin/helpers/scaffold','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:26','2022-06-27 14:09:26'),(175,1,'admin/helpers/terminal/database','GET','192.168.93.1','[]','2022-06-27 14:09:26','2022-06-27 14:09:26'),(176,1,'admin/helpers/terminal/database','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:27','2022-06-27 14:09:27'),(177,1,'admin/helpers/terminal/artisan','GET','192.168.93.1','[]','2022-06-27 14:09:27','2022-06-27 14:09:27'),(178,1,'admin/helpers/terminal/artisan','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:28','2022-06-27 14:09:28'),(179,1,'admin/helpers/routes','GET','192.168.93.1','[]','2022-06-27 14:09:28','2022-06-27 14:09:28'),(180,1,'admin/helpers/routes','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:28','2022-06-27 14:09:28'),(181,1,'admin/helpers/routes','GET','192.168.93.1','[]','2022-06-27 14:09:29','2022-06-27 14:09:29'),(182,1,'admin/auth/users','GET','192.168.93.1','[]','2022-06-27 14:09:30','2022-06-27 14:09:30'),(183,1,'admin/auth/users','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:30','2022-06-27 14:09:30'),(184,1,'admin/auth/roles','GET','192.168.93.1','[]','2022-06-27 14:09:31','2022-06-27 14:09:31'),(185,1,'admin/auth/roles','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:31','2022-06-27 14:09:31'),(186,1,'admin/auth/permissions','GET','192.168.93.1','[]','2022-06-27 14:09:31','2022-06-27 14:09:31'),(187,1,'admin/auth/permissions','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:31','2022-06-27 14:09:31'),(188,1,'admin/auth/menu','GET','192.168.93.1','[]','2022-06-27 14:09:31','2022-06-27 14:09:31'),(189,1,'admin/auth/menu','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:31','2022-06-27 14:09:31'),(190,1,'admin','GET','192.168.93.1','[]','2022-06-27 14:09:32','2022-06-27 14:09:32'),(191,1,'admin','GET','192.168.93.1','{\"_pjax\":\"#pjax-container\"}','2022-06-27 14:09:33','2022-06-27 14:09:33');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'Admin helpers','ext.helpers','','/helpers/*','2022-05-10 15:08:56','2022-05-10 15:08:56'),(7,'Admin Config','ext.config','','/config*','2022-05-10 15:11:03','2022-05-10 15:11:03'),(8,'Admin Configx','ext.configx','','/configx/*','2022-06-27 13:53:38','2022-06-27 13:53:38'),(9,'Media manager','ext.media-manager','','/media*','2022-06-27 13:59:37','2022-06-27 13:59:37');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2022-05-10 07:05:01','2022-05-10 07:05:01');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$MW0Gf.srAwNH1iszZ7Ma0OqrGw3XE3RgARVHT3gttJDxIcACWAOO2','Administrator',NULL,'O5QTYfPvxuTe4POESY4O4BdKQ5SZ0OPozZ9pSm3sXy6YqpnxNX83xfwJryQl','2022-05-10 07:05:01','2022-05-10 07:05:01');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_04_173148_create_admin_tables',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2017_07_17_040159_create_config_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'laraveladmindemo'
--

--
-- Dumping routines for database 'laraveladmindemo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-26 22:14:07
