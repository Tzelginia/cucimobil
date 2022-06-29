-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2022 pada 16.02
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_hp` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nomor_plat` varchar(10) NOT NULL,
  `type_mobil` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `no_hp`, `alamat`, `nomor_plat`, `type_mobil`) VALUES
(1, 'tzelginia', '085806497978', 'Sidoarjo', 'N 1234 TZ', 'Mobil Keluarga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_cucian`
--

CREATE TABLE `jenis_cucian` (
  `id_jenis_cucian` int(1) NOT NULL,
  `jenis_cucian` varchar(50) NOT NULL,
  `biaya` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_cucian`
--

INSERT INTO `jenis_cucian` (`id_jenis_cucian`, `jenis_cucian`, `biaya`) VALUES
(1, 'Cuci Mobil Manual', 40000),
(2, 'Cuci Mobil Hidrolik', 60000),
(3, 'Cuci Mobil Lengkap', 70000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `no_antrian` varchar(20) NOT NULL,
  `id_customer` int(10) NOT NULL,
  `id_jenis_cucian` int(1) NOT NULL,
  `tgl_pendaftaran` date NOT NULL,
  `jam_pendaftaran` time NOT NULL,
  `total_biaya` int(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `no_antrian`, `id_customer`, `id_jenis_cucian`, `tgl_pendaftaran`, `jam_pendaftaran`, `total_biaya`, `status`) VALUES
(1, '2022-06-25/1', 1, 1, '2022-06-25', '12:00:00', 70000, 'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saran`
--

CREATE TABLE `saran` (
  `id_saran` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` varchar(150) NOT NULL,
  `kebersihan` int(3) NOT NULL,
  `keramahan` int(3) NOT NULL,
  `ketelitian` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `saran`
--

INSERT INTO `saran` (`id_saran`, `nama`, `email`, `pesan`, `kebersihan`, `keramahan`, `ketelitian`) VALUES
(3, 'tzelginia', 'tzelginia78@gmail.com', 'bagus', 100, 100, 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `id_pendaftaran` int(11) NOT NULL,
  `no_nota` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `bayar` int(10) NOT NULL,
  `kembali` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `id_user` tinyint(1) NOT NULL,
  `nama_pencuci` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pendaftaran`, `no_nota`, `tanggal`, `bayar`, `kembali`, `total`, `status`, `id_user`, `nama_pencuci`) VALUES
(1, 1, 'C001', '2022-06-25', 100000, 30000, 70000, 'Lunas', 2, 'Nisa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `type_mobil`
--

CREATE TABLE `type_mobil` (
  `id_type_mobil` int(2) NOT NULL,
  `type_mobil` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `type_mobil`
--

INSERT INTO `type_mobil` (`id_type_mobil`, `type_mobil`) VALUES
(6, 'Mobil Keluarga'),
(7, 'Mobil Offroad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(1) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `alamat`, `hp`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'Jl. Bangau Sakti', '091823123', 1),
(2, 'tzelginianc', 'd88099d9223debede9352a338166b11e', 'Tzelginia', 'Sidoarjo', '0822-3146-4030', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `jenis_cucian`
--
ALTER TABLE `jenis_cucian`
  ADD PRIMARY KEY (`id_jenis_cucian`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indeks untuk tabel `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `type_mobil`
--
ALTER TABLE `type_mobil`
  ADD PRIMARY KEY (`id_type_mobil`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `jenis_cucian`
--
ALTER TABLE `jenis_cucian`
  MODIFY `id_jenis_cucian` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `type_mobil`
--
ALTER TABLE `type_mobil`
  MODIFY `id_type_mobil` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
