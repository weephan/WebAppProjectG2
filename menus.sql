-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 11, 2025 at 11:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasteOS`
--

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `category` enum('starters','salads','specialty') NOT NULL DEFAULT 'starters',
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `description`, `price`, `category`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Hot Espresso', 'brew with the most richest beans made from Ethiopia.', 8.00, 'starters', 'menu_images/nxM0s7UjFT5sXPidiubHJ8L2KVvQOaCjnHpiX1jN.jpg', '2025-06-09 04:54:01', '2025-06-09 05:52:21'),
(5, 'Hot Chocolate', 'Creamy and indulgent hot chocolate.', 8.50, 'starters', 'menu_images/WcNLSAhKx4vGOOVo5OmIC4KiE9fZNvw5bzj64Nub.jpg', '2025-06-09 05:38:20', '2025-06-09 05:38:20'),
(7, 'Hot Matcha', 'Smooth and earthy matcha tea.', 9.00, 'starters', 'menu_images/4m72k79qa1IR1Wyw9MPOpLYfFvhqBbn3vmNRouvO.jpg', '2025-06-09 05:52:13', '2025-06-09 05:52:13'),
(8, 'Hot Americano', 'Classic americano with a rich flavour.', 9.00, 'starters', 'menu_images/vnWP12G4yqoOR9BYLbAo2Mthonj2LVpIrFXc3ns2.jpg', '2025-06-09 05:54:24', '2025-06-09 05:54:24'),
(9, 'Iced Americano', 'Refreshing iced americano with a bold flavour.', 8.50, 'salads', 'menu_images/7pJwlM6VRSH7MlAXHQzqFWYKBCoEcKP0jA0DY9zQ.jpg', '2025-06-09 05:57:16', '2025-06-09 05:57:16'),
(10, 'Chocolate Croissant', 'Flaky croissant filled with rich chocolate.', 12.90, 'specialty', 'menu_images/VTSU0PNOf6i32JzqbspdpGztHNo3ozlXZsTUxfGo.jpg', '2025-06-09 06:00:22', '2025-06-09 06:00:22'),
(11, 'Iced Matcha Latte', 'Creamy, earthy, and perfectly chilled — a refreshing green tea pick-me-up.', 11.90, 'salads', 'menu_images/zjmoCpmaeCNLqCQOeM4Ay4inKpr18czHTpeNgMMQ.jpg', '2025-06-09 09:08:30', '2025-06-09 09:08:30'),
(12, 'Iced Lemon Tea', 'Zesty, cool, and thirst-quenching with a splash of citrus.', 5.90, 'salads', 'menu_images/vPKIp0oMxHL3AbJeKL58SjIR2PbDVPsUNOC8oOWr.jpg', '2025-06-09 09:10:14', '2025-06-09 09:10:14'),
(13, 'Lychee Iced Tea', 'Light, fruity, and floral with a sweet lychee twist.', 5.90, 'salads', 'menu_images/co50vhFEtlQn75NKHgVh9p4cWxlp2EH8O5FT0gRy.jpg', '2025-06-09 09:13:30', '2025-06-09 09:13:30'),
(14, 'Iced Orange Juice', 'Cool, crisp, and bursting with fresh orange flavor.', 5.90, 'salads', 'menu_images/AXmu0flsP6GCuO97DyjPDEu28jmYT3bBmLNpLJaB.jpg', '2025-06-09 09:15:34', '2025-06-09 09:15:34'),
(15, 'Strawberry Croissant', 'Flaky, buttery pastry filled with sweet strawberry goodness.', 14.90, 'specialty', 'menu_images/2YjzfFkl4wAH4Hwn74poXuuBZiLy1PPPI6xAONsI.jpg', '2025-06-09 09:17:10', '2025-06-09 09:17:10'),
(16, 'Tiramisu', 'Creamy coffee dessert topped with fresh, tangy berries.', 12.90, 'specialty', 'menu_images/IAIGcrLnHvUssiyu01VeGN1aYtAnEcFmNabJc84E.jpg', '2025-06-09 09:19:00', '2025-06-09 09:19:00'),
(17, 'Soft Cookies', 'Warm, chewy, and loaded with melty chocolate chips.', 9.90, 'specialty', 'menu_images/wD1cGUGmFu9OK52pIL5QjXrTyFsqM0ZCFKWD4j8Z.jpg', '2025-06-09 09:20:21', '2025-06-09 09:20:21'),
(18, 'Blueberry Cheesecake', 'Rich, creamy cheesecake topped with sweet blueberry compote.', 11.90, 'specialty', 'menu_images/DVgQWtYjk5GOZfo4FZfhgtui3e3rh6Qgpjky1dcs.jpg', '2025-06-09 09:24:16', '2025-06-09 09:24:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
