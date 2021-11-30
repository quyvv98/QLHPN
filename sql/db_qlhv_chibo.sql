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
-- Table structure for table `chibo`
--

DROP TABLE IF EXISTS `chibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chibo` (
  `MaCB` int NOT NULL AUTO_INCREMENT,
  `TenCB` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NamBatDau` int DEFAULT NULL,
  `NamKetThuc` int DEFAULT NULL,
  PRIMARY KEY (`MaCB`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chibo`
--

LOCK TABLES `chibo` WRITE;
/*!40000 ALTER TABLE `chibo` DISABLE KEYS */;
INSERT INTO `chibo` VALUES (1,'Chi uỷ viên',2020,NULL),(2,'Phó bí thư',2020,NULL),(3,'Bí thư',2020,NULL),(4,'Chi uỷ viên',2020,NULL);
/*!40000 ALTER TABLE `chibo` ENABLE KEYS */;
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
https://stackoverflow.com/questions/22381577/mysql-workbench-how-to-export-mysql-database-to-sql-file/60912767


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
-- Table structure for table `chucdanh`
--

DROP TABLE IF EXISTS `chucdanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chucdanh` (
  `MaCD` int NOT NULL AUTO_INCREMENT,
  `TenCD` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaCD`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucdanh`
--

LOCK TABLES `chucdanh` WRITE;
/*!40000 ALTER TABLE `chucdanh` DISABLE KEYS */;
INSERT INTO `chucdanh` VALUES (1,'CN Khoa'),(2,'Phó CN Khoa'),(3,'CN Bộ môn'),(4,'Phó CN Bộ môn'),(5,'Trưởng phòng'),(6,'Phó trưởng phòng'),(7,'Trưởng ban và tương đương'),(8,'Phó trưởng ban và tương đương'),(9,'Trợ lý'),(10,'Văn thư'),(11,'Kỹ thuật viên hướng dẫn TH, TN'),(12,'Nhân viên'),(13,'Bếp trưởng'),(14,'Giáo viên');
/*!40000 ALTER TABLE `chucdanh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:03
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
-- Table structure for table `capbac`
--

DROP TABLE IF EXISTS `capbac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capbac` (
  `MaCB` int NOT NULL AUTO_INCREMENT,
  `TenCB` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaCB`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capbac`
--

LOCK TABLES `capbac` WRITE;
/*!40000 ALTER TABLE `capbac` DISABLE KEYS */;
INSERT INTO `capbac` VALUES (1,'Hạ sĩ'),(2,'Trung sĩ'),(3,'Thượng sĩ'),(4,'Thiếu uý'),(5,'Trung uý'),(6,'Thượng uý'),(7,'Đại uý'),(8,'Thiếu tá'),(9,'Trung tá'),(10,'Thượng tá'),(11,'Đại tá'),(12,'Thiếu tướng'),(13,'Trung tướng'),(14,'Thượng tướng'),(15,'Đại tướng');
/*!40000 ALTER TABLE `capbac` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:01
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
-- Table structure for table `caplaimatkhau`
--

DROP TABLE IF EXISTS `caplaimatkhau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caplaimatkhau` (
  `MaCLMK` int NOT NULL AUTO_INCREMENT,
  `TenDN` varchar(25) DEFAULT NULL,
  `MaHV` varchar(15) DEFAULT NULL,
  `Code` int NOT NULL,
  `TinhTrang` bit(1) NOT NULL,
  `EditTime` datetime NOT NULL,
  PRIMARY KEY (`MaCLMK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caplaimatkhau`
--

LOCK TABLES `caplaimatkhau` WRITE;
/*!40000 ALTER TABLE `caplaimatkhau` DISABLE KEYS */;
/*!40000 ALTER TABLE `caplaimatkhau` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:01
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
-- Table structure for table `congdoan`
--

DROP TABLE IF EXISTS `congdoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `congdoan` (
  `MaCD` int NOT NULL AUTO_INCREMENT,
  `TenCD` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaCD`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congdoan`
--

LOCK TABLES `congdoan` WRITE;
/*!40000 ALTER TABLE `congdoan` DISABLE KEYS */;
INSERT INTO `congdoan` VALUES (1,'Công Đoàn d1'),(2,'Công Đoàn d3'),(3,'Công Đoàn K12'),(4,'Công Đoàn P1'),(5,'Công Đoàn P8');
/*!40000 ALTER TABLE `congdoan` ENABLE KEYS */;
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
-- Table structure for table `danguy`
--

DROP TABLE IF EXISTS `danguy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danguy` (
  `MaVTDU` int NOT NULL AUTO_INCREMENT,
  `TenVTDU` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NamBatDau` int DEFAULT NULL,
  `NamKetThuc` int DEFAULT NULL,
  PRIMARY KEY (`MaVTDU`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danguy`
--

LOCK TABLES `danguy` WRITE;
/*!40000 ALTER TABLE `danguy` DISABLE KEYS */;
INSERT INTO `danguy` VALUES (1,'Đảng uỷ viên',2015,2020);
/*!40000 ALTER TABLE `danguy` ENABLE KEYS */;
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
-- Table structure for table `dangvien`
--

DROP TABLE IF EXISTS `dangvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dangvien` (
  `MaLDV` int NOT NULL AUTO_INCREMENT,
  `TenLDV` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaLDV`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangvien`
--

LOCK TABLES `dangvien` WRITE;
/*!40000 ALTER TABLE `dangvien` DISABLE KEYS */;
INSERT INTO `dangvien` VALUES (1,'Đảng viên'),(2,'Đảng viên mới kết nạp (Đảng viên dự bị)'),(3,'Đảng viên đang đề xuất kết nạp'),(4,'Đảng viên chưa kết nạp và chưa trong danh sách đề xuất kết nạp');
/*!40000 ALTER TABLE `dangvien` ENABLE KEYS */;
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
-- Table structure for table `danhhieu`
--

DROP TABLE IF EXISTS `danhhieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danhhieu` (
  `MaDH` int NOT NULL AUTO_INCREMENT,
  `TenDH` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaDH`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhhieu`
--

LOCK TABLES `danhhieu` WRITE;
/*!40000 ALTER TABLE `danhhieu` DISABLE KEYS */;
INSERT INTO `danhhieu` VALUES (1,'Trợ giảng'),(2,'Giảng viên'),(3,'Giảng viên chính'),(4,'Phó GS'),(5,'GS'),(6,'GS');
/*!40000 ALTER TABLE `danhhieu` ENABLE KEYS */;
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
-- Table structure for table `donvi`
--

DROP TABLE IF EXISTS `donvi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donvi` (
  `MaDV` int NOT NULL AUTO_INCREMENT,
  `TenDV` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  PRIMARY KEY (`MaDV`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donvi`
--

LOCK TABLES `donvi` WRITE;
/*!40000 ALTER TABLE `donvi` DISABLE KEYS */;
INSERT INTO `donvi` VALUES (1,'P1','2021-11-30 21:43:06'),(2,'P2','2021-11-30 21:43:06'),(3,'P3','2021-11-30 21:43:06'),(4,'P4','2021-11-30 21:43:06'),(5,'P5','2021-11-30 21:43:06'),(6,'P6','2021-11-30 21:43:06'),(7,'P7','2021-11-30 21:43:06'),(8,'P8','2021-11-30 21:43:06'),(9,'P9','2021-11-30 21:43:06'),(10,'P10','2021-11-30 21:43:06'),(11,'P11','2021-11-30 21:43:06'),(12,'P12','2021-11-30 21:43:06'),(13,'P13','2021-11-30 21:43:06'),(14,'TT CNTT','2021-11-30 21:43:06'),(15,'K11','2021-11-30 21:43:06'),(16,'K12','2021-11-30 21:43:06'),(17,'K13','2021-11-30 21:43:06'),(18,'K21','2021-11-30 21:43:06'),(19,'K22','2021-11-30 21:43:06'),(20,'K23','2021-11-30 21:43:06'),(21,'K24','2021-11-30 21:43:06'),(22,'K31','2021-11-30 21:43:06'),(23,'K32','2021-11-30 21:43:06'),(24,'K51','2021-11-30 21:43:06'),(25,'K52','2021-11-30 21:43:06'),(26,'K6','2021-11-30 21:43:06'),(27,'K7','2021-11-30 21:43:06'),(28,'V1','2021-11-30 21:43:06'),(29,'V2','2021-11-30 21:43:06'),(30,'V3','2021-11-30 21:43:06'),(31,'TTCN','2021-11-30 21:43:06'),(32,'TTHL 125','2021-11-30 21:43:06'),(33,'H3','2021-11-30 21:43:06'),(34,'H4','2021-11-30 21:43:06'),(35,'H5','2021-11-30 21:43:06'),(36,'d1','2021-11-30 21:43:06'),(37,'d2','2021-11-30 21:43:06'),(38,'d3','2021-11-30 21:43:06'),(39,'d4','2021-11-30 21:43:06');
/*!40000 ALTER TABLE `donvi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:01
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
-- Table structure for table `hoiphunu`
--

DROP TABLE IF EXISTS `hoiphunu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoiphunu` (
  `MaHPN` int NOT NULL AUTO_INCREMENT,
  `TenHPN` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaHPN`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoiphunu`
--

LOCK TABLES `hoiphunu` WRITE;
/*!40000 ALTER TABLE `hoiphunu` DISABLE KEYS */;
INSERT INTO `hoiphunu` VALUES (1,'HPN d1'),(2,'HPN d3'),(3,'HPN K12'),(4,'HPN P1 và P12'),(5,'HPN P6, P8 và TT CNTT');
/*!40000 ALTER TABLE `hoiphunu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:03
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
-- Table structure for table `loaidetaikhoahoc`
--

DROP TABLE IF EXISTS `loaidetaikhoahoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaidetaikhoahoc` (
  `MaLoaiLDST` int NOT NULL AUTO_INCREMENT,
  `TenLoaiLDST` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaLoaiLDST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaidetaikhoahoc`
--

LOCK TABLES `loaidetaikhoahoc` WRITE;
/*!40000 ALTER TABLE `loaidetaikhoahoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `loaidetaikhoahoc` ENABLE KEYS */;
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
-- Table structure for table `loaihoivien`
--

DROP TABLE IF EXISTS `loaihoivien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaihoivien` (
  `MaLHV` int NOT NULL AUTO_INCREMENT,
  `TenLHV` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaLHV`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaihoivien`
--

LOCK TABLES `loaihoivien` WRITE;
/*!40000 ALTER TABLE `loaihoivien` DISABLE KEYS */;
INSERT INTO `loaihoivien` VALUES (1,'Sĩ quan'),(2,'Quân nhân chuyên nghiệp'),(3,'Công nhân viên Quốc phòng'),(4,'Lao động hợp đồng'),(5,'Học viên');
/*!40000 ALTER TABLE `loaihoivien` ENABLE KEYS */;
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
-- Table structure for table `tochucdoanthe`
--

DROP TABLE IF EXISTS `tochucdoanthe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tochucdoanthe` (
  `MaVTDT` int NOT NULL AUTO_INCREMENT,
  `TenVTDT` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NamBatDau` int DEFAULT NULL,
  `NamKetThuc` int DEFAULT NULL,
  PRIMARY KEY (`MaVTDT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tochucdoanthe`
--

LOCK TABLES `tochucdoanthe` WRITE;
/*!40000 ALTER TABLE `tochucdoanthe` DISABLE KEYS */;
INSERT INTO `tochucdoanthe` VALUES (1,'Phó bí thư đoàn',2021,NULL);
/*!40000 ALTER TABLE `tochucdoanthe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:01
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
-- Table structure for table `hoivien`
--

DROP TABLE IF EXISTS `hoivien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoivien` (
  `MaHV` varchar(15) NOT NULL,
  `TenHV` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` bit(1) NOT NULL,
  `DanToc` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `NamNhapNgu` int DEFAULT NULL,
  `BacTho` smallint DEFAULT NULL,
  `MaLoaiDangVien` int DEFAULT NULL,
  `MaLoaiHoiVien` int DEFAULT NULL,
  `MaDonVi` int DEFAULT NULL,
  `MaHoiPhuNu` int DEFAULT NULL,
  `MaCongDoan` int DEFAULT NULL,
  `MaDangUy` int DEFAULT NULL,
  `MaChiBo` int DEFAULT NULL,
  `MaToChucDoanThe` int DEFAULT NULL,
  `ThoiGianCapNhat` datetime DEFAULT NULL,
  `MaTrinhDo` int DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MaHV`),
  KEY `MaLDV` (`MaLoaiDangVien`),
  KEY `MaLHV` (`MaLoaiHoiVien`),
  KEY `MaDV` (`MaDonVi`),
  KEY `MaHPN` (`MaHoiPhuNu`),
  KEY `MaCD` (`MaCongDoan`),
  KEY `MaVTDU` (`MaDangUy`),
  KEY `MaVTCB` (`MaChiBo`),
  KEY `MaVTDT` (`MaToChucDoanThe`),
  KEY `MaTD` (`MaTrinhDo`),
  CONSTRAINT `HoiVien_ibfk_1` FOREIGN KEY (`MaLoaiDangVien`) REFERENCES `dangvien` (`MaLDV`),
  CONSTRAINT `HoiVien_ibfk_10` FOREIGN KEY (`MaDangUy`) REFERENCES `danguy` (`MaVTDU`),
  CONSTRAINT `HoiVien_ibfk_11` FOREIGN KEY (`MaChiBo`) REFERENCES `chibo` (`MaCB`),
  CONSTRAINT `HoiVien_ibfk_12` FOREIGN KEY (`MaToChucDoanThe`) REFERENCES `tochucdoanthe` (`MaVTDT`),
  CONSTRAINT `HoiVien_ibfk_13` FOREIGN KEY (`MaTrinhDo`) REFERENCES `trinhdo` (`MaTD`),
  CONSTRAINT `HoiVien_ibfk_14` FOREIGN KEY (`MaTrinhDo`) REFERENCES `trinhdo` (`MaTD`),
  CONSTRAINT `HoiVien_ibfk_2` FOREIGN KEY (`MaLoaiHoiVien`) REFERENCES `loaihoivien` (`MaLHV`),
  CONSTRAINT `HoiVien_ibfk_3` FOREIGN KEY (`MaDonVi`) REFERENCES `donvi` (`MaDV`),
  CONSTRAINT `HoiVien_ibfk_4` FOREIGN KEY (`MaHoiPhuNu`) REFERENCES `hoiphunu` (`MaHPN`),
  CONSTRAINT `HoiVien_ibfk_5` FOREIGN KEY (`MaLoaiDangVien`) REFERENCES `dangvien` (`MaLDV`),
  CONSTRAINT `HoiVien_ibfk_6` FOREIGN KEY (`MaLoaiHoiVien`) REFERENCES `loaihoivien` (`MaLHV`),
  CONSTRAINT `HoiVien_ibfk_7` FOREIGN KEY (`MaDonVi`) REFERENCES `donvi` (`MaDV`),
  CONSTRAINT `HoiVien_ibfk_8` FOREIGN KEY (`MaHoiPhuNu`) REFERENCES `hoiphunu` (`MaHPN`),
  CONSTRAINT `HoiVien_ibfk_9` FOREIGN KEY (`MaCongDoan`) REFERENCES `congdoan` (`MaCD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoivien`
--

LOCK TABLES `hoivien` WRITE;
/*!40000 ALTER TABLE `hoivien` DISABLE KEYS */;
INSERT INTO `hoivien` VALUES ('07002417','Tống Thị Hồng Tươi','1971-08-12',_binary '\0','Kinh','TTHongTuoi@gmail.com','0915692354',1989,3,1,2,36,1,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('070029225','Nguyễn Thị Hoa Sáu','1970-02-12',_binary '\0','Kinh','NguyenThiHoaSau@gmail.com','0917598282',1988,3,1,1,36,1,NULL,NULL,1,NULL,'2021-11-30 21:59:39',3,'Hà Nội'),('10KC0658','Phạm Thị Nguyệt','1974-05-22',_binary '\0','Kinh','PhamThiNguyet@gmail.com','08569547815',1993,3,1,2,36,1,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('1254TG0089','Trần Thị Lan','1975-02-05',_binary '\0','Kinh','TranThiLan@gmail.com','0985666333',2006,4,1,1,16,3,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('1254TG5022','Phan Thị Hương','1983-09-22',_binary '\0','Kinh','PhanThiHuong@gmail.com','0985620012',2005,5,1,1,16,3,NULL,NULL,NULL,1,'2021-11-30 21:59:40',3,'Hà Nội'),('1254TG5687','Hoàng Thị Vân','1979-09-22',_binary '\0','Kinh','HoangThiVan@gmail.com','0985625455',2003,4,1,1,16,3,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('1254TG7889','Nguyễn Phương Nhung','1977-02-25',_binary '\0','Kinh','NguyenPhươngNhung@gmail.com','0985666566',2005,4,1,1,16,3,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('1254TS5687','Nguyễn Thu Phương','1980-02-05',_binary '\0','Mường','NguyenThuPhuong@gmail.com','0985452525',2004,3,1,2,8,5,NULL,NULL,4,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('1254TS5999','Nguyễn Thị Thúy Mùi','1980-02-05',_binary '\0','Kinh','NguyenThiThuyMui@gmail.com','098500047',2004,3,1,2,8,5,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('1254TSH112','Nguyễn Thị Ngân','1989-02-05',_binary '\0','Mường','NguyenThiNgan@gmail.com','0985456666',2008,3,1,2,6,5,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('125798QS222','Nguyễn Văn Minh','1980-02-15',_binary '','Kinh','NguyenVanMinh@gmail.com','0987887887',2004,3,1,2,36,NULL,1,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('12QS0002','Tạ Thị Diệu','1975-12-22',_binary '\0','Kinh','TaThiDieu@gmail.com','0879536262',2001,4,1,1,16,3,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('12QS0979','Nguyễn Hoài Anh','1977-07-13',_binary '\0','Kinh','NguyenHoaiAnh@gmail.com','0985645588',2003,5,1,1,16,3,3,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('137SD548','Nguyễn Thị Hiền','1978-10-19',_binary '\0','Kinh','NguyenThiHien@gmail.com','0941000036',2003,5,1,1,16,3,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('137SD587','Nguyễn Kim Dung','1973-09-09',_binary '\0','Kinh','NguyenKimDung@gmail.com','0985875465',2001,4,1,1,16,3,3,NULL,2,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('154QS222','Bùi Minh Đức','1978-09-15',_binary '','Kinh','BuiMinhDuc@gmail.com','0987880121',2004,3,1,1,36,NULL,1,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('1875200125','Chu Thị Hường','1979-07-22',_binary '\0','Kinh','ChuThiHuong@gmail.com','0789215487',2003,5,1,1,16,3,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('1875248987','Đỗ Phương Loan','1973-06-21',_binary '\0','Kinh','DoPhuongLoan@gmail.com','0978142653',1999,4,1,1,16,3,NULL,NULL,3,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('18QS008','Triệu Ninh Ngân','1999-12-20',_binary '\0','Kinh','TrieuNinhNgan@gmail.com','0982154789',2017,2,1,5,36,1,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('18QS049','Nguyễn Thị Kim Khánh','1999-02-15',_binary '\0','Kinh','NguyenThiKimKhanh@gmail.com','0975489254',2017,2,1,5,36,1,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('18QS050','Nguyễn Thị Thanh Thùy','1997-08-29',_binary '\0','Kinh','NguyenThiThanhThuy@gmail.com','0978562032',2017,2,1,5,36,1,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('19QS015','Bùi Thị Thoa','2000-02-04',_binary '\0','Kinh','BuiThiThoa@gmail.com','0982365210',2018,2,1,5,36,1,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('19QS044','Nông Thị Trang','2000-09-13',_binary '\0','Kinh','NongThiTrang@gmail.com','0917524158',2018,2,1,5,36,1,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('2019010019','Bàn Thị Trang','2001-03-13',_binary '\0','Kinh','BanThiTrang@gmail.com','0985236541',2019,2,1,5,36,1,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('2019010041','Nguyễn Thị Huyền Trang','2001-02-23',_binary '\0','Kinh','NguyenThiHuyenTrang@gmail.com','0985625525',2019,2,1,5,36,1,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('2019010068','Đào Việt Hà','2001-06-20',_binary '\0','Kinh','DaoVietHa@gmail.com','030654214878',2019,2,1,5,36,1,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('2250QSI525','Nông Thị Bình','1978-09-15',_binary '\0','Mường','NongThiBinh@gmail.com','0986989012',2004,3,1,1,16,NULL,1,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('5874850012','Cao Doãn Thu Trang','1985-08-05',_binary '\0','Kinh','CaoDoanThuTrang@gmail.com','0985625552',2009,3,1,2,8,5,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('5874855999','Bùi Lệ Mỹ','1976-02-05',_binary '\0','Kinh','BuiLeMy@gmail.com','098500047',2000,3,1,2,8,5,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('5874858545','Phan Hồng Phương Nhung','1980-10-15',_binary '\0','Tày','PhanHongPhuongNhung@gmail.com','0987888995',2009,3,1,2,8,5,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('58748QS021','Nguyễn Thị Thu Thủy','1977-09-15',_binary '\0','Kinh','NguyenThiThuThuy@gmail.com','0987880012',2003,3,1,2,14,5,NULL,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('58748QS222','Nguyễn Thị Hạnh','1980-09-15',_binary '\0','Kinh','NguyenThiHanh@gmail.com','0987880121',2004,3,1,2,36,NULL,1,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('8785EW858','Đoàn Việt Thắng','1979-11-15',_binary '','Kinh','DoanVietThang@gmail.com','0956874114',2000,4,1,2,16,NULL,1,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('8785QS7845','Nguyễn Mạnh Trường','1977-09-20',_binary '','Kinh','NguyenManhTruong@gmail.com','0986989708',2003,4,1,1,16,NULL,1,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('8785QSI525','Đinh Minh Quang','1980-09-15',_binary '','Nùng','DinhMinhQuang@gmail.com','0986989587',2002,3,1,2,36,NULL,1,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('8785QSI536','Nguyễn Minh Tuấn','1975-10-15',_binary '','Kinh','NguyenMinhTuan@gmail.com','0986989587',2000,4,1,1,16,NULL,1,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('8785QSI698','Đinh Xuân Quang','1978-09-15',_binary '','Kinh','DinhXuanQuang@gmail.com','0986989222',2002,3,1,2,16,NULL,1,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('8785QSI799','Nguyễn Mạnh Hùng','1981-09-20',_binary '','Kinh','NguyenManhHung@gmail.com','0986989541',2006,3,1,1,16,NULL,1,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội'),('987QS1225','Phạm Văn Hồng','1979-12-15',_binary '','Kinh','PhamVanHong@gmail.com','098788887',2003,3,1,1,36,NULL,1,NULL,NULL,NULL,'2021-11-30 21:59:40',3,'Hà Nội');
/*!40000 ALTER TABLE `hoivien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:01
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
-- Table structure for table `bch_cd`
--

DROP TABLE IF EXISTS `bch_cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bch_cd` (
  `MaBCH` int NOT NULL AUTO_INCREMENT,
  `MaCD` int DEFAULT NULL,
  `MaHV` varchar(15) DEFAULT NULL,
  `ViTri` int NOT NULL,
  `NhiemKy` int NOT NULL,
  `NamBatDau` int DEFAULT NULL,
  `NamKetThuc` int DEFAULT NULL,
  PRIMARY KEY (`MaBCH`),
  KEY `MaHV` (`MaHV`),
  KEY `MaCD` (`MaCD`),
  CONSTRAINT `BCH_CD_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `hoivien` (`MaHV`),
  CONSTRAINT `BCH_CD_ibfk_2` FOREIGN KEY (`MaCD`) REFERENCES `chucdanh` (`MaCD`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bch_cd`
--

LOCK TABLES `bch_cd` WRITE;
/*!40000 ALTER TABLE `bch_cd` DISABLE KEYS */;
INSERT INTO `bch_cd` VALUES (8,2,'07002417',3,7,2017,NULL);
/*!40000 ALTER TABLE `bch_cd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:03
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
-- Table structure for table `detaikhoahoc`
--

DROP TABLE IF EXISTS `detaikhoahoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detaikhoahoc` (
  `MaDeTai` int NOT NULL AUTO_INCREMENT,
  `TenDeTai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LoaiDeTai` int DEFAULT NULL,
  `KetQua` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Nam` int DEFAULT NULL,
  PRIMARY KEY (`MaDeTai`),
  KEY `MaLoaiLDST` (`LoaiDeTai`),
  CONSTRAINT `DeTaiKhoaHoc_ibfk_1` FOREIGN KEY (`LoaiDeTai`) REFERENCES `loaidetaikhoahoc` (`MaLoaiLDST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detaikhoahoc`
--

LOCK TABLES `detaikhoahoc` WRITE;
/*!40000 ALTER TABLE `detaikhoahoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `detaikhoahoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:01
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
-- Table structure for table `hoivien_detaikhoahoc`
--

DROP TABLE IF EXISTS `hoivien_detaikhoahoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoivien_detaikhoahoc` (
  `MaHV` varchar(15) DEFAULT NULL,
  `MaDeTai` int DEFAULT NULL,
  `ThamGia` int NOT NULL,
  KEY `MaHV` (`MaHV`),
  KEY `MaDeTai` (`MaDeTai`),
  CONSTRAINT `HoiVien_DeTaiKhoaHoc_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `hoivien` (`MaHV`),
  CONSTRAINT `HoiVien_DeTaiKhoaHoc_ibfk_2` FOREIGN KEY (`MaDeTai`) REFERENCES `detaikhoahoc` (`MaDeTai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoivien_detaikhoahoc`
--

LOCK TABLES `hoivien_detaikhoahoc` WRITE;
/*!40000 ALTER TABLE `hoivien_detaikhoahoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `hoivien_detaikhoahoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:03
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
-- Table structure for table `lichsucapbac`
--

DROP TABLE IF EXISTS `lichsucapbac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lichsucapbac` (
  `MaLSCD` int NOT NULL AUTO_INCREMENT,
  `MaCB` int DEFAULT NULL,
  `MaHV` varchar(15) DEFAULT NULL,
  `NgayQD` date DEFAULT NULL,
  PRIMARY KEY (`MaLSCD`),
  KEY `MaHV` (`MaHV`),
  KEY `MaCB` (`MaCB`),
  CONSTRAINT `LichSuCapBac_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `hoivien` (`MaHV`),
  CONSTRAINT `LichSuCapBac_ibfk_2` FOREIGN KEY (`MaCB`) REFERENCES `capbac` (`MaCB`),
  CONSTRAINT `LichSuCapBac_ibfk_3` FOREIGN KEY (`MaHV`) REFERENCES `hoivien` (`MaHV`),
  CONSTRAINT `LichSuCapBac_ibfk_4` FOREIGN KEY (`MaCB`) REFERENCES `capbac` (`MaCB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichsucapbac`
--

LOCK TABLES `lichsucapbac` WRITE;
/*!40000 ALTER TABLE `lichsucapbac` DISABLE KEYS */;
/*!40000 ALTER TABLE `lichsucapbac` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:01
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
-- Table structure for table `lichsutrinhdo`
--

DROP TABLE IF EXISTS `lichsutrinhdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lichsutrinhdo` (
  `MaLSTD` int NOT NULL AUTO_INCREMENT,
  `MaTD` int DEFAULT NULL,
  `MaHV` varchar(15) DEFAULT NULL,
  `NganhHoc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TruongCap` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NgayQD` date DEFAULT NULL,
  PRIMARY KEY (`MaLSTD`),
  KEY `MaHV` (`MaHV`),
  KEY `MaTD` (`MaTD`),
  CONSTRAINT `LichSuTrinhDo_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `hoivien` (`MaHV`),
  CONSTRAINT `LichSuTrinhDo_ibfk_2` FOREIGN KEY (`MaTD`) REFERENCES `trinhdo` (`MaTD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichsutrinhdo`
--

LOCK TABLES `lichsutrinhdo` WRITE;
/*!40000 ALTER TABLE `lichsutrinhdo` DISABLE KEYS */;
/*!40000 ALTER TABLE `lichsutrinhdo` ENABLE KEYS */;
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
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `TenTaiKhian` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MatKhau` varchar(25) NOT NULL,
  `Quyen` int NOT NULL,
  `MaHV` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ThoiGianChinhSua` datetime DEFAULT NULL,
  `Active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`TenTaiKhian`),
  KEY `MaHV` (`MaHV`),
  CONSTRAINT `TaiKhoan_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `hoivien` (`MaHV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('user1','12345',1,'07002417',NULL,NULL),('user2','12345',1,'070029225',NULL,NULL),('user3','12345',1,'10KC0658',NULL,NULL);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  0:31:03
