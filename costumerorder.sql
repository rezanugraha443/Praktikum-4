-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2022 pada 16.56
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `costumerorder`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `costumer`
--

CREATE TABLE `costumer` (
  `coustumer_id` varchar(5) NOT NULL,
  `costumer_name` varchar(20) NOT NULL,
  `costumer_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `costumer`
--

INSERT INTO `costumer` (`coustumer_id`, `costumer_name`, `costumer_address`) VALUES
('CS001', 'Reza', 'Bandung'),
('CS002', 'Nugraha', 'Malang'),
('CS003', 'Dini', 'Tegal'),
('CS004', 'Indriyani', 'Kediri'),
('CS005', 'Diza', 'Banyuwangi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orderss`
--

CREATE TABLE `orderss` (
  `order_id` varchar(5) NOT NULL,
  `order_date` date DEFAULT NULL,
  `costumer_id` varchar(5) DEFAULT NULL,
  `qty` int(2) DEFAULT NULL,
  `amount` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orderss`
--

INSERT INTO `orderss` (`order_id`, `order_date`, `costumer_id`, `qty`, `amount`) VALUES
('CS001', '2022-09-30', 'CS001', 1, 40000),
('CS002', '2022-10-01', 'CS002', 2, 50000),
('CS003', '2022-10-02', 'CS003', 3, 60000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`coustumer_id`);

--
-- Indeks untuk tabel `orderss`
--
ALTER TABLE `orderss`
  ADD PRIMARY KEY (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
