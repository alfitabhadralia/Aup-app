-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 03, 2024 at 12:00 PM
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
(3, 'Merasakan Serunya Datang ke Festival Tahunan Kolektor Cangkang Kelomang indo', 'admin', 'kegiatan', 1, 'Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet adipiscing luctus mauris adipiscing pretium eget fermentum, tristique lobortis est ut metus lobortis tortor tincidunt himenaeos habitant .', '1703841149.png', '2023-12-29 02:12:29', '2023-12-29 04:37:41'),
(4, 'Merasakan Serunya Datang ke Festival Tahunan Kolektor Cangkang Kelomang Sedunia', 'admin', 'kegiatan', 1, 'Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet adipiscing luctus mauris adipiscing pretium eget fermentum, tristique lobortis est ut metus lobortis tortor tincidunt himenaeos habitant .', '1703857729.png', '2023-12-29 06:48:49', '2023-12-29 06:48:49'),
(5, 'Dapatkan banyak bonus melalui membership', 'admin', 'kegiatan', 1, 'Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet adipiscing luctus mauris adipiscing pretium eget fermentum, tristique lobortis est ut metus lobortis tortor tincidunt himenaeos habitant .', '1703857782.jpg', '2023-12-29 06:49:42', '2023-12-29 06:49:42'),
(6, 'Saran Psikolog untuk Hadapi Orang yang Ingin Bunuh Diri', 'admin', 'kegiatan', 0, 'Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet adipiscing luctus mauris adipiscing pretium eget fermentum, tristique lobortis est ut metus lobortis tortor tincidunt himenaeos habitant .', '1703857955.webp', '2023-12-29 06:52:36', '2023-12-29 06:52:36'),
(7, 'Recusandae inventore vel non et aut et.', 'admin', 'kegiatan', 1, 'Temporibus atque magnam optio. Voluptatem optio quis modi totam. Delectus et provident voluptatem et omnis nostrum est occaecati.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\5c528e3eb92c6b000b4dd4a065c6dd52.png', '2023-12-29 07:53:16', '2023-12-29 07:56:20'),
(8, 'Commodi sit illo excepturi sed cupiditate quis.', 'admin', 'kegiatan', 1, 'Quibusdam natus rem aut qui sequi. Qui molestiae quo ut voluptates consequatur doloremque in earum. Placeat possimus voluptas labore iure reprehenderit. Porro odio et aperiam odio dolores et placeat.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\0ab16e3b1afd00abde347fa8ef66aeca.png', '2023-12-29 07:53:20', '2023-12-29 07:56:20'),
(9, 'Est et et qui est ad minima.', 'admin', 'kegiatan', 1, 'Voluptas debitis consequatur perferendis. Ex aut veritatis quod nemo quod et. Reprehenderit quia dolor ducimus ipsa rem quam molestias.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\080d0c62290c11e14a047f98cc41c714.png', '2023-12-29 07:53:24', '2023-12-29 07:56:20'),
(10, 'Quia aut ex error veniam recusandae.', 'admin', 'kegiatan', 0, 'Quia distinctio est quas cumque eaque pariatur mollitia. Ut molestiae unde aut debitis doloribus quasi voluptatem. Quia ut alias sequi dolor illo consectetur ut. Optio voluptatibus saepe error unde.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\3fae31799e1d09c47b8ef0832dbe14cc.png', '2023-12-29 07:53:28', '2023-12-29 07:56:20'),
(11, 'Molestias doloremque dolorem distinctio velit eum doloribus.', 'admin', 'kegiatan', 1, 'Assumenda distinctio molestiae corporis. Magni et recusandae doloribus consequatur ea nobis aut nemo. Voluptatem ipsam nobis non doloremque vero qui est quos. Consequatur et non ex est.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\c49b1acbfe409f174cfa9d925b0620ff.png', '2023-12-29 07:53:32', '2023-12-29 07:56:20'),
(12, 'Voluptas rerum error consequatur natus tempora.', 'admin', 'kegiatan', 1, 'Ipsa rerum rem ut et animi corporis. Laudantium aliquid rerum dolorum excepturi vero. Unde qui aut pariatur ea. Ut aut rerum rerum perferendis tempora nulla est.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\6c3b413f9caaa589ba8313e552158174.png', '2023-12-29 07:53:36', '2023-12-29 07:56:20'),
(13, 'Culpa quasi ut ut architecto qui voluptatem non.', 'admin', 'kegiatan', 1, 'Dolorum qui ut accusantium eius laborum ipsa. Dolor id dolor et dicta harum doloribus ullam doloremque. Dolorem consectetur est magni corporis nulla.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\54b72c75a8c8180dd3dc089e826f5739.png', '2023-12-29 07:53:40', '2023-12-29 07:56:20'),
(14, 'Modi vel adipisci amet minus consequatur praesentium alias.', 'admin', 'kegiatan', 0, 'Quia excepturi quam illum animi deserunt accusamus. Atque corporis modi sint omnis. Sunt quos voluptas qui dignissimos excepturi aliquam fugiat.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\a6601535f149de889eb593ba560a065d.png', '2023-12-29 07:53:46', '2023-12-29 07:56:20'),
(15, 'Exercitationem consequatur odit vero qui quia.', 'admin', 'kegiatan', 1, 'Ipsam ex libero distinctio alias aut. Temporibus dolor sed esse qui. Et ab consequuntur ad est voluptas labore est. Et sed beatae maxime ullam occaecati hic rerum. Nulla quidem deleniti sed necessitatibus.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\6575219d62116079d70b2f6da445f616.png', '2023-12-29 07:53:51', '2023-12-29 07:56:20'),
(16, 'Eum voluptatibus a molestiae eligendi in quisquam.', 'admin', 'kegiatan', 0, 'Officiis repellat perspiciatis culpa quia assumenda dicta et ipsam. Expedita at dolor enim nobis porro.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\7e19ea0b0367081b5c959980b287b3ce.png', '2023-12-29 07:53:55', '2023-12-29 07:56:20'),
(17, 'Accusantium nobis saepe excepturi omnis accusantium velit.', 'admin', 'kegiatan', 0, 'A amet sed quae necessitatibus ut. Quia corporis perferendis velit id et amet. Ea amet voluptatibus vel rerum.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\9d583403586e3c3a5c0734ff56ed4f0f.png', '2023-12-29 07:54:00', '2023-12-29 07:56:20'),
(18, 'Occaecati expedita esse blanditiis placeat enim consectetur pariatur eos.', 'admin', 'kegiatan', 0, 'Dolorem quae doloremque sit nesciunt. Aliquam sunt facilis modi fuga alias veniam id. Ea architecto quisquam eos. Aliquam velit placeat aperiam asperiores quas sit fugit.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\b7f3f425d31cf4f6502ba4258c18dd62.png', '2023-12-29 07:54:04', '2023-12-29 07:56:20'),
(19, 'Et modi cumque quod dolorem accusamus ullam.', 'admin', 'kegiatan', 1, 'Nostrum enim odio error odit voluptas enim iusto. Repellat velit quod laboriosam tenetur sunt quaerat similique earum. Temporibus id assumenda voluptas enim eligendi earum voluptas quia.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\f1556d465b921f2647c4b857c72014f3.png', '2023-12-29 07:54:10', '2023-12-29 07:56:20'),
(20, 'Autem expedita asperiores delectus explicabo vitae quaerat ab.', 'admin', 'kegiatan', 1, 'Quia magni provident eligendi consectetur minima. Ut sed eligendi voluptatem ex earum dignissimos consequatur. Expedita rem esse quia ut dolore dolorem. Occaecati qui enim quo deleniti aliquam.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\5e82cd93522bdbd5551c150fdb92f6ed.png', '2023-12-29 07:54:14', '2023-12-29 07:56:20'),
(21, 'Ad praesentium distinctio error nostrum quo.', 'admin', 'kegiatan', 1, 'Occaecati voluptatibus laboriosam placeat veniam in enim. Quisquam officiis sed cupiditate quo beatae. Consequuntur ab est accusantium.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\4be8d3e21797db6f567d2585087cd46c.png', '2023-12-29 07:54:18', '2023-12-29 07:56:20'),
(22, 'Aliquam ad nulla id.', 'admin', 'kegiatan', 1, 'Officia omnis deserunt rerum voluptatem. Eligendi aspernatur iure ut sunt pariatur fuga praesentium. Commodi cupiditate possimus fugiat eaque laborum ullam qui voluptas.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\58c34b3b83616361c9894c943e72e7bc.png', '2023-12-29 07:54:22', '2023-12-29 07:56:20'),
(23, 'Voluptates nisi voluptas cupiditate ea ut numquam fugit.', 'admin', 'kegiatan', 0, 'Ut ut cum laborum nihil enim quisquam. Explicabo ad porro ut inventore ut illo. Sunt ducimus adipisci omnis numquam aut quam enim magni. Quae ratione eveniet ea sit est ipsum dolorum.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\833e9d0d4d404284414d497865e0f2fa.png', '2023-12-29 07:54:30', '2023-12-29 07:56:20'),
(24, 'Aperiam nemo et voluptates id totam aut eum.', 'admin', 'kegiatan', 1, 'Veniam quis id laboriosam eveniet dolorum dolorem. Quam neque quam mollitia ab beatae aut doloremque. At ut repellat sint et hic et. Ut voluptatum praesentium rem itaque. Et et quos autem saepe alias voluptatibus aut.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\cdc5584092abf3298ee63c165f10ad7c.png', '2023-12-29 07:54:36', '2023-12-29 07:56:20'),
(25, 'Iusto minima nihil qui eligendi qui.', 'admin', 'kegiatan', 1, 'Voluptatibus sed aut iure excepturi tempore ut adipisci vero. Repellat incidunt alias praesentium officia quia voluptas. Repudiandae qui velit vitae tempora qui. Reiciendis laudantium doloremque dolorem debitis dolores modi nobis.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\627af620949e860d099aa18ac5506632.png', '2023-12-29 07:54:40', '2023-12-29 07:56:20'),
(26, 'Tempora neque distinctio esse neque.', 'admin', 'kegiatan', 0, 'Delectus aspernatur quisquam nihil quia. Iusto et recusandae occaecati cumque error id. Sunt et harum consequuntur consequatur placeat.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\3fab525c1769836cc7f7e012016cf91c.png', '2023-12-29 07:54:45', '2023-12-29 07:56:20'),
(27, 'Ea laboriosam molestiae facilis ipsum fuga.', 'admin', 'kegiatan', 1, 'Vel fugiat ipsam dolorum consequatur. Quae doloribus consequatur alias soluta et omnis. Occaecati repellat quaerat sed impedit.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\24992b4d30989ce54b52a8516cb0b2df.png', '2023-12-29 07:54:51', '2023-12-29 07:56:20'),
(28, 'Quaerat et similique aut harum.', 'admin', 'kegiatan', 1, 'Numquam accusamus doloremque provident consequatur sed. Et doloremque debitis sed labore quos et. A quaerat impedit voluptatem mollitia maxime voluptatum.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\e3b41c2a42042e1ea597b5b23dbe9f30.png', '2023-12-29 07:54:58', '2023-12-29 07:56:20'),
(29, 'Esse repellat iusto quod in.', 'admin', 'kegiatan', 1, 'Harum illum odio deserunt aut quos ut fugiat. Saepe consequatur perspiciatis repellat enim quia. Alias magnam harum est tempora sed. Veritatis excepturi tempora quos sint.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\35875a5f555e5c6956f119c3c9724502.png', '2023-12-29 07:55:04', '2023-12-29 07:56:20'),
(30, 'Qui natus numquam officiis rerum ipsum vel.', 'admin', 'kegiatan', 1, 'Esse iste velit veniam id tempore dolores. Non non delectus hic velit repudiandae ducimus. Eum iure laboriosam pariatur fuga. Natus at ad aspernatur nobis numquam. Repellat dolores architecto esse odit eius.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\321a6160d5080794e09975b7b8f03924.png', '2023-12-29 07:55:08', '2023-12-29 07:56:20'),
(31, 'Placeat molestiae ea nulla quod quis.', 'admin', 'kegiatan', 1, 'Quasi omnis perspiciatis enim molestiae voluptatem cum. Consequatur quos provident sit vero aliquam quam. Porro laboriosam nemo animi ea omnis nihil. Nihil vel qui perspiciatis doloribus excepturi nihil.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\35aaf531e6f9f09de10384add24dcf0e.png', '2023-12-29 07:55:15', '2023-12-29 07:56:20'),
(32, 'Corporis quis odio sed esse.', 'admin', 'kegiatan', 0, 'Nihil reprehenderit maiores quia. Facere ad consequatur necessitatibus voluptas illo facilis aut reprehenderit. Vel aut consectetur illum qui quod.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\826ce842f0e80119b718d434d9f3ffee.png', '2023-12-29 07:55:21', '2023-12-29 07:56:20'),
(33, 'Quia doloribus asperiores beatae velit labore et.', 'admin', 'kegiatan', 0, 'Nihil ex enim minima quis ut nulla itaque. Quia pariatur consequatur et adipisci. Odit earum velit quae. Ut perspiciatis officiis officiis ullam ex voluptatem.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\ae946152cd67f6738c72bf8195276188.png', '2023-12-29 07:55:25', '2023-12-29 07:56:20'),
(34, 'Quibusdam facere provident repellendus pariatur dignissimos.', 'admin', 'kegiatan', 0, 'Inventore dolorem saepe ut ut. Ipsum quos non atque magnam omnis velit. Id dolore sed dolor id quod et odio. Rem ut illum dicta placeat veritatis.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\312eaf5c300d304a2718e657708c495d.png', '2023-12-29 07:55:29', '2023-12-29 07:56:20'),
(35, 'Quia fuga ut et sint aliquam consequatur ut.', 'admin', 'kegiatan', 1, 'Vero tempora sed aut ut sed quo. Quia sint deleniti fugit ut iste consectetur.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\e1f77350bebb9c0c3b7c405f6ecff12d.png', '2023-12-29 07:55:33', '2023-12-29 07:56:20'),
(36, 'Fugit quasi dignissimos nemo omnis aspernatur omnis saepe perferendis.', 'admin', 'kegiatan', 1, 'In architecto et dicta reiciendis dolor voluptatum. Tempora dolorem est velit sint.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\91c149cc703a8a25c099802c5077305b.png', '2023-12-29 07:55:37', '2023-12-29 07:56:20'),
(37, 'Excepturi sit fugiat nostrum temporibus itaque perspiciatis facilis.', 'admin', 'kegiatan', 1, 'Pariatur aut autem autem et. Vel qui omnis aut non. Est ea eaque dicta non. Minus eos quaerat molestiae distinctio qui delectus nisi.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\acbbccf49d8c3fddc19ede018ab9505b.png', '2023-12-29 07:55:42', '2023-12-29 07:56:20'),
(38, 'Nihil a non possimus consequuntur.', 'admin', 'kegiatan', 1, 'Autem explicabo voluptates architecto reprehenderit itaque ab aspernatur. Alias consequatur nulla et quia. Unde odit sapiente non perspiciatis.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\66ce195b5c0f2544e7a5bfd1f0ac49aa.png', '2023-12-29 07:55:46', '2023-12-29 07:56:20'),
(39, 'Explicabo error accusantium nobis quo aut nobis.', 'admin', 'kegiatan', 1, 'Voluptatem minima quo voluptas qui suscipit error. Aut voluptatem quis et tempora suscipit. Minima eos ullam et quis tempora consequuntur iusto. Voluptatibus deleniti corrupti quibusdam exercitationem.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\b00858a64e9d944428fbc0653cd459f4.png', '2023-12-29 07:55:51', '2023-12-29 07:56:20'),
(40, 'Est quis ipsum ut sint.', 'admin', 'kegiatan', 1, 'Labore debitis soluta nobis voluptatem. Quasi rerum dignissimos odit distinctio facere fuga quisquam. Ad rerum est in magnam commodi.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\be6e5ceca15ddbc1f41fd5b123a7ac52.png', '2023-12-29 07:55:55', '2023-12-29 07:56:20'),
(41, 'Veniam est omnis sint ducimus consequatur ut totam.', 'admin', 'kegiatan', 0, 'Commodi dignissimos fugiat neque. Commodi odit quia sint facilis. Qui officia quasi quia velit pariatur ipsa.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\b3a59eed381ed9c673c16b6d706fa4bf.png', '2023-12-29 07:55:59', '2023-12-29 07:56:20'),
(42, 'Cupiditate rerum laborum ipsam veniam reprehenderit.', 'admin', 'kegiatan', 0, 'Sit eos culpa blanditiis laborum aut quos cum reiciendis. Rerum dolor sed saepe natus. Odio et sed et a animi repellat id.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\c580bfa803dbd727272d7f2432e440ea.png', '2023-12-29 07:56:03', '2023-12-29 07:56:20'),
(43, 'Eos aperiam ex voluptas delectus.', 'admin', 'kegiatan', 1, 'Qui eaque nostrum nostrum incidunt aut accusantium. Est voluptatibus veniam quaerat voluptatem porro commodi.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\0ff00b89001915486f79f4b8ff8990ef.png', '2023-12-29 07:56:07', '2023-12-29 07:56:20'),
(44, 'Quibusdam velit quis ut id et est et.', 'admin', 'kegiatan', 0, 'Et et numquam illum ipsum. Rerum dolorum dolor earum provident. Tempore saepe quae omnis dolorem ipsam quae. Recusandae eligendi consequatur dicta repudiandae natus.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\f7933c85ca95e987eea2808415c3cd36.png', '2023-12-29 07:56:11', '2023-12-29 07:56:20'),
(45, 'Reiciendis laboriosam sunt dolorum facilis distinctio.', 'admin', 'kegiatan', 0, 'Qui voluptatem perspiciatis velit vel harum non et vitae. Sed impedit quisquam consequuntur et. Quae id omnis nisi voluptate ipsum id. Ad est aut et in minus dolor aut hic.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\e3d083946b8c78e81c6944badfcaafe8.png', '2023-12-29 07:56:15', '2023-12-29 07:56:20'),
(46, 'Dolorum maxime exercitationem at molestias doloremque.', 'admin', 'kegiatan', 1, 'Nihil eum quis cum voluptatibus. Consequatur libero accusantium a ad aliquid illo a impedit. Maxime laboriosam ut laudantium.', 'C:\\Users\\Aji\\AppData\\Local\\Temp\\e379f75e287932041254508ebd846f15.png', '2023-12-29 07:56:19', '2023-12-29 07:56:20');

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
(1, 'pakan jangkrik', '90000', '1704088271.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vulputate sollicitudin tortor, at posuere eros eleifend sed. Donec tellus lacus, efficitur non libero ac, placerat consequat dolor. Suspendisse maximus lacus a pellentesque blandit. Fusce risus sapien, mattis et felis ut, gravida eleifend nisi. Duis a quam vel massa porttitor lobortis. Vestibulum ac nibh feugiat, egestas enim quis, molestie nunc. Maecenas sed risus quis libero ultricies convallis id eget arcu. Sed cursus nunc nec velit interdum, non dictum est dignissim. Maecenas convallis euismod aliquet. Maecenas ultrices lacus mollis nunc consequat scelerisque. Quisque commodo enim et pulvinar semper. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi non dui nec ipsum efficitur fringilla ac in felis.', '2023-12-31 22:51:11', '2023-12-31 22:51:11'),
(2, 'pur babi', '20000', '1704088351.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vulputate sollicitudin tortor, at posuere eros eleifend sed. Donec tellus lacus, efficitur non libero ac, placerat consequat dolor. Suspendisse maximus lacus a pellentesque blandit. Fusce risus sapien, mattis et felis ut, gravida eleifend nisi. Duis a quam vel massa porttitor lobortis. Vestibulum ac nibh feugiat, egestas enim quis, molestie nunc. Maecenas sed risus quis libero ultricies convallis id eget arcu. Sed cursus nunc nec velit interdum, non dictum est dignissim. Maecenas convallis euismod aliquet. Maecenas ultrices lacus mollis nunc consequat scelerisque. Quisque commodo enim et pulvinar semper. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi non dui nec ipsum efficitur fringilla ac in felis.', '2023-12-31 22:52:31', '2023-12-31 22:52:31'),
(3, 'pur ayam', '50000', '1704088390.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vulputate sollicitudin tortor, at posuere eros eleifend sed. Donec tellus lacus, efficitur non libero ac, placerat consequat dolor. Suspendisse maximus lacus a pellentesque blandit. Fusce risus sapien, mattis et felis ut, gravida eleifend nisi. Duis a quam vel massa porttitor lobortis. Vestibulum ac nibh feugiat, egestas enim quis, molestie nunc. Maecenas sed risus quis libero ultricies convallis id eget arcu. Sed cursus nunc nec velit interdum, non dictum est dignissim. Maecenas convallis euismod aliquet. Maecenas ultrices lacus mollis nunc consequat scelerisque. Quisque commodo enim et pulvinar semper. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi non dui nec ipsum efficitur fringilla ac in felis.', '2023-12-31 22:53:10', '2023-12-31 22:53:10'),
(4, 'pur daging', '100000', '1704088629.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vulputate sollicitudin tortor, at posuere eros eleifend sed. Donec tellus lacus, efficitur non libero ac, placerat consequat dolor. Suspendisse maximus lacus a pellentesque blandit. Fusce risus sapien, mattis et felis ut, gravida eleifend nisi. Duis a quam vel massa porttitor lobortis. Vestibulum ac nibh feugiat, egestas enim quis, molestie nunc. Maecenas sed risus quis libero ultricies convallis id eget arcu. Sed cursus nunc nec velit interdum, non dictum est dignissim. Maecenas convallis euismod aliquet. Maecenas ultrices lacus mollis nunc consequat scelerisque. Quisque commodo enim et pulvinar semper. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi non dui nec ipsum efficitur fringilla ac in felis.', '2023-12-31 22:57:09', '2023-12-31 22:57:09');

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
(1, 'title_about', 'Sambutan Aji Pangestu', NULL, '2023-12-31 20:40:29'),
(2, 'deskripsi_about', 'deskripsiLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vulputate sollicitudin tortor, at posuere eros eleifend sed. Donec tellus lacus, efficitur non libero ac, placerat consequat dolor. Suspendisse maximus lacus a pellentesque blandit. Fusce risus sapien, mattis et felis ut, gravida eleifend nisi. Duis a quam vel massa porttitor lobortis. Vestibulum ac nibh feugiat, egestas enim quis, molestie nunc. Maecenas sed risus quis libero ultricies convallis id eget arcu. Sed cursus nunc nec velit interdum, non dictum est dignissim. Maecenas convallis euismod aliquet. Maecenas ultrices lacus mollis nunc consequat scelerisque. Quisque commodo enim et pulvinar semper. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi non dui nec ipsum efficitur fringilla ac in felis.', '2023-12-31 16:40:42', '2023-12-31 20:41:38'),
(3, 'gambar_about', '1704080498gambar_about.png', '2023-12-31 16:41:05', '2023-12-31 20:41:38'),
(4, 'twitter', 'https://twitter.com/ijapangestu', '2023-12-31 16:42:45', '2023-12-31 11:09:16'),
(5, 'instagram', 'https://twitter.com/ijapangestu', '2023-12-31 16:42:45', '2023-12-31 11:09:16'),
(6, 'facebook', 'https://twitter.com/ijapangestu', '2023-12-31 16:42:45', '2023-12-31 11:09:16'),
(7, 'website', 'https://twitter.com/ijapangestu', '2023-12-31 16:42:45', '2023-12-31 11:09:16'),
(8, 'email_kontak', 'email@', '2023-12-31 16:44:25', '2023-12-31 11:31:59'),
(9, 'phone_kontak', '0896301948', '2023-12-31 16:44:25', '2023-12-31 20:09:51'),
(10, 'alamat_kontak', 'cibanteng agathis', '2023-12-31 16:44:25', '2023-12-31 20:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
