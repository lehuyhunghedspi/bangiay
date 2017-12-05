-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2017 lúc 03:30 PM
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
-- Cơ sở dữ liệu: `bangiay_v2`
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
(5, 'Da bóng'),
(1, 'Da thật'),
(2, 'Da tổng hợp'),
(4, 'Denim'),
(3, 'Microfiber'),
(6, 'VẢI NHUNG');

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
  `quanhuyen_idquanhuyen` int(11) NOT NULL,
  `nguoidung_idnguoidung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`iddonhang`, `ngaymua`, `diachichitiet`, `ngayguido`, `ngaynhando`, `ngaynhantien`, `quanhuyen_idquanhuyen`, `nguoidung_idnguoidung`) VALUES
(1, '2017-12-04 00:00:00', 'xóm 1 kim lan', NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaodich`
--

CREATE TABLE `giaodich` (
  `idgiaodich` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giabanlucgiaodich` int(11) NOT NULL,
  `donhang_iddonhang` int(11) NOT NULL,
  `iscancel` tinyint(1) NOT NULL DEFAULT '0',
  `sizemau_idsizemau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giaodich`
--

INSERT INTO `giaodich` (`idgiaodich`, `soluong`, `giabanlucgiaodich`, `donhang_iddonhang`, `iscancel`, `sizemau_idsizemau`) VALUES
(1, 2, 600, 1, 0, 3),
(2, 3, 600, 1, 0, 3);

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

--
-- Đang đổ dữ liệu cho bảng `giay`
--

INSERT INTO `giay` (`idgiay`, `ten`, `giaban`, `ngayban`, `docaocuade`, `loaimui_idloaimui`, `chatlieu_idchatlieu`, `kieugiay_idkieugiay`, `loaigot_idloaigot`) VALUES
(4, 'Giày cao gót SDN 0565', 575, '2017-11-28 17:34:54', 10, 3, 6, 1, 1),
(5, 'Giày cao gót SDN 0557', 725, '2017-11-28 17:42:24', 10, 3, 2, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kieugiay`
--

CREATE TABLE `kieugiay` (
  `idkieugiay` int(11) NOT NULL,
  `tenkieugiay` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `kieugiay`
--

INSERT INTO `kieugiay` (`idkieugiay`, `tenkieugiay`) VALUES
(1, 'Bình thường'),
(2, 'Widefit');

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
(1, 'Gót nhọn'),
(2, 'Gót trụ'),
(3, 'Gót vuông'),
(4, 'Đế bệt / Đế bằng'),
(5, 'Đế xuồng');

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
(1, 'Bít mũi nhọn'),
(2, 'Bít mũi tròn'),
(3, 'Hở mũi');

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
(1, 'Be'),
(2, 'Camel'),
(3, 'Hồng'),
(4, 'Vàng'),
(5, 'Xám'),
(6, 'Đen'),
(7, 'Đỏ');

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
(1, 'Chơi thể thao'),
(2, 'Đi học'),
(3, 'Đi làm'),
(4, 'Đi tiệc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mucdich_cua_giay`
--

CREATE TABLE `mucdich_cua_giay` (
  `mucdich_idmucdich` int(11) NOT NULL,
  `giay_idgiay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mucdich_cua_giay`
--

INSERT INTO `mucdich_cua_giay` (`mucdich_idmucdich`, `giay_idgiay`) VALUES
(3, 4),
(3, 5),
(4, 4),
(4, 5);

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

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`idnguoidung`, `email`, `tendangnhap`, `matkhau`, `sodienthoai`, `mucquyen`) VALUES
(1, 'yeuvanhoanhat@gmail.com', 'hung', '123', '01695903408', '0');

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
(1, 'Gia Lâm', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizemau`
--

CREATE TABLE `sizemau` (
  `idsizemau` int(11) NOT NULL,
  `giay_idgiay` int(11) NOT NULL,
  `mau_idmau` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `soluongbandau` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sizemau`
--

INSERT INTO `sizemau` (`idsizemau`, `giay_idgiay`, `mau_idmau`, `size`, `soluongbandau`) VALUES
(3, 4, 6, 35, '6'),
(4, 4, 6, 36, '6'),
(5, 4, 6, 37, '7'),
(6, 4, 6, 38, '4'),
(7, 4, 3, 35, '6'),
(8, 4, 3, 36, '7'),
(9, 4, 3, 38, '5'),
(10, 5, 6, 35, '6'),
(11, 5, 6, 36, '6'),
(12, 5, 6, 37, '6'),
(13, 5, 6, 38, '6'),
(14, 5, 5, 34, '6'),
(15, 5, 5, 35, '6'),
(16, 5, 5, 36, '6'),
(17, 5, 5, 37, '6'),
(19, 4, 6, 40, '3'),
(20, 4, 6, 41, '1'),
(25, 4, 3, 39, '2');

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
(1, 'hà nội');

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
  ADD KEY `fk_donhang_quanhuyen1_idx` (`quanhuyen_idquanhuyen`),
  ADD KEY `fk_donhang_nguoidung1_idx` (`nguoidung_idnguoidung`);

--
-- Chỉ mục cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`idgiaodich`),
  ADD KEY `fk_giaodich_donhang1_idx` (`donhang_iddonhang`),
  ADD KEY `fk_giaodich_sizemau1_idx` (`sizemau_idsizemau`);

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
  ADD UNIQUE KEY `kieugiay_UNIQUE` (`tenkieugiay`);

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
  ADD UNIQUE KEY `mau_idmau` (`mau_idmau`,`size`,`giay_idgiay`),
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
  MODIFY `idchatlieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `idcomment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `iddonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `idgiaodich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `giay`
--
ALTER TABLE `giay`
  MODIFY `idgiay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `kieugiay`
--
ALTER TABLE `kieugiay`
  MODIFY `idkieugiay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaigot`
--
ALTER TABLE `loaigot`
  MODIFY `idloaigot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loaimui`
--
ALTER TABLE `loaimui`
  MODIFY `idloaimui` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `mau`
--
ALTER TABLE `mau`
  MODIFY `idmau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `mucdich`
--
ALTER TABLE `mucdich`
  MODIFY `idmucdich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  MODIFY `idquanhuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sizemau`
--
ALTER TABLE `sizemau`
  MODIFY `idsizemau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `thanhpho`
--
ALTER TABLE `thanhpho`
  MODIFY `idthanhpho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  ADD CONSTRAINT `fk_donhang_nguoidung1` FOREIGN KEY (`nguoidung_idnguoidung`) REFERENCES `nguoidung` (`idnguoidung`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_donhang_quanhuyen1` FOREIGN KEY (`quanhuyen_idquanhuyen`) REFERENCES `quanhuyen` (`idquanhuyen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD CONSTRAINT `fk_giaodich_donhang1` FOREIGN KEY (`donhang_iddonhang`) REFERENCES `donhang` (`iddonhang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
