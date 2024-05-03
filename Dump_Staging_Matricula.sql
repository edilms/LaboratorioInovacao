CREATE DATABASE  IF NOT EXISTS `staging_matricula` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `staging_matricula`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: staging_matricula
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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `Aluno` int DEFAULT NULL,
  `Sexo` text,
  `Cond. Econômica` int DEFAULT NULL,
  `Raça` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'M',1,'Branca'),(2,'F',1,'Branca'),(3,'M',1,'Branca'),(4,'F',1,'Branca'),(5,'M',1,'Branca'),(6,'F',1,'Branca'),(7,'M',1,'Branca'),(8,'F',1,'Branca'),(9,'M',2,'Branca'),(10,'M',2,'Branca'),(11,'F',5,'Branca'),(12,'F',5,'Branca'),(13,'F',2,'Preta'),(14,'F',2,'Preta'),(15,'M',3,'Preta'),(16,'F',3,'Preta'),(17,'M',3,'Preta'),(18,'F',3,'Preta'),(19,'M',4,'Preta'),(20,'F',4,'Preta'),(21,'M',4,'Preta'),(22,'F',4,'Preta'),(23,'M',1,'Amarela'),(24,'M',1,'Amarela'),(25,'M',3,'Amarela'),(26,'M',3,'Amarela'),(27,'F',5,'Amarela'),(28,'F',5,'Amarela'),(29,'F',2,'Parda'),(30,'F',2,'Parda'),(31,'M',3,'Parda'),(32,'M',3,'Parda'),(33,'F',4,'Parda'),(34,'F',4,'Parda'),(35,'F',4,'Indígena'),(36,'F',4,'Parda'),(37,'M',5,'Indígena'),(38,'M',5,'Indígena'),(39,'M',5,'Indígena'),(40,'M',5,'Indígena'),(41,'M',1,'Branca'),(42,'F',1,'Branca'),(43,'M',1,'Branca'),(44,'F',1,'Branca'),(45,'M',1,'Branca'),(46,'F',1,'Branca'),(47,'M',1,'Branca'),(48,'F',1,'Branca'),(49,'M',2,'Branca'),(50,'M',2,'Branca'),(51,'F',5,'Branca'),(52,'F',5,'Branca'),(53,'F',2,'Preta'),(54,'F',2,'Preta'),(55,'M',3,'Preta'),(56,'F',3,'Preta'),(57,'M',3,'Preta'),(58,'F',3,'Preta'),(59,'M',4,'Preta'),(60,'F',4,'Preta'),(61,'M',4,'Preta'),(62,'F',4,'Preta'),(63,'M',1,'Amarela'),(64,'M',1,'Amarela'),(65,'M',3,'Amarela'),(66,'M',3,'Amarela'),(67,'F',5,'Amarela'),(68,'F',5,'Amarela'),(69,'F',2,'Parda'),(70,'F',2,'Parda'),(71,'M',3,'Parda'),(72,'M',3,'Parda'),(73,'F',4,'Parda'),(74,'F',4,'Parda'),(75,'F',4,'Parda'),(76,'F',4,'Preta'),(77,'M',5,'Indígena'),(78,'M',5,'Preta'),(79,'M',5,'Indígena'),(80,'M',5,'Indígena'),(81,'M',3,'Parda'),(82,'F',4,'Parda'),(83,'F',4,'Parda'),(84,'F',4,'Indígena'),(85,'F',4,'Parda'),(86,'M',5,'Preta'),(87,'M',5,'Preta'),(88,'M',5,'Indígena'),(89,'M',5,'Indígena'),(90,'F',3,'Preta');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matriculas` (
  `Aluno` int DEFAULT NULL,
  `Ano Ingresso` int DEFAULT NULL,
  `Semestre Ingresso` int DEFAULT NULL,
  `Curso` text,
  `Turno` text,
  `Forma Ingresso` text,
  `Bolsista` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculas`
--

LOCK TABLES `matriculas` WRITE;
/*!40000 ALTER TABLE `matriculas` DISABLE KEYS */;
INSERT INTO `matriculas` VALUES (1,2023,1,'ADS','M','V',1),(2,2023,1,'ADS','N','V',0),(3,2023,2,'ADS','M','T',1),(4,2023,2,'ADS','N','T',0),(5,2023,1,'GTI','M','V',1),(6,2023,1,'GTI','N','V',0),(7,2023,2,'GTI','M','T',1),(8,2023,2,'GTI','N','V',0),(9,2023,2,'ADS','M','T',0),(10,2023,2,'GTI','M','T',0),(11,2023,1,'ADS','N','V',0),(12,2023,1,'GTI','N','V',0),(13,2023,1,'ADS','N','V',1),(14,2023,1,'GTI','N','V',1),(15,2023,1,'ADS','M','V',1),(16,2023,2,'ADS','N','V',0),(17,2023,1,'GTI','M','V',1),(18,2023,2,'GTI','N','V',0),(19,2023,1,'ADS','M','V',1),(20,2023,2,'ADS','N','V',1),(21,2023,1,'GTI','M','V',1),(22,2023,2,'GTI','N','V',1),(23,2023,2,'ADS','M','T',1),(24,2023,2,'GTI','M','T',1),(25,2023,2,'ADS','M','V',1),(26,2023,2,'GTI','M','T',1),(27,2023,1,'ADS','N','V',0),(28,2023,1,'GTI','N','V',0),(29,2023,2,'ADS','N','V',0),(30,2023,2,'GTI','N','V',0),(31,2023,1,'ADS','M','V',1),(32,2023,1,'GTI','M','V',1),(33,2023,2,'ADS','N','T',0),(34,2023,2,'GTI','N','T',0),(35,2023,1,'ADS','N','V',0),(36,2023,1,'GTI','N','V',0),(37,2023,1,'ADS','M','V',0),(38,2023,2,'ADS','M','T',1),(39,2023,1,'GTI','M','V',0),(40,2023,2,'GTI','M','T',1),(41,2023,1,'TSI','M','V',1),(42,2023,1,'TSI','N','V',0),(43,2023,2,'TSI','M','T',1),(44,2023,2,'TSI','N','T',0),(45,2023,1,'ADS','M','V',1),(46,2023,1,'ADS','N','V',0),(47,2023,2,'ADS','M','T',1),(48,2023,2,'ADS','N','V',0),(49,2023,2,'TSI','M','T',0),(50,2023,2,'ADS','M','T',0),(51,2023,1,'TSI','N','V',0),(52,2023,1,'ADS','N','V',0),(53,2023,1,'TSI','N','V',1),(54,2023,1,'ADS','N','V',1),(55,2023,1,'TSI','M','V',1),(56,2023,2,'TSI','N','V',0),(57,2023,1,'ADS','M','V',1),(58,2023,2,'ADS','N','V',0),(59,2023,1,'TSI','M','V',1),(60,2023,2,'TSI','N','V',1),(61,2023,1,'ADS','M','V',1),(62,2023,2,'ADS','N','V',1),(63,2023,2,'TSI','M','T',1),(64,2023,2,'ADS','M','T',1),(65,2023,2,'TSI','M','V',1),(66,2023,2,'ADS','M','T',1),(67,2023,1,'TSI','N','V',0),(68,2023,1,'ADS','N','V',0),(69,2023,2,'TSI','N','V',0),(70,2023,2,'ADS','N','V',0),(71,2023,1,'TSI','M','V',1),(72,2023,1,'ADS','M','V',1),(73,2023,2,'TSI','N','T',0),(74,2023,2,'ADS','N','T',0),(75,2023,1,'TSI','N','V',0),(76,2023,1,'ADS','N','V',0),(77,2023,1,'TSI','M','V',0),(78,2023,2,'TSI','M','T',1),(79,2023,1,'ADS','M','V',0),(80,2023,2,'ADS','M','T',1),(81,2023,1,'TCD','M','V',1),(82,2023,2,'TCD','N','T',0),(83,2023,2,'TCD','N','T',0),(84,2023,1,'TCD','N','V',0),(85,2023,1,'TCD','N','V',0),(86,2023,1,'TCD','M','V',0),(87,2023,2,'TCD','M','T',1),(88,2023,1,'TCD','M','V',0),(89,2023,2,'TCD','M','T',1),(90,2023,2,'TCD','M','T',1);
/*!40000 ALTER TABLE `matriculas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-03 10:56:17
