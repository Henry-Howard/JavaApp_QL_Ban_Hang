-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 11, 2022 lúc 05:15 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banhang`
--

CREATE TABLE `banhang` (
  `id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `ten` varchar(150) NOT NULL,
  `soluong` varchar(100) NOT NULL,
  `gia` varchar(30) NOT NULL,
  `tinhtrang` varchar(30) NOT NULL,
  `hangsx` varchar(100) NOT NULL,
  `danhmuc` varchar(30) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `banhang`
--

INSERT INTO `banhang` (`id`, `code`, `ten`, `soluong`, `gia`, `tinhtrang`, `hangsx`, `danhmuc`, `date`) VALUES
(1, 'THOITRANG', 'Ao thun ', '10', '140000', 'Hàng Mới', 'PS', 'Đồ Gia Dụng', '12/6/2022'),
(2, 'THOITRANG', 'Quần đùi', '12', '90000', 'Bị Hư', 'Univer', 'Đồ Ăn', '12/3/2021'),
(3, 'NUOC', 'Coca', '100', '10000', 'Bị Hư', 'CoCaCoLa', 'Nước Uống', '4/6/2021'),
(4, 'NUOC', 'PEPSI', '2', '10000', 'Hàng Mới', 'PS', 'Nước Uống', '12/2/2022');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banhang`
--
ALTER TABLE `banhang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banhang`
--
ALTER TABLE `banhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
