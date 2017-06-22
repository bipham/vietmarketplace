-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 21, 2013 at 10:29 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10
-- Cơ sở dữ liệu về địa giới hành chính Việt Nam chi tiết tới cấp Xã/Phường/Thị Trấn
-- Dữ liệu được tổng hợp từ wikipedia bởi Vũ Thanh Lai (fb.me/vuthanhlai)
-- Dữ liệu được chia sẻ tại diễn đàn sinhvienit.net

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vietnam`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE IF NOT EXISTS `district` (
  `districtid` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `cityid` varchar(5) NOT NULL,
  PRIMARY KEY (`districtid`),
  KEY `cityid` (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`districtid`, `name`, `type`, `location`, `cityid`) VALUES
('760', 'Quận 1', 'Quận', '10 46 34N, 106 41 45E', '79'),
('761', 'Quận 12', 'Quận', '10 51 43N, 106 39 32E', '79'),
('762', 'Quận Thủ Đức', 'Quận', '10 51 20N, 106 45 05E', '79'),
('763', 'Quận 9', 'Quận', '10 49 49N, 106 49 03E', '79'),
('764', 'Quận Gò Vấp', 'Quận', '10 50 12N, 106 39 52E', '79'),
('765', 'Quận Bình Thạnh', 'Quận', '10 48 46N, 106 42 57E', '79'),
('766', 'Quận Tân Bình', 'Quận', '10 48 13N, 106 39 03E', '79'),
('767', 'Quận Tân Phú', 'Quận', '10 47 32N, 106 37 31E', '79'),
('768', 'Quận Phú Nhuận', 'Quận', '10 48 06N, 106 40 39E', '79'),
('769', 'Quận 2', 'Quận', '10 46 51N, 106 45 25E', '79'),
('770', 'Quận 3', 'Quận', '10 46 48N, 106 40 46E', '79'),
('771', 'Quận 10', 'Quận', '10 46 25N, 106 40 02E', '79'),
('772', 'Quận 11', 'Quận', '10 46 01N, 106 38 44E', '79'),
('773', 'Quận 4', 'Quận', '10 45 42N, 106 42 09E', '79'),
('774', 'Quận 5', 'Quận', '10 45 24N, 106 40 00E', '79'),
('775', 'Quận 6', 'Quận', '10 44 46N, 106 38 10E', '79'),
('776', 'Quận 8', 'Quận', '10 43 24N, 106 37 40E', '79'),
('777', 'Quận Bình Tân', 'Quận', '10 46 16N, 106 35 26E', '79'),
('778', 'Quận 7', 'Quận', '10 44 19N, 106 43 35E', '79'),
('783', 'Quận Củ Chi', 'Huyện', '11 02 17N, 106 30 20E', '79'),
('784', 'Quận Hóc Môn', 'Huyện', '10 52 42N, 106 35 33E', '79'),
('785', 'Quận Bình Chánh', 'Huyện', '10 45 01N, 106 30 45E', '79'),
('786', 'Quận Nhà Bè', 'Huyện', '10 39 06N, 106 43 35E', '79'),
('787', 'Quận Cần Giờ', 'Huyện', '10 30 43N, 106 52 50E', '79');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `cityid` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cityid`, `name`, `type`) VALUES

('79', 'Hồ Chí Minh', 'Thành Phố');

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

DROP TABLE IF EXISTS `ward`;
CREATE TABLE IF NOT EXISTS `ward` (
  `wardid` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `districtid` varchar(5) NOT NULL,
  PRIMARY KEY (`wardid`),
  KEY `districtid` (`districtid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`wardid`, `name`, `type`, `location`, `districtid`) VALUES
('26734', 'Tân Định', 'Phường', '10 47 36N, 106 41 19E', '760'),
('26737', 'Đa Kao', 'Phường', '10 47 21N, 106 41 49E', '760'),
('26740', 'Bến Nghé', 'Phường', '10 46 56N, 106 42 10E', '760'),
('26743', 'Bến Thành', 'Phường', '10 46 30N, 106 41 32E', '760'),
('26746', 'Nguyễn Thái Bình', 'Phường', '10 46 08N, 106 42 02E', '760'),
('26749', 'Phạm Ngũ Lão', 'Phường', '10 46 07N, 106 21 20E', '760'),
('26752', 'Cầu Ông Lãnh', 'Phường', '10 45 59N, 106 41 44E', '760'),
('26755', 'Cô Giang', 'Phường', '10 45 48N, 106 41 29E', '760'),
('26758', 'Nguyễn Cư Trinh', 'Phường', '10 45 48N, 106 41 07E', '760'),
('26761', 'Cầu Kho', 'Phường', '10 45 30N, 106 41 12E', '760'),
('26764', 'Thạnh Xuân', 'Phường', '10 52 46N, 106 40 10E', '761'),
('26767', 'Thạnh Lộc', 'Phường', '10 52 42N, 106 41 04E', '761'),
('26770', 'Hiệp Thành', 'Phường', '10 52 52N, 106 38 07E', '761'),
('26773', 'Thới An', 'Phường', '10 52 36N, 106 39 16E', '761'),
('26776', 'Tân Chánh Hiệp', 'Phường', '10 51 54N, 106 37 27E', '761'),
('26779', 'An Phú Đông', 'Phường', '10 51 06N, 106 41 50E', '761'),
('26782', 'Tân Thới Hiệp', 'Phường', '10 51 47N, 106 38 20E', '761'),
('26785', 'Trung Mỹ Tây', 'Phường', '10 51 21N, 106 36 57E', '761'),
('26787', 'Tân Hưng Thuận', 'Phường', '', '761'),
('26788', 'Đông Hưng Thuận', 'Phường', '10 50 29N, 106 37 38E', '761'),
('26791', 'Tân Thới Nhất', 'Phường', '10 49 53N, 106 36 49E', '761'),
('26794', 'Linh Xuân', 'Phường', '10 52 56N, 106 46 08E', '762'),
('26797', 'Bình Chiểu', 'Phường', '10 53 03N, 106 43 49E', '762'),
('26800', 'Linh Trung', 'Phường', '10 51 50N, 106 46 58E', '762'),
('26803', 'Tam Bình', 'Phường', '10 52 04N, 106 44 03E', '762'),
('26806', 'Tam Phú', 'Phường', '10 51 29N, 106 44 19E', '762'),
('26809', 'Hiệp Bình Phước', 'Phường', '10 51 15N, 106 43 11E', '762'),
('26812', 'Hiệp Bình Chánh', 'Phường', '10 50 24N, 106 43 19E', '762'),
('26815', 'Linh Chiểu', 'Phường', '10 51 23N, 106 45 45E', '762'),
('26818', 'Linh Tây', 'Phường', '10 51 33N, 106 45 16E', '762'),
('26821', 'Linh Đông', 'Phường', '10 50 52N, 106 44 39E', '762'),
('26824', 'Bình Thọ', 'Phường', '10 50 43N, 106 45 51E', '762'),
('26827', 'Trường Thọ', 'Phường', '10 49 59N, 106 45 18E', '762'),
('26830', 'Long Bình', 'Phường', '10 51 57N, 106 49 57E', '763'),
('26833', 'Long Thạnh Mỹ', 'Phường', '10 51 13N, 106 49 05E', '763'),
('26836', 'Tân Phú', 'Phường', '10 51 40N, 106 47 53E', '763'),
('26839', 'Hiệp Phú', 'Phường', '10 50 56N, 106 46 45E', '763'),
('26842', 'Tăng Nhơn Phú A', 'Phường', '10 50 37N, 106 47 29E', '763'),
('26845', 'Tăng Nhơn Phú B', 'Phường', '10 49 50N, 106 47 11E', '763'),
('26848', 'Phước Long B', 'Phường', '10 49 07N, 106 46 39E', '763'),
('26851', 'Phước Long A', 'Phường', '10 49 22N, 106 45 44E', '763'),
('26854', 'Trường Thạnh', 'Phường', '10 48 26N, 106 49 04E', '763'),
('26857', 'Long Phước', 'Phường', '10 48 17N, 106 51 20E', '763'),
('26860', 'Long Trường', 'Phường', '10 47 39N, 106 49 13E', '763'),
('26863', 'Phước Bình', 'Phường', '10 48 57N, 106 46 14E', '763'),
('26866', 'Phú Hữu', 'Phường', '10 47 55N, 106 48 02E', '763'),
('26869', '15', 'Phường', '10 51 13N, 106 40 08E', '764'),
('26872', '13', 'Phường', '10 51 23N, 106 39 22E', '764'),
('26875', '17', 'Phường', '10 50 33N, 106 40 41E', '764'),
('26876', '6', 'Phường', '', '764'),
('26878', '16', 'Phường', '10 50 47N, 106 39 46E', '764'),
('26881', '12', 'Phường', '10 50 41N, 106 38 33E', '764'),
('26882', '14', 'Phường', '10 49 59N, 106 40 11E', '764'),
('26884', '10', 'Phường', '10 49 50N, 106 41 26E', '764'),
('26887', '05', 'Phường', '10 49 50N, 106 41 26E', '764'),
('26890', '07', 'Phường', '10 49 47N, 106 40 55E', '764'),
('26893', '04', 'Phường', '10 49 18N, 106 41 01E', '764'),
('26896', '01', 'Phường', '10 49 01N, 106 41 11E', '764'),
('26897', '9', 'Phường', '', '764'),
('26898', '8', 'Phường', '', '764'),
('26899', '11', 'Phường', '10 50 24N, 106 39 14E', '764'),
('26902', '03', 'Phường', '10 49 11N, 106 40 37E', '764'),
('26905', '13', 'Phường', '10 49 43N, 106 42 07E', '765'),
('26908', '11', 'Phường', '10 48 59N, 106 41 32E', '765'),
('26911', '27', 'Phường', '10 48 58N, 106 43 05E', '765'),
('26914', '26', 'Phường', '10 48 52N, 106 42 31E', '765'),
('26917', '12', 'Phường', '10 48 48N, 106 41 58E', '765'),
('26920', '25', 'Phường', '10 48 25N, 106 43 02E', '765'),
('26923', '05', 'Phường', '10 48 47N, 106 41 08E', '765'),
('26926', '07', 'Phường', '10 48 29N, 106 41 23E', '765'),
('26929', '24', 'Phường', '10 48 23N, 106 42 11E', '765'),
('26932', '06', 'Phường', '10 48 25N, 106 41 10E', '765'),
('26935', '14', 'Phường', '10 48 29N, 106 41 40E', '765'),
('26938', '15', 'Phường', '10 47 58N, 106 42 10E', '765'),
('26941', '02', 'Phường', '10 47 59N, 106 41 56E', '765'),
('26944', '01', 'Phường', '10 47 57N, 106 41 45E', '765'),
('26947', '03', 'Phường', '10 47 58N, 106 41 29E', '765'),
('26950', '17', 'Phường', '10 47 51N, 106 42 14E', '765'),
('26953', '21', 'Phường', '10 47 52N, 106 42 39E', '765'),
('26956', '22', 'Phường', '10 47 37N, 106 43 05E', '765'),
('26959', '19', 'Phường', '10 47 32N, 106 42 29E', '765'),
('26962', '28', 'Phường', '10 49 22N, 106 44 07E', '765'),
('26965', '02', 'Phường', '10 48 28N, 106 39 56E', '766'),
('26968', '04', 'Phường', '10 48 17N, 106 39 22E', '766'),
('26971', '12', 'Phường', '10 48 06N, 106 38 52E', '766'),
('26974', '13', 'Phường', '10 48 16N, 106 38 22E', '766'),
('26977', '01', 'Phường', '10 47 48N, 106 39 53E', '766'),
('26980', '03', 'Phường', '10 47 41N, 106 39 38E', '766'),
('26983', '11', 'Phường', '10 47 26N, 106 38 45E', '766'),
('26986', '07', 'Phường', '10 47 23N, 106 39 17E', '766'),
('26989', '05', 'Phường', '10 47 24N, 106 39 37E', '766'),
('26992', '10', 'Phường', '10 46 56N, 106 38 40E', '766'),
('26995', '06', 'Phường', '10 47 04N, 106 39 27E', '766'),
('26998', '08', 'Phường', '10 47 08N, 106 39 02E', '766'),
('27001', '09', 'Phường', '10 36 32N, 106 39 00E', '766'),
('27004', '14', 'Phường', '10 47 42N, 106 38 17E', '766'),
('27007', '15', 'Phường', '10 49 16N, 106 39 03E', '766'),
('27010', 'Tân Sơn Nhì', 'Phường', '10 48 00N, 106 37 49E', '767'),
('27013', 'Tây Thạnh', 'Phường', '10 48 53N, 106 37 10E', '767'),
('27016', 'Sơn Kỳ', 'Phường', '10 48 05N, 106 37 04E', '767'),
('27019', 'Tân Quý', 'Phường', '10 47 44N, 106 37 11E', '767'),
('27022', 'Tân Thành', 'Phường', '10 47 32N, 106 37 55E', '767'),
('27025', 'Phú Thọ Hoà', 'Phường', '10 47 10N, 106 37 30E', '767'),
('27028', 'Phú Thạnh', 'Phường', '10 46 57N, 106 37 34E', '767'),
('27031', 'Phú Trung', 'Phường', '10 46 40N, 106 38 23E', '767'),
('27034', 'Hoà Thạnh', 'Phường', '10 46 45N, 106 38 05E', '767'),
('27037', 'Hiệp Tân', 'Phường', '10 46 08N, 106 37 36E', '767'),
('27040', 'Tân Thới Hoà', 'Phường', '10 45 55N, 106 37 39E', '767'),
('27043', '04', 'Phường', '10 48 31N, 106 40 39E', '768'),
('27046', '05', 'Phường', '10 48 29N, 106 40 55E', '768'),
('27049', '09', 'Phường', '10 48 27N, 106 40 19E', '768'),
('27052', '07', 'Phường', '10 48 05N, 106 41 11E', '768'),
('27055', '03', 'Phường', '10 48 10N, 106 40 47E', '768'),
('27058', '01', 'Phường', '10 47 59N, 106 40 49E', '768'),
('27061', '02', 'Phường', '10 47 56N, 106 41 08E', '768'),
('27064', '08', 'Phường', '10 47 54N, 106 40 23E', '768'),
('27067', '15', 'Phường', '10 47 50N, 106 40 40E', '768'),
('27070', '10', 'Phường', '10 47 46N, 106 40 10E', '768'),
('27073', '11', 'Phường', '10 47 39N, 106 40 21E', '768'),
('27076', '17', 'Phường', '10 47 41N, 106 40 52E', '768'),
('27079', '14', 'Phường', '10 47 34N, 106 40 00E', '768'),
('27082', '12', 'Phường', '10 47 37N, 106 40 37E', '768'),
('27085', '13', 'Phường', '10 47 27N, 106 40 06E', '768'),
('27088', 'Thảo Điền', 'Phường', '10 48 36N, 106 44 00E', '769'),
('27091', 'An Phú', 'Phường', '10 47 55N, 106 45 17E', '769'),
('27094', 'Bình An', 'Phường', '10 47 31N, 106 43 39E', '769'),
('27097', 'Bình Trưng Đông', 'Phường', '10 47 07N, 106 46 36E', '769'),
('27100', 'Bình Trưng Tây', 'Phường', '10 47 00N, 106 44 59E', '769'),
('27103', 'Bình Khánh', 'Phường', '10 47 02N, 106 44 05E', '769'),
('27106', 'An Khánh', 'Phường', '10 46 54N, 106 42 57E', '769'),
('27109', 'Cát Lái', 'Phường', '10 46 11N, 106 46 59E', '769'),
('27112', 'Thạnh Mỹ Lợi', 'Phường', '10 45 47N, 106 45 56E', '769'),
('27115', 'An Lợi Đông', 'Phường', '10 46 14N, 106 43 23E', '769'),
('27118', 'Thủ Thiêm', 'Phường', '10 46 19N, 106 42 54E', '769'),
('27121', '08', 'Phường', '10 47 23N, 106 41 05E', '770'),
('27124', '07', 'Phường', '10 47 05N, 106 41 04E', '770'),
('27127', '14', 'Phường', '10 47 23N, 106 40 36E', '770'),
('27130', '12', 'Phường', '10 47 20N, 106 40 19E', '770'),
('27133', '11', 'Phường', '10 47 17N, 106 40 05E', '770'),
('27136', '13', 'Phường', '10 47 15N, 106 40 36E', '770'),
('27139', '06', 'Phường', '10 46 53N, 106 41 23E', '770'),
('27142', '09', 'Phường', '10 46 59N, 106 40 38E', '770'),
('27145', '10', 'Phường', '10 46 57N, 106 40 25E', '770'),
('27148', '04', 'Phường', '10 46 30N, 106 40 51E', '770'),
('27151', '05', 'Phường', '10 46 21N, 106 41 02E', '770'),
('27154', '03', 'Phường', '10 46 17N, 106 40 39E', '770'),
('27157', '02', 'Phường', '10 46 07N, 106 40 47E', '770'),
('27160', '01', 'Phường', '10 46 10N, 106 40 31E', '770'),
('27163', '15', 'Phường', '10 46 58N, 106 39 52E', '771'),
('27166', '13', 'Phường', '10 46 48N, 106 40 08E', '771'),
('27169', '14', 'Phường', '10 46 27N, 106 39 34E', '771'),
('27172', '12', 'Phường', '10 46 30N, 106 40 13E', '771'),
('27175', '11', 'Phường', '10 46 29N, 106 40 34E', '771'),
('27178', '10', 'Phường', '10 46 14N, 106 40 11E', '771'),
('27181', '09', 'Phường', '10 46 02N, 106 40 07E', '771'),
('27184', '01', 'Phường', '10 45 57N, 106 40 34E', '771'),
('27187', '08', 'Phường', '10 45 59N, 106 39 51E', '771'),
('27190', '02', 'Phường', '10 45 55N, 106 40 21E', '771'),
('27193', '04', 'Phường', '10 45 50N, 106 40 05E', '771'),
('27196', '07', 'Phường', '10 45 45N, 106 39 33E', '771'),
('27199', '05', 'Phường', '10 45 45N, 106 39 53E', '771'),
('27202', '06', 'Phường', '10 45 48N, 106 39 42E', '771'),
('27205', '03', 'Phường', '10 45 48N, 106 40 09E', '771'),
('27208', '15', 'Phường', '10 46 17N, 106 39 15E', '772'),
('27211', '05', 'Phường', '10 46 17N, 106 38 24E', '772'),
('27214', '14', 'Phường', '10 46 13N, 106 38 47E', '772'),
('27217', '11', 'Phường', '10 46 02N, 106 38 54E', '772'),
('27220', '03', 'Phường', '10 45 52N, 106 38 11E', '772'),
('27223', '10', 'Phường', '10 45 49N, 106 38 32E', '772'),
('27226', '13', 'Phường', '10 45 55N, 106 39 08E', '772'),
('27229', '08', 'Phường', '10 45 45N, 106 38 48E', '772'),
('27232', '09', 'Phường', '10 45 46N, 106 38 38E', '772'),
('27235', '12', 'Phường', '10 45 42N, 106 39 07E', '772'),
('27238', '07', 'Phường', '10 45 42N, 106 39 25E', '772'),
('27241', '06', 'Phường', '10 45 40N, 106 39 11E', '772'),
('27244', '04', 'Phường', '10 45 33N, 106 39 12E', '772'),
('27247', '01', 'Phường', '10 45 28N, 106 38 12E', '772'),
('27250', '02', 'Phường', '10 45 27N, 106 38 36E', '772'),
('27253', '16', 'Phường', '10 45 26N, 106 38 44E', '772'),
('27256', '12', 'Phường', '10 46 01N, 106 42 13E', '773'),
('27259', '13', 'Phường', '10 45 48N, 106 42 30E', '773'),
('27262', '09', 'Phường', '10 45 52N, 106 42 02E', '773'),
('27265', '06', 'Phường', '10 45 42N, 106 41 52E', '773'),
('27268', '08', 'Phường', '10 45 40N, 106 42 03E', '773'),
('27271', '10', 'Phường', '10 45 42N, 106 42 13E', '773'),
('27274', '05', 'Phường', '10 45 35N, 106 41 44E', '773'),
('27277', '18', 'Phường', '10 45 30N, 106 42 54E', '773'),
('27280', '14', 'Phường', '10 45 33N, 106 42 25E', '773'),
('27283', '04', 'Phường', '10 45 26N, 106 42 05E', '773'),
('27286', '03', 'Phường', '10 45 23N, 106 41 48E', '773'),
('27289', '16', 'Phường', '10 45 23N, 106 42 39E', '773'),
('27292', '02', 'Phường', '10 45 27N, 106 41 35E', '773'),
('27295', '15', 'Phường', '10 45 22N, 106 42 21E', '773'),
('27298', '01', 'Phường', '10 45 21N, 106 41 21E', '773'),
('27301', '04', 'Phường', '10 45 46N, 106 40 37E', '774'),
('27304', '09', 'Phường', '10 45 35N, 106 40 07E', '774'),
('27307', '03', 'Phường', '10 45 35N, 106 40 39E', '774'),
('27310', '12', 'Phường', '10 45 28N, 106 39 33E', '774'),
('27313', '02', 'Phường', '10 45 28N, 106 40 43E', '774'),
('27316', '08', 'Phường', '10 45 26N, 106 40 09E', '774'),
('27319', '15', 'Phường', '10 45 23N, 106 39 06E', '774'),
('27322', '07', 'Phường', '10 45 19N, 106 40 11E', '774'),
('27325', '01', 'Phường', '10 45 17N, 106 40 48E', '774'),
('27328', '11', 'Phường', '10 45 18N, 106 39 38E', '774'),
('27331', '14', 'Phường', '10 45 13N, 106 39 10E', '774'),
('27334', '05', 'Phường', '10 45 08N, 106 40 22E', '774'),
('27337', '06', 'Phường', '10 45 06N, 106 40 06E', '774'),
('27340', '10', 'Phường', '10 45 05N, 106 39 40E', '774'),
('27343', '13', 'Phường', '10 44 59N, 106 39 18E', '774'),
('27346', '14', 'Phường', '10 45 30N, 106 37 46E', '775'),
('27349', '13', 'Phường', '10 45 10N, 106 37 38E', '775'),
('27352', '09', 'Phường', '10 45 11N, 106 38 17E', '775'),
('27355', '06', 'Phường', '10 45 10N, 106 38 39E', '775'),
('27358', '12', 'Phường', '10 45 04N, 106 37 47E', '775'),
('27361', '05', 'Phường', '10 44 57N, 106 38 31E', '775'),
('27364', '11', 'Phường', '10 44 46N, 106 37 46E', '775'),
('27367', '02', 'Phường', '10 45 06N, 106 38 55E', '775'),
('27370', '01', 'Phường', '10 44 49N, 106 38 58E', '775'),
('27373', '04', 'Phường', '10 44 47N, 106 38 37E', '775'),
('27376', '08', 'Phường', '10 44 38N, 106 38 13E', '775'),
('27379', '03', 'Phường', '10 44 38N, 106 38 40E', '775'),
('27382', '07', 'Phường', '10 44 21N, 106 38 13E', '775'),
('27385', '10', 'Phường', '10 44 14N, 106 37 34E', '775'),
('27388', '08', 'Phường', '10 45 00N, 106 40 42E', '776'),
('27391', '02', 'Phường', '10 44 48N, 106 41 04E', '776'),
('27394', '01', 'Phường', '10 44 49N, 106 41 17E', '776'),
('27397', '03', 'Phường', '10 44 45N, 106 40 49E', '776'),
('27400', '11', 'Phường', '10 44 51N, 106 39 33E', '776'),
('27403', '09', 'Phường', '10 44 50N, 106 40 07E', '776'),
('27406', '10', 'Phường', '10 44 49N, 106 39 48E', '776'),
('27409', '04', 'Phường', '10 44 32N, 106 40 26E', '776'),
('27412', '13', 'Phường', '10 44 47N, 106 39 13E', '776'),
('27415', '12', 'Phường', '10 44 39N, 106 39 16E', '776'),
('27418', '05', 'Phường', '10 44 20N, 106 39 43E', '776'),
('27421', '14', 'Phường', '10 44 25N, 106 38 44E', '776'),
('27424', '06', 'Phường', '10 44 09N, 106 38 47E', '776'),
('27427', '15', 'Phường', '10 43 33N, 106 37 57E', '776'),
('27430', '16', 'Phường', '10 43 15N, 106 37 18E', '776'),
('27433', '07', 'Phường', '10 42 48N, 106 37 43E', '776'),
('27436', 'Bình Hưng Hòa', 'Phường', '10 48 09N, 106 36 00E', '777'),
('27439', 'Binh Hưng Hoà A', 'Phường', '10 47 10N, 106 36 19E', '777'),
('27442', 'Binh Hưng Hoà B', 'Phường', '10 48 12N, 106 35 27E', '777'),
('27445', 'Bình Trị Đông', 'Phường', '10 46 01N, 106 36 56E', '777'),
('27448', 'Bình Trị Đông A', 'Phường', '10 46 06N, 106 35 58E', '777'),
('27451', 'Bình Trị Đông B', 'Phường', '10 45 14N, 106 36 37E', '777'),
('27454', 'Tân Tạo', 'Phường', '10 45 30N, 106 35 06E', '777'),
('27457', 'Tân Tạo A', 'Phường', '10 44 52N, 106 34 50E', '777'),
('27460', 'An Lạc', 'Phường', '10 43 45N, 106 36 36E', '777'),
('27463', 'An Lạc A', 'Phường', '10 44 06N, 106 36 37E', '777'),
('27466', 'Tân Thuận Đông', 'Phường', '10 45 30N, 106 44 06E', '778'),
('27469', 'Tân Thuận Tây', 'Phường', '10 45 06N, 106 43 14E', '778'),
('27472', 'Tân Kiểng', 'Phường', '10 44 58N, 106 42 31E', '778'),
('27475', 'Tân Hưng', 'Phường', '10 44 43N, 106 41 45E', '778'),
('27478', 'Bình Thuận', 'Phường', '10 44 41N, 106 43 17E', '778'),
('27481', 'Tân Quy', 'Phường', '10 44 33N, 106 42 28E', '778'),
('27484', 'Phú Thuận', 'Phường', '10 43 47N, 106 44 48E', '778'),
('27487', 'Tân Phú', 'Phường', '10 43 34N, 106 43 22E', '778'),
('27490', 'Tân Phong', 'Phường', '10 43 49N, 106 42 13E', '778'),
('27493', 'Phú Mỹ', 'Phường', '10 42 32N, 106 44 11E', '778'),
('27496', 'Củ Chi', 'Thị Trấn', '10 58 31N, 106 29 32E', '783'),
('27499', 'Phú Mỹ Hưng', 'Xã', '11 07 19N, 106 27 39E', '783'),
('27502', 'An Phú', 'Xã', '11 06 53N, 106 29 58E', '783'),
('27505', 'Trung Lập Thượng', 'Xã', '11 03 58N, 106 26 14E', '783'),
('27508', 'An Nhơn Tây', 'Xã', '11 04 27N, 106 29 26E', '783'),
('27511', 'Nhuận Đức', 'Xã', '11 02 29N, 106 29 13E', '783'),
('27514', 'Phạm Văn Cội', 'Xã', '11 02 30N, 106 31 19E', '783'),
('27517', 'Phú Hòa Đông', 'Xã', '11 01 32N, 106 32 50E', '783'),
('27520', 'Trung Lập Hạ', 'Xã', '11 01 16N, 106 27 49E', '783'),
('27523', 'Trung An', 'Xã', '11 00 54N, 106 35 30E', '783'),
('27526', 'Phước Thạnh', 'Xã', '11 01 05N, 106 25 40E', '783'),
('27529', 'Phước Hiệp', 'Xã', '10 58 59N, 106 26 50E', '783'),
('27532', 'Tân An Hội', 'Xã', '10 58 04N, 106 28 39E', '783'),
('27535', 'Phước Vĩnh An', 'Xã', '10 58 58N, 106 31 10E', '783'),
('27538', 'Thái Mỹ', 'Xã', '10 59 12N, 106 23 35E', '783'),
('27541', 'Tân Thạnh Tây', 'Xã', '10 59 20N, 106 33 26E', '783'),
('27544', 'Hòa Phú', 'Xã', '10 58 41N, 106 36 31E', '783'),
('27547', 'Tân Thạnh Đông', 'Xã', '10 57 14N, 106 35 32E', '783'),
('27550', 'Bình Mỹ', 'Xã', '10 56 55N, 106 37 37E', '783'),
('27553', 'Tân Phú Trung', 'Xã', '10 56 50N, 106 32 59E', '783'),
('27556', 'Tân Thông Hội', 'Xã', '10 56 53N, 106 30 32E', '783'),
('27559', 'Hóc Môn', 'Thị Trấn', '10 53 12N, 106 35 28E', '784'),
('27562', 'Tân Hiệp', 'Xã', '10 54 40N, 106 35 26E', '784'),
('27565', 'Nhị Bình', 'Xã', '10 54 46N, 106 40 15E', '784'),
('27568', 'Đông Thạnh', 'Xã', '10 54 12N, 106 38 32E', '784'),
('27571', 'Tân Thới Nhì', 'Xã', '10 54 12N, 106 32 26E', '784'),
('27574', 'Thới Tam Thôn', 'Xã', '10 53 32N, 106 36 40E', '784'),
('27577', 'Xuân Thới Sơn', 'Xã', '10 52 42N, 106 33 24E', '784'),
('27580', 'Tân Xuân', 'Xã', '10 52 14N, 106 35 51E', '784'),
('27583', 'Xuân Thới Đông', 'Xã', '10 52 03N, 106 35 35E', '784'),
('27586', 'Trung Chánh', 'Xã', '10 52 00N, 106 36 24E', '784'),
('27589', 'Xuân Thới Thượng', 'Xã', '10 51 17N, 106 33 44E', '784'),
('27592', 'Bà Điểm', 'Xã', '10 50 34N, 106 35 43E', '784'),
('27595', 'Tân Túc', 'Thị Trấn', '10 41 15N, 106 34 14E', '785'),
('27598', 'Phạm Văn Hai', 'Xã', '10 49 24N, 106 31 41E', '785'),
('27601', 'Vĩnh Lộc A', 'Xã', '10 49 28N, 106 33 49E', '785'),
('27604', 'Vĩnh Lộc B', 'Xã', '10 47 27N, 106 33 43E', '785'),
('27607', 'Bình Lợi', 'Xã', '10 45 21N, 106 28 20E', '785'),
('27610', 'Lê Minh Xuân', 'Xã', '10 45 22N, 106 31 32E', '785'),
('27613', 'Tân Nhựt', 'Xã', '10 42 58N, 106 33 05E', '785'),
('27616', 'Tân Kiên', 'Xã', '10 42 55N, 106 34 59E', '785'),
('27619', 'Bình Hưng', 'Xã', '10 43 03N, 106 40 07E', '785'),
('27622', 'Phong Phú', 'Xã', '10 42 02N, 106 39 03E', '785'),
('27625', 'An Phú Tây', 'Xã', '10 41 17N, 106 36 22E', '785'),
('27628', 'Hưng Long', 'Xã', '10 40 02N, 106 37 26E', '785'),
('27631', 'Đa Phước', 'Xã', '10 39 51N, 106 39 28E', '785'),
('27634', 'Tân Quý Tây', 'Xã', '10 40 05N, 106 35 43E', '785'),
('27637', 'Bình Chánh', 'Xã', '10 39 55N, 106 33 53E', '785'),
('27640', 'Quy Đức', 'Xã', '10 38 24N, 106 38 45E', '785'),
('27643', 'Nhà Bè', 'Thị Trấn', '10 41 38N, 106 44 23E', '786'),
('27646', 'Phước Kiển', 'Xã', '10 42 14N, 106 42 24E', '786'),
('27649', 'Phước Lộc', 'Xã', '10 41 57N, 106 41 03E', '786'),
('27652', 'Nhơn Đức', 'Xã', '10 40 20N, 106 42 05E', '786'),
('27655', 'Phú Xuân', 'Xã', '10 40 43N, 106 44 57E', '786'),
('27658', 'Long Thới', 'Xã', '10 39 09N, 106 43 22E', '786'),
('27661', 'Hiệp Phước', 'Xã', '10 36 49N, 106 44 57E', '786'),
('27664', 'Cần Thạnh', 'Thị Trấn', '10 24 41N, 106 57 11E', '787'),
('27667', 'Bình Khánh', 'Xã', '10 38 22N, 106 47 24E', '787'),
('27670', 'Tam Thôn Hiệp', 'Xã', '10 35 00N, 106 52 57E', '787'),
('27673', 'An Thới Đông', 'Xã', '10 33 17N, 106 48 20E', '787'),
('27676', 'Thạnh An', 'Xã', '10 30 57N, 106 58 19E', '787'),
('27679', 'Long Hòa', 'Xã', '10 26 45N, 106 54 09E', '787'),
('27682', 'Lý Nhơn', 'Xã', '10 27 22N, 106 48 09E', '787');
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
