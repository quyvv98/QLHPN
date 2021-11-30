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
