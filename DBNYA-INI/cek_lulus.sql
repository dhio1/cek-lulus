-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 02 Bulan Mei 2024 pada 18.16
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
-- Database: `cek_lulus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2022_04_23_074325_create_students_table', 1),
(16, '2022_04_23_165731_create_webs_table', 2),
(18, '2022_04_24_132000_add_username_to_users', 3),
(20, '2022_04_24_150207_create_settings_table', 4),
(21, '2022_04_27_070016_create_schools_table', 5),
(22, '2022_04_30_065432_add_nama_ortu_to_students', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kop_logo_dinas` varchar(255) DEFAULT NULL,
  `kop_nama_sekolah` varchar(255) DEFAULT NULL,
  `kop_alamat` varchar(255) DEFAULT NULL,
  `kop_telepon` varchar(255) DEFAULT NULL,
  `kop_pos` varchar(255) DEFAULT NULL,
  `kop_website` varchar(255) DEFAULT NULL,
  `kop_email` varchar(255) DEFAULT NULL,
  `kop_nama_disdik` varchar(255) DEFAULT NULL,
  `kop_th_pelajaran` varchar(255) DEFAULT NULL,
  `nama_surat` varchar(255) DEFAULT NULL,
  `no_surat` varchar(255) DEFAULT NULL,
  `pembuka_surat` varchar(255) DEFAULT NULL,
  `penutup_surat` varchar(255) DEFAULT NULL,
  `jabatan_penandatangan` varchar(255) DEFAULT NULL,
  `nama_penandatangan` varchar(255) DEFAULT NULL,
  `nip_penandatangan` varchar(255) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `tanda_tangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `schools`
--

INSERT INTO `schools` (`id`, `kop_logo_dinas`, `kop_nama_sekolah`, `kop_alamat`, `kop_telepon`, `kop_pos`, `kop_website`, `kop_email`, `kop_nama_disdik`, `kop_th_pelajaran`, `nama_surat`, `no_surat`, `pembuka_surat`, `penutup_surat`, `jabatan_penandatangan`, `nama_penandatangan`, `nip_penandatangan`, `tempat`, `tanggal`, `tanda_tangan`, `created_at`, `updated_at`) VALUES
(1, 'SMA NEGERI 1 PARUNG_Logo-propinsi-jawa-barat.png', 'DINAS PENDIDIKAN DAN KEBUDAYAAN', 'JL. PENDIDIKAN NO.100, TANJUNG BALAI KARIMUN', '(0777)21234', '16330', 'https://sman1parung.sch.id', 'smanparung@gmail.com', 'PEMERINTAH KABUPATEN KARIMUN', 'SEKOLAH MENENGAH PERTAMA NEGERI 1 KARIMUN', 'SURAT KELULUSAN', '2090/2020/1192-12', 'Yang bertanda tangan di bawah ini, Kepala Sekolah SMP Negeri 1 Karimun Menerangkan bahwa siswa di bawah ini :', 'Berdasarkan hasil rapat dengan majelis guru SMP Negeri Karimun, siswa tersebut dinyatakan', 'Kepala Sekolah', 'NAMA KEPSEK', '1920202337193739221', 'Karimun', '2024-05-01', '2022-04-28_ttd.PNG', NULL, '2024-05-02 05:10:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `status`, `date`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-01-02', '19:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nama_ortu` varchar(255) DEFAULT NULL,
  `tempat_tgl_lahir` varchar(255) DEFAULT NULL,
  `no_exam` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `nisn`, `name`, `nama_ortu`, `tempat_tgl_lahir`, `no_exam`, `class`, `status`, `message`, `created_at`, `updated_at`) VALUES
(277, '1001/2001', 'FAUZI AGUSTIAN', 'BAPAK FAUZI', 'Bogor, 8 maret 2012', '121212', '9.7', 1, 'ANDA DINYATAKAN LULUS DARI SMA NEGERI 1 PARUNG', '2024-05-02 08:10:23', '2024-05-02 08:10:23'),
(278, '1002/2002', 'NARNIA', 'SUPAR', 'Bogor, 8 maret 2012', '121212', '9.7', 1, 'ANDA DINYATAKAN LULUS DARI SMA NEGERI 1 PARUNG', '2024-05-02 08:10:23', '2024-05-02 08:10:23'),
(279, '1003/2003', 'SASA', 'YUNAR', 'Bogor, 8 maret 2012', '121212', '9.7', 1, 'ANDA DINYATAKAN LULUS DARI SMA NEGERI 1 PARUNG', '2024-05-02 08:10:23', '2024-05-02 08:10:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `enable` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `password_view` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `password_view`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', 'admin', 'admin@gmail.com', NULL, '$2y$10$MoCQaxWy9xsUQFFEcMC1OuIi7Q2dRkk/CnvyoMzeS0x8GWy51DmWO', '123456789', NULL, NULL, '2022-04-24 07:30:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `webs`
--

CREATE TABLE `webs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `web_name` varchar(255) DEFAULT NULL,
  `slide_1` varchar(255) DEFAULT NULL,
  `slide_2` varchar(255) DEFAULT NULL,
  `slide_3` varchar(255) DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `webs`
--

INSERT INTO `webs` (`id`, `title`, `logo`, `web_name`, `slide_1`, `slide_2`, `slide_3`, `footer`, `about`, `created_at`, `updated_at`) VALUES
(1, 'Web Kelulusan V2', 'Sman 1 Parung_school.png', 'Nama Sekolah', 'Web Kelulusan 2_Metaliq2-Evolving_Metal_Texture_Motion_Background_Video_Loop_Sample2.jpg', 'Web Kelulusan 2_fikri-rasyid-FnKKF2bATEE-unsplash.jpg', 'Web Kelulusan 2_istockphoto-1146679365-612x612.jpg', 'Sman 1 parung', 'Web ini Merupakan web pengumuman kelulusan', NULL, '2023-01-01 10:18:36');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_password_view_unique` (`password_view`);

--
-- Indeks untuk tabel `webs`
--
ALTER TABLE `webs`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT untuk tabel `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `webs`
--
ALTER TABLE `webs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
