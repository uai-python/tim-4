-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2017 at 04:30 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jakarta`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_diri`
--

CREATE TABLE `data_diri` (
  `No_User` int(11) NOT NULL,
  `Nama` varchar(200) DEFAULT NULL,
  `jk` varchar(20) DEFAULT NULL,
  `Usia` int(11) DEFAULT NULL,
  `Kotamadya` varchar(50) DEFAULT NULL,
  `No_telp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan_jawab`
--

CREATE TABLE `pertanyaan_jawab` (
  `id_tanya` int(11) NOT NULL,
  `Pertanyaan` varchar(100) NOT NULL,
  `Jawaban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan_jawab`
--

INSERT INTO `pertanyaan_jawab` (`id_tanya`, `Pertanyaan`, `Jawaban`) VALUES
(1, 'Berapa Banyak Jumlah Dokter Umum Pada Tahun 2013 ?', 2629),
(2, 'Jumlah Guru SMA Berjenis Kelamin Laki-Laki ?', 4700),
(3, 'Jumlah Guru SMP Berjenis Kelamin Perempuan ?', 11315),
(4, 'Hotel Berbintang Tahun 2014 ?', 213),
(5, 'Jumlah Halte Transjakarta ?', 207),
(6, 'Jumlah Jenis Trayek MetroMini di Jakarta ?', 53),
(7, 'Jumlah Mobil Pemadam Kebakaran yang tersedia ?', 100),
(8, 'Banyak Restoran Pada Tahun 2010 ?', 2480),
(9, 'Banyaknya Rumah Sakit pada Tahun 2014 ?', 2426),
(10, 'Jumlah Siswa Putus Kuliah Tingkat SMU di Jakarta tahun 2014 ?', 96),
(11, 'Banyaknya Jumlah Kendaraan Penyapu Jalan pada Tahun 2014 ?', 14),
(12, 'Jumlah Pelanggan PAM dalam Sektor Industri Besar ?', 1480),
(13, 'Banyaknya Pelayanan Kesehatan Bayi Tahun 2015 ?', 97),
(14, 'Jumlah Sekolah Alquran Tahun 2014 ?', 3606),
(15, 'Banyak Orang yang Tidak Bisa Membaca dan Menulis ?', 64075);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_diri`
--
ALTER TABLE `data_diri`
  ADD PRIMARY KEY (`No_User`);

--
-- Indexes for table `pertanyaan_jawab`
--
ALTER TABLE `pertanyaan_jawab`
  ADD PRIMARY KEY (`id_tanya`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_diri`
--
ALTER TABLE `data_diri`
  MODIFY `No_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pertanyaan_jawab`
--
ALTER TABLE `pertanyaan_jawab`
  MODIFY `id_tanya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
