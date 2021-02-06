-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 06 Feb 2021 pada 04.02
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daftarbuku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(17, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-25 23:06:11', 1),
(18, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-26 07:50:17', 1),
(19, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-26 01:38:22', 1),
(20, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-26 01:42:04', 1),
(21, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-26 01:49:30', 1),
(22, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-26 01:55:55', 1),
(23, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-26 02:06:23', 1),
(24, '127.0.0.1', 'ajib10@gmail.com', 5, '2021-01-26 18:47:57', 1),
(25, '127.0.0.1', 'anang10', NULL, '2021-01-26 19:27:15', 0),
(26, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-26 19:27:27', 1),
(27, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-26 19:47:03', 1),
(28, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-27 01:29:22', 1),
(29, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-27 16:37:26', 1),
(30, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-27 16:53:17', 1),
(31, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-27 16:57:58', 1),
(32, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-27 17:01:40', 1),
(33, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-27 17:03:00', 1),
(34, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-29 20:39:37', 1),
(35, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-01-30 02:33:03', 1),
(36, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-02-03 20:23:30', 1),
(37, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-02-03 21:55:38', 1),
(38, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-02-03 22:46:47', 1),
(39, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-02-04 18:42:49', 1),
(40, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-02-04 19:48:40', 1),
(41, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-02-04 21:09:40', 1),
(42, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-02-04 21:45:46', 1),
(43, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-02-05 16:45:24', 1),
(44, '127.0.0.1', 'anang1000@gmail.com', 4, '2021-02-05 20:55:45', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Surat Kecil Untuk Tuhan', 'surat kecil untuk tuhan', 'Agnes davonar', 'Gramedia', 'skut.jpg', NULL, NULL),
(2, 'Laskar Pelangi', 'laskar-pelangi', 'Andrea Hirata', 'Airlangga', 'laskar_3.jpg', '2020-11-01 02:07:10', '2020-11-01 02:07:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-09-10-022310', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1604218229, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1606016626, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Gasti Oktaviani', 'Dk. Gegerkalong Hilir No. 702, Surabaya 13492, JaBar', '1983-02-20 00:17:23', '2020-11-01 02:11:44'),
(2, 'Harjasa Cakrawala Iswahyudi S.Farm', 'Kpg. Yohanes No. 364, Palu 73096, Maluku', '1973-01-25 23:28:10', '2020-11-01 02:11:44'),
(3, 'Carla Wastuti', 'Gg. Rumah Sakit No. 443, Administrasi Jakarta Selatan 38777, SulSel', '2018-12-20 22:32:22', '2020-11-01 02:11:44'),
(4, 'Ella Yuliarti S.Farm', 'Ds. Sugiono No. 152, Sabang 33849, Lampung', '2008-01-22 14:24:16', '2020-11-01 02:11:44'),
(5, 'Bahuwirya Balamantri Sitorus', 'Kpg. Pattimura No. 572, Bontang 37086, SumUt', '2001-02-14 15:06:45', '2020-11-01 02:11:44'),
(6, 'Edi Ramadan', 'Ds. K.H. Maskur No. 457, Kendari 65969, SulTra', '1989-12-10 05:17:41', '2020-11-01 02:11:44'),
(7, 'Kayla Wirda Puspasari', 'Jln. Nangka No. 354, Banjar 67076, SulBar', '1977-10-10 13:22:35', '2020-11-01 02:11:44'),
(8, 'Zulfa Paulin Susanti', 'Gg. Ujung No. 685, Batam 45322, BaBel', '2017-08-10 02:22:42', '2020-11-01 02:11:44'),
(9, 'Puji Putri Mulyani S.E.I', 'Psr. Perintis Kemerdekaan No. 142, Binjai 48665, Riau', '1992-11-06 07:55:42', '2020-11-01 02:11:44'),
(10, 'Anita Laksmiwati', 'Jr. Wora Wari No. 567, Mojokerto 61688, DIY', '1988-07-29 21:31:15', '2020-11-01 02:11:44'),
(11, 'Nyoman Pradipta', 'Jln. Yohanes No. 457, Sabang 71538, Lampung', '1980-03-05 03:12:19', '2020-11-01 02:11:44'),
(12, 'Ibrahim Hutapea', 'Ki. Ters. Jakarta No. 37, Serang 83911, KalTim', '2017-04-30 10:02:52', '2020-11-01 02:11:44'),
(13, 'Zalindra Shakila Mayasari S.H.', 'Kpg. Dipenogoro No. 548, Tasikmalaya 25154, KalTim', '2001-07-16 15:51:02', '2020-11-01 02:11:45'),
(14, 'Mila Lestari', 'Psr. Surapati No. 696, Batam 91733, Gorontalo', '2009-03-29 00:02:34', '2020-11-01 02:11:45'),
(15, 'Dasa Mustofa Tarihoran', 'Kpg. Barasak No. 826, Medan 95609, NTT', '2009-07-06 06:49:34', '2020-11-01 02:11:45'),
(16, 'Saadat Habibi S.E.I', 'Ki. Siliwangi No. 41, Banjarbaru 33062, SumSel', '2015-01-07 00:43:47', '2020-11-01 02:11:45'),
(17, 'Umi Anggraini S.E.I', 'Kpg. Agus Salim No. 896, Palu 74551, JaBar', '1984-10-10 22:55:36', '2020-11-01 02:11:45'),
(18, 'Sabar Salahudin', 'Kpg. Soekarno Hatta No. 67, Cimahi 92199, KalBar', '2017-01-30 19:49:22', '2020-11-01 02:11:45'),
(19, 'Elisa Cornelia Nasyiah', 'Jr. Ekonomi No. 563, Kendari 37963, Maluku', '1985-09-25 23:45:30', '2020-11-01 02:11:45'),
(20, 'Mutia Winarsih', 'Dk. Bazuka Raya No. 212, Surakarta 55528, NTB', '2013-12-19 10:11:51', '2020-11-01 02:11:45'),
(21, 'Rosman Pardi Rajata', 'Ds. Bakti No. 816, Magelang 97001, MalUt', '1983-03-21 03:56:11', '2020-11-01 02:11:45'),
(22, 'Samsul Saputra', 'Psr. Laksamana No. 180, Kendari 62127, DIY', '2012-02-10 11:47:24', '2020-11-01 02:11:45'),
(23, 'Mitra Firgantoro', 'Dk. Salak No. 86, Tangerang Selatan 29986, Gorontalo', '1976-08-13 22:03:03', '2020-11-01 02:11:45'),
(24, 'Nurul Aryani', 'Jln. Kebangkitan Nasional No. 761, Padangsidempuan 49877, MalUt', '1975-10-09 18:59:47', '2020-11-01 02:11:45'),
(25, 'Martana Maulana', 'Gg. Bata Putih No. 885, Banda Aceh 37873, KalSel', '2012-09-07 03:02:17', '2020-11-01 02:11:45'),
(26, 'Paris Kiandra Hassanah', 'Jln. Bagonwoto  No. 206, Payakumbuh 32650, Maluku', '2020-08-16 19:29:29', '2020-11-01 02:11:45'),
(27, 'Malika Puspita S.Farm', 'Jr. Sukabumi No. 719, Dumai 55034, Maluku', '1977-10-02 15:10:05', '2020-11-01 02:11:45'),
(28, 'Prayogo Kuswoyo', 'Psr. M.T. Haryono No. 415, Balikpapan 18846, Bali', '2015-07-03 04:54:56', '2020-11-01 02:11:45'),
(29, 'Dalimin Napitupulu', 'Gg. Cokroaminoto No. 344, Kendari 33570, MalUt', '2007-06-11 04:09:46', '2020-11-01 02:11:45'),
(30, 'Dwi Mansur M.Ak', 'Ki. Gegerkalong Hilir No. 931, Banjarmasin 92106, Bali', '2000-09-19 03:40:26', '2020-11-01 02:11:45'),
(31, 'Cawisono Siregar S.Pd', 'Ds. Bakaru No. 649, Ternate 89137, JaTim', '1980-05-02 09:15:46', '2020-11-01 02:11:45'),
(32, 'Almira Andriani', 'Dk. Salak No. 870, Batam 51952, Aceh', '2001-01-13 12:54:22', '2020-11-01 02:11:45'),
(33, 'Dina Melinda Yulianti S.H.', 'Ki. Ikan No. 371, Tangerang 10299, SulTra', '1987-06-15 04:55:01', '2020-11-01 02:11:45'),
(34, 'Hamima Usada', 'Ds. Kusmanto No. 150, Langsa 52221, KalTeng', '1994-10-25 22:36:02', '2020-11-01 02:11:45'),
(35, 'Silvia Sakura Usamah S.Kom', 'Psr. Otto No. 584, Cirebon 38251, JaBar', '2003-08-23 11:45:51', '2020-11-01 02:11:45'),
(36, 'Gabriella Usyi Zulaika S.Farm', 'Psr. Uluwatu No. 114, Langsa 81323, JaBar', '1988-04-02 14:03:02', '2020-11-01 02:11:46'),
(37, 'Jelita Hastuti', 'Ki. Nangka No. 63, Padangpanjang 68852, Papua', '1971-05-01 10:57:45', '2020-11-01 02:11:46'),
(38, 'Nyoman Manah Wacana', 'Jln. Krakatau No. 46, Madiun 33526, SulBar', '1973-09-12 02:36:33', '2020-11-01 02:11:46'),
(39, 'Asmuni Putra', 'Ki. Bayan No. 48, Tanjungbalai 32362, Banten', '2018-03-14 16:22:57', '2020-11-01 02:11:46'),
(40, 'Elvina Pratiwi', 'Dk. Babadan No. 282, Banjarmasin 93572, Aceh', '1979-10-13 20:58:31', '2020-11-01 02:11:46'),
(41, 'Ian Gaman Wacana S.Psi', 'Jr. Kyai Gede No. 59, Tanjung Pinang 45062, PapBar', '1997-06-27 02:11:13', '2020-11-01 02:11:46'),
(42, 'Galiono Pradana', 'Ds. Suryo Pranoto No. 829, Tarakan 47234, KepR', '2014-01-09 22:18:53', '2020-11-01 02:11:46'),
(43, 'Hesti Dina Pratiwi', 'Psr. Bakau Griya Utama No. 358, Administrasi Jakarta Timur 94230, KalBar', '2002-12-16 13:21:47', '2020-11-01 02:11:46'),
(44, 'Queen Fujiati', 'Kpg. Diponegoro No. 731, Serang 55936, SumSel', '2019-03-26 20:58:11', '2020-11-01 02:11:46'),
(45, 'Nalar Sitorus M.Kom.', 'Kpg. Bappenas No. 652, Tasikmalaya 14378, JaTim', '2008-11-06 09:26:24', '2020-11-01 02:11:46'),
(46, 'Violet Permata', 'Ds. Basoka Raya No. 684, Probolinggo 79850, JaTim', '2016-04-24 11:16:45', '2020-11-01 02:11:46'),
(47, 'Sabrina Iriana Laksmiwati S.Farm', 'Ds. Sunaryo No. 850, Pematangsiantar 16368, SumBar', '2001-06-18 07:29:18', '2020-11-01 02:11:46'),
(48, 'Harja Gunarto', 'Jln. Kartini No. 235, Balikpapan 14448, MalUt', '2016-04-29 13:50:20', '2020-11-01 02:11:46'),
(49, 'Maya Julia Agustina', 'Psr. Bahagia No. 710, Lhokseumawe 38424, Gorontalo', '1997-11-30 02:33:54', '2020-11-01 02:11:46'),
(50, 'Shania Pudjiastuti', 'Psr. Bara Tambar No. 504, Tegal 60972, Aceh', '1995-05-05 06:24:20', '2020-11-01 02:11:46'),
(51, 'Bakiono Firmansyah', 'Gg. Banal No. 361, Tebing Tinggi 36872, SumUt', '1982-11-03 23:43:17', '2020-11-01 02:11:46'),
(52, 'Shania Rika Yuniar S.Sos', 'Psr. Kalimalang No. 192, Balikpapan 15661, BaBel', '2003-09-04 14:39:01', '2020-11-01 02:11:46'),
(53, 'Melinda Utami', 'Psr. Bahagia  No. 394, Tegal 74109, KepR', '2011-09-28 04:41:58', '2020-11-01 02:11:46'),
(54, 'Patricia Laksita', 'Kpg. Babakan No. 900, Pontianak 94442, BaBel', '1971-08-20 04:19:10', '2020-11-01 02:11:47'),
(55, 'Eli Silvia Mardhiyah S.Pd', 'Jr. Rajawali Timur No. 746, Mataram 68201, Gorontalo', '2012-05-04 03:11:51', '2020-11-01 02:11:47'),
(56, 'Alambana Taufan Habibi M.Pd', 'Jr. Kyai Gede No. 181, Balikpapan 57196, SumBar', '2005-06-25 17:04:45', '2020-11-01 02:11:47'),
(57, 'Anita Rahmawati S.Gz', 'Jln. Sudirman No. 357, Kotamobagu 17013, DIY', '2007-03-30 04:59:15', '2020-11-01 02:11:47'),
(58, 'Patricia Puspita', 'Jr. Bass No. 909, Pangkal Pinang 80207, SulBar', '1994-03-03 23:07:53', '2020-11-01 02:11:47'),
(59, 'Prabawa Ikhsan Adriansyah', 'Gg. Ahmad Dahlan No. 445, Banda Aceh 10842, KalTeng', '2008-10-07 03:54:38', '2020-11-01 02:11:47'),
(60, 'Rahayu Lailasari', 'Ds. Sutarto No. 763, Banjarbaru 13066, Jambi', '2014-10-15 15:18:53', '2020-11-01 02:11:47'),
(61, 'Mila Nasyidah', 'Ki. Padang No. 26, Padang 13749, SulBar', '1973-04-15 21:21:06', '2020-11-01 02:11:47'),
(62, 'Nugraha Ardianto S.IP', 'Psr. Kartini No. 197, Binjai 26936, NTB', '2008-04-12 20:50:03', '2020-11-01 02:11:47'),
(63, 'Restu Pratiwi', 'Jr. Imam No. 340, Administrasi Jakarta Timur 18039, DIY', '2019-03-12 15:13:22', '2020-11-01 02:11:47'),
(64, 'Najwa Suryatmi S.E.I', 'Kpg. Kartini No. 782, Medan 34995, JaTim', '1976-04-09 11:58:23', '2020-11-01 02:11:47'),
(65, 'Sakura Tania Haryanti', 'Gg. Nangka No. 933, Bekasi 28002, DKI', '1978-07-18 13:19:20', '2020-11-01 02:11:47'),
(66, 'Pia Purwanti', 'Jln. R.E. Martadinata No. 844, Pariaman 81641, KalTim', '1991-10-07 20:55:06', '2020-11-01 02:11:47'),
(67, 'Raditya Hutagalung S.I.Kom', 'Ki. Bakau No. 938, Lubuklinggau 21258, SulTra', '1983-09-09 17:45:48', '2020-11-01 02:11:47'),
(68, 'Ghaliyati Laksmiwati', 'Ki. Barat No. 59, Tomohon 15862, SulSel', '1980-03-06 07:08:06', '2020-11-01 02:11:47'),
(69, 'Prima Prasasta', 'Jln. Untung Suropati No. 586, Subulussalam 44297, NTT', '1999-11-12 09:51:11', '2020-11-01 02:11:47'),
(70, 'Anita Genta Novitasari', 'Dk. Gedebage Selatan No. 823, Samarinda 44087, JaTim', '2008-12-19 21:26:01', '2020-11-01 02:11:47'),
(71, 'Unjani Ulya Namaga S.Pt', 'Jr. Laksamana No. 899, Balikpapan 83900, SulTra', '2006-01-22 01:36:47', '2020-11-01 02:11:47'),
(72, 'Najwa Agustina', 'Ki. Radio No. 382, Tanjungbalai 61139, KalTim', '2007-06-15 04:05:48', '2020-11-01 02:11:47'),
(73, 'Among Gandi Uwais S.Psi', 'Psr. Samanhudi No. 843, Metro 52457, Aceh', '2017-05-29 14:54:18', '2020-11-01 02:11:47'),
(74, 'Titi Rahayu S.I.Kom', 'Kpg. Sentot Alibasa No. 522, Salatiga 29940, SulUt', '1995-04-10 05:58:13', '2020-11-01 02:11:47'),
(75, 'Jasmin Rachel Laksmiwati', 'Psr. Cokroaminoto No. 148, Cirebon 31405, KalTim', '1970-09-07 11:20:37', '2020-11-01 02:11:48'),
(76, 'Ajimat Budiman', 'Kpg. Bambu No. 339, Padang 53260, KalTeng', '2017-09-02 08:04:19', '2020-11-01 02:11:48'),
(77, 'Titin Handayani', 'Gg. Mulyadi No. 872, Serang 67635, Bali', '1984-08-18 07:56:55', '2020-11-01 02:11:48'),
(78, 'Hesti Yance Laksmiwati S.Gz', 'Jr. Krakatau No. 709, Sabang 89959, NTB', '1978-10-05 20:41:27', '2020-11-01 02:11:48'),
(79, 'Mustofa Pangestu', 'Ds. Acordion No. 38, Bau-Bau 28994, SulBar', '1998-03-11 23:36:09', '2020-11-01 02:11:48'),
(80, 'Ira Hesti Safitri', 'Gg. Dipenogoro No. 131, Bogor 86432, KalTeng', '1979-09-28 09:32:56', '2020-11-01 02:11:48'),
(81, 'Irfan Prabowo M.Farm', 'Dk. Tambun No. 71, Ternate 48418, KalBar', '1981-01-30 23:42:43', '2020-11-01 02:11:48'),
(82, 'Cahyo Ramadan S.H.', 'Ds. Ikan No. 24, Kupang 62582, Banten', '2004-08-18 22:45:53', '2020-11-01 02:11:48'),
(83, 'Maida Ghaliyati Puspita', 'Dk. Honggowongso No. 230, Manado 88210, NTT', '1974-09-04 03:39:12', '2020-11-01 02:11:48'),
(84, 'Diah Susanti', 'Jln. Suharso No. 789, Denpasar 23000, Gorontalo', '2001-03-20 12:35:55', '2020-11-01 02:11:48'),
(85, 'Danang Prabowo S.Gz', 'Ds. Salatiga No. 269, Samarinda 52266, Lampung', '2006-09-24 16:36:14', '2020-11-01 02:11:48'),
(86, 'Cinthia Puspita', 'Gg. Salatiga No. 582, Pasuruan 27992, DKI', '1988-01-27 23:14:23', '2020-11-01 02:11:48'),
(87, 'Qori Purwanti S.Ked', 'Jln. Cemara No. 171, Salatiga 63751, KepR', '2007-01-09 22:09:02', '2020-11-01 02:11:48'),
(88, 'Humaira Rachel Nuraini', 'Ds. Bahagia No. 476, Kediri 99636, JaTeng', '1982-10-06 21:41:35', '2020-11-01 02:11:48'),
(89, 'Kiandra Handayani', 'Jr. Baranangsiang No. 7, Bekasi 50279, Riau', '2001-06-16 15:28:31', '2020-11-01 02:11:48'),
(90, 'Laswi Putra', 'Psr. Bak Mandi No. 644, Probolinggo 29119, KalTeng', '2009-09-29 05:49:49', '2020-11-01 02:11:48'),
(91, 'Natalia Pertiwi', 'Psr. Bazuka Raya No. 779, Bima 35257, Papua', '2002-05-19 02:59:47', '2020-11-01 02:11:48'),
(92, 'Ellis Vanya Yuniar S.I.Kom', 'Jln. Barasak No. 545, Malang 61215, KalSel', '1983-08-01 15:48:05', '2020-11-01 02:11:48'),
(93, 'Wakiman Tampubolon S.Pd', 'Ki. Abdullah No. 332, Medan 39409, SumBar', '1982-10-23 16:14:04', '2020-11-01 02:11:49'),
(94, 'Amalia Zulaika', 'Gg. Basmol Raya No. 272, Payakumbuh 98480, Bengkulu', '1979-11-28 10:33:32', '2020-11-01 02:11:49'),
(95, 'Cawisono Hakim', 'Jr. Basoka Raya No. 54, Administrasi Jakarta Selatan 64157, DKI', '2009-01-21 07:53:13', '2020-11-01 02:11:49'),
(96, 'Agnes Lailasari', 'Ds. Basoka Raya No. 465, Solok 33903, Riau', '1975-10-24 15:40:08', '2020-11-01 02:11:49'),
(97, 'Keisha Carla Nurdiyanti', 'Ki. Ekonomi No. 497, Prabumulih 21854, KalTeng', '2006-11-25 07:49:26', '2020-11-01 02:11:49'),
(98, 'Ilsa Nasyiah', 'Ki. Bakin No. 862, Prabumulih 38903, JaTim', '1980-08-20 04:06:25', '2020-11-01 02:11:49'),
(99, 'Wira Waluyo M.Kom.', 'Ds. Gading No. 384, Padang 83301, SulTeng', '2005-08-01 18:00:40', '2020-11-01 02:11:49'),
(100, 'Syahrini Puspasari', 'Ds. Elang No. 453, Lhokseumawe 54356, Bali', '1982-07-06 22:57:50', '2020-11-01 02:11:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id` int(11) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `orangtua` varchar(255) NOT NULL,
  `walikelas` varchar(255) NOT NULL,
  `jenis_pelanggaran` varchar(255) NOT NULL,
  `point` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggaran`
--

INSERT INTO `pelanggaran` (`id`, `nama_siswa`, `slug`, `nim`, `kelas`, `orangtua`, `walikelas`, `jenis_pelanggaran`, `point`, `created_at`, `updated_at`) VALUES
(1, 'ajib Alfazunta', 'ajib-alfazunta', '17263534445', '10 ips 1', 'suyati', 'hartatik', 'Terlambat', 10, NULL, '2021-01-27 01:33:09'),
(2, 'Muhammad Hidayat', 'muhammad-hidayat', '12345', '11 ipa 3', 'marsinah', 'darsono', 'Merokok / Minum-minuman Keras', 10, NULL, '2021-01-29 23:00:20'),
(7, 'suryaniii', 'suryaniii', '176384', '10 ipa 5', 'harto', 'mukhlis', 'Terlambat', 10, '2021-01-26 00:51:57', '2021-01-30 02:40:39'),
(8, 'Arif Maulana', 'arif-maulana', '16726353', '12 ipa 2', 'sri', 'darto', 'Bolos Sekolah', 10, '2021-01-26 07:55:01', '2021-02-03 22:48:17'),
(33, 'nabilla Ayu Rinjani', 'nabilla-ayu-rinjani', '13434', '10 ipa 3', 'hartono', 'edi', 'Terlambat', 10, '2021-01-29 22:50:17', '2021-01-30 02:36:20'),
(39, 'Bambang', 'bambang', '18736484', '12 ips 4', 'hari', 'sulis', 'Atribut tidak Lengkap', 10, '2021-01-30 02:38:39', '2021-01-30 02:38:39'),
(47, 'reza', 'reza', '12345666', '10 bahasa 1', 'imam', 'gunawan', 'Atribut tidak Lengkap', 12, '2021-02-04 18:55:22', '2021-02-04 18:55:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'anang@gmail.com', 'anang', '$2y$10$2FxHiBbrykOY3mMITJKu0.68.bZMbm837F/GlZ0SUfv9TTF9zSjVq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-22 17:02:02', '2020-11-22 17:02:02', NULL),
(2, 'anang10@gmail.com', 'anang10', '$2y$10$Nmgr3292zJcw2WaU69rTTeqWh8kABf6B10GxeK3qV3ErUsQ9HG5Qm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-27 20:10:10', '2020-11-27 20:10:10', NULL),
(3, 'anang100@gmail.com', 'anang100', '$2y$10$rL8cTafkwPOWHfqCJn6khea2mGvZ9Xz6ePCbA8pfcUm/9IXa0nmve', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-01-15 01:11:52', '2021-01-15 01:11:52', NULL),
(4, 'anang1000@gmail.com', 'anang1000', '$2y$10$aTqwrNpzUZDIbwvxZDv2/OTi0faoA/LFlN9PUL5pLe/cnrpcG1D9y', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-01-25 23:05:58', '2021-01-25 23:05:58', NULL),
(5, 'ajib10@gmail.com', 'ajib10', '$2y$10$zoLEN/L9s3Uuw2AOqWz55eTKygSThQMEDnijXIMtHnmtvoopTeUsC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-01-26 18:47:43', '2021-01-26 18:47:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `pelanggaran`
--
ALTER TABLE `pelanggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
