-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Agu 2018 pada 00.57
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
`nis` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `thn_masuk` varchar(5) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1443020 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`nis`, `nama`, `tmpt_lahir`, `tgl_lahir`, `jk`, `kelas`, `thn_masuk`, `gambar`) VALUES
(1443018, 'Komang', 'L 2', '2018-07-31', 'L', 'XI-10', '2016', 'Tulips.jpg'),
(1443019, 'ledi hildawan', 'selili samarinda', '2018-08-01', 'L', 'XI-10', '2016', 'Hydrangeas.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
`id_buku` int(5) NOT NULL,
  `no_induk` varchar(30) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `thn_terbit` varchar(4) NOT NULL,
  `asal_buku` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `no_induk`, `judul`, `pengarang`, `penerbit`, `thn_terbit`, `asal_buku`, `jumlah_buku`, `tgl_input`) VALUES
(15, '67377', 'Ilmu Sosial', 'Tim Erlangga', 'Erlangga', '2012', 'Proyek', 98, '2018-07-27 23:50:12'),
(16, '67378', 'php', 'Tim Erlangga', 'Erlangga', '2004', 'Proyek', 49, '2018-07-31 00:37:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
`id_t` int(11) NOT NULL,
  `judul` varchar(20) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tgl_pinjam` varchar(15) NOT NULL,
  `tgl_kembali` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_t`, `judul`, `nim`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`, `ket`) VALUES
(9, 'sang pembimbing', 2010, 'sanjaya', '27-02-2018', '06-03-2018', 'Kembali', 'pinjam'),
(10, 'sang pembimbing', 8732, 'anang', '27-02-2018', '28-02-2018', 'Kembali', 'pinjam'),
(11, 'Mentari Pagi', 2010, 'sanjaya', '28-02-2018', '01-03-2018', 'Kembali', 'Pinjam'),
(12, 'Mentari Pagi', 2010, 'sanjaya', '04-04-2018', '05-04-2018', 'Kembali', 'pinjam'),
(13, 'sang pembimbing', 2010, 'sanjaya', '20-07-2018', '21-07-2018', 'Kembali', 'Pinjam'),
(14, 'Mentari Pagi', 2010, 'sanjaya', '20-07-2018', '21-07-2018', 'Kembali', 'pinjam'),
(15, 'php', 2010, 'ancah', '20-07-2018', '21-07-2018', 'Kembali', 'Pinjam'),
(16, 'Mentari Pagi', 8732, 'acok', '21-07-2018', '22-07-2018', 'Kembali', 'Pinjam'),
(17, 'Ilmu Sosial', 2010, 'ancah', '27-07-2018', '28-07-2018', 'Pinjam', 'pinjam'),
(18, 'php', 8732, 'acok', '28-07-2018', '29-07-2018', 'Pinjam', 'Pinjam'),
(19, 'Ilmu Sosial', 2010, 'ancah', '31-07-2018', '01-08-2018', 'Kembali', 'pinjam'),
(20, 'Ilmu Sosial', 8732, 'Komang Ari', '01-08-2018', '08-08-2018', 'Pinjam', 'pinjam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(3, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `validasi`
--

CREATE TABLE IF NOT EXISTS `validasi` (
`id_validasi` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `nip` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `validasi`
--

INSERT INTO `validasi` (`id_validasi`, `nama`, `jabatan`, `nip`) VALUES
(1, 'Komang', 'Ketua Perpus', '1443067');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
 ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
 ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`id_t`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `validasi`
--
ALTER TABLE `validasi`
 ADD PRIMARY KEY (`id_validasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
MODIFY `nis` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1443020;
--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
MODIFY `id_buku` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
MODIFY `id_t` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `validasi`
--
ALTER TABLE `validasi`
MODIFY `id_validasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
