-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Sep 2022 pada 09.36
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_kelurahan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_nikah`
--

CREATE TABLE `data_nikah` (
  `id` char(50) NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` bigint(20) NOT NULL,
  `tgl_nikah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_nikah`
--

INSERT INTO `data_nikah` (`id`, `nik`, `nama`, `alamat`, `no_hp`, `tgl_nikah`) VALUES
('NKH002', 25678907, 'pak fahrudi', 'jl kapi mantasti', 62890678304534, '2022-05-31'),
('NKH007', 12345678, 'novia', 'JL KAPI SRABA 6', 62890857, '2022-06-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keuangan_desa`
--

CREATE TABLE `keuangan_desa` (
  `id` char(20) NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` bigint(20) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `jumlah_pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keuangan_desa`
--

INSERT INTO `keuangan_desa` (`id`, `nik`, `nama`, `alamat`, `no_hp`, `tgl_pembayaran`, `jumlah_pembayaran`) VALUES
('KD001', 34567890, 'Rahmah Nurr', 'Jl Kapi Anala IV', 62907456789, '2022-06-15', 'Rp. 30000'),
('PBR12', 12345678, '1Q32W', 'WASDF', 1234, '2022-06-07', '344565');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan_penduduk`
--

CREATE TABLE `pendidikan_penduduk` (
  `id` char(50) NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` bigint(20) NOT NULL,
  `pendidikan_terakhir` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendidikan_penduduk`
--

INSERT INTO `pendidikan_penduduk` (`id`, `nik`, `nama`, `alamat`, `no_hp`, `pendidikan_terakhir`) VALUES
('PN001', 34567890, 'Candraria', 'Jl Kapi Anala II', 62907456783, 'SMKkk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE `penduduk` (
  `nik` bigint(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttl` date NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penduduk`
--

INSERT INTO `penduduk` (`nik`, `nama`, `ttl`, `alamat`, `no_hp`) VALUES
(12345678, 'sandia', '2022-06-15', 'jl kapi mantasti', 62890857),
(25678907, 'Bima Admajap', '2002-06-04', 'Jl. Kapi Minda 2', 62890678304534),
(34567890, 'pak fahrudi', '2022-06-01', 'JL Kapi Anala III', 628997654);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perangkat_desa`
--

CREATE TABLE `perangkat_desa` (
  `id` char(20) NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` bigint(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perangkat_desa`
--

INSERT INTO `perangkat_desa` (`id`, `nik`, `nama`, `alamat`, `no_hp`, `jabatan`) VALUES
('2018', 34567890, 'sad', 'jl kapi mantasti', 62890857, 'Wakil Lurahh'),
('345', 25678907, 'pak fahrudi', 'jl kapi mantasti', 62890678304534, 'Wakil Lurah 2'),
('PD_003', 34567890, 'pak fahrudi', 'Jl Kapi Anala III', 62907456789, 'Lurah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin1', 'admin1234', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `urusan`
--

CREATE TABLE `urusan` (
  `id` char(50) NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` bigint(20) NOT NULL,
  `urusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `urusan`
--

INSERT INTO `urusan` (`id`, `nik`, `nama`, `alamat`, `no_hp`, `urusan`) VALUES
('UR001', 34567890, 'Novia Candra Aulia', 'Jl Kapi Anala V', 62345678, 'Mengurus KTPp'),
('UR002', 25678907, 'pak fahrudi', 'jl kapi mantasti', 62890857, 'Keterangan Tidak Mampu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_nikah`
--
ALTER TABLE `data_nikah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `NIK_3` (`nik`) USING BTREE,
  ADD KEY `NIK` (`nik`),
  ADD KEY `NIK_2` (`nik`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `keuangan_desa`
--
ALTER TABLE `keuangan_desa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `NIK` (`nik`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pendidikan_penduduk`
--
ALTER TABLE `pendidikan_penduduk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `NIK` (`nik`);

--
-- Indeks untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `perangkat_desa`
--
ALTER TABLE `perangkat_desa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `NIK` (`nik`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `urusan`
--
ALTER TABLE `urusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `NIK` (`nik`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_nikah`
--
ALTER TABLE `data_nikah`
  ADD CONSTRAINT `data_nikah_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`NIK`);

--
-- Ketidakleluasaan untuk tabel `keuangan_desa`
--
ALTER TABLE `keuangan_desa`
  ADD CONSTRAINT `keuangan_desa_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `penduduk` (`NIK`);

--
-- Ketidakleluasaan untuk tabel `pendidikan_penduduk`
--
ALTER TABLE `pendidikan_penduduk`
  ADD CONSTRAINT `pendidikan_penduduk_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `penduduk` (`NIK`);

--
-- Ketidakleluasaan untuk tabel `perangkat_desa`
--
ALTER TABLE `perangkat_desa`
  ADD CONSTRAINT `perangkat_desa_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `penduduk` (`NIK`);

--
-- Ketidakleluasaan untuk tabel `urusan`
--
ALTER TABLE `urusan`
  ADD CONSTRAINT `urusan_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `penduduk` (`NIK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
