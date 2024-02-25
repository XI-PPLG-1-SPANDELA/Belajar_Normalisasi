-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Feb 2024 pada 11.01
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
-- Database: `bais data pplg1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `NID` int(11) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Jabatan` varchar(50) DEFAULT NULL,
  `Fakultas` varchar(50) DEFAULT NULL,
  `Mata_Kuliah` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`NID`, `Nama`, `Jabatan`, `Fakultas`, `Mata_Kuliah`) VALUES
(10001, 'Shaleh Efri W, M.Kom', 'Dosen', 'Teknik', 'Basis Data'),
(10002, 'Ivan Dhunria I, M.Kom', 'Dosen', 'Ekonomi', 'Ekonomi Makro'),
(10003, 'Agus Wibowo, M.Kom', 'Dosen', 'Hukum', 'Hukum Internasional'),
(10004, 'Prof. Ambar Yuliana, P,Hd', 'Dosen', 'Psikologi', 'Psikologi Anak'),
(10005, 'Cahya Qomadi, M.M, S.Kom', 'Dosen', 'Teknik', 'Sistem Operasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `Kode_Fakultas` varchar(5) NOT NULL,
  `Nama_Fakultas` varchar(50) DEFAULT NULL,
  `Lokasi` varchar(50) DEFAULT NULL,
  `Jumlah_Program_Studi` int(11) DEFAULT NULL,
  `Dekan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`Kode_Fakultas`, `Nama_Fakultas`, `Lokasi`, `Jumlah_Program_Studi`, `Dekan`) VALUES
('FK01', 'Fakultas Teknik', 'Jakarta', 5, 'Prof. Kalimasada'),
('FK02', 'Fakultas Ekonomi', 'Surabaya', 4, 'Prof. Kaimasada'),
('FK03', 'Fakultas Hukum', 'Bandung', 3, 'Prof. Kalimasada'),
('FK04', 'Fakultas Psikologi', 'Yogyakarta', 3, 'Prof. Kalimasada'),
('FK05', 'Fakultas Teknik', 'Semarang', 4, 'Prof. Kalimasada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` int(11) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Jurusan` varchar(50) DEFAULT NULL,
  `Angkatan` int(11) DEFAULT NULL,
  `IPK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Jurusan`, `Angkatan`, `IPK`) VALUES
(190001, 'Yulia', 'Teknik', 2024, 4),
(190002, 'Syifa', 'Ekonomi', 2024, 4),
(190003, 'Nabila', 'Hukum', 2024, 4),
(190004, 'Zahra', 'Psikologi', 2024, 4),
(190005, 'Adnan', 'Teknik', 2024, 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NID`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`Kode_Fakultas`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
