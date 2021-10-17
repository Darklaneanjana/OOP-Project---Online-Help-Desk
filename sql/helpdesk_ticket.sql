-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: helpdesk
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `assignedTo` varchar(255) DEFAULT NULL,
  `priority` int DEFAULT '0',
  `status_id` int DEFAULT '0',
  `client_id` int NOT NULL,
  `Impact` int DEFAULT NULL,
  `Urgency` int DEFAULT NULL,
  `OperatCat` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `issueType` int DEFAULT '0',
  `uid` int NOT NULL DEFAULT '0',
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (54,'title','des1',NULL,4,0,1,1,NULL,1,'2021-09-29 20:21:51',NULL,3,1,0),(55,'title','des1',NULL,4,0,1,1,NULL,1,'2021-09-29 20:23:39',NULL,3,1,0),(56,'title','des1',NULL,4,0,1,1,NULL,1,'2021-09-29 20:28:50',NULL,3,1,0),(57,'title','des1',NULL,4,0,1,1,NULL,1,'2021-09-29 20:30:04',NULL,3,1,0),(58,'title','des1',NULL,4,0,1,1,NULL,1,'2021-09-29 20:30:38',NULL,3,1,0),(59,'title','des1',NULL,4,0,1,1,NULL,1,'2021-09-29 20:37:21',NULL,3,1,0),(60,'title 60','description 60',NULL,3,0,1,3,NULL,3,'2021-09-29 20:43:39',NULL,3,1,0),(61,'title','des1',NULL,4,0,1,1,NULL,1,'2021-09-29 20:43:44',NULL,3,1,0),(62,'title','des1',NULL,4,0,1,1,NULL,1,'2021-09-29 20:43:46',NULL,3,1,0),(63,'title','des1',NULL,4,0,1,1,NULL,1,'2021-09-29 20:49:23',NULL,3,1,0),(64,'title','des1',NULL,4,0,1,1,NULL,1,'2021-09-30 18:14:12',NULL,3,1,0),(65,'title','des1',NULL,4,0,1,1,NULL,1,'2021-09-30 22:01:14',NULL,3,1,0),(66,'df','df',NULL,1,0,1,1,NULL,2,'2021-10-08 05:17:57',NULL,3,1,0),(67,'title1','description 1 edited',NULL,1,0,1,1,NULL,1,'2021-10-09 19:24:14',NULL,0,1,0),(68,'title1','des1 dd',NULL,1,0,1,1,NULL,1,'2021-10-09 19:24:41',NULL,0,1,0),(69,'test 55','fdfdfdf',NULL,2,0,1,3,NULL,4,'2021-10-09 19:44:51',NULL,0,1,0),(70,'title hehehe','hehehehe',NULL,3,0,1,3,NULL,5,'2021-10-11 22:02:08',NULL,0,1,0),(71,'dddddddddddddd','dddddddddddddd',NULL,2,0,2,4,NULL,4,'2021-10-12 06:42:50',NULL,0,1,0),(72,'nnnnnnnnnnnnnnn','nnnnnnnnnnnnnn',NULL,2,0,2,2,NULL,2,'2021-10-12 06:51:59',NULL,2,1,0),(73,'pppppppppppp','ppppppppppppp',NULL,2,0,2,3,NULL,3,'2021-10-12 06:58:37',NULL,5,1,0),(74,'dfffffffffffffff','ffffffffffffffffffffffffffffffffff\r\nddddddddddddddddddddddd\r\ndddddddddddddddddddd\r\nddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',NULL,2,0,2,4,NULL,3,'2021-10-12 07:07:26',NULL,2,1,0),(75,'dfffffffffffffff','hello how are you',NULL,2,0,2,4,NULL,3,'2021-10-12 07:08:13',NULL,2,1,0),(76,'fgdfg','dfgfdg',NULL,2,0,2,3,NULL,4,'2021-10-12 07:54:12',NULL,4,0,0),(77,'dfdgfdgfg','gdfg',NULL,2,0,2,2,NULL,3,'2021-10-12 07:55:24',NULL,3,0,0),(78,'dd','dd',NULL,2,0,1,4,NULL,1,'2021-10-12 08:07:49',NULL,4,0,0),(79,'xxxx','xxx',NULL,2,0,2,5,NULL,3,'2021-10-12 08:18:30',NULL,4,0,0),(80,'sdfsdf','sdfsdf',NULL,2,0,2,1,NULL,1,'2021-10-12 08:19:42',NULL,4,0,1),(81,'','',NULL,1,0,2,2,NULL,9,'2021-10-13 01:54:00',NULL,3,0,0),(82,'dfdfdf','fdfdf',NULL,4,0,2,6,NULL,3,'2021-10-14 07:46:05',NULL,4,0,0),(83,'dfdf','dfdf',NULL,4,0,2,5,NULL,7,'2021-10-14 07:48:50',NULL,3,0,0),(84,'title hello world','this is description',NULL,4,0,2,5,NULL,3,'2021-10-14 08:13:31',NULL,3,0,0),(87,'this is the proper title','descririr',NULL,4,0,2,5,NULL,5,'2021-10-14 14:04:05','2021-10-14 14:06:51',4,0,1);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-17 11:41:59
