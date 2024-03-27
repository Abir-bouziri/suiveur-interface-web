-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `makerlabs`
--

DROP TABLE IF EXISTS `makerlabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makerlabs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Score` int NOT NULL,
  `end` time DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `ch1` tinyint NOT NULL,
  `ch2` tinyint NOT NULL,
  `ch3` tinyint NOT NULL,
  `ch4` tinyint NOT NULL,
  `ch5` tinyint NOT NULL,
  `ch6` tinyint NOT NULL,
  `ch7` tinyint NOT NULL,
  `ch8` tinyint NOT NULL,
  `start` time DEFAULT NULL,
  `ch9` tinyint NOT NULL,
  `robotname` varchar(45) NOT NULL,
  `robotuser` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `robot's name_UNIQUE` (`robotname`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makerlabs`
--

LOCK TABLES `makerlabs` WRITE;
/*!40000 ALTER TABLE `makerlabs` DISABLE KEYS */;
INSERT INTO `makerlabs` VALUES (1,2665,'09:00:00',NULL,1,1,1,1,1,1,1,1,'00:00:00',1,'chabrouch','tt'),(2,140,'09:00:00',NULL,0,0,0,0,0,0,0,0,NULL,1,'delta','trrr'),(3,15616516,'09:00:00',NULL,1,1,1,1,1,1,0,0,NULL,1,'test  ','test'),(4,6000,'09:00:00',NULL,0,0,0,0,0,0,0,0,NULL,1,'sandouk','hmm'),(6,16464666,'09:00:00',NULL,1,1,1,1,1,1,1,1,NULL,1,'testou','aada'),(7,72222,'09:00:00',NULL,1,0,0,0,0,0,0,0,NULL,1,'yasidi','yaaaa'),(8,84455,'09:00:00',NULL,0,0,0,0,0,0,0,0,NULL,1,'abir','abour'),(9,1456,'09:00:00',NULL,1,1,0,1,1,1,1,1,NULL,1,'aaaaaaa','aaa'),(10,45646,'09:00:00',NULL,1,1,1,1,1,0,0,0,NULL,0,'rob1','fef'),(11,611,'09:00:00',NULL,1,1,1,1,1,0,0,1,NULL,0,'rob2','ff'),(12,4136,'09:00:00',NULL,1,1,1,1,1,1,0,0,NULL,0,'rob3','ss'),(13,555555555,'09:00:00',NULL,1,1,1,1,1,1,1,1,NULL,1,'malek','ss'),(14,611,'10:00:00',NULL,1,1,1,0,0,0,0,0,NULL,1,'abourr','abour'),(15,555555555,'12:00:00',NULL,1,1,1,0,0,0,0,0,NULL,1,'oumaima','bgerhjgjer');
/*!40000 ALTER TABLE `makerlabs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-21 21:00:50
