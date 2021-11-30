-- -------------------------------------------------------------
-- TablePlus 4.5.0(396)
--
-- https://tableplus.com/
--
-- Database: DB_QLHV
-- Generation Time: 2021-11-28 17:00:12.4320
-- -----------------------------------------------------------
use db_qlhv;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `ChiBo`;
CREATE TABLE `ChiBo` (
  `MaCB` int NOT NULL AUTO_INCREMENT,
  `TenCB` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NamBatDau` int DEFAULT NULL,
  `NamKetThuc` int DEFAULT NULL,
  PRIMARY KEY (`MaCB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `TrinhDo`;
CREATE TABLE `TrinhDo` (
  `MaTD` int NOT NULL AUTO_INCREMENT,
  `TenTD` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaTD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `ChucDanh`;
CREATE TABLE `ChucDanh` (
  `MaCD` int NOT NULL AUTO_INCREMENT,
  `TenCD` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaCD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `CapBac`;
CREATE TABLE `CapBac` (
  `MaCB` int NOT NULL AUTO_INCREMENT,
  `TenCB` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaCB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `CapLaiMatKhau`;
CREATE TABLE `CapLaiMatKhau` (
  `MaCLMK` int NOT NULL AUTO_INCREMENT,
  `TenDN` varchar(25) DEFAULT NULL,
  `MaHV` varchar(15) DEFAULT NULL,
  `Code` int NOT NULL,
  `TinhTrang` bit(1) NOT NULL,
  `EditTime` datetime NOT NULL,
  PRIMARY KEY (`MaCLMK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `CongDoan`;
CREATE TABLE `CongDoan` (
  `MaCD` int NOT NULL AUTO_INCREMENT,
  `TenCD` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaCD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `DangUy`;
CREATE TABLE `DangUy` (
  `MaVTDU` int NOT NULL AUTO_INCREMENT,
  `TenVTDU` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NamBatDau` int DEFAULT NULL,
  `NamKetThuc` int DEFAULT NULL,
  PRIMARY KEY (`MaVTDU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `DangVien`;
CREATE TABLE `DangVien` (
  `MaLDV` int NOT NULL AUTO_INCREMENT,
  `TenLDV` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaLDV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `DanhHieu`;
CREATE TABLE `DanhHieu` (
  `MaDH` int NOT NULL AUTO_INCREMENT,
  `TenDH` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaDH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `DonVi`;
CREATE TABLE `DonVi` (
  `MaDV` int NOT NULL AUTO_INCREMENT,
  `TenDV` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  PRIMARY KEY (`MaDV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `HoiPhuNu`;
CREATE TABLE `HoiPhuNu` (
  `MaHPN` int NOT NULL AUTO_INCREMENT,
  `TenHPN` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaHPN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `LoaiDeTaiKhoaHoc`;
CREATE TABLE `LoaiDeTaiKhoaHoc` (
  `MaLoaiLDST` int NOT NULL AUTO_INCREMENT,
  `TenLoaiLDST` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaLoaiLDST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `LoaiHoiVien`;
CREATE TABLE `LoaiHoiVien` (
  `MaLHV` int NOT NULL AUTO_INCREMENT,
  `TenLHV` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaLHV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `ToChucDoanThe`;
CREATE TABLE `ToChucDoanThe` (
  `MaVTDT` int NOT NULL AUTO_INCREMENT,
  `TenVTDT` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NamBatDau` int DEFAULT NULL,
  `NamKetThuc` int DEFAULT NULL,
  PRIMARY KEY (`MaVTDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `HoiVien`;
CREATE TABLE `HoiVien` (
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
  CONSTRAINT `HoiVien_ibfk_1` FOREIGN KEY (`MaLoaiDangVien`) REFERENCES `DangVien` (`MaLDV`),
  CONSTRAINT `HoiVien_ibfk_10` FOREIGN KEY (`MaDangUy`) REFERENCES `DangUy` (`MaVTDU`),
  CONSTRAINT `HoiVien_ibfk_11` FOREIGN KEY (`MaChiBo`) REFERENCES `ChiBo` (`MaCB`),
  CONSTRAINT `HoiVien_ibfk_12` FOREIGN KEY (`MaToChucDoanThe`) REFERENCES `ToChucDoanThe` (`MaVTDT`),
  CONSTRAINT `HoiVien_ibfk_13` FOREIGN KEY (`MaTrinhDo`) REFERENCES `TrinhDo` (`MaTD`),
  CONSTRAINT `HoiVien_ibfk_14` FOREIGN KEY (`MaTrinhDo`) REFERENCES `TrinhDo` (`MaTD`),
  CONSTRAINT `HoiVien_ibfk_2` FOREIGN KEY (`MaLoaiHoiVien`) REFERENCES `LoaiHoiVien` (`MaLHV`),
  CONSTRAINT `HoiVien_ibfk_3` FOREIGN KEY (`MaDonVi`) REFERENCES `DonVi` (`MaDV`),
  CONSTRAINT `HoiVien_ibfk_4` FOREIGN KEY (`MaHoiPhuNu`) REFERENCES `HoiPhuNu` (`MaHPN`),
  CONSTRAINT `HoiVien_ibfk_5` FOREIGN KEY (`MaLoaiDangVien`) REFERENCES `DangVien` (`MaLDV`),
  CONSTRAINT `HoiVien_ibfk_6` FOREIGN KEY (`MaLoaiHoiVien`) REFERENCES `LoaiHoiVien` (`MaLHV`),
  CONSTRAINT `HoiVien_ibfk_7` FOREIGN KEY (`MaDonVi`) REFERENCES `DonVi` (`MaDV`),
  CONSTRAINT `HoiVien_ibfk_8` FOREIGN KEY (`MaHoiPhuNu`) REFERENCES `HoiPhuNu` (`MaHPN`),
  CONSTRAINT `HoiVien_ibfk_9` FOREIGN KEY (`MaCongDoan`) REFERENCES `CongDoan` (`MaCD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `BCH_CD`;
CREATE TABLE `BCH_CD` (
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
  CONSTRAINT `BCH_CD_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `HoiVien` (`MaHV`),
  CONSTRAINT `BCH_CD_ibfk_2` FOREIGN KEY (`MaCD`) REFERENCES `ChucDanh` (`MaCD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `DeTaiKhoaHoc`;
CREATE TABLE `DeTaiKhoaHoc` (
  `MaDeTai` int NOT NULL AUTO_INCREMENT,
  `TenDeTai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LoaiDeTai` int DEFAULT NULL,
  `KetQua` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Nam` int DEFAULT NULL,
  PRIMARY KEY (`MaDeTai`),
  KEY `MaLoaiLDST` (`LoaiDeTai`),
  CONSTRAINT `DeTaiKhoaHoc_ibfk_1` FOREIGN KEY (`LoaiDeTai`) REFERENCES `LoaiDeTaiKhoaHoc` (`MaLoaiLDST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `HoanCanhGD`;
CREATE TABLE `HoanCanhGD` (
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
  CONSTRAINT `HoanCanhGD_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `HoiVien` (`MaHV`),
  CONSTRAINT `HoanCanhGD_ibfk_2` FOREIGN KEY (`MaHV`) REFERENCES `HoiVien` (`MaHV`),
  CONSTRAINT `HoanCanhGD_ibfk_3` FOREIGN KEY (`MaHV`) REFERENCES `HoiVien` (`MaHV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




DROP TABLE IF EXISTS `HoiVien_DeTaiKhoaHoc`;
CREATE TABLE `HoiVien_DeTaiKhoaHoc` (
  `MaHV` varchar(15) DEFAULT NULL,
  `MaDeTai` int DEFAULT NULL,
  `ThamGia` int NOT NULL,
  KEY `MaHV` (`MaHV`),
  KEY `MaDeTai` (`MaDeTai`),
  CONSTRAINT `HoiVien_DeTaiKhoaHoc_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `HoiVien` (`MaHV`),
  CONSTRAINT `HoiVien_DeTaiKhoaHoc_ibfk_2` FOREIGN KEY (`MaDeTai`) REFERENCES `DeTaiKhoaHoc` (`MaDeTai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `LichSuCapBac`;
CREATE TABLE `LichSuCapBac` (
  `MaLSCD` int NOT NULL AUTO_INCREMENT,
  `MaCB` int DEFAULT NULL,
  `MaHV` varchar(15) DEFAULT NULL,
  `NgayQD` date DEFAULT NULL,
  PRIMARY KEY (`MaLSCD`),
  KEY `MaHV` (`MaHV`),
  KEY `MaCB` (`MaCB`),
  CONSTRAINT `LichSuCapBac_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `HoiVien` (`MaHV`),
  CONSTRAINT `LichSuCapBac_ibfk_2` FOREIGN KEY (`MaCB`) REFERENCES `CapBac` (`MaCB`),
  CONSTRAINT `LichSuCapBac_ibfk_3` FOREIGN KEY (`MaHV`) REFERENCES `HoiVien` (`MaHV`),
  CONSTRAINT `LichSuCapBac_ibfk_4` FOREIGN KEY (`MaCB`) REFERENCES `CapBac` (`MaCB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `LichSuDanhHieu`;
CREATE TABLE `LichSuDanhHieu` (
  `MaLSDH` int NOT NULL AUTO_INCREMENT,
  `MaDH` int DEFAULT NULL,
  `MaHV` varchar(15) DEFAULT NULL,
  `NgayQD` date DEFAULT NULL,
  PRIMARY KEY (`MaLSDH`),
  KEY `MaHV` (`MaHV`),
  KEY `MaDH` (`MaDH`),
  CONSTRAINT `LichSuDanhHieu_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `HoiVien` (`MaHV`),
  CONSTRAINT `LichSuDanhHieu_ibfk_2` FOREIGN KEY (`MaDH`) REFERENCES `DanhHieu` (`MaDH`),
  CONSTRAINT `LichSuDanhHieu_ibfk_3` FOREIGN KEY (`MaHV`) REFERENCES `HoiVien` (`MaHV`),
  CONSTRAINT `LichSuDanhHieu_ibfk_4` FOREIGN KEY (`MaDH`) REFERENCES `DanhHieu` (`MaDH`),
  CONSTRAINT `LichSuDanhHieu_ibfk_5` FOREIGN KEY (`MaHV`) REFERENCES `HoiVien` (`MaHV`),
  CONSTRAINT `LichSuDanhHieu_ibfk_6` FOREIGN KEY (`MaDH`) REFERENCES `DanhHieu` (`MaDH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `LichSuTrinhDo`;
CREATE TABLE `LichSuTrinhDo` (
  `MaLSTD` int NOT NULL AUTO_INCREMENT,
  `MaTD` int DEFAULT NULL,
  `MaHV` varchar(15) DEFAULT NULL,
  `NganhHoc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TruongCap` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NgayQD` date DEFAULT NULL,
  PRIMARY KEY (`MaLSTD`),
  KEY `MaHV` (`MaHV`),
  KEY `MaTD` (`MaTD`),
  CONSTRAINT `LichSuTrinhDo_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `HoiVien` (`MaHV`),
  CONSTRAINT `LichSuTrinhDo_ibfk_2` FOREIGN KEY (`MaTD`) REFERENCES `TrinhDo` (`MaTD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



DROP TABLE IF EXISTS `TaiKhoan`;
CREATE TABLE `TaiKhoan` (
  `TenTaiKhian` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MatKhau` varchar(25) NOT NULL,
  `Quyen` int NOT NULL,
  `MaHV` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ThoiGianChinhSua` datetime DEFAULT NULL,
  `Active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`TenTaiKhian`),
  KEY `MaHV` (`MaHV`),
  CONSTRAINT `TaiKhoan_ibfk_1` FOREIGN KEY (`MaHV`) REFERENCES `HoiVien` (`MaHV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* insert into*/
INSERT INTO HoiVien/* (MaHV, TenHV, NgaySinh, GioiTinh, DanToc, Email, SDT, NamNhapNgu, BacTho,MaLDV, MaLHV, MaDV, MaHPN, MaCD, MaDU, MaCB, MaTCDT, EditTime,MaTrinhDo,DiaChi)*/
VALUES ('58748QS222', 'Nguyễn Thị Hạnh', '1980-09-15', 0, 'Kinh', 'NguyenThiHanh@gmail.com', '0987880121', 2004, 3, 1, 2, 36, NULL, 1, NULL, NULL, NULL, now(),4,'namdinh');
INSERT INTO HoiVien (MaHV, TenHV, NgaySinh, GioiTinh, DanToc, Email, SDT, NamNhapNgu, BacTho,MaLDV, MaLHV, MaDV, MaHPN, MaCD, MaVTDU, MaVTCB, MaVTDT, EditTime)
VALUES ('125798QS222', 'Nguyễn Văn Minh', '1980-02-15', 1, 'Kinh', 'NguyenVanMinh@gmail.com', '0987887887', 2004, 3, 1, 2, 36, NULL, 1, NULL, NULL, NULL, now(),3,'hanoi');

INSERT INTO LichSuTrinhDo (MaTD, MaHV, NganhHoc, TruongCap, NgayQD) VALUES (4, '58748QS222', NULL, NULL, NULL);
INSERT INTO LichSuTrinhDo (MaTD, MaHV, NganhHoc, TruongCap, NgayQD) VALUES (3, '125798QS222', NULL, NULL, NULL);

INSERT LichSuCapBac (MaCB, MaHV, NgayQD) VALUES (8, '58748QS222', NULL);
INSERT LichSuCapBac (MaCB, MaHV, NgayQD) VALUES (7, '125798QS222', NULL);
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;