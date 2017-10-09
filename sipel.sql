-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2017 at 06:28 PM
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
  `kontak` varchar(13) DEFAULT NULL,
  `alamat` text,
  `id_pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`id_dosen`, `nip`, `nama_dosen`, `kontak`, `alamat`, `id_pengguna`) VALUES
(1, '1234', 'Anang', NULL, NULL, 1),
(2, 'TEST', 'Dodol', NULL, NULL, 2),
(3, NULL, 'Syarif', '098763', 'Bandung', 4),
(4, NULL, 'Bambang', '9304758g', 'Bandung', 5),
(5, NULL, 'Dodol Maryato', NULL, NULL, 6);

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
  `jam` time DEFAULT '00:00:00',
  `id_matakuliah` int(11) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `id_hari` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id_jadwal`, `jam`, `id_matakuliah`, `id_dosen`, `id_hari`) VALUES
(2, '01:30:00', 1, 1, 1),
(3, '00:00:00', 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
`id_mahasiswa` int(11) NOT NULL,
  `npm` varchar(13) DEFAULT NULL,
  `nama_mahasiswa` varchar(64) DEFAULT NULL,
  `id_pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id_mahasiswa`, `npm`, `nama_mahasiswa`, `id_pengguna`) VALUES
(1, 'D1A.13.0001', 'Dodol', 7),
(2, 'D1A.13.0002', 'Egg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_matakuliah`
--

CREATE TABLE IF NOT EXISTS `tb_matakuliah` (
`id_matakuliah` int(11) NOT NULL,
  `matakuliah` varchar(64) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL,
  `id_semester` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_matakuliah`
--

INSERT INTO `tb_matakuliah` (`id_matakuliah`, `matakuliah`, `sks`, `id_semester`) VALUES
(1, 'Analisis Proses Bisnis (APB)', 2, 3),
(2, 'Matematika Diskrit', 3, 2),
(3, 'Perkembangan Teknologi Informasi', 3, 1),
(4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_materi_kuliah`
--

CREATE TABLE IF NOT EXISTS `tb_materi_kuliah` (
`id_materi_kuliah` int(11) NOT NULL,
  `id_matakuliah` int(11) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `dokumen` varchar(225) DEFAULT NULL,
  `id_pertemuan` int(1) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_materi_kuliah`
--

INSERT INTO `tb_materi_kuliah` (`id_materi_kuliah`, `id_matakuliah`, `id_dosen`, `dokumen`, `id_pertemuan`, `tanggal`) VALUES
(1, 1, NULL, 'cookbook.pdf', NULL, NULL),
(2, 2, NULL, '042ccf27e79ec886de9dfa488eb27800--korean-idols-roma.jpg', NULL, NULL),
(3, 0, NULL, '611081047_resume.pdf', NULL, NULL),
(4, 0, NULL, 'Layout,_Listview,_Gridview,_and_Adapter.pptx', NULL, NULL),
(5, 0, NULL, 'Layout,_Listview,_Gridview,_and_Adapter1.pptx', NULL, NULL),
(6, 2, 3, '(80).pdf', 1, NULL),
(7, 1, 3, 'AngularJS_Tutorial.pdf', 2, NULL),
(8, 1, 3, '67.pdf', 2, '2017-10-06'),
(9, 2, NULL, 'test.pptx', 2, '2017-10-09'),
(10, 3, 3, 'test1.pptx', 5, '2017-10-09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE IF NOT EXISTS `tb_pengguna` (
`id_pengguna` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `hak_akses` varchar(1) DEFAULT NULL,
  `gambar` varchar(64) DEFAULT 'default.png'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `username`, `password`, `hak_akses`, `gambar`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', 'default.png'),
(2, 'dosen', 'ce28eed1511f631af6b2a7bb0a85d636', '2', 'default.png'),
(3, 'mahasiswa', '5787be38ee03a9ae5360f54d9026465f', '3', 'mahasiswa.png'),
(4, 'syarif', '8daa2f003d41f1ea865c1503b3d99d3d', '2', 'dosen.png'),
(5, 'bambang', 'a9711cbb2e3c2d5fc97a63e45bbe5076', '2', 'dosen.png'),
(6, NULL, 'f39ac2fca9bbd51939dfa916074fbe0a', '2', 'dosen.png'),
(7, 'D1A130001', 'e9b42d066bc7efcb9e685c1998d1c7f6', '3', 'mahasiswa.png'),
(8, 'D1A130002', '502ddb859914e7963849504f7b3c6066', '3', 'mahasiswa.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pertemuan`
--

CREATE TABLE IF NOT EXISTS `tb_pertemuan` (
`id_pertemuan` int(1) NOT NULL,
  `pertemuan` varchar(32) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pertemuan`
--

INSERT INTO `tb_pertemuan` (`id_pertemuan`, `pertemuan`) VALUES
(1, 'Pertemuan 1'),
(2, 'Pertemuan 2'),
(3, 'Pertemuan 3'),
(4, 'Pertemuan 4'),
(5, 'Pertemuan 5'),
(6, 'Pertemuan 6'),
(7, 'Pertemuan 7'),
(8, 'Pertemuan 8'),
(9, 'Pertemuan 9'),
(10, 'Pertemuan 10'),
(11, 'Pertemuan 11'),
(12, 'Pertemuan 12'),
(13, 'Pertemuan 13'),
(14, 'Pertemuan 14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_semester`
--

CREATE TABLE IF NOT EXISTS `tb_semester` (
`id_semester` int(1) NOT NULL,
  `semester` varchar(32) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_semester`
--

INSERT INTO `tb_semester` (`id_semester`, `semester`) VALUES
(1, 'Semester I'),
(2, 'Semester II'),
(3, 'Semester III'),
(4, 'Semester IV'),
(5, 'Semester V'),
(6, 'Semester VI'),
(7, 'Semester VII'),
(8, 'Semester VIII');

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
-- Indexes for table `tb_pertemuan`
--
ALTER TABLE `tb_pertemuan`
 ADD PRIMARY KEY (`id_pertemuan`);

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
MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_hari`
--
ALTER TABLE `tb_hari`
MODIFY `id_hari` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_materi_kuliah`
--
ALTER TABLE `tb_materi_kuliah`
MODIFY `id_materi_kuliah` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_pertemuan`
--
ALTER TABLE `tb_pertemuan`
MODIFY `id_pertemuan` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tb_semester`
--
ALTER TABLE `tb_semester`
MODIFY `id_semester` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
