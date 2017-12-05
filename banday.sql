-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2017 lúc 11:16 AM
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
-- Cơ sở dữ liệu: `banday`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatlieu`
--

CREATE TABLE `chatlieu` (
  `idchatlieu` int(11) NOT NULL,
  `tenchatlieu` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `chatlieu`
--

INSERT INTO `chatlieu` (`idchatlieu`, `tenchatlieu`) VALUES
(7, 'Da bóng'),
(8, 'Da mờ'),
(3, 'Da thật'),
(4, 'Da tổng hợp'),
(6, 'Denim'),
(5, 'Microfiber');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chungloai`
--

CREATE TABLE `chungloai` (
  `idchungloai` int(2) NOT NULL,
  `tenchungloai` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `chungloai`
--

INSERT INTO `chungloai` (`idchungloai`, `tenchungloai`) VALUES
(4, 'sục'),
(1, 'thể thao'),
(3, 'đi học'),
(2, 'đi làm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaodich`
--

CREATE TABLE `giaodich` (
  `idgiaodich` int(30) NOT NULL,
  `idnguoidung` int(11) NOT NULL,
  `idhang` int(10) NOT NULL,
  `thoigianmua` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idquanhuyen` int(11) NOT NULL,
  `diachichitiet` varchar(50) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `huy` int(1) NOT NULL DEFAULT '0',
  `soluongmua` int(11) NOT NULL,
  `daguihang` tinyint(1) DEFAULT '0',
  `ngayguihang` date DEFAULT NULL,
  `danhanhang` tinyint(1) DEFAULT '0',
  `ngaynhanhang` date DEFAULT NULL,
  `danhantien` tinyint(1) DEFAULT '0',
  `ngaynhantien` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang`
--

CREATE TABLE `hang` (
  `idhang` int(10) NOT NULL,
  `ten` varchar(30) CHARACTER SET utf8 NOT NULL,
  `giaban` int(5) NOT NULL,
  `mota` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ngayban` date NOT NULL,
  `idloaigot` int(11) NOT NULL,
  `idchatlieu` int(11) NOT NULL,
  `docaogot` int(11) NOT NULL,
  `idloaimui` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_chungloai`
--

CREATE TABLE `hang_chungloai` (
  `idhang` int(10) NOT NULL,
  `idchungloai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_hoavan`
--

CREATE TABLE `hang_hoavan` (
  `idhang` int(10) NOT NULL,
  `idhoavan` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoavan`
--

CREATE TABLE `hoavan` (
  `idhoavan` int(2) NOT NULL,
  `tenhoanvan` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hoavan`
--

INSERT INTO `hoavan` (`idhoavan`, `tenhoanvan`) VALUES
(12, 'Họa tiết cut laser'),
(11, 'Kẻ sọc'),
(10, 'Kim tuyến'),
(3, 'Một màu'),
(4, 'Phối nhiều màu'),
(13, 'Trang trí gót'),
(6, 'Vân da kỳ đà'),
(5, 'Vân da rắn'),
(8, 'Đính kim loại'),
(7, 'Đính nơ'),
(9, 'Đính đá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kieugiay`
--

CREATE TABLE `kieugiay` (
  `idkieugiay` int(11) NOT NULL,
  `tenkieugiay` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `kieugiay`
--

INSERT INTO `kieugiay` (`idkieugiay`, `tenkieugiay`) VALUES
(3, 'Giày có nhiều dây'),
(2, 'Giày có quai chữ T'),
(1, 'Giày có quai cổ chân'),
(5, 'Giày có quai dày'),
(4, 'Giày có quai mảnh'),
(6, 'Giày cột dây'),
(7, 'Giày cut out');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaigot`
--

CREATE TABLE `loaigot` (
  `idloaigot` int(11) NOT NULL,
  `tenloaigot` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `tenloaimui` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `idmau` int(2) NOT NULL,
  `tenmau` varchar(30) CHARACTER SET utf8 NOT NULL,
  `anhmau` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`idmau`, `tenmau`, `anhmau`) VALUES
(62, 'xám', 'xam.png'),
(63, 'hồng', 'hong.png'),
(64, 'be', 'be.png'),
(65, 'camel', 'camel.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `idnguoidung` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `tendangnhap` varchar(30) NOT NULL,
  `matkhau` varchar(20) NOT NULL,
  `sodienthoai` varchar(12) NOT NULL,
  `idquanhuyen` int(11) NOT NULL,
  `chitietdiachi` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`idnguoidung`, `email`, `tendangnhap`, `matkhau`, `sodienthoai`, `idquanhuyen`, `chitietdiachi`) VALUES
(1, 'yeuvanhoanhat@gmail.com', 'lehuyhung', '1', '01695903408', 12, 'xóm 1, kim lan'),
(3, 'ngoctrang@gmail.com', 'ngoc', '1', '01239123032', 9, '12, đường nguyễn văn cừ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `persons`
--

CREATE TABLE `persons` (
  `ID` int(11) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanhuyen`
--

CREATE TABLE `quanhuyen` (
  `idquanhuyen` int(11) NOT NULL,
  `idthanhpho` int(11) NOT NULL,
  `tenquanhuyen` varchar(30) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quanhuyen`
--

INSERT INTO `quanhuyen` (`idquanhuyen`, `idthanhpho`, `tenquanhuyen`) VALUES
(17, 24, 'Huyện Ba Vì'),
(21, 24, 'Huyện Chương Mỹ'),
(12, 24, 'Huyện Gia Lâm'),
(23, 24, 'Huyện Hoài Đức'),
(29, 24, 'Huyện Mê Linh'),
(25, 24, 'Huyện Mỹ Đức'),
(28, 24, 'Huyện Phú Xuyên'),
(18, 24, 'Huyện Phúc Thọ'),
(20, 24, 'Huyện Quốc Oai'),
(14, 24, 'Huyện Sóc Sơn'),
(19, 24, 'Huyện Thạch Thất'),
(24, 24, 'Huyện Thanh Oai'),
(11, 24, 'Huyện Thanh Trì'),
(27, 24, 'Huyện Thường Tín'),
(10, 24, 'Huyện Từ Liêm'),
(26, 24, 'Huyện Ứng Hoà'),
(22, 24, 'Huyện Đan Phượng'),
(13, 24, 'Huyện Đông Anh'),
(1, 24, 'Quận Ba Đình'),
(6, 24, 'Quận Cầu Giấy'),
(15, 24, 'Quận Hà Đông'),
(3, 24, 'Quận Hai Bà Trưng'),
(2, 24, 'Quận Hoàn Kiếm'),
(8, 24, 'Quận Hoàng Mai'),
(9, 24, 'Quận Long Biên'),
(5, 24, 'Quận Tây Hồ'),
(7, 24, 'Quận Thanh Xuân'),
(4, 24, 'Quận Đống Đa'),
(16, 24, 'Thị xã Sơn Tây');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size_mau`
--

CREATE TABLE `size_mau` (
  `idhang` int(11) NOT NULL,
  `soluongbandau` int(11) NOT NULL,
  `idmau` int(2) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhpho`
--

CREATE TABLE `thanhpho` (
  `idthanhpho` int(2) NOT NULL,
  `tenthanhpho` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xem`
--

CREATE TABLE `xem` (
  `thoigianxem` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idnguoidung` int(11) NOT NULL,
  `idhang` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chatlieu`
--
ALTER TABLE `chatlieu`
  ADD PRIMARY KEY (`idchatlieu`),
  ADD UNIQUE KEY `tenchatlieu` (`tenchatlieu`);

--
-- Chỉ mục cho bảng `chungloai`
--
ALTER TABLE `chungloai`
  ADD PRIMARY KEY (`idchungloai`),
  ADD UNIQUE KEY `tenchungloai` (`tenchungloai`);

--
-- Chỉ mục cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`idgiaodich`),
  ADD UNIQUE KEY `uniquegiaodich` (`idnguoidung`,`idhang`,`thoigianmua`),
  ADD KEY `giaodich_quanhuyen` (`idquanhuyen`);

--
-- Chỉ mục cho bảng `hang`
--
ALTER TABLE `hang`
  ADD PRIMARY KEY (`idhang`),
  ADD KEY `fk_loaimui` (`idloaimui`),
  ADD KEY `fk_idchatlieu` (`idchatlieu`),
  ADD KEY `fk_idloaigot` (`idloaigot`);

--
-- Chỉ mục cho bảng `hang_chungloai`
--
ALTER TABLE `hang_chungloai`
  ADD PRIMARY KEY (`idhang`,`idchungloai`),
  ADD KEY `fk_idchungloai_hang_hoavan` (`idchungloai`);

--
-- Chỉ mục cho bảng `hang_hoavan`
--
ALTER TABLE `hang_hoavan`
  ADD PRIMARY KEY (`idhang`,`idhoavan`),
  ADD KEY `fk_hang_hoavan_idhoavan` (`idhoavan`);

--
-- Chỉ mục cho bảng `hoavan`
--
ALTER TABLE `hoavan`
  ADD PRIMARY KEY (`idhoavan`),
  ADD UNIQUE KEY `tenhoanvan` (`tenhoanvan`);

--
-- Chỉ mục cho bảng `kieugiay`
--
ALTER TABLE `kieugiay`
  ADD PRIMARY KEY (`idkieugiay`),
  ADD UNIQUE KEY `tenkieugiay` (`tenkieugiay`);

--
-- Chỉ mục cho bảng `loaigot`
--
ALTER TABLE `loaigot`
  ADD PRIMARY KEY (`idloaigot`),
  ADD UNIQUE KEY `tenloaigot` (`tenloaigot`);

--
-- Chỉ mục cho bảng `loaimui`
--
ALTER TABLE `loaimui`
  ADD PRIMARY KEY (`idloaimui`),
  ADD UNIQUE KEY `tenloaimui` (`tenloaimui`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`idmau`),
  ADD UNIQUE KEY `tenmau` (`tenmau`),
  ADD UNIQUE KEY `anhmau` (`anhmau`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idnguoidung`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `tendangnhap` (`tendangnhap`),
  ADD UNIQUE KEY `sodienthoai` (`sodienthoai`),
  ADD KEY `fk_quanhuyen` (`idquanhuyen`);

--
-- Chỉ mục cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  ADD PRIMARY KEY (`idquanhuyen`),
  ADD UNIQUE KEY `duynhat` (`idthanhpho`,`tenquanhuyen`);

--
-- Chỉ mục cho bảng `size_mau`
--
ALTER TABLE `size_mau`
  ADD PRIMARY KEY (`idhang`,`idmau`,`size`),
  ADD KEY `fk_size_mau_idmau` (`idmau`);

--
-- Chỉ mục cho bảng `thanhpho`
--
ALTER TABLE `thanhpho`
  ADD PRIMARY KEY (`idthanhpho`),
  ADD UNIQUE KEY `tenthanhpho` (`tenthanhpho`);

--
-- Chỉ mục cho bảng `xem`
--
ALTER TABLE `xem`
  ADD PRIMARY KEY (`idnguoidung`,`idhang`,`thoigianxem`),
  ADD KEY `fk_idhang` (`idhang`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chatlieu`
--
ALTER TABLE `chatlieu`
  MODIFY `idchatlieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `chungloai`
--
ALTER TABLE `chungloai`
  MODIFY `idchungloai` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hang`
--
ALTER TABLE `hang`
  MODIFY `idhang` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoavan`
--
ALTER TABLE `hoavan`
  MODIFY `idhoavan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `kieugiay`
--
ALTER TABLE `kieugiay`
  MODIFY `idkieugiay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `idmau` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  MODIFY `idquanhuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `thanhpho`
--
ALTER TABLE `thanhpho`
  MODIFY `idthanhpho` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD CONSTRAINT `giaodich_quanhuyen` FOREIGN KEY (`idquanhuyen`) REFERENCES `quanhuyen` (`idquanhuyen`);

--
-- Các ràng buộc cho bảng `hang`
--
ALTER TABLE `hang`
  ADD CONSTRAINT `fk_idchatlieu` FOREIGN KEY (`idchatlieu`) REFERENCES `chatlieu` (`idchatlieu`),
  ADD CONSTRAINT `fk_idloaigot` FOREIGN KEY (`idloaigot`) REFERENCES `loaigot` (`idloaigot`),
  ADD CONSTRAINT `fk_loaimui` FOREIGN KEY (`idloaimui`) REFERENCES `loaimui` (`idloaimui`);

--
-- Các ràng buộc cho bảng `hang_chungloai`
--
ALTER TABLE `hang_chungloai`
  ADD CONSTRAINT `fk_idchungloai_hang_hoavan` FOREIGN KEY (`idchungloai`) REFERENCES `chungloai` (`idchungloai`),
  ADD CONSTRAINT `fk_idhang_hang_hoavan` FOREIGN KEY (`idhang`) REFERENCES `hang` (`idhang`);

--
-- Các ràng buộc cho bảng `hang_hoavan`
--
ALTER TABLE `hang_hoavan`
  ADD CONSTRAINT `fk_hang_hoavan_idhang` FOREIGN KEY (`idhang`) REFERENCES `hang` (`idhang`),
  ADD CONSTRAINT `fk_hang_hoavan_idhoavan` FOREIGN KEY (`idhoavan`) REFERENCES `hoavan` (`idhoavan`);

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `fk_quanhuyen` FOREIGN KEY (`idquanhuyen`) REFERENCES `quanhuyen` (`idquanhuyen`);

--
-- Các ràng buộc cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  ADD CONSTRAINT `fk_thanhpho` FOREIGN KEY (`idthanhpho`) REFERENCES `thanhpho` (`idthanhpho`);

--
-- Các ràng buộc cho bảng `size_mau`
--
ALTER TABLE `size_mau`
  ADD CONSTRAINT `fk_size_mau_idhang` FOREIGN KEY (`idhang`) REFERENCES `hang` (`idhang`),
  ADD CONSTRAINT `fk_size_mau_idmau` FOREIGN KEY (`idmau`) REFERENCES `mau` (`idmau`);

--
-- Các ràng buộc cho bảng `xem`
--
ALTER TABLE `xem`
  ADD CONSTRAINT `fk_idhang` FOREIGN KEY (`idhang`) REFERENCES `hang` (`idhang`),
  ADD CONSTRAINT `fk_idnguoidung` FOREIGN KEY (`idnguoidung`) REFERENCES `nguoidung` (`idnguoidung`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
