-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2022 pada 15.34
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, 'Mahfi', '082139123', 'Jl. Paus', 'BM 0128 AQ', 'Avanza'),
(2, 'Suradi', '08129389213', 'Jl. Nangka', 'BM 9821 XX', 'Innova'),
(3, 'Yuyun', '0912039123', 'Jl. Pepaya', 'BM 1239 BB', 'Innova'),
(4, 'Ucok', '019203012', 'Jl. Hangtuah', 'BK 1238 AC', 'Avanza'),
(5, 'bali', '0876655', 'jl.saku', 'bm.688', 'Jazz'),
(6, 'Adit', '082288778105', 'Jl.Delima', 'BM 4942 UU', 'Jazz'),
(7, 'erdiman', '0812565445', 'jl.kutilang', 'bm5654ht', 'Avanza'),
(8, 'Ahmad', '082287084520', 'jl. rajawali', 'BM 1234 AU', 'Innova'),
(9, 'Andi', '085234678910', 'Jl. Cipta Karya', 'BM 3123 AA', 'Avanza'),
(10, 'HUGO', '08129389123', 'Jl. Melati', 'BM 1241 GC', 'Jazz'),
(11, 'MAX', '9812938123', 'Jl. MAX', 'BM MAX 69', 'Innova'),
(12, 'COBA JAM', '98192839123', 'Jl. Sekuntum', 'BM ', 'Avanza'),
(13, 'Khairun Nisa', '082337891832', 'Sumenep', 'M 1573 JY', 'Innova'),
(14, 'Eka Septianing', '081773455620', 'Malang', 'N 1002 JZ', 'Jazz'),
(15, 'Fitri', '082337891800', 'Surabaya', 'L 1580 JY', 'Mobil Offroad'),
(16, 'Fitri', '082337891800', 'Surabaya', 'L 1580 JY', 'Mobil Offroad');

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
(2, 'Cucian Body', 40000),
(5, 'Cucian Menyeluruh', 60000);

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
(1, '2020-06-23/1', 1, 2, '2020-06-23', '03:50:56', 35000, 'Lunas'),
(2, '2020-06-24/1', 2, 2, '2020-06-24', '19:22:34', 35000, 'Lunas'),
(3, '2020-06-24/2', 3, 5, '2020-06-24', '19:27:05', 45000, 'Pendaftaran'),
(4, '2020-06-24/3', 4, 5, '2020-06-24', '00:28:38', 45000, 'Pendaftaran'),
(5, '2020-06-24/6', 5, 2, '2020-06-25', '22:22:54', 35000, 'Lunas'),
(6, '2020-06-24/7', 6, 5, '2020-06-24', '22:42:43', 45000, 'Lunas'),
(7, '2020-06-27/1', 7, 2, '2020-06-27', '15:14:10', 35000, 'Lunas'),
(8, '2020-06-29/1', 8, 5, '2020-06-29', '00:27:56', 45000, 'Lunas'),
(10, '2020-06-29/2', 9, 2, '2020-06-29', '00:39:54', 35000, 'Lunas'),
(11, '2020-07-05/1', 10, 5, '2020-07-05', '14:41:04', 45000, 'Pendaftaran'),
(12, '2020-07-05/2', 11, 2, '2020-07-05', '15:30:00', 35000, 'Dalam Pengerjaan'),
(13, '2020-07-05/3', 12, 2, '2020-07-05', '15:31:00', 35000, 'Lunas'),
(14, '2022-06-22/1', 13, 5, '2022-06-22', '16:33:00', 45000, 'Lunas'),
(15, '2022-06-22/2', 14, 2, '2022-06-22', '11:45:00', 40000, 'Pendaftaran'),
(16, '2022-06-22/3', 15, 5, '2022-06-22', '10:08:00', 60000, 'Pendaftaran'),
(17, '2022-06-22/4', 16, 5, '2022-06-22', '12:08:00', 0, 'Pendaftaran');

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
(1, 'Adit', 'aditwijaya@gmail.com', 'Pelayanannya sangat baik dan memuaskan', 90, 80, 90),
(2, 'erdiman', 'erdiman@gmail.com', 'sangat puas', 90, 90, 90);

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
(1, 1, 'C001', '2020-06-23', 50000, 15000, 35000, 'Lunas', 3, ''),
(2, 0, '', '0000-00-00', 0, 0, 0, '', 0, ''),
(3, 2, '1', '2020-06-24', 50000, 15000, 35000, 'Lunas', 1, ''),
(4, 8, '2', '2020-06-24', 100000, 55000, 45000, 'Lunas', 1, ''),
(5, 9, '3', '2020-06-26', 50000, 5000, 45000, 'Lunas', 1, ''),
(6, 5, '4', '2020-06-26', 50000, 15000, 35000, 'Lunas', 1, ''),
(7, 8, '5', '2020-06-27', 50000, 15000, 35000, 'Lunas', 1, ''),
(8, 10, '6', '2020-06-29', 100000, 65000, 35000, 'Lunas', 1, ''),
(9, 8, '7', '2020-06-29', 100000, 55000, 45000, 'Lunas', 1, ''),
(10, 13, '8', '2020-07-05', 40000, 5000, 35000, 'Lunas', 1, 'Sueb'),
(11, 14, '9', '2022-06-22', 50000, 5000, 45000, 'Lunas', 1, 'Yanto');

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
(4, 'Mobil Offroad'),
(5, 'Mobil Keluarga');

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
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'Jl. Bangau Sakti', '091823123', 1);

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
  MODIFY `id_customer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `jenis_cucian`
--
ALTER TABLE `jenis_cucian`
  MODIFY `id_jenis_cucian` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `type_mobil`
--
ALTER TABLE `type_mobil`
  MODIFY `id_type_mobil` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
