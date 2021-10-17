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
-- Table structure for table `knowledgebase`
--

DROP TABLE IF EXISTS `knowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knowledgebase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` int DEFAULT '0',
  `title` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledgebase`
--

LOCK TABLES `knowledgebase` WRITE;
/*!40000 ALTER TABLE `knowledgebase` DISABLE KEYS */;
INSERT INTO `knowledgebase` VALUES (2,2,'how to make your pc faster','2021-10-10 07:36:18','2021-10-14 07:07:37','<h3>1 restart your pc</h3><p>try restart</p>'),(3,3,'Use Django in Visual Studio Code','2021-10-10 08:25:20','2021-10-14 07:16:28','<h4>Create a project environment</h4><p>In this section, you create a virtual environment in which Django is installed. Using a virtual environment avoids installing Django into a global Python environment and gives you exact control over the libraries used in an application.</p><h4>Create and run a minimal Django</h4><p>To create a minimal Django app, then, it\'s necessary to first create the Django project to serve as the container for the app, then create the app itself. For both purposes, you use the Django administrative utility, django-admin, which is installed when you install the Django package.</p>'),(4,2,'Import a table from PDF into Excel','2021-10-12 23:44:22','2021-10-14 07:08:08','<h3>Step 1: Open the relevant PDF file and select and copy table</h3> <p>To copy the table, click on Select and click and drag the cursor to highlight the whole table. Then press Ctrl C (to copy this).</p> <h3>Step 2: Copy this into Word and convert to a table</h3> <p>Now convert this into a table by highlighting it all (you can easily do this by pressing Ctrl A) and selecting Table > Convert > Text to Table. A dialogue box will pop up and under Separate Text at, you should select Other and click in the little box next to it; delete what is there and type in a space. Press OK.</p> '),(6,2,'My Laptop is slow','2021-10-14 06:48:39','2021-10-14 06:52:50','<h3>Update your computer</h3> <p>Updating your computer will usually help it run faster. In some cases, you may add new features, programs, or installations that have the reverse effect.</p> <h3>Shut down and/or restart your computer regularly</h3> <p>Many consumers make the mistake of leaving their computer in a hibernating mode whenever they are not using it, instead of shutting it down all the way.</p> '),(7,2,'Download and install Windows 11','2021-10-14 07:10:02','2021-10-14 07:55:36','<h3>Step 1: Open the relevant PDF file and select and copy table</h3> <p>To copy the table, click on Select and click and drag the cursor to highlight the whole table. Then press Ctrl C (to copy this).</p> <h3>Step 2: Copy this into Word and convert to a table</h3> <p>Now convert this into a table by highlighting it all (you can easily do this by pressing Ctrl A) and selecting Table > Convert > Text to Table. A dialogue box will pop up and under Separate Text at, you should select Other and click in the little box next to it; delete what is there and type in a space. Press OK.</p> ');
/*!40000 ALTER TABLE `knowledgebase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-17 11:42:00
