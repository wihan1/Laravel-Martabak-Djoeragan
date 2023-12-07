-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 03:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marjoe1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `nama`, `email`, `alamat`, `password`, `no_telepon`, `created_at`, `updated_at`) VALUES
(1, 'wihan', 'wihan2gmail', 'jalan', '9890', '0988', '2023-07-02 04:44:46', '2023-07-09 04:20:43'),
(2, 'bayu', 'bayu@gmail.com', 'jalan umban sari atas', 'bayu12', '0978743', '2023-07-03 03:57:07', '2023-07-03 03:57:07'),
(3, 'Abiem', 'abiem@gmail.com', 'jalan rowosari', '987982', '0987867', '2023-07-09 16:42:26', '2023-07-09 16:42:26'),
(4, 'Randy', 'randy@gmail.com', 'jalam umban sari atas', '90889099', '9097788', '2023-07-12 15:56:19', '2023-07-12 15:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `data_history`
--

CREATE TABLE `data_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Tanggal & Waktu` date NOT NULL,
  `No Pemesanan` int(40) NOT NULL,
  `No Antrian` int(40) NOT NULL,
  `Layanan` varchar(40) NOT NULL,
  `Kasir` varchar(40) NOT NULL,
  `Menu Martabak` varchar(100) NOT NULL,
  `Ukuran` varchar(100) NOT NULL,
  `Jenis Martabak` varchar(100) NOT NULL,
  `Pembayaran` varchar(100) NOT NULL,
  `Harga` int(40) NOT NULL,
  `QTY` int(40) NOT NULL,
  `Total` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `manufakturs`
--

CREATE TABLE `manufakturs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kd_product` bigint(20) UNSIGNED NOT NULL,
  `QTY` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufakturs`
--

INSERT INTO `manufakturs` (`id`, `kd_product`, `QTY`, `harga`, `created_at`, `updated_at`) VALUES
(5, 1, 50, 32000, '2023-07-12 06:48:48', '2023-07-12 06:48:48'),
(6, 2, 50, 23000, '2023-07-12 06:51:06', '2023-07-12 06:51:06'),
(7, 1, 50, 32000, '2023-07-12 07:10:54', '2023-07-12 07:10:54'),
(8, 3, 7, 23000, '2023-07-12 13:10:38', '2023-07-12 13:10:38'),
(9, 2, 20, 23000, '2023-07-12 14:10:35', '2023-07-12 14:10:35');

--
-- Triggers `manufakturs`
--
DELIMITER $$
CREATE TRIGGER `update_stock` AFTER INSERT ON `manufakturs` FOR EACH ROW BEGIN

INSERT INTO products SET id = NEW.kd_product,
jumlah = NEW.QTY
ON DUPLICATE KEY UPDATE jumlah = jumlah + NEW.QTY;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_26_025853_create_stock_supplieradmin_table', 1),
(6, '2023_07_02_102248_create_customers_table', 1),
(7, '2023_07_02_102409_create_products_table', 1),
(8, '2023_07_02_102446_create_stocks_table', 1),
(9, '2023_07_02_102634_create_suppliers_table', 1),
(10, '2023_07_03_082241_create_transaksis_table', 2),
(11, '2023_07_12_131746_create_manufakturs_table', 3),
(12, '2023_07_13_025404_create_permission_tables', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 16),
(4, 'App\\Models\\User', 17),
(5, 'App\\Models\\User', 18);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Edit transaksi', 'web', '2023-07-12 22:39:52', '2023-07-12 22:40:32'),
(2, 'Delete transaksi', 'web', '2023-07-12 22:40:09', '2023-07-12 22:40:45'),
(3, 'Modul Management', 'web', '2023-07-12 22:42:41', '2023-07-12 22:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` varchar(255) NOT NULL,
  `ukuran` varchar(255) NOT NULL,
  `satuan` enum('Jumbo','Biasa','','') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama`, `harga`, `jumlah`, `ukuran`, `satuan`, `created_at`, `updated_at`) VALUES
(1, 'martabak manis keju cokelat', 32000, '150', 'Jumbo', '', '2023-07-02 14:42:49', '2023-07-03 03:19:49'),
(2, 'martabak manis jagung keju', 23000, '154', 'Biasa', '', '2023-07-03 02:57:21', '2023-07-03 02:57:21'),
(3, 'martabak sapi original', 23000, '41', 'Jumbo', 'Jumbo', '2023-07-09 08:53:16', '2023-07-09 08:53:16'),
(4, 'martabak tipis kering', 35000, '50', 'Jumbo', 'Jumbo', '2023-07-10 00:14:20', '2023-07-10 00:16:13'),
(5, 'martabak manis pizza', 33000, '20', 'Biasa', 'Jumbo', '2023-07-10 00:21:09', '2023-07-10 00:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'web', '2023-07-12 21:32:27', '2023-07-12 21:32:27'),
(4, 'supplier', 'web', '2023-07-12 21:32:27', '2023-07-12 21:32:27'),
(5, 'user', 'web', '2023-07-12 21:32:27', '2023-07-12 21:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_stock` varchar(255) NOT NULL,
  `harga_stock` varchar(255) NOT NULL,
  `jumlah_stock` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `nama_stock`, `harga_stock`, `jumlah_stock`, `satuan`, `created_at`, `updated_at`) VALUES
(2, 'cokelat', '20000', '35', 'gram', '2023-07-03 03:59:49', '2023-07-03 03:59:49'),
(3, 'keju', '23000', '43', 'gram', '2023-07-09 06:44:42', '2023-07-09 06:44:42'),
(4, 'Bawang bombay', '7000', '70', 'gram', '2023-07-09 08:45:32', '2023-07-09 08:45:32'),
(5, 'susu', '13000', '23', 'liter', '2023-07-12 09:22:58', '2023-07-12 09:22:58'),
(6, 'daging', '100000', '10', 'kg', '2023-07-12 13:14:17', '2023-07-12 13:14:34'),
(7, 'bawang merah', '40000', '20', 'kg', '2023-07-12 13:35:00', '2023-07-12 13:35:00'),
(8, 'bawang putih', '10000', '70', 'gram', '2023-07-13 04:32:57', '2023-07-13 04:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `stock_supplieradmin`
--

CREATE TABLE `stock_supplieradmin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `alamat_supplier` varchar(255) NOT NULL,
  `nama_stock` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `nama_supplier`, `alamat_supplier`, `nama_stock`, `created_at`, `updated_at`) VALUES
(2, 'indomaret', 'jalan rowosari', 'keju', '2023-07-03 01:07:36', '2023-07-03 01:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `product` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `pembayaran` varchar(255) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `nama`, `product`, `quantity`, `layanan`, `pembayaran`, `harga`, `total_harga`, `created_at`, `updated_at`) VALUES
(14, 'wihan', 1, 2, 'Delivery', 'Qris', 32000, 0, '2023-07-12 05:58:18', '2023-07-12 13:22:26'),
(15, 'wihan', 1, 2, 'Delivery', 'Tunai', 32000, 0, '2023-07-12 06:04:08', '2023-07-12 06:04:08'),
(16, 'Abiem', 1, 5, 'Delivery', 'ShoppePay', 32000, 0, '2023-07-12 07:11:53', '2023-07-12 07:11:53'),
(17, 'floren', 3, 3, 'Delivery', 'Tunai', 23000, 0, '2023-07-12 13:23:16', '2023-07-12 13:23:16'),
(18, 'alvi', 3, 4, 'delivery', 'Gopay', 23000, 0, '2023-07-12 17:40:06', '2023-07-12 17:40:06'),
(19, 'randy', 3, 5, 'delivery', 'ShopePAy', 23000, NULL, '2023-07-12 19:20:03', '2023-07-12 19:20:03'),
(20, 'randy', 4, 4, 'Delivery', 'Tunai', 35000, NULL, '2023-07-13 04:42:25', '2023-07-13 04:42:25');

--
-- Triggers `transaksis`
--
DELIMITER $$
CREATE TRIGGER `kurang_stock` AFTER INSERT ON `transaksis` FOR EACH ROW BEGIN
	UPDATE products SET jumlah = jumlah - NEW.quantity WHERE id = NEW.product;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'wihan', 'wihan21si@mahasiswa.pcr.ac.id', NULL, '$2y$10$Y0j5zLOZtilgSb3j.vXzhuaq9gxBYLYNAZvzbflwwvN4bcPf4ONI2', 'nIoiuYkVkRdmTp4Lpct1sfSaed4T3YimqZHgk9BhOShMGNWIUobeUbnk7A5I', '2023-07-02 04:12:49', '2023-07-02 04:12:49'),
(16, 'Wihan1', 'wihan@gmail.com', '2023-07-12 21:32:27', '$2y$10$JlJj0GpSm8v.VC9tLafoHe5JpOJ0ldzlv1YoSRL6biCQ9xhzMCdAq', 'H3ywVnx3m3MTgDZpmVTR4Yf6sbYQVvDVu1vx4GlVebqT10hC43hwGih7XBBV', '2023-07-12 21:32:27', '2023-07-12 21:34:18'),
(17, 'vira', 'vira@gmail.com', '2023-07-12 21:32:27', '$2y$10$H36UtzLBC/5pObM5TFuUG.tPm6pHxZHR9vZB/2VVbfwWimuWbqAMy', '1ImtrC3jWgnwVsPj82dnTJISn9h89L822VpIAyqM34XoP8zIZPzmleeuGwpx', '2023-07-12 21:32:27', '2023-07-13 04:29:08'),
(18, 'user', 'alan@gmail.com', '2023-07-12 21:32:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RWTP8hPi35', '2023-07-12 21:32:27', '2023-07-12 21:32:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_history`
--
ALTER TABLE `data_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `manufakturs`
--
ALTER TABLE `manufakturs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_product` (`kd_product`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_supplieradmin`
--
ALTER TABLE `stock_supplieradmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksis_product_id` (`product`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_history`
--
ALTER TABLE `data_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufakturs`
--
ALTER TABLE `manufakturs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stock_supplieradmin`
--
ALTER TABLE `stock_supplieradmin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `manufakturs`
--
ALTER TABLE `manufakturs`
  ADD CONSTRAINT `manufakturs_ibfk_1` FOREIGN KEY (`kd_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_product_id` FOREIGN KEY (`product`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
