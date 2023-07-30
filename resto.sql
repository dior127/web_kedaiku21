-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 12:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto`
--

-- --------------------------------------------------------

--
-- Table structure for table `resto_akses`
--

CREATE TABLE `resto_akses` (
  `akses_id` int(2) NOT NULL,
  `user_username` varchar(30) NOT NULL,
  `kategori_id` int(2) NOT NULL,
  `akses_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `resto_contact`
--

CREATE TABLE `resto_contact` (
  `contact_id` int(2) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_address` text NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `contact_web` varchar(50) DEFAULT NULL,
  `contact_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_contact`
--

INSERT INTO `resto_contact` (`contact_id`, `contact_name`, `contact_address`, `contact_phone`, `contact_email`, `contact_web`, `contact_update`) VALUES
(1, 'Kedaiku 21', 'Pesawaran', '082248577297', 'kedaiku21@gmail.com', 'https://kedaiku21.com', '2023-07-03 16:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `resto_kategori`
--

CREATE TABLE `resto_kategori` (
  `kategori_id` int(2) NOT NULL,
  `kategori_nama` varchar(50) NOT NULL,
  `kategori_seo` text NOT NULL,
  `kategori_icon` varchar(50) NOT NULL,
  `kategori_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_kategori`
--

INSERT INTO `resto_kategori` (`kategori_id`, `kategori_nama`, `kategori_seo`, `kategori_icon`, `kategori_update`) VALUES
(1, 'DESSERT', 'dessert', 'po po-salads', '2019-03-10 21:46:29'),
(2, 'MAIN COURSE', 'main-course', 'po po-burger', '2019-03-10 21:50:26'),
(3, 'SNACK', 'snack', 'po po-fries', '2019-03-10 21:47:02'),
(4, 'DRINK', 'drink', 'po po-drinks', '2019-03-10 21:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `resto_meja`
--

CREATE TABLE `resto_meja` (
  `meja_id` int(2) NOT NULL,
  `meja_nama` varchar(50) NOT NULL,
  `meja_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_meja`
--

INSERT INTO `resto_meja` (`meja_id`, `meja_nama`, `meja_update`) VALUES
(1, '1', '2019-03-09 21:49:24'),
(2, '2', '2019-03-09 21:49:27'),
(3, '3', '2019-03-09 21:49:31'),
(4, '4', '2019-04-29 21:58:04'),
(5, '5', '2019-04-30 11:11:19'),
(6, '6', '2019-04-30 11:11:28'),
(7, '7', '2019-04-30 11:11:37'),
(8, '8', '2019-04-30 11:11:45'),
(9, '9', '2019-04-30 11:11:53'),
(10, '2', '2019-04-30 11:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `resto_menu`
--

CREATE TABLE `resto_menu` (
  `menu_id` int(10) NOT NULL,
  `kategori_id` int(2) NOT NULL,
  `menu_kode` varchar(5) NOT NULL,
  `menu_nama` varchar(50) NOT NULL,
  `menu_seo` text NOT NULL,
  `menu_deskripsi` text NOT NULL,
  `menu_harga` int(10) NOT NULL DEFAULT '0' COMMENT 'Harga',
  `menu_waktu` int(2) NOT NULL DEFAULT '0' COMMENT 'Waktu Masak',
  `menu_foto` varchar(100) DEFAULT NULL COMMENT 'Foto Masakan',
  `menu_jual` int(10) NOT NULL DEFAULT '0',
  `menu_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_menu`
--

INSERT INTO `resto_menu` (`menu_id`, `kategori_id`, `menu_kode`, `menu_nama`, `menu_seo`, `menu_deskripsi`, `menu_harga`, `menu_waktu`, `menu_foto`, `menu_jual`, `menu_update`) VALUES
(1, 1, '00001', 'PANCAKE COKELAT', 'pancake-cokelat', 'Roti Cokelat dengan Topping Cokelat Kental diatasnya', 15000, 6, 'Menu_makanan_pancake-cokelat_1552196777.jpg', 4, '2019-03-10 12:58:33'),
(2, 1, '00002', 'PIE COKELAT', 'pie-cokelat', 'pie cokelat nikmat dan manis', 10000, 8, 'Menu_makanan_pie-cokelat_1552197559.jpg', 2, '2019-03-10 12:59:19'),
(3, 1, '00003', 'STRAWBERRY CAKE', 'strawberry-cake', 'cake dengan taburan dan saus strawberry', 30000, 10, 'Menu_makanan_strawberry-cake_1552200399.jpg', 3, '2019-03-10 13:46:39'),
(4, 1, '00004', 'STRAWBERRY  SOFT', 'strawberry--soft', 'strawbbery', 25000, 10, 'Menu_makanan_strawberry--soft_1552200644.jpg', 0, '2019-03-10 13:50:44'),
(5, 2, '00005', 'NASI GORENG SEAFOOD', 'nasi-goreng-seafood', 'nasi goreng dengan campuran seafood, udang dan sayuran', 15000, 10, 'Menu_makanan_nasi-goreng-seafood_1552200829.jpg', 3, '2019-03-10 13:53:49'),
(6, 2, '00006', 'MASI GORENG TERI GURIH', 'masi-goreng-teri-gurih', 'nasi goreng dengan tambahan teri gurih dan rempah yang enak', 17000, 10, 'Menu_makanan_masi-goreng-teri-gurih_1552200907.jpg', 0, '2019-03-10 13:55:07'),
(7, 2, '00007', 'STEAK PANGGANG', 'steak-panggang', 'daging sapi pilihan dimasak dengan bumbu rempah BBQ', 50000, 15, 'Menu_makanan_steak-panggang_1552200981.jpg', 1, '2019-03-10 13:56:21'),
(8, 2, '00008', 'MIE GORENG SEAFOOD', 'mie-goreng-seafood', 'Mie goreng dengan tambahan ikan dan udang', 13000, 5, 'Menu_makanan_mie-goreng-seafood_1552201071.jpg', 2, '2019-03-10 13:57:51'),
(9, 4, '00009', 'JUS ALPUKAT', 'jus-alpukat', 'jus alpukat dari buah alpukat pilihan yang segar', 7000, 2, 'Menu_makanan_jus-alpukat_1552201145.jpg', 3, '2019-03-10 13:59:05'),
(10, 4, '00010', 'JUS STRAWBERRY', 'jus-strawberry', 'Jus strawberry segar', 7000, 2, 'Menu_makanan_jus-strawberry_1552202038.jpg', 0, '2019-03-10 14:21:33'),
(11, 4, '00011', 'ES TEH LEMON', 'es-teh-lemon', 'Es Teh Lemon', 5000, 2, 'Menu_makanan_es-teh-lemon_1552202101.jpg', 0, '2019-03-10 14:15:01'),
(12, 4, '00012', 'ES SUSU COKELAT', 'es-susu-cokelat', 'es susu cokelat segar', 10000, 3, 'Menu_makanan_es-susu-cokelat_1552202151.jpg', 1, '2019-03-10 14:15:51'),
(13, 4, '00013', 'ES KOPI CAPPUCINO', 'es-kopi-cappucino', 'Es kopi cappucino', 10000, 4, 'Menu_makanan_es-kopi-cappucino_1552202327.jpg', 1, '2019-03-10 14:18:47'),
(14, 3, '00014', 'FRIENCH FRIES', 'friench-fries', 'kentang goreng dengan potongan jumbo', 5000, 4, 'Menu_makanan_friench-fries_1552202378.jpg', 2, '2019-03-10 14:19:38'),
(15, 3, '00015', 'PISANG GORENG COKELAT KEJU', 'pisang-goreng-cokelat-keju', 'pisang goreng dengan lapisan cokelat dan taburan keju', 15000, 5, 'Menu_makanan_pisang-goreng-cokelat-keju_1552202437.jpg', 0, '2019-03-10 14:20:37'),
(16, 3, '00016', 'TEMPE GORENG / MENDOAN', 'tempe-goreng--mendoan', 'tempe goreng dengan tepung gurih', 5000, 5, 'Menu_makanan_tempe-goreng--mendoan_1552202483.jpg', 0, '2019-03-10 14:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `resto_meta`
--

CREATE TABLE `resto_meta` (
  `meta_id` int(2) NOT NULL,
  `meta_name` varchar(50) NOT NULL COMMENT 'Nama Website',
  `meta_desc` text,
  `meta_keyword` text,
  `meta_author` varchar(100) DEFAULT NULL,
  `meta_developer` varchar(50) DEFAULT NULL,
  `meta_robots` varchar(50) DEFAULT NULL,
  `meta_googlebots` varchar(50) DEFAULT NULL,
  `meta_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_meta`
--

INSERT INTO `resto_meta` (`meta_id`, `meta_name`, `meta_desc`, `meta_keyword`, `meta_author`, `meta_developer`, `meta_robots`, `meta_googlebots`, `meta_update`) VALUES
(1, 'Kedai| Kedaiku21', 'Aplikasi Menu DIgital untuk Pemesanan Makanan dan Minuman', 'resto', 'NOKENCODE', 'NOKENCODE', 'index, follow', 'index, follow', '2023-07-13 21:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `resto_order`
--

CREATE TABLE `resto_order` (
  `order_id` int(10) NOT NULL,
  `meja_id` int(2) NOT NULL,
  `order_nama` varchar(50) NOT NULL,
  `order_tanggal` date DEFAULT NULL,
  `order_catatan` text,
  `order_qty` int(5) NOT NULL,
  `order_waktu` int(10) NOT NULL DEFAULT '0',
  `order_diskon` int(10) NOT NULL DEFAULT '0',
  `order_total` int(10) NOT NULL DEFAULT '0',
  `order_bayar` int(10) NOT NULL DEFAULT '0',
  `order_kembali` int(10) DEFAULT '0',
  `order_tgl_bayar` date DEFAULT NULL,
  `order_status` int(1) NOT NULL DEFAULT '1' COMMENT '1=Blm Bayar,2=Bayar',
  `user_username` varchar(30) DEFAULT NULL COMMENT 'User Bayar',
  `order_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_order`
--

INSERT INTO `resto_order` (`order_id`, `meja_id`, `order_nama`, `order_tanggal`, `order_catatan`, `order_qty`, `order_waktu`, `order_diskon`, `order_total`, `order_bayar`, `order_kembali`, `order_tgl_bayar`, `order_status`, `user_username`, `order_update`) VALUES
(1, 9, 'DIRGANTARA', '2023-07-13', 'Mi gorengnya pedas', 3, 11, 0, 25000, 30000, 5000, '2023-07-13', 2, 'admin', '2023-07-13 18:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `resto_order_detail`
--

CREATE TABLE `resto_order_detail` (
  `order_detail_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `menu_id` int(10) NOT NULL,
  `order_detail_harga` int(10) NOT NULL DEFAULT '0',
  `order_detail_waktu` int(5) NOT NULL DEFAULT '0',
  `order_detail_qty` int(5) NOT NULL DEFAULT '0',
  `order_detail_subtotal` int(10) NOT NULL DEFAULT '0',
  `order_detail_status` int(1) NOT NULL DEFAULT '1' COMMENT '1=Baru, 2=Selesai',
  `order_detail_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_order_detail`
--

INSERT INTO `resto_order_detail` (`order_detail_id`, `order_id`, `menu_id`, `order_detail_harga`, `order_detail_waktu`, `order_detail_qty`, `order_detail_subtotal`, `order_detail_status`, `order_detail_update`) VALUES
(1, 1, 14, 5000, 4, 1, 5000, 2, '2023-07-13 18:50:34'),
(2, 1, 9, 7000, 2, 1, 7000, 2, '2023-07-13 18:50:34'),
(3, 1, 8, 13000, 5, 1, 13000, 2, '2023-07-13 18:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `resto_slider`
--

CREATE TABLE `resto_slider` (
  `slider_id` int(2) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_slider`
--

INSERT INTO `resto_slider` (`slider_id`, `slider_image`, `slider_update`) VALUES
(1, 'Slider_1552233220.jpg', '2019-03-10 22:53:40'),
(2, 'Slider_1552233651.jpg', '2019-03-10 23:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `resto_social`
--

CREATE TABLE `resto_social` (
  `social_id` int(2) NOT NULL,
  `social_name` varchar(50) NOT NULL,
  `social_class` varchar(50) NOT NULL,
  `social_url` varchar(100) NOT NULL,
  `social_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_social`
--

INSERT INTO `resto_social` (`social_id`, `social_name`, `social_class`, `social_url`, `social_update`) VALUES
(1, 'Facebook', 'facebook', 'https://facebook.com/', '2020-11-19 11:00:28'),
(2, 'Twitter', 'twitter', 'https://twitter.com/', '2020-11-19 11:00:45'),
(3, 'Instagram', 'instagram', 'https://instagram.com/', '2020-11-19 11:00:38'),
(4, 'Youtube', 'youtube', 'https://www.youtube.com', '2020-11-19 11:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `resto_users`
--

CREATE TABLE `resto_users` (
  `user_username` varchar(30) NOT NULL,
  `user_password` text NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_avatar` varchar(100) DEFAULT NULL,
  `user_status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif',
  `user_level` enum('Admin','Bar','Dapur','Kasir','-') NOT NULL DEFAULT '-',
  `user_date_create` datetime NOT NULL,
  `user_date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resto_users`
--

INSERT INTO `resto_users` (`user_username`, `user_password`, `user_name`, `user_email`, `user_avatar`, `user_status`, `user_level`, `user_date_create`, `user_date_update`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'ADMINISTRATOR', 'dansdmedia@gmail.com', 'Avatar_admin_1542355052.jpg', 'Aktif', 'Admin', '0000-00-00 00:00:00', '2020-11-19 10:58:31');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_akses`
-- (See below for the actual view)
--
CREATE TABLE `v_akses` (
`akses_id` int(2)
,`user_username` varchar(30)
,`kategori_id` int(2)
,`akses_update` datetime
,`kategori_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_menu`
-- (See below for the actual view)
--
CREATE TABLE `v_menu` (
`menu_id` int(10)
,`kategori_id` int(2)
,`menu_kode` varchar(5)
,`menu_nama` varchar(50)
,`menu_seo` text
,`menu_deskripsi` text
,`menu_harga` int(10)
,`menu_waktu` int(2)
,`menu_foto` varchar(100)
,`menu_jual` int(10)
,`menu_update` datetime
,`kategori_nama` varchar(50)
,`kategori_seo` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_order`
-- (See below for the actual view)
--
CREATE TABLE `v_order` (
`order_id` int(10)
,`meja_id` int(2)
,`order_nama` varchar(50)
,`order_tanggal` date
,`order_catatan` text
,`order_qty` int(5)
,`order_waktu` int(10)
,`order_diskon` int(10)
,`order_total` int(10)
,`order_bayar` int(10)
,`order_kembali` int(10)
,`order_tgl_bayar` date
,`order_status` int(1)
,`user_username` varchar(30)
,`order_update` datetime
,`meja_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_order_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_order_detail` (
`order_detail_id` int(10)
,`order_id` int(10)
,`menu_id` int(10)
,`order_detail_harga` int(10)
,`order_detail_waktu` int(5)
,`order_detail_qty` int(5)
,`order_detail_subtotal` int(10)
,`order_detail_status` int(1)
,`order_detail_update` datetime
,`menu_kode` varchar(5)
,`menu_nama` varchar(50)
,`menu_seo` text
,`kategori_id` int(2)
,`order_status` int(1)
,`order_tanggal` date
,`meja_id` int(2)
,`meja_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `v_akses`
--
DROP TABLE IF EXISTS `v_akses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_akses`  AS  (select `a`.`akses_id` AS `akses_id`,`a`.`user_username` AS `user_username`,`a`.`kategori_id` AS `kategori_id`,`a`.`akses_update` AS `akses_update`,`k`.`kategori_nama` AS `kategori_nama` from (`resto_akses` `a` join `resto_kategori` `k` on((`a`.`kategori_id` = `k`.`kategori_id`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_menu`
--
DROP TABLE IF EXISTS `v_menu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_menu`  AS  (select `m`.`menu_id` AS `menu_id`,`m`.`kategori_id` AS `kategori_id`,`m`.`menu_kode` AS `menu_kode`,`m`.`menu_nama` AS `menu_nama`,`m`.`menu_seo` AS `menu_seo`,`m`.`menu_deskripsi` AS `menu_deskripsi`,`m`.`menu_harga` AS `menu_harga`,`m`.`menu_waktu` AS `menu_waktu`,`m`.`menu_foto` AS `menu_foto`,`m`.`menu_jual` AS `menu_jual`,`m`.`menu_update` AS `menu_update`,`k`.`kategori_nama` AS `kategori_nama`,`k`.`kategori_seo` AS `kategori_seo` from (`resto_menu` `m` join `resto_kategori` `k` on((`m`.`kategori_id` = `k`.`kategori_id`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_order`
--
DROP TABLE IF EXISTS `v_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order`  AS  (select `o`.`order_id` AS `order_id`,`o`.`meja_id` AS `meja_id`,`o`.`order_nama` AS `order_nama`,`o`.`order_tanggal` AS `order_tanggal`,`o`.`order_catatan` AS `order_catatan`,`o`.`order_qty` AS `order_qty`,`o`.`order_waktu` AS `order_waktu`,`o`.`order_diskon` AS `order_diskon`,`o`.`order_total` AS `order_total`,`o`.`order_bayar` AS `order_bayar`,`o`.`order_kembali` AS `order_kembali`,`o`.`order_tgl_bayar` AS `order_tgl_bayar`,`o`.`order_status` AS `order_status`,`o`.`user_username` AS `user_username`,`o`.`order_update` AS `order_update`,`m`.`meja_nama` AS `meja_nama` from (`resto_order` `o` join `resto_meja` `m` on((`o`.`meja_id` = `m`.`meja_id`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_order_detail`
--
DROP TABLE IF EXISTS `v_order_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order_detail`  AS  (select `d`.`order_detail_id` AS `order_detail_id`,`d`.`order_id` AS `order_id`,`d`.`menu_id` AS `menu_id`,`d`.`order_detail_harga` AS `order_detail_harga`,`d`.`order_detail_waktu` AS `order_detail_waktu`,`d`.`order_detail_qty` AS `order_detail_qty`,`d`.`order_detail_subtotal` AS `order_detail_subtotal`,`d`.`order_detail_status` AS `order_detail_status`,`d`.`order_detail_update` AS `order_detail_update`,`m`.`menu_kode` AS `menu_kode`,`m`.`menu_nama` AS `menu_nama`,`m`.`menu_seo` AS `menu_seo`,`m`.`kategori_id` AS `kategori_id`,`o`.`order_status` AS `order_status`,`o`.`order_tanggal` AS `order_tanggal`,`o`.`meja_id` AS `meja_id`,`j`.`meja_nama` AS `meja_nama` from (((`resto_order_detail` `d` join `resto_order` `o` on((`d`.`order_id` = `o`.`order_id`))) join `resto_menu` `m` on((`d`.`menu_id` = `m`.`menu_id`))) join `resto_meja` `j` on((`o`.`meja_id` = `j`.`meja_id`)))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resto_akses`
--
ALTER TABLE `resto_akses`
  ADD PRIMARY KEY (`akses_id`),
  ADD KEY `user_username` (`user_username`);

--
-- Indexes for table `resto_contact`
--
ALTER TABLE `resto_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `resto_kategori`
--
ALTER TABLE `resto_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `resto_meja`
--
ALTER TABLE `resto_meja`
  ADD PRIMARY KEY (`meja_id`);

--
-- Indexes for table `resto_menu`
--
ALTER TABLE `resto_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `resto_meta`
--
ALTER TABLE `resto_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `resto_order`
--
ALTER TABLE `resto_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `resto_order_ibfk_1` (`meja_id`);

--
-- Indexes for table `resto_order_detail`
--
ALTER TABLE `resto_order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `resto_order_detail_ibfk_1` (`order_id`),
  ADD KEY `resto_order_detail_ibfk_2` (`menu_id`);

--
-- Indexes for table `resto_slider`
--
ALTER TABLE `resto_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `resto_social`
--
ALTER TABLE `resto_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `resto_users`
--
ALTER TABLE `resto_users`
  ADD PRIMARY KEY (`user_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resto_akses`
--
ALTER TABLE `resto_akses`
  MODIFY `akses_id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resto_contact`
--
ALTER TABLE `resto_contact`
  MODIFY `contact_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resto_kategori`
--
ALTER TABLE `resto_kategori`
  MODIFY `kategori_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resto_meja`
--
ALTER TABLE `resto_meja`
  MODIFY `meja_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `resto_menu`
--
ALTER TABLE `resto_menu`
  MODIFY `menu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `resto_meta`
--
ALTER TABLE `resto_meta`
  MODIFY `meta_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resto_order`
--
ALTER TABLE `resto_order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resto_order_detail`
--
ALTER TABLE `resto_order_detail`
  MODIFY `order_detail_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resto_slider`
--
ALTER TABLE `resto_slider`
  MODIFY `slider_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resto_social`
--
ALTER TABLE `resto_social`
  MODIFY `social_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `resto_akses`
--
ALTER TABLE `resto_akses`
  ADD CONSTRAINT `resto_akses_ibfk_1` FOREIGN KEY (`user_username`) REFERENCES `resto_users` (`user_username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resto_menu`
--
ALTER TABLE `resto_menu`
  ADD CONSTRAINT `resto_menu_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `resto_kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resto_order`
--
ALTER TABLE `resto_order`
  ADD CONSTRAINT `resto_order_ibfk_1` FOREIGN KEY (`meja_id`) REFERENCES `resto_meja` (`meja_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resto_order_detail`
--
ALTER TABLE `resto_order_detail`
  ADD CONSTRAINT `resto_order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `resto_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resto_order_detail_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `resto_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
