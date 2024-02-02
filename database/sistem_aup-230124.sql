-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 23, 2024 at 12:07 AM
-- Server version: 5.7.33
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_aup`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline` bigint(20) NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `judul`, `penulis`, `kategori`, `headline`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(47, 'BUSMETIK', 'admin', 'kegiatan', 0, 'Komoditas utama SFV pada Inti I adalah kegiatan Pemeliharaan udang vaname mulai dari kegiatan penebaran benur sampai dengan panen, kegiatan budidaya dilaksanakan seperti pada umumnya, namun SFV UPT Politeknik AUP mengabungkan teknologi BUSMETIK ini dengan sentuhan teknologi seperti pengunaan alat ukur kualitas air digital, sampling digital TOMOTA, dan automatic feeder.\r\n\r\nBudidaya Udang Skala Mini Empang Plastik atau lebih dikenal sebagai Busmetik merupakan pengembangan teknologi budidaya udang yang sesuai digunakan untuk pengusaha menengah ke bawah. Kolam busmetik merupakan kolam zero waste sehingga tidak memerlukan pintu masuk dan pintu keluar air budidaya. \r\n\r\nBudidaya Metode konsep Busmetik juga memiliki keunggulan luar biasa yakni biaya dalam penerapan teknologi ini sangat terjangkau oleh pembudidaya menengah – kecil.', '1705808194.jpg', '2024-01-05 09:04:16', '2024-01-20 20:36:34'),
(48, 'Pakan Mandiri', 'admin', 'kegiatan', 0, 'Pakan Mandiri - merupakan salah satu kegiatan inti yang bertujuan untuk memproduksi pakan mandiri khususnya untuk komoditas air tawar dan payau, proses kegiatan ini masih dalam pengembangan, serta mendukung kegiatan Smart Fisheries Village.', '1705808385.png', '2024-01-05 09:05:53', '2024-01-20 20:39:45'),
(49, 'Edu-Ekowisata dan Konservasi Mangrove', 'admin', 'kegiatan', 0, 'Rintisan Edu Ekowisata - Selain kegiatan ini budidaya dan pakan, SFV UPT Politeknik AUP membangun program yang menyediakan wisata belajar kepada seluruh masyarakat di berbagai tingkatan pendidikan, mulai dari tingkatan anak usia dini sampai dengan perguruan tinggi. Kegiatan EduEkowisata ini bertujuan mengenalkan kegiatan SFV ke khalayak ramai serta kegiatan pengelolaan lingkungan dan keterlibatan mangrove sebagai salah satu penyerap limbah hasil budidaya serta nilai guna yang dapat diperoleh dari kawasan mangrove yang kaya manfaat', '1704470788.png', '2024-01-05 09:06:28', '2024-01-05 09:06:28'),
(51, 'Tebar Benur Udang Vaname Siklus II di BUSMETIK Smart Fisheries Village UPT Politeknik AUP Kampus Serang', 'admin', 'berita', 1, 'Hari ini dilakukan penebaran benur udang vaname pada kegiatan Busmetik Smart Fisheries Village Siklus II yang dihadiri langsung oleh Direktur Politeknik AUP. Benur yang ditebar berasal dari PT Suri Tani Pemuka (STP) Anyer sebanyak 240.000 ekor benur, yang ditebar pada 2 petakan tambak dengan luasan masing-masing 1.000 meter persegi. \r\n\r\nSebelum dilakukan penebaran perlu dilakukan aklimatisasi atau penyesuaian biota terhadap lingkungannya agar tidak mengalami stres. (7/11/23).', '1704514827.png', '2024-01-05 21:20:27', '2024-01-05 21:20:27'),
(52, 'SFV UPT Politeknik AUP Kampus Serang Implementasikan Konsep Edu-Ekowisata Testimoni SDIT Bina Insan Kragilan Serang', 'admin', 'berita', 1, 'Dalam rangka mengimplementasikan konsep Edu Ekowisata SDIT Bina Insan Kragilan Serang, Banten menjadi salah satu testimoni pada kunjungannya ke Smart Fisheries Village UPT Politeknik AUP - Kampus Serang lho. \r\n\r\nKunjungan ini diikuti oleh siswa/i kelas 5 & 6 sebanyak 85 siswa & 10 orang pendamping. Pada kunjungan tersebut siswa/i diperkenalkan dengan budidaya udang mulai dari kegiatan pembenihannya sampai pembesaran udang pada program Smart Fisheries Village UPT Politeknik AUP, selain itu siswa/i juga dikenalakan dengan ekosistem mangrove dan hubungannya untuk menjaga kelestarian perairan dan keberlanjutan kegiatan budidaya untuk masa depan. (27/9/23).', '1704514943.png', '2024-01-05 21:22:23', '2024-01-05 21:22:23'),
(53, 'Panen Udang Vaname Siklus 1 SFV UPT Politeknik AUP Kampus Serang', 'admin', 'berita', 1, 'Panen menjadi kegiatan yang paling dinanti oleh para petambak sebagai bagian akhir dalam budidaya. SFV UPT Politeknik AUP melakukan kegiatan panen pada 4 petakan tambak BUSMETIK udang vaname.  \r\n	\r\nUdang yang dipanen selanjutnya dicuci dan disortir untuk memisahkan udang fresh, BS (Below Standart), dan KM (Kulit Muda). Kemudian dilanjutkan dengan proses packaging, serta memperhatikan komponen penting untuk menjaga kualitas mutu udang sampai ke tangan konsumen antara (pabrik processing) atau konsumen akhir. (12/10/23).', '1704543492.png', '2024-01-06 05:18:12', '2024-01-06 05:18:12'),
(54, 'Pelatihan Minat Bakat Pemandu Wisata Dukung di SFV UPT Politeknik AUP Kampus Serang', 'admin', 'berita', 1, 'SFV UPT Politeknik AUP mengadakan pelatihan pemandu wisata guna mendukung kegiatan SFV UPT Politeknik AUP yang diikuti oleh 50 orang peserta pelatihan, pelatihan ini langsung ditutori oleh Bapak Mikael Prastowo Sesotyo Widodo dan Bapak Akbar Rohyadi dari Yayasan Terangi.\r\n\r\nPelatihan pemandu wisata ini diharapkan mampu meningkatan skill taruna/i Politeknik AUP dalam mendukung rintisan kegiatan Edu Ekowisata di kawasan SFV UPT Politeknik AUP. (14/10/23).', '1704543545.png', '2024-01-06 05:19:05', '2024-01-06 05:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `kerjasama`
--

CREATE TABLE `kerjasama` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kerjasama`
--

INSERT INTO `kerjasama` (`id`, `nama`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'PT. Seaqua', '1705499728.jpg', '2024-01-17 06:55:28', '2024-01-17 06:55:28'),
(2, 'PT Suri Tani Pemuka (Japfa Group)', '1705499923.png', '2024-01-17 06:58:43', '2024-01-17 06:58:43'),
(3, 'PT.Aruna', '1705499951.png', '2024-01-17 06:59:11', '2024-01-17 06:59:11'),
(4, 'PT. Jala', '1705499979.png', '2024-01-17 06:59:39', '2024-01-17 06:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2023_12_26_065738_create_flights_table', 1),
(22, '2023_12_26_074803_create_products_table', 1),
(23, '2023_12_26_075259_create_kegiatans_table', 1),
(24, '2023_12_26_080155_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama`, `harga`, `gambar`, `deskripsi`, `created_at`, `updated_at`) VALUES
(5, 'Hotea - Holly mangrove Tea', '20000', '1704891777.jpg', 'Olahan yang berbahan baku daun Jeruju atau jenis Acanthus ilicifolius L. HoTea sendiri muncul pada tahun 2019 diinisiasi taruna. Mengandung antioksidan, memiliki khasiat mencegah kanker, maag, diare, hepatitis, meredakan stress, rematik, melancarkan pencernaan. Kandungan senyawa steroid juga bermanfaat untuk meningkatkan vitalitas, Marta anti bakteri yang dapat membunuh bakteri jahat dalam tubuh. senyawa polifenol berkhasiat mencegah penuaan dini, mengurangi risiko penyakit jantung koroner dan meningkatkan kekebalan tubuh.', '2024-01-10 06:02:57', '2024-01-10 06:02:57'),
(6, 'Genre Chips', '15000', '1704891824.jpg', 'Cemilan sehat tanpa menghilangkan ciri khas gendar yang biasa terbuat dari nasi. Genre Chips ini adalah perpaduan dari nasi, daging lele segar, dan rempah pilihan yang kaya akan cita rasa istimewa di setiap kepingnya.', '2024-01-10 06:03:44', '2024-01-10 06:03:44'),
(7, 'Waton Cadang', '20000', '1704891856.jpg', 'Waton cadang merupakan produk alahan stik berbahan dasar cangkang udang (kepala, ekor, dan cangkang) yang berasal dari limbah samping kegiatan budidaya. Waton berarti sejenis pangsit atau stik dan cadang berarti cangkang udang. Cangkang udang yang mengandung kalsium dan fosfor dapat membantu pertumbuhan tulang dan gigi. Selain itu terdapat glucosamine untuk membantu pembentukan tulang rawan dan masalah persendian serta senyawa chondroitin untuk menunjang kesehatan sendi.', '2024-01-10 06:04:16', '2024-01-10 06:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `nama`, `value`, `created_at`, `updated_at`) VALUES
(1, 'title_about', 'Sambutan Kepala Pimpinan', NULL, '2023-12-31 20:40:29'),
(2, 'deskripsi_about', 'Smart Fisheries Village (SFV) atau dikenal juga dengan Kampung Perikanan Cerdas merupakan konsep pembangunan desa perikanan berbasis teknologi informasi dan manajemen tepat guna. Terdapat dua konsep pembangunan SFV yakni SFV berbasis Desa dan SFV berbasis Unit Pelaksana Teknis (UPT). Politeknik Ahli Usaha Perikanan (AUP) adalah salah satu UPT yang berada di Serang, Banten.\r\n\r\nPembangunan SFV tidak hanya dilakukan secara fisik, namun juga pada tatanan sosial dan kelembagaannya sehingga daya saing desa meningkat dan terjadi peningkatan kapasitas SDM. Melalui program ini, BPPSDM KP (Badan Penyuluhan dan Pengembangan Sumber Daya Manusia, Kementerian Kelautan dan Perikanan) menargetkan peningkatan ekonomi masyarakat, serta kegiatan produksi yang berkelanjutan dan ramah lingkungan.', '2023-12-31 16:40:42', '2024-01-05 09:11:14'),
(3, 'gambar_about', '1704520684gambar_about.png', '2023-12-31 16:41:05', '2024-01-05 22:58:04'),
(4, 'twitter', 'https://twitter.com/poltekaupserang', '2023-12-31 16:42:45', '2024-01-05 22:55:28'),
(5, 'instagram', 'https://www.instagram.com/sfv_upt_politeknik_aup/', '2023-12-31 16:42:45', '2024-01-05 22:55:28'),
(6, 'facebook', 'https://www.facebook.com/p/Politeknik-AUP-Serang-100063958455940/', '2023-12-31 16:42:45', '2024-01-05 22:55:28'),
(7, 'website', 'https://www.politeknikaup.ac.id', '2023-12-31 16:42:45', '2024-01-05 22:55:29'),
(8, 'email_kontak', 'email@', '2023-12-31 16:44:25', '2023-12-31 11:31:59'),
(9, 'phone_kontak', '0896301948', '2023-12-31 16:44:25', '2023-12-31 20:09:51'),
(10, 'alamat_kontak', 'cibanteng agathis', '2023-12-31 16:44:25', '2023-12-31 20:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$jZiWFLR3yo.RWgWxi3zcruavIV1FCr4GLRWNuUo1HJdU4Fpy.8.z2', NULL, '2024-01-16 06:50:56', '2024-01-16 06:50:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kerjasama`
--
ALTER TABLE `kerjasama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `kerjasama`
--
ALTER TABLE `kerjasama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
