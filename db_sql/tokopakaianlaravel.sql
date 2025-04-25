-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2025 at 11:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokopakaianlaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `created_at`, `updated_at`) VALUES
(20, 'Pria', '2024-10-02 02:49:32', '2025-03-25 08:57:55'),
(21, 'Wanita', '2024-10-02 08:17:18', '2025-03-25 08:58:01'),
(22, 'Anak-anak', '2025-01-24 07:02:58', '2025-03-25 08:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `idpembayaran` int(11) NOT NULL,
  `idpembelian` int(11) NOT NULL,
  `nama` text NOT NULL,
  `tanggaltransfer` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`idpembayaran`, `idpembelian`, `nama`, `tanggaltransfer`, `tanggal`, `bukti`) VALUES
(22, 39, 'Fahrul Adib', '2025-03-25', '2025-03-25 00:00:00', '20250325171120logo-pakaian.webp'),
(23, 39, 'Fahrul Adib', '2025-03-25', '2025-03-25 00:00:00', '20250325171121logo-pakaian.webp');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `idpembelian` int(11) NOT NULL,
  `notransaksi` text NOT NULL,
  `id` int(11) NOT NULL,
  `tanggalbeli` date NOT NULL,
  `totalbeli` text NOT NULL,
  `alamat` text NOT NULL,
  `statusbeli` text NOT NULL,
  `waktu` datetime NOT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `kec` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(100) DEFAULT NULL,
  `nama` varchar(250) NOT NULL,
  `email` varchar(500) NOT NULL,
  `telepon` varchar(250) NOT NULL,
  `metodepembayaran` varchar(250) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`idpembelian`, `notransaksi`, `id`, `tanggalbeli`, `totalbeli`, `alamat`, `statusbeli`, `waktu`, `provinsi`, `kota`, `kec`, `kode_pos`, `nama`, `email`, `telepon`, `metodepembayaran`, `catatan`) VALUES
(19, '#TP20241002100048', 1, '2024-10-02', '20000', 'Jl. Prapanca Raya No. 9', 'Sudah Upload Bukti Pembayaran', '2024-10-02 10:00:48', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Transfer', ''),
(20, '#TP20241002100819', 1, '2024-10-02', '20000', 'Jl. Prapanca Raya No. 9', 'Pesanan Di Terima', '2024-10-02 10:08:19', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Cod', ''),
(22, '#TP20241002105622', 1, '2024-10-02', '40000', 'Jl. Prapanca Raya No. 9', 'Sudah Upload Bukti Pembayaran', '2024-10-02 10:56:22', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Transfer', ''),
(23, '#TP20241002032940', 1, '2024-10-02', '20000', 'Jl. Prapanca Raya No. 9', 'Pesanan Di Terima', '2024-10-02 15:29:40', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Transfer', ''),
(24, '#TP20241002033159', 1, '2024-10-02', '50000', 'Jl. Prapanca Raya No. 9', 'Sudah Upload Bukti Pembayaran', '2024-10-02 15:31:59', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Transfer', ''),
(25, '#TP20241002040058', 1, '2024-10-02', '70000', 'Jl. Prapanca Raya No. 9', 'Pesanan Di Terima', '2024-10-02 16:00:58', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Transfer', ''),
(26, '#TP20241017101450', 3, '2024-10-17', '50000', 'Banyuasin', 'Pesanan Di Terima', '2024-10-17 10:14:50', 'a', 'b', 'c', 'd', 'Sudendev', 'sudendev@gmail.com', '082673927483', 'Cod', 'Pesanan telah diterima'),
(27, '#TP20241024085144', 1, '2024-10-24', '50000', 'Jl. Prapanca Raya No. 9', 'Pesanan Di Terima', '2024-10-24 08:51:44', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Transfer', 'done'),
(28, '#TP20241024053223', 1, '2024-10-24', '20000', 'Jl. Prapanca Raya No. 9', 'Pesanan Sedang Dikirim', '2024-10-24 17:32:23', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Transfer', 'dikirim'),
(29, '#TP20241024053641', 1, '2024-10-24', '50000', 'Jl. Prapanca Raya No. 9', 'Pesanan Di Terima', '2024-10-24 17:36:41', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Transfer', 'dah nyampe di pembeli'),
(30, '#TP20250124021306', 8, '2025-01-24', '50000', 'Jl. Palembang', 'Pesanan Sedang Dikirim', '2025-01-24 14:13:06', 'Sumatera Selatan', 'Palembang', 'Kalidoni', '30118', 'Sugeng', 'sugeng@gmail.com', '0850291521', 'Transfer', '-'),
(31, '#TP20250124021917', 9, '2025-01-24', '400000', 'Jl. Palembang', 'Pesanan Di Terima', '2025-01-24 14:19:17', 'Sumatera Selatan', 'Palembang', 'Kalidoni', '30118', 'Husen', 'husen@gmail.com', '08529159021', 'Transfer', 'Ditunggu ya kk, udah dikirim'),
(32, '#TP20250124022811', 10, '2025-01-24', '400000', 'Jl. Palembang', 'Pesanan Di Terima', '2025-01-24 14:28:11', 'Sumatera Selatan', 'Palembang', 'Kalidoni', '30118', 'Taufik Hidayat', 'taufik@gmail.com', '0850912521', 'Transfer', 'Makasi banyak kk'),
(33, '#TP20250325040947', 1, '2025-03-25', '300000', 'Jl. Prapanca Raya No. 9', 'Pesanan Di Terima', '2025-03-25 16:09:47', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Transfer', 'tes'),
(34, '#TP20250325045511', 1, '2025-03-25', '99000', 'Jl. Prapanca Raya No. 9', 'Pesanan Di Terima', '2025-03-25 16:55:11', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Cod', 'tes'),
(35, '#TP20250325045716', 1, '2025-03-25', '99000', 'Jl. Prapanca Raya No. 9', 'Pesanan Sedang Dikirim', '2025-03-25 16:57:16', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Cod', 'tes'),
(36, '#TP20250325050708', 1, '2025-03-25', '369000', 'Jl. Prapanca Raya No. 9', 'Menunggu Konfirmasi', '2025-03-25 17:07:08', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Cod', ''),
(37, '#TP20250325050708', 1, '2025-03-25', '369000', 'Jl. Prapanca Raya No. 9', 'Menunggu Konfirmasi', '2025-03-25 17:07:08', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Cod', ''),
(38, '#TP20250325051009', 1, '2025-03-25', '99000', 'Jl. Prapanca Raya No. 9', 'Menunggu Konfirmasi', '2025-03-25 17:10:09', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Cod', ''),
(39, '#TP20250325051054', 1, '2025-03-25', '99000', 'Jl. Prapanca Raya No. 9', 'Pesanan Sedang Dikirim', '2025-03-25 17:10:54', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170', 'Fahrul Adib', 'fahruladib9@gmail.com', '082282076702', 'Transfer', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `pembelianproduk`
--

CREATE TABLE `pembelianproduk` (
  `idpembelianproduk` int(11) NOT NULL,
  `idpembelian` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `nama` text NOT NULL,
  `harga` text NOT NULL,
  `subharga` text NOT NULL,
  `jumlah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelianproduk`
--

INSERT INTO `pembelianproduk` (`idpembelianproduk`, `idpembelian`, `idproduk`, `nama`, `harga`, `subharga`, `jumlah`) VALUES
(19, 19, 57, 'asdads', '20000', '20000', '1'),
(36, 33, 59, 'Pakaian Wanita Santai', '300000', '300000', '1'),
(37, 34, 61, 'Pakaian Pria Fullset', '99000', '99000', '1'),
(38, 35, 61, 'Pakaian Pria Fullset', '99000', '99000', '1'),
(39, 36, 62, 'Pakaian Anak-Anak', '69000', '69000', '1'),
(40, 36, 59, 'Pakaian Wanita Santai', '300000', '300000', '1'),
(41, 38, 61, 'Pakaian Pria Fullset', '99000', '99000', '1'),
(42, 39, 61, 'Pakaian Pria Fullset', '99000', '99000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_foto`
--

CREATE TABLE `pembelian_foto` (
  `id_pembelian_foto` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `status` text NOT NULL,
  `foto` text NOT NULL,
  `fotobuktiditerima` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian_foto`
--

INSERT INTO `pembelian_foto` (`id_pembelian_foto`, `id_pembelian`, `status`, `foto`, `fotobuktiditerima`) VALUES
(15, 39, 'Pesanan Sedang Dikirim', '20250325051401-logo-pakaian.webp', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `telepon` text NOT NULL,
  `alamat` text DEFAULT NULL,
  `fotoprofil` text NOT NULL,
  `level` text NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `jekel` varchar(100) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `kec` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `email`, `password`, `telepon`, `alamat`, `fotoprofil`, `level`, `tgl_lahir`, `tempat_lahir`, `jekel`, `provinsi`, `kota`, `kec`, `kode_pos`) VALUES
(1, 'Fahrul Adib', 'fahruladib9@gmail.com', '123', '082282076702', 'Jl. Prapanca Raya No. 9', 'Untitled.png', 'Pelanggan', '2002-07-08', 'Jakarta', 'Laki-laki', 'DKI Jakarta', 'Jakarta Selatan', 'Ciganjur', '12170'),
(2, 'Administrator', 'admin@gmail.com', 'admin', '081293827383', 'Palembang', '', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Sudendev', 'sudendev@gmail.com', '123', '082673927483', 'Banyuasin', 'Untitled.png', 'Pelanggan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Sugeng', 'sugeng@gmail.com', 'sugeng', '0850291521', NULL, 'Untitled.png', 'Pelanggan', '2000-07-07', 'Palembang', 'Laki-laki', NULL, NULL, NULL, NULL),
(9, 'Husen', 'husen@gmail.com', 'husen', '08529159021', NULL, 'Untitled.png', 'Pelanggan', '2000-07-07', 'Palembang', 'Laki-laki', NULL, NULL, NULL, NULL),
(10, 'Taufik Hidayat', 'taufik@gmail.com', 'taufik', '0850912521', NULL, 'Untitled.png', 'Pelanggan', '1999-07-07', 'Palembang', 'Laki-laki', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `nama` text NOT NULL,
  `harga` text NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` text NOT NULL,
  `stok` varchar(250) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `nama`, `harga`, `deskripsi`, `foto`, `stok`, `tanggal`) VALUES
(58, 21, 'Pakaian Wanita Formal', '50000', '<p>ini pakaian wanita dengan konsep formal yang menarik</p>', 'DALL·E 2025-03-25 16.02.23 - A stylish illustration showcasing various women\'s fashion styles_ a woman in a trendy streetwear outfit (oversized hoodie, sneakers, cargo pants), a c.webp', '60', '2024-10-02'),
(59, 21, 'Pakaian Wanita Santai', '300000', '<p>ini pakaian wanita santai yang tetap stylish dan modis</p>', 'DALL·E 2025-03-25 16.02.03 - A fashionable illustration showcasing different women\'s clothing styles_ a woman in a modern casual outfit (jeans, crop top, sneakers), an elegant eve.webp', '99', '2025-01-24'),
(60, 20, 'Pakaian Pria', '50000', '<p>Pakaian Pria Masa Kini, Bahan dan Desain Terkini</p>', 'DALL·E 2025-03-25 15.58.57 - An illustration showcasing various styles of men\'s clothing_ a modern man wearing a casual outfit (jeans and t-shirt), a business suit, and a sporty l.webp', '40', '2025-03-25'),
(61, 20, 'Pakaian Pria Fullset', '99000', '<p>Set Pakaian Pria Masa Kini, Desain dan Bahan Trendi dengan Garansi Jaminan</p>', 'DALL·E 2025-03-25 16.00.23 - A stylish illustration showcasing different men\'s fashion styles_ a man in a modern streetwear outfit (hoodie, sneakers, cargo pants), a classic gentl.webp', '49', '2025-03-25'),
(62, 22, 'Pakaian Anak-Anak', '69000', '<p>ini pakaian anak-anak yang cocok untuk lebaran</p>', 'DALL·E 2025-03-25 16.02.43 - A cheerful illustration showcasing different children\'s clothing styles_ a boy in a playful casual outfit (shorts, t-shirt, sneakers), a girl in a cut.webp', '500', '2025-03-25'),
(63, 22, 'Pakaian Anak Laki-laki', '89000', '<p>ini pakaian anak laki-laki yang modis dan keren</p>', 'DALL·E 2025-03-25 16.03.11 - A fun and vibrant illustration showcasing different boys\' clothing styles_ a boy in a cool streetwear outfit (hoodie, cargo shorts, sneakers), a sport.webp', '59', '2025-03-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`idpembayaran`),
  ADD KEY `idpembelian` (`idpembelian`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`idpembelian`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pembelianproduk`
--
ALTER TABLE `pembelianproduk`
  ADD PRIMARY KEY (`idpembelianproduk`) USING BTREE,
  ADD KEY `idpembelian` (`idpembelian`,`idproduk`) USING BTREE,
  ADD KEY `idproduk` (`idproduk`) USING BTREE;

--
-- Indexes for table `pembelian_foto`
--
ALTER TABLE `pembelian_foto`
  ADD PRIMARY KEY (`id_pembelian_foto`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`) USING BTREE,
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `idpembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `idpembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `pembelianproduk`
--
ALTER TABLE `pembelianproduk`
  MODIFY `idpembelianproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `pembelian_foto`
--
ALTER TABLE `pembelian_foto`
  MODIFY `id_pembelian_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
