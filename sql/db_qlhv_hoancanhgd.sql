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
-- Table structure for table `hoancanhgd`
--

DROP TABLE IF EXISTS `hoancanhgd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoancanhgd` (
  `MaHCGD` int NOT NULL AUTO_INCREMENT,
  `MaHV` varchar(15) DEFAULT NULL,
  `Nam` int NOT NULL,
  `MatChongVo` bit(1) DEFAULT NULL,
  `LyHon` bit(1) DEFAULT NULL,
  `NuoiConMotMinh` bit(1) DEFAULT NULL,
  `HoNgheo` bit(1) DEFAULT NULL,
  `HoCanNgheo` bit(1) DEFAULT NULL,
  `BenhAnBanThan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `BenhAnConCai` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NhaCua` bit(1) DEFAULT NULL,
  `VoChong` bit(1) DEFAULT NULL,
  PRIMARY KEY (`MaHCGD`),
  KEY `MaHV` (`MaHV`),
  CONSTRAINT `HoanCanhGD_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `hoivien` (`MaHV`),
  CONSTRAINT `HoanCanhGD_ibfk_2` FOREIGN KEY (`MaHV`) REFERENCES `hoivien` (`MaHV`),
  CONSTRAINT `HoanCanhGD_ibfk_3` FOREIGN KEY (`MaHV`) REFERENCES `hoivien` (`MaHV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoancanhgd`
--

LOCK TABLES `hoancanhgd` WRITE;
/*!40000 ALTER TABLE `hoancanhgd` DISABLE KEYS */;
/*!40000 ALTER TABLE `hoancanhgd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:02
