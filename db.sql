-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: WebBanHang_development
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2019-05-11 15:42:53','2019-05-11 15:42:53');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `generic_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_generic_category_id` (`generic_category_id`),
  CONSTRAINT `fk_rails_d05b8666c6` FOREIGN KEY (`generic_category_id`) REFERENCES `generic_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (3,'Mobile Phones','2019-05-11 15:56:15','2019-05-11 15:56:15',1),(4,'Laptops','2019-05-11 16:06:43','2019-05-11 16:06:43',1),(5,'Desktops','2019-05-11 16:07:15','2019-05-11 16:07:15',1),(6,'Cameras','2019-05-11 16:12:10','2019-05-11 16:12:10',1),(7,'TV & Home Audio','2019-05-11 16:13:01','2019-05-11 16:13:01',1),(8,'MP3 Players','2019-05-11 16:13:23','2019-05-11 16:13:23',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_categories`
--

DROP TABLE IF EXISTS `generic_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_categories`
--

LOCK TABLES `generic_categories` WRITE;
/*!40000 ALTER TABLE `generic_categories` DISABLE KEYS */;
INSERT INTO `generic_categories` VALUES (1,'Electronics','2019-05-11 15:50:20','2019-05-11 15:50:20');
/*!40000 ALTER TABLE `generic_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'Apple','2019-05-11 15:52:19','2019-05-11 15:52:19'),(2,'Canon','2019-05-11 16:17:11','2019-05-11 16:17:11'),(3,'Hewlett-Packard','2019-05-11 16:18:54','2019-05-11 16:18:54'),(4,'HTC','2019-05-11 16:19:04','2019-05-11 16:19:04'),(5,'Palm','2019-05-11 16:19:13','2019-05-11 16:19:13'),(6,'Sony','2019-05-11 16:19:21','2019-05-11 16:19:21'),(7,'Samsung','2019-05-11 16:19:33','2019-05-11 16:19:33'),(8,'Oppo','2019-05-11 16:19:40','2019-05-11 16:19:40');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_details_on_order_id` (`order_id`),
  KEY `index_order_details_on_product_id` (`product_id`),
  CONSTRAINT `fk_rails_4f2ac9473b` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `fk_rails_e5976611fd` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `ship_name` varchar(255) DEFAULT NULL,
  `ship_address` varchar(255) DEFAULT NULL,
  `ship_address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `shipper` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `is_shipped?` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_orders_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_f868b47f6a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `cart_desc` varchar(255) DEFAULT NULL,
  `short_desc` varchar(255) DEFAULT NULL,
  `long_desc` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `old_price` varchar(255) DEFAULT NULL,
  `manufacturer_id` bigint(20) DEFAULT NULL,
  `mini_image` varchar(255) DEFAULT NULL,
  `big_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_products_on_category_id` (`category_id`),
  KEY `index_products_on_manufacturer_id` (`manufacturer_id`),
  CONSTRAINT `fk_rails_33082c31de` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`),
  CONSTRAINT `fk_rails_fb915499a4` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'Điện thoại Iphone 6plus 32GB',12000000,NULL,'','','','iphone6plus',3,NULL,'2019-05-11 16:37:16','2019-05-11 17:44:01','',NULL,'iphone6plusm','iphone6plusb'),(4,'Điện thoại iPhone XR 64gb',22000000,NULL,'','','','iphonexr.jpeg',3,NULL,'2019-05-11 16:39:59','2019-05-11 17:44:17','',1,'iphonexrm.jpeg','iphonexrb.jpeg'),(5,'Điện thoại iPhone 8 Plus 64GB',14850000,NULL,'','','','iphone8plus.jpeg',3,NULL,'2019-05-11 16:41:24','2019-05-11 17:44:30','',1,'iphone8plusm.jpeg','iphone8plusb.jpeg'),(6,'Điện Thoại iPhone 7 32GB',7520000,NULL,'','','','iphone7.jpeg',3,NULL,'2019-05-11 16:44:38','2019-05-11 17:44:43','',1,'iphone7m.jpeg','iphone7b.jpeg'),(7,'Điện Thoại iPhone X 64GB',16890000,NULL,'','','','iphonex.jpeg',3,NULL,'2019-05-11 16:47:20','2019-05-11 17:44:55','',1,'iphonexm.jpeg','iphonexb.jpeg'),(8,'Điện Thoại Oppo 9009',7850000,NULL,'','','','oppo9009.jpeg',3,NULL,'2019-05-11 16:48:13','2019-05-11 17:45:14','',8,'oppo9009m.jpeg','oppo9009b.jpeg'),(10,'Điện Thoại Oppo A3s 32GB',3890000,NULL,'','','','oppoa3s.jpeg',3,NULL,'2019-05-11 16:51:22','2019-05-11 17:45:33','',8,'oppoa3sm.jpeg','oppoa3sb.jpeg'),(11,'Điện Thoại Oppo A7 Chính Hãng',4590000,NULL,'','','','oppoa7.jpeg',3,NULL,'2019-05-11 16:53:11','2019-05-11 17:45:48','',8,'oppoa7m.jpeg','oppoa7b.jpeg'),(12,'Điện Thoại Oppo F5 Chính Hãng',2980000,NULL,'','','','oppof5.jpeg',3,NULL,'2019-05-11 16:54:02','2019-05-11 17:46:06','',8,'oppof5m.jpeg','oppof5b.jpeg'),(13,'Điện Thoại Oppo F9 Chính Hãng',6570000,NULL,'','','','oppof9.jpeg',3,NULL,'2019-05-11 16:54:39','2019-05-11 17:46:21','',8,'oppof9m.jpeg','oppof9b.jpeg'),(14,'Điện Thoại Oppo F11 64GB Chính Hãng ',8760000,NULL,'','','','oppof11.jpeg',3,NULL,'2019-05-11 16:55:28','2019-05-11 17:46:33','',8,'oppof11m.jpeg','oppof11b.jpeg'),(15,'Điện Thoại Samsung Galaxy A6 Chính Hãng',3290000,NULL,'','','','ssa6.jpeg',3,NULL,'2019-05-11 16:57:07','2019-05-11 17:46:43','',7,'ssa6m.jpeg','ssa6b.jpeg'),(16,'Điện Thoại Samsung Galaxy A8 Star Chính Hãng',4830000,NULL,'','','','ssa8star.jpeg',3,NULL,'2019-05-11 16:57:39','2019-05-11 17:47:00','',7,'ssa8starm.jpeg','ssa8starb.jpeg'),(17,'Điện Thoại Samsung Galaxy A9 Chính Hãng',6320000,NULL,'','','','ssa9.jpeg',3,NULL,'2019-05-11 16:58:16','2019-05-11 17:47:12','',7,'ssa9m.jpeg','ssa9b.jpeg'),(18,'Điện Thoại Samsung Galaxy A20 64Gb Chính Hãng',9890000,NULL,'','','','ssa20.jpeg',3,NULL,'2019-05-11 16:58:55','2019-05-11 17:47:22','',7,'ssa20m.jpeg','ssa20b.jpeg'),(19,'Điện Thoại HTC One X10',7820000,NULL,'','','','htcx10.jpeg',3,NULL,'2019-05-11 17:00:40','2019-05-11 17:47:32','',4,'htcx10m.jpeg','htcx10b.jpeg'),(20,'Điện Thoại HTC One M9 Plus 32GB Chính Hãng',6970000,NULL,'','','','htcm9.jpeg',3,NULL,'2019-05-11 17:05:11','2019-05-11 17:47:42','',4,'htcm9m.jpeg','htcm9b.jpeg'),(21,'Điện Thoại HTC One M8 32GB Chính Hãng',3970000,NULL,'','','','htcm8.jpeg',3,NULL,'2019-05-11 17:07:11','2019-05-11 17:47:52','',4,'htcm8m.jpeg','htcm8b.jpeg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20190511133410'),('20190511133416'),('20190511133423'),('20190511133556'),('20190511134208'),('20190511144240'),('20190511145549'),('20190511145600'),('20190511151810'),('20190511151857'),('20190511155924'),('20190511170125'),('20190511170240');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,'Samsung','2019-05-11 16:01:54','2019-05-11 16:01:54'),(2,'Iphone','2019-05-11 16:01:59','2019-05-11 16:01:59'),(3,'HTC','2019-05-11 16:20:40','2019-05-11 16:20:40'),(4,'Canon','2019-05-11 16:20:59','2019-05-11 16:20:59'),(5,'Palm','2019-05-11 16:21:08','2019-05-11 16:21:08'),(6,'Sony','2019-05-11 16:21:11','2019-05-11 16:21:11'),(7,'Hewlett-Packard','2019-05-11 16:21:26','2019-05-11 16:21:26'),(8,'Oppo','2019-05-11 16:21:52','2019-05-11 16:21:52');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-12  0:52:21
