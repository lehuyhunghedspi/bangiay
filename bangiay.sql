-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2017 lúc 03:38 PM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bangiay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatlieu`
--

CREATE TABLE `chatlieu` (
  `idchatlieu` int(11) NOT NULL,
  `tenchatlieu` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chatlieu`
--

INSERT INTO `chatlieu` (`idchatlieu`, `tenchatlieu`) VALUES
(7, 'Da bóng'),
(8, 'Da mờ'),
(3, 'Da thật'),
(4, 'Da tổng hợp'),
(6, 'Denim'),
(5, 'Microfiber'),
(9, 'VẢI TWEET');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `idcomment` int(11) NOT NULL,
  `noidung` varchar(450) DEFAULT NULL,
  `thoigianbinhluan` datetime NOT NULL,
  `nguoidung_idnguoidung` int(11) NOT NULL,
  `giay_idgiay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `iddonhang` int(11) NOT NULL,
  `ngaymua` datetime NOT NULL,
  `diachichitiet` varchar(50) NOT NULL,
  `ngayguido` datetime DEFAULT NULL,
  `ngaynhando` datetime DEFAULT NULL,
  `ngaynhantien` datetime DEFAULT NULL,
  `quanhuyen_idquanhuyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaodich`
--

CREATE TABLE `giaodich` (
  `idgiaodich` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `sizemau_idsizemau` int(11) NOT NULL,
  `nguoidung_idnguoidung` int(11) NOT NULL,
  `donhang_iddonhang` int(11) NOT NULL,
  `iscancel` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giay`
--

CREATE TABLE `giay` (
  `idgiay` int(11) NOT NULL,
  `ten` varchar(45) NOT NULL,
  `giaban` int(11) NOT NULL,
  `ngayban` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `docaocuade` int(11) DEFAULT NULL,
  `loaimui_idloaimui` int(11) NOT NULL,
  `chatlieu_idchatlieu` int(11) NOT NULL,
  `kieugiay_idkieugiay` int(11) NOT NULL,
  `loaigot_idloaigot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kieugiay`
--

CREATE TABLE `kieugiay` (
  `idkieugiay` int(11) NOT NULL,
  `kieugiay` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `kieugiay`
--

INSERT INTO `kieugiay` (`idkieugiay`, `kieugiay`) VALUES
(1, 'bình thường'),
(2, 'wide fit');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaigot`
--

CREATE TABLE `loaigot` (
  `idloaigot` int(11) NOT NULL,
  `tenloaigot` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaigot`
--

INSERT INTO `loaigot` (`idloaigot`, `tenloaigot`) VALUES
(1, 'nhọn'),
(2, 'trụ'),
(3, 'vuông'),
(4, 'xuồng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaimui`
--

CREATE TABLE `loaimui` (
  `idloaimui` int(11) NOT NULL,
  `tenloaimui` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaimui`
--

INSERT INTO `loaimui` (`idloaimui`, `tenloaimui`) VALUES
(3, 'Bít mũi nhọn'),
(2, 'Bít mũi tròn'),
(1, 'Hở mũi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `idmau` int(11) NOT NULL,
  `tenmau` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`idmau`, `tenmau`) VALUES
(64, 'be'),
(65, 'camel'),
(63, 'hồng'),
(67, 'lavender'),
(62, 'xám'),
(66, 'đen');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mucdich`
--

CREATE TABLE `mucdich` (
  `idmucdich` int(11) NOT NULL,
  `tenmucdich` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mucdich`
--

INSERT INTO `mucdich` (`idmucdich`, `tenmucdich`) VALUES
(3, 'chơi thể thao'),
(2, 'đi dự tiệc'),
(4, 'đi học'),
(5, 'đi làm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mucdich_cua_giay`
--

CREATE TABLE `mucdich_cua_giay` (
  `mucdich_idmucdich` int(11) NOT NULL,
  `giay_idgiay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `idnguoidung` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `tendangnhap` varchar(45) NOT NULL,
  `matkhau` varchar(45) NOT NULL,
  `sodienthoai` varchar(45) NOT NULL,
  `mucquyen` varchar(45) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanhuyen`
--

CREATE TABLE `quanhuyen` (
  `idquanhuyen` int(11) NOT NULL,
  `tenquanhuyen` varchar(45) NOT NULL,
  `thanhpho_idthanhpho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `quanhuyen`
--

INSERT INTO `quanhuyen` (`idquanhuyen`, `tenquanhuyen`, `thanhpho_idthanhpho`) VALUES
(1, 'Quận Ba Đình', 24),
(2, 'Quận Hoàn Kiếm', 24),
(3, 'Quận Hai Bà Trưng', 24),
(4, 'Quận Đống Đa', 24),
(5, 'Quận Tây Hồ', 24),
(6, 'Quận Cầu Giấy', 24),
(7, 'Quận Thanh Xuân', 24),
(8, 'Quận Hoàng Mai', 24),
(9, 'Quận Long Biên', 24),
(10, 'Huyện Từ Liêm', 24),
(11, 'Huyện Thanh Trì', 24),
(12, 'Huyện Gia Lâm', 24),
(13, 'Huyện Đông Anh', 24),
(14, 'Huyện Sóc Sơn', 24),
(15, 'Quận Hà Đông', 24),
(16, 'Thị xã Sơn Tây', 24),
(17, 'Huyện Ba Vì', 24),
(18, 'Huyện Phúc Thọ', 24),
(19, 'Huyện Thạch Thất', 24),
(20, 'Huyện Quốc Oai', 24),
(21, 'Huyện Chương Mỹ', 24),
(22, 'Huyện Đan Phượng', 24),
(23, 'Huyện Hoài Đức', 24),
(24, 'Huyện Thanh Oai', 24),
(25, 'Huyện Mỹ Đức', 24),
(26, 'Huyện Ứng Hoà', 24),
(27, 'Huyện Thường Tín', 24),
(28, 'Huyện Phú Xuyên', 24),
(29, 'Huyện Mê Linh', 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizemau`
--

CREATE TABLE `sizemau` (
  `idsizemau` int(11) NOT NULL,
  `mau_idmau` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `soluongbandau` varchar(45) NOT NULL,
  `t` varchar(45) DEFAULT NULL,
  `giay_idgiay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhpho`
--

CREATE TABLE `thanhpho` (
  `idthanhpho` int(11) NOT NULL,
  `tenthanhpho` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thanhpho`
--

INSERT INTO `thanhpho` (`idthanhpho`, `tenthanhpho`) VALUES
(1, 'An Giang'),
(2, 'Bà Rịa - Vũng Tàu'),
(5, 'Bắc Giang'),
(4, 'Bắc Kạn'),
(3, 'Bạc Liêu'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Dương'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(9, 'Bình Định'),
(12, 'Cà Mau'),
(14, 'Cần Thơ'),
(13, 'Cao Bằng'),
(21, 'Gia Lai'),
(22, 'Hà Giang'),
(23, 'Hà Nam'),
(24, 'Hà Nội'),
(25, 'Hà Tĩnh'),
(26, 'Hải Dương'),
(27, 'Hải Phòng'),
(29, 'Hậu Giang'),
(28, 'Hòa Bình'),
(30, 'Hưng Yên'),
(32, 'Khánh Hòa'),
(33, 'Kiên Giang'),
(34, 'Kon Tum'),
(35, 'Lai Châu'),
(38, 'Lâm Đồng'),
(37, 'Lạng Sơn'),
(36, 'Lào Cai'),
(39, 'Long An'),
(40, 'Nam Định'),
(41, 'Nghệ An'),
(42, 'Ninh Bình'),
(43, 'Ninh Thuận'),
(44, 'Phú Thọ'),
(45, 'Phú Yên'),
(46, 'Quảng Bình'),
(47, 'Quảng Nam'),
(48, 'Quảng Ngãi'),
(49, 'Quảng Ninh'),
(50, 'Quảng Trị'),
(51, 'Sóc Trăng'),
(52, 'Sơn La'),
(53, 'Tây Ninh'),
(54, 'Thái Bình'),
(55, 'Thái Nguyên'),
(56, 'Thanh Hóa'),
(31, 'Thành phố Hồ Chí Minh'),
(57, 'Thừa Thiên - Huế'),
(58, 'Tiền Giang'),
(59, 'Trà Vinh'),
(60, 'Tuyên Quang'),
(61, 'Vĩnh Long'),
(62, 'Vĩnh Phúc'),
(63, 'Yên Bái'),
(15, 'Đà Nẵng'),
(16, 'Đắk Lắk'),
(17, 'Đắk Nông'),
(20, 'Điện Biên'),
(18, 'Đồng Nai'),
(19, 'Đồng Tháp');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chatlieu`
--
ALTER TABLE `chatlieu`
  ADD PRIMARY KEY (`idchatlieu`),
  ADD UNIQUE KEY `tenchatlieu_UNIQUE` (`tenchatlieu`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`idcomment`),
  ADD KEY `fk_comment_nguoidung1_idx` (`nguoidung_idnguoidung`),
  ADD KEY `fk_comment_giay1_idx` (`giay_idgiay`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`iddonhang`),
  ADD KEY `fk_donhang_quanhuyen1_idx` (`quanhuyen_idquanhuyen`);

--
-- Chỉ mục cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`idgiaodich`),
  ADD KEY `fk_giaodich_sizemau1_idx` (`sizemau_idsizemau`),
  ADD KEY `fk_giaodich_nguoidung1_idx` (`nguoidung_idnguoidung`),
  ADD KEY `fk_giaodich_donhang1_idx` (`donhang_iddonhang`);

--
-- Chỉ mục cho bảng `giay`
--
ALTER TABLE `giay`
  ADD PRIMARY KEY (`idgiay`),
  ADD UNIQUE KEY `ten_UNIQUE` (`ten`),
  ADD KEY `fk_giay_loaimui1_idx` (`loaimui_idloaimui`),
  ADD KEY `fk_giay_chatlieu1_idx` (`chatlieu_idchatlieu`),
  ADD KEY `fk_giay_kieugiay1_idx` (`kieugiay_idkieugiay`),
  ADD KEY `fk_giay_loaigot1_idx` (`loaigot_idloaigot`);

--
-- Chỉ mục cho bảng `kieugiay`
--
ALTER TABLE `kieugiay`
  ADD PRIMARY KEY (`idkieugiay`),
  ADD UNIQUE KEY `kieugiay_UNIQUE` (`kieugiay`);

--
-- Chỉ mục cho bảng `loaigot`
--
ALTER TABLE `loaigot`
  ADD PRIMARY KEY (`idloaigot`),
  ADD UNIQUE KEY `tenloaigot_UNIQUE` (`tenloaigot`);

--
-- Chỉ mục cho bảng `loaimui`
--
ALTER TABLE `loaimui`
  ADD PRIMARY KEY (`idloaimui`),
  ADD UNIQUE KEY `tenloaimui_UNIQUE` (`tenloaimui`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`idmau`),
  ADD UNIQUE KEY `tenmau_UNIQUE` (`tenmau`);

--
-- Chỉ mục cho bảng `mucdich`
--
ALTER TABLE `mucdich`
  ADD PRIMARY KEY (`idmucdich`),
  ADD UNIQUE KEY `tenchungloai_UNIQUE` (`tenmucdich`);

--
-- Chỉ mục cho bảng `mucdich_cua_giay`
--
ALTER TABLE `mucdich_cua_giay`
  ADD PRIMARY KEY (`mucdich_idmucdich`,`giay_idgiay`),
  ADD KEY `fk_mucdich_has_giay_giay1_idx` (`giay_idgiay`),
  ADD KEY `fk_mucdich_has_giay_mucdich1_idx` (`mucdich_idmucdich`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idnguoidung`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `tendangnhap_UNIQUE` (`tendangnhap`);

--
-- Chỉ mục cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  ADD PRIMARY KEY (`idquanhuyen`),
  ADD KEY `fk_quanhuyen_thanhpho_idx` (`thanhpho_idthanhpho`);

--
-- Chỉ mục cho bảng `sizemau`
--
ALTER TABLE `sizemau`
  ADD PRIMARY KEY (`idsizemau`),
  ADD KEY `fk_sizemau_mau1_idx` (`mau_idmau`),
  ADD KEY `fk_sizemau_giay1_idx` (`giay_idgiay`);

--
-- Chỉ mục cho bảng `thanhpho`
--
ALTER TABLE `thanhpho`
  ADD PRIMARY KEY (`idthanhpho`),
  ADD UNIQUE KEY `tenthanhpho_UNIQUE` (`tenthanhpho`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chatlieu`
--
ALTER TABLE `chatlieu`
  MODIFY `idchatlieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `idcomment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `iddonhang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `idgiaodich` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giay`
--
ALTER TABLE `giay`
  MODIFY `idgiay` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `kieugiay`
--
ALTER TABLE `kieugiay`
  MODIFY `idkieugiay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaigot`
--
ALTER TABLE `loaigot`
  MODIFY `idloaigot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `loaimui`
--
ALTER TABLE `loaimui`
  MODIFY `idloaimui` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `mau`
--
ALTER TABLE `mau`
  MODIFY `idmau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `mucdich`
--
ALTER TABLE `mucdich`
  MODIFY `idmucdich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnguoidung` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  MODIFY `idquanhuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `sizemau`
--
ALTER TABLE `sizemau`
  MODIFY `idsizemau` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thanhpho`
--
ALTER TABLE `thanhpho`
  MODIFY `idthanhpho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_giay1` FOREIGN KEY (`giay_idgiay`) REFERENCES `giay` (`idgiay`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comment_nguoidung1` FOREIGN KEY (`nguoidung_idnguoidung`) REFERENCES `nguoidung` (`idnguoidung`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_donhang_quanhuyen1` FOREIGN KEY (`quanhuyen_idquanhuyen`) REFERENCES `quanhuyen` (`idquanhuyen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD CONSTRAINT `fk_giaodich_donhang1` FOREIGN KEY (`donhang_iddonhang`) REFERENCES `donhang` (`iddonhang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_giaodich_nguoidung1` FOREIGN KEY (`nguoidung_idnguoidung`) REFERENCES `nguoidung` (`idnguoidung`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_giaodich_sizemau1` FOREIGN KEY (`sizemau_idsizemau`) REFERENCES `sizemau` (`idsizemau`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `giay`
--
ALTER TABLE `giay`
  ADD CONSTRAINT `fk_giay_chatlieu1` FOREIGN KEY (`chatlieu_idchatlieu`) REFERENCES `chatlieu` (`idchatlieu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_giay_kieugiay1` FOREIGN KEY (`kieugiay_idkieugiay`) REFERENCES `kieugiay` (`idkieugiay`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_giay_loaigot1` FOREIGN KEY (`loaigot_idloaigot`) REFERENCES `loaigot` (`idloaigot`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_giay_loaimui1` FOREIGN KEY (`loaimui_idloaimui`) REFERENCES `loaimui` (`idloaimui`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `mucdich_cua_giay`
--
ALTER TABLE `mucdich_cua_giay`
  ADD CONSTRAINT `fk_mucdich_has_giay_giay1` FOREIGN KEY (`giay_idgiay`) REFERENCES `giay` (`idgiay`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mucdich_has_giay_mucdich1` FOREIGN KEY (`mucdich_idmucdich`) REFERENCES `mucdich` (`idmucdich`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  ADD CONSTRAINT `fk_quanhuyen_thanhpho` FOREIGN KEY (`thanhpho_idthanhpho`) REFERENCES `thanhpho` (`idthanhpho`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sizemau`
--
ALTER TABLE `sizemau`
  ADD CONSTRAINT `fk_sizemau_giay1` FOREIGN KEY (`giay_idgiay`) REFERENCES `giay` (`idgiay`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sizemau_mau1` FOREIGN KEY (`mau_idmau`) REFERENCES `mau` (`idmau`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
