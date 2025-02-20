CREATE DATABASE  IF NOT EXISTS `marketplace_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `marketplace_db`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: marketplace_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `Avaliacao`
--

DROP TABLE IF EXISTS `Avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Avaliacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nota` int NOT NULL,
  `comentario` varchar(150) NOT NULL,
  `servico` bigint NOT NULL,
  `cliente` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `servico` (`servico`),
  KEY `cliente` (`cliente`),
  CONSTRAINT `Avaliacao_ibfk_1` FOREIGN KEY (`servico`) REFERENCES `Servico` (`id`),
  CONSTRAINT `Avaliacao_ibfk_2` FOREIGN KEY (`cliente`) REFERENCES `Usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Avaliacao`
--

LOCK TABLES `Avaliacao` WRITE;
/*!40000 ALTER TABLE `Avaliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `Avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mensagem`
--

DROP TABLE IF EXISTS `Mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mensagem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `conteudo` text NOT NULL,
  `dataHora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remetente` bigint NOT NULL,
  `destinatario` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `remetente` (`remetente`),
  KEY `destinatario` (`destinatario`),
  CONSTRAINT `Mensagem_ibfk_1` FOREIGN KEY (`remetente`) REFERENCES `Usuario` (`id`),
  CONSTRAINT `Mensagem_ibfk_2` FOREIGN KEY (`destinatario`) REFERENCES `Usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mensagem`
--

LOCK TABLES `Mensagem` WRITE;
/*!40000 ALTER TABLE `Mensagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mensagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Servico`
--

DROP TABLE IF EXISTS `Servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Servico` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `descricao` varchar(10000) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `valorEstimado` decimal(10,2) NOT NULL,
  `prestador` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prestador` (`prestador`),
  CONSTRAINT `Servico_ibfk_1` FOREIGN KEY (`prestador`) REFERENCES `Usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Servico`
--

LOCK TABLES `Servico` WRITE;
/*!40000 ALTER TABLE `Servico` DISABLE KEYS */;
/*!40000 ALTER TABLE `Servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `tipo` enum('CLIENTE','PRESTADOR') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'marketplace_db'
--

--
-- Dumping routines for database 'marketplace_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-19  1:31:15
