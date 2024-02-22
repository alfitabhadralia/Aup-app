-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2024 at 12:45 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.15

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
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline` bigint NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `judul`, `penulis`, `kategori`, `headline`, `deskripsi`, `gambar`, `icon`, `created_at`, `updated_at`) VALUES
(47, 'Inti I - Pembesaran Udang', 'admin', 'kegiatan', 0, 'Komoditas utama SFV pada Inti I adalah kegiatan Pemeliharaan udang vaname mulai dari kegiatan penebaran benur sampai dengan panen, kegiatan budidaya dilaksanakan seperti pada umumnya, namun SFV UPT Politeknik AUP mengabungkan teknologi BUSMETIK ini dengan sentuhan teknologi seperti pengunaan alat ukur kualitas air digital, sampling digital TOMOTA, dan automatic feeder.\r\n\r\nBudidaya Udang Skala Mini Empang Plastik atau lebih dikenal sebagai Busmetik merupakan pengembangan teknologi budidaya udang yang sesuai digunakan untuk pengusaha menengah ke bawah. Kolam busmetik merupakan kolam zero waste sehingga tidak memerlukan pintu masuk dan pintu keluar air budidaya. \r\n\r\nBudidaya Metode konsep Busmetik juga memiliki keunggulan luar biasa yakni biaya dalam penerapan teknologi ini sangat terjangkau oleh pembudidaya menengah – kecil.', '1707793678.jpg', '1707389388.png', '2024-01-05 09:04:16', '2024-02-12 20:07:58'),
(48, 'Inti II - Pembenihan Udang', 'admin', 'kegiatan', 0, 'Salah satu kegiatan SFV UPT Politeknik AUP adalah kegiatan pembenihan udang vaname. Sebelum ditebar perlu adanya kegiatan aklimatisasi atau proses adaptasi biota dilingkungan barunya, sehingga udang tidak stres. Selanjutnya dilakukan kegiatan pemeliharaan yang meliputi pengecekan kualitas air, pengecekan kesehatan udang, sampling pertumbuhan dan panen benur udang. Benur dari stadia naupli, dapat dipanen setelah dipelihara selama 21 hari, dengan ukuran panen yakni benur udang vaname Post Larva 13 (PL-13). Pemanenan benur udang biasanya dilakukan pada pagi atau sore hari pada saat cuaca tidak terlalu panas karena menjaga agar biota tidak mengalami stres.\r\nPanen dilakukan dengan hati-hati, untuk menjaga kualitas benur udang sampai dengan ke tangan konsumen. Benur udang ini, selanjutnya dapat dipelihara di tambak budidaya sebagai udang konsumsi.', '1707793557.jpg', '1707467208.png', '2024-01-05 09:05:53', '2024-02-12 20:05:57'),
(49, 'Inti III - Pakan Mandiri', 'admin', 'kegiatan', 0, 'Pakan Mandiri, Merupakan salah satu kegiatan inti yang bertujuan untuk memproduksi pakan mandiri khususnya untuk komoditas air tawar dan payau, proses kegiatan ini masih dalam pengembangan, serta mendukung kegiatan Smart Fisheries Village.', '1707136629.jpg', '1707467241.png', '2024-01-05 09:06:28', '2024-02-09 01:28:38'),
(51, 'Tebar Benur Udang Vaname Siklus II di BUSMETIK SFV UPT Politeknik AUP Kampus Serang', 'admin', 'berita', 1, 'Hari ini dilakukan penebaran benur udang vaname pada kegiatan Busmetik Smart Fisheries Village Siklus II yang dihadiri langsung oleh Direktur Politeknik AUP. Benur yang ditebar berasal dari PT Suri Tani Pemuka (STP) Anyer sebanyak 240.000 ekor benur, yang ditebar pada 2 petakan tambak dengan luasan masing-masing 1.000 meter persegi. \r\n\r\nSebelum dilakukan penebaran perlu dilakukan aklimatisasi atau penyesuaian biota terhadap lingkungannya agar tidak mengalami stres. (7/11/23).', '1707793477.jpg', NULL, '2024-01-05 21:20:27', '2024-02-12 20:04:37'),
(52, 'Implementasikan Konsep Edu-Ekowisata di Kawasan SFV', 'admin', 'berita', 1, 'Dalam rangka mengimplementasikan konsep Edu Ekowisata SDIT Bina Insan Kragilan Serang, Banten menjadi salah satu testimoni pada kunjungannya ke Smart Fisheries Village UPT Politeknik AUP - Kampus Serang lho. \r\n\r\nKunjungan ini diikuti oleh siswa/i kelas 5 & 6 sebanyak 85 siswa & 10 orang pendamping. Pada kunjungan tersebut siswa/i diperkenalkan dengan budidaya udang mulai dari kegiatan pembenihannya sampai pembesaran udang pada program Smart Fisheries Village UPT Politeknik AUP, selain itu siswa/i juga dikenalakan dengan ekosistem mangrove dan hubungannya untuk menjaga kelestarian perairan dan keberlanjutan kegiatan budidaya untuk masa depan. (27/9/23).', '1707794214.jpg', NULL, '2024-01-05 21:22:23', '2024-02-12 20:16:54'),
(53, 'Panen Udang Siklus 1 SFV Politeknik AUP Kampus Serang', 'admin', 'berita', 1, 'Panen menjadi kegiatan yang paling dinanti oleh para petambak sebagai bagian akhir dalam budidaya. SFV UPT Politeknik AUP melakukan kegiatan panen pada 4 petakan tambak BUSMETIK udang vaname.  \r\n	\r\nUdang yang dipanen selanjutnya dicuci dan disortir untuk memisahkan udang fresh, BS (Below Standart), dan KM (Kulit Muda). Kemudian dilanjutkan dengan proses packaging, serta memperhatikan komponen penting untuk menjaga kualitas mutu udang sampai ke tangan konsumen antara (pabrik processing) atau konsumen akhir. (12/10/23).', '1707794626.jpg', '1707467065.png', '2024-01-06 05:18:12', '2024-02-12 20:23:46'),
(54, 'Pelatihan Minat Bakat Pemandu Wisata Dukung di SFV UPT Politeknik AUP Kampus Serang', 'admin', 'berita', 1, 'SFV UPT Politeknik AUP mengadakan pelatihan pemandu wisata guna mendukung kegiatan SFV UPT Politeknik AUP yang diikuti oleh 50 orang peserta pelatihan, pelatihan ini langsung ditutori oleh Bapak Mikael Prastowo Sesotyo Widodo dan Bapak Akbar Rohyadi dari Yayasan Terangi.\r\n\r\nPelatihan pemandu wisata ini diharapkan mampu meningkatan skill taruna/i Politeknik AUP dalam mendukung rintisan kegiatan Edu Ekowisata di kawasan SFV UPT Politeknik AUP. (14/10/23).', '1707794753.jpg', NULL, '2024-01-06 05:19:05', '2024-02-12 20:25:53'),
(55, 'Inti IV - Rintisan Edu', 'admin', 'kegiatan', 0, 'Inti IV Rintisan Edu Ekowisata dan Konservasi Mangrove menjadi bagian dari SFV. Selain kegiatan ini budidaya dan pakan, SFV UPT Politeknik AUP membangun program yang menyediakan wisata belajar kepada seluruh masyarakat di berbagai tingkatan pendidikan, mulai dari tingkatan anak usia dini sampai dengan perguruan tinggi. Kegiatan EduEkowisata ini bertujuan mengenalkan kegiatan SFV ke khalayak ramai serta kegiatan pengelolaan lingkungan dan keterlibatan mangrove sebagai salah satu penyerap limbah hasil budidaya serta nilai guna yang dapat diperoleh dari kawasan mangrove yang kaya manfaat.', '1707794971.png', '1707467262.png', '2024-02-05 05:37:58', '2024-02-12 20:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `kerjasama`
--

CREATE TABLE `kerjasama` (
  `id` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `website_link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kerjasama`
--

INSERT INTO `kerjasama` (`id`, `nama`, `gambar`, `created_at`, `updated_at`, `website_link`) VALUES
(3, 'PT.Aruna', '1707137983PT.Aruna.png', '2024-01-17 06:59:11', '2024-02-21 01:03:43', 'http://aruna.id/'),
(4, 'PT. Jala Akuakultur', '1707137996PT. Jala.png', '2024-01-17 06:59:39', '2024-02-21 01:08:51', 'https://jala.tech/'),
(5, 'Pokdarwis', '1707138054.jpg', '2024-02-05 06:00:54', '2024-02-21 01:15:55', 'https://www.instagram.com/pokdarwis_provinsibanten/'),
(6, 'PT. CP Prima', '1707138117.jpg', '2024-02-05 06:01:57', '2024-02-21 01:17:23', 'https://www.cpp.co.id/'),
(8, 'PT. Citra lestari', '1707390918.png', '2024-02-08 04:15:18', '2024-02-21 01:19:53', 'https://blulpmukp.id/'),
(9, 'PT. Sakti Biru', '1707795121.jpg', '2024-02-12 20:32:01', '2024-02-21 01:23:59', 'https://companieshouse.id/sakti-biru-indonesia'),
(10, 'PT. Juragan Ikan', '1707795188.jpg', '2024-02-12 20:33:08', '2024-02-21 01:26:56', 'https://www.instagram.com/julakan.id/'),
(11, 'PT. Rekonvasi Bumi', '1707795244.jpg', '2024-02-12 20:34:04', '2024-02-21 01:29:11', 'https://www.instagram.com/rekonvasibhumi/'),
(12, 'Universitas Pendidikan Indonesia', '1707795286.png', '2024-02-12 20:34:46', '2024-02-21 01:30:26', 'https://sik-kdserang.upi.edu/'),
(13, 'LP2IL Serang', '1707795329.png', '2024-02-12 20:35:29', '2024-02-21 01:33:02', 'https://kkp.go.id/djpb/bpkilserang'),
(14, 'PT. Penyuluh Perikanan', '1707795371.jpg', '2024-02-12 20:36:11', '2024-02-21 01:35:20', 'ttps://kkp.go.id/brsdm/puslatluh/'),
(15, 'PT. NCH Life', '1707795424.jpg', '2024-02-12 20:37:04', '2024-02-21 01:36:52', 'https://site.nchlifesciences.com/home/'),
(16, 'Dinas Kelautan dan Perikanan', '1707795488.jpg', '2024-02-12 20:38:08', '2024-02-21 01:39:00', 'https://dkp.bantenprov.go.id/'),
(17, 'Disparpora Serang', '1707795520.png', '2024-02-12 20:38:40', '2024-02-21 01:40:15', 'https://www.instagram.com/disparporakotaserang/'),
(18, 'PT. Bosch', '1707795584.jpg', '2024-02-12 20:39:44', '2024-02-21 01:44:17', 'https://www.bosch.co.id/'),
(19, 'PT. Seaqua', '1707795687.webp', '2024-02-12 20:41:27', '2024-02-21 01:52:22', 'https://indonesiaseafood.id/supplier/central-pertiwi-bahari-pt'),
(20, 'PT. Suri tani pemuka', '1708502494PT. Suri tani pemuka.jpg', '2024-02-12 20:43:31', '2024-02-21 01:01:34', 'https://www.japfacomfeed.co.id/'),
(21, 'SIKPM', '1707796264.jpg', '2024-02-12 20:51:04', '2024-02-21 01:54:43', 'https://ppid.bkpm.go.id/');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
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
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama`, `harga`, `gambar`, `deskripsi`, `created_at`, `updated_at`) VALUES
(5, 'Hotea - Holly mangrove Tea', '20000', '1704891777.jpg', 'Olahan yang berbahan baku daun Jeruju atau jenis Acanthus ilicifolius L. HoTea sendiri muncul pada tahun 2019 diinisiasi taruna. Mengandung antioksidan, memiliki khasiat mencegah kanker, maag, diare, hepatitis, meredakan stress, rematik, melancarkan pencernaan. Kandungan senyawa steroid juga bermanfaat untuk meningkatkan vitalitas, Marta anti bakteri yang dapat membunuh bakteri jahat dalam tubuh. senyawa polifenol berkhasiat mencegah penuaan dini, mengurangi risiko penyakit jantung koroner dan meningkatkan kekebalan tubuh.', '2024-01-10 06:02:57', '2024-01-10 06:02:57'),
(6, 'Genre Chips', '15000', '1707135933Genre Chips.jpg', 'Cemilan sehat tanpa menghilangkan ciri khas gendar yang biasa terbuat dari nasi. Genre Chips ini adalah perpaduan dari nasi, daging lele segar, dan rempah pilihan yang kaya akan cita rasa istimewa di setiap kepingnya.', '2024-01-10 06:03:44', '2024-02-05 05:25:33'),
(7, 'Waton Cadang', '20000', '1704891856.jpg', 'Waton cadang merupakan produk alahan stik berbahan dasar cangkang udang (kepala, ekor, dan cangkang) yang berasal dari limbah samping kegiatan budidaya. Waton berarti sejenis pangsit atau stik dan cadang berarti cangkang udang. Cangkang udang yang mengandung kalsium dan fosfor dapat membantu pertumbuhan tulang dan gigi. Selain itu terdapat glucosamine untuk membantu pembentukan tulang rawan dan masalah persendian serta senyawa chondroitin untuk menunjang kesehatan sendi.', '2024-01-10 06:04:16', '2024-01-10 06:04:16'),
(8, 'Alysta Mutiara', '20000', '1707135903.png', 'Wa ode sastaviani Dewi adalah salah satu wisudawan Politeknik AUP Program Studi Teknologi Akuakultur tahun 2023, yang lahir dari keluarga nelayan. Ketertarikan dirinya terhadap kerang mabe ini bukan tanpa sebab, keunikan bentuk serta masa pemeliharaan yang jauh lebih cepat dari budidaya kerang Mutiara pada umumnya memberikan sebuah ide. Selama ini pembudidaya di sana hanyalah memanfaatkan butir-butir kerang mabe yang dihasilkan dan dijual dengan harga murah. Padahal hasil olahan Kerang Mabe bisa dijadikan berbagai Akseroris cantik yang memiliki nilai jual tinggi.', '2024-02-05 05:25:03', '2024-02-05 05:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `nama`, `value`, `created_at`, `updated_at`) VALUES
(1, 'title_about', 'Sambutan Kepala Pimpinan', NULL, '2023-12-31 20:40:29'),
(2, 'deskripsi_about', 'Smart Fisheries Village (SFV) atau dikenal juga dengan Kampung Perikanan Cerdas merupakan konsep pembangunan desa perikanan berbasis teknologi informasi dan manajemen tepat guna. Terdapat dua konsep pembangunan SFV yakni SFV berbasis Desa dan SFV berbasis Unit Pelaksana Teknis (UPT). Politeknik Ahli Usaha Perikanan (AUP) adalah salah satu UPT yang berada di Serang, Banten.\r\n\r\nPembangunan SFV tidak hanya dilakukan secara fisik, namun juga pada tatanan sosial dan kelembagaannya sehingga daya saing desa meningkat dan terjadi peningkatan kapasitas SDM. Melalui program ini, BPPSDM KP (Badan Penyuluhan dan Pengembangan Sumber Daya Manusia, Kementerian Kelautan dan Perikanan) menargetkan peningkatan ekonomi masyarakat, serta kegiatan produksi yang berkelanjutan dan ramah lingkungan.', '2023-12-31 16:40:42', '2024-01-05 09:11:14'),
(3, 'gambar_about', '1707137374gambar_about.png', '2023-12-31 16:41:05', '2024-02-05 05:49:34'),
(4, 'twitter', 'https://twitter.com/poltekaupserang', '2023-12-31 16:42:45', '2024-01-05 22:55:28'),
(5, 'instagram', 'https://www.instagram.com/sfv_upt_politeknik_aup/', '2023-12-31 16:42:45', '2024-01-05 22:55:28'),
(6, 'facebook', 'https://www.facebook.com/p/Politeknik-AUP-Serang-100063958455940/', '2023-12-31 16:42:45', '2024-01-05 22:55:28'),
(7, 'website', 'https://www.politeknikaup.ac.id', '2023-12-31 16:42:45', '2024-01-05 22:55:29'),
(8, 'email_kontak', 'humas@politeknikaup.ac.id', '2023-12-31 16:44:25', '2024-02-05 06:06:59'),
(9, 'phone_kontak', '081283063054', '2023-12-31 16:44:25', '2024-02-05 06:07:35'),
(10, 'alamat_kontak', 'Jl. STP Raya No.1 Karangantu, Kec. Kasemen, Kota Serang Banten Pos 42191', '2023-12-31 16:44:25', '2024-02-05 06:06:59'),
(11, 'phone_product', '089630149875', '2024-02-22 12:37:54', '2024-02-22 05:42:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$jZiWFLR3yo.RWgWxi3zcruavIV1FCr4GLRWNuUo1HJdU4Fpy.8.z2', NULL, '2024-01-16 06:50:56', '2024-01-16 06:50:56'),
(2, 'alfita', 'admin', 'alfitadelia60@gmail.com', NULL, '$2y$10$Z8vyIYMahHe3zeIKyhACouDIEeBmmLoTbE5v8C7NCwT5W1x7a0nJW', NULL, '2024-02-05 04:27:46', '2024-02-05 04:27:46'),
(3, 'khalish', 'admin', 'khalish@gmail.com', NULL, '$2y$10$Xty9FaSR2dPuIH03EU.z7eLHJD5jdqR8L1Ej2utdk9BL9QYD54qry', NULL, '2024-02-05 04:28:48', '2024-02-05 04:28:48');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `kerjasama`
--
ALTER TABLE `kerjasama`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
