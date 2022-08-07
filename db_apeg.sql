-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 Apr 2020 pada 15.11
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_apeg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nip` varchar(25) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `jk` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `nama`, `alamat`, `jk`) VALUES
('196003051982011013', 'SUYANI, S.Pd', 'Malang', 'P'),
('196005271985041002', 'ALI BASTOMI, S.Ag', 'Malang', 'L'),
('196007111979071002', 'ANJAR ISWANTI, S.Pd', 'Tulungagung', 'L'),
('196407181987032012', 'MIYATIN, S.Pd', 'Blitar', 'P'),
('196702052009011001', 'NUR AGUSTINA, S.Pd', 'Tulungagung', 'L'),
('197007142008011014', 'PUSPO EDY C.B, S.Pd', 'Surabaya', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_alternatif`
--

CREATE TABLE `hasil_alternatif` (
  `kriteria` varchar(30) NOT NULL,
  `alternatif1` varchar(30) NOT NULL,
  `bobot` float NOT NULL,
  `alternatif2` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_alternatif`
--

INSERT INTO `hasil_alternatif` (`kriteria`, `alternatif1`, `bobot`, `alternatif2`) VALUES
('1', '196003051982011013', 4, '196005271985041002'),
('1', '196003051982011013', 3, '196007111979071002'),
('1', '196003051982011013', 3, '196407181987032012'),
('1', '196003051982011013', 2, '196702052009011001'),
('1', '196003051982011013', 3, '197007142008011014'),
('1', '196005271985041002', 3, '196007111979071002'),
('1', '196005271985041002', 4, '196407181987032012'),
('1', '196005271985041002', 2, '196702052009011001'),
('1', '196005271985041002', 3, '197007142008011014'),
('1', '196007111979071002', 4, '196407181987032012'),
('1', '196007111979071002', 2, '196702052009011001'),
('1', '196007111979071002', 3, '197007142008011014'),
('1', '196407181987032012', 3, '196702052009011001'),
('1', '196407181987032012', 5, '197007142008011014'),
('1', '196702052009011001', 6, '197007142008011014'),
('2', '196003051982011013', 3, '196005271985041002'),
('2', '196003051982011013', 3, '196007111979071002'),
('2', '196003051982011013', 4, '196407181987032012'),
('2', '196003051982011013', 2, '196702052009011001'),
('2', '196003051982011013', 5, '197007142008011014'),
('2', '196005271985041002', 4, '196007111979071002'),
('2', '196005271985041002', 5, '196407181987032012'),
('2', '196005271985041002', 6, '196702052009011001'),
('2', '196005271985041002', 3, '197007142008011014'),
('2', '196007111979071002', 4, '196407181987032012'),
('2', '196007111979071002', 5, '196702052009011001'),
('2', '196007111979071002', 3, '197007142008011014'),
('2', '196407181987032012', 4, '196702052009011001'),
('2', '196407181987032012', 6, '197007142008011014'),
('2', '196702052009011001', 3, '197007142008011014'),
('3', '196003051982011013', 3, '196005271985041002'),
('3', '196003051982011013', 4, '196007111979071002'),
('3', '196003051982011013', 4, '196407181987032012'),
('3', '196003051982011013', 4, '196702052009011001'),
('3', '196003051982011013', 4, '197007142008011014'),
('3', '196005271985041002', 5, '196007111979071002'),
('3', '196005271985041002', 4, '196407181987032012'),
('3', '196005271985041002', 4, '196702052009011001'),
('3', '196005271985041002', 5, '197007142008011014'),
('3', '196007111979071002', 5, '196407181987032012'),
('3', '196007111979071002', 5, '196702052009011001'),
('3', '196007111979071002', 6, '197007142008011014'),
('3', '196407181987032012', 6, '196702052009011001'),
('3', '196407181987032012', 4, '197007142008011014'),
('3', '196702052009011001', 3, '197007142008011014'),
('4', '196003051982011013', 4, '196005271985041002'),
('4', '196003051982011013', 5, '196007111979071002'),
('4', '196003051982011013', 5, '196407181987032012'),
('4', '196003051982011013', 6, '196702052009011001'),
('4', '196003051982011013', 3, '197007142008011014'),
('4', '196005271985041002', 6, '196007111979071002'),
('4', '196005271985041002', 5, '196407181987032012'),
('4', '196005271985041002', 5, '196702052009011001'),
('4', '196005271985041002', 3, '197007142008011014'),
('4', '196007111979071002', 3, '196407181987032012'),
('4', '196007111979071002', 3, '196702052009011001'),
('4', '196007111979071002', 4, '197007142008011014'),
('4', '196407181987032012', 5, '196702052009011001'),
('4', '196407181987032012', 4, '197007142008011014'),
('4', '196702052009011001', 3, '197007142008011014'),
('5', '196003051982011013', 4, '196005271985041002'),
('5', '196003051982011013', 5, '196007111979071002'),
('5', '196003051982011013', 3, '196407181987032012'),
('5', '196003051982011013', 4, '196702052009011001'),
('5', '196003051982011013', 5, '197007142008011014'),
('5', '196005271985041002', 3, '196007111979071002'),
('5', '196005271985041002', 5, '196407181987032012'),
('5', '196005271985041002', 4, '196702052009011001'),
('5', '196005271985041002', 3, '197007142008011014'),
('5', '196007111979071002', 5, '196407181987032012'),
('5', '196007111979071002', 3, '196702052009011001'),
('5', '196007111979071002', 4, '197007142008011014'),
('5', '196407181987032012', 3, '196702052009011001'),
('5', '196407181987032012', 5, '197007142008011014'),
('5', '196702052009011001', 5, '197007142008011014'),
('6', '196003051982011013', 4, '196005271985041002'),
('6', '196003051982011013', 4, '196007111979071002'),
('6', '196003051982011013', 7, '196407181987032012'),
('6', '196003051982011013', 3, '196702052009011001'),
('6', '196003051982011013', 5, '197007142008011014'),
('6', '196005271985041002', 5, '196007111979071002'),
('6', '196005271985041002', 5, '196407181987032012'),
('6', '196005271985041002', 7, '196702052009011001'),
('6', '196005271985041002', 5, '197007142008011014'),
('6', '196007111979071002', 7, '196407181987032012'),
('6', '196007111979071002', 2, '196702052009011001'),
('6', '196007111979071002', 3, '197007142008011014'),
('6', '196407181987032012', 5, '196702052009011001'),
('6', '196407181987032012', 5, '197007142008011014'),
('6', '196702052009011001', 4, '197007142008011014');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_kriteria`
--

CREATE TABLE `hasil_kriteria` (
  `kriteria1` text NOT NULL,
  `bobot` text NOT NULL,
  `kriteria2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_kriteria`
--

INSERT INTO `hasil_kriteria` (`kriteria1`, `bobot`, `kriteria2`) VALUES
('1', '2', '2'),
('1', '3', '3'),
('1', '2', '4'),
('1', '3', '5'),
('2', '3', '3'),
('2', '2', '4'),
('2', '3', '5'),
('3', '3', '4'),
('3', '2', '5'),
('4', '6', '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `ket` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama`, `ket`) VALUES
(1, 'Penampilan', ''),
(2, 'Sikap', ''),
(3, 'Metode Pengajaran', ''),
(4, 'Keterampilan', ''),
(5, 'Interaksi dengan siswa', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_awal`
--

CREATE TABLE `nilai_awal` (
  `id_nilai_awal` int(11) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `nilai` int(11) NOT NULL DEFAULT '0',
  `keterangan` varchar(15) NOT NULL,
  `periode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_awal`
--

INSERT INTO `nilai_awal` (`id_nilai_awal`, `nip`, `nilai`, `keterangan`, `periode`) VALUES
(1, '196003051982011013', 79, 'Cukup Baik', 2019),
(2, '196005271985041002', 78, 'Cukup Baik', 2019),
(3, '196007111979071002', 76, 'Cukup Baik', 2019),
(4, '196407181987032012', 83, 'Baik', 2019),
(5, '196702052009011001', 70, 'Cukup Baik', 2019),
(6, '197007142008011014', 89, 'Baik', 2019),
(7, '196003051982011013', 80, 'Cukup Baik', 2019),
(8, '196003051982011013', 64, 'Cukup Buruk', 2019),
(9, '196003051982011013', 0, 'Sangat Baik', 2019),
(10, '196003051982011013', 18, 'Kurang', 2019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_detail`
--

CREATE TABLE `nilai_detail` (
  `id_nilai_detail` int(11) NOT NULL,
  `id_nilai_awal` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nisn` varchar(15) NOT NULL DEFAULT '',
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_detail`
--

INSERT INTO `nilai_detail` (`id_nilai_detail`, `id_nilai_awal`, `id_kriteria`, `nisn`, `nilai`) VALUES
(1, 1, 1, '0064169367', 14),
(2, 1, 2, '0064169367', 18),
(3, 1, 3, '0064169367', 15),
(4, 1, 4, '0064169367', 16),
(5, 1, 5, '0064169367', 16),
(6, 2, 1, '0064169367', 14),
(8, 2, 3, '0064169367', 16),
(9, 2, 4, '0064169367', 16),
(10, 2, 5, '0064169367', 17),
(11, 3, 1, '0064169367', 16),
(12, 3, 2, '0064169367', 18),
(13, 3, 3, '0064169367', 15),
(14, 3, 4, '0064169367', 17),
(15, 3, 5, '0064169367', 10),
(16, 4, 1, '0064169367', 18),
(17, 4, 2, '0064169367', 18),
(18, 4, 3, '0064169367', 16),
(19, 4, 4, '0064169367', 16),
(20, 4, 5, '0064169367', 15),
(21, 5, 1, '0064169367', 15),
(22, 5, 2, '0064169367', 15),
(23, 5, 3, '0064169367', 15),
(24, 5, 4, '0064169367', 12),
(25, 5, 5, '0064169367', 13),
(26, 6, 1, '0064169367', 17),
(27, 6, 2, '0064169367', 19),
(28, 6, 3, '0064169367', 20),
(29, 6, 4, '0064169367', 17),
(30, 6, 5, '0064169367', 16),
(56, 7, 1, '0064169367', 16),
(57, 7, 2, '0064169367', 16),
(58, 7, 3, '0064169367', 16),
(59, 7, 4, '0064169367', 16),
(60, 7, 5, '0064169367', 16),
(61, 8, 1, '0064169367', 10),
(62, 8, 2, '0064169367', 13),
(63, 8, 3, '0064169367', 13),
(64, 8, 4, '0064169367', 14),
(65, 8, 5, '0064169367', 14),
(66, 9, 1, '0064169367', 0),
(67, 9, 2, '0064169367', 0),
(68, 9, 3, '0064169367', 0),
(69, 9, 4, '0064169367', 0),
(70, 9, 5, '0064169367', 0),
(71, 10, 1, '0064169367', 4),
(72, 10, 2, '0064169367', 3),
(73, 10, 3, '0064169367', 4),
(74, 10, 4, '0064169367', 4),
(75, 10, 5, '0064169367', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prioritas_alternatif`
--

CREATE TABLE `prioritas_alternatif` (
  `id_prioritas_alternatif` int(11) NOT NULL,
  `kriteria` varchar(30) NOT NULL,
  `alternatif` varchar(25) NOT NULL,
  `prioritas` double NOT NULL,
  `periode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prioritas_alternatif`
--

INSERT INTO `prioritas_alternatif` (`id_prioritas_alternatif`, `kriteria`, `alternatif`, `prioritas`, `periode`) VALUES
(81, '1', '196003051982011013', 0.3229, 2019),
(82, '1', '196005271985041002', 0.2128, 2019),
(83, '1', '196007111979071002', 0.1593, 2019),
(84, '1', '196407181987032012', 0.134, 2019),
(85, '1', '196702052009011001', 0.1221, 2019),
(86, '1', '197007142008011014', 0.0491, 2019),
(87, '2', '196003051982011013', 0.3258, 2019),
(88, '2', '196005271985041002', 0.267, 2019),
(89, '2', '196007111979071002', 0.1642, 2019),
(90, '2', '196407181987032012', 0.123, 2019),
(91, '2', '196702052009011001', 0.0771, 2019),
(92, '2', '197007142008011014', 0.0432, 2019),
(93, '3', '196003051982011013', 0.3446, 2019),
(94, '3', '196005271985041002', 0.252, 2019),
(95, '3', '196007111979071002', 0.1827, 2019),
(96, '3', '196407181987032012', 0.1192, 2019),
(97, '3', '196702052009011001', 0.0614, 2019),
(98, '3', '197007142008011014', 0.0402, 2019),
(99, '4', '196003051982011013', 0.3897, 2019),
(100, '4', '196005271985041002', 0.2515, 2019),
(101, '4', '196007111979071002', 0.1293, 2019),
(102, '4', '196407181987032012', 0.115, 2019),
(103, '4', '196702052009011001', 0.0612, 2019),
(104, '4', '197007142008011014', 0.0534, 2019),
(105, '5', '196003051982011013', 0.3833, 2019),
(106, '5', '196005271985041002', 0.2199, 2019),
(107, '5', '196007111979071002', 0.1603, 2019),
(108, '5', '196407181987032012', 0.1143, 2019),
(109, '5', '196702052009011001', 0.0822, 2019),
(110, '5', '197007142008011014', 0.04, 2019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prioritas_kriteria`
--

CREATE TABLE `prioritas_kriteria` (
  `id_prioritas_kriteria` int(11) NOT NULL,
  `kriteria` int(11) DEFAULT NULL,
  `prioritas` float DEFAULT NULL,
  `periode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prioritas_kriteria`
--

INSERT INTO `prioritas_kriteria` (`id_prioritas_kriteria`, `kriteria`, `prioritas`, `periode`) VALUES
(13, 1, 0.3366, 2019),
(14, 2, 0.2511, 2019),
(15, 3, 0.1667, 2019),
(16, 4, 0.1745, 2019),
(17, 5, 0.0712, 2019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`, `nama`, `jk`) VALUES
('0064169367', 'Dhista Achirul Bahtia', 'L'),
('0065177065', 'Arya Cahyono Ramadhani', 'L'),
('0065433118', 'Muhammad Dafa Al Zahra', 'L'),
('0071064144', 'Dela Meifa Amanda Nurmadani', 'P'),
('0072195064', 'Marcel Satria Dhinata Awaristu', 'L'),
('0072378997', 'Laras Mandasari', 'P'),
('0072505502\r\n', 'Desta Mafikha Ardiana \r\n', 'P\r\n'),
('0073378544', 'Muhammad Fahri Alfarizi', 'L'),
('0073636540', 'Intan Nuraini', 'P'),
('0074182104', 'Aulia Maiya Risda', 'P'),
('0074762755', 'Erza Maulana Fernanda', 'L'),
('0074871512', 'El Fidarina Ashar', 'P'),
('0075295974', 'Muhammad Rafif Naufal', 'L'),
('0075410578', 'Indana Khusnus Syifaa', 'P'),
('0076601227', 'Ilham Jayakusuma', 'L'),
('0076797858', 'Tabina Natsya Putri', 'P'),
('0076936249', 'Inaya Hasyatul Ilma', 'P'),
('0077382487', 'Desviamanda Larasati', 'P'),
('0077547953', 'Della Puspitasari', 'P'),
('0077848904', 'Andika Wahyu Bagus Saputra', 'L'),
('0077987397', 'Nissauma Dannis Fatussunnah', 'P'),
('0078170276', 'Devina Ameilya Rismanda', 'P'),
('0078908999', 'Finda Fitria Rahmadhani', 'P'),
('0079171389', 'Fahrijal Yusi Saputra', 'L'),
('0079268301', 'Karina \'Alindhiya Khofiya', 'P'),
('0079413317', 'Alfinda Riadinata Putri', 'P'),
('0079678259', 'Muhamad Rayhan Syafi\'i', 'L'),
('0082286375', 'Muna Salma Dzakiyya', 'P'),
('0084253298', 'Atha Zhafira Putri Andono', 'P'),
('0084286758', 'Meytha Nadya Safwah', 'P'),
('0085232896', 'Danilo Alonso Putra Jayadi', 'L'),
('0085400350', 'Sherina Cahya Apriandini', 'P'),
('0085516460', 'Irfan Nur Muzakki', 'L'),
('0086129387', 'Fachriza Anas', 'L'),
('0086181615', 'Gianina Racka Montana', 'L'),
('0087835921', 'Denia Mutiara Az Zahra', 'P'),
('1232432243243', 'coba', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(3, 'uhuy', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(4, 'andry', '0f2e7335c9cfd92e5f7c1ea8f35afa5b', 'admin'),
(5, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(10, 'kepala', 'e10adc3949ba59abbe56e057f20f883e', 'kepala');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `nilai_awal`
--
ALTER TABLE `nilai_awal`
  ADD PRIMARY KEY (`id_nilai_awal`);

--
-- Indexes for table `nilai_detail`
--
ALTER TABLE `nilai_detail`
  ADD PRIMARY KEY (`id_nilai_detail`);

--
-- Indexes for table `prioritas_alternatif`
--
ALTER TABLE `prioritas_alternatif`
  ADD PRIMARY KEY (`id_prioritas_alternatif`);

--
-- Indexes for table `prioritas_kriteria`
--
ALTER TABLE `prioritas_kriteria`
  ADD PRIMARY KEY (`id_prioritas_kriteria`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nilai_awal`
--
ALTER TABLE `nilai_awal`
  MODIFY `id_nilai_awal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nilai_detail`
--
ALTER TABLE `nilai_detail`
  MODIFY `id_nilai_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `prioritas_alternatif`
--
ALTER TABLE `prioritas_alternatif`
  MODIFY `id_prioritas_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `prioritas_kriteria`
--
ALTER TABLE `prioritas_kriteria`
  MODIFY `id_prioritas_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
