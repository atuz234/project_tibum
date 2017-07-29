-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 26, 2017 lúc 03:42 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_ttz`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(10) NOT NULL,
  `id_nhom` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_category`
--

CREATE TABLE `tb_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_chucnang`
--

CREATE TABLE `tb_chucnang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `f_order` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_parent` int(11) NOT NULL,
  `accept_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shown` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_donhang`
--

CREATE TABLE `tb_donhang` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(20) NOT NULL,
  `amount` int(20) NOT NULL,
  `id_mop` int(11) NOT NULL,
  `date_order` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_lichsunganhan`
--

CREATE TABLE `tb_lichsunganhan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_products`
--

CREATE TABLE `tb_products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `madeby` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `madein` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `oldprice` int(30) NOT NULL,
  `newprice` int(30) NOT NULL,
  `mfg` date NOT NULL,
  `unit` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagelist` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchased` int(20) NOT NULL,
  `numview` int(20) NOT NULL,
  `lastupdate` datetime NOT NULL,
  `inserdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_tinh_tp`
--

CREATE TABLE `tb_tinh_tp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `phone` int(30) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `birtday` date DEFAULT NULL,
  `gender` tinyint(10) NOT NULL,
  `address` varchar(500) CHARACTER SET latin1 NOT NULL,
  `status` varchar(500) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_chucnang`
--
ALTER TABLE `tb_chucnang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_donhang`
--
ALTER TABLE `tb_donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_tinh_tp`
--
ALTER TABLE `tb_tinh_tp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tb_chucnang`
--
ALTER TABLE `tb_chucnang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tb_donhang`
--
ALTER TABLE `tb_donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tb_tinh_tp`
--
ALTER TABLE `tb_tinh_tp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
