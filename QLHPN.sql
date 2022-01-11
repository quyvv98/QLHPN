-- -------------------------------------------------------------
-- TablePlus 4.5.0(396)
--
-- https://tableplus.com/
--
-- Database: QLHPN
-- Generation Time: 2021-12-12 13:41:38.2130
-- -------------------------------------------------------------
DROP DATABASE IF EXISTS QLHPN;
CREATE DATABASE QLHPN;
USE QLHPN;
show tables;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'trinhdo',
  `user_id` int NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'vanhoa, chinhtri, chuyenmon',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `level_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 39);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 40);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 41);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 42);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 43);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 44);
INSERT INTO level (value, type ,user_id)
VALUES ('10/10', 'vanhoa', 100);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 39);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 100);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 41);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 42);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 43);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 44);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 40);
INSERT INTO level (value, type, user_id)
VALUES ('Cao đẳng', 'chuyenmon',39);
INSERT INTO level (value, type, user_id)
VALUES ('Cao đẳng', 'chuyenmon',42);
INSERT INTO level (value, type, user_id)
VALUES ('Cao đẳng', 'chuyenmon',44);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',40);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',41);
INSERT INTO level (value, type,user_id)
VALUES ('Sơ cấp', 'chuyenmon',43);
INSERT INTO level (value, type, user_id)
VALUES ('Trung cấp', 'chuyenmon', 100);
INSERT INTO level (value, type)
VALUES ('Tiến sĩ', 'chuyenmon');
INSERT INTO level (value, type)
VALUES ('Cử nhân', 'chuyenmon');
INSERT INTO level (value, type)
VALUES ('Kỹ sư', 'chuyenmon');


DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'chucvu',
  `user_id` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'dang, chinhquyen, quanchung',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `position_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',39);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',40);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',41);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',42);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',44);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',45);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',46);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',47);
INSERT INTO position (value, type)
VALUES ('Chi ủy viên', 'dang');
INSERT INTO position (value, type)
VALUES ('Bí thư Chi bộ', 'dang');
INSERT INTO position (value, type)
VALUES ('PBT Chi bộ', 'dang');
INSERT INTO position (value, type)
VALUES ('PBT dang ủy', 'dang');
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 39);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 45);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 40);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 43);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 44);
INSERT INTO position (value, type,user_id)
VALUES ('Ủy viên BCH CĐ', 'quanchung',40);
INSERT INTO position (value, type, user_id)
VALUES ('Ủy viên HPN', 'quanchung', 41);
INSERT INTO position (value, type, user_id)
VALUES ('Ủy viên HPN', 'quanchung', 46);
INSERT INTO position (value, type, user_id)
VALUES ('Phó CT HPN', 'quanchung', 42);
INSERT INTO position (value, type, user_id)
VALUES ('Đoàn viên CĐ', 'quanchung', 43);
INSERT INTO position (value, type)
VALUES ('BCH Hội đồng QN', 'quanchung');
INSERT INTO position (value, type)
VALUES ('Nguyên Chủ tịch HPN', 'quanchung');
INSERT INTO position (value, type)
VALUES ('Phó CT CĐ', 'quanchung');
INSERT INTO position (value, type)
VALUES ('Tổ trưởng CĐ', 'quanchung');
INSERT INTO position (value, type)
VALUES ('Chi hội trưởng', 'quanchung');
INSERT INTO position (value, type)
VALUES ('Chi hội phó', 'quanchung');
INSERT INTO position (value, type)
VALUES ('Nguyên Phó CT HPN', 'quanchung');
INSERT INTO position (value, type)
VALUES ('PBT Chi đoàn', 'quanchung');
INSERT INTO position (value, type)
VALUES ('PBT Liên chi', 'quanchung');
INSERT INTO position (value, type)
VALUES ('Chủ tịch CĐ', 'quanchung');


DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'chucdanh',
  `name` varchar(2435) NOT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO title (name)
VALUES ('Nhân viên');
INSERT INTO title (name)
VALUES ('Trợ lý');
INSERT INTO title (name)
VALUES ('CN Bộ môn');
INSERT INTO title (name)
VALUES ('Giáo viên');
INSERT INTO title (name)
VALUES ('Phó CN Khoa');
INSERT INTO title (name)
VALUES ('Văn thư');
INSERT INTO title (name)
VALUES ('NVKT');
INSERT INTO title (name)
VALUES ('Giảng viên');
INSERT INTO title (name)
VALUES ('KTV');
INSERT INTO title (name)
VALUES ('Bếp trưởng');
INSERT INTO title (name)
VALUES ('Học viên');
INSERT INTO title (name)
VALUES ('Quản lý Bếp');
INSERT INTO title (name)
VALUES ('Trợ lý CĐ-PN');
INSERT INTO title (name)
VALUES ('Kế toán');

DROP TABLE IF EXISTS `capbac`;
CREATE TABLE `capbac` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO capbac (name)
VALUES ('1/');
INSERT INTO capbac (name)
VALUES ('1/CN');
INSERT INTO capbac (name)
VALUES ('1//');
INSERT INTO capbac (name)
VALUES ('1//CN');
INSERT INTO capbac (name)
VALUES ('2/');
INSERT INTO capbac (name)
VALUES ('2/CN');
INSERT INTO capbac (name)
VALUES ('2//');
INSERT INTO capbac (name)
VALUES ('2//CN');
INSERT INTO capbac (name)
VALUES ('3/');
INSERT INTO capbac (name)
VALUES ('3/CN');
INSERT INTO capbac (name)
VALUES ('3//');
INSERT INTO capbac (name)
VALUES ('3//CN');
INSERT INTO capbac (name)
VALUES ('4/');
INSERT INTO capbac (name)
VALUES ('4/CN');
INSERT INTO capbac (name)
VALUES ('4//');
INSERT INTO capbac (name)
VALUES ('4//CN');


DROP TABLE IF EXISTS `donvi`;
CREATE TABLE `donvi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO donvi (name)
VALUES ('P1');
INSERT INTO donvi (name)
VALUES ('P13');
INSERT INTO donvi (name)
VALUES ('P2');
INSERT INTO donvi (name)
VALUES ('P7');
INSERT INTO donvi (name)
VALUES ('P3');
INSERT INTO donvi (name)
VALUES ('P11');
INSERT INTO donvi (name)
VALUES ('P4');
INSERT INTO donvi (name)
VALUES ('P5');
INSERT INTO donvi (name)
VALUES ('P8');
INSERT INTO donvi (name)
VALUES ('P6');
INSERT INTO donvi (name)
VALUES ('TTCNTT');
INSERT INTO donvi (name)
VALUES ('P9');
INSERT INTO donvi (name)
VALUES ('K11');
INSERT INTO donvi (name)
VALUES ('K12');
INSERT INTO donvi (name)
VALUES ('K13');
INSERT INTO donvi (name)
VALUES ('K21');
INSERT INTO donvi (name)
VALUES ('K22');
INSERT INTO donvi (name)
VALUES ('K23');
INSERT INTO donvi (name)
VALUES ('K24');
INSERT INTO donvi (name)
VALUES ('K31');
INSERT INTO donvi (name)
VALUES ('K32');
INSERT INTO donvi (name)
VALUES ('K51');
INSERT INTO donvi (name)
VALUES ('K7');
INSERT INTO donvi (name)
VALUES ('K52');
INSERT INTO donvi (name)
VALUES ('K6');
INSERT INTO donvi (name)
VALUES ('K9');
INSERT INTO donvi (name)
VALUES ('V2');
INSERT INTO donvi (name)
VALUES ('V3');
INSERT INTO donvi (name)
VALUES ('H3');
INSERT INTO donvi (name)
VALUES ('H5');
INSERT INTO donvi (name)
VALUES ('D1');
INSERT INTO donvi (name)
VALUES ('C153/D1');
INSERT INTO donvi (name)
VALUES ('C154/D1');
INSERT INTO donvi (name)
VALUES ('C155/D1');
INSERT INTO donvi (name)
VALUES ('D2');
INSERT INTO donvi (name)
VALUES ('D3');
INSERT INTO donvi (name)
VALUES ('C355/D3');
INSERT INTO donvi (name)
VALUES ('C352/D3');
INSERT INTO donvi (name)
VALUES ('D4');

DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Hoi Phu Nu, Chi Doan',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(255) DEFAULT NULL COMMENT 'hoiphunu, hoichidoan',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `group` (`name`, type) VALUES ('Hội phụ nữ', 'hoiphunu');
INSERT INTO `group` (`name`, type) VALUES ('Hội chi đoàn', 'hoichidoan');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `birthday` int NOT NULL,
  `address` text,
  `male` tinyint(1) DEFAULT '0',
  `family_situation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT 'hoancanhgiadinh',
  `dangvien` tinyint(1) DEFAULT '0',
  `donvi_id` int DEFAULT NULL,
  `religious` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'tongiao',
  `nhapngu` int DEFAULT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `capbac_id` int DEFAULT NULL,
  `title_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `donvi_id` (`donvi_id`),
  KEY `capbac_id` (`capbac_id`),
  KEY `title_id` (`title_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`donvi_id`) REFERENCES `donvi` (`id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`capbac_id`) REFERENCES `capbac` (`id`),
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`title_id`) REFERENCES `title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

Select * from user;

INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Bích Hạnh',1970, '1', 1, 1989, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lê Minh Thu',1992, '1', 1, 2015, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lê Thị Lan Anh',1980, '1', 1, 2013, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Dương Quỳnh Anh',1979, '1', 1, 2004, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Cúc',1970, '1', 1, 2011, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Đinh Thị Thanh Lan',1970, '1', 1, 1993, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Thủy',1972, '1', 1, 2011, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Vũ Thị Hương',1984, '1', 1,2010, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Đỗ Thị Loan',1974, '1', 1, 1994, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Phạm Thị Mai',1977, '1', 1, 2008, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Tuyết Oanh',1973, '1', 1, 1991, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Trần Thị Thu Thủy',1975, '1', 1, 1993, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Kim Vân',1969, '1', 1, 1992, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lưu Thanh Huyền',1980, '1', 1, 2004, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Mỹ Linh',1993, '1', 1, 2019, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Trần Thị Tư',1989, '1', 1, 2011, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Quỳnh Trúc',1978, '1', 1, 2010, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Bùi Thị Tuyết Nga',1977, '1', 1,2010, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Thúy Mùi',1979, '1', 1, 2002, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Bùi Lệ Mỹ',1976, '1', 1, 2000, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Ngân',1989, '1', 1, 2015, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thu Phương',1980, '1', 1, 2004, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Thu Thùy',1977, '1', 1, 2003, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Cao Doãn Thu Trang',1985, '1', 1, 2009, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Phạm Thị Hương',1973, '1', 1, 2000, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Trịnh Hải Anh',1980, '1', 1, 2010, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lê Thị Vinh Hạnh',1979, '1', 1, 2015, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Ngô Thị Lan',1974, '1', 1, 1997, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Thu Thùy',1974, '1', 1, 1992, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Hiền',1978, '1', 1, 2003, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Chu Thị Hường',1979, '1', 1, 2003, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Hoàng Thị Vân',1979, '1', 1, 2003, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Hoài Thu',1984, '1', 1, 2008, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lê Thị Minh Hiền',1978, '1', 1, 2007, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Đoàn Thị Minh Hằng',1986, '1', 1, 2012, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Đỗ Thị Ngọc Diệp',1971, '1', 1, 1993, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lê Thị Nga',1976, '1', 1, 1997, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Trương Thị Hương Huyền',1980, '1', 1, 2006, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Gấm',1985, '1', 1, 2014, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Hà Thị Thuý',1981, '1', 1, 2000, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Huệ',1975, '1', 1, 2003, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Mai Loan',1974, '1', 1, 1993, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Hằng',1967, '1', 1, 1998, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Huyền',1986, '1', 1, 2004, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Thùy Hương',1983, '1', 1, 2005, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lương Thị Thanh Hà',1984, '1', 1, 2013, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Vũ Thị Thu Trang',1986, '1', 1, 2008, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Phạm Thị Nhung',1983, '1', 1, 2008, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Hoàng Thị Hòa',1970, '1', 1, 1989, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Thùy Vân',1983, '1', 1, 2004, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Thùy Vân',1983, '1', 1, 2004, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lê Thị Thu Hằng',1975, '1', 1, 1996, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Thu Huyền',1983, '1', 1, 2003, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Phạm Thị Phương',1970, '1', 1, 2004, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Phạm Thị Út Trang',1984, '1', 1, 2007, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Thanh Lý',1974, '1', 1, 1993, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Minh Hằng',1980, '1', 1, 2004, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lâm Thị Huyền Hạnh',1981, '1', 1, 2004, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Ngọc Khánh',1995, '1', 1, 2018, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, capbac_id, title_id)
VALUES ('Nguyễn Thị Thu Hương',1993, '1', 1, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thu Nga',1993, '1', 1, 2018, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Cao Thị Bích Thủy',1967, '1', 1, 1993, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Đặng Thị Thanh Xuân',1985, '1', 1, 2009, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Thu Hiền',1975, '1', 1, 1995, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lê Thị Tuyết Mai',1969, '1', 1, 1988, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Trần Ngọc Tuyết',1988, '1', 1, 2006, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Hoa Sáu',1970, '1', 1, 1988, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Tống Thị Hồng Tươi',1971, '1', 1, 1989, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Phạm Thị Nguyệt',1974, '1', 1, 1993, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Triệu Ninh Ngân',1999, '1', 1, 2017, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Kim Khánh',1999, '1', 1, 2017, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Thanh Thùy',1997, '1', 1, 2017, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Liên',2000, '1', 1, 2018, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Bùi Thị Thoa',2000, '1', 1, 2018, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nông Thị Trang',2000, '1', 1, 2018, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Đào Việt Hà',2001, '1', 1, 2019, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Bàn Thị Trang',2001, '1', 1, 2019, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Huyền Trang',2001, '1', 1, 2019, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Phan Thu Hương',1972, '1', 1, 1993, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Dương Mỹ Thanh',1980, '1', 1, 2005, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Hoàng Thị Dung',1975, '1', 1, 1993, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Tuyết',1980, '1', 1, 2003, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Đinh Thị Hằng',1985, '1', 1, 2007, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Hồng Vy',2001, '1', 1, 2019, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Trần Thị Huế',1998, '1', 1, 2017, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lê Thị Trường',1974, '1', 1, 1993, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Đinh Thị Thu Hường',1998, '1', 1, 2016, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lê Anh Văn',1977, '1', 1, 2004, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Hải Hà',1980, '1', 1, 2003, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Đàm Thị Tố Nga',1971, '1', 1, 1989, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Đỗ Thị Thanh',1969, '1', 1, 2011, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Đỗ Thị Thanh',1969, '1', 1, 2011, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Hoàng Thị Hiền',1981, '1', 1, 2004, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Phan Thị Huyền',1984, '1', 1, 2013, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Cao Thị Thuận',1974, '1', 1, 1994, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Phan Hồng Phương Nhung',1980, '1', 1, 2009, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Hoàn',1968, '1', 1, 1986, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Đinh Thị Thúy Hà ',1984, '1', 1, 2007, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Phan Thị Hương ',1983, '1', 1, 2006, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Phạm Thị Kiều Thanh Trang',1991, '1', 1, 2017, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lê Thị Thanh Tâm',1986, '1', 1, 2013, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Hạnh',1980, '1', 1, 2004, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thùy Linh',1985, '1', 1, 2005, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Ngọc Mai',1987, '1', 1, 2013, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Lê Thị Huệ',1988, '1', 1, 2011, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Hà Thị Thơm',1981, '1', 1, 2005, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, capbac_id, title_id)
VALUES ('Phạm Thị Hoa',1978, '1', 1, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Hà Thị Thơm',1981, '1', 1, 2005, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Trần Thị Phương Lan',1969, '1', 1, 2005, 1, 1);
INSERT INTO user (name,birthday, dangvien, donvi_id, nhapngu, capbac_id, title_id)
VALUES ('Nguyễn Thị Hải',1970, '1', 1, 1988, 1, 1);






DROP TABLE IF EXISTS `award`;
CREATE TABLE `award` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `namkhen` int DEFAULT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `award_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO award (user_id, name, namkhen)
values (39, 'Bằng khen TCCT', 2016);
INSERT INTO award (user_id, name, namkhen)
values (39, 'Bằng khen TCCT', 2020);
INSERT INTO award (user_id, name, namkhen)
values (39, 'Giấy khen Đảng', 2017);
INSERT INTO award (user_id, name, namkhen)
values (39, 'Giấy khen PN', 2017);
INSERT INTO award (user_id, name, namkhen)
values (39, 'Giấy khen PN', 2019);
INSERT INTO award (user_id, name, namkhen)
values (39, 'CSTĐ', 2017);
INSERT INTO award (user_id, name, namkhen)
values (39, 'CSTT', 2018);
INSERT INTO award (user_id, name, namkhen)
values (39, 'CSTT', 2019);
INSERT INTO award (user_id, name, namkhen)
values (40, 'CSTT', 2018);
INSERT INTO award (user_id, name, namkhen)
values (40, 'CSTT', 2019);
INSERT INTO award (user_id, name, namkhen)
values (41, 'CSTĐ', 2016);
INSERT INTO award (user_id, name, namkhen)
values (41, 'Giấy khen PN', 2016);
INSERT INTO award (user_id, name, namkhen)
values (41, 'Giấy khen PN', 2019);
INSERT INTO award (user_id, name, namkhen)
values (41, 'CSTT', 2017);
INSERT INTO award (user_id, name, namkhen)
values (41, 'CSTT', 2019);



DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `user_id` int NOT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `member_id` (`user_id`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO account (username,password, user_id, active)
VALUES ('admin', '123', 39, 1);
INSERT INTO account (username,password, user_id, active)
VALUES ('CTHPN', '123', 40, 1);
INSERT INTO account (username,password, user_id, active)
VALUES ('CTCD', '123', 66, 1);



DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title_id` int DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `level_id` int DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `award_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `title_id` (`title_id`),
  KEY `member_id` (`user_id`),
  KEY `level_id` (`level_id`),
  KEY `position_id` (`position_id`),
  KEY `award_id` (`award_id`),
  CONSTRAINT `history_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `title` (`id`),
  CONSTRAINT `history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `history_ibfk_3` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`),
  CONSTRAINT `history_ibfk_4` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`),
  CONSTRAINT `history_ibfk_5` FOREIGN KEY (`award_id`) REFERENCES `award` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `user_group_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_group_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO user_group (user_id,group_id,is_admin)
VALUES (39,1,1);
INSERT INTO user_group (user_id,group_id,is_admin)
VALUES (39,2,1);
INSERT INTO user_group (user_id,group_id,is_admin)
VALUES (40,2,0);
INSERT INTO user_group (user_id,group_id,is_admin)
VALUES (66,2,1);
INSERT INTO user_group (user_id,group_id,is_admin)
VALUES (41,1,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

