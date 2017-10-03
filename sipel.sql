-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2017 at 09:17 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sipel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE IF NOT EXISTS `tb_dosen` (
`id_dosen` int(11) NOT NULL,
  `nip` varchar(32) DEFAULT NULL,
  `nama_dosen` varchar(64) DEFAULT NULL,
  `id_pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_hari`
--

CREATE TABLE IF NOT EXISTS `tb_hari` (
`id_hari` int(1) NOT NULL,
  `hari` varchar(8) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hari`
--

INSERT INTO `tb_hari` (`id_hari`, `hari`) VALUES
(1, 'senin'),
(2, 'selasa'),
(3, 'rabu'),
(4, 'kamis'),
(5, 'jumat'),
(6, 'sabtu'),
(7, 'minggu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE IF NOT EXISTS `tb_jadwal` (
`id_jadwal` int(11) NOT NULL,
  `jam` time DEFAULT NULL,
  `jadwal` varchar(64) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `npm` varchar(13) DEFAULT NULL,
  `nama_mahasiswa` varchar(64) DEFAULT NULL,
  `id_pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_matakuliah`
--

CREATE TABLE IF NOT EXISTS `tb_matakuliah` (
`id_matakuliah` int(11) NOT NULL,
  `matakuliah` varchar(64) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_matakuliah`
--

INSERT INTO `tb_matakuliah` (`id_matakuliah`, `matakuliah`, `sks`) VALUES
(1, 'Analisis Proses Bisnis (APB)', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_materi_kuliah`
--

CREATE TABLE IF NOT EXISTS `tb_materi_kuliah` (
`id_materi_kuliah` int(11) NOT NULL,
  `id_matakuliah` int(11) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `dokumen` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE IF NOT EXISTS `tb_pengguna` (
`id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(64) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `hak_akses` varchar(1) DEFAULT NULL,
  `gambar` varchar(64) DEFAULT 'default.png'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`, `hak_akses`, `gambar`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_semester`
--

CREATE TABLE IF NOT EXISTS `tb_semester` (
`id_semester` int(1) NOT NULL,
  `semester` varchar(6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_semester`
--

INSERT INTO `tb_semester` (`id_semester`, `semester`) VALUES
(1, 'Ganjil'),
(2, 'Genap');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
 ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `tb_hari`
--
ALTER TABLE `tb_hari`
 ADD PRIMARY KEY (`id_hari`);

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
 ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
 ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
 ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indexes for table `tb_materi_kuliah`
--
ALTER TABLE `tb_materi_kuliah`
 ADD PRIMARY KEY (`id_materi_kuliah`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
 ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_semester`
--
ALTER TABLE `tb_semester`
 ADD PRIMARY KEY (`id_semester`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_hari`
--
ALTER TABLE `tb_hari`
MODIFY `id_hari` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_materi_kuliah`
--
ALTER TABLE `tb_materi_kuliah`
MODIFY `id_materi_kuliah` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_semester`
--
ALTER TABLE `tb_semester`
MODIFY `id_semester` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
