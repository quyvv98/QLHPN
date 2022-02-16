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

DROP TABLE IF EXISTS `group`;
DROP TABLE IF EXISTS `capbac`;

DROP TABLE IF EXISTS `donvi`;
DROP TABLE IF EXISTS `position`;
DROP TABLE IF EXISTS `level`;
DROP TABLE IF EXISTS `award`;
DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `user_group`;

DROP TABLE IF EXISTS `title`;
DROP TABLE IF EXISTS `account`;
DROP TABLE IF EXISTS `history`;


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 45);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 46);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 47);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 48);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 49);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 50);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 51);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 52);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 53);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 54);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 55);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 56);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 57);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 58);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 59);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 60);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 61);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 62);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 63);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 64);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 65);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 66);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 67);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 68);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 69);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 70);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 71);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 72);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 73);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 74);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 75);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 76);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 77);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 78);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 79);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 80);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 81);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 82);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 83);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 84);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 85);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 86);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 87);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 88);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 89);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 90);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 91);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 92);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 93);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 94);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 95);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 96);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 97);
INSERT INTO level (value, type, user_id)
VALUES ('12/12', 'vanhoa', 98);
INSERT INTO level (value, type ,user_id)
VALUES ('10/10', 'vanhoa', 99);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 39);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 40);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 41);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 42);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 43);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 44);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 45);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 46);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 47);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 48);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 49);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 50);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 51);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 52);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 53);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 54);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 55);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 57);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 58);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 59);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 60);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 61);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 62);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 63);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 64);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 65);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 66);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 67);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 68);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 69);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 70);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 71);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 72);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 73);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 74);
INSERT INTO level (value, type,user_id)
VALUES ('Sơ cấp', 'chinhtri', 75);
INSERT INTO level (value, type,user_id)
VALUES ('Sơ cấp', 'chinhtri', 76);
INSERT INTO level (value, type,user_id)
VALUES ('Sơ cấp', 'chinhtri', 77);
INSERT INTO level (value, type,user_id)
VALUES ('Sơ cấp', 'chinhtri', 78);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 79);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 80);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 81);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 82);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 83);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 84);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 85);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 86);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 87);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 88);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 89);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 90);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 91);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 92);
INSERT INTO level (value, type, user_id)
VALUES ('Sơ cấp', 'chinhtri', 93);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 94);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 95);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 96);
INSERT INTO level (value, type,user_id)
VALUES ('Trung cấp', 'chinhtri', 97);
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
VALUES ('Đại học', 'chuyenmon',47);
INSERT INTO level (value, type,user_id)
VALUES ('Sơ cấp', 'chuyenmon',43);
INSERT INTO level (value, type, user_id)
VALUES ('Trung cấp', 'chuyenmon', 48);
INSERT INTO level (value, type, user_id)
VALUES ('Trung cấp', 'chuyenmon', 49);
INSERT INTO level (value, type, user_id)
VALUES ('Trung cấp', 'chuyenmon', 50);
INSERT INTO level (value, type, user_id)
VALUES ('Trung cấp', 'chuyenmon', 51);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',52);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',53);
INSERT INTO level (value, type, user_id)
VALUES ('Trung cấp', 'chuyenmon', 54);
INSERT INTO level (value, type, user_id)
VALUES ('Trung cấp', 'chuyenmon', 99);
INSERT INTO level (value, type, user_id)
VALUES ('Trung cấp', 'chuyenmon', 45);
INSERT INTO level (value, type, user_id)
VALUES ('Trung cấp', 'chuyenmon', 46);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',55);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',56);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',57);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',58);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',59);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',60);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',61);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',62);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',63);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',64);
INSERT INTO level (value, type,user_id)
VALUES ('Tiến sĩ', 'chuyenmon',65);
INSERT INTO level (value, type,user_id)
VALUES ('Tiến sĩ', 'chuyenmon',66);
INSERT INTO level (value, type,user_id)
VALUES ('Cử nhân', 'chuyenmon',67);
INSERT INTO level (value, type,user_id)
VALUES ('Tiến sĩ', 'chuyenmon',68);
INSERT INTO level (value, type,user_id)
VALUES ('Tiến sĩ', 'chuyenmon',69);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',70);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',71);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',72);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',73);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',74);
INSERT INTO level (value, type,user_id)
VALUES ('Sơ cấp', 'chuyenmon',75);
INSERT INTO level (value, type,user_id)
VALUES ('Tiến sĩ', 'chuyenmon',76);
INSERT INTO level (value, type,user_id)
VALUES ('Tiến sĩ', 'chuyenmon',77);
INSERT INTO level (value, type, user_id)
VALUES ('Cao đẳng', 'chuyenmon',78);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',79);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',80);
INSERT INTO level (value, type,user_id)
VALUES ('Cử nhân', 'chuyenmon',81);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',82);
INSERT INTO level (value, type,user_id)
VALUES ('Kỹ sư', 'chuyenmon',83);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',84);
INSERT INTO level (value, type,user_id)
VALUES ('Tiến sĩ', 'chuyenmon',85);
INSERT INTO level (value, type, user_id)
VALUES ('Cao đẳng', 'chuyenmon',86);
INSERT INTO level (value, type, user_id)
VALUES ('Cao đẳng', 'chuyenmon',87);
INSERT INTO level (value, type, user_id)
VALUES ('Cao đẳng', 'chuyenmon',88);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',89);
INSERT INTO level (value, type, user_id)
VALUES ('Trung cấp', 'chuyenmon', 90);
INSERT INTO level (value, type,user_id)
VALUES ('Sơ cấp', 'chuyenmon',91);
INSERT INTO level (value, type, user_id)
VALUES ('Trung cấp', 'chuyenmon', 92);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',93);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',94);
INSERT INTO level (value, type,user_id)
VALUES ('Thạc sĩ', 'chuyenmon',95);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',96);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',97);
INSERT INTO level (value, type,user_id)
VALUES ('Đại học', 'chuyenmon',98);


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',48);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',50);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',51);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',52);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',53);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',54);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',55);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',56);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',57);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',58);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',59);
INSERT INTO position (value, type,user_id)
VALUES ('Chi ủy viên', 'dang',60);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',61);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',62);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',63);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',64);
INSERT INTO position (value, type,user_id)
VALUES ('Chi ủy viên', 'dang',65);
INSERT INTO position (value, type,user_id)
VALUES ('Bí thư Chi bộ', 'dang',66);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',67);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',68);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',69);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',70);
INSERT INTO position (value, type,user_id)
VALUES ('PBT Chi bộ', 'dang',71);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',72);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',73);
INSERT INTO position (value, type,user_id)
VALUES ('PBT dang ủy', 'dang',74);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',75);
INSERT INTO position (value, type,user_id)
VALUES ('Chi ủy viên', 'dang',76);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',77);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',78);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',80);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',81);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',82);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',83);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',85);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',86);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',87);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',88);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',89);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',90);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',92);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',93);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',94);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',95);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',96);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',99);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',100);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',101);
INSERT INTO position (value, type,user_id)
VALUES ('Đảng viên', 'dang',104);
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
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 47);
INSERT INTO position (value, type, user_id)
VALUES ('Ủy viên HPN', 'quanchung', 48);
INSERT INTO position (value, type, user_id)
VALUES ('Ủy viên HPN', 'quanchung', 49);
INSERT INTO position (value, type, user_id)
VALUES ('Phó CT HPN', 'quanchung', 50);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 51);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 52);
INSERT INTO position (value, type, user_id)
VALUES ('Phó CT HPN', 'quanchung', 53);
INSERT INTO position (value, type, user_id)
VALUES ('Ủy viên HPN', 'quanchung', 54);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 55);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 56);
INSERT INTO position (value, type,user_id)
VALUES ('Nguyên Chủ tịch HPN', 'quanchung',57);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 58);
INSERT INTO position (value, type, user_id)
VALUES ('Ủy viên HPN', 'quanchung', 59);
INSERT INTO position (value, type, user_id)
VALUES ('Phó CT HPN', 'quanchung', 60);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 61);
INSERT INTO position (value, type,user_id)
VALUES ('Ủy viên BCH CĐ', 'quanchung',61);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 62);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 63);
INSERT INTO position (value, type,user_id)
VALUES ('BCH Hội đồng QN', 'quanchung',63);
INSERT INTO position (value, type, user_id)
VALUES ('Phó CT HPN', 'quanchung', 64);
INSERT INTO position (value, type, user_id)
VALUES ('Phó CT HPN', 'quanchung', 65);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 66);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 67);
INSERT INTO position (value, type, user_id)
VALUES ('Ủy viên HPN', 'quanchung', 68);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 69);
INSERT INTO position (value, type,user_id)
VALUES ('Nguyên Chủ tịch HPN', 'quanchung',70);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 71);
INSERT INTO position (value, type,user_id)
VALUES ('Phó CT HPN', 'quanchung', 72);
INSERT INTO position (value, type, user_id)
VALUES ('Ủy viên HPN', 'quanchung', 73);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 74);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 75);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 76);
INSERT INTO position (value, type,user_id)
VALUES ('Phó CT HPN', 'quanchung', 77);
INSERT INTO position (value, type, user_id)
VALUES ('Ủy viên HPN', 'quanchung', 78);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 79);
INSERT INTO position (value, type,user_id)
VALUES ('Nguyên Phó CT HPN', 'quanchung',80);
INSERT INTO position (value, type,user_id)
VALUES ('Nguyên Chủ tịch HPN', 'quanchung',81);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 82);
INSERT INTO position (value, type, user_id)
VALUES ('Ủy viên HPN', 'quanchung', 83);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 84);
INSERT INTO position (value, type, user_id)
VALUES ('Đoàn viên CĐ', 'quanchung', 84);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 85);
INSERT INTO position (value, type,user_id)
VALUES ('Nguyên Chủ tịch HPN', 'quanchung',86);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 87);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 88);
INSERT INTO position (value, type,user_id)
VALUES ('Phó CT CĐ', 'quanchung',88);
INSERT INTO position (value, type,user_id)
VALUES ('Nguyên Chủ tịch HPN', 'quanchung',89);
INSERT INTO position (value, type, user_id)
VALUES ('Ủy viên HPN', 'quanchung', 90);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 91);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 92);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 93);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 94);
INSERT INTO position (value, type,user_id)
VALUES ('Phó CT HPN', 'quanchung', 95);
INSERT INTO position (value, type, user_id)
VALUES ('Ủy viên HPN', 'quanchung', 96);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 97);
INSERT INTO position (value, type, user_id)
VALUES ('Đoàn viên CĐ', 'quanchung', 97);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 98);
INSERT INTO position (value, type, user_id)
VALUES ('Đoàn viên CĐ', 'quanchung', 98);
INSERT INTO position (value, type,user_id)
VALUES ('Nguyên Chủ tịch HPN', 'quanchung',99);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 100);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 101);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 102);
INSERT INTO position (value, type,user_id)
VALUES ('Tổ trưởng CĐ', 'quanchung',103);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 103);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch CĐ', 'quanchung',104);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 104);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 105);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 106);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 107);
INSERT INTO position (value, type,user_id)
VALUES ('Phó CT HPN', 'quanchung', 108);
INSERT INTO position (value, type,user_id)
VALUES ('Chi hội trưởng', 'quanchung',109);
INSERT INTO position (value, type,user_id)
VALUES ('Chi hội phó', 'quanchung',110);
INSERT INTO position (value, type,user_id)
VALUES ('Nguyên Phó CT HPN', 'quanchung',111);
INSERT INTO position (value, type,user_id)
VALUES ('PBT Chi đoàn', 'quanchung',112);
INSERT INTO position (value, type,user_id)
VALUES ('Chi hội trưởng', 'quanchung',112);
INSERT INTO position (value, type,user_id)
VALUES ('Chi hội trưởng', 'quanchung',113);
INSERT INTO position (value, type,user_id)
VALUES ('Chi hội phó', 'quanchung',114);
INSERT INTO position (value, type,user_id)
VALUES ('PBT Chi đoàn', 'quanchung',115);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 115);
INSERT INTO position (value, type,user_id)
VALUES ('Chi hội trưởng', 'quanchung',116);
INSERT INTO position (value, type,user_id)
VALUES ('PBT Liên chi', 'quanchung',117);
INSERT INTO position (value, type,user_id)
VALUES ('Chi hội phó', 'quanchung',117);
INSERT INTO position (value, type,user_id)
VALUES ('Phó CT HPN', 'quanchung', 118);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 119);
INSERT INTO position (value, type,user_id)
VALUES ('Phó CT HPN', 'quanchung', 120);
INSERT INTO position (value, type,user_id)
VALUES ('Phó CT CĐ', 'quanchung',121);
INSERT INTO position (value, type, user_id)
VALUES ('Hội viên HPN', 'quanchung', 121);
INSERT INTO position (value, type,user_id)
VALUES ('Chủ tịch HPN', 'quanchung', 122);
INSERT INTO position (value, type,user_id)
VALUES ('Phó CT HPN', 'quanchung', 123);
INSERT INTO position (value, type,user_id)
VALUES ('Phó CT HPN', 'quanchung', 124);



DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'chucdanh',
  `name` varchar(255) NOT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `birthday` int DEFAULT NULL,
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
  `award_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `donvi_id` (`donvi_id`),
  KEY `capbac_id` (`capbac_id`),
  KEY `title_id` (`title_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`donvi_id`) REFERENCES `donvi` (`id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`capbac_id`) REFERENCES `capbac` (`id`),
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`title_id`) REFERENCES `title` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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


update user set capbac_id = 12, title_id = 15 where id = 39;
update user set capbac_id = 9, title_id = 16 where id = 40;
update user set donvi_id = 2,  capbac_id = 4, title_id = 15 where id = 41;
update user set donvi_id = 3, capbac_id = 4, title_id = 15 where id = 42;
update user set donvi_id = 3, capbac_id = 16, title_id = 15 where id = 43;
update user set donvi_id = 4, capbac_id = 12, title_id = 15 where id = 44;
update user set donvi_id = 3, capbac_id = 4, title_id = 15 where id = 45;
update user set donvi_id = 5, capbac_id = 10, title_id = 15 where id = 46;
update user set donvi_id = 5, capbac_id = 8, title_id = 15 where id = 47;
update user set donvi_id = 5, capbac_id = 4, title_id = 15 where id = 48;
update user set donvi_id = 5, capbac_id = 4, title_id = 15 where id = 49;
update user set donvi_id = 5, capbac_id = 4, title_id = 15 where id = 50;
update user set donvi_id = 5, capbac_id = 4, title_id = 15 where id = 51;
update user set donvi_id = 7, capbac_id = 4, title_id = 15 where id = 52;
update user set donvi_id = 7, capbac_id = 9, title_id = 16 where id = 53;
update user set donvi_id = 7, capbac_id = 6, title_id = 15 where id = 54;
update user set donvi_id = 7, capbac_id = 3, title_id = 16 where id = 55;
update user set donvi_id = 8, capbac_id = 14, title_id = 15 where id = 56;
update user set donvi_id = 9, capbac_id = 8, title_id = 15 where id = 57;
update user set donvi_id = 9, capbac_id = 8, title_id = 15 where id = 58;
update user set donvi_id = 10, capbac_id = 4, title_id = 15 where id = 59;
update user set donvi_id = 9, capbac_id = 6, title_id = 15 where id = 60;
update user set donvi_id = 11, capbac_id = 4, title_id = 15 where id = 61;
update user set donvi_id = 9, capbac_id = 4, title_id = 15 where id = 62;
update user set donvi_id = 12, capbac_id = 12, title_id = 15 where id = 63;
update user set donvi_id = 12, capbac_id = 4, title_id = 15 where id = 64;
update user set donvi_id = 13, capbac_id = 4, title_id = 15 where id = 65;
update user set donvi_id = 13, capbac_id = 11, title_id = 15 where id = 66;
update user set donvi_id = 13, capbac_id = 8, title_id = 15 where id = 67;
update user set donvi_id = 14, capbac_id = 7, title_id = 18 where id = 68;
update user set donvi_id = 14, capbac_id = 11, title_id = 18 where id = 69;
update user set donvi_id = 14, capbac_id = 8, title_id = 15 where id = 70;
update user set donvi_id = 15, capbac_id = 7, title_id = 18 where id = 71;
update user set donvi_id = 15, capbac_id = 3, title_id = 18 where id = 72;
update user set donvi_id = 15, capbac_id = 3, title_id = 18 where id = 73;
update user set donvi_id = 15, capbac_id = 11, title_id = 19 where id = 74;
update user set donvi_id = 15, capbac_id = 10, title_id = 15 where id = 75;
update user set donvi_id = 16, capbac_id = 7, title_id = 18 where id = 76;
update user set donvi_id = 16, capbac_id = 3, title_id = 18 where id = 77;
update user set donvi_id = 18, capbac_id = 10, title_id = 20 where id = 78;
update user set donvi_id = 17, capbac_id = 4, title_id = 15 where id = 79;
update user set donvi_id = 19, capbac_id = 4, title_id = 21 where id = 80;
update user set donvi_id = 20, capbac_id = 4, title_id = 15 where id = 81;
update user set donvi_id = 20, capbac_id = 3, title_id = 18 where id = 82;
update user set donvi_id = 20, capbac_id = 4, title_id = 21 where id = 83;
update user set donvi_id = 21, capbac_id = 3, title_id = 22 where id = 84;
update user set donvi_id = 22, capbac_id = 3, title_id = 18 where id = 85;
update user set donvi_id = 22, capbac_id = 3, title_id = 18 where id = 86;
update user set donvi_id = 23, capbac_id = 4, title_id = 21 where id = 87;
update user set donvi_id = 24, capbac_id = 12, title_id = 20 where id = 88;
update user set donvi_id = 25, capbac_id = 4, title_id = 20 where id = 89;
update user set donvi_id = 26, capbac_id = 4, title_id = 15 where id = 90;
update user set donvi_id = 26, capbac_id = 10, title_id = 23 where id = 91;
update user set donvi_id = 30, capbac_id = 10, title_id = 15 where id = 104;



select * from donvi;

DROP TABLE IF EXISTS `award`;
CREATE TABLE `award` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `namkhen` int DEFAULT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



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
VALUES ('CTCD', '123', 104, 1);



DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  
  `user_id` int NOT NULL,
  `level_id` int DEFAULT NULL,
  `capbac_id` int DEFAULT NULL,
   `award_id` int DEFAULT NULL,
   `title_id` int DEFAULT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
 
  PRIMARY KEY (`id`),
  KEY `title_id` (`title_id`),
  KEY `member_id` (`user_id`),
  KEY `level_id` (`level_id`),
  KEY `award_id` (`award_id`),
  CONSTRAINT `history_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `title` (`id`),
  CONSTRAINT `history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `history_ibfk_3` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`),
  CONSTRAINT `history_ibfk_4` FOREIGN KEY (`capbac_id`) REFERENCES `capbac` (`id`),
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
VALUES (104,2,1);
INSERT INTO user_group (user_id,group_id,is_admin)
VALUES (41,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (42,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (43,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (43,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (44,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (45,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (46,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (47,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (48,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (49,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (50,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (51,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (51,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (52,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (53,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (54,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (55,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (56,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (57,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (58,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (59,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (60,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (61,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (62,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (63,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (64,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (65,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (66,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (67,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (68,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (69,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (70,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (71,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (72,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (73,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (74,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (74,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (75,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (76,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (77,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (78,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (78,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (79,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (80,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (81,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (82,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (83,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (84,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (85,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (86,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (87,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (87,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (88,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (88,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (88,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (89,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (90,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (91,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (92,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (93,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (94,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (95,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (96,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (97,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (97,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (98,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (98,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (99,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (100,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (101,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (102,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (103,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (103,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (104,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (104,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (105,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (106,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (107,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (108,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (109,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (110,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (111,1,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (112,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (113,2,0);
INSERT INTO user_group (user_id,group_id,is_admin) VALUES (114,2,0);






/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

