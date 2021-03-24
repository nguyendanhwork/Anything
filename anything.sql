-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 24, 2021 lúc 05:33 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `anything`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `user_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `pass_word` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `user_name`, `pass_word`, `name`, `email`, `sdt`, `role`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'Admin 9999', 'c15ltdcn161297@gmail.com', '0902595423', 1),
(54, 'nhdanh', 'd468f71fdbaa651bf5e3909a576c0918', 'NGUYỄN HỮU DANH', 'c15ltdcn161297@gmail.com', '0902595423', 0),
(55, 'ndanh', '309966c5870d146552faa0100fd15cba', 'nguyễn danh', 'c15ltdcn161297@gmail.com', '0902595423', 0),
(56, 'danhdeptrai', 'e10adc3949ba59abbe56e057f20f883e', 'nguyễn hữu danh', 'c15ltdcn161297@gmail.com', '0902595423', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `id` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id`, `id_donhang`, `id_sanpham`, `so_luong`, `don_gia`) VALUES
(21, 52, 20, 1, 79990000),
(22, 52, 19, 1, 54990000),
(23, 53, 23, 1, 2390000),
(24, 53, 21, 1, 59990000),
(25, 54, 24, 1, 2740000),
(26, 55, 30, 1, 890000),
(27, 56, 18, 1, 61990000),
(28, 57, 29, 1, 890000),
(29, 58, 28, 1, 1090000),
(30, 59, 27, 1, 890000),
(31, 60, 22, 1, 2390000),
(32, 61, 22, 1, 2390000),
(33, 62, 20, 1, 79990000),
(34, 62, 29, 1, 890000),
(35, 62, 18, 1, 61990000),
(36, 63, 22, 1, 2390000),
(37, 63, 19, 1, 54990000),
(38, 64, 29, 1, 890000),
(39, 65, 27, 1, 890000),
(40, 66, 25, 1, 3190000),
(41, 66, 24, 1, 2740000),
(42, 67, 27, 1, 890000),
(43, 68, 21, 2, 119980000),
(44, 69, 29, 1, 890000),
(45, 69, 24, 1, 2740000),
(46, 69, 23, 1, 2390000),
(47, 69, 18, 2, 123980000),
(48, 70, 17, 1, 7490000),
(49, 70, 25, 1, 3190000),
(50, 70, 30, 1, 890000),
(51, 71, 25, 1, 3190000),
(52, 72, 21, 1, 59990000),
(53, 72, 22, 1, 2390000),
(54, 72, 19, 1, 54990000),
(55, 73, 30, 1, 890000),
(56, 73, 28, 1, 1090000),
(57, 73, 18, 1, 61990000),
(58, 73, 25, 1, 3190000),
(59, 74, 21, 2, 119980000),
(60, 75, 22, 2, 4780000),
(61, 76, 21, 1, 59990000),
(62, 77, 22, 1, 2390000),
(63, 84, 28, 1, 686700),
(64, 85, 28, 1, 686700),
(65, 86, 28, 1, 686700),
(66, 87, 28, 1, 686700),
(67, 87, 19, 2, 109980000),
(68, 87, 24, 1, 2740000),
(69, 87, 20, 1, 79990000),
(70, 88, 30, 1, 587400),
(71, 89, 30, 1, 587400),
(72, 90, 30, 1, 587400),
(73, 91, 29, 1, 801000),
(74, 92, 29, 1, 801000),
(75, 93, 29, 1, 801000),
(76, 94, 30, 1, 587400),
(77, 95, 30, 1, 587400),
(78, 95, 29, 1, 801000),
(79, 96, 27, 1, 587400),
(80, 96, 19, 1, 54990000),
(81, 97, 28, 1, 686700),
(82, 98, 30, 1, 587400),
(83, 98, 28, 1, 686700),
(84, 99, 19, 2, 109980000),
(85, 99, 18, 1, 57030800),
(86, 100, 19, 1, 54990000),
(87, 101, 27, 1, 890000),
(88, 101, 19, 1, 54990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `ngay_gui` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_khachhang`, `content`, `id_sanpham`, `ngay_gui`) VALUES
(12, 54, 'asdasdsadasd', 30, '2020-10-21 15:56:35'),
(13, 56, 'dsfsdfsdf', 29, '2020-12-06 16:11:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id` int(11) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `tong_tien` float NOT NULL,
  `ngay_dat` datetime NOT NULL,
  `trang_thai` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Đang xử lý'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id`, `ma_kh`, `tong_tien`, `ngay_dat`, `trang_thai`) VALUES
(52, 54, 134980000, '2020-10-16 20:14:10', 'Đã giao'),
(53, 54, 62380000, '2020-10-16 21:51:49', 'Đã giao'),
(54, 54, 2740000, '2020-09-09 22:28:48', 'Đã giao'),
(55, 54, 890000, '2020-09-19 22:28:55', 'Đã giao'),
(56, 54, 61990000, '2020-04-07 22:29:04', 'Đã giao'),
(57, 54, 890000, '2020-03-14 22:29:17', 'Đã giao'),
(58, 54, 1090000, '2020-07-05 22:29:22', 'Đã giao'),
(59, 54, 890000, '2020-06-03 22:29:29', 'Đã giao'),
(60, 54, 2390000, '2020-07-14 22:29:36', 'Đã giao'),
(61, 54, 2390000, '2020-08-05 22:29:47', 'Đã giao'),
(62, 54, 142870000, '2020-09-09 22:30:43', 'Đã giao'),
(63, 54, 57380000, '2020-02-04 22:30:56', 'Đã giao'),
(64, 54, 890000, '2020-02-04 22:31:02', 'Đã giao'),
(65, 54, 890000, '2020-01-11 22:31:07', 'Đã giao'),
(66, 54, 5930000, '2020-01-23 22:31:43', 'Đã giao'),
(67, 54, 890000, '2019-10-17 01:24:03', 'Đã giao'),
(68, 54, 119980000, '2020-10-19 20:37:54', 'Cần xử lý'),
(69, 54, 130000000, '2020-10-19 21:20:01', 'Cần xử lý'),
(70, 54, 11570000, '2020-10-19 21:20:37', 'Cần xử lý'),
(71, 54, 3190000, '2020-10-19 21:20:47', 'Cần xử lý'),
(72, 54, 117370000, '2020-10-19 21:21:12', 'Cần xử lý'),
(73, 54, 67160000, '2020-10-19 21:22:44', 'Đang giao'),
(74, 54, 119980000, '2020-10-19 21:23:36', 'Cần xử lý'),
(75, 54, 4780000, '2020-10-19 21:24:05', 'Trả hàng'),
(76, 54, 59990000, '2020-10-19 22:30:23', 'Đang giao'),
(77, 54, 2390000, '2020-10-21 15:04:00', 'Đang xử lý'),
(78, 56, 686700, '2020-12-06 16:50:32', 'Đang xử lý'),
(79, 56, 686700, '2020-12-06 16:51:04', 'Đang xử lý'),
(80, 56, 686700, '2020-12-06 16:54:40', 'Đang xử lý'),
(81, 56, 686700, '2020-12-06 16:55:58', 'Đang xử lý'),
(82, 56, 686700, '2020-12-06 16:57:02', 'Đang xử lý'),
(83, 56, 686700, '2020-12-06 16:57:51', 'Đang xử lý'),
(84, 56, 686700, '2020-12-06 16:58:02', 'Đang xử lý'),
(85, 56, 686700, '2020-12-06 16:58:03', 'Đang xử lý'),
(86, 56, 686700, '2020-12-06 16:58:41', 'Đang xử lý'),
(87, 56, 193397000, '2020-12-06 17:00:06', 'Đang xử lý'),
(88, 56, 587400, '2020-12-06 17:01:43', 'Đang xử lý'),
(89, 56, 587400, '2020-12-06 17:02:38', 'Đang xử lý'),
(90, 56, 587400, '2020-12-06 17:04:20', 'Đang xử lý'),
(91, 56, 801000, '2020-12-06 17:12:02', 'Đang xử lý'),
(92, 56, 801000, '2020-12-06 17:12:07', 'Đang xử lý'),
(93, 56, 801000, '2020-12-06 17:12:22', 'Đang xử lý'),
(94, 56, 587400, '2020-12-06 17:13:58', 'Đang xử lý'),
(95, 56, 1388400, '2020-12-06 17:14:19', 'Đang xử lý'),
(96, 56, 55577400, '2020-12-06 17:14:43', 'Đang xử lý'),
(97, 56, 686700, '2020-12-06 17:14:55', 'Đang xử lý'),
(98, 56, 1274100, '2020-12-06 18:04:10', 'Đang xử lý'),
(99, 56, 167011000, '2020-12-07 09:57:12', 'Đang xử lý'),
(100, 56, 54990000, '2020-12-07 10:07:11', 'Đang xử lý'),
(101, 56, 55880000, '2021-02-11 14:11:48', 'Đang xử lý');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_sx`
--

CREATE TABLE `hang_sx` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hang_sx`
--

INSERT INTO `hang_sx` (`id`, `name`, `mo_ta`) VALUES
(2, 'MSI', 'Hãng MSI'),
(8, 'Asus', 'Hãng asus'),
(9, 'Acer', 'Hãng acer'),
(10, 'HP', 'HÃng HP'),
(11, 'Dell', 'Hãng Dell'),
(13, 'LG', 'Hãng LG'),
(14, 'Samsung', 'hãng samsung'),
(15, 'Viewsonic', 'Hãng viewsonic'),
(16, 'Dareu', 'Hãng Dareu'),
(17, 'HyperX', ''),
(18, 'Rapoo', 'Hãng Rapoo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`id`, `name`, `mo_ta`, `hot`, `stt`) VALUES
(18, 'Laptop', 'fas fa-laptop', 1, 1),
(36, 'Màn hình', 'fas fa-tv', 1, 2),
(37, 'Bàn phím', 'fas fa-keyboard', 0, 3),
(39, 'Tai nghe', 'fas fa-headphones-alt', 0, 0),
(40, 'Chuột', 'fas fa-mouse', 0, 4),
(41, 'Console', 'fas fa-gamepad', 0, 5),
(42, 'Ghế Gaming', 'fas fa-chair', 0, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `hinh` text COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `don_gia` float(10,0) NOT NULL,
  `giam_gia` float DEFAULT 0,
  `thongtin_kythuat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mau_sac` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bao_hanh` int(11) DEFAULT 12,
  `id_hsx` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `name`, `hinh`, `mo_ta`, `don_gia`, `giam_gia`, `thongtin_kythuat`, `mau_sac`, `bao_hanh`, `id_hsx`, `id_loai`) VALUES
(17, 'Laptop Asus Vivobook X409MA BV033T', 'laptop-asus-x409ma-bv033t_798f9f139c834367b278a731987638c7.jpg/', '', 7490000, 7, '<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/EQcpIU7N73I\" width=\"560\"></iframe></p>\r\n', 'Bạc', 24, 8, 18),
(18, 'Laptop Gaming ASUS ROG Zephyrus S GX502GW AZ129T', 'asus-rog-zephyrus-s-gx502gw-az129t-gearvn-1_8e72f0c67d3d4f3ba95f3ad7caf12b1d.jpg/asus-rog-zephyrus-s-gx502gw-az129t-gearvn-3_9c74ea25d6a54efba9f27278c1411ed4.jpg/asus-rog-zephyrus-s-gx502gw-az129t-gearvn-4_4d774c2baec94585a9d1636bc2b525df.jpg/asus-rog-zephyrus-s-gx502gw-az129t-gearvn-5_225cfb50708547958bb9fe681249fc87.jpg/', '', 61990000, 8, '<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Intel Core i7-9750H 2.6GHz up to 4.5GHz 12MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>16GB DDR4 2666MHz Onboard (1x SO-DIMM socket, up to 32GB SDRAM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Ocirc;̉ cứng</td>\r\n			<td>1TB SSD PCIE G3X4&nbsp;(Support RAID 0) (2 slots)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card đồ họa</td>\r\n			<td>NVIDIA GeForce RTX 2070 8GB&nbsp;GDDR6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;n h&igrave;nh</td>\r\n			<td>15.6&quot; FHD (1920 x 1080) IPS,&nbsp;100% sRGB,&nbsp;240Hz&nbsp;G-Sync, 3ms, 300nits,&nbsp;Pantone&reg; Validated, NanoEdge</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cổng giao tiếp</td>\r\n			<td>3x USB 3.1, 1x USB 3.1 Type-C with DisplayPort, HDMI, RJ-45</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Audio</td>\r\n			<td>2x1W Speakers with Smart AMP Technology</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đọc thẻ nhớ</td>\r\n			<td>None</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chu&acirc;̉n LAN</td>\r\n			<td>10/100/1000/Gigabits Base T</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chuẩn WIFI</td>\r\n			<td>802.11 AC (2x2)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>v5.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Webcam</td>\r\n			<td>None</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Windows 10 Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>4 Cell 76WHr</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>2.0 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u sắc</td>\r\n			<td>Black Metal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kích thước</td>\r\n			<td>360 x 252 x 18.9 (mm)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 24, 8, 18),
(19, 'Laptop Dell XPS 13 7390 04PDV1', 'gearvn-laptop-dell-xps-13-7390-04pdv1-987885_5c90810808bd407bbf4864b69d8ed0e5.jpg/', '', 54990000, 0, '<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>\r\n			<p>Win 10 + OFF 365</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ vi xử l&yacute;</td>\r\n			<td>\r\n			<p>Intel Core i7-10510U 1.80 GHz up to 4.90 GHz 8MB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ Ram</td>\r\n			<td>\r\n			<p>16GB DDR3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ổ đĩa cứng</td>\r\n			<td>\r\n			<p>512GB SSD</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;n h&igrave;nh</td>\r\n			<td>\r\n			<p>13.3&quot;UHDT</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đồ họa</td>\r\n			<td>\r\n			<p>Intel UHD Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cắm mở rộng</td>\r\n			<td>\r\n			<p>microSD card reader</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Keyboard + Mouse</td>\r\n			<td>\r\n			<p>Keyboard Laptop + Touchpad</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cổng giao tiếp</td>\r\n			<td>\r\n			<p>1 USB-C 3.1 with power delivery &amp; DisplayPort , 2 Thunderbolt&trade; 3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Other Supports</td>\r\n			<td>\r\n			<p>Fingerprint</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>\r\n			<p>1. Height: 0.27&quot;-0.51&quot; (7-13 mm) | 2. Width: 11.67&quot; (296 mm) | 3. Depth: 8.17&quot; (207 mm)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khối lượng</td>\r\n			<td>\r\n			<p>1.33 kg</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh</td>\r\n			<td>\r\n			<p>12 th&aacute;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>\r\n			<p>Dell</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Laptop&nbsp;<a href=\"https://gearvn.com/collections/laptop-dell-xps-chinh-hang\">Dell XPS</a>&nbsp;13 7390 04PDV1</strong>&nbsp;l&agrave; mẫu laptop doanh nh&acirc;n cao cấp sở hữu thiết kế bắt mắt c&ugrave;ng với hiệu năng mạnh mẽ. Đ&acirc;y chắc chắn sẽ l&agrave; lựa chọn h&agrave;ng đầu nếu bạn đang c&oacute; nhu cầu t&igrave;m cho m&igrave;nh một chiếc m&aacute;y t&iacute;nh x&aacute;ch tay mỏng nhẹ để hỗ trợ c&ocirc;ng việc. Vậy h&atilde;y c&ugrave;ng GEARVN t&igrave;m hiểu qua b&agrave;i ph&acirc;n t&iacute;ch dưới đ&acirc;y nh&eacute;</p>\r\n\r\n<h2><strong>Thiết kế sang trọng</strong></h2>\r\n\r\n<p><strong>XPS 13 7390 04PDV1</strong>&nbsp;mang lối thiết kế thời trang, hiện đại với kiểu d&aacute;ng mỏng nhẹ, cao cấp. Vẻ ngo&agrave;i bắt mắt l&agrave;m nổi bật những n&eacute;t rất ri&ecirc;ng chỉ d&ograve;ng m&aacute;y doanh nh&acirc;n cao cấp của Dell c&oacute; được. Với thiết kế gọn nhẹ, m&aacute;y sẽ l&agrave; lựa chọn tuyệt vời để đồng h&agrave;nh c&ugrave;ng bạn đến nơi l&agrave;m việc, qu&aacute;n cafe, giảng đường hay thậm ch&iacute; l&agrave; trao đổi c&ocirc;ng việc c&ugrave;ng đối t&aacute;c.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-xps-13-7390-04pdv1-1_a208a7db2c9a4fb9a9ba625ec57158ae.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Cấu h&igrave;nh tốt nhất cho laptop 13.3 inch&nbsp;</strong></h2>\r\n\r\n<p><strong>Dell XPS 13 7390</strong>&nbsp;được trang bị Core i7-10510U, l&agrave; bộ vi xử l&yacute; cao cấp thế hệ mới nhất của Intel cho hiệu năng gấp 2.5 lần so với phi&ecirc;n bản tiền nhiệm với mức xung nhịp tối đa c&oacute; thể l&ecirc;n đến 4.90Ghz. Để phục vụ cho c&ocirc;ng việc th&igrave; m&aacute;y cũng c&oacute; RAM 16GB, sử dụng đa nhiệm tr&ecirc;n d&ograve;ng m&aacute;y n&agrave;y sẽ v&ocirc; c&ugrave;ng mượt m&agrave; v&agrave; hạn chế t&igrave;nh trạng giật lag kh&oacute; chịu.&nbsp; Card đồ họa Intel&reg; UHD Graphics cũng cho ph&eacute;p bạn thực hiện c&aacute;c t&aacute;c vụ đồ họa hoặc chỉnh sửa h&igrave;nh ảnh chất lượng cao tr&ecirc;n sản phẩm n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-xps-13-7390-04pdv1-2_a9814ba3081c478d9233318eea2ca73f.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bộ nhớ SSD 512GB chuẩn PCIe đảm bảo kh&ocirc;ng gian lưu trữ cũng như cải thiện thời gian khởi động m&aacute;y v&agrave; ứng dụng l&ecirc;n gấp nhiều lần so với ổ cứng HDD truyền thống.</p>\r\n\r\n<h2><strong>M&agrave;n h&igrave;nh 4k Ultra HD</strong></h2>\r\n\r\n<p>M&agrave;n h&igrave;nh 13.3 inch với&nbsp;độ ph&acirc;n giải 4K Ultra HD ( 3840 x 2160 pixels )&nbsp;cho bạn g&oacute;c nh&igrave;n rộng hơn, h&igrave;nh ảnh ch&acirc;n thật v&agrave; sắc n&eacute;t tr&ecirc;n từng điểm ảnh. Tỉ lệ m&agrave;n h&igrave;nh so với vỏ m&aacute;y được cải thiện tốt với c&ocirc;ng nghệ viền mỏng vừa tăng trải nghiệm của người d&ugrave;ng, vừa tối ưu kh&ocirc;ng gian l&agrave;m việc. M&agrave;u sắc ch&iacute;nh x&aacute;c tuyệt đối với độ m&agrave;u sRGB đạt 100% hỗ trợ tốt cho c&ocirc;ng việc chỉnh sửa h&igrave;nh ảnh tr&ecirc;n&nbsp;<strong>Dell XPS 13</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-xps-13-7390-04pdv1-4_1ad1ac35d1744b1aa6ec71281d94da13.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>B&agrave;n ph&iacute;m&nbsp;</strong></h2>\r\n\r\n<p>Hệ thống b&agrave;n ph&iacute;m được thiết kế kh&aacute; gọn g&agrave;ng nhưng vẫn đủ thoải m&aacute;i cho người d&ugrave;ng sử dụng m&agrave; kh&ocirc;ng gặp qu&aacute; nhiều kh&oacute; khăn. Keycap to với h&agrave;nh tr&igrave;nh ph&iacute;m vừa phải cho trải nghiệm g&otilde; tuyệt vời tr&ecirc;n chiếc&nbsp;<a href=\"https://gearvn.com/products/gearvn.com/collections/laptop-dell\">laptop Dell&nbsp;</a>XPS 13 n&agrave;y. Kh&ocirc;ng gian của Touchpad được mở rộng v&agrave; hỗ trợ cảm ứng đa điểm như lướt, ph&oacute;ng to - nhỏ, chuyển đổi tab,... đều được thực hiện mượt m&agrave; tr&ecirc;n sản phẩm n&agrave;y.&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-dell-xps-13-7390-04pdv1-6_03eb12c9e3a94f2caa3ae325a6337a10.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Cổng kết nối Thunderbolt 3 cao cấp</strong></h2>\r\n\r\n<p>Được t&iacute;ch hợp 2 cổng kết nối hiện đại nhất hiện nay l&agrave; Thunderbolt 3 c&oacute; nhiệm vụ vừa d&ugrave;ng để sạc pin v&agrave; cũng vừa hỗ trợ xuất h&igrave;nh ảnh DisplayPort. Jack cắm tai nghe 3.5 vẫn được giữ nguy&ecirc;n tr&ecirc;n d&ograve;ng sản phẩm n&agrave;y, đi c&ugrave;ng đ&oacute; l&agrave; một đầu đọc thẻ nhớ MicroSD. Cuối c&ugrave;ng l&agrave; Webcam si&ecirc;u nhỏ với đường k&iacute;nh chỉ&nbsp;2,25mm hỗ trợ Videocall ở chất lượng HD.</p>\r\n\r\n<h2><strong>Thời lượng pin l&ecirc;n đến 11 giờ</strong></h2>\r\n\r\n<p>Để thuận tiện cho người thường xuy&ecirc;n phải di chuyển,&nbsp;&nbsp;<strong>Dell XPS 13 7390 04PDV1</strong>&nbsp;c&oacute; thời lượng sử dụng c&oacute; thể k&eacute;o d&agrave;i l&ecirc;n đến 11 giờ li&ecirc;n tục. Xem phim, soạn thảo văn bản, chỉnh sửa h&igrave;nh ảnh,... th&igrave; Dell XPS vẫn lu&ocirc;n đ&aacute;p ứng đầy đủ nhu cầu cho bạn m&agrave; kh&ocirc;ng phải lo về vấn đề năng lượng.&nbsp;</p>\r\n\r\n<p>Với thiết kế gọn nhẹ, hiệu năng mạnh mẽ c&ugrave;ng nhiều c&ocirc;ng nghệ hiện đại,&nbsp;<strong>Dell XPS 13 7390 04PDV1</strong>&nbsp;ch&iacute;nh l&agrave; mẫu laptop doanh nh&acirc;n cao cấp đ&aacute;ng để đầu tư nhất hiện nay.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Bạc', 12, 11, 18),
(20, 'Laptop Gaming Acer Predator Triton 500 PT515-52 72U2', '72u2_9a15834ab93347379bd226b42e33cd6e.jpg/predator-triton-500_pt515-52_06_0f4d19a3b3f74c42b933527187610138.jpg/predator-triton-500_pt515-52_wp_03_rgb-key-backlit-1_c6e49e9e1ae142678725b604a74348ab.jpg/predator-triton-500_pt515-52_wp-jumpstart_04_rgb-key-backlit_bc52c66ae2ac4ed9adc8375c00f8c667.jpg/', '', 79990000, 0, '<table id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Intel Core i7-10875H 2.3GHz up to 5.1GHz 16MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>32GB (16GB x2) DDR4 2933MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Ocirc;̉ cứng</td>\r\n			<td>1TB SSD PCIE G3X4 (Support RAID 0) (2 slots)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card đồ họa</td>\r\n			<td>NVIDIA GeForce RTX 2080 Super&trade; 8GB GDDR6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;n h&igrave;nh</td>\r\n			<td>15.6&quot; FHD (1920 x 1080) IPS Narrow Border,&nbsp;<strong>300Hz</strong>&nbsp;G-Sync, 3ms, 300nits</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cổng giao tiếp</td>\r\n			<td>3x USB 3.2, USB-Type C (Thunderbolt), Mini-DP, HDMI, RJ-45</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ổ quang</td>\r\n			<td>None</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Audio</td>\r\n			<td>True Harmony; Dolby&reg; Audio Premium</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đọc thẻ nhớ</td>\r\n			<td>SD Card Reader</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chu&acirc;̉n LAN</td>\r\n			<td>Killer 2.5 Gigabit Etherne,&nbsp;Killer DoubleShot Pro</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chuẩn WIFI</td>\r\n			<td>802.11AX (2x2)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>v5.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Webcam</td>\r\n			<td>HD Webcam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>Windows 10 Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin</td>\r\n			<td>4 Cell 5550mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>2.1 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u sắc</td>\r\n			<td>Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kích thước</td>\r\n			<td>358.5 x 255 x 17.9 (mm)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ch&iacute;nh S&aacute;ch Bảo H&agrave;nh 3S1 Cho C&aacute;c Sản Phẩm ACER Gaming</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/acervietnam-baohanh-3s1-web.jpg\" /></p>\r\n\r\n<p><strong>Tất cả c&aacute;c sản phẩm Gaming Acer (*) được cam kết bảo h&agrave;nh trong v&ograve;ng 03 ng&agrave;y (72 giờ) bao gồm cả ng&agrave;y thứ bảy v&agrave; ng&agrave;y chủ nhật (**). Acer cam kết sẽ đổi sản phẩm mới c&ugrave;ng loại hoặc tương đương (1 đổi 1) cho c&aacute;c trường hợp kh&ocirc;ng ho&agrave;n th&agrave;nh bảo h&agrave;nh trong 03 ng&agrave;y.&nbsp;</strong></p>\r\n\r\n<p>Đặc biệt sản phẩm M&aacute;y t&iacute;nh để b&agrave;n Gaming v&agrave; M&agrave;n h&igrave;nh m&aacute;y t&iacute;nh Gaming được bảo h&agrave;nh tận nơi (On-site) tại 02 th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội. C&aacute;c sản phẩm Gaming kh&aacute;c &aacute;p dụng h&igrave;nh thức dịch vụ kh&aacute;ch h&agrave;ng mang sản phẩm đến Trung t&acirc;m Bảo h&agrave;nh (Carry-in) tại c&aacute;c tỉnh th&agrave;nh c&oacute; Trung t&acirc;m Bảo h&agrave;nh của Acer (***).&nbsp;</p>\r\n\r\n<p><strong>(**) Thời gian bảo h&agrave;nh</strong></p>\r\n\r\n<ul>\r\n	<li>Carry-in: Từ khi nhận sản phẩm đến khi sản phẩm được sửa chữa ho&agrave;n th&agrave;nh (c&oacute; thể trả sản phẩm tốt cho kh&aacute;ch h&agrave;ng).</li>\r\n	<li>Onsite: Từ khi nhận y&ecirc;u cầu dịch vụ th&ocirc;ng qua tổng đ&agrave;i&nbsp;<strong>1900-969601</strong>&nbsp;hoặc email&nbsp;<strong>acercare.vn@acer.com</strong>&nbsp;đến khi sản phẩm được sửa chữa ho&agrave;n th&agrave;nh.</li>\r\n</ul>\r\n\r\n<p>Ghi ch&uacute;: Thời gian bảo h&agrave;nh được t&iacute;nh từ thời điểm kh&aacute;ch h&agrave;ng cung cấp chứng từ mua h&agrave;ng cho c&aacute;c trường hợp sản phẩm cần chứng minh ng&agrave;y mua do sản phẩm đ&atilde; qu&aacute; thời hạn bảo h&agrave;nh dựa theo ng&agrave;y sản xuất.&nbsp;</p>\r\n\r\n<p><strong>(***) Danh s&aacute;ch Trung t&acirc;m Bảo h&agrave;nh Acer</strong></p>\r\n\r\n<ul>\r\n	<li>TPHCM: 585-587 Điện Bi&ecirc;n Phủ, Phường 1, Quận 3, Tp. HCM</li>\r\n	<li>H&agrave; Nội: Tầng 1, T&ograve;a nh&agrave; Đ&agrave;o Duy Anh, số 9A Đường Đ&agrave;o Duy Anh, Phường Kim Li&ecirc;n, Quận Đống Đa, Tp. H&agrave; Nội</li>\r\n	<li>Đ&agrave; Nẵng: 296 Nguyễn Ho&agrave;ng, Phường Vĩnh Trung, Quận Thanh Kh&ecirc;, Tp. Đ&agrave; Nẵng</li>\r\n	<li>Cần Thơ: 94-96 Đường Nguyễn Tr&atilde;i, Phường C&aacute;i Khế, Quận Ninh Kiều, Tp. Cần Thơ</li>\r\n	<li>Nghệ An: 171 L&ecirc; Lợi, Phường L&ecirc; Lợi, Tp. Vinh, Tỉnh Nghệ An</li>\r\n	<li>Hải Ph&ograve;ng: Tầng 6, Số 7 L&ecirc; Hồng Phong, Quận Ng&ocirc; Quyền, Tp. Hải Ph&ograve;ng</li>\r\n	<li>Th&aacute;i Nguy&ecirc;n: 44A Ho&agrave;ng Văn Thụ, Phường Ho&agrave;ng Văn Thụ, Tp. Th&aacute;i Nguy&ecirc;n, Tỉnh Th&aacute;i Nguy&ecirc;n</li>\r\n</ul>\r\n', '', 12, 9, 18),
(21, 'Laptop Gaming MSI GE66 Raider 10SFS 474VN', 'khunglaptopwebsite_3ada3ab9d4ad4e54a0f6aeb2d9563bb0.jpg/', '', 59990000, 3, '<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Bộ vi xử l&yacute; (CPU)</strong>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>T&ecirc;n bộ vi xử l&yacute;</p>\r\n			</td>\r\n			<td>\r\n			<p>Intel<sup>&reg;</sup>&nbsp;Core&trade;&nbsp;<strong>i7-10850H</strong>&nbsp;Processor</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tốc độ&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>2.60GHz up to 5.00GHz, 6 nh&acirc;n 12 luồng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ nhớ đệm</p>\r\n			</td>\r\n			<td>\r\n			<p>12MB Intel<sup>&reg;</sup>&nbsp;Smart Cache</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chipset</p>\r\n			</td>\r\n			<td>\r\n			<p>Intel<sup>&reg;</sup>&nbsp;HM470</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Bộ nhớ trong (RAM Laptop)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dung lượng</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>32GB DDR4</strong>&nbsp;3200MHz (2 x 16GB)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Số khe ram</p>\r\n			</td>\r\n			<td>\r\n			<p>2 Slots,&nbsp;Max 64GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Ổ cứng (SSD&nbsp;Laptop)</strong>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dung lượng</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>1TB SSD</strong>&nbsp;NVMe PCIe Gen3x4</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Khả năng lưu trữ</p>\r\n			</td>\r\n			<td>\r\n			<p>1 x M.2 SSD slot (NVMe PCIe Gen3)<br />\r\n			1 x M.2 SSD Combo slot (NVMe PCIe Gen3 / SATA)&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Ổ đĩa quang (ODD)</strong>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>None</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Hiển thị (M&agrave;n h&igrave;nh Laptop)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>M&agrave;n h&igrave;nh</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>15.6 Inch FHD IPS</strong>, 300Hz Thin Bezel, close to 100%sRGB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Độ ph&acirc;n giải</p>\r\n			</td>\r\n			<td>\r\n			<p>FHD (1920 x 1080)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Đồ Họa (VGA)</strong>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ xử l&yacute;</p>\r\n			</td>\r\n			<td>\r\n			<p>NVIDIA<sup>&reg;</sup>&nbsp;GeForce&nbsp;<strong>RTX&trade; 2070 Super 8GB</strong>&nbsp;GDDR6</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>C&ocirc;ng nghệ</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Kết nối (Network)</strong>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>LAN</p>\r\n			</td>\r\n			<td>\r\n			<p>1 x RJ45 - Killer Gb LAN</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Wireless</p>\r\n			</td>\r\n			<td>\r\n			<p>Killer Wi-Fi 6 AX1650i (2*2 ax)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bluetooth</p>\r\n			</td>\r\n			<td>\r\n			<p>Bluetooth v5.1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Cổng giao tiếp mở rộng</strong>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cổng USB</p>\r\n			</td>\r\n			<td>\r\n			<p>2 x USB 3.2 Type-A Gen1<br />\r\n			1 x USB 3.2 Type-A Gen2<br />\r\n			1 x USB 3.2 Type-C Gen2 / DP<br />\r\n			1 x USB 3.2 Type-C Gen2x2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>HDMI</p>\r\n			</td>\r\n			<td>\r\n			<p>1 x (4K @ 60Hz) HDMI</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Khe cắm thẻ nhớ</p>\r\n			</td>\r\n			<td>\r\n			<p>1 x SD (XC/HC) Card Reader</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Audio</p>\r\n			</td>\r\n			<td>\r\n			<p>1 Mic-in/Headphone-out Combo Jack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Camera</p>\r\n			</td>\r\n			<td>\r\n			<p>FHD type (30fps@1080p)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>B&agrave;n Ph&iacute;m Laptop</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Kiểu b&agrave;n ph&iacute;m</p>\r\n			</td>\r\n			<td>\r\n			<p>Per key RGB steelseries KB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Mouse (</strong><strong>Chuột Laptop)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Cảm ứng đa điểm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Pin Laptop</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dung lượng pin</p>\r\n			</td>\r\n			<td>\r\n			<p>4Cells 99.9Whrs</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Sạc Pin Laptop</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Đi k&egrave;m</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Hệ điều h&agrave;nh (Operating System)</strong>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Hệ điều h&agrave;nh đi k&egrave;m</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Windows 10 Home</strong>&nbsp;/High End Devices For 3EM PPP (w/o ODD)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>Th&ocirc;ng tin kh&aacute;c</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Trọng Lượng</p>\r\n			</td>\r\n			<td>\r\n			<p>2.38 kg</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Thiết kế</p>\r\n			</td>\r\n			<td>\r\n			<p>397 x 268 x 27.5 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>M&agrave;u sắc</p>\r\n			</td>\r\n			<td>\r\n			<p>Black (Đen)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Đen', 24, 2, 18),
(22, 'Màn hình Viewsonic VA2261H-2 22\"', '1_27497dc2b6e042f38564a8af64a4b8cc.jpg/1-ec_aa3801904470450bae6c8ae05e535f53.jpg/va2261h-2_back_h_6390a6a7621a48aeab7006377470c7d0.jpg/va2261h-2_back30_h_f4d844efae2d4e93ad899fc677216bb0.jpg/', '', 2390000, 13, '<p>Th&ocirc;ng Số Kỹ Thuật</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/1_9cd730cda7ad4465aa8b0e7488df7506.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/2_c41a7b998d0e49ef9fb7b6d3b4c43c02.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/3_c43f4b2724374c78af55088e835099ae.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/4_3365fbddcb564f1f9ef637a5b06a4295.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/5_30674f46b62d4079b09a692bcadbc70f.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>Cổng kết nối HDMI v&agrave; VGA</li>\r\n	<li>C&ocirc;ng nghệ ViewMode</li>\r\n	<li>C&ocirc;ng nghệ bảo vệ mắt</li>\r\n	<li>Chế độ tiết kiệm điện</li>\r\n	<li>T&iacute;ch hợp treo tường VESA</li>\r\n</ul>\r\n\r\n<h2><strong>M&agrave;n h&igrave;nh 22&quot; với độ ph&acirc;n giải Full HD v&agrave; cổng kết nối HDMI&nbsp;</strong></h2>\r\n\r\n<p><a href=\"https://gearvn.com/collections/man-hinh-viewsonic\">M&agrave;n h&igrave;nh ViewSonic</a>&nbsp;VA2261H-2 l&agrave;m một chiếc m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước 22&quot; với độ ph&acirc;n giải Full HD LED Monitor, ph&ugrave; hợp cho c&aacute;c nhu cầu sử dụng tại gia đ&igrave;nh v&agrave; văn ph&ograve;ng. Độ ph&acirc;n giải 1080p gi&uacute;p cho sản phẩm hiển thị được chất lượng h&igrave;nh ảnh ch&acirc;n thực v&agrave; chi tiết. M&agrave;n h&igrave;nh sở hữu t&iacute;nh năng độc quyền ViewMode với c&aacute;c chế độ m&agrave;u được thiết lập sẵn cho từng nhu cầu sử dụng từ c&ocirc;ng việc đến giải tr&iacute;. Bạn c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m l&agrave;m việc m&agrave; kh&ocirc;ng sợ c&aacute;c hiện tượng mỏi mắt, đau đầu do sản phẩm đ&atilde; được trang bị c&aacute;c c&ocirc;ng nghệ bảo vệ mắt như Bộ lọc &aacute;nh s&aacute;ng xanh v&agrave; Chống nhấp nh&aacute;y. B&ecirc;n cạnh đ&oacute;, m&agrave;n h&igrave;nh được trang bị c&aacute;c cổng kết nối th&ocirc;ng dụng như HDMI,VGA v&agrave; gi&aacute; treo tường chuẩn VESA.&nbsp;</p>\r\n\r\n<h2><strong>Độ Ph&acirc;n Giải Full HD 1080P&nbsp;</strong></h2>\r\n\r\n<p>M&agrave;n h&igrave;nh n&agrave;y c&oacute; độ ph&acirc;n giải Full HD 1920x1080 cho hiệu suất h&igrave;nh ảnh pixel-by-pixel kh&ocirc;ng thể tin được. Bạn sẽ trải nghiệm sự r&otilde; r&agrave;ng v&agrave; chi tiết tuyệt vời nhất cho d&ugrave; đ&oacute; l&agrave; khi l&agrave;m việc, chơi tr&ograve; chơi hay thưởng thức nội dung giải tr&iacute; đa phương tiện mới nhất.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn.com-man-hinh-viewsonic-va2261h-2-1_c217e0312e7e4a059d069d1e1200cee0.jpg\" /></p>\r\n\r\n<h2><strong>Cổng Kết Nối Đa Dạng</strong></h2>\r\n\r\n<p>Cổng kết nối HDMI v&agrave; VGA cho ph&eacute;p bạn thoải m&aacute;i kết nối m&agrave;n h&igrave;nh với nhiều thiết bị kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn.com-man-hinh-viewsonic-va2261h-2-2_a0ed0da8686f4939b4dc077cbb2968d4.jpg\" /></p>\r\n\r\n<h2><strong>ViewMode: Chế Độ C&agrave;i Đặt H&igrave;nh Ảnh&nbsp;</strong></h2>\r\n\r\n<p>T&iacute;nh năng ViewMode độc đ&aacute;o của ViewSonic cung cấp c&aacute;c c&agrave;i đặt trước&nbsp;&quot;Tr&ograve; chơi&quot;, &quot;Phim&quot;, &quot;Web&quot;, &quot;Văn bản&quot; v&agrave; &quot;Mono&quot;. C&aacute;c gi&aacute; trị đặt trước n&agrave;y tăng cường đường cong gamma, nhiệt độ m&agrave;u, độ tương phản v&agrave; độ s&aacute;ng để mang lại trải nghiệm xem được tối ưu h&oacute;a cho c&aacute;c ứng dụng m&agrave;n h&igrave;nh kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn.com-man-hinh-viewsonic-va2261h-2-3_0987458c917d42b9bb5b7d8d12469dc2.jpg\" /></p>\r\n\r\n<h2><strong>C&ocirc;ng Nghệ Bảo Vệ Mắt&nbsp;</strong></h2>\r\n\r\n<p>C&ocirc;ng nghệ Chống nhấp nh&aacute;y v&agrave; Bộ lọc &aacute;nh s&aacute;ng xanh gi&uacute;p loại bỏ sự mỏi mắt do c&aacute;c tia s&aacute;ng xanh c&oacute; hại khi l&agrave;m việc l&acirc;u tr&ecirc;n&nbsp;<a href=\"https://gearvn.com/collections/man-hinh\">m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh</a>.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn.com-man-hinh-viewsonic-va2261h-2-4_22c1f8dcba064d9c8c6b51d47479281b.jpg\" /></p>\r\n\r\n<h2><strong>Ti&ecirc;u Thụ Điện Năng Thấp&nbsp;</strong></h2>\r\n\r\n<p>T&iacute;nh năng tiết kiệm năng lượng Eco-mode độc quyền của ViewSonic được t&iacute;ch hợp v&agrave;o tất cả c&aacute;c m&agrave;n h&igrave;nh LED của ViewSonic. Chế độ Eco điều chỉnh độ s&aacute;ng v&agrave; cải thiện khả năng hiển thị, đồng thời giảm mỏi mắt v&agrave; k&eacute;o d&agrave;i tuổi thọ b&oacute;ng đ&egrave;n của m&agrave;n h&igrave;nh. Với chế độ Eco, tuổi thọ của đ&egrave;n nền LED cũng tăng l&ecirc;n đ&aacute;ng kể.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn.com-man-hinh-viewsonic-va2261h-2-5_7301547bd8eb4aeb8f5d19684c7798e9.jpg\" /></p>\r\n\r\n<h2><strong>Thiết Kế Treo Tường - VESA&nbsp;</strong></h2>\r\n\r\n<p>Lắp đặt m&agrave;n h&igrave;nh v&agrave;o những vị tr&iacute; bạn cảm thấy ph&ugrave; hợp bằng c&aacute;ch sử dụng thiết kế gắn kết VESA.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn.com-man-hinh-viewsonic-va2261h-2-6_c1447e4be4064845a32a6794808d3e4a.jpg\" /></p>\r\n\r\n<h2><strong>Th&ocirc;ng số kỹ thuật</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Display&nbsp;</strong><strong>Display Size (in.)&nbsp;</strong>22&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Viewable Area (in.)&nbsp;</strong>21.5&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Panel Type&nbsp;</strong>TN Technology&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Resolution&nbsp;</strong>1920 x 1080&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Resolution Type&nbsp;</strong>FHD&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Static Contrast Ratio&nbsp;</strong>600:1 (typ)&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dynamic Contrast Ratio&nbsp;</strong>50M:1&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Light Source&nbsp;</strong>LED&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Brightness&nbsp;</strong>200 cd/m2 (typ)&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Colours&nbsp;</strong>16.7M&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Colour Space Support&nbsp;</strong>8 bit (6 bit + Hi-FRC)&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Aspect Ratio&nbsp;</strong>16:9&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Response Time&nbsp;</strong>5ms&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Viewing Angles&nbsp;</strong>90o horizontal, 65o vertical&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Backlight Life (Hours)&nbsp;</strong>30000 Hrs (Min)&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Curvature&nbsp;</strong>Flat&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Refresh Rate (Hz)&nbsp;</strong>60&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Blue Light Filter&nbsp;</strong>Yes&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Flicker-Free&nbsp;</strong>Yes&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Colour Gamut&nbsp;</strong>NTSC: 72% size (Typ)&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>sRGB: 104% size (Typ)&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Pixel Size&nbsp;</strong>0.248 mm (H) x 0.248 mm (V)&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Surface Treatment&nbsp;</strong>Anti-Glare, Hard Coating (3H)&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Compatibility&nbsp;</strong><strong>PC Resolution (max)&nbsp;</strong>1920x1080&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mac&reg; Resolution (max)&nbsp;</strong>1920x1080&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>PC Operating System&nbsp;</strong>Windows 7/8/8.1/10 certified; macOS tested&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mac&reg; Resolution (min)&nbsp;</strong>1920x1080&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Connector&nbsp;</strong><strong>VGA&nbsp;</strong>1&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>3.5mm Audio Out&nbsp;</strong>1&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>HDMI 1.4&nbsp;</strong>1&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Power in&nbsp;</strong>3-pin Socket (IEC C14 / CEE22)&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Power&nbsp;</strong><strong>Eco Mode (Conserve)&nbsp;</strong>12.5W&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Eco Mode (Optimised)&nbsp;</strong>14.5W&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Consumption (typical)&nbsp;</strong>21.5W&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Consumption (max)&nbsp;</strong>24W&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Voltage&nbsp;</strong>AC 100-240V, 50/60 Hz&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Stand-by&nbsp;</strong>0.5W&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Power Supply&nbsp;</strong>Internal&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Additional Hardware&nbsp;</strong><strong>Kensington Lock Slot&nbsp;</strong>1&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Controls&nbsp;</strong><strong>Physical Controls&nbsp;</strong>Auto, Left, Right, Menu, Power&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>On Screen Display&nbsp;</strong>Auto Image Adjust, Contrast/Brightness, Input Select, Audio&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Adjust, Colour Adjust, Information, Manual Image Adjust,&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Setup Menu, Memory Recall&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Operating Conditions&nbsp;</strong><strong>Temperature&nbsp;</strong>32&deg;F to 104&deg;F (0&deg;C to 40&deg;C)&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Humidity (non-condensing)&nbsp;</strong>20% to 90%&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Wall Mount&nbsp;</strong><strong>VESA Compatible&nbsp;</strong>75 x 75 mm&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Input Signal&nbsp;</strong><strong>Frequency Horizontal&nbsp;</strong>24 ~ 82KHz&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Frequency Vertical&nbsp;</strong>50 ~ 75Hz&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Video Input&nbsp;</strong><strong>Digital Sync&nbsp;</strong>TMDS - HDMI (v1.4)&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Analog Sync&nbsp;</strong>Separate - RGB Analog&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ergonomics&nbsp;</strong><strong>Tilt (Forward/Back)&nbsp;</strong>-6o / 19o&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Weight (metric)&nbsp;</strong><strong>Net (kg)&nbsp;</strong>2.6&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Net Without Stand (kg)&nbsp;</strong>2.2&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Gross (kg)&nbsp;</strong>3.6&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dimensions (metric) (wxhxd)&nbsp;</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Packaging (mm)&nbsp;</strong>565 x 390 x 115&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Physical (mm)&nbsp;</strong>505 x 381 x 180</p>\r\n	</li>\r\n</ul>\r\n', 'Đen. Chân đế Tròn', 36, 15, 36),
(23, 'Màn hình Acer K222HQL 22\" Full HD', 'acer_k22hql_gearvn_e7fda41f38204c79a3e874999adf1bed.jpg/acer_k222hql_748b3c4dea9b4a1d832f1f8b6455bbdf.jpg/k202hql_photo_gallery_02_34a33c7b5f604dab9ee609323f7d4205.jpg/k202hql_photo_gallery_04_fd9bde4cefc649c9bd3cd2a91cc7fea6.jpg/', '', 2390000, 2, '<p><strong>Th&ocirc;ng Số Kỹ Thuật:&nbsp;</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Screen Size: 21.5&quot;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Maximum Resolution: (Full HD)1920 x 1080@60 Hz</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Aspect Ratio: 16:9</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Response Time: 5 ms</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Colour Supported: 16.7 Million</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Brightness: 200 cd/m&sup2;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Backlight: LED</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Viewing Angles</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;90&deg; Horizontal</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;65&deg; Vertical</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Panel Type: TN (Twisted Nematic Film)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Stand: Tilt (-5&deg;~25&deg;)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Ports &amp; Connectors</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;VGA</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;DVI-in</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Environmental Certification: MPR II</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Colours: Black</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;VESA Compatible: (Yes) 100 x 100mm</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Dimensions (W x H x D)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;508 mm x 304.50 mm x 52 mm</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;508 mm x 390.5 mm x 207 mm (with stand)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Weight (Approximate)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;2.70 kg</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;3.10 kg (with stand)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Package Contents</p>\r\n\r\n<ul>\r\n	<li>K222HQLbd Widescreen LCD Monitor</li>\r\n	<li>1 x VGA Cable</li>\r\n	<li>Power Cord</li>\r\n</ul>\r\n', 'Đen. Chân đế Tròn', 36, 9, 36),
(24, 'Màn Hình Samsung LF22T350 22', 'samsung_lf22t350_gearvn_b9d06de561174df09bd33fad804cee12.jpg/', '', 2740000, 0, '<p><img src=\"https://file.hstatic.net/1000026716/file/hinh_1_de4c3d324af64f5abb7e840a31abb3c3.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/hinh_2_a86f1f63be1b4bd4bc4fee8229693410.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/hinh_3_0ada83eaeeb54fa3852796e20ea0e5b9.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/hinh_4_1a1a74f0d6194ee7b45aa9744ace9a23.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/hinh_5_cb6b265fd7eb40a0b684226d28c0f549.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/hinh_6_620ddbd6ce7c4154beaa942ae1d77bdd.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/hinh_7_7648514a6dd64e5099d783328101f147.jpg\" /></p>\r\n\r\n<p><strong>Th&ocirc;ng Số Kỹ Thuật:</strong></p>\r\n\r\n<ul>\r\n	<li><em>Hiển Thị</em>\r\n\r\n	<ul>\r\n		<li><em>Screen Size (Class):&nbsp;</em>22</li>\r\n		<li><em>Flat</em></li>\r\n		<li><em>Active Display Size (HxV) (mm):&nbsp;</em>476.064 &times; 267.786 mm</li>\r\n		<li><em>Screen Curvature:&nbsp;</em>N/A</li>\r\n		<li><em>Tỷ lệ khung h&igrave;nh:&nbsp;</em>16:9</li>\r\n		<li><em>Tấm nền:&nbsp;</em>IPS</li>\r\n		<li><em>Độ s&aacute;ng:&nbsp;</em>250cd/㎡</li>\r\n		<li><em>Peak Brightness (Typical):&nbsp;</em>N/A</li>\r\n		<li><em>Độ s&aacute;ng (Tối thiểu):&nbsp;</em>200cd/㎡</li>\r\n		<li><em>Tỷ lệ tương phản:&nbsp;</em>1000:1(Typical)</li>\r\n		<li><em>Tỷ lệ Tương phản:&nbsp;</em>Mega</li>\r\n		<li><em>HDR(High Dynamic Range):&nbsp;</em>N/A</li>\r\n		<li><em>Độ ph&acirc;n giải:&nbsp;</em>1,920 x 1,080</li>\r\n		<li><em>Thời gian phản hồi:&nbsp;</em>5 (GTG）</li>\r\n		<li><em>G&oacute;c nh&igrave;n (H/V):&nbsp;</em>178&deg;/178&deg;</li>\r\n		<li><em>Hỗ trợ m&agrave;u sắc:&nbsp;</em>Max 16.7M</li>\r\n		<li><em>Độ rộng dải m&agrave;u c&oacute; thể hiển thị (NTSC 1976)</em>72%</li>\r\n		<li><em>Color Gamut (DCI Coverage):&nbsp;</em>N/A</li>\r\n		<li><em>Độ bao phủ của kh&ocirc;ng gian m&agrave;u sRGB:&nbsp;</em>N/A</li>\r\n		<li><em>Độ bao phủ của kh&ocirc;ng gian m&agrave;u Adobe RGB:&nbsp;</em>N/A</li>\r\n		<li><em>Tần số qu&eacute;t:&nbsp;</em>Max 75Hz</li>\r\n	</ul>\r\n	</li>\r\n	<li><em>T&iacute;nh năng chung</em>\r\n	<ul>\r\n		<li><em>Samsung MagicRotation Auto:&nbsp;</em>N/A</li>\r\n		<li><em>Eco Saving Plus:&nbsp;</em>Yes</li>\r\n		<li><em>Eco Motion Sensor:&nbsp;</em>N/A</li>\r\n		<li><em>Eco Light Sensor:&nbsp;</em>N/A</li>\r\n		<li><em>0.00 W Off mode:&nbsp;</em>N/A</li>\r\n		<li><em>Eye Saver Mode:&nbsp;</em>Yes</li>\r\n		<li><em>Flicker Free:&nbsp;</em>Yes</li>\r\n		<li><em>H&igrave;nh-trong-H&igrave;nh:&nbsp;</em>N/A</li>\r\n		<li><em>Picture-By-Picture:&nbsp;</em>N/A</li>\r\n		<li><em>Quantum Dot Color:&nbsp;</em>N/A</li>\r\n		<li><em>Chế độ chơi Game:&nbsp;</em>Yes</li>\r\n		<li><em>Image Size:&nbsp;</em>Yes</li>\r\n		<li><em>USB Super Charging:&nbsp;</em>N/A</li>\r\n		<li><em>Daisy Chain:&nbsp;</em>N/A</li>\r\n		<li><em>Windows Certification:&nbsp;</em>Windows 10</li>\r\n		<li><em>FreeSync:&nbsp;</em>Yes</li>\r\n		<li><em>FreeSync Premium:&nbsp;</em>N/A</li>\r\n		<li><em>FreeSync Premium Pro:&nbsp;</em>N/A</li>\r\n		<li><em>G-Sync:&nbsp;</em>N/A</li>\r\n		<li><em>Off Timer Plus:&nbsp;</em>Yes</li>\r\n		<li><em>Smartphone Wireless Charging:&nbsp;</em>N/A</li>\r\n		<li><em>Screen Size Optimizer:&nbsp;</em>N/A</li>\r\n		<li><em>Black Equalizer:&nbsp;</em>N/A</li>\r\n		<li><em>Low Input Lag Mode:&nbsp;</em>N/A</li>\r\n		<li><em>Refresh Rate Optimizor:&nbsp;</em>N/A</li>\r\n		<li><em>Custom Key:&nbsp;</em>N/A</li>\r\n		<li><em>Super Arena Gaming UX:&nbsp;</em>N/A</li>\r\n		<li><em>HDMI-CEC:&nbsp;</em>N/A</li>\r\n	</ul>\r\n	</li>\r\n	<li><em>Giao diện</em>\r\n	<ul>\r\n		<li><em>Hiển thị kh&ocirc;ng d&acirc;y:&nbsp;</em>No</li>\r\n		<li><em>D-Sub:&nbsp;</em>1 EA</li>\r\n		<li><em>DVI:&nbsp;</em>No</li>\r\n		<li><em>Dual Link DVI:&nbsp;</em>No</li>\r\n		<li><em>Display Port:&nbsp;</em>No</li>\r\n		<li><em>Display Port Version:&nbsp;</em>No</li>\r\n		<li><em>Display Port Out:&nbsp;</em>No</li>\r\n		<li><em>Display Port Out Version:&nbsp;</em>No</li>\r\n		<li><em>Mini-Display Por:&nbsp;t</em>No</li>\r\n		<li><em>HDMI:&nbsp;</em>1 EA</li>\r\n		<li><em>HDMI Version:&nbsp;</em>1.4</li>\r\n		<li><em>Tai nghe:&nbsp;</em>No</li>\r\n		<li><em>Tai nghe:&nbsp;</em>No</li>\r\n		<li><em>USB Ports:&nbsp;</em>No</li>\r\n		<li><em>USB Hub Version:&nbsp;</em>No</li>\r\n		<li><em>USB-C:&nbsp;</em>No</li>\r\n		<li><em>USB-C Charging Powe:&nbsp;r</em>No</li>\r\n		<li><em>Thunderbolt 3:&nbsp;</em>N/A</li>\r\n		<li><em>Thunderbolt 3 Charging Power (Port 1):&nbsp;</em>N/A</li>\r\n		<li><em>Thunderbolt 3 Charging Power (Port 2):&nbsp;</em>N/A</li>\r\n		<li><em>Ethernet (LAN):&nbsp;</em>N/A</li>\r\n	</ul>\r\n	</li>\r\n	<li><em>&Acirc;m thanh</em>\r\n	<ul>\r\n		<li><em>Loa:&nbsp;</em>No</li>\r\n		<li><em>USB Sound Bar (Ready):&nbsp;</em>No</li>\r\n	</ul>\r\n	</li>\r\n	<li><em>Hoạt động</em>\r\n	<ul>\r\n		<li><em>Nhiệt độ hoạt động:&nbsp;</em>10℃~ 40℃</li>\r\n		<li><em>Độ ẩm:&nbsp;</em>10% ~ 80%, non-condensing</li>\r\n	</ul>\r\n	</li>\r\n	<li><em>Hiệu chuẩn</em>\r\n	<ul>\r\n		<li><em>Điều chỉnh theo chuẩn nh&agrave; m&aacute;y:&nbsp;</em>N/A</li>\r\n		<li><em>M&aacute;y hiệu chuẩn t&iacute;ch hợp:&nbsp;</em>N/A</li>\r\n		<li><em>Độ s&acirc;u số LUT(Look-up Table):&nbsp;</em>N/A</li>\r\n		<li><em>C&acirc;n bằng x&aacute;m:&nbsp;</em>N/A</li>\r\n		<li><em>Điều chỉnh đồng bộ:&nbsp;</em>N/A</li>\r\n		<li><em>Chế độ m&agrave;u sắc:&nbsp;</em>N/A</li>\r\n		<li><em>CMS (Phần mềm quản l&yacute; m&agrave;u sắc):&nbsp;</em>N/A</li>\r\n		<li><em>B&aacute;o c&aacute;o hiệu chuẩn nh&agrave; m&aacute;y:&nbsp;</em>N/A</li>\r\n	</ul>\r\n	</li>\r\n	<li><em>Thi&ecirc;́t k&ecirc;́</em>\r\n	<ul>\r\n		<li><em>M&agrave;u sắc:&nbsp;</em>DARK BLUE GRAY</li>\r\n		<li><em>Dạng ch&acirc;n đế:&nbsp;</em>SIMPLE</li>\r\n		<li><em>HAS (Ch&acirc;n đế c&oacute; thể điều chỉnh độ cao):&nbsp;</em>N/A</li>\r\n		<li><em>Độ nghi&ecirc;ng:&nbsp;</em>-2 ~ 20</li>\r\n		<li><em>Khớp quay:&nbsp;</em>N/A</li>\r\n		<li><em>Xoay:&nbsp;</em>N/A</li>\r\n		<li><em>Treo tường:&nbsp;</em>100 x 100</li>\r\n	</ul>\r\n	</li>\r\n	<li><em>Eco</em>\r\n	<ul>\r\n		<li><em>Mức độ tiết kiệm:&nbsp;</em>N/A</li>\r\n		<li><em>Recycled Plastic:&nbsp;</em>N/A</li>\r\n	</ul>\r\n	</li>\r\n	<li><em>Nguồn điện</em>\r\n	<ul>\r\n		<li><em>Nguồn cấp điện:&nbsp;</em>AC 100~240V</li>\r\n		<li><em>Mức ti&ecirc;u thụ nguồn (Tối đa):&nbsp;</em>N/A</li>\r\n		<li><em>Power Consumption (Typ):&nbsp;</em>N/A</li>\r\n		<li><em>Mức ti&ecirc;u thụ nguồn (DPMS):&nbsp;</em>0.5W</li>\r\n		<li><em>Mức ti&ecirc;u thụ nguồn (Ch&ecirc;́ đ&ocirc;̣ Tắt):&nbsp;</em>0.3W</li>\r\n		<li><em>Mức ti&ecirc;u thụ nguồn (hằng năm):&nbsp;</em>N/A</li>\r\n		<li><em>Loại</em>External Adaptor</li>\r\n	</ul>\r\n	</li>\r\n	<li><em>K&iacute;ch thước</em>\r\n	<ul>\r\n		<li><em>C&oacute; ch&acirc;n đế (RxCxD)</em>488.8 x 396.9 x 232.0 mm</li>\r\n		<li><em>Kh&ocirc;ng c&oacute; ch&acirc;n đế (RxCxD)</em>488 x 294.4 x 39.4 mm</li>\r\n		<li><em>Th&ugrave;ng m&aacute;y (RxCxD)</em>610 x 356 x 125 mm</li>\r\n	</ul>\r\n	</li>\r\n	<li><em>Trọng lượng</em>\r\n	<ul>\r\n		<li><em>C&oacute; ch&acirc;n đế:&nbsp;</em>2.3 kg</li>\r\n		<li><em>Kh&ocirc;ng c&oacute; ch&acirc;n đế:&nbsp;</em>2.0 kg</li>\r\n		<li><em>Th&ugrave;ng m&aacute;y:&nbsp;</em>3.5 kg</li>\r\n	</ul>\r\n	</li>\r\n	<li><em>Phụ kiện</em>\r\n	<ul>\r\n		<li><em>Chiều d&agrave;i c&aacute;p điện:&nbsp;</em>1.5 m</li>\r\n		<li><em>D-Sub Cable:&nbsp;</em>N/A</li>\r\n		<li><em>DVI Cable:&nbsp;</em>N/A</li>\r\n		<li><em>HDMI Cable:&nbsp;</em>Yes</li>\r\n		<li><em>HDMI to DVI Cable:&nbsp;</em>N/A</li>\r\n		<li><em>DP Cable:&nbsp;</em>N/A</li>\r\n		<li><em>USB Type-C Cable:&nbsp;</em>N/A</li>\r\n		<li><em>Thunderbolt 3 Cable:&nbsp;</em>N/A</li>\r\n		<li><em>Mini-Display Gender:&nbsp;</em>No</li>\r\n		<li><em>Install CD:&nbsp;</em>N/A</li>\r\n		<li><em>Audio Cable:&nbsp;</em>N/A</li>\r\n		<li><em>USB 2.0 Cable:&nbsp;</em>N/A</li>\r\n		<li><em>USB 3.0 Cable:&nbsp;</em>N/A</li>\r\n		<li><em>Remote Controller:&nbsp;</em>N/A</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', '', 24, 14, 36),
(25, 'Màn hình Dell E2420H 24\" IPS', 'gearvn-man-hinh-dell-e2420h-1_a4bc786e1b4f4d6eb8e35065d13a4070.jpg/gearvn-man-hinh-dell-e2420h-2_d3b6019d1d9b4187b53540e257ed28ef.jpg/gearvn-man-hinh-dell-e2420h-3_c14ef5a4372e415981c72bd358d2c7e9.jpg/thummanhinh_dfe9c37876a04294aa6ea475a106550a_grande_2bbea5d91e0f4c7ba121ee2b98959c19.jpg/', '', 3190000, 0, '<h2><strong>TH&Ocirc;NG SỐ KĨ THUẬT:</strong></h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Dell&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model</td>\r\n			<td>E2420H</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>23.8 inch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải</td>\r\n			<td>Full HD (1920x1080)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tỉ lệ</td>\r\n			<td>16:9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tấm nền m&agrave;n h&igrave;nh</td>\r\n			<td>IPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ s&aacute;ng</td>\r\n			<td>250 cd/㎡</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ tương phản</td>\r\n			<td>1000:1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tần số qu&eacute;t</td>\r\n			<td>60Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cổng kết nối</td>\r\n			<td>1 X VGA<br />\r\n			1 X DisplayPort 1.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thời gian đ&aacute;p ứng</td>\r\n			<td>8 ms typical (Normal) 5 ms typical (Fast) (gray to gray)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>G&oacute;c nh&igrave;n</td>\r\n			<td>178&deg;(H)/178&deg;(V)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng</td>\r\n			<td>Trace Free Technology :&nbsp;Yes<br />\r\n			SPLENDID Video Preset Modes :&nbsp;8 Modes (sRGB Mode/Scenery Mode/Theater Mode/Standard Mode/Night View Mode/Game Mode/Reading Mode/Darkroom Mode)<br />\r\n			Skin-Tone Selection :&nbsp;3 Modes<br />\r\n			Color Temperature Selection :&nbsp;4 Modes<br />\r\n			QuickFit (modes) :&nbsp;Yes (Letter/Alignment Grid/Paper/Photo Modes)<br />\r\n			GamePlus(modes) :&nbsp;Yes (Crosshair/Timer/FPS Counter/Display Alignment)<br />\r\n			Low Blue Light :&nbsp;Yes<br />\r\n			HDCP support :&nbsp;Yes<br />\r\n			FreeSync&trade; technology supported<br />\r\n			Extreme Low Motion Blur</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Điện năng ti&ecirc;u thụ</td>\r\n			<td>AC input voltage/frequency/current<br />\r\n			100 VAC to 240 VAC / 50 Hz or 60 Hz &plusmn; 3 Hz / 0.8 A (typical)<br />\r\n			<br />\r\n			Power Consumption (Operational)&nbsp;<br />\r\n			15W (Typ). 22W (Max). 14.36W (Energy Star)<br />\r\n			<br />\r\n			Power Consumption Stand by/Sleep<br />\r\n			Less than 0.3W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kích thước</td>\r\n			<td>\r\n			<p>419.70 mm x 550.60 mm x&nbsp;171.0 mm (Gồm ch&acirc;n đế)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&acirc;n nặng</td>\r\n			<td>4.27 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phụ kiện</td>\r\n			<td>C&aacute;p nguồn, C&aacute;p DisplayPort,1 X DP Cable (DP to DP) /1 X VGA Cable (EMEA and Japan only) /1 X VESA screw cover</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Đ&aacute;nh gi&aacute; chi tiết:</h2>\r\n\r\n<p>M&agrave;n h&igrave;nh&nbsp;DELL E2420H được&nbsp;thiết kế đẹp mắt c&oacute; đ&egrave;n nền LED Full HD 23.8&nbsp;inch với độ ph&acirc;n giải 1920 x 1080 sống động v&agrave; cấu h&igrave;nh mỏng hỗ trợ thiết lập đa m&agrave;n h&igrave;nh gần như liền mạch. Trải nghiệm kết nối đơn giản, thuận tiện - l&agrave;m việc với c&aacute;c thiết bị được sử dụng thường xuy&ecirc;n nhất của bạn với VGA v&agrave; DisplayPort</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/e2420h-monitor-module-1_cc21f28e9d1f41caa6a4498ad390bdd2.jpg\" /></p>\r\n\r\n<p>M&agrave;n h&igrave;nh&nbsp;DELL E2420H với c&aacute;c t&ugrave;y chọn kết nối thuận tiện như cổng VGA v&agrave; DP,&nbsp;bạn sẽ được ho&agrave;n to&agrave;n t&ugrave;y chỉnh theo nhu cầu của bạn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/e2420h-monitor-module-2_c1211661c0b9403e81a5eb197684d716.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/e2420h-monitor-module-3_40db29dcc45448c282be62b4bfc278c9.jpg\" /></p>\r\n', '', 36, 11, 36),
(27, 'Tai nghe DareU EH722S 7.1', 'gearvn-dareu-eh722.jpg/', '', 890000, 34, '<h2 style=\"text-align:start\"><span style=\"font-size:30px\"><span style=\"font-family:&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-size:20pt\">Tai nghe gaming DareU EH722S 7.1</span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15pt\"><a href=\"https://gearvn.com/collections/gaming-headphones\" style=\"box-sizing:border-box; color:#428bca; text-decoration:none !important; background:transparent; max-width:100%; outline:0px\"><strong>Tai nghe gaming gi&aacute; rẻ</strong></a>&nbsp;DARE-U EH722S (Đen)&nbsp;l&agrave; thiết bị gi&uacute;p cho người nghe c&oacute; thể nghe được &acirc;m thanh trực tiếp th&ocirc;ng qua kết cấu loa hai b&ecirc;n, người d&ugrave;ng c&oacute; thể nghe c&aacute;c dạng &acirc;m thanh một c&aacute;ch c&aacute;ch ri&ecirc;ng tư, tr&aacute;nh l&agrave;m phiền đến người xung quanh. Tai nghe&nbsp;DARE-U EH722S (đen) l&agrave; một sản phẩm uy t&iacute;n của h&atilde;ng DAREU cung cấp cho người d&ugrave;ng sự tiện lợi v&agrave; ph&ugrave; hợp khi sử dụng.</span></span></span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15pt\"><strong><span style=\"color:#000000\"><span style=\"font-family:Verdana,Arial,Helvetica,sans-serif\">TH&Ocirc;NG</span></span>&nbsp;<span style=\"color:#000000\"><span style=\"font-family:Verdana,Arial,Helvetica,sans-serif\">S</span></span><span style=\"color:#000000\"><span style=\"font-family:Verdana,Arial,Helvetica,sans-serif\">Ố K</span></span><span style=\"color:#000000\"><span style=\"font-family:Verdana,Arial,Helvetica,sans-serif\">Ỹ THU</span></span><span style=\"color:#000000\"><span style=\"font-family:Verdana,Arial,Helvetica,sans-serif\">ẬT</span></span></strong></span></span></span></span></span></h3>\r\n\r\n<ul style=\"margin-left:0px; margin-right:0px\">\r\n	<li><span style=\"font-size:15pt\">Driver: &Phi;50mm x 10 mm (H)</span></li>\r\n	<li><span style=\"font-size:15pt\">Hiệu ứng: giả lập 7.1</span></li>\r\n	<li><span style=\"font-size:15pt\">Kết nối: USB</span></li>\r\n	<li><span style=\"font-size:15pt\">Đệm tai: da mềm</span></li>\r\n	<li><span style=\"font-size:15pt\">V&ograve;ng đầu: kim loại</span></li>\r\n	<li><span style=\"font-size:15pt\">Trở kh&aacute;ng: 24 &plusmn; 15% &Omega;</span></li>\r\n	<li><span style=\"font-size:15pt\">Tần số: 20Hz-20KHz</span></li>\r\n	<li><span style=\"font-size:15pt\">D&acirc;y: 2.0m</span></li>\r\n</ul>\r\n', 'Đen', 12, 16, 39);
INSERT INTO `san_pham` (`id`, `name`, `hinh`, `mo_ta`, `don_gia`, `giam_gia`, `thongtin_kythuat`, `mau_sac`, `bao_hanh`, `id_hsx`, `id_loai`) VALUES
(28, 'Tai nghe Rapoo VH520 Virtual 7.1', 'gearvn-tai-nghe-rapoo-vh520-virtual-7-1-1_1072509b96714c67b04fa438fce83453.jpg/gearvn-tai-nghe-rapoo-vh520-virtual-7-1-3_2c06390809a34ff7be81f226c12c2a19.jpg/gearvn-tai-nghe-rapoo-vh520-virtual-7-1-4_e5f3d783aea64d099306baf088ac4f45.jpg/gearvn-tai-nghe-rapoo-vh520-virtual-7-1-5_e55f7c9fbe734cb09389a6377c87fae7.jpg/gearvn-tai-nghe-rapoo-vh520-virtual-7-1-6_494abb477fa3403db70586180ed81526.jpg/', '', 1090000, 37, '<h2>Tai nghe Rapoo VH520 Virtual 7.1</h2>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-rapoo-vh520-virtual-7-1_ab39ade991b34884b75b5a83ef9d40f6.jpg\" style=\"height:497px; width:497px\" /></p>\r\n\r\n<p>Tai nghe Game, đ&egrave;n nền led RGB, giao tiếp qua cổng USB 2.0.Đầu ra &acirc;m thanh ảo 7.1 mang đến cho bạn trải nghiệm &acirc;m thanh v&ograve;m tuyệt đẹp.</p>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://gearvn.com/collections/gaming-headphones\"><strong>tai nghe gaming gi&aacute; rẻ</strong></a>&nbsp;Rapoo VH520 Virtual 7.1 được trang bị bộ điều khiển đa chức năng tr&ecirc;n tai nghe gi&uacute;p bạn dễ d&agrave;ng điều chỉnh &acirc;m lượng.</p>\r\n\r\n<h3>Th&ocirc;ng số kỹ thuật:</h3>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Sản phẩm</td>\r\n			<td>Tai nghe</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Rapoo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model</td>\r\n			<td>7.1 LED RGB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thiết kế</td>\r\n			<td>Chụp tai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&ecirc;́t n&ocirc;́i</td>\r\n			<td>USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Microphone</td>\r\n			<td>Có</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Màu sắc</td>\r\n			<td>Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&ocirc; tả kh&aacute;c</td>\r\n			<td>K&iacute;ch thước mic: &Phi;4.0 * 1.5mm; Độ nhạy: -48 &plusmn; 3db; Trở kh&aacute;ng: 2.2K&Omega;; Đ&aacute;p ứng tần số: 20 ~ 2000Hz; C&ocirc;ng suất đầu v&agrave;o tối đa: 100mW; Độ nhạy (S.P.L): 98 &plusmn; 3db. Led RGB.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Đen', 24, 18, 39),
(29, 'Tai nghe HyperX Cloud Stinger Core', '787_tai_nghe_kingston_hyperx_cloud_stinger_core_hx_hscsc2_bk_ww_0000_1_939c136f9dbc469ebfd5d6b7fc70233e.jpg/787_tai_nghe_kingston_hyperx_cloud_stinger_core_hx_hscsc2_bk_ww_0000_2_cfa9b117ff9b43248d7ab5144c736446.jpg/787_tai_nghe_kingston_hyperx_cloud_stinger_core_hx_hscsc2_bk_ww_0002_4_0cc12d34e11943c897d8a653fa53d2df.jpg/hyperx-cloud-stinger-core-71-5_00502a3b6c134f30ac98e0542e29a19b_grande_2f970ccc0fc44c239e117501d9ffa0d1.jpg/', '', 890000, 10, '<h2>Tai nghe gaming HyperX Cloud Stinger Core</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>HyperX Cloud Stinger Core&trade;</em>&nbsp;l&agrave;&nbsp;<a href=\"https://gearvn.com/collections/gaming-headphones\"><strong>tai nghe gaming gi&aacute; rẻ</strong></a>&nbsp;ho&agrave;n hảo cho game thủ điều khiển tr&ograve; chơi thích chất lượng &acirc;m thanh hay nhưng giá m&ecirc;̀m.&nbsp;Tương th&iacute;ch với nhiều loại m&aacute;y v&agrave; c&oacute; bộ điều khiển &acirc;m thanh ngay tr&ecirc;n c&aacute;p.&nbsp;</p>\r\n\r\n<p>Thanh trượt bằng th&eacute;p c&oacute; thể điều chỉnh v&agrave; chụp tai mềm mại sẽ mang lại cho bạn cảm giác thoải m&aacute;i, micr&ocirc; c&oacute; thể xoay n&ecirc;n bạn mu&ocirc;́n bẻ nó theo hướng nào cũng được.&nbsp;M&agrave;ng loa 40mm định hướng của Cloud Stinger Core gi&uacute;p bạn đắm ch&igrave;m v&agrave;o tr&ograve; chơi, đồng thời được hỗ trợ bảo h&agrave;nh v&agrave; hỗ trợ kỹ thuật miễn ph&iacute; trong 2 năm.</p>\r\n\r\n<h1>&nbsp;</h1>\r\n\r\n<p>Thống số kỹ thuật:</p>\r\n\r\n<p><strong>Headphone:</strong><br />\r\nDriver: Dynamic, 40mm with neodymium magnets<br />\r\nType: Circumaural, Closed back<br />\r\nFrequency response: 20Hz&ndash;20,000Hz<br />\r\nImpedance: 16 Ohms<br />\r\nSound pressure level: 99dBSPL/mW at 1kHz<br />\r\nT.H.D.: &lt;22%<br />\r\nWeight: 215g<br />\r\nCable length and type: Headset - 1.3m<br />\r\nConnection: Headset - 3.5mm plug (4 pole)</p>\r\n\r\n<p><strong>Microphone:</strong><br />\r\nElement: Electret condenser microphone<br />\r\nPolar pattern: Noise-cancelling<br />\r\nFrequency response: 50Hz&ndash;18,000Hz<br />\r\nSensitivity: -41.5dBV (0dB=1V/Pa,1kHz)</p>\r\n\r\n<p>Phụ kiện đi k&egrave;m:</p>\r\n\r\n<ol>\r\n	<li>HyperX Cloud Stinger Core</li>\r\n	<li>Microphone and boom (attached to headset)</li>\r\n	<li>2 Year Warranty</li>\r\n	<li>Free Tech Support</li>\r\n</ol>\r\n', '', 24, 17, 39),
(30, 'Tai nghe DAREU EH722s MAGIC QUEEN', 'dareu_eh722s_magic_queen_1_2835b0e5d1a54700b994bcc10cee070e.jpg/dareu_eh722s_magic_queen_2_4c2abf1e037149e5aa5d298a2d603e4f.jpg/dareu_eh722s_magic_queen_3_b347f79a82b94071ba163f5713a58a55.jpg/', '', 890000, 34, '<h2 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-size:20pt\"><span style=\"color:#000000\"><span style=\"font-family:Verdana,Arial,Helvetica,sans-serif\">Tai nghe DAREU EH722s MAGIC QUEEN</span></span></span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15pt\">Thiết kế tổng thể của chiếc&nbsp;<a href=\"https://gearvn.com/collections/gaming-headphones\" style=\"box-sizing:border-box; color:#428bca; text-decoration:none !important; background:transparent; max-width:100%; outline:0px\"><strong>tai nghe gaming gi&aacute; rẻ</strong></a>&nbsp;EH722S&nbsp;tạo cho người xem sự li&ecirc;n tưởng đến một vi&ecirc;n pha l&ecirc; bởi họa tiết polygon chia phần củ tai ra l&agrave;m nhiều khối, được t&ocirc; điểm th&ecirc;m bằng &aacute;nh s&aacute;ng của hệ thống LED RGB b&ecirc;n trong.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><img src=\"https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-dareu-eh722s-magic-queen_220fdf77846241bb8ee213714b0d34f7.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:471px; margin:5px auto; max-width:703px; vertical-align:middle; width:419px\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15pt\">Phần gọng tai nghe l&agrave; 2 thanh th&eacute;p cực k&igrave; chắc chắn, t&aacute;ch hẳn khỏi đệm đầu. Vừa đảm bảo độ bền cho kết cấu, vừa cho n&oacute; một c&aacute;i nh&igrave;n &ldquo;sang chảnh&rdquo; hơn. Với phần gọng như thế n&agrave;y, bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m về độ bền của n&oacute;.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15pt\">Phần đệm đầu rời lu&ocirc;n &ocirc;m s&aacute;t đầu v&agrave; d&agrave;n trải đều khối lượng của chiếc tai nghe, gi&uacute;p chiếc&nbsp;<a href=\"https://gearvn.com/collections/gaming-headphones\" style=\"box-sizing:border-box; color:#428bca; text-decoration:none !important; background:transparent; max-width:100%; outline:0px\"><strong>tai nghe game thủ</strong></a>&nbsp;DAREU EH722s MAGIC QUEEN sử dụng lu&ocirc;n thoải m&aacute;i. Phần đệm tai kh&aacute; lớn đủ để &ocirc;m trọn v&agrave;nh tai người d&ugrave;ng, m&uacute;t đệm kh&ocirc;ng qu&aacute; mềm, cũng kh&ocirc;ng qu&aacute; cứng sẽ giữ cho người d&ugrave;ng lu&ocirc;n được thoải m&aacute;i.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15pt\"><em>&gt;&gt; Bạn đang quan t&acirc;m đến sản phẩm</em>&nbsp;<strong><a href=\"https://gearvn.com/collections/ban-phim-co-gaming\" style=\"box-sizing:border-box; color:#428bca; text-decoration:none !important; background:transparent; max-width:100%; outline:0px\">b&agrave;n ph&iacute;m cơ gi&aacute; rẻ</a></strong>.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><img src=\"https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-dareu-eh722s-magic-queen_e7d184d30edb4e9cb11a43f82517428e_grande.jpg\" style=\"border:0px; box-sizing:border-box; display:block; margin:5px auto; max-width:703px; vertical-align:middle\" /></span></span></span></span></p>\r\n\r\n<h3 style=\"text-align:start\"><span style=\"font-size:24px\"><span style=\"font-family:&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-size:15pt\"><span style=\"color:#000000\"><span style=\"font-family:Verdana,Arial,Helvetica,sans-serif\">Th&ocirc;ng số kỹ thuật:</span></span></span></span></span></span></span></h3>\r\n\r\n<ul style=\"margin-left:0px; margin-right:0px\">\r\n	<li><span style=\"font-size:15pt\">Tai nghe Over Ear - MULTI LED</span></li>\r\n	<li><span style=\"font-size:15pt\">Driver: &Phi;50mm * 10 mm(H)</span></li>\r\n	<li><span style=\"font-size:15pt\">Hiệu ứng: giả lập 7.1</span></li>\r\n	<li><span style=\"font-size:15pt\">Kết nối: USB</span></li>\r\n	<li><span style=\"font-size:15pt\">Đệm tai: da mềm</span></li>\r\n	<li><span style=\"font-size:15pt\">Headband: kim loại</span></li>\r\n	<li><span style=\"font-size:15pt\">Frequency Range: 20Hz-20KHz</span></li>\r\n	<li><span style=\"font-size:15pt\">D&acirc;y: 2.4m</span></li>\r\n	<li><span style=\"font-size:15pt\">Trọng lượng: 300 +/- 10g</span></li>\r\n</ul>\r\n', 'Hồng', 12, 16, 39);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_donhang` (`id_donhang`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sanpham` (`id_sanpham`),
  ADD KEY `id_khachhang` (`id_khachhang`) USING BTREE;

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `hang_sx`
--
ALTER TABLE `hang_sx`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hsx` (`id_hsx`),
  ADD KEY `id_loai` (`id_loai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `hang_sx`
--
ALTER TABLE `hang_sx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD CONSTRAINT `chitiet_donhang_ibfk_1` FOREIGN KEY (`id_donhang`) REFERENCES `don_hang` (`id`),
  ADD CONSTRAINT `chitiet_donhang_ibfk_2` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_khachhang`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`);

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `don_hang_ibfk_1` FOREIGN KEY (`ma_kh`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`id_hsx`) REFERENCES `hang_sx` (`id`),
  ADD CONSTRAINT `san_pham_ibfk_2` FOREIGN KEY (`id_loai`) REFERENCES `loai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
