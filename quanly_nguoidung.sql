-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2025 at 09:54 PM
-- Server version: 8.4.3
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanly_nguoidung`
--

-- --------------------------------------------------------

--
-- Table structure for table `bang_cap`
--

CREATE TABLE `bang_cap` (
  `id` int NOT NULL,
  `ma_bang_cap` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ten_bang_cap` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `bang_cap`
--

INSERT INTO `bang_cap` (`id`, `ma_bang_cap`, `ten_bang_cap`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(0, 'MBC1569664716', 'Không', '', 'Đào Thanh Huy', '2019-09-28 16:58:36', 'Đào Thanh Huy', '2019-09-28 16:58:36'),
(1, 'MBC1569651987', 'Bằng cử nhân', '', 'Đào Thanh Huy', '2019-09-28 13:26:27', 'Đào Thanh Huy', '2019-09-28 13:26:27'),
(2, 'MBC1569652012', 'Bằng thạc sĩ', '', 'Đào Thanh Huy', '2019-09-28 13:26:52', 'Đào Thanh Huy', '2019-09-28 13:26:52'),
(3, 'MBC1569652035', 'Bằng tiến sĩ', '', 'Đào Thanh Huy', '2019-09-28 13:27:15', 'Đào Thanh Huy', '2019-09-28 13:27:15'),
(4, 'MBC1569652169', 'Cử nhân khoa học xã hội', '', 'Đào Thanh Huy', '2019-09-28 13:29:29', 'Đào Thanh Huy', '2019-09-28 13:29:29'),
(5, 'MBC1569652180', 'Cử nhân khoa học tự nhiên', '', 'Đào Thanh Huy', '2019-09-28 13:29:40', 'Đào Thanh Huy', '2019-09-28 13:29:40'),
(8, 'MBC1569652431', 'Cử nhân quản trị kinh doanh', '', 'Đào Thanh Huy', '2019-09-28 13:33:51', 'Đào Thanh Huy', '2019-09-28 13:33:51'),
(9, 'MBC1569652436', 'Cử nhân thương mại và quản trị', '', 'Đào Thanh Huy', '2019-09-28 13:33:56', 'Đào Thanh Huy', '2019-09-28 13:33:56'),
(10, 'MBC1569652441', 'Cử nhân kế toán', '', 'Đào Thanh Huy', '2019-09-28 13:34:01', 'Đào Thanh Huy', '2019-09-28 13:34:01'),
(11, 'MBC1569652448', 'Cử nhân luật', '', 'Đào Thanh Huy', '2019-09-28 13:34:08', 'Đào Thanh Huy', '2019-09-28 13:34:08'),
(12, 'MBC1569652456', 'Cử nhân ngành quản trị và chính sách công', '', 'Đào Thanh Huy', '2019-09-28 13:34:16', 'Đào Thanh Huy', '2019-09-28 13:34:16'),
(13, 'MBC1569652463', 'Thạc sĩ khoa học xã hội', '', 'Đào Thanh Huy', '2019-09-28 13:34:23', 'Đào Thanh Huy', '2019-09-28 13:34:23'),
(14, 'MBC1569652469', 'Thạc sĩ khoa học tự nhiên', '', 'Đào Thanh Huy', '2019-09-28 13:34:29', 'Đào Thanh Huy', '2019-09-28 13:34:29'),
(15, 'MBC1569652475', 'Thạc sĩ quản trị kinh doanh', '', 'Đào Thanh Huy', '2019-09-28 13:34:35', 'Đào Thanh Huy', '2019-09-28 13:34:35'),
(16, 'MBC1569652481', 'Thạc sĩ kế toán', '', 'Đào Thanh Huy', '2019-09-28 13:34:41', 'Đào Thanh Huy', '2019-09-28 13:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_nhom`
--

CREATE TABLE `chi_tiet_nhom` (
  `id` int NOT NULL,
  `ma_nhom` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nhan_vien_id` int NOT NULL,
  `nguoi_tao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `chi_tiet_nhom`
--

INSERT INTO `chi_tiet_nhom` (`id`, `ma_nhom`, `nhan_vien_id`, `nguoi_tao`, `ngay_tao`) VALUES
(32, 'GRP1764536395', 5, 'trị viênQuản', '2025-12-01 04:00:43'),
(33, 'GRP1764536395', 2, 'trị viênQuản', '2025-12-01 04:00:51'),
(34, 'GRP1764538127', 17, 'trị viênQuản', '2025-12-01 04:29:04'),
(35, 'GRP1764538127', 5, 'trị viênQuản', '2025-12-01 04:29:07'),
(36, 'GRP1764538127', 2, 'trị viênQuản', '2025-12-01 04:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `chuc_vu`
--

CREATE TABLE `chuc_vu` (
  `id` int NOT NULL,
  `ma_chuc_vu` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ten_chuc_vu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `luong_ngay` double NOT NULL,
  `ghi_chu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `chuc_vu`
--

INSERT INTO `chuc_vu` (`id`, `ma_chuc_vu`, `ten_chuc_vu`, `luong_ngay`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(16, 'MCV1569203762', 'Phó giám đốc', 560000, '', 'Đào Thanh Huy', '2019-09-23 08:56:02', 'Đào Thanh Huy', '2019-10-01 16:33:10'),
(17, 'MCV1569203773', 'Giám đốc', 600000, '', 'Đào Thanh Huy', '2019-09-23 08:56:13', 'Đào Thanh Huy', '2019-10-02 09:59:00'),
(33, 'MCV1569204007', 'Nhân viên', 230000, '', 'Đào Thanh Huy', '2019-09-23 09:00:07', 'Đào Thanh Huy', '2019-10-01 16:20:43'),
(37, 'MCV1569985216', 'Trưởng phòng', 310000, '', 'Đào Thanh Huy', '2019-10-02 10:00:16', 'Đào Thanh Huy', '2019-10-02 10:00:16'),
(38, 'MCV1569985261', 'Phó phòng', 280000, '', 'Đào Thanh Huy', '2019-10-02 10:01:01', 'Đào Thanh Huy', '2019-10-02 10:01:01'),
(39, 'MCV1571105797', 'Marketing', 285000, '<p>Quảng b&aacute;, k&ecirc;u gọi kh&aacute;ch h&agrave;ng tham gia.</p>\r\n', 'Đào Thanh Huy', '2019-10-15 09:16:37', 'Đào Thanh Huy', '2019-10-15 09:16:37'),
(40, 'MCV1740538021', 'IT', 30000000, '<p>IT</p>\r\n', 'trị viên Quản', '2025-02-26 09:47:01', 'trị viên Quản', '2025-02-26 09:47:01'),
(41, 'MCV1740538048', 'Kế toán', 15000000, '<p>Kế to&aacute;n</p>\r\n', 'trị viên Quản', '2025-02-26 09:47:28', 'trị viên Quản', '2025-02-26 09:47:28'),
(42, 'MCV1740561205', 'CEO', 90000000, '<p>Quản l&yacute; c&ocirc;ng ty v&agrave; c&aacute;c c&ocirc;ng việc</p>\r\n', 'trị viên Quản', '2025-02-26 16:13:25', 'trị viên Quản', '2025-02-26 16:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `chuyen_mon`
--

CREATE TABLE `chuyen_mon` (
  `id` int NOT NULL,
  `ma_chuyen_mon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ten_chuyen_mon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `chuyen_mon`
--

INSERT INTO `chuyen_mon` (`id`, `ma_chuyen_mon`, `ten_chuyen_mon`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(0, 'MCM1569664640', 'Không', '', 'Đào Thanh Huy', '2019-09-28 16:57:20', 'Đào Thanh Huy', '2019-09-28 16:57:20'),
(2, 'MCM1569208526', 'Kế toán', '', 'Đào Thanh Huy', '2019-09-23 10:15:26', 'Đào Thanh Huy', '2019-09-23 10:15:26'),
(3, 'MCM1569208539', 'Công nghệ thông tin', '', 'Đào Thanh Huy', '2019-09-23 10:15:39', 'Đào Thanh Huy', '2019-09-23 10:15:39'),
(4, 'MCM1569208553', 'Quản trị nhà hàng - khách sạn', '', 'Đào Thanh Huy', '2019-09-23 10:15:53', 'Đào Thanh Huy', '2019-09-23 10:15:53'),
(5, 'MCM1569208562', 'Tiếp tân', '', 'Đào Thanh Huy', '2019-09-23 10:16:02', 'Đào Thanh Huy', '2019-09-23 10:16:02'),
(6, 'MCM1569208577', 'Sale', '', 'Đào Thanh Huy', '2019-09-23 10:16:17', 'Đào Thanh Huy', '2019-09-23 10:16:17'),
(7, 'MCM1569208618', 'Hành chính văn phòng', '', 'Đào Thanh Huy', '2019-09-23 10:16:58', 'Đào Thanh Huy', '2019-09-23 10:16:58'),
(8, 'MCM1569208631', 'Quản lý chất lượng', '', 'Đào Thanh Huy', '2019-09-23 10:17:11', 'Đào Thanh Huy', '2019-09-23 10:17:11'),
(9, 'MCM1569208648', 'Thương mại điện tử', '', 'Đào Thanh Huy', '2019-09-23 10:17:28', 'Đào Thanh Huy', '2019-09-23 10:17:28'),
(10, 'MCM1569208673', 'Tài chính', '', 'Đào Thanh Huy', '2019-09-23 10:17:53', 'Đào Thanh Huy', '2019-09-23 10:17:53'),
(11, 'MCM1569208680', 'Quản lý', '', 'Đào Thanh Huy', '2019-09-23 10:18:00', 'Đào Thanh Huy', '2019-09-23 10:18:00'),
(12, 'MCM1569208698', 'Maketing', '', 'Đào Thanh Huy', '2019-09-23 10:18:18', 'Đào Thanh Huy', '2019-09-28 13:05:19'),
(13, 'MCM1569208705', 'Khởi nghiệp', '', 'Đào Thanh Huy', '2019-09-23 10:18:25', 'Đào Thanh Huy', '2019-09-23 10:18:25'),
(14, 'MCM1569208731', 'Quản lý nguồn nhân lực', '', 'Đào Thanh Huy', '2019-09-23 10:18:51', 'Đào Thanh Huy', '2019-09-23 10:18:51'),
(15, 'MCM1569208740', 'Kinh doanh', '', 'Đào Thanh Huy', '2019-09-23 10:19:00', 'Đào Thanh Huy', '2019-09-23 10:19:00'),
(16, 'MCM1569208758', 'Vận tải và hậu cần', '', 'Đào Thanh Huy', '2019-09-23 10:19:18', 'Đào Thanh Huy', '2019-09-23 10:19:18'),
(17, 'MCM1569208771', 'Kinh doanh', '', 'Đào Thanh Huy', '2019-09-23 10:19:31', 'Đào Thanh Huy', '2019-09-23 10:19:31'),
(18, 'MCM1569208782', 'Bán lẻ', '', 'Đào Thanh Huy', '2019-09-23 10:19:42', 'Đào Thanh Huy', '2019-09-23 10:19:42'),
(22, 'MCM1722589031', 'Đua xe', '<p>Đua xe</p>\r\n', 'Account Admin', '2024-08-02 15:57:11', 'Account Admin', '2024-08-02 15:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `cong_viec`
--

CREATE TABLE `cong_viec` (
  `id` int NOT NULL,
  `ma_cong_viec` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nhanvien_id` int NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL,
  `ten_cong_viec` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `muc_dich` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `bao_cao` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nguoi_tao` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Quản trị viên	',
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Quản trị viên',
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cong_viec`
--

INSERT INTO `cong_viec` (`id`, `ma_cong_viec`, `nhanvien_id`, `ngay_bat_dau`, `ngay_ket_thuc`, `ten_cong_viec`, `muc_dich`, `bao_cao`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(15, 'MCV1764536272', 2, '2025-12-01', '2025-12-12', 'quảng cáo', '', '', 'trị viên Quản', '2025-12-01 03:57:52', 'trị viên Quản', '2025-12-01 03:57:52'),
(16, 'MCV1764536846', 5, '2025-12-01', '2026-01-11', 'phát triển wed', '', '1764539576_OIP (4).jpeg', 'trị viên Quản', '2025-12-01 04:07:27', 'viên Nhân', '2025-12-01 04:52:56'),
(17, 'MCV1764536967', 18, '2025-10-30', '2025-11-29', 'nghiên cứu phương pháp mới', 'cố gắp tiếp cận nhiều kiểu khách hàng', '', 'trị viên Quản', '2025-12-01 04:09:27', 'trị viên Quản', '2025-12-01 04:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `dan_toc`
--

CREATE TABLE `dan_toc` (
  `id` int NOT NULL,
  `ten_dan_toc` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `dan_toc`
--

INSERT INTO `dan_toc` (`id`, `ten_dan_toc`) VALUES
(1, 'Kinh'),
(2, 'Khơ-me'),
(3, 'Mường'),
(4, 'Thổ'),
(5, 'H\'Mông'),
(6, 'Ê-đê'),
(7, 'Bố Y'),
(8, 'Lào'),
(9, 'Tày'),
(10, 'Thái'),
(11, 'Nùng'),
(12, 'Khơ-mú'),
(13, 'M\'Nông'),
(14, 'Xơ Đăng'),
(15, 'Chăm'),
(16, 'Gia Rai'),
(17, 'Hoa'),
(18, 'Lô Lô'),
(19, 'Phù Lá');

-- --------------------------------------------------------

--
-- Table structure for table `loai_nv`
--

CREATE TABLE `loai_nv` (
  `id` int NOT NULL,
  `ma_loai_nv` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ten_loai_nv` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `loai_nv`
--

INSERT INTO `loai_nv` (`id`, `ma_loai_nv`, `ten_loai_nv`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(2, 'LNV1569654834', 'Nhân viên chính thức', '', 'Đào Thanh Huy', '2019-09-28 14:13:54', 'Đào Thanh Huy', '2019-09-28 14:13:54'),
(3, 'LNV1569654844', 'Nhân viên thực tập', '', 'Đào Thanh Huy', '2019-09-28 14:14:04', 'Đào Thanh Huy', '2019-09-28 14:14:04'),
(4, 'LNV1569654850', 'Nhân viên thời vụ', '', 'Đào Thanh Huy', '2019-09-28 14:14:10', 'Đào Thanh Huy', '2019-09-28 14:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int NOT NULL,
  `ma_nv` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ten_nv` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `biet_danh` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `noi_sinh` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `hon_nhan_id` int NOT NULL,
  `so_cmnd` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `noi_cap_cmnd` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_cap_cmnd` date NOT NULL,
  `nguyen_quan` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quoc_tich_id` int NOT NULL,
  `ton_giao_id` int NOT NULL,
  `dan_toc_id` int NOT NULL,
  `ho_khau` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tam_tru` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `loai_nv_id` int NOT NULL,
  `trinh_do_id` int NOT NULL,
  `chuyen_mon_id` int NOT NULL,
  `bang_cap_id` int NOT NULL,
  `phong_ban_id` int NOT NULL,
  `chuc_vu_id` int NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `nguoi_tao_id` int NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua_id` int NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `ma_nv`, `hinh_anh`, `ten_nv`, `biet_danh`, `gioi_tinh`, `ngay_sinh`, `noi_sinh`, `hon_nhan_id`, `so_cmnd`, `noi_cap_cmnd`, `ngay_cap_cmnd`, `nguyen_quan`, `quoc_tich_id`, `ton_giao_id`, `dan_toc_id`, `ho_khau`, `tam_tru`, `loai_nv_id`, `trinh_do_id`, `chuyen_mon_id`, `bang_cap_id`, `phong_ban_id`, `chuc_vu_id`, `trang_thai`, `nguoi_tao_id`, `ngay_tao`, `nguoi_sua_id`, `ngay_sua`) VALUES
(2, 'MNV1569830976', '1569907877.jpg', 'Nguyễn Duy Sơn', 'Sơn Núi Đá', 1, '1994-12-19', 'Long Xuyên', 2, '371807766', 'Long Xuyên', '2016-09-30', 'Long Xuyên', 24, 0, 1, 'Long Xuyên', 'Rạch Giá - Kiên Giang', 2, 18, 2, 2, 22, 33, 0, 4, '2019-09-30 15:09:36', 1, '2020-09-07 16:44:44'),
(5, 'MNV1569834099', '1569907854.png', 'Trần Thị Bích Nhi', 'Nhi Kute', 0, '1997-02-12', 'Châu Thành - Kiên Giang', 1, '378623143', 'Kiên Giang', '2004-09-12', 'Châu Thành - Kiên Giang', 24, 1, 1, 'Châu Thành - Kiên Giang', 'Châu Thành - Kiên Giang', 4, 17, 5, 1, 21, 33, 1, 4, '2019-09-30 16:01:39', 4, '2019-10-02 10:02:07'),
(8, 'MNV1569835233', '1569835233.jpg', 'Trần Mai Phương', 'Phương Kòi', 0, '2000-12-09', 'Thốt Nốt - Cần Thơ', 2, '3718087777', 'Cà Mau', '2024-09-30', 'Cà Mau', 24, 0, 1, 'Cà Mau', 'Cà Mau', 3, 17, 5, 1, 20, 38, 1, 4, '2019-09-30 16:20:33', 1, '2025-02-26 16:17:20'),
(17, 'MNV1764535548', '1764535548.jpg', 'Nguyễn Thu Hằng', '', 0, '2000-05-31', '', 1, '5185864875', 'Cục trưởng cục cảnh sát', '2020-08-04', '', 24, 0, 1, 'Nha Trang, Khánh Hòa', '', 2, 18, 0, 10, 22, 37, 1, 15, '2025-12-01 03:45:48', 15, '2025-12-01 03:45:48'),
(18, 'MNV1764535831', 'demo-3x4.jpg', 'Văn Bá Thái', '', 1, '2025-12-01', '', 3, '248657893', 'Cục trưởng cục cảnh sát', '2025-12-01', '', 24, 0, 1, 'Đắk Lắk', '', 2, 18, 0, 8, 25, 16, 1, 15, '2025-12-01 03:50:31', 15, '2025-12-01 03:50:31'),
(19, 'MNV1764536044', '1764536157.jpeg', 'Nam Văn Tráng', '', 1, '2025-12-01', '', 2, '7968524963', 'Cục trưởng cục cảnh sát', '2025-12-01', '', 19, 0, 16, 'Hà Nội', '', 2, 18, 0, 0, 23, 33, 1, 15, '2025-12-01 03:54:04', 15, '2025-12-01 03:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `nhom`
--

CREATE TABLE `nhom` (
  `id` int NOT NULL,
  `ma_nhom` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ten_nhom` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mo_ta` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nguoi_tao` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `nhom`
--

INSERT INTO `nhom` (`id`, `ma_nhom`, `ten_nhom`, `mo_ta`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(10, 'GRP1764536395', 'Nhóm quản lý dự án', '', 'trị viên Quản', '2025-12-01 04:00:08', 'trị viên Quản', '2025-12-01 04:00:08'),
(12, 'GRP1764538127', 'Nhóm tổ chức sự kiện', '', 'trị viên Quản', '2025-12-01 04:28:52', 'trị viên Quản', '2025-12-01 04:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `phong_ban`
--

CREATE TABLE `phong_ban` (
  `id` int NOT NULL,
  `ma_phong_ban` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ten_phong_ban` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ngay_sua` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `phong_ban`
--

INSERT INTO `phong_ban` (`id`, `ma_phong_ban`, `ten_phong_ban`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(20, 'MBP1569204111', 'Phòng hành chính nhân sự', '', 'ĐàoThanh Huy', '2019-09-23 09:01:51', 'Đào Thanh Huy', '2019-09-23 09:03:00'),
(21, 'MBP1569204120', 'Phòng IT', '', 'ĐàoThanh Huy', '2019-09-23 09:02:00', 'ĐàoThanh Huy', '2019-09-23 09:02:00'),
(22, 'MBP1569204129', 'Phòng tài chính - kế toán', '', 'ĐàoThanh Huy', '2019-09-23 09:02:09', 'Đào Thanh Huy', '2019-09-23 09:03:56'),
(23, 'MBP1569204142', 'Phòng pháp chế', '', 'ĐàoThanh Huy', '2019-09-23 09:02:22', 'ĐàoThanh Huy', '2019-09-23 09:02:22'),
(24, 'MBP1569204214', 'Phòng marketing', '', 'ĐàoThanh Huy', '2019-09-23 09:03:34', 'ĐàoThanh Huy', '2019-09-23 09:03:34'),
(25, 'MBP1569204303', 'Phòng kế hoạch - kinh doanh', '', 'ĐàoThanh Huy', '2019-09-23 09:05:03', 'ĐàoThanh Huy', '2019-09-23 09:05:03'),
(31, 'MBP1764538499', 'Phòng kế hoạch - kinh doanh	', '', 'trị viênQuản', '2025-12-01 04:34:59', 'trị viênQuản', '2025-12-01 04:34:59'),
(32, 'MBP1764538512', 'Phòng marketing	', '', 'trị viênQuản', '2025-12-01 04:35:12', 'trị viênQuản', '2025-12-01 04:35:12'),
(33, 'MBP1764538519', 'Phòng pháp chế	', '', 'trị viênQuản', '2025-12-01 04:35:19', 'trị viênQuản', '2025-12-01 04:35:19'),
(34, 'MBP1764538533', 'Phòng tài chính - kế toán	', '', 'trị viênQuản', '2025-12-01 04:35:33', 'trị viênQuản', '2025-12-01 04:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `quoc_tich`
--

CREATE TABLE `quoc_tich` (
  `id` int NOT NULL,
  `ten_quoc_tich` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `quoc_tich`
--

INSERT INTO `quoc_tich` (`id`, `ten_quoc_tich`) VALUES
(1, 'Danish'),
(2, 'Đan Mạch'),
(3, 'British / English'),
(4, 'Anh'),
(5, 'Estonian'),
(6, 'Estonia'),
(7, 'Finnish'),
(8, 'Phần Lan'),
(9, 'Icelandic'),
(10, 'Irish'),
(11, 'Ireland'),
(12, 'Latvian'),
(13, 'Latvia'),
(14, 'Lithuanian'),
(15, 'Norwegian'),
(16, 'Na Uy'),
(17, 'Canada'),
(18, 'Scotland'),
(19, 'Thụy Điển'),
(20, 'Tây Ban Nha'),
(21, 'Séc'),
(22, 'Ba Lan'),
(23, 'Mỹ'),
(24, 'Việt Nam'),
(25, 'Ấn Độ'),
(26, 'Trung Quốc'),
(27, 'Mông Cổ'),
(28, 'Triều Tiên'),
(29, 'Đài Loan'),
(30, 'Campuchia'),
(31, 'Indonesia'),
(32, 'Lào'),
(33, 'Philipin'),
(34, 'Thái Lan');

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int NOT NULL,
  `ho` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ten` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `hinh_anh` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mat_khau` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `so_dt` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quyen` tinyint(1) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `truy_cap` int NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `ho`, `ten`, `hinh_anh`, `email`, `mat_khau`, `so_dt`, `quyen`, `trang_thai`, `truy_cap`, `ngay_tao`, `ngay_sua`) VALUES
(15, 'trị viên', 'Quản', 'admin.png', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', '0855 805 761', 1, 1, 7, '2025-12-01 03:26:37', '2025-12-01 03:26:37'),
(16, 'viên', 'Nhân', 'admin.png', 'nv@gmail.com', 'e63ab2a1ef0edd3798467ebdc573c97b', '0866083713', 0, 1, 7, '2025-12-01 04:14:29', '2025-12-01 04:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `tinh_trang_hon_nhan`
--

CREATE TABLE `tinh_trang_hon_nhan` (
  `id` int NOT NULL,
  `ten_tinh_trang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tinh_trang_hon_nhan`
--

INSERT INTO `tinh_trang_hon_nhan` (`id`, `ten_tinh_trang`) VALUES
(1, 'Độc thân'),
(2, 'Đính hôn'),
(3, 'Có gia đình'),
(4, 'Ly thân'),
(5, 'Ly hôn');

-- --------------------------------------------------------

--
-- Table structure for table `ton_giao`
--

CREATE TABLE `ton_giao` (
  `id` int NOT NULL,
  `ten_ton_giao` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `ton_giao`
--

INSERT INTO `ton_giao` (`id`, `ten_ton_giao`) VALUES
(0, 'Không'),
(1, 'Phật giáo'),
(2, 'Thiên chúa giáo'),
(3, 'Đạo tin lành'),
(4, 'Hồi giáo'),
(5, 'Do Thái giáo');

-- --------------------------------------------------------

--
-- Table structure for table `trinh_do`
--

CREATE TABLE `trinh_do` (
  `id` int NOT NULL,
  `ma_trinh_do` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ten_trinh_do` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `trinh_do`
--

INSERT INTO `trinh_do` (`id`, `ma_trinh_do`, `ten_trinh_do`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(1, 'MTD1569206480', '1/12', '<p>Tr&igrave;nh độ lớp 1/12</p>\r\n', 'Thái Mỹ Tiên', '2019-09-23 09:41:20', 'Thái Mỹ Tiên', '2019-09-23 09:41:20'),
(2, 'MTD1569206546', '2/12', '<p>Tr&igrave;nh độ lớp 2/12</p>\r\n', 'Thái Mỹ Tiên', '2019-09-23 09:42:26', 'Thái Mỹ Tiên', '2019-09-23 09:42:26'),
(3, 'MTD1569206555', '3/12', '<p>Tr&igrave;nh độ lớp 3/12</p>\r\n', 'Thái Mỹ Tiên', '2019-09-23 09:42:35', 'Thái Mỹ Tiên', '2019-09-23 09:42:35'),
(4, 'MTD1569206570', '4/12', '<p>Tr&igrave;nh độ lớp 4/12</p>\r\n', 'Thái Mỹ Tiên', '2019-09-23 09:42:50', 'Thái Mỹ Tiên', '2019-09-23 09:42:50'),
(5, 'MTD1569206579', '5/12', '<p>Tr&igrave;nh độ lớp 5/12</p>\r\n', 'Thái Mỹ Tiên', '2019-09-23 09:42:59', 'Thái Mỹ Tiên', '2019-09-23 09:42:59'),
(6, 'MTD1569206590', '6/12', '<p>Tr&igrave;nh độ lớp 6/12</p>\r\n', 'Thái Mỹ Tiên', '2019-09-23 09:43:10', 'Thái Mỹ Tiên', '2019-09-23 09:43:10'),
(7, 'MTD1569206604', '7/12', '<p>Tr&igrave;nh độ lớp 7/12</p>\r\n', 'Thái Mỹ Tiên', '2019-09-23 09:43:24', 'Thái Mỹ Tiên', '2019-09-23 09:57:09'),
(8, 'MTD1569206616', '8/12', '<p>Tr&igrave;nh độ lớp 8/12</p>\r\n', 'Thái Mỹ Tiên', '2019-09-23 09:43:36', 'Thái Mỹ Tiên', '2019-09-23 09:43:36'),
(9, 'MTD1569206628', '9/12', '<p>Tr&igrave;nh độ lớp 9/12</p>\r\n', 'Thái Mỹ Tiên', '2019-09-23 09:43:48', 'Thái Mỹ Tiên', '2019-09-23 09:43:48'),
(10, 'MTD1569206638', '10/12', '<p>Tr&igrave;nh độ lớp 10/12</p>\r\n', 'Thái Mỹ Tiên', '2019-09-23 09:43:58', 'Thái Mỹ Tiên', '2019-09-23 09:43:58'),
(11, 'MTD1569206649', '11/12', '<p>Tr&igrave;nh độ lớp 11/12</p>\r\n', 'Thái Mỹ Tiên', '2019-09-23 09:44:09', 'Thái Mỹ Tiên', '2019-09-23 09:56:56'),
(12, 'MTD1569206662', '12/12', '<p>Tr&igrave;nh độ lớp 12/12</p>\r\n', 'Thái Mỹ Tiên', '2019-09-23 09:44:22', 'Đào Thanh Huy', '2019-09-23 10:51:16'),
(15, 'MTD1569651298', 'Trung cấp', '', 'Đào Thanh Huy', '2019-09-28 13:14:58', 'Đào Thanh Huy', '2019-09-28 13:14:58'),
(16, 'MTD1569651304', 'Cao đẳng', '', 'Đào Thanh Huy', '2019-09-28 13:15:04', 'Đào Thanh Huy', '2019-09-28 13:15:04'),
(17, 'MTD1569651310', 'Đại học', '', 'Đào Thanh Huy', '2019-09-28 13:15:10', 'Đào Thanh Huy', '2019-09-28 13:15:10'),
(18, 'MTD1569651317', 'Cao học', '', 'Đào Thanh Huy', '2019-09-28 13:15:17', 'Đào Thanh Huy', '2019-09-28 13:15:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bang_cap`
--
ALTER TABLE `bang_cap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chi_tiet_nhom`
--
ALTER TABLE `chi_tiet_nhom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chuc_vu`
--
ALTER TABLE `chuc_vu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chuyen_mon`
--
ALTER TABLE `chuyen_mon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cong_viec`
--
ALTER TABLE `cong_viec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`);

--
-- Indexes for table `dan_toc`
--
ALTER TABLE `dan_toc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_nv`
--
ALTER TABLE `loai_nv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quoc_tich_id` (`quoc_tich_id`),
  ADD KEY `ton_giao_id` (`ton_giao_id`),
  ADD KEY `dan_toc_id` (`dan_toc_id`),
  ADD KEY `loai_nv_id` (`loai_nv_id`),
  ADD KEY `chuyen_mon_id` (`chuyen_mon_id`),
  ADD KEY `trinh_do_id` (`trinh_do_id`),
  ADD KEY `bang_cap_id` (`bang_cap_id`),
  ADD KEY `phong_ban_id` (`phong_ban_id`),
  ADD KEY `chuc_vu_id` (`chuc_vu_id`),
  ADD KEY `nguoi_tao_id` (`nguoi_tao_id`),
  ADD KEY `nguoi_sua_id` (`nguoi_sua_id`);

--
-- Indexes for table `nhom`
--
ALTER TABLE `nhom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phong_ban`
--
ALTER TABLE `phong_ban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quoc_tich`
--
ALTER TABLE `quoc_tich`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tinh_trang_hon_nhan`
--
ALTER TABLE `tinh_trang_hon_nhan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ton_giao`
--
ALTER TABLE `ton_giao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trinh_do`
--
ALTER TABLE `trinh_do`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bang_cap`
--
ALTER TABLE `bang_cap`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `chi_tiet_nhom`
--
ALTER TABLE `chi_tiet_nhom`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `chuc_vu`
--
ALTER TABLE `chuc_vu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `chuyen_mon`
--
ALTER TABLE `chuyen_mon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cong_viec`
--
ALTER TABLE `cong_viec`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dan_toc`
--
ALTER TABLE `dan_toc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `loai_nv`
--
ALTER TABLE `loai_nv`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nhom`
--
ALTER TABLE `nhom`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `phong_ban`
--
ALTER TABLE `phong_ban`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `quoc_tich`
--
ALTER TABLE `quoc_tich`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tinh_trang_hon_nhan`
--
ALTER TABLE `tinh_trang_hon_nhan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ton_giao`
--
ALTER TABLE `ton_giao`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trinh_do`
--
ALTER TABLE `trinh_do`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cong_viec`
--
ALTER TABLE `cong_viec`
  ADD CONSTRAINT `cong_viec_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`quoc_tich_id`) REFERENCES `quoc_tich` (`id`),
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`ton_giao_id`) REFERENCES `ton_giao` (`id`),
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`dan_toc_id`) REFERENCES `dan_toc` (`id`),
  ADD CONSTRAINT `nhanvien_ibfk_4` FOREIGN KEY (`loai_nv_id`) REFERENCES `loai_nv` (`id`),
  ADD CONSTRAINT `nhanvien_ibfk_5` FOREIGN KEY (`trinh_do_id`) REFERENCES `trinh_do` (`id`),
  ADD CONSTRAINT `nhanvien_ibfk_6` FOREIGN KEY (`chuyen_mon_id`) REFERENCES `chuyen_mon` (`id`),
  ADD CONSTRAINT `nhanvien_ibfk_7` FOREIGN KEY (`bang_cap_id`) REFERENCES `bang_cap` (`id`),
  ADD CONSTRAINT `nhanvien_ibfk_8` FOREIGN KEY (`phong_ban_id`) REFERENCES `phong_ban` (`id`),
  ADD CONSTRAINT `nhanvien_ibfk_9` FOREIGN KEY (`chuc_vu_id`) REFERENCES `chuc_vu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
