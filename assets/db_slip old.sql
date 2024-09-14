-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 11:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_slip`
--

-- --------------------------------------------------------

--
-- Table structure for table `log_s`
--

CREATE TABLE `log_s` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `aksi` text NOT NULL,
  `aktor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log_s`
--

INSERT INTO `log_s` (`id`, `tanggal`, `aksi`, `aktor`) VALUES
(1, '14 Sep 2024 | 08:54', 'Logout dari sistem informasi', 'doni'),
(2, '14 Sep 2024 | 08:54', 'Login kedalam sistem informasi', 'doni'),
(3, '14 Sep 2024 | 13:59', 'Mengirim Semua Slip Gaji ke email karyawan', 'doni'),
(4, '14 Sep 2024 | 14:03', 'Pengiriman Slip Working Days ke ini nama, NIK : ini nik', 'doni'),
(5, '14 Sep 2024 | 14:03', 'Pengiriman Slip Working Days ke ini nama2, NIK : ini nik2', 'doni'),
(6, '14 Sep 2024 | 14:04', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(7, '14 Sep 2024 | 14:05', 'Pengiriman Slip Gaji ke ini nama2, NIK : ini nik2', 'doni'),
(8, '14 Sep 2024 | 14:30', 'Pengiriman Slip Gaji ke ini nama2, NIK : ini nik2', 'doni'),
(9, '14 Sep 2024 | 14:35', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(10, '14 Sep 2024 | 14:46', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(11, '14 Sep 2024 | 14:47', 'Pengiriman Slip Gaji ke ini nama2, NIK : ini nik2', 'doni'),
(12, '14 Sep 2024 | 14:53', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(13, '14 Sep 2024 | 14:55', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(14, '14 Sep 2024 | 14:59', 'Pengiriman Slip Gaji ke ini nama2, NIK : ini nik2', 'doni'),
(15, '14 Sep 2024 | 15:01', 'Pengiriman Slip Gaji ke ini nama2, NIK : ini nik2', 'doni'),
(16, '14 Sep 2024 | 15:02', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(17, '14 Sep 2024 | 15:03', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(18, '14 Sep 2024 | 15:07', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(19, '14 Sep 2024 | 15:09', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(20, '14 Sep 2024 | 15:11', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(21, '14 Sep 2024 | 15:15', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(22, '14 Sep 2024 | 15:17', 'Pengiriman Slip Gaji ke ini nama2, NIK : ini nik2', 'doni'),
(23, '14 Sep 2024 | 15:23', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(24, '14 Sep 2024 | 15:24', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(25, '14 Sep 2024 | 15:25', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(26, '14 Sep 2024 | 15:28', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(27, '14 Sep 2024 | 15:28', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(28, '14 Sep 2024 | 15:29', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(29, '14 Sep 2024 | 15:30', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(30, '14 Sep 2024 | 15:32', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(31, '14 Sep 2024 | 15:35', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(32, '14 Sep 2024 | 15:37', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(33, '14 Sep 2024 | 15:38', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(34, '14 Sep 2024 | 15:39', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(35, '14 Sep 2024 | 15:42', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(36, '14 Sep 2024 | 15:44', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(37, '14 Sep 2024 | 15:46', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(38, '14 Sep 2024 | 15:52', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(39, '14 Sep 2024 | 15:57', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(40, '14 Sep 2024 | 15:58', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(41, '14 Sep 2024 | 16:00', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(42, '14 Sep 2024 | 16:04', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(43, '14 Sep 2024 | 16:06', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(44, '14 Sep 2024 | 16:08', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(45, '14 Sep 2024 | 16:09', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(46, '14 Sep 2024 | 16:10', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(47, '14 Sep 2024 | 16:11', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(48, '14 Sep 2024 | 16:12', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(49, '14 Sep 2024 | 16:13', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(50, '14 Sep 2024 | 16:14', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(51, '14 Sep 2024 | 16:15', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(52, '14 Sep 2024 | 16:16', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(53, '14 Sep 2024 | 16:17', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(54, '14 Sep 2024 | 16:17', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(55, '14 Sep 2024 | 16:18', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(56, '14 Sep 2024 | 16:19', 'Pengiriman Slip Gaji ke ini nama, NIK : ini nik', 'doni'),
(57, '14 Sep 2024 | 16:22', 'Pengiriman Slip Gaji ke Doni Wicaksono, NIK : 1675', 'doni'),
(58, '14 Sep 2024 | 16:24', 'Pengiriman Slip Gaji ke Doni Wicaksono, NIK : 1675', 'doni'),
(59, '14 Sep 2024 | 16:25', 'Pengiriman Slip Gaji ke Doni Wicaksono, NIK : 1675', 'doni'),
(60, '14 Sep 2024 | 16:28', 'Pengiriman Slip Gaji ke Doni Wicaksono, NIK : 1675', 'doni'),
(61, '14 Sep 2024 | 16:35', 'Pengiriman Slip Gaji ke Doni Wicaksono, NIK : 1675', 'doni'),
(62, '14 Sep 2024 | 16:41', 'Pengiriman Slip Gaji ke Doni Wicaksono, NIK : 1675', 'doni'),
(63, '14 Sep 2024 | 16:43', 'Pengiriman Slip Gaji ke Doni Wicaksono, NIK : 1675', 'doni');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nik` text NOT NULL,
  `dept` text NOT NULL,
  `status` text NOT NULL,
  `gaji_pokok` int(11) NOT NULL,
  `gaji_tidak_full` int(11) NOT NULL,
  `uang_phl` int(11) NOT NULL,
  `tunjangan` int(11) NOT NULL,
  `sisa_cuti` int(11) NOT NULL,
  `lembur` int(11) NOT NULL,
  `koreksi_positif` int(11) NOT NULL,
  `jumlah_pendapatan` int(11) NOT NULL,
  `bpjs_tk` int(11) NOT NULL,
  `bpjs_kes` int(11) NOT NULL,
  `pph21` int(11) NOT NULL,
  `absensi` int(11) NOT NULL,
  `koreksi_negatif` int(11) NOT NULL,
  `jumlah_potongan` int(11) NOT NULL,
  `take_home_pay` int(11) NOT NULL,
  `email` text NOT NULL,
  `total_hari_kerja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `nama`, `nik`, `dept`, `status`, `gaji_pokok`, `gaji_tidak_full`, `uang_phl`, `tunjangan`, `sisa_cuti`, `lembur`, `koreksi_positif`, `jumlah_pendapatan`, `bpjs_tk`, `bpjs_kes`, `pph21`, `absensi`, `koreksi_negatif`, `jumlah_potongan`, `take_home_pay`, `email`, `total_hari_kerja`) VALUES
(1, 'Doni Wicaksono', '1675', 'IT & ERP STAFF', 'PMNT', 18000000, 0, 0, 100000, 0, 2500000, 0, 21600000, 100000, 100000, 100000, 100000, 0, 400000, 21200000, 'indahanisyah9@gmail.com', 22);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `role` enum('admin','keuangan','marketing','pendidikan','sarpras','sdm','sekretariat','yayasan','akunting') NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `foto` text NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `no_telp`, `role`, `password`, `created_at`, `foto`, `is_active`) VALUES
(14, 'doni', 'doni', '', '-', 'admin', '$2y$10$TLWyJK2HZOvzuf6DFTqXce4Gim6MgwGpjCsd61QDUHsauXm8a87Sq', 1686095893, 'user.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `workingdays`
--

CREATE TABLE `workingdays` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nik` text NOT NULL,
  `dept` text NOT NULL,
  `section` text NOT NULL,
  `ijin` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `cuti` int(11) NOT NULL,
  `alpha` int(11) NOT NULL,
  `total_hari_kerja` int(11) NOT NULL,
  `total_hari_phl` int(11) NOT NULL,
  `jam1pertama` int(11) NOT NULL,
  `jam2lebih` int(11) NOT NULL,
  `hari_libur2x` int(11) NOT NULL,
  `harilibur8` int(11) NOT NULL,
  `total_overtime` int(11) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workingdays`
--

INSERT INTO `workingdays` (`id`, `nama`, `nik`, `dept`, `section`, `ijin`, `sakit`, `cuti`, `alpha`, `total_hari_kerja`, `total_hari_phl`, `jam1pertama`, `jam2lebih`, `hari_libur2x`, `harilibur8`, `total_overtime`, `email`) VALUES
(1, 'ini nama', 'ini nik', 'ini dept', 'ini section', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 'donydonny4@gmail.com'),
(2, 'ini nama2', 'ini nik2', 'ini dept2', 'ini section2', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 'emaildoniw@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log_s`
--
ALTER TABLE `log_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `workingdays`
--
ALTER TABLE `workingdays`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_s`
--
ALTER TABLE `log_s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `workingdays`
--
ALTER TABLE `workingdays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
