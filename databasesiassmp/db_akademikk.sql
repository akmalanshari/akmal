-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2017 at 05:14 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_guru`
--

CREATE TABLE `data_guru` (
  `id_guru` varchar(7) NOT NULL,
  `nama_guru` varchar(20) NOT NULL,
  `nip` varchar(12) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `tgl` int(2) NOT NULL,
  `bln` varchar(15) NOT NULL,
  `thn` int(4) NOT NULL,
  `kelamin` enum('laki-laki','perempuan') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat_guru` text NOT NULL,
  `tm_tanggal` int(2) NOT NULL,
  `tm_bulan` varchar(15) NOT NULL,
  `tm_tahun` int(4) NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_guru`
--

INSERT INTO `data_guru` (`id_guru`, `nama_guru`, `nip`, `kota`, `tgl`, `bln`, `thn`, `kelamin`, `agama`, `alamat_guru`, `tm_tanggal`, `tm_bulan`, `tm_tahun`, `pendidikan`, `jabatan`, `username`, `password`) VALUES
('1170010', 'Bambang Sutoyo S.Pd.', '19770905 084', 'Brebes', 3, '09', 1977, 'laki-laki', 'Islam', 'Jalan Raya Brebes nomor 42', 5, '02', 2011, 'S1', 'Guru', 'bambang', '1234'),
('1170012', 'Elsih S.Pd.', '19820328 072', 'Kuningan', 3, '28', 1982, 'perempuan', 'Islam', 'Perumahan Karapitan blok B6 nomor 17', 5, '02', 2013, 'S1', 'Guru','elsih', '1234'),
('1170017', 'Martinus M.Pd.', '19721130 012', 'Singkarak', 30, '11', 1972, 'laki-laki', 'Kristen', 'Komplek Kejaksaan Agung nomor 17', 5, '02', 2009, 'S2', 'Kepala Sekolah', 'martinus', '1234'),
('1170026', 'Erna Sutoyo A.Md.', '19860314 061', 'Karawang', 14, '03', 1986, 'laki-laki', 'Islam', 'Jl. Kemuning 7 nomor 12a', 5, '02', 2013, 'D3', 'Guru','erna', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id_siswa` varchar(7) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `nis` varchar(12) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `tgl` int(2) NOT NULL,
  `bln` varchar(10) NOT NULL,
  `thn` int(4) NOT NULL,
  `kelamin` enum('laki-laki','perempuan') NOT NULL,
  `agama` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `anakke` varchar(10) NOT NULL,
  `alamat_siswa` text NOT NULL,
  `telpon_siswa` varchar(12) NOT NULL,
  `sekolahasal` varchar(20) NOT NULL,
  `kelas` varchar(6) NOT NULL,
  `pd_tgl` int(2) NOT NULL,
  `pd_bln` varchar(10) NOT NULL,
  `pd_thn` int(4) NOT NULL,
  `ayah` varchar(30) NOT NULL,
  `ibu` varchar(30) NOT NULL,
  `alamatortu` varchar(40) NOT NULL,
  `hportu` varchar(13) NOT NULL,
  `pekerjaanayah` varchar(20) NOT NULL,
  `pekerjaanibu` varchar(20) NOT NULL,
  `wali` varchar(30) NOT NULL,
  `alamatwali` varchar(40) NOT NULL,
  `hpwali` varchar(13) NOT NULL,
  `pekerjaanwali` varchar(20) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`id_siswa`, `nama_siswa`, `nis`, `nisn`, `kota`, `tgl`, `bln`, `thn`, `kelamin`, `agama`, `status`, `anakke`, `alamat_siswa`, `telpon_siswa`, `sekolahasal`, `kelas`, `pd_tgl`, `pd_bln`, `pd_thn`, `ayah`, `ibu`, `alamatortu`, `hportu`, `pekerjaanayah`, `pekerjaanibu`, `wali`, `alamatwali`, `hpwali`, `pekerjaanwali`, `gambar`, `username`, `password`) VALUES
('1552401', 'Anjani Putri', '110798112', '9978540012', 'Bekasi', 17, 'januari', 2000, 'perempuan', 'Islam', 'Anak Kandung', 'III', 'Jl. Bougenville Raya nomor 17', '081276859903', 'MTS Al - Fattah', 'X 1', 3, 'Januari', 2017, 'Hendra', 'Yuni', 'Jl. Bougenville Raya nomor 17', '081294405132', 'Wiraswasta', 'Ibu Rumah Tangga', '', '', '', '', '', 'anjani', '1234'),
('1552402', 'Pradana Putra', '110798112', '9978540376', 'Solo', 4, 'September', 2001, 'laki-laki', 'Islam', 'Anak Kandung', 'II', 'Jl. Delima Raya nomor 23', '085676824771', 'SMPN 13 Petang', 'X 2', 3, 'Januari', 2017, 'Yusuf', 'Heni', 'Jl. Delima Raya nomor 23', '081287559545', 'Karyawan Swasta', 'PNS', '', '', '', '', '', 'putra', '1234'),
('1552403', 'Anandito Caesar', '110798112', '9978540015', 'Jakarta', 9, 'Desember', 1999, 'laki-laki', 'Kristen', 'Anak Kandung', 'III', 'Komplek Kejaksaan Agung blok A3 nomor 2', '089588530446', 'SMP Santa Putra', 'X 1', 3, 'Januari', 2017, 'James', 'Issabell', 'Komplek Kejaksaan Agung blok A3 nomor 2', '081290468557', 'Wiraswasta', 'Wiraswasta', 'Jully', 'Jl. Pegangsaan Raya nomor 1', '081277648235', 'Wiraswasta', '', 'caesar', '1234'),
('1552404', 'Yusuf Ramadhan ', '110798112', '9978540227', 'Jakarta', 5, 'Desember', 2000, 'laki-laki', 'Islam', 'Anak Kandung', 'I', 'Perumahan Tripatula Blok C11 nomor 17', '081249875504', 'SMPN 13 Petang', 'X 3', 3, 'Januari', 2017, 'Supri', 'Haminah', 'Perumahan Tripatula Blok C11 nomor 17', '085644978856', 'PNS', 'PNS', '', '', '', '', '', 'yusuf', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `setup_kelas`
--

CREATE TABLE `setup_kelas` (
  `id_kelas` varchar(7) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setup_kelas`
--

INSERT INTO `setup_kelas` (`id_kelas`, `nama_kelas`) VALUES
('A1', 'X 3'),
('A2', 'X 2'),
('A3', 'X 1');

-- --------------------------------------------------------

--
-- Table structure for table `setup_pelajaran`
--

CREATE TABLE `setup_pelajaran` (
  `id_pelajaran` varchar(7) NOT NULL,
  `nama_pelajaran` varchar(50) NOT NULL,
  `kkm` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setup_pelajaran`
--

INSERT INTO `setup_pelajaran` (`id_pelajaran`, `nama_pelajaran`, `kkm`) VALUES
('ENG', 'Bahasa Inggris', '78'),
('IND', 'Bahasa Indonesia', '82'),
('IPA', ' Ilmu Pengetahuan Alam', '71'),
('IPS', ' Ilmu Pengetahuan Sosial', '78'),
('JAW', 'Bahasa Jawa', '70'),
('JEP', 'Bahasa Jepang', '71'),
('MTK', 'Matematika', '74'),
('PAI', 'Pendidikan Agama Islam', '80'),
('PENJAS', 'Penjaskes', '83'),
('PKN', 'Pendidikan Kewarganegaraan', '74'),
('SBK', 'Seni Budaya dan Keterampilan', '84'),
('TIK', 'TIK', '84');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jadwal` varchar(7) NOT NULL,
  `nama_pelajaran` varchar(50) NOT NULL,
  `kkm` int(3) NOT NULL,
  `id_guru` varchar(7) NOT NULL,
  `kelas` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jadwal`, `nama_pelajaran`, `kkm`, `id_guru`, `kelas`) VALUES
('AA01', 'Ilmu Pengetahuan Alam', 71, '1170010', 'X 1'),
('AA02', 'Ilmu Pengetahuan Alam', 71, '1170010', 'X 2'),
('AA03', 'Ilmu Pengetahuan Alam', 71, '1170010', 'X 3'),
('AA04', 'Matematika', 74, '1170010', 'X 1'),
('AA05', 'Matematika', 74, '1170010', 'X 2'),
('AA06', 'Matematika', 74, '1170010', 'X 3'),
('AA07', ' Ilmu Pengetahuan Sosial', 78, '1170012', 'X 1'),
('AA08', ' Ilmu Pengetahuan Sosial', 78, '1170012', 'X 2'),
('AA09', ' Ilmu Pengetahuan Sosial', 78, '1170012', 'X 3'),
('AA10', 'Bahasa Inggris', 78, '1170017', 'X 1'),
('AA11', 'Bahasa Inggris', 78, '1170017', 'X 2'),
('AA12', 'Bahasa Inggris', 78, '1170017', 'X 3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id_nilai` varchar(7) NOT NULL,
  `id_siswa` varchar(7) NOT NULL,
  `id_jadwal` varchar(7) NOT NULL,
  `kelas` varchar(7) NOT NULL,
  `id_guru` varchar(7) NOT NULL,
  `nilai_uh1` int(3) NOT NULL,
  `nilai_uh2` int(3) NOT NULL,
  `nilai_uh3` int(3) NOT NULL,
  `nilai_uh4` int(3) NOT NULL,
  `nilai_uh5` int(3) NOT NULL,
  `rata_uh` int(3) NOT NULL,
  `nilai_tugas1` int(3) NOT NULL,
  `nilai_tugas2` int(3) NOT NULL,
  `nilai_tugas3` int(3) NOT NULL,
  `nilai_tugas4` int(3) NOT NULL,
  `rata_tugas` int(3) NOT NULL,
  `nilai_harian` int(3) NOT NULL,
  `nilai_uas` int(3) NOT NULL,
  `nilai_rapor` int(3) NOT NULL,
  `kkm` int(3) NOT NULL,
  `ket` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `id_siswa`, `id_jadwal`, `kelas`, `id_guru`, `nilai_uh1`, `nilai_uh2`, `nilai_uh3`, `nilai_uh4`, `nilai_uh5`, `rata_uh`, `nilai_tugas1`, `nilai_tugas2`, `nilai_tugas3`, `nilai_tugas4`, `rata_tugas`, `nilai_harian`, `nilai_uas`, `nilai_rapor`, `kkm`, `ket`) VALUES
('', '1552403', 'AA01', 'X 1', '1170010', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, ' Tidak Lulus');

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `id_admin` int(3) NOT NULL,
  `nama_admin` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Tobiah', 'admin', '1234'),
(5, 'Dalbanisme', 'admin1', '123'),
(8, 'Dolby', 'admin2', '12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_guru`
--
ALTER TABLE `data_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `setup_kelas`
--
ALTER TABLE `setup_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `setup_pelajaran`
--
ALTER TABLE `setup_pelajaran`
  ADD PRIMARY KEY (`id_pelajaran`),
  ADD UNIQUE KEY `nama_pelajaran` (`nama_pelajaran`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `tbl_jadwal_ibfk_1` (`id_guru`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `tbl_nilai_ibfk_2` (`id_jadwal`);

--
-- Indexes for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD CONSTRAINT `tbl_jadwal_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `data_guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD CONSTRAINT `tbl_nilai_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `data_siswa` (`id_siswa`),
  ADD CONSTRAINT `tbl_nilai_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `tbl_jadwal` (`id_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_nilai_ibfk_3` FOREIGN KEY (`id_guru`) REFERENCES `data_guru` (`id_guru`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
