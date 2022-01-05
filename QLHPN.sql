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
-- show tables;

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
  `user_id` int DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'vanhoa, chinhtri, chuyenmon',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `level_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'chucdanh',
  `name` varchar(255) NOT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
INSERT INTO group (name)
VALUE ('ội phụ nữ');
INSERT INTO group (name)
VALUE ('Chi đoàn');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `birthday` datetime NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text,
  `male` tinyint(1) DEFAULT '0',
  `family_situation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT 'hoancanhgiadinh',
  `dangvien` tinyint(1) DEFAULT '0',
  `donvi_id` int DEFAULT NULL,
  `religious` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'tongiao',
  `nhapngu` datetime DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `award`;
CREATE TABLE `award` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `award_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `member_id` (`user_id`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title_id` int DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
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
  `user_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `user_group_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_group_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
