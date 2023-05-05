-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 07:11 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtoko`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addJenis_produk` (`nama` VARCHAR(20), `ket` VARCHAR(50))   BEGIN
INSERT INTO jenis_produk(nama,ket) values (nama,ket);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `addPesanan` (`tanggal` DATE, `total` DOUBLE, `pelanggan_id` INT)   BEGIN
INSERT INTO pesanan (tanggal, total, pelanggan_id) VALUES (tanggal, total, pelanggan_id);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `inputPelanggan` (`kode` VARCHAR(10), `nama_pelanggan` VARCHAR(50), `jk` CHAR(1), `tmpt_lahir` VARCHAR(30), `tgl_lahir` DATE, `email` VARCHAR(45), `kartu_id` INT(11), `alamat` VARCHAR(40))   values (kode, nama_pelanggan, jk, tmpt_lahir, tgl_lahir, email, kartu_id, alamat)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `inputPelanggans` (`kode` VARCHAR(10), `nama_pelanggan` VARCHAR(50), `jk` CHAR(1), `tmpt_lahir` VARCHAR(30), `tgl_lahir` DATE, `email` VARCHAR(45), `kartu_id` INT(11), `alamat` VARCHAR(45))   BEGIN
INSERT INTO pelanggan(kode, nama_pelanggan,jk,tmpt_lahir,tgl_lahir,email,kartu_id,alamat)values(kode, nama_pelanggan,jk,tmpt_lahir,tgl_lahir,email,kartu_id,alamat);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `inputProduk` (`kode` VARCHAR(10), `nama` VARCHAR(45), `harga_beli` DOUBLE, `harga_jual` DOUBLE, `stok` INT(11), `min_stok` INT(11), `jenis_produk_id` INT(11))   BEGIN
INSERT INTO produk(kode,nama,harga_beli,harga_jual,stok,min_stok,jenis_produk_id) values (kode,nama,harga_beli,harga_jual,stok,min_stok,jenis_produk_id);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `showPelanggan` ()   BEGIN
SELECT * FROM pelanggan;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `showPesanan` ()   BEGIN
SELECT * FROM pesanan;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `showproduc` ()   BEGIN
SELECT nama, harga_beli, harga_jual from produk;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `showProduk` ()   BEGIN
SELECT * FROM produk;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `totalPesanan` ()   BEGIN
SELECT COUNT(*) as jumlah_pesanan FROM pesanan;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_produk_vw`
-- (See below for the actual view)
--
CREATE TABLE `detail_produk_vw` (
`id` int(11)
,`kode` varchar(10)
,`nama` varchar(45)
,`harga_beli` double
,`harga_jual` double
,`stok` int(11)
,`min_stok` int(11)
,`jenis_produk_id` int(11)
,`jenis` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `get_product_view`
-- (See below for the actual view)
--
CREATE TABLE `get_product_view` (
`id` int(11)
,`kode` varchar(10)
,`nama_pelanggan` varchar(50)
,`tanggal` date
,`pelanggan_id` int(11)
,`nama` varchar(45)
,`qty` int(11)
,`harga_per_item` double
,`harga` double
);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_produk`
--

CREATE TABLE `jenis_produk` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `Ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_produk`
--

INSERT INTO `jenis_produk` (`id`, `name`, `Ket`) VALUES
(1, 'Alat Electronik', 'Tersedia'),
(2, 'Perkakas', 'Tersedia'),
(3, 'Alat Rumah Tangga', 'Tersedia'),
(4, 'Otomotif ', 'Tidak Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `kartu`
--

CREATE TABLE `kartu` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `nama` varchar(30) NOT NULL,
  `diskon` double DEFAULT 0,
  `iuran` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kartu`
--

INSERT INTO `kartu` (`id`, `kode`, `nama`, `diskon`, `iuran`) VALUES
(1, '1010101', 'platinum', 2000, 1000),
(2, '1010102', 'Gold', 2000, 1000),
(4, '1010103', 'Silver', 500, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `tmpt_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `kartu_id` int(11) NOT NULL,
  `alamat` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `kode`, `nama_pelanggan`, `jk`, `tmpt_lahir`, `tgl_lahir`, `email`, `kartu_id`, `alamat`) VALUES
(1, '011101', 'Agung', 'L', 'Bandung', '2022-08-01', 'agung@gamil.com', 1, 'Cicurug'),
(2, '011102', 'Helfi', 'L', 'Sukabumi', '2001-04-23', 'Helfi@gmail.com', 1, 'Sukabumi'),
(3, '011103', 'Noval', 'L', 'Jakarta', '2001-10-23', 'Noval@gmail.com', 2, 'Jakarta'),
(4, '011104', 'Sabil', 'L', 'Jakarta', '2001-10-23', 'Sabil@gmail.com', 2, 'Purwakarta'),
(5, '011105', 'Asep', 'L', 'Bandung', '1998-01-01', 'Asep@gmail.com', 4, 'Karawang'),
(6, '011106', 'Babayo', 'P', 'Jakarta', '2022-05-14', 'Babayo@gmail.com', 1, 'Cinajur'),
(7, '011107', 'Sarayo', 'P', 'Bandung', '2022-06-15', 'Sarayo@gmail.com', 2, 'Bandung'),
(8, '000001', 'Helfia', 'L', 'Sukabimi', '2023-02-02', 'helfi@gmail.com', 1, 'cicurug');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `nokuitansi` varchar(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `ke` int(11) DEFAULT NULL,
  `pesanan_id` int(11) NOT NULL,
  `status_pembayaran` enum('Belum Lunas','Lunas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `nokuitansi`, `tanggal`, `jumlah`, `ke`, `pesanan_id`, `status_pembayaran`) VALUES
(1, 'PMB0010011', '2023-05-04', 2, 1, 1, 'Belum Lunas'),
(6, 'INV-12', '2023-05-05', 50000000000000, 1, 12, 'Lunas'),
(7, 'INV-13', '2023-05-05', 600, 1, 13, 'Lunas'),
(8, 'INV-14', '2023-05-05', 6000000, 1, 14, 'Lunas'),
(9, 'INV-15', '2023-05-05', 0, 1, 15, 'Belum Lunas'),
(10, 'INV-18', '2023-05-05', 0, 1, 18, 'Belum Lunas');

--
-- Triggers `pembayaran`
--
DELIMITER $$
CREATE TRIGGER `update_pembayaran_status` BEFORE UPDATE ON `pembayaran` FOR EACH ROW BEGIN
  IF OLD.id = NEW.id THEN
    SET @total = (SELECT total FROM pesanan WHERE id = OLD.pesanan_id);
    SET @jumlah = NEW.jumlah;
    IF @total <= @jumlah THEN 
      SET NEW.status_pembayaran = 'LUNAS';
    ELSE
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Warning: pembayaran kurang';
    END IF;
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(45) DEFAULT NULL,
  `nomor` varchar(10) DEFAULT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `tanggal`, `nomor`, `produk_id`, `jumlah`, `harga`, `vendor_id`) VALUES
(1, '', '122', 1, 1, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `total` double DEFAULT NULL,
  `pelanggan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal`, `total`, `pelanggan_id`) VALUES
(1, '2020-01-01', 20000, 1),
(12, '2023-05-05', 5000000, 1),
(13, '2023-02-01', 60, 1),
(14, '2023-02-01', 600, 1),
(15, '2023-02-01', 6000, 1),
(18, '2023-02-01', 6000, 1);

--
-- Triggers `pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan` AFTER INSERT ON `pesanan` FOR EACH ROW BEGIN
	SET @kuitansi = CONCAT('INV-', NEW.id);
	SET @orderan = (SELECT COUNT(*) FROM pesanan WHERE id = NEW.id);
	SET @jumlah = (SELECT COUNT(*) FROM pesanan_items WHERE pesanan_id = NEW.id);
	INSERT INTO pembayaran(nokuitansi, tanggal, jumlah, ke, pesanan_id, status_pembayaran)
	VALUES (@kuitansi, NOW(), @jumlah, @orderan, NEW.id, 'Belum Lunas');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_items`
--

CREATE TABLE `pesanan_items` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesanan_items`
--

INSERT INTO `pesanan_items` (`id`, `produk_id`, `pesanan_id`, `qty`, `harga`) VALUES
(1, 1, 1, 2, 2),
(2, 2, 2, 1, 22),
(3, 8, 2, 1, 20);

--
-- Triggers `pesanan_items`
--
DELIMITER $$
CREATE TRIGGER `keranjang_pesanan_items` BEFORE INSERT ON `pesanan_items` FOR EACH ROW BEGIN 
SET @stok = (SELECT stok FROM produk WHERE id = NEW.produk_id);
SET @sisa = @stok - NEW.qty;
IF @sisa < 0 THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Warning: stok tidak cukup';
END IF;
UPDATE produk SET stok = @sisa WHERE id = NEW.produk_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `transaksi_update_before` BEFORE UPDATE ON `pesanan_items` FOR EACH ROW BEGIN 
IF OLD.id = NEW.produk_id THEN 
SET @stok = (SELECT stok FROM produk WHERE id = OLD.produk_id);
SET @sisa = (@stok + OLD.qty) - NEW.qty;
IF @sisa < 0 THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Warning: stok tidak cukup';
END IF;
UPDATE produk SET stok = @sisa WHERE id = OLD.produk_id;
ELSE
SET @stok_lama = (SELECT stok FROM produk WHERE id = OLD.produk_id);
SET @sisa_lama = (@stok_lama + OLD.qty);
UPDATE produk SET stok = @sisa_lama WHERE id = OLD.produk_id;
SET @stok_baru = (SELECT stok FROM produk WHERE id = NEW.produk_id);
SET @sisa_baru = @stok_baru - NEW.qty;
IF @sisa_baru < 0 THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Warning: stok tidak cukup';
END IF;
UPDATE produk SET stok = @sisa_baru WHERE id = NEW.produk_id;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `harga_beli` double DEFAULT NULL,
  `harga_jual` double DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `min_stok` int(11) DEFAULT NULL,
  `jenis_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode`, `nama`, `harga_beli`, `harga_jual`, `stok`, `min_stok`, `jenis_produk_id`) VALUES
(1, 'TV01', 'TV', 300000, 400000, 4, 2, 1),
(2, 'K001', 'LCD', 500000, 1000000, 2, 3, 1),
(3, 'k003', 'Kulkas', 100000, 200000, 3, 2, 4),
(4, 'k004', 'Apel', 20000, 30000, 3, 2, 2),
(5, 'k005', 'Meja Makan', 500000000, 60000000, 5, 1, 4),
(6, 'k006', 'Televisi', 78000000, 80000000, 10, 0, 1),
(7, 'k007', 'Matras', 78000, 80000, 10, 0, 1),
(8, 'k008', 'KASSA', 8000, 10000, 9, 0, 4),
(10, 'K011', 'Mizone', 20000, 50000, 5, 2, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tampilkan_produk`
-- (See below for the actual view)
--
CREATE TABLE `tampilkan_produk` (
`nama` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `nomor` varchar(4) DEFAULT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `kontak` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `nomor`, `nama`, `kota`, `kontak`) VALUES
(1, '22', 'DEFAN', 'Cianjut', '-09');

-- --------------------------------------------------------

--
-- Structure for view `detail_produk_vw`
--
DROP TABLE IF EXISTS `detail_produk_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_produk_vw`  AS SELECT `p`.`id` AS `id`, `p`.`kode` AS `kode`, `p`.`nama` AS `nama`, `p`.`harga_beli` AS `harga_beli`, `p`.`harga_jual` AS `harga_jual`, `p`.`stok` AS `stok`, `p`.`min_stok` AS `min_stok`, `p`.`jenis_produk_id` AS `jenis_produk_id`, `j`.`name` AS `jenis` FROM (`jenis_produk` `j` join `produk` `p` on(`p`.`jenis_produk_id` = `j`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `get_product_view`
--
DROP TABLE IF EXISTS `get_product_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `get_product_view`  AS SELECT `pesanan`.`id` AS `id`, `produk`.`kode` AS `kode`, `pelanggan`.`nama_pelanggan` AS `nama_pelanggan`, `pesanan`.`tanggal` AS `tanggal`, `pelanggan`.`id` AS `pelanggan_id`, `produk`.`nama` AS `nama`, `pesanan_items`.`qty` AS `qty`, `produk`.`harga_jual` AS `harga_per_item`, `pesanan_items`.`qty`* `produk`.`harga_jual` AS `harga` FROM (((`pesanan` join `pesanan_items` on(`pesanan_items`.`pesanan_id` = `pesanan`.`id`)) join `pelanggan` on(`pelanggan`.`id` = `pesanan`.`pelanggan_id`)) join `produk` on(`pesanan_items`.`produk_id` = `produk`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `tampilkan_produk`
--
DROP TABLE IF EXISTS `tampilkan_produk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tampilkan_produk`  AS SELECT `produk`.`nama` AS `nama` FROM `produk``produk`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_produk`
--
ALTER TABLE `jenis_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kartu`
--
ALTER TABLE `kartu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nokuitansi` (`nokuitansi`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomo` (`nomor`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan_items`
--
ALTER TABLE `pesanan_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor` (`nomor`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_produk`
--
ALTER TABLE `jenis_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kartu`
--
ALTER TABLE `kartu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pesanan_items`
--
ALTER TABLE `pesanan_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
