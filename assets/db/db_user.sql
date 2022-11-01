-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2022 at 02:20 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `Email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ho` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `SoDienThoai` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `GioiTinh` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Email`, `Ho`, `Ten`, `MatKhau`, `NgaySinh`, `SoDienThoai`, `GioiTinh`) VALUES
('ntnquynh210@gmail.com', 'Nguyyễn Thị Ngọc', 'Quỳnh', 'quynhngoc20', '2002-11-20', '0986321459', 'Nữ'),
('thienphuong81@gmail.com', 'Nguyễn Thiên', 'Phương', '18contho', '2001-01-08', '0865932569', 'Nữ'),
('thiennhan1210@gmail.com', 'Võ Thiên', 'Nhân', 'thiennhan123', '2001-12-10', '0902352455', 'Nam'),
('thaitinhtran2@gmail.com', 'Trần Thái', 'Tịnh', 'thanhtinh2', '2002-02-09', '0835692458', 'Nam'),
('leminhtriet@gmail.com', 'Lê Minh', 'Triết', '7de82a5b547418022124112a2cd4fee3', '2002-01-01', '0123456789', 'Nam'),
('maiphucloc@gmail.com', 'Mai Phúc', 'Lộc', 'f415554d2795a32da3ee8aad4378e2d8', '2002-11-22', '0123456789', 'Nam'),
('buiminhthanh@gmail.com', 'Bùi Minh', 'Thành', '32c2c59809d4b1b639e5b9d6207d0fb8', '2002-05-01', '0123456789', 'Nam');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
