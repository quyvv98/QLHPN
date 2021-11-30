-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: db_qlhv
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `lichsudanhhieu`
--

DROP TABLE IF EXISTS `lichsudanhhieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lichsudanhhieu` (
  `MaLSDH` int NOT NULL AUTO_INCREMENT,
  `MaDH` int DEFAULT NULL,
  `MaHV` varchar(15) DEFAULT NULL,
  `NgayQD` date DEFAULT NULL,
  PRIMARY KEY (`MaLSDH`),
  KEY `MaHV` (`MaHV`),
  KEY `MaDH` (`MaDH`),
  CONSTRAINT `LichSuDanhHieu_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `hoivien` (`MaHV`),
  CONSTRAINT `LichSuDanhHieu_ibfk_2` FOREIGN KEY (`MaDH`) REFERENCES `danhhieu` (`MaDH`),
  CONSTRAINT `LichSuDanhHieu_ibfk_3` FOREIGN KEY (`MaHV`) REFERENCES `hoivien` (`MaHV`),
  CONSTRAINT `LichSuDanhHieu_ibfk_4` FOREIGN KEY (`MaDH`) REFERENCES `danhhieu` (`MaDH`),
  CONSTRAINT `LichSuDanhHieu_ibfk_5` FOREIGN KEY (`MaHV`) REFERENCES `hoivien` (`MaHV`),
  CONSTRAINT `LichSuDanhHieu_ibfk_6` FOREIGN KEY (`MaDH`) REFERENCES `danhhieu` (`MaDH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichsudanhhieu`
--

LOCK TABLES `lichsudanhhieu` WRITE;
/*!40000 ALTER TABLE `lichsudanhhieu` DISABLE KEYS */;
/*!40000 ALTER TABLE `lichsudanhhieu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:00
