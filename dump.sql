-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: dbApiEnquete
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `enquete`
--

DROP TABLE IF EXISTS `enquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquete` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `data_inicio` datetime NOT NULL,
  `data_termino` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquete`
--

LOCK TABLES `enquete` WRITE;
/*!40000 ALTER TABLE `enquete` DISABLE KEYS */;
INSERT INTO `enquete` VALUES (1,'Pergunta Teste 1','2024-05-01 10:00:00','2024-05-01 23:00:00');
/*!40000 ALTER TABLE `enquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opcao`
--

DROP TABLE IF EXISTS `opcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opcao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enquete_id` int DEFAULT NULL,
  `texto` varchar(255) NOT NULL,
  `contagem_votos` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_enquete_id` (`enquete_id`),
  CONSTRAINT `fk_enquete_id` FOREIGN KEY (`enquete_id`) REFERENCES `enquete` (`id`),
  CONSTRAINT `opcao_ibfk_1` FOREIGN KEY (`enquete_id`) REFERENCES `enquete` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opcao`
--

LOCK TABLES `opcao` WRITE;
/*!40000 ALTER TABLE `opcao` DISABLE KEYS */;
INSERT INTO `opcao` VALUES (1,1,'Opção A',0);
/*!40000 ALTER TABLE `opcao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-02 15:50:35
