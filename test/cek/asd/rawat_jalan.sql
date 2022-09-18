-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2022 at 02:50 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rawat_jalan`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` varchar(50) NOT NULL,
  `nama_dokter` char(50) NOT NULL,
  `jk_dokter` char(50) NOT NULL,
  `ttl_dokter` char(50) NOT NULL,
  `tlp_dokter` char(50) NOT NULL,
  `alamat_dokter` char(50) NOT NULL,
  `spesialis` char(50) NOT NULL,
  `ruangan` char(50) NOT NULL,
  `jam_praktek` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `jk_dokter`, `ttl_dokter`, `tlp_dokter`, `alamat_dokter`, `spesialis`, `ruangan`, `jam_praktek`) VALUES
('D0150', 'GILANG', 'L', '11/02/1995', '087214156464', 'JAKARTA', 'MATA', '1', 'PAGI'),
('D0151', 'MUTI', 'P', '15/04/1997', '087314151123', 'DEPOK', 'ANAK', '2', 'MALAM'),
('D0152', 'BIMO', 'L', '20/05/1996', '089123141231', 'BANDUNG', 'UMUM', '3', 'PAGI');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `nama_pasien` char(50) NOT NULL,
  `ttl_pasien` char(50) NOT NULL,
  `jk_pasien` char(50) NOT NULL,
  `status` char(50) NOT NULL,
  `alamat_pasien` char(50) NOT NULL,
  `tlp_pasien` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `ttl_pasien`, `jk_pasien`, `status`, `alamat_pasien`, `tlp_pasien`) VALUES
('P01', 'Agung', '20/05/2002', 'L', 'Yes', 'SUBANG', '0872134556312'),
('P02', 'Bambang', '24/06/2003', 'L', 'No', 'BANDUNG', '0892132156112'),
('P03', 'Cecep', '11/07/2004', 'L', 'Yes', 'JAKARTA', '0812313412456');

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `id_pemeriksaan` varchar(50) NOT NULL,
  `id_dokter` char(50) NOT NULL,
  `id_pasien` char(50) NOT NULL,
  `tgl_periksa` char(50) NOT NULL,
  `diagnosa` char(50) NOT NULL,
  `rujukan` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`id_pemeriksaan`, `id_dokter`, `id_pasien`, `tgl_periksa`, `diagnosa`, `rujukan`) VALUES
('PR05', 'D0150', 'P01', '20/06/2022 16:45:45', 'COVID', 'INAP'),
('PR06', 'D0151', 'P02', '24/07/2022 15:15:30', 'TIFUS', 'INAP'),
('PR07', 'D0152', 'P03', '26/08/2022 14:30:45', 'BAIK', 'TIDAK ADA');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(50) NOT NULL,
  `password` char(50) NOT NULL,
  `nama_petugas` char(50) NOT NULL,
  `ttl_petugas` char(50) NOT NULL,
  `alamat` char(50) NOT NULL,
  `tlp_petugas` char(50) NOT NULL,
  `jk_petugas` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `password`, `nama_petugas`, `ttl_petugas`, `alamat`, `tlp_petugas`, `jk_petugas`) VALUES
('PT15', '****', 'AMIM', '15/01/2000', 'BANDUNG', '087131551353', 'L'),
('PT16', '****', 'BABA', '11/02/2001', 'JAKARTA', '089321415516', 'L'),
('PT17', '****', 'CACA', '17/03/2002', 'DEPOK', '087214151515', 'P'),
('PT18', '****', 'KAYES', '20/04/2001', 'SUBANG', '087415151511', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `id_poli` varchar(50) NOT NULL,
  `nama_poli` char(50) NOT NULL,
  `lokasi_poli` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`id_poli`, `nama_poli`, `lokasi_poli`) VALUES
('PK01', 'POLI MATA', 'Lantai 2'),
('PK02', 'POLI UMUM', 'Lantai 1'),
('PK03', 'POLI ANAK', 'Lantai 1');

-- --------------------------------------------------------

--
-- Table structure for table `rekam medis`
--

CREATE TABLE `rekam medis` (
  `id_rekam medis` varchar(50) NOT NULL,
  `tgl_rekam` char(50) NOT NULL,
  `berat_badan` char(50) NOT NULL,
  `tinggi_badan` char(50) NOT NULL,
  `riwayat_penyakit` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekam medis`
--

INSERT INTO `rekam medis` (`id_rekam medis`, `tgl_rekam`, `berat_badan`, `tinggi_badan`, `riwayat_penyakit`) VALUES
('RM01', '15/08/2022', '40 kg', '154 cm', 'Influenza'),
('RM02', '20/09/2022', '50 kg', '164 cm', 'Covid'),
('RM03', '25/10/2022', '60 kg', '175 cm', 'Tifus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`id_pemeriksaan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `rekam medis`
--
ALTER TABLE `rekam medis`
  ADD PRIMARY KEY (`id_rekam medis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
