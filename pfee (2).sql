-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 22 juin 2023 à 03:41
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfee`
--

-- --------------------------------------------------------

--
-- Structure de la table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carts`
--

INSERT INTO `carts` (`id`, `title`, `image`, `quantity`, `price`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'MSI 23,6″ LED VA Full-HD 144Hz – Optix G24C4', '1687350039_image.jpg', 2, 2290.00, 2, 1, '2023-06-21 11:24:15', '2023-06-21 15:33:26');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Pc et Ordinateur', '2023-06-21 11:07:27', '2023-06-21 11:07:27'),
(2, 'Gamming', '2023-06-21 11:07:34', '2023-06-21 11:07:34'),
(3, 'Composant Pc', '2023-06-21 11:07:56', '2023-06-21 11:07:56'),
(4, 'Moniteur Pc', '2023-06-21 11:08:01', '2023-06-21 11:08:01'),
(5, 'Périphérique pc', '2023-06-21 11:08:12', '2023-06-21 11:08:12');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `productid` int(10) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `favorites`
--

INSERT INTO `favorites` (`id`, `title`, `image`, `price`, `productid`, `userid`, `created_at`, `updated_at`) VALUES
(1, 'HP ZBook Firefly 16 inch G9 Mobile WS (6J532AV)', '1687349670_image.jpg', 16900.00, 1, 1, '2023-06-21 11:24:40', '2023-06-21 11:24:40');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '01_2023_06_02_202631_create_categories_table', 1),
(2, '02_2023_06_03_185116_create_products_table', 1),
(3, '03_2014_10_12_000000_create_users_table', 1),
(4, '04_2023_06_18_123839_create_carts_table', 1),
(5, '05_2023_06_19_025015_favorites', 1),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(7, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_05_28_081148_create_sessions_table', 1),
(11, '2023_06_21_110119_add_img1_to_products', 1),
(12, '2023_06_21_110211_add_img2_to_products', 1),
(13, '2023_06_21_110236_add_img3_to_products', 1),
(14, '2023_06_22_000805_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `paymentMethod` varchar(255) NOT NULL,
  `cc-name` varchar(255) NOT NULL,
  `cc-number` varchar(255) NOT NULL,
  `cc-expiration` varchar(255) NOT NULL,
  `cc-cvv` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `stockage` varchar(255) DEFAULT NULL,
  `gpu` varchar(255) DEFAULT NULL,
  `ecran` varchar(255) DEFAULT NULL,
  `communication` varchar(255) DEFAULT NULL,
  `operatingSystem` varchar(255) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `discount_price` double(8,2) DEFAULT NULL,
  `percent_price` int(11) DEFAULT NULL,
  `product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `img1`, `img2`, `img3`, `etat`, `quantity`, `category`, `description`, `cpu`, `ram`, `stockage`, `gpu`, `ecran`, `communication`, `operatingSystem`, `price`, `discount_price`, `percent_price`, `product`, `created_at`, `updated_at`) VALUES
(1, 'HP ZBook Firefly 16 inch G9 Mobile WS (6J532AV)', '1687349670_image.jpg', '1687349670_img1.jpg', '1687349670_img2.jpg', '1687349670_img3.jpg', 'État : Neuf', 10, 'Pc et Ordinateur', NULL, 'Intel Core™ i7-1270P 12th', '32 Gb DDR5-4800 MHz SDRAM', '512 Go SSD M.2 NVMe', 'Intel® Iris® Xᵉ Graphics', '16″ WUXGA IPS (1920×1200) UWVA', 'Intel AX211 Wi-Fi 6E – Bluetooth 5.3', 'Windows 11 64 bits', 16900.00, 20000.00, 16, 1, '2023-06-21 11:14:30', '2023-06-21 11:14:30'),
(2, 'MSI 23,6″ LED VA Full-HD 144Hz – Optix G24C4', '1687350039_image.jpg', '1687350039_img1.jpg', '1687350039_img2.jpg', '1687350039_img3.jpg', 'État : Neuf', 2, 'Moniteur Pc', 'Le MSI OPTIX G24C4 est un écran gamer incurvé de 23.6 pouces avec un temps de réponse de 1 ms et une fréquence de balayage de 48 à 144 Hz. Il offre des visuels fluides et détaillés, faisant de lui un choix idéal pour les jeux vidéo.', NULL, NULL, NULL, NULL, '23,6″ Pouces VA LED LCD', NULL, NULL, 2290.00, 3090.00, 26, 4, '2023-06-21 11:20:39', '2023-06-21 11:20:39'),
(3, 'Lenovo ThinkPad X13', '1687350231_image.jpg', '1687350231_img1.jpg', '1687350231_img2.jpg', '1687350231_img3.jpg', 'État : Neuf', 10, 'Pc et Ordinateur', NULL, 'AMD Ryzen™ 5 PRO 5650U', '8 Gb LPD4X 4266', '256 Gb SSD PCIe NVMe', 'AMD Radeon™ Graphics', '13.3″ Full-HD (1920 x 1080) IPS', 'Wi-Fi 6 AX + Bluetooth 5.0', 'Windows 10 Pro', 7690.00, 9300.00, 17, 1, '2023-06-21 11:23:51', '2023-06-21 11:23:51'),
(4, 'Acer Aspire 3 A315-58-5700 Argent Pur', '1687351495_image.jpg', '1687351495_img1.jpg', '1687351495_img2.jpg', '1687351495_img3.jpg', 'État : Neuf', 10, 'Pc et Ordinateur', NULL, 'Intel® Core i5-1135G7 11Th Gen', '8 Gb DDR4', '256Go PCIe NVMe SSD', 'Iris Xe Graphics', '15.6″ LCD LED Full-HD', 'Wi-Fi AX + Bluetooth', 'Windows 11 Home', 5990.00, NULL, NULL, 1, '2023-06-21 11:44:55', '2023-06-21 11:44:55'),
(5, 'HP Probook 640 G2 L8U32AV . Occasion', '1687351667_image.jpg', '1687351667_img1.jpg', '1687351667_img2.jpg', '1687351667_img3.jpg', 'État : Occasion - Très bon', 10, 'Pc et Ordinateur', NULL, 'Intel Core i5-6200U', '8 Gb DDR4 2133 MHz', '256 Gb SSD', 'Intel HD Graphics 520', '14″ Full-HD (1920 x 1080)', 'Wi-Fi AC + Bluetooth 4.0', 'Windows 10 Pro', 2990.00, 3800.00, 21, 1, '2023-06-21 11:47:47', '2023-06-21 11:47:47'),
(6, 'Lenovo ideapad 3 15ADA05 (81W100EXMB)', '1687351910_image.jpg', '1687351910_img1.jpg', '1687351910_img2.jpg', '1687351910_img3.jpg', 'État : Neuf', 2, 'Pc et Ordinateur', NULL, 'AMD Ryzen™ 3 3250U', '8 GB DDR4 2400 MHz', '256 Go SSD M.2 PCIe', 'AMD Radeon Graphics', '15,6″ Full-HD TN 1080 Pixels', 'Wi-Fi + Bluetooth', 'Windows 10 Famille mode s', 3980.00, 7140.00, 44, 1, '2023-06-21 11:51:50', '2023-06-21 11:51:50'),
(7, 'Asus Tuf Dash Fx516PE – NVIDIA RTX 3050ti', '1687353030_image.jpg', '1687353030_img1.jpg', '1687353030_img2.jpg', '1687353030_img3.jpg', 'État : Neuf', 1, 'Gamming', NULL, 'Intel® Core™i7 – 11370H 11th', '16 Gb DDR4 3200 MHz', '512 Gb SSD NVMe', 'NVIDIA RTX 3050ti GDDR6 4Gb', '15,6″ Full-HD IPS (1920x 1080) 144 Hz', 'Wi-Fi 6 + Bluetooth 5.1', 'Windows 11 Home', 12990.00, 14900.00, 13, 2, '2023-06-21 12:10:30', '2023-06-21 12:10:30'),
(8, 'MSI GF63 Thin 11SC-659XMA GTX 1650', '1687353210_image.jpg', '1687353210_img1.jpg', '1687353210_img2.jpg', '1687353210_img3.jpg', 'État : Neuf', 2, 'Gamming', NULL, 'Intel® Core™ i7-11800H', '16 Gb DDR4 3200 MHz', '512 Gb SSD PCIe NVMe', 'NVIDIA GeForce GTX 1650 GDDR6 4GB', '15,6″ Full-HD IPS (1920×1080) 144Hz', 'Wi-Fi 6 + Bluetooth 5.2', 'FreeDOS', 10990.00, 15390.00, 29, 2, '2023-06-21 12:13:30', '2023-06-21 12:13:30'),
(9, 'Asus Dual GeForce RTX 2060 OC O6G Evo 6GB', '1687353731_image.jpg', '1687353731_img1.jpg', '1687353731_img2.jpg', '1687353731_img3.jpg', 'État : Neuf', 10, 'Composant Pc', NULL, 'Chipset : GeForce RTX 2060', 'Interface : PCI-Express 3.0 x16', 'Fréquence boostée : 1365MHz / 1785 MHz', 'Fréquence mémoire vidéo : 14000MHz', 'Mémoire : 6 Gb', 'Coeur : 1920 Units', 'Bus d’accès : 192 bits', 4000.00, NULL, NULL, 3, '2023-06-21 12:22:11', '2023-06-21 12:22:11'),
(10, 'MSI Z590 Pro WI-FI', '1687354028_image.jpg', '1687354028_img1.jpg', '1687354028_img2.jpg', '1687354028_img3.jpg', 'État : Neuf', 10, 'Composant Pc', NULL, 'Chipset : Intel Z590 Express', 'Socket : Intel LGA 1200', 'Processeur : Intel Core de 10th/11th générations', 'Mémoire : 4 x DIMM DDR4 5333 Mhz (Max 128 Go)', 'port PCI Express 4.0 16x', 'Audio : Realtek ALC897', 'Réseau 1 : 2.5 Gbps Gigabit Ethernet (2.5 GbE)', 3100.00, 3300.00, 6, 3, '2023-06-21 12:27:08', '2023-06-21 12:27:08'),
(11, 'Imprimante CANON PIXMA TS3340 jet d’encre Wi-Fi (3771C007BA)', '1687356678_image.jpg', '1687356678_img1.jpg', '1687356678_img2.jpg', '1687356678_img3.jpg', 'État : Neuf', 2, 'Périphérique pc', 'Vitesse d’impression noir: Approx. 7.7 ipm Vitesse d’impression couleur: Approx. 4.0 ipm Qualité d’impression noire: Jusqu’à 4800 x 1200 DPI (ppp) Qualité d’impression couleur: Jusqu’à 4800 x 1200 DPI (ppp) Impression recto/verso: Manuelle Fonctionne avec: 2 Cartouches (1 noir, 1 couleur : cyan, magenta, jaune) Connectivité: Hi-Speed USB (B Port) Wi-Fi: IEEE802.11 b/g/n Wi-Fi Security: WPA-PSK, WPA2-PSK, WEP, Administration password Wireless LAN Frequency Band: 2.4GHz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 540.00, 590.00, 8, 5, '2023-06-21 13:11:18', '2023-06-21 13:11:18'),
(12, 'Logitech K120', '1687357175_image.jpg', '1687357175_img1.jpg', '1687357175_img2.jpg', '1687357175_img3.jpg', 'État : Neuf', NULL, 'Périphérique pc', 'Un Design Ultra-Fin et des Touches Durables Connexion USB Prête à l’Emploi Frappe Confortable et Silencieuse Barre d’Espacement Incurvée plus de Liberté de Mouvement Un Design Étanche', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129.00, 190.00, 32, 5, '2023-06-21 13:19:35', '2023-06-21 13:19:35');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9LSUlFQ3yo1yi6QxpLLVMxtORlNveOjRF23RgJ1d', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOVZtSkxNU25BYjhOcnFWemRoMkVDbkN2QlQwSTlZMmtUVHFMeUkzaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jaGVja291dCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1687398016),
('OZqWXfC1Cqtqb7oLWYC5t6Cs2p6gwyXJfhO73bU1', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQjFDU1BHZE9ueWVuQW8zdkNNREVFdlJIY0xueE5EV2RxbU01NDdvdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1687369470);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `adress`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'douae benrahal', 'douae.benrahal@gmail.com', '1\r\n', '0706714412', '101 hay nahda group elwahda rabat', NULL, '$2y$10$eMDXnQB4FB5OZdjgmgSTL.V4Wf6CUWpGttAqpI4idw9e.3zgnY9AK', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 11:06:26', '2023-06-21 11:06:26'),
(2, 'siham alouani', 'siham.alouani@gmail.com', '0', '0787654323', '300 rabat haynahda', NULL, '$2y$10$pYWlfgB0Ut04vwn//Yr/LeSFqD268OUnNuyS.FjGGZfbbS7kSqXi6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 15:29:48', '2023-06-21 15:29:48'),
(3, 'ilyas jbira', 'ilyassjbira@gmail.com', '0', '0687216704', '245 , Hay nahda Block 1 RABAT', NULL, '$2y$10$o8IYqeO7N0t.925Pd4RvL.IjrSocGpACh4THQHGy/bf9FbAcwEUcu', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 15:30:30', '2023-06-21 15:30:30'),
(4, 'sarah jamal', 'sarah-jamal@gmail.com', '0', '0687216704', 'casablanca hay moiulay rchhid', NULL, '$2y$10$M1eYn10OnPgj4CM2x9uWZO.YUqba0oD8na2jR3Xybk9I0stggEIBq', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 15:32:23', '2023-06-21 15:32:23');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_productid_foreign` (`productid`),
  ADD KEY `favorites_userid_foreign` (`userid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_foreign` (`product`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_productid_foreign` FOREIGN KEY (`productid`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_userid_foreign` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_foreign` FOREIGN KEY (`product`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
