-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Des 2021 pada 03.13
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edc_inventory`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `edc`
--

CREATE TABLE `edc` (
  `sn` varchar(40) NOT NULL,
  `merk` varchar(40) NOT NULL,
  `mid` varchar(40) NOT NULL,
  `tid` varchar(40) NOT NULL,
  `gprs` tinyint(1) NOT NULL,
  `lan` tinyint(1) NOT NULL,
  `dialup` tinyint(1) NOT NULL,
  `contactless` tinyint(1) NOT NULL,
  `peruntukan` varchar(40) NOT NULL,
  `posisi_kanwil` varchar(40) NOT NULL,
  `posisi_uker` varchar(40) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `edc`
--

INSERT INTO `edc` (`sn`, `merk`, `mid`, `tid`, `gprs`, `lan`, `dialup`, `contactless`, `peruntukan`, `posisi_kanwil`, `posisi_uker`, `status`) VALUES
('sn1234567890', 'PAX S900', 'mid123456789', 'tid12345', 1, 1, 1, 0, 'Merchant', '1', '1-3', 'available'),
('sn1234567891', 'Verifone C680', 'mid123456789', 'tid12345', 1, 1, 1, 0, 'Merchant', '1', '1-1', 'terpasang'),
('sn1234567892', 'Verifone VX 675', 'mid123456789', 'tid12345', 1, 1, 1, 0, 'Merchant', '3', '3-1', 'available'),
('sn1234567893', 'PAX S900', 'mid123456789', 'tid12345', 1, 1, 1, 0, 'Brilink', '3', '3-2', 'rusak'),
('sn1234567894', 'Verifone C680', 'mid123456789', 'tid12345', 1, 1, 1, 0, 'UKER', '1', '1-3', 'available'),
('sn1234567895', 'PAX 210', 'mid123456789', 'tid12345', 1, 1, 1, 0, 'Brilink', '3', '3-3', 'terpasang'),
('sn1234567896', 'PAX S900', 'mid123456789', 'tid12345', 1, 1, 1, 0, 'Merchant', '3', '3-3', 'rusak'),
('sn1234567897', 'PAX 210', 'mid123456789', 'tid12345', 1, 1, 1, 0, 'Brilink', '1', '1-3', 'available'),
('sn1234567898', 'Nexgo G3', 'mid123456789', 'tid12345', 1, 1, 1, 0, 'Merchant', '1', '1-1', 'rusak'),
('sn1234567899', 'PAX S900', 'mid123456789', 'tid12345', 1, 1, 1, 0, 'Merchant', '3', '3-3', 'available'),
('sn1234567901', 'Ingenico IWL220', 'mid123456789', 'tid12345', 1, 1, 1, 0, 'Merchant', '1', '1-1', 'available');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `sn` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `kegiatan` varchar(10) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(40) NOT NULL,
  `keterangan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`sn`, `username`, `kegiatan`, `waktu`, `status`, `keterangan`) VALUES
('sn1234567890', 'admin', 'tambah', '2021-11-10 06:02:45', 'available', '{\"sn\":\"sn1234567890\",\"mid\":\"mid123456789\",\"tid\":\"tid12345\",\"status\":\"available\",\"posisi_kanwil\":\"1\",\"posisi_uker\":\"1-3\",\"peruntukan\":\"Merchant\",\"merk\":\"PAX S900\",\"gprs\":\"1\",\"lan\":\"1\",\"dialup\":\"1\",\"contactless\":null}'),
('sn1234567891', 'admin', 'tambah', '2021-11-10 06:03:37', 'terpasang', '{\"sn\":\"sn1234567891\",\"mid\":\"mid123456789\",\"tid\":\"tid12345\",\"status\":\"terpasang\",\"posisi_kanwil\":\"1\",\"posisi_uker\":\"1-1\",\"peruntukan\":\"Merchant\",\"merk\":\"Verifone C680\",\"gprs\":\"1\",\"lan\":\"1\",\"dialup\":\"1\",\"contactless\":null}'),
('sn1234567892', 'admin', 'tambah', '2021-11-10 06:04:10', 'available', '{\"sn\":\"sn1234567892\",\"mid\":\"mid123456789\",\"tid\":\"tid12345\",\"status\":\"available\",\"posisi_kanwil\":\"3\",\"posisi_uker\":\"3-1\",\"peruntukan\":\"Merchant\",\"merk\":\"Verifone VX 675\",\"gprs\":\"1\",\"lan\":\"1\",\"dialup\":\"1\",\"contactless\":null}'),
('sn1234567893', 'admin', 'tambah', '2021-11-10 06:04:24', 'rusak', '{\"sn\":\"sn1234567893\",\"mid\":\"mid123456789\",\"tid\":\"tid12345\",\"status\":\"rusak\",\"posisi_kanwil\":\"3\",\"posisi_uker\":\"3-2\",\"peruntukan\":\"Brilink\",\"merk\":\"PAX S900\",\"gprs\":\"1\",\"lan\":\"1\",\"dialup\":\"1\",\"contactless\":null}'),
('sn1234567894', 'admin', 'tambah', '2021-11-10 06:04:56', 'available', '{\"sn\":\"sn1234567894\",\"mid\":\"mid123456789\",\"tid\":\"tid12345\",\"status\":\"available\",\"posisi_kanwil\":\"1\",\"posisi_uker\":\"1-3\",\"peruntukan\":\"UKER\",\"merk\":\"Verifone C680\",\"gprs\":\"1\",\"lan\":\"1\",\"dialup\":\"1\",\"contactless\":null}'),
('sn1234567895', 'admin', 'tambah', '2021-11-10 06:05:11', 'terpasang', '{\"sn\":\"sn1234567895\",\"mid\":\"mid123456789\",\"tid\":\"tid12345\",\"status\":\"terpasang\",\"posisi_kanwil\":\"3\",\"posisi_uker\":\"3-3\",\"peruntukan\":\"Brilink\",\"merk\":\"PAX 210\",\"gprs\":\"1\",\"lan\":\"1\",\"dialup\":\"1\",\"contactless\":null}'),
('sn1234567896', 'admin', 'tambah', '2021-11-10 06:05:40', 'rusak', '{\"sn\":\"sn1234567896\",\"mid\":\"mid123456789\",\"tid\":\"tid12345\",\"status\":\"rusak\",\"posisi_kanwil\":\"3\",\"posisi_uker\":\"3-3\",\"peruntukan\":\"Merchant\",\"merk\":\"PAX S900\",\"gprs\":\"1\",\"lan\":\"1\",\"dialup\":\"1\",\"contactless\":null}'),
('sn1234567897', 'admin', 'tambah', '2021-11-10 06:05:56', 'available', '{\"sn\":\"sn1234567897\",\"mid\":\"mid123456789\",\"tid\":\"tid12345\",\"status\":\"available\",\"posisi_kanwil\":\"1\",\"posisi_uker\":\"1-3\",\"peruntukan\":\"Brilink\",\"merk\":\"PAX 210\",\"gprs\":\"1\",\"lan\":\"1\",\"dialup\":\"1\",\"contactless\":null}'),
('sn1234567898', 'admin', 'tambah', '2021-11-10 06:06:12', 'rusak', '{\"sn\":\"sn1234567898\",\"mid\":\"mid123456789\",\"tid\":\"tid12345\",\"status\":\"rusak\",\"posisi_kanwil\":\"1\",\"posisi_uker\":\"1-1\",\"peruntukan\":\"Merchant\",\"merk\":\"Nexgo G3\",\"gprs\":\"1\",\"lan\":\"1\",\"dialup\":\"1\",\"contactless\":null}'),
('sn1234567899', 'admin', 'tambah', '2021-11-10 06:08:27', 'available', '{\"sn\":\"sn1234567899\",\"mid\":\"mid123456789\",\"tid\":\"tid12345\",\"status\":\"available\",\"posisi_kanwil\":\"3\",\"posisi_uker\":\"3-3\",\"peruntukan\":\"Merchant\",\"merk\":\"PAX S900\",\"gprs\":\"1\",\"lan\":\"1\",\"dialup\":\"1\",\"contactless\":null}'),
('sn1234567901', 'admin', 'tambah', '2021-11-10 06:08:57', 'available', '{\"sn\":\"sn1234567901\",\"mid\":\"mid123456789\",\"tid\":\"tid12345\",\"status\":\"available\",\"posisi_kanwil\":\"1\",\"posisi_uker\":\"1-1\",\"peruntukan\":\"Merchant\",\"merk\":\"Ingenico IWL220\",\"gprs\":\"1\",\"lan\":\"1\",\"dialup\":\"1\",\"contactless\":null}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reporting`
--

CREATE TABLE `reporting` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `date2` date NOT NULL,
  `date3` date NOT NULL,
  `merek` varchar(200) NOT NULL,
  `briit` int(10) NOT NULL,
  `visionet` int(10) NOT NULL,
  `indopay` int(10) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `maker` varchar(100) NOT NULL,
  `checker` longtext NOT NULL,
  `signer` varchar(100) NOT NULL,
  `status1` int(1) NOT NULL,
  `status2` int(1) NOT NULL,
  `status3` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reporting`
--

INSERT INTO `reporting` (`id`, `date`, `date2`, `date3`, `merek`, `briit`, `visionet`, `indopay`, `keterangan`, `maker`, `checker`, `signer`, `status1`, `status2`, `status3`) VALUES
(1, '2021-11-10', '2021-11-30', '2021-12-07', 'Ingenico EFT930G', 2, 1, 2, 'Baik', 'maker', 'checker', 'signer', 0, 0, 0),
(2, '2021-11-30', '2021-11-30', '2021-12-07', 'Ingenico 5100', 1, 0, 1, '', 'maker', 'checker', 'signer', 1, 1, 1),
(3, '2021-12-07', '2021-12-07', '0000-00-00', 'Ingenico IWL220', 1, 3, 3, 'ok', 'maker', 'checker', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `uker`
--

CREATE TABLE `uker` (
  `kode_branch` varchar(40) NOT NULL,
  `nama_uker` varchar(40) DEFAULT NULL,
  `kode_kanwil` varchar(40) DEFAULT NULL,
  `nama_kanwil` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `uker`
--

INSERT INTO `uker` (`kode_branch`, `nama_uker`, `kode_kanwil`, `nama_kanwil`) VALUES
('1-1', 'dayeuhkolot', '1', 'bandung'),
('1-2', 'dago', '1', 'bandung'),
('1-3', 'majalaya', '1', 'bandung'),
('1-4', 'lembang', '1', 'bandung'),
('1-5', 'kanwil bandung', '1', 'bandung'),
('2-1', 'gunung pati', '2', 'semarang'),
('2-2', 'sekaran', '2', 'semarang'),
('2-3', 'patih sampun', '2', 'semarang'),
('2-4', 'tugu muda', '2', 'semarang'),
('3-1', 'pancoran', '3', 'jakarta'),
('3-2', 'simpang lima', '3', 'jakarta'),
('3-3', 'hotel indonesia', '3', 'jakarta'),
('3-4', 'ciliwung', '3', 'jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tier` varchar(30) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `nama`, `password`, `tier`, `status`) VALUES
('admin', '', 'c', 'admin', 1),
('checker', '', 'c', 'checker', 1),
('checker1', '', 'c', 'checker', 0),
('maker', '', 'c', 'maker', 1),
('maker1', '', 'c', 'maker', 0),
('signer', '', 'c', 'signer', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `edc`
--
ALTER TABLE `edc`
  ADD PRIMARY KEY (`sn`);

--
-- Indeks untuk tabel `reporting`
--
ALTER TABLE `reporting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `uker`
--
ALTER TABLE `uker`
  ADD PRIMARY KEY (`kode_branch`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `reporting`
--
ALTER TABLE `reporting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
