-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2025 at 01:18 PM
-- Server version: 10.4.32-MariaDB-log
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`id_user`, `nama`, `email`, `username`, `password`, `level`) VALUES
(4, 'Admin', 'admin@mail.com', 'admin', '$2y$10$mi.Q/r6k5TFricaNcyr4y.3hm0qsFQeOWZEhXhJoN0h3W/bDQC/1m', 'Admin'),
(11, 'Karyawan 1', 'karyawan1@mail.com', 'karyawan1', '$2y$10$rBG6s0gdPJDrNU9NXNxsAOGNIKDZAS..15cUo/i5xieIbcw2gxa1e', 'Karyawan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cuci_komplit`
--

CREATE TABLE `tb_cuci_komplit` (
  `id_ck` int(11) NOT NULL,
  `nama_paket_ck` varchar(100) NOT NULL,
  `waktu_kerja_ck` varchar(20) NOT NULL,
  `kuantitas_ck` int(11) NOT NULL,
  `tarif_ck` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_cuci_komplit`
--

INSERT INTO `tb_cuci_komplit` (`id_ck`, `nama_paket_ck`, `waktu_kerja_ck`, `kuantitas_ck`, `tarif_ck`) VALUES
(1, 'Cuci Komplit Reguler', '2 Hari', 1, 8000),
(2, 'Cuci Komplit Kilat', '1 Hari', 1, 15000),
(3, 'Cuci Komplit Express', '5 Jam', 1, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_cuci_satuan`
--

CREATE TABLE `tb_cuci_satuan` (
  `id_cs` int(11) NOT NULL,
  `nama_cs` varchar(100) NOT NULL,
  `waktu_kerja_cs` varchar(20) NOT NULL,
  `kuantitas_cs` int(11) NOT NULL,
  `tarif_cs` int(11) NOT NULL,
  `keterangan_cs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_cuci_satuan`
--

INSERT INTO `tb_cuci_satuan` (`id_cs`, `nama_cs`, `waktu_kerja_cs`, `kuantitas_cs`, `tarif_cs`, `keterangan_cs`) VALUES
(1, 'Bed Cover (L/XL)', '1 Hari', 1, 35000, ''),
(2, 'Jaket Non Kulit', '1 Hari', 1, 6000, ''),
(3, 'Bed Cover (S/M)', '1 Hari', 1, 30000, ''),
(4, 'Boneka Kecil', '1 Hari', 1, 15000, ''),
(5, 'Boneka Besar', '1 Hari', 1, 30000, ''),
(6, 'Sejadah', '1 Hari', 1, 20000, ''),
(7, 'Selimut', '1 Hari', 1, 20000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dry_clean`
--

CREATE TABLE `tb_dry_clean` (
  `id_dc` int(11) NOT NULL,
  `nama_paket_dc` varchar(100) NOT NULL,
  `waktu_kerja_dc` varchar(20) NOT NULL,
  `kuantitas_dc` int(11) NOT NULL,
  `tarif_dc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_dry_clean`
--

INSERT INTO `tb_dry_clean` (`id_dc`, `nama_paket_dc`, `waktu_kerja_dc`, `kuantitas_dc`, `tarif_dc`) VALUES
(1, 'Cuci Kering Reguler', '2 Hari', 1, 6000),
(2, 'Cuci Kering Kilat', '1 Hari', 1, 9000),
(3, 'Cuci Kering Express', '5 Jam', 1, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order_ck`
--

CREATE TABLE `tb_order_ck` (
  `id_order_ck` int(11) NOT NULL,
  `or_ck_number` varchar(10) DEFAULT NULL,
  `nama_pel_ck` varchar(100) NOT NULL,
  `no_telp_ck` char(13) NOT NULL,
  `alamat_ck` text NOT NULL,
  `jenis_paket_ck` varchar(100) NOT NULL,
  `wkt_krj_ck` varchar(30) DEFAULT NULL,
  `berat_qty_ck` int(11) NOT NULL,
  `harga_perkilo` int(11) DEFAULT NULL,
  `tgl_masuk_ck` date NOT NULL,
  `tgl_keluar_ck` date NOT NULL,
  `tot_bayar` double DEFAULT NULL,
  `keterangan_ck` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_order_ck`
--

INSERT INTO `tb_order_ck` (`id_order_ck`, `or_ck_number`, `nama_pel_ck`, `no_telp_ck`, `alamat_ck`, `jenis_paket_ck`, `wkt_krj_ck`, `berat_qty_ck`, `harga_perkilo`, `tgl_masuk_ck`, `tgl_keluar_ck`, `tot_bayar`, `keterangan_ck`) VALUES
(16, 'CK-63FF618', 'Adam', '081000111000', 'Ds. Suka Maju', 'Cuci Komplit Reguler', '2 Hari', 2, 8000, '2023-02-28', '2023-03-01', 16000, '-'),
(17, 'CK-63FF621', 'Sischa', '082222000111', 'Ds. Suka Maju', 'Cuci Komplit Express', '5 Jam', 5, 20000, '2023-03-01', '2023-03-01', 100000, '-'),
(18, 'CK-63FF62C', 'Ayumi', '085555000555', 'Ds. Trihanggo', 'Cuci Komplit Reguler', '2 Hari', 3, 8000, '2023-02-27', '2023-03-01', 24000, '-'),
(19, 'CK-63FF710', 'Jhone', '081000000001', 'Ds. Maju Bersama', 'Cuci Komplit Express', '5 Jam', 5, 20000, '2023-03-01', '2023-03-01', 100000, '-'),
(20, 'CK-681ADF8', 'Filia', '089076541234', 'Pasar c1', 'Cuci Komplit Reguler', '2 Hari', 8, 8000, '2025-05-07', '2025-05-12', 64000, 'Pembayaran Cash'),
(21, 'CK-681AEB7', 'fio', '087656453421', 'Pasar 4', 'Cuci Komplit Kilat', '1 Hari', 9, 15000, '2025-05-30', '2025-05-31', 135000, 'pembayaran cash'),
(23, 'CK-6823290', 'fila', '082277338383', 'Medan Timur', 'Cuci Komplit Kilat', '1 Hari', 4, 15000, '2025-05-07', '2025-05-14', 60000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order_cs`
--

CREATE TABLE `tb_order_cs` (
  `id_order_cs` int(11) NOT NULL,
  `or_cs_number` varchar(10) NOT NULL,
  `nama_pel_cs` varchar(100) NOT NULL,
  `no_telp_cs` varchar(13) NOT NULL,
  `alamat_cs` text NOT NULL,
  `jenis_paket_cs` varchar(100) NOT NULL,
  `wkt_krj_cs` varchar(30) DEFAULT NULL,
  `jml_pcs` int(11) NOT NULL,
  `harga_perpcs` int(11) NOT NULL,
  `tgl_masuk_cs` date NOT NULL,
  `tgl_keluar_cs` date NOT NULL,
  `tot_bayar` double NOT NULL,
  `keterangan_cs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_order_cs`
--

INSERT INTO `tb_order_cs` (`id_order_cs`, `or_cs_number`, `nama_pel_cs`, `no_telp_cs`, `alamat_cs`, `jenis_paket_cs`, `wkt_krj_cs`, `jml_pcs`, `harga_perpcs`, `tgl_masuk_cs`, `tgl_keluar_cs`, `tot_bayar`, `keterangan_cs`) VALUES
(6, 'CS-63FF697', 'Dedi', '089000777888', 'Ds. Sukamaju', 'Selimut', '1 Hari', 1, 20000, '2023-02-28', '2023-03-01', 20000, '-'),
(7, 'CS-681B2EC', 'clata', '07672898910', 'medan', 'Boneka Kecil', '1 Hari', 3, 6000, '2025-05-05', '2025-05-07', 18000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order_dc`
--

CREATE TABLE `tb_order_dc` (
  `id_order_dc` int(11) NOT NULL,
  `or_dc_number` varchar(10) NOT NULL,
  `nama_pel_dc` varchar(100) NOT NULL,
  `no_telp_dc` varchar(13) NOT NULL,
  `alamat_dc` text NOT NULL,
  `jenis_paket_dc` varchar(100) NOT NULL,
  `wkt_krj_dc` varchar(30) DEFAULT NULL,
  `berat_qty_dc` int(11) NOT NULL,
  `harga_perkilo` int(11) NOT NULL,
  `tgl_masuk_dc` date NOT NULL,
  `tgl_keluar_dc` date NOT NULL,
  `tot_bayar` double NOT NULL,
  `keterangan_dc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_order_dc`
--

INSERT INTO `tb_order_dc` (`id_order_dc`, `or_dc_number`, `nama_pel_dc`, `no_telp_dc`, `alamat_dc`, `jenis_paket_dc`, `wkt_krj_dc`, `berat_qty_dc`, `harga_perkilo`, `tgl_masuk_dc`, `tgl_keluar_dc`, `tot_bayar`, `keterangan_dc`) VALUES
(7, 'DC-63FF694', 'Johan', '081111111222', 'Ds. Baturejo', 'Cuci Kering Kilat', '1 Hari', 2, 9000, '2023-02-28', '2023-03-01', 18000, '-'),
(8, '', '', '', '', '-- Pilih Jenis Paket --', '', 0, 0, '0000-00-00', '0000-00-00', 0, ''),
(9, 'DC-681AE33', 'Shindy', '082456991766', 'medan', 'Cuci Kering Kilat', '1 Hari', 4, 9000, '2025-05-02', '2025-05-03', 36000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_riwayat_ck`
--

CREATE TABLE `tb_riwayat_ck` (
  `id_ck` int(11) NOT NULL,
  `or_number` varchar(20) NOT NULL,
  `pelanggan` varchar(100) NOT NULL,
  `no_telp` char(15) NOT NULL,
  `alamat` text NOT NULL,
  `j_paket` varchar(50) NOT NULL,
  `wkt_kerja` varchar(20) NOT NULL,
  `berat` int(5) NOT NULL,
  `h_perkilo` int(11) NOT NULL,
  `tgl_msk` varchar(40) NOT NULL,
  `tgl_klr` varchar(40) NOT NULL,
  `total` int(11) NOT NULL,
  `nominal_byr` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_riwayat_ck`
--

INSERT INTO `tb_riwayat_ck` (`id_ck`, `or_number`, `pelanggan`, `no_telp`, `alamat`, `j_paket`, `wkt_kerja`, `berat`, `h_perkilo`, `tgl_msk`, `tgl_klr`, `total`, `nominal_byr`, `kembalian`, `status`, `keterangan`) VALUES
(16, 'CK-63FF618', 'Adam', '081000111000', 'Ds. Suka Maju', 'Cuci Komplit Reguler', '2 Hari', 2, 8000, '28 Februari 2023', '01 Maret 2023', 16000, 20000, 4000, 'Sukses', '-'),
(17, 'CK-63FF621', 'Sischa', '082222000111', 'Ds. Suka Maju', 'Cuci Komplit Express', '5 Jam', 5, 20000, '01 Maret 2023', '01 Maret 2023', 100000, 100000, 0, 'Sukses', '-'),
(18, 'CK-63FF62C', 'Ayumi', '085555000555', 'Ds. Trihanggo', 'Cuci Komplit Reguler', '2 Hari', 3, 8000, '27 Februari 2023', '01 Maret 2023', 24000, 25000, 1000, 'Sukses', '-'),
(19, 'CK-681ADF8', 'Filia', '089076541234', 'Pasar c1', 'Cuci Komplit Reguler', '2 Hari', 8, 8000, '07 Mei 2025', '12 Mei 2025', 64000, 64000, 0, 'Sukses', 'Pembayaran Cash'),
(20, 'CK-63FF618', 'Adam', '081000111000', 'Ds. Suka Maju', 'Cuci Komplit Reguler', '2 Hari', 2, 8000, '28 Februari 2023', '01 Maret 2023', 16000, 16000, 0, 'Sukses', '-'),
(21, 'CK-6823290', 'fila', '082277338383', 'Medan Timur', 'Cuci Komplit Kilat', '1 Hari', 4, 15000, '07 Mei 2025', '14 Mei 2025', 60000, 100000, 40000, 'Sukses', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_riwayat_cs`
--

CREATE TABLE `tb_riwayat_cs` (
  `id_cs` int(11) NOT NULL,
  `or_number` varchar(20) DEFAULT NULL,
  `pelanggan` varchar(100) DEFAULT NULL,
  `no_telp` char(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `j_paket` varchar(50) DEFAULT NULL,
  `wkt_kerja` varchar(20) DEFAULT NULL,
  `jml_pcs` int(11) DEFAULT NULL,
  `h_perpcs` int(11) DEFAULT NULL,
  `tgl_msk` varchar(40) DEFAULT NULL,
  `tgl_klr` varchar(40) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `nominal_byr` int(11) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_riwayat_cs`
--

INSERT INTO `tb_riwayat_cs` (`id_cs`, `or_number`, `pelanggan`, `no_telp`, `alamat`, `j_paket`, `wkt_kerja`, `jml_pcs`, `h_perpcs`, `tgl_msk`, `tgl_klr`, `total`, `nominal_byr`, `kembalian`, `status`, `keterangan`) VALUES
(4, 'CS-681B2EC', 'clata', '07672898910', 'medan', 'Boneka Kecil', '1 Hari', 3, 6000, '05 Mei 2025', '07 Mei 2025', 18000, 20000, 2000, 'Sukses', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_riwayat_dc`
--

CREATE TABLE `tb_riwayat_dc` (
  `id_dc` int(11) NOT NULL,
  `or_number` varchar(20) DEFAULT NULL,
  `pelanggan` varchar(100) DEFAULT NULL,
  `no_telp` char(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `j_paket` varchar(40) DEFAULT NULL,
  `wkt_kerja` varchar(20) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `h_perkilo` int(11) DEFAULT NULL,
  `tgl_msk` varchar(40) DEFAULT NULL,
  `tgl_klr` varchar(40) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `nominal_byr` int(11) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_riwayat_dc`
--

INSERT INTO `tb_riwayat_dc` (`id_dc`, `or_number`, `pelanggan`, `no_telp`, `alamat`, `j_paket`, `wkt_kerja`, `berat`, `h_perkilo`, `tgl_msk`, `tgl_klr`, `total`, `nominal_byr`, `kembalian`, `status`, `keterangan`) VALUES
(4, 'DC-681AE33', 'Shindy', '082456991766', 'medan', 'Cuci Kering Kilat', '1 Hari', 4, 9000, '02 Mei 2025', '03 Mei 2025', 36000, 40000, 4000, 'Sukses', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_cuci_komplit`
--
ALTER TABLE `tb_cuci_komplit`
  ADD PRIMARY KEY (`id_ck`);

--
-- Indexes for table `tb_cuci_satuan`
--
ALTER TABLE `tb_cuci_satuan`
  ADD PRIMARY KEY (`id_cs`);

--
-- Indexes for table `tb_dry_clean`
--
ALTER TABLE `tb_dry_clean`
  ADD PRIMARY KEY (`id_dc`);

--
-- Indexes for table `tb_order_ck`
--
ALTER TABLE `tb_order_ck`
  ADD PRIMARY KEY (`id_order_ck`);

--
-- Indexes for table `tb_order_cs`
--
ALTER TABLE `tb_order_cs`
  ADD PRIMARY KEY (`id_order_cs`);

--
-- Indexes for table `tb_order_dc`
--
ALTER TABLE `tb_order_dc`
  ADD PRIMARY KEY (`id_order_dc`);

--
-- Indexes for table `tb_riwayat_ck`
--
ALTER TABLE `tb_riwayat_ck`
  ADD PRIMARY KEY (`id_ck`);

--
-- Indexes for table `tb_riwayat_cs`
--
ALTER TABLE `tb_riwayat_cs`
  ADD PRIMARY KEY (`id_cs`);

--
-- Indexes for table `tb_riwayat_dc`
--
ALTER TABLE `tb_riwayat_dc`
  ADD PRIMARY KEY (`id_dc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master`
--
ALTER TABLE `master`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_cuci_komplit`
--
ALTER TABLE `tb_cuci_komplit`
  MODIFY `id_ck` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_cuci_satuan`
--
ALTER TABLE `tb_cuci_satuan`
  MODIFY `id_cs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_dry_clean`
--
ALTER TABLE `tb_dry_clean`
  MODIFY `id_dc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_order_ck`
--
ALTER TABLE `tb_order_ck`
  MODIFY `id_order_ck` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_order_cs`
--
ALTER TABLE `tb_order_cs`
  MODIFY `id_order_cs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_order_dc`
--
ALTER TABLE `tb_order_dc`
  MODIFY `id_order_dc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_riwayat_ck`
--
ALTER TABLE `tb_riwayat_ck`
  MODIFY `id_ck` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_riwayat_cs`
--
ALTER TABLE `tb_riwayat_cs`
  MODIFY `id_cs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_riwayat_dc`
--
ALTER TABLE `tb_riwayat_dc`
  MODIFY `id_dc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
