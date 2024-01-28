-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jan 2024 pada 15.29
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dirtykicks-2023`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `tglorder` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'Cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`idcart`, `orderid`, `userid`, `tglorder`, `status`) VALUES
(10, '15wKVT0nej25Y', 2, '2020-03-16 12:10:42', 'Selesai'),
(11, '15Swf8Ye0Fm.M', 2, '2020-03-16 12:17:34', 'Payment'),
(12, '15PzF03ejd8W2', 1, '2020-05-13 02:40:48', 'Selesai'),
(13, '16IoOWG4Sg93E', 3, '2022-11-29 07:13:07', 'Selesai'),
(14, '16BsLwBcWUBHc', 1, '2023-02-23 08:40:35', 'Selesai'),
(15, '16Np/QI8zgYY6', 1, '2023-02-23 09:16:37', 'Selesai'),
(16, '16vFrdzFasVZg', 1, '2023-02-27 08:14:07', 'Pengiriman'),
(17, '16yOHEg6tz2uA', 1, '2023-02-27 08:16:13', 'Confirmed'),
(18, '16d5XmLCfeG16', 1, '2023-04-06 10:51:19', 'Confirmed'),
(19, '16eOjdnQFmOgw', 1, '2023-04-06 10:52:45', 'Confirmed'),
(20, '16zNMt4c.wdFs', 3, '2023-05-09 08:05:39', 'Selesai'),
(21, '16LwL7TRE04JQ', 1, '2023-06-12 08:48:30', 'Confirmed'),
(22, '16uh6u5sSdk1g', 1, '2023-06-20 14:58:14', 'Payment'),
(23, '16YR45pEb2im6', 6, '2023-06-24 09:55:39', 'Confirmed'),
(24, '16yNxMg.tPCIA', 6, '2023-06-24 11:33:13', 'Cart');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailorder`
--

CREATE TABLE `detailorder` (
  `detailid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detailorder`
--

INSERT INTO `detailorder` (`detailid`, `orderid`, `idproduk`, `qty`) VALUES
(23, '15Swf8Ye0Fm.M', 10, 2),
(24, '16yOHEg6tz2uA', 10, 1),
(25, '16d5XmLCfeG16', 9, 2),
(27, '16zNMt4c.wdFs', 10, 1),
(30, '16eOjdnQFmOgw', 9, 666),
(42, '16LwL7TRE04JQ', 10, 100),
(43, '16uh6u5sSdk1g', 10, 1),
(44, '16YR45pEb2im6', 9, 1),
(45, '16yNxMg.tPCIA', 17, 51);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(4, 'Stopmap', '2023-02-27 07:51:07'),
(6, 'Bolpoint', '2023-02-27 07:51:24'),
(8, 'Buku', '2023-02-27 09:05:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` varchar(25) NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`idkonfirmasi`, `orderid`, `userid`, `payment`, `namarekening`, `tglbayar`, `tglsubmit`) VALUES
(4, '16yOHEg6tz2uA', 1, 'Bank BCA', 'sidang', '2000-12-05', '2023-04-03 08:39:48'),
(5, '16eOjdnQFmOgw', 1, 'Bank BCA', 'asdasdadasd', '2023-06-12', '2023-06-12 08:46:00'),
(6, '16LwL7TRE04JQ', 1, 'Bank BCA', 'a', '0000-00-00', '2023-06-20 08:59:53'),
(7, '16d5XmLCfeG16', 1, 'Bank BCA', 'Ta-1', '0000-00-00', '2023-06-20 15:06:41'),
(8, '16YR45pEb2im6', 6, 'Bank BCA', 'anam', '2023-06-24', '2023-06-24 10:45:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(1, 'Admin', 'admin', '$2y$10$GJVGd4ji3QE8ikTBzNyA0uLQhiGd6MirZeSJV1O6nUpjSVp1eaKzS', '01234567890', 'Indonesia', '2020-03-16 11:31:17', 'Admin', NULL),
(2, 'Guest', 'guest', '$2y$10$xXEMgj5pMT9EE0QAx3QW8uEn155Je.FHH5SuIATxVheOt0Z4rhK6K', '01234567890', 'Indonesia', '2020-03-16 11:30:40', 'Member', NULL),
(3, 'WILLIAM SANTOSO', 'william5122000@gmail.com', '$2y$10$Lqq1hLZlPVeQkq2LhdSvw.IEPo2aMxHF/csydok6l8E5lTNt3tRle', '0895632462416', 'Jl. Suburban 345', '2022-11-29 07:12:51', 'Member', NULL),
(4, 'asdasdadasd', '', '$2y$10$BHXWb.yysJSR/efnOifgpOgmIfrAx0kdrkSy0Xmm6eeUXpiGMq.5q', '0896', 'Jl. ABG 2', '2023-06-15 12:42:18', 'Member', NULL),
(5, 'ABCDE', 'ashiap23@gmail.com', '$2y$10$/ygEvprHhMcaaNTGEhCDcu2lo3ZIpVIoIKDbas9S4iLoe7BkmbINC', '089000', 'Jl. ABG 2', '2023-06-15 12:44:08', 'Member', NULL),
(6, 'andhika', 'andhika@gmail.com', '$2y$10$Vd23c7u8dulUCTiPmoMlxOXp02HQSBhqw.szCTJH1rgip0mc1sU.y', '32894791', 'asdfasf', '2023-06-24 07:49:05', 'Member', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text DEFAULT NULL,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(1, 'Bank BCA', 'XXXXXX', 'images/bca.jpg', 'Soto Ayam Grafika'),
(2, 'Bank Mandiri', 'XXXXXX', 'images/mandiri.jpg', 'Soto Ayam Grafika'),
(3, 'DANA', 'XXXXXX', 'images/dana.png', 'Soto Ayam Grafika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`, `tgldibuat`) VALUES
(9, 4, 'Bantex Magazine', 'produk/stopmap1.png', 'Magazine file dengan disain baru yang terurai dalam elemen yang mudah dipasang dengan konstruksi yang kokoh.', 5, 100000, 95000, '2023-03-02 07:03:09'),
(10, 4, 'Diamond map', 'produk/stopmap2.png', 'map kertas berwarna, yang sering digunakan oleh para pengguna untuk menyimpan dokumen. Map kertas ini berbahan tebal, dengan kualitas terbaik.', 5, 100000, 109000, '2023-03-02 07:04:04'),
(11, 4, 'King Jim Map Snell', 'produk/stopmap3.png', 'MAP SNELL BISNIS FILE FOLIO SPRING FILE F4 SNELLHECKTER KING JIM 4437GA-F MAP LUBANG DUA HITAM BIRU\r\n', 5, 70000, 75000, '2023-03-02 07:05:00'),
(12, 6, 'Faster Pulpen Cetek', 'produk/bolpen1.png', 'Ballpoint with stainless steel cup, rubber grip and spiral refill. Extra fine ballpoint pen.', 5, 40000, 42000, '2023-03-02 07:24:58'),
(13, 6, 'Standard Pulpen Techno', 'produk/bolpen2.png', 'PULPEN/PENA STANDARD TECNO 0,38 MM HITAM. STANDARD PEN TECNO 0.38', 5, 19000, 21000, '2023-03-02 07:26:05'),
(16, 6, 'Zebra Pulpen Sarasa', 'produk/bolpen3.png', '- Retractable, Water-based, Pigment Gel Ink\r\n- Smooth writing pen equiped with a binder clip', 5, 15000, 20000, '2023-03-02 07:33:54'),
(17, 8, 'Sinar Dunia Buku Tulis', 'produk/buku1.png', 'Buku Tulis Sinar dunia buku tulis 38 lembar ethnic 32 pack x 10 pcs per karton', 5, 35000, 32000, '2023-03-02 07:36:19'),
(19, 8, 'Kiky Buku Hard Cover', 'produk/buku2.png', 'Buku Tulis ukuran Folio isi 100 Lembar. Harga untuk per pcs/per unit Kualitas kertas terbaik dan tidak bau', 5, 50000, 45000, '2023-03-02 07:53:54'),
(22, 6, 'Mitsubishi Pencil', 'produk/bolpen4.png', 'Uni Jetstream Multi Ballpoint Pen 4+1 0.38mm Mitsubishi MSXE5100038', 5, 35000, 30000, '2023-03-02 07:57:14'),
(23, 8, 'Buku Ekspedisi Hardcover', 'produk/buku3.png', 'BUKU EXPEDISI HARDCOVER PAPERLINE. Cover buku tebal dan tidak mudah rusak. Lebih kuat, lebih tahan lama dan terkesan eksklusif.', 5, 25000, 19000, '2023-03-02 07:59:46'),
(24, 8, 'Apica Notebook', 'produk/buku4.png', 'Notebook A5 bisa digunakan untuk sekolah, kuliah dan perkantoran. Ukuran A5 50lembar dengan 24 lubang 7mm.', 5, 60000, 50000, '2023-03-02 08:01:22'),
(28, 6, 'Snowman Pulpen', 'produk/bolpen5.png', 'Ballpoint pen, fine point 0,7mm. Designed with attention to detail for comfort writing.', 5, 45000, 40000, '2023-03-02 08:14:40'),
(29, 4, 'Bambi Business A4', 'produk/stopmap4.png', 'Magazine file dengan disain baru yang terurai dalam elemen yang mudah dipasang dengan konstruksi yang kokoh.', 5, 100000, 95000, '2023-03-02 07:03:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`),
  ADD UNIQUE KEY `orderid` (`orderid`),
  ADD KEY `orderid_2` (`orderid`);

--
-- Indeks untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  ADD PRIMARY KEY (`detailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`idkonfirmasi`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `idkonfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `idproduk` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `cart` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
