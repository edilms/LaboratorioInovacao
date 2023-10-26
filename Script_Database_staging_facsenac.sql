CREATE DATABASE  IF NOT EXISTS `staging_facsenac` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `staging_facsenac`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: staging_facsenac
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `IdAluno` int DEFAULT NULL,
  `AnoIngresso` int DEFAULT NULL,
  `SemestreIngresso` int DEFAULT NULL,
  `Curso` int DEFAULT NULL,
  `Turno` text,
  `FormaIngresso` int DEFAULT NULL,
  `Bolsista` int DEFAULT NULL,
  `Idade` int DEFAULT NULL,
  `Sexo` text,
  `CondEconomica` int DEFAULT NULL,
  `Raca` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (1,2023,1,1,'M',1,1,19,'M',1,1),(2,2023,1,1,'V',2,0,37,'F',1,1),(11,2023,1,1,'V',2,0,26,'F',5,1),(13,2023,1,1,'V',2,1,17,'F',2,2),(15,2023,1,1,'M',1,1,19,'M',3,2),(19,2023,1,1,'M',1,1,53,'M',4,2),(27,2023,1,1,'V',2,0,26,'F',5,3),(31,2023,1,1,'M',1,1,19,'M',3,4),(35,2023,1,1,'V',2,0,20,'F',4,5),(37,2023,1,1,'M',1,0,20,'M',5,5),(5,2023,1,2,'M',1,1,19,'M',1,1),(6,2023,1,2,'V',2,0,37,'F',1,1),(12,2023,1,2,'V',2,0,26,'F',5,1),(14,2023,1,2,'V',2,1,17,'F',2,2),(17,2023,1,2,'M',1,1,19,'M',3,2),(21,2023,1,2,'M',1,1,53,'M',4,2),(28,2023,1,2,'V',2,0,26,'F',5,3),(32,2023,1,2,'M',1,1,19,'M',3,4),(36,2023,1,2,'V',2,0,20,'F',4,5),(39,2023,1,2,'M',1,0,20,'M',5,5),(81,2023,1,3,'M',1,1,19,'M',3,4),(84,2023,1,3,'V',2,0,20,'F',4,5),(85,2023,1,3,'V',2,0,20,'F',4,5),(86,2023,1,3,'M',1,0,20,'M',5,5),(88,2023,1,3,'M',1,0,20,'M',5,5),(41,2023,1,4,'M',1,1,19,'M',1,1),(42,2023,1,4,'V',2,0,37,'F',1,1),(51,2023,1,4,'V',2,0,26,'F',5,1),(53,2023,1,4,'V',2,1,17,'F',2,2),(55,2023,1,4,'M',1,1,19,'M',3,2),(59,2023,1,4,'M',1,1,53,'M',4,2),(67,2023,1,4,'V',2,0,26,'F',5,3),(71,2023,1,4,'M',1,1,19,'M',3,4),(75,2023,1,4,'V',2,0,20,'F',4,5),(77,2023,1,4,'M',1,0,20,'M',5,5),(45,2023,1,5,'M',1,1,19,'M',1,1),(46,2023,1,5,'V',2,0,37,'F',1,1),(52,2023,1,5,'V',2,0,26,'F',5,1),(54,2023,1,5,'V',2,1,17,'F',2,2),(57,2023,1,5,'M',1,1,19,'M',3,2),(61,2023,1,5,'M',1,1,53,'M',4,2),(68,2023,1,5,'V',2,0,26,'F',5,3),(72,2023,1,5,'M',1,1,19,'M',3,4),(76,2023,1,5,'V',2,0,20,'F',4,5),(79,2023,1,5,'M',1,0,20,'M',5,5),(3,2023,2,1,'M',3,1,33,'M',1,1),(4,2023,2,1,'V',3,0,22,'F',1,1),(9,2023,2,1,'M',3,0,33,'M',2,1),(16,2023,2,1,'V',1,0,40,'F',3,2),(20,2023,2,1,'V',2,1,40,'F',4,2),(23,2023,2,1,'M',3,1,44,'M',1,3),(25,2023,2,1,'M',3,1,18,'M',3,3),(29,2023,2,1,'V',2,0,32,'F',2,4),(33,2023,2,1,'V',3,0,19,'F',4,4),(38,2023,2,1,'M',3,1,21,'M',5,5),(7,2023,2,2,'M',3,1,33,'M',1,1),(8,2023,2,2,'V',3,0,22,'F',1,1),(10,2023,2,2,'M',3,0,33,'M',2,1),(18,2023,2,2,'V',1,0,40,'F',3,2),(22,2023,2,2,'V',2,1,40,'F',4,2),(24,2023,2,2,'M',3,1,44,'M',1,3),(26,2023,2,2,'M',3,1,18,'M',3,3),(30,2023,2,2,'V',2,0,32,'F',2,4),(34,2023,2,2,'V',3,0,19,'F',4,4),(40,2023,2,2,'M',3,1,21,'M',5,5),(82,2023,2,3,'V',3,0,19,'F',4,4),(83,2023,2,3,'V',3,0,19,'F',4,4),(87,2023,2,3,'M',3,1,21,'M',5,5),(89,2023,2,3,'M',3,1,21,'M',5,5),(43,2023,2,4,'M',3,1,33,'M',1,1),(44,2023,2,4,'V',3,0,22,'F',1,1),(49,2023,2,4,'M',3,0,33,'M',2,1),(56,2023,2,4,'V',1,0,40,'F',3,2),(60,2023,2,4,'V',2,1,40,'F',4,2),(63,2023,2,4,'M',3,1,44,'M',1,3),(65,2023,2,4,'M',3,1,18,'M',3,3),(69,2023,2,4,'V',2,0,32,'F',2,4),(73,2023,2,4,'V',3,0,19,'F',4,4),(78,2023,2,4,'M',3,1,21,'M',5,5),(47,2023,2,5,'M',3,1,33,'M',1,1),(48,2023,2,5,'V',3,0,22,'F',1,1),(50,2023,2,5,'M',3,0,33,'M',2,1),(58,2023,2,5,'V',1,0,40,'F',3,2),(62,2023,2,5,'V',2,1,40,'F',4,2),(64,2023,2,5,'M',3,1,44,'M',1,3),(66,2023,2,5,'M',3,1,18,'M',3,3),(70,2023,2,5,'V',2,0,32,'F',2,4),(74,2023,2,5,'V',3,0,19,'F',4,4),(80,2023,2,5,'M',3,1,21,'M',5,5);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-26 11:36:09
