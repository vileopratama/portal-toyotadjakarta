-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2017 at 11:20 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toyotadjakarta`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `name`, `reference`, `domain`, `enabled`) VALUES
(1, 'Toyota Djakarta', 'toyotadjakarta', 'localhost/toyotadjakarta/public', 1);

-- --------------------------------------------------------

--
-- Table structure for table `applications_domains`
--

CREATE TABLE `applications_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2015_03_15_171404_create_applications_table', 1),
(2, '2015_03_15_171506_create_applications_domains_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_addons_extensions`
--

CREATE TABLE `toyotadjakarta_addons_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_addons_extensions`
--

INSERT INTO `toyotadjakarta_addons_extensions` (`id`, `namespace`, `installed`, `enabled`) VALUES
(1, 'anomaly.extension.default_authenticator', 1, 1),
(2, 'anomaly.extension.default_page_handler', 1, 1),
(3, 'anomaly.extension.local_storage_adapter', 1, 1),
(4, 'anomaly.extension.page_link_type', 1, 1),
(5, 'anomaly.extension.robots', 1, 1),
(6, 'anomaly.extension.sitemap', 1, 1),
(7, 'anomaly.extension.throttle_security_check', 1, 1),
(8, 'anomaly.extension.url_link_type', 1, 1),
(9, 'anomaly.extension.user_security_check', 1, 1),
(10, 'anomaly.extension.xml_feed_widget', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_addons_modules`
--

CREATE TABLE `toyotadjakarta_addons_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_addons_modules`
--

INSERT INTO `toyotadjakarta_addons_modules` (`id`, `namespace`, `installed`, `enabled`) VALUES
(1, 'anomaly.module.addons', 1, 1),
(2, 'anomaly.module.configuration', 1, 1),
(3, 'anomaly.module.dashboard', 1, 1),
(4, 'anomaly.module.files', 1, 1),
(5, 'anomaly.module.navigation', 1, 1),
(6, 'anomaly.module.pages', 1, 1),
(7, 'anomaly.module.posts', 1, 1),
(8, 'anomaly.module.preferences', 1, 1),
(9, 'anomaly.module.redirects', 1, 1),
(10, 'anomaly.module.repeaters', 1, 1),
(11, 'anomaly.module.settings', 1, 1),
(12, 'anomaly.module.users', 1, 1),
(13, 'anomaly.module.variables', 1, 1),
(14, 'toyotadjakarta.module.slideshows', 1, 1),
(15, 'toyotadjakarta.module.sales', 1, 1),
(16, 'toyotadjakarta.module.contacts', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_configuration_configuration`
--

CREATE TABLE `toyotadjakarta_configuration_configuration` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_configuration_configuration`
--

INSERT INTO `toyotadjakarta_configuration_configuration` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `scope`, `key`, `value`) VALUES
(1, 1, '2017-06-16 22:21:56', NULL, NULL, NULL, '1', 'anomaly.extension.xml_feed_widget::url', 'http://www.pyrocms.com/posts/rss.xml');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_contacts_contacts`
--

CREATE TABLE `toyotadjakarta_contacts_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1',
  `division` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sales_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo_id` int(11) NOT NULL,
  `mobile01` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile02` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personal_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `biodata` text COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_contacts_contacts`
--

INSERT INTO `toyotadjakarta_contacts_contacts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `name`, `company`, `publish`, `division`, `address`, `phone`, `fax`, `company_email`, `sales_name`, `photo_id`, `mobile01`, `mobile02`, `personal_email`, `biodata`, `note`) VALUES
(1, 1, '2017-06-21 02:40:43', 1, NULL, NULL, '', 'Tunas Toyota Jakarta Radin Inten', 1, 'Dealer Toyota Jakarta', 'Jl. Radin Inten II No.62, Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13440, Indonesia', '021', '021', 'office@promo-toyota-mobil.com', 'Salmon', 33, '081283005227', '081283005227', 'salmonoloan@gmail.com', 'SEGERA HUBUNGI KAMI..!!\r\nDapatkan harga special melalui Website Kami', 'SEGERA HUBUNGI KAMI..!!\r\nDapatkan harga special melalui Website Kami');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_dashboard_dashboards`
--

CREATE TABLE `toyotadjakarta_dashboard_dashboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_dashboard_dashboards`
--

INSERT INTO `toyotadjakarta_dashboard_dashboards` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `layout`) VALUES
(1, 1, '2017-06-16 22:21:55', NULL, NULL, NULL, NULL, 'welcome', '24');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_dashboard_dashboards_allowed_roles`
--

CREATE TABLE `toyotadjakarta_dashboard_dashboards_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_dashboard_dashboards_translations`
--

CREATE TABLE `toyotadjakarta_dashboard_dashboards_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_dashboard_dashboards_translations`
--

INSERT INTO `toyotadjakarta_dashboard_dashboards_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-06-16 22:21:56', NULL, '2017-06-16 22:21:56', NULL, 'en', 'Welcome', 'This is the default dashboard for PyroCMS.');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_dashboard_widgets`
--

CREATE TABLE `toyotadjakarta_dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column` int(11) NOT NULL DEFAULT '1',
  `dashboard_id` int(11) NOT NULL,
  `pinned` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_dashboard_widgets`
--

INSERT INTO `toyotadjakarta_dashboard_widgets` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `extension`, `column`, `dashboard_id`, `pinned`) VALUES
(1, 1, '2017-06-16 22:21:56', NULL, NULL, NULL, NULL, 'anomaly.extension.xml_feed_widget', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_dashboard_widgets_allowed_roles`
--

CREATE TABLE `toyotadjakarta_dashboard_widgets_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_dashboard_widgets_translations`
--

CREATE TABLE `toyotadjakarta_dashboard_widgets_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_dashboard_widgets_translations`
--

INSERT INTO `toyotadjakarta_dashboard_widgets_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2017-06-16 22:21:56', NULL, '2017-06-16 22:21:56', NULL, 'en', 'Recent News', 'Recent news from http://pyrocms.com/');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_failed_jobs`
--

CREATE TABLE `toyotadjakarta_failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_banner_promosi`
--

CREATE TABLE `toyotadjakarta_files_banner_promosi` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_banner_promosi_translations`
--

CREATE TABLE `toyotadjakarta_files_banner_promosi_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_car_models`
--

CREATE TABLE `toyotadjakarta_files_car_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_car_models_translations`
--

CREATE TABLE `toyotadjakarta_files_car_models_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_disks`
--

CREATE TABLE `toyotadjakarta_files_disks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adapter` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_files_disks`
--

INSERT INTO `toyotadjakarta_files_disks` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `adapter`) VALUES
(1, 1, '2017-06-16 22:21:58', NULL, NULL, NULL, NULL, 'local', 'anomaly.extension.local_storage_adapter');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_disks_translations`
--

CREATE TABLE `toyotadjakarta_files_disks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_files_disks_translations`
--

INSERT INTO `toyotadjakarta_files_disks_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-06-16 22:21:58', NULL, '2017-06-16 22:21:58', NULL, 'en', 'Local', 'A local (public) storage disk.');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_documents`
--

CREATE TABLE `toyotadjakarta_files_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_documents_translations`
--

CREATE TABLE `toyotadjakarta_files_documents_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_files`
--

CREATE TABLE `toyotadjakarta_files_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disk_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_files_files`
--

INSERT INTO `toyotadjakarta_files_files` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `name`, `disk_id`, `folder_id`, `extension`, `size`, `mime_type`, `entry_id`, `entry_type`, `keywords`, `height`, `width`) VALUES
(1, 1, '2017-06-17 11:39:51', 1, '2017-06-17 11:39:52', 1, '2017-06-19 08:04:58', 'slider-1-1460-x-456.jpg', 1, 1, 'jpg', 165724, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '456', '1460'),
(2, 2, '2017-06-17 11:51:06', 1, '2017-06-17 11:51:06', 1, '2017-06-19 08:04:59', 'slider-2-1460-x-456.jpg', 1, 1, 'jpg', 197797, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '456', '1460'),
(3, 3, '2017-06-17 11:51:37', 1, '2017-06-17 11:51:37', 1, '2017-06-19 08:04:58', 'sli1.jpg', 1, 1, 'jpg', 183601, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '456', '1460'),
(4, 4, '2017-06-18 06:36:58', 1, '2017-06-18 06:36:59', 1, '2017-06-19 08:04:58', '1-500-x-334.jpg', 1, 1, 'jpg', 60917, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '334', '500'),
(5, 5, '2017-06-18 07:04:42', 1, '2017-06-18 07:04:43', 1, '2017-06-19 08:04:58', '2-500-x-334.jpg', 1, 1, 'jpg', 62045, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '334', '500'),
(6, 6, '2017-06-18 07:04:54', 1, '2017-06-18 07:04:55', 1, '2017-06-19 08:04:58', '3-500-x-334.jpg', 1, 1, 'jpg', 63524, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '334', '500'),
(7, 7, '2017-06-19 07:34:32', 1, '2017-06-19 07:34:34', 1, NULL, 'toyota-agya.jpg', 1, 1, 'jpg', 4716, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '87', '140'),
(8, 8, '2017-06-19 07:55:41', 1, '2017-06-19 07:55:41', 1, '2017-06-19 08:51:36', 'testimoni-10-2.jpg', 1, 1, 'jpg', 133121, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '337', '322'),
(9, 3, '2017-06-19 08:06:21', 1, '2017-06-19 08:06:22', 1, NULL, 'slider-1.jpg', 1, 1, 'jpg', 165724, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '456', '1460'),
(10, 3, '2017-06-19 08:06:21', 1, '2017-06-19 08:06:22', 1, NULL, 'slider-2.jpg', 1, 1, 'jpg', 197797, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '456', '1460'),
(11, 4, '2017-06-19 08:06:21', 1, '2017-06-19 08:06:22', 1, NULL, 'slider-3.jpg', 1, 1, 'jpg', 183601, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '456', '1460'),
(12, 6, '2017-06-19 08:29:35', 1, '2017-06-19 08:29:35', 1, NULL, 'intro-1.jpg', 1, 1, 'jpg', 60917, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '334', '500'),
(13, 7, '2017-06-19 08:29:35', 1, '2017-06-19 08:29:37', 1, NULL, 'intro-2.jpg', 1, 1, 'jpg', 62045, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '334', '500'),
(14, 7, '2017-06-19 08:29:35', 1, '2017-06-19 08:29:36', 1, NULL, 'intro-3.jpg', 1, 1, 'jpg', 63524, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '334', '500'),
(15, 8, '2017-06-19 08:51:54', 1, '2017-06-19 08:51:54', 1, NULL, 'testimoni-1.jpg', 1, 1, 'jpg', 133121, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '337', '322'),
(16, 9, '2017-06-19 08:53:50', 1, '2017-06-19 08:53:50', 1, NULL, 'testimoni-2.jpg', 1, 1, 'jpg', 118544, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '337', '322'),
(17, 10, '2017-06-19 09:07:36', 1, '2017-06-19 09:07:37', 1, NULL, 'testimoni-7.jpg', 1, 3, 'jpg', 114811, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesTestimoniEntryModel', NULL, '337', '322'),
(18, 10, '2017-06-19 09:07:36', 1, '2017-06-19 09:07:38', 1, NULL, 'testimoni-4.jpg', 1, 3, 'jpg', 96123, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesTestimoniEntryModel', NULL, '337', '322'),
(19, 11, '2017-06-19 09:07:36', 1, '2017-06-19 09:07:38', 1, NULL, 'testimoni-6.jpg', 1, 3, 'jpg', 108390, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesTestimoniEntryModel', NULL, '337', '322'),
(20, 13, '2017-06-19 09:07:39', 1, '2017-06-19 09:07:39', 1, NULL, 'testimoni-3.jpg', 1, 3, 'jpg', 117581, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesTestimoniEntryModel', NULL, '337', '322'),
(21, 14, '2017-06-19 09:07:40', 1, '2017-06-19 09:07:40', 1, NULL, 'testimoni-5.jpg', 1, 3, 'jpg', 109325, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesTestimoniEntryModel', NULL, '337', '322'),
(22, 15, '2017-06-19 09:14:21', 1, '2017-06-19 09:14:21', 1, NULL, 'testimoni-8.jpg', 1, 3, 'jpg', 229461, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesTestimoniEntryModel', NULL, '475', '596'),
(23, 16, '2017-06-19 10:27:07', 1, '2017-06-19 10:27:07', 1, NULL, 'welcome.jpg', 1, 1, 'jpg', 88356, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '667', '600'),
(24, 17, '2017-06-20 02:28:24', 1, '2017-06-20 02:28:24', 1, NULL, 'ALAMAT-DAN-TELPON-1024x294.png', 1, 1, 'png', 117191, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '294', '1024'),
(25, 18, '2017-06-20 02:30:14', 1, '2017-06-20 02:30:14', 1, NULL, 'baru-600-x-401.jpg', 1, 1, 'jpg', 89503, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '401', '600'),
(26, 19, '2017-06-20 02:44:27', 1, '2017-06-20 02:44:28', 1, NULL, 'abu-600-x-356.jpg', 1, 1, 'jpg', 42596, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '356', '600'),
(27, 20, '2017-06-20 02:54:25', 1, '2017-06-20 02:54:26', 1, NULL, 'fit-688-x-408-600-x-356.jpg', 1, 1, 'jpg', 44325, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '356', '600'),
(28, 21, '2017-06-20 02:56:40', 1, '2017-06-20 02:56:41', 1, NULL, 'orange-metalic-600-x-375.jpg', 1, 1, 'jpg', 44824, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '375', '600'),
(29, 22, '2017-06-20 03:33:06', 1, '2017-06-20 03:33:06', 1, NULL, 'toyota-agya.jpg', 1, 4, 'jpg', 4716, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(30, 23, '2017-06-20 04:06:45', 1, '2017-06-20 04:06:45', 1, NULL, 'toyota-avanza.jpg', 1, 4, 'jpg', 4607, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(31, 24, '2017-06-20 04:50:30', 1, '2017-06-20 04:50:31', 1, NULL, '1.jpeg', 1, 5, 'jpeg', 42209, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesBannerPromosiEntryModel', NULL, '539', '480'),
(32, 25, '2017-06-20 04:50:34', 1, '2017-06-20 04:50:34', 1, NULL, '6.jpeg', 1, 5, 'jpeg', 166747, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesBannerPromosiEntryModel', NULL, '1041', '720'),
(33, 26, '2017-06-20 04:51:12', 1, '2017-06-20 04:51:13', 1, NULL, '4.jpeg', 1, 5, 'jpeg', 67559, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesBannerPromosiEntryModel', NULL, '1080', '810'),
(34, 27, '2017-06-20 04:51:52', 1, '2017-06-20 04:51:52', 1, NULL, 'banner-17-600-x-451.jpg', 1, 5, 'jpg', 72001, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesBannerPromosiEntryModel', NULL, '451', '600'),
(35, 28, '2017-06-20 07:35:52', 1, '2017-06-20 07:35:52', 1, NULL, '1.jpeg', 1, 3, 'jpeg', 42209, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesTestimoniEntryModel', NULL, '539', '480'),
(36, 29, '2017-06-20 07:36:02', 1, '2017-06-20 07:36:02', 1, NULL, '3.jpeg', 1, 3, 'jpeg', 78140, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesTestimoniEntryModel', NULL, '960', '540'),
(37, 30, '2017-06-20 07:36:11', 1, '2017-06-20 07:36:11', 1, NULL, '5.jpeg', 1, 3, 'jpeg', 64484, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesTestimoniEntryModel', NULL, '607', '1080'),
(38, 31, '2017-06-20 07:36:20', 1, '2017-06-20 07:36:20', 1, NULL, '7.jpeg', 1, 3, 'jpeg', 39659, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesTestimoniEntryModel', NULL, '607', '1080'),
(39, 32, '2017-06-20 07:36:27', 1, '2017-06-20 07:36:27', 1, NULL, '8.jpeg', 1, 3, 'jpeg', 105647, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesTestimoniEntryModel', NULL, '1080', '607'),
(40, 33, '2017-06-20 07:40:38', 1, '2017-06-20 07:40:38', 1, NULL, '2.jpeg', 1, 3, 'jpeg', 36289, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesTestimoniEntryModel', NULL, '607', '1080'),
(41, 34, '2017-06-20 08:53:47', 1, '2017-06-20 08:53:49', 1, NULL, 'aula-2.jpg', 1, 1, 'jpg', 67292, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '360', '540'),
(42, 34, '2017-06-20 08:53:47', 1, '2017-06-20 08:53:47', 1, NULL, 'aula-1.jpg', 1, 1, 'jpg', 59735, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '320', '1024'),
(43, 34, '2017-06-20 08:53:47', 1, '2017-06-20 08:53:48', 1, NULL, 'aula-3.jpg', 1, 1, 'jpg', 7401, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '57', '275'),
(44, 37, '2017-06-20 09:11:03', 1, '2017-06-20 09:11:03', 1, NULL, 'vellf.png', 1, 1, 'png', 248955, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '400', '640'),
(45, 38, '2017-06-20 09:20:38', 1, '2017-06-20 09:20:38', 1, NULL, 'img-4-600-x-375.png', 1, 1, 'png', 207350, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '375', '600'),
(46, 39, '2017-06-20 09:23:26', 1, '2017-06-20 09:23:27', 1, NULL, 'toyota-calya-dashboard-view-682-x-284.jpg', 1, 1, 'jpg', 45093, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '284', '682'),
(47, 40, '2017-06-20 09:25:31', 1, '2017-06-20 09:25:31', 1, NULL, 'Warna-Toyota-Calya-6-x-380-600-x-425.jpg', 1, 1, 'jpg', 55092, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '425', '600'),
(48, 41, '2017-06-21 01:57:48', 1, '2017-06-21 01:57:49', 1, NULL, 'salmon-contact-us.png', 1, 1, 'png', 107695, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel', NULL, '294', '1024'),
(49, 42, '2017-06-21 07:03:59', 1, '2017-06-21 07:03:59', 1, NULL, 'hot-news-toyota-mau-boyong-mpv-sienta-ke-indonesia-472c38-475-x-260.jpg', 1, 4, 'jpg', 24106, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '260', '475'),
(50, 43, '2017-06-21 07:13:01', 1, '2017-06-21 07:13:01', 1, NULL, 'toyota-rush.jpg', 1, 4, 'jpg', 8129, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '86', '140'),
(51, 44, '2017-06-21 07:17:17', 1, '2017-06-21 07:17:17', 1, NULL, 'toyota-86.jpg', 1, 4, 'jpg', 3970, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(52, 45, '2017-06-21 07:17:17', 1, '2017-06-21 07:17:18', 1, NULL, 'toyota-etios.jpg', 1, 4, 'jpg', 4543, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(53, 46, '2017-06-21 07:17:18', 1, '2017-06-21 07:17:18', 1, NULL, 'toyota-alpard.jpg', 1, 4, 'jpg', 4401, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(54, 47, '2017-06-21 07:17:19', 1, '2017-06-21 07:17:19', 1, NULL, 'toyota-avanza-veloz.jpg', 1, 4, 'jpg', 3657, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(55, 48, '2017-06-21 07:17:20', 1, '2017-06-21 07:17:20', 1, NULL, 'toyota-dyna.jpg', 1, 4, 'jpg', 5135, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(56, 49, '2017-06-21 07:17:21', 1, '2017-06-21 07:17:21', 1, NULL, 'toyota-fortuner.jpg', 1, 4, 'jpg', 3677, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '86', '140'),
(57, 50, '2017-06-21 07:17:21', 1, '2017-06-21 07:17:21', 1, NULL, 'toyota-hiace.jpg', 1, 4, 'jpg', 3885, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(58, 51, '2017-06-21 07:17:22', 1, '2017-06-21 07:17:22', 1, NULL, 'toyota-hilux-scab.jpg', 1, 4, 'jpg', 3386, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(59, 52, '2017-06-21 07:17:23', 1, '2017-06-21 07:17:23', 1, NULL, 'toyota-kijang-innova.jpg', 1, 4, 'jpg', 7215, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(60, 53, '2017-06-21 07:17:23', 1, '2017-06-21 07:17:24', 1, NULL, 'toyota-landcruiser.jpg', 1, 4, 'jpg', 4670, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(61, 54, '2017-06-21 07:17:24', 1, '2017-06-21 07:17:24', 1, NULL, 'toyota-nav1.jpg', 1, 4, 'jpg', 4680, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(62, 55, '2017-06-21 07:17:25', 1, '2017-06-21 07:17:25', 1, NULL, 'toyota-prius.jpg', 1, 4, 'jpg', 3662, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(63, 56, '2017-06-21 07:17:25', 1, '2017-06-21 07:17:26', 1, NULL, 'toyota-vios.jpg', 1, 4, 'jpg', 3409, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(64, 57, '2017-06-21 07:17:26', 1, '2017-06-21 07:17:27', 1, NULL, 'toyota-yaris.jpg', 1, 4, 'jpg', 3786, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(65, 58, '2017-06-21 07:17:27', 1, '2017-06-21 07:17:27', 1, NULL, 'vellf.png', 1, 4, 'png', 248955, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '400', '640'),
(66, 59, '2017-06-21 07:21:15', 1, '2017-06-21 07:21:15', 1, NULL, 'toyota-corolla.jpg', 1, 4, 'jpg', 4009, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140'),
(67, 60, '2017-06-21 07:25:17', 1, '2017-06-21 07:25:18', 1, NULL, 'toyota-camry.jpg', 1, 4, 'jpg', 3530, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesCarModelsEntryModel', NULL, '87', '140');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_folders`
--

CREATE TABLE `toyotadjakarta_files_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `disk_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_types` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_files_folders`
--

INSERT INTO `toyotadjakarta_files_folders` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `disk_id`, `slug`, `allowed_types`) VALUES
(1, 1, '2017-06-16 22:21:58', NULL, NULL, NULL, NULL, 1, 'images', 'a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}'),
(2, 2, '2017-06-16 22:22:00', NULL, NULL, NULL, NULL, 1, 'documents', 'a:2:{i:0;s:3:\"pdf\";i:1;s:4:\"docx\";}'),
(3, 3, '2017-06-19 09:07:08', 1, NULL, NULL, NULL, 1, 'testimoni', 'a:0:{}'),
(4, 4, '2017-06-20 03:32:29', 1, NULL, NULL, NULL, 1, 'car_models', 'a:0:{}'),
(5, 5, '2017-06-20 04:49:44', 1, NULL, NULL, NULL, 1, 'banner_promosi', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_folders_translations`
--

CREATE TABLE `toyotadjakarta_files_folders_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_files_folders_translations`
--

INSERT INTO `toyotadjakarta_files_folders_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-06-16 22:21:59', NULL, '2017-06-16 22:21:59', NULL, 'en', 'Images', 'A folder for images.'),
(2, 2, '2017-06-16 22:22:01', NULL, '2017-06-16 22:22:01', NULL, 'en', 'Documents', 'A folder for documents.'),
(3, 3, '2017-06-19 09:07:09', NULL, '2017-06-19 09:07:09', 1, 'en', NULL, NULL),
(4, 3, '2017-06-19 09:07:09', NULL, '2017-06-19 09:07:09', 1, 'id', 'Testimoni', NULL),
(5, 4, '2017-06-20 03:32:30', NULL, '2017-06-20 03:32:30', 1, 'en', NULL, NULL),
(6, 4, '2017-06-20 03:32:30', NULL, '2017-06-20 03:32:30', 1, 'id', 'Car Models', NULL),
(7, 5, '2017-06-20 04:49:45', NULL, '2017-06-20 04:49:45', 1, 'en', NULL, NULL),
(8, 5, '2017-06-20 04:49:45', NULL, '2017-06-20 04:49:45', 1, 'id', 'Banner Promosi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_images`
--

CREATE TABLE `toyotadjakarta_files_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_images_translations`
--

CREATE TABLE `toyotadjakarta_files_images_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_testimoni`
--

CREATE TABLE `toyotadjakarta_files_testimoni` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_files_testimoni_translations`
--

CREATE TABLE `toyotadjakarta_files_testimoni_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_jobs`
--

CREATE TABLE `toyotadjakarta_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_migrations`
--

CREATE TABLE `toyotadjakarta_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_migrations`
--

INSERT INTO `toyotadjakarta_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2015_03_15_171506_create_jobs_table', 1),
(2, '2015_03_15_171507_create_failed_jobs_table', 1),
(3, '2015_03_15_171508_create_sessions_table', 1),
(4, '2015_03_15_171620_create_streams_tables', 1),
(5, '2015_03_15_171646_create_fields_tables', 1),
(6, '2015_03_15_171720_create_assignments_tables', 1),
(7, '2015_03_15_171838_create_modules_table', 1),
(8, '2015_03_15_171926_create_extensions_table', 1),
(9, '2016_08_30_185635_create_notifications_table', 1),
(10, '2016_09_02_164448_add_searchable_column_to_streams', 1),
(11, '2016_11_11_154228_append_id_to_user_meta_columns', 1),
(12, '2015_03_25_091755_anomaly.module.configuration__create_configuration_fields', 2),
(13, '2015_03_25_091845_anomaly.module.configuration__create_configuration_stream', 2),
(14, '2015_11_01_164326_anomaly.module.dashboard__create_dashboard_fields', 3),
(15, '2015_11_01_170645_anomaly.module.dashboard__create_dashboards_stream', 3),
(16, '2015_11_01_170650_anomaly.module.dashboard__create_widgets_stream', 3),
(17, '2015_03_05_021725_anomaly.module.files__create_files_fields', 4),
(18, '2015_03_05_022227_anomaly.module.files__create_disks_stream', 4),
(19, '2015_06_09_031343_anomaly.module.files__create_folders_stream', 4),
(20, '2015_06_09_031351_anomaly.module.files__create_files_stream', 4),
(21, '2016_08_29_151020_anomaly.module.files__remove_required_from_entry_assignment', 4),
(22, '2016_09_02_175659_anomaly.module.files__make_files_searchable', 4),
(23, '2016_10_05_221741_anomaly.module.files__make_disks_sortable', 4),
(24, '2015_05_21_061832_anomaly.module.navigation__create_navigation_fields', 5),
(25, '2015_05_21_062115_anomaly.module.navigation__create_menus_stream', 5),
(26, '2015_05_21_064952_anomaly.module.navigation__create_links_stream', 5),
(27, '2015_03_20_171947_anomaly.module.pages__create_pages_fields', 6),
(28, '2015_03_20_171955_anomaly.module.pages__create_pages_stream', 6),
(29, '2015_04_22_150211_anomaly.module.pages__create_types_stream', 6),
(30, '2016_09_02_175135_anomaly.module.pages__make_pages_searchable', 6),
(31, '2015_03_20_184103_anomaly.module.posts__create_posts_fields', 7),
(32, '2015_03_20_184141_anomaly.module.posts__create_categories_stream', 7),
(33, '2015_03_20_184148_anomaly.module.posts__create_posts_stream', 7),
(34, '2015_05_16_050818_anomaly.module.posts__create_types_stream', 7),
(35, '2016_09_02_175531_anomaly.module.posts__make_posts_searchable', 7),
(36, '2015_02_27_101227_anomaly.module.preferences__create_preferences_fields', 8),
(37, '2015_02_27_101300_anomaly.module.preferences__create_preferences_streams', 8),
(38, '2016_11_16_151654_anomaly.module.preferences__update_user_related_config', 8),
(39, '2015_03_21_153325_anomaly.module.redirects__create_redirects_fields', 9),
(40, '2015_03_21_153326_anomaly.module.redirects__create_redirects_stream', 9),
(41, '2015_02_27_101410_anomaly.module.settings__create_settings_fields', 10),
(42, '2015_02_27_101510_anomaly.module.settings__create_settings_stream', 10),
(43, '2015_02_27_101816_anomaly.module.users__create_users_fields', 11),
(44, '2015_02_27_101851_anomaly.module.users__create_users_stream', 11),
(45, '2015_02_27_101940_anomaly.module.users__create_roles_stream', 11),
(46, '2016_09_02_175848_anomaly.module.users__make_users_searchable', 11),
(47, '2015_06_02_170526_anomaly.extension.page_link_type__create_page_link_type_fields', 12),
(48, '2015_06_02_170542_anomaly.extension.page_link_type__create_page_links_stream', 12),
(49, '2015_05_24_201105_anomaly.extension.url_link_type__create_url_link_type_fields', 13),
(50, '2015_05_24_201134_anomaly.extension.url_link_type__create_links_stream', 13),
(56, '2017_06_17_070702_toyotadjakarta.module.slideshows__create_slideshows_fields', 14),
(57, '2017_06_17_070938_toyotadjakarta.module.slideshows__create_banners_stream', 14),
(58, '2017_06_18_041609_toyotadjakarta.module.slideshows__create_welcomes_stream', 14),
(59, '2017_06_18_055905_toyotadjakarta.module.slideshows__create_intros_stream', 14),
(70, '2017_06_19_050037_toyotadjakarta.module.sales__create_sales_fields', 15),
(71, '2017_06_19_070745_toyotadjakarta.module.sales__create_models_stream', 15),
(72, '2017_06_19_071035_toyotadjakarta.module.sales__create_products_stream', 15),
(73, '2017_06_19_071703_toyotadjakarta.module.sales__create_testimonis_stream', 15),
(74, '2017_06_19_072234_toyotadjakarta.module.sales__create_banners_stream', 15),
(75, '2017_06_20_093907_toyotadjakarta.module.contacts__create_contacts_fields', 16),
(76, '2017_06_20_094730_toyotadjakarta.module.contacts__create_contacts_stream', 16);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_navigation_links`
--

CREATE TABLE `toyotadjakarta_navigation_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_navigation_links`
--

INSERT INTO `toyotadjakarta_navigation_links` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `menu_id`, `type`, `entry_id`, `entry_type`, `target`, `class`, `parent_id`) VALUES
(1, 1, '2017-06-16 22:22:05', NULL, NULL, NULL, NULL, 1, 'anomaly.extension.url_link_type', 1, 'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel', '_blank', NULL, NULL),
(2, 2, '2017-06-16 22:22:05', NULL, NULL, NULL, NULL, 1, 'anomaly.extension.url_link_type', 2, 'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel', '_blank', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_navigation_links_allowed_roles`
--

CREATE TABLE `toyotadjakarta_navigation_links_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_navigation_menus`
--

CREATE TABLE `toyotadjakarta_navigation_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_navigation_menus`
--

INSERT INTO `toyotadjakarta_navigation_menus` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`) VALUES
(1, 1, '2017-06-16 22:22:03', NULL, NULL, NULL, NULL, 'footer');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_navigation_menus_translations`
--

CREATE TABLE `toyotadjakarta_navigation_menus_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_navigation_menus_translations`
--

INSERT INTO `toyotadjakarta_navigation_menus_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-06-16 22:22:03', NULL, '2017-06-16 22:22:03', NULL, 'en', 'Footer', 'This is the footer.');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_notifications`
--

CREATE TABLE `toyotadjakarta_notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_pages_default_pages`
--

CREATE TABLE `toyotadjakarta_pages_default_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_pages_default_pages`
--

INSERT INTO `toyotadjakarta_pages_default_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2017-06-16 22:22:09', NULL, NULL, NULL, '2017-06-19 10:11:30'),
(2, 2, '2017-06-16 22:22:12', NULL, NULL, NULL, NULL),
(3, 2, '2017-06-20 02:59:47', 1, NULL, NULL, NULL),
(4, 3, '2017-06-20 08:51:06', 1, NULL, NULL, NULL),
(5, 4, '2017-06-20 09:01:47', 1, NULL, NULL, NULL),
(6, 5, '2017-06-20 09:04:24', 1, NULL, NULL, NULL),
(7, 6, '2017-06-20 09:07:27', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_pages_default_pages_translations`
--

CREATE TABLE `toyotadjakarta_pages_default_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_pages_default_pages_translations`
--

INSERT INTO `toyotadjakarta_pages_default_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2017-06-16 22:22:09', NULL, '2017-06-17 05:12:38', 1, 'en', '<p>Welcome Home<br></p>'),
(2, 2, '2017-06-16 22:22:12', NULL, '2017-06-20 09:04:49', 1, 'en', '<p>Drop us a line! We\'d love to hear from you!</p>\r\n<p><br></p>\r\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>'),
(3, 3, '2017-06-20 02:59:47', NULL, '2017-06-20 03:19:27', 1, 'en', '<p>{{ IntroPlugin()|raw }}<br></p>'),
(4, 3, '2017-06-20 02:59:47', NULL, '2017-06-21 02:01:37', 1, 'id', '<h2>Daftar <strong>Harga Mobil Toyota Terbaru</strong>&nbsp;2017 – Update terbaru</h2>\r\n<p><br></p>\r\n<p>{{ ListProductPlugin()|raw }}</p>\r\n<p>Beberapa harga mobil Toyota 2017 di atas merupakan Daftar <strong>harga mobil Toyota terbaru</strong> untuk DKI jakarta dan sekitarnya, Table diatas sebagai acuan untuk anda untuk membeli mobil toyota kesayangan anda.</p>\r\n<p>Bila anda tertarik dengan harga Mobil Toyota terbaru yang kami sajikan untuk anda, dan berminat untuk membeli mobil Toyota, Silahkan Hubungi kami Tunas Toyota Radin Inten Jakarta Timur. Dapatkan Discount, Promo dan Kejutan mernarik lainnya, Bila anda berminat untuk kredit murah mobil toyota kami juga siap melayani dengan Dp dan angsuran yang ringan untuk anda.</p>\r\n<p class=\"text-center\"><img src=\"/toyotadjakarta/public/files/images/salmon-contact-us.png\"><br></p>'),
(5, 4, '2017-06-20 08:51:06', NULL, '2017-06-20 08:57:52', 1, 'en', '<h1>Tunas Toyota Radin Inten</h1>\r\n<p><br></p>\r\n<p>{{ TestimoniSlickPlugin() }}</p>'),
(6, 4, '2017-06-20 08:51:06', NULL, '2017-06-21 02:02:54', 1, 'id', '<h1>Tunas Toyota Radin Inten</h1>\r\n<p>{{ TestimoniSlickPlugin() }}</p>\r\n<p><img src=\"/toyotadjakarta/public/files/images/aula-1.jpg\"></p>\r\n<h2><strong>Tunas Toyota Radin inten | Toyota Jakarta Timur</strong></h2>\r\n<p>Tunas Toyota Radin Inten, dealer resmi Toyota yang merupakan anak perusahaan grup otomotif independen terbesar PT Tunas Ridean Tbk, memperluas jaringan pelayanan dengan membuka outlet baru yakni Tunas Toyota Radin Inten. Outlet yang beralamat di Jl. Raya Radin Inten II no. 62 Jakarta Timur ini merupakan cabang Tunas Toyota yang ke 18.</p>\r\n<p>Tunas Toyota Radin Inten memiliki keunggulan dibandingkan cabang Tunas Toyota lainnya karena memiliki layanan yang lengkap yakni layanan penjualan (Showroom), layanan perawatan dan perbaikan (Workshop), layanan penjualan suku cadang resmi (Spare Part) serta layanan perbaikan karoseri (Body & Paint). Selain itu fasilitas Tunas Toyota Radin Inten juga sangat lengkap mulai dari interior yang modern, ruang tunggu customer yang nyaman, area bermain anak-anak yang menyenangkan, fasilitas free wi fi , serta peralatan perawatan dan perbaikan (Body paint) yang sesuai dengan standar Toyota .</p>\r\n<p class=\"text-center\"><img src=\"/toyotadjakarta/public/files/images/aula-2.jpg\"></p>\r\n<p>Pusat layanan penjualan dan layanan perawatan serta perbaikan Tunas Toyota Radin Inten, berdiri di lahan seluas 3929 m 2 serta memiliki luas bangunan sebesar 2.460 m2. Sementara itu pusat layanan perbaikan body & paint didirikan di atas lahan seluas 4.855 m2 serta memiliki luas bangunan sebesar 981 m2 dan akan mulai beroperasi mulai bulan Juli 2011.</p>\r\n<figure class=\"text-center\"><img src=\"/toyotadjakarta/public/files/images/aula-3.jpg\"><br></figure>\r\n<p>“ Kami berharap Tunas Toyota Radin Inten dapat memenuhi kebutuhan pelanggan Toyota di wilayah Jakarta Timur pada umumnya serta wilayah Radin Inten dan sekitarnya pada khususnya. Selain itu pusat perbaikan Body Paint ini juga merupakan komitmen kami untuk memenuhi kebutuhan pelanggan Toyota akan pusat perbaikan karoseri yang berkualitas baik dan sesuai standar Toyota.” Ungkap Rico Setiawan, Direktur Utama PT Tunas Ridean Tbk.</p>\r\n<h3><strong>Tunas Toyota Radin inten | Toyota Jakarta Timur</strong></h3>\r\n<p>Pusat layanan penjualan (showroom) Tunas Toyota Radin Inten, siap memasarkan berbagai produk Toyota terkini. Didukung oleh 22 orang sales, Tunas Toyota Radin Inten berharap dapat melepas sebanyak 70 unit kendaraan Toyota setiap bulannya.</p>\r\n<p>Sementara itu pusat layanan perawatan dan perbaikan Tunas Toyota Radin Inten dilengkapi dengan 12 stall. Walaupun pusat layanan perawatan dan perbaikan ini terkesan mewah namun biaya perawatan dan perbaikan disini tidak mahal. Untuk service berkala 10.000 – 50.000 km, kendaraan Toyota yang usianya di bawah 2 tahun tidak dikenakan biaya jasa. Selain itu pelanggan pun dapat menggunakan jasa booking service , sehingga menghindari antrian saat melakukan perawatan dan perbaikan. Dengan didukung oleh 3 orang Service Advisor dan 6 orang mekanik, Tunas Toyota Radin Inten menargetkan memperbaiki 300 unit mobil setiap bulannya. Sementara itu pusat perbaikan Body paint menargetkan memperbaiki sebanyak 200 unit kendaraan.</p>\r\n<p>Dengan diresmikannya Tunas Toyota Radin Inten ,jaringan Tunas Toyota radin inten kini memiliki 18 ruang pamer, 16 pusat layanan purna jual dan 3 pusat perbaikan karoseri (Body Paint) di wilayah Jakarta, Banten, serta Bandung. Selama tahun 2010 Tunas Toyota berhasil menjual 20.806 unit merek Toyota, naik sebesar 53,5% dibanding tahun sebelumnya. Sementara itu di tahun 2010, Tunas Toyota juga telah memperbaiki 160.511 unit kendaraan, 24,8% lebih banyak dibandingkan tahun sebelumnya.</p>\r\n<p>Simak Juga <strong><a href=\"https://www.toyotadjakarta.com/harga-mobil-toyota-terbaru/\" target=\"_blank\">Harga Mobil Toyota Terbaru</a></strong></p><p><img src=\"/toyotadjakarta/public/files/images/salmon-contact-us.png\"><br></p>\r\n<p><br></p>\r\n<p><br></p>'),
(7, 5, '2017-06-20 09:01:47', NULL, '2017-06-20 09:01:47', 1, 'en', NULL),
(8, 5, '2017-06-20 09:01:47', NULL, '2017-06-20 09:01:47', 1, 'id', '<p>Promo Toyota 2017</p>'),
(9, 6, '2017-06-20 09:04:24', NULL, '2017-06-20 09:05:51', 1, 'en', '<h1>Paket Dp Murah Toyota – Promo Toyota Jakarta 2017 – TDP & kredit angsuran ringan</h1>'),
(10, 6, '2017-06-20 09:04:24', NULL, '2017-06-21 02:04:06', 1, 'id', '<h1>Paket Dp Murah Toyota – Promo Toyota Jakarta 2017 – TDP & kredit angsuran ringan</h1>\r\n<p><br></p>\r\n<p><img src=\"/toyotadjakarta/public/files/images/abu-600-x-356.jpg\" style=\"width: 254px; height: 152px; float: left; margin: 0px 20px 20px 0px;\" width=\"254\" height=\"152\">Memiliki sebuah kendaraan adalah hal \r\nyang wajib untuk masyarakat pada saat sekarang ini, berbagai penawaran \r\npun banyak ditawarkan oleh brand mobil pilihan dengan berbagai macam \r\ncara untuk menjaring konsumen agar tertarik dan membeli mobil tersebut. \r\nMulai dari<strong> paket dp murah toyota</strong> dan kredit angsuran ringan dari berbagai brand lainnya bersaing menawarkan yang tebaik.</p>\r\n<p>PT Mandiri Tunas Finance memberikan anda\r\n kemudahan untuk memiliki mobil toyota dengan promo toyota jakarta \r\nterbaru kali ini. Untuk mempermudah anda mendapatkan mobil Toyota \r\ndambaan keluarga anda kami memberikan paket dp murah Toyota dengan dp \r\nterendah serta angsuran atau cicilan ringan untuk anda.<br></p>\r\n<h3><strong>Paket dp murah toyota tunas toyota radin intern jakarta timur</strong></h3>\r\n<p><img src=\"/toyotadjakarta/public/files/images/vellf.png\" style=\"float: left; width: 216px; height: 134px; margin: 0px 20px 20px 0px;\" width=\"216\" height=\"134\">Paket dp murah Toyota yang akan kami berikan kepada anda merupakan harga terbaru otr jakarta, dan pastinya harga kredit murah dengan dp ringan akan selalu kami berikan kepada anda setiap bulannya dengan promo tunas toyota radin inten dealer penjualan mobil toyota terbesar di Jakarta. Berikut adalah tabel kredit paket dp murah Toyota untuk anda pecinta mobil toyota. ( anda dapat mendownloadnya dengan mengklik download dibawah tabel )</p>\r\n<p><br></p>\r\n<div class=\"ead-document\" style=\"position:relative;\">\r\n<iframe src=\"//docs.google.com/viewer?url=https%3A%2F%2Fwww.toyotadjakarta.com%2Fwp-content%2Fuploads%2F2017%2F01%2Fpaket-hebad.pdf&embedded=true&hl=en\" style=\"width:100%; height:80%; border: none;min-height:500px;\"></iframe>\r\n</div>\r\n<p class=\"embed_download\"><a href=\"http://www.toyotadjakarta.com/wp-content/uploads/2017/01/paket-hebad.pdf\" download=\"\">Download [509.95 KB] </a></p>\r\n<p><em>Silahkan pilih paket dp murah Toyota pada tabel diatas dari berbagai pilihan mobil Toyota yang anda inginkan, anda dapat segera menghubungi kami sebelum promo ini habis dan yang lebih menarik data anda dapat kami bantu. Dapatkan diskon besar, hadiah menarik dari kami Tunas Toyota radin inten Jakarta timur.<br></em></p>\r\n<p>Bila anda tertarik dengan penawaran paket dp murah toyota yang kmai berikan kali ini, anda dapat berkonsultasi dengan marketing kami yang handal pada website ini karena kami akan segera melayani anda dengan pelayanan yang ramah dan bersahabat. Kami siap membantu anda mewujudkan impian anda memiliki mobil toyota dalam promo paket dp murah Toyota terbaru kali ini.</p>\r\n<p>Untuk info lebih lanjut tentang syarat kredit <strong><a href=\"https://www.toyotadjakarta.com/hubungi-kami\" target=\"_blank\">hubungi kami</a>&nbsp;</strong>kapanpun, kami dengan senang hati akan selalu siap membantu anda untuk <a href=\"https://www.kreditmurahtoyota.com/\">kredit murah Toyota</a>.</p><p><img src=\"/toyotadjakarta/public/files/images/salmon-contact-us.png\"><br></p>\r\n<p><br><em></em></p>'),
(11, 2, '2017-06-20 09:04:49', NULL, '2017-06-21 02:47:45', 1, 'id', NULL),
(12, 7, '2017-06-20 09:07:27', NULL, '2017-06-20 09:20:06', 1, 'en', '<p>Toyota Calya<br></p>'),
(13, 7, '2017-06-20 09:07:28', NULL, '2017-06-21 02:05:23', 1, 'id', '<h1>Harga Toyota Calya 2017 – Kredit Calya Tdp Rendah – Toyota Jakarta</h1>\r\n<p><img src=\"/toyotadjakarta/public/files/images/orange-metalic-600-x-375.jpg\" style=\"float: left; width: 309px; height: 195px; margin: 0px 20px 20px 0px;\" width=\"309\" height=\"195\">Harga Toyota Calya – produk baru masih promo mempunyai specs tinggi tapi pricelist sangat terjangkau karena walaupun mobil Jepang tetapi pabrik berlokasi di Indonesia sehingga tidak ada biaya dan pajak import yang tinggi. Mobil Toyota Calya ini mempunyai design yang menarik dengan lekukan garis modern yang futuristik sehingga menghasilkan kesan stylish. Di bagian depan ada bumper dan grill yang berpadu tangguh terlihat sporty apalagi dengan design headlamp dan lampu sign yang menyempit dibagian samping.</p>\r\n<p><br></p>\r\n<p><img src=\"/toyotadjakarta/public/files/images/img-4-600-x-375.png\" style=\"width: 302px; height: 190px; float: right; margin: 0px 0px 20px 20px;\" width=\"302\" height=\"190\">Harga Toyota Calya yang terjangkau dan Fitur mobil ini sangat lengka dengan AC berteknologi baru yang sangat dingin dan yang lebih penting adalah kestabilannya sehingga walaupun berada di jalanan macet tetapi kondisi kabin tetap dingin dan nyaman. Udara segar dialirkan merata keseluruh sudut ruang dalam mobil. Ruang kaki dan kepala juga lebar apalagi dengan deretan kursi yang dapat diatur dengan digeser dan di rebahkan serta dilipat sehingga dapat membawa barang yang besar. Kursi baris ketiga sangat nyaman karena material yang tebal dan empuk serta cukup lapang.</p>\r\n<figure><strong><img src=\"/toyotadjakarta/public/files/images/toyota-calya-dashboard-view-682-x-284.jpg\" style=\"display: block; margin: auto;\"></strong></figure>\r\n<h3><strong>Harga Toyota Calya dan Fitur</strong></h3>\r\n<p>Untuk menemani kenyamanan penumpang di dalam selain kursi premium juga ada system hiburan yang lengkap, mulai dari audio dan video system ingga koneksi untuk gadget. Untuk pengemudi terdapat posisi kemudi yang didesign pas sehingga semua device dapat diakses dengan mudah, apalagi dengan MID digital yang menyediakan data realtime kendaraan. Sisi safety juga sangat diperhatikan , selain ada seatbelt PLR yang bisa mengunci dan mengendur otomatis ketika terjadi benturan juga ada airbags atau kantung udara, selain itu juga struktur rangka mobil Toyota Calya ini sudah menggunakan teknologi yang dapat meredam efek benturan, bisa terlihat Harga Toyota Calya untuk spec seperti diatas anda mungkin masih mengira-ngira.<br>Sejak awal tahun berembus kabar bahwa PT Toyota Astra Motor (TAM) dengan PT Astra Daihatsu Motor sedang mempersiapkan LCGC (Low Cost Green Car) terbaru dengan model MPV. Kabarnya,Harga Toyota Calya Agya adalah rencana nama yang akan diberikan. Sekarang pertanyaan lanjutannya, berapa harga Toyota Calya MPV LCGC Toyota terbaru di Indonesia?</p>\r\n<h2><strong>PROMO HARGA&nbsp;TOYOTA CALYA 2017 TERBARU</strong></h2>\r\n<div class=\"ead-preview\">\r\n                                    <div class=\"ead-document\" style=\"position:relative;\">\r\n                                        <iframe src=\"//docs.google.com/viewer?url=https%3A%2F%2Fwww.toyotadjakarta.com%2Fwp-content%2Fuploads%2F2017%2F01%2F16264RCFCV-PAKET-SUPER-KEREN-CALYA-JAWA-BALI-SUMATERA-2017-JAN-TUNAS.pdf&embedded=true&hl=en\" style=\"width:100%; height:80%; border: none;min-height:500px;\"></iframe>\r\n                                        <p class=\"embed_download\"><a href=\"https://www.toyotadjakarta.com/wp-content/uploads/2017/01/16264RCFCV-PAKET-SUPER-KEREN-CALYA-JAWA-BALI-SUMATERA-2017-JAN-TUNAS.pdf\" download=\"\">Download [108.14 KB] </a></p>\r\n                                    </div>\r\n                                </div>\r\n<h3 style=\"text-align: justify;\"><span style=\"text-decoration: underline;\"><strong>Spesifikasi Toyota Calya</strong></span></h3>\r\n<ul>\r\n                                    <li>3NR VE Engine 1200cc+Dual VVTi</li>\r\n                                    <li>Power Max 88PS/ 6000 RPM</li>\r\n                                    <li>Torsi Max 11Kgm/ 4200 RPM</li>\r\n                                    <li>Manual 5 Speed</li>\r\n                                    <li>Automatic 4 Speed</li>\r\n                                    <li>Penggerak Roda Depan</li>\r\n                                    <li>Immobilizer+Alarm ( All Tipe )</li>\r\n                                    <li>3 Point Seat Belt ( All Tipe )</li>\r\n                                    <li>Parking Sensor ( All Tipe )</li>\r\n                                    <li>ABS ( kecuali E MT STD )</li>\r\n                                    <li>Struktur Body GoA ( All Tipe )</li>\r\n                                    <li>Dual SRS Air Bag ( All Tipe )</li>\r\n                                    <li>ISOFIX</li>\r\n                                    <li>Tuas Transmisi pada dashboard</li>\r\n                                    <li>Setir berbahan Urethane+Thumb Rest</li>\r\n                                    <li>Sporty Seat+Integrated Headrest ( baris 1 )</li>\r\n                                    <li>Power Outlet 12V pada baris 2</li>\r\n                                    <li>Bumper dpn Trapezoidal</li>\r\n                                    <li>Hexagonal Halogen Headlamp+Multir</li>\r\n                                    <li>eflektor</li>\r\n                                    <li>Foglamp+Chrome List ( Tipe G )</li>\r\n                                    <li>Stylesh 14″ Alloy Wheel+Two Tone Color ( Sҽмϋα Tipe )</li>\r\n                                    <li>Electric Outer Mirror+Turn Signal Lamp ( Tipe G )</li>\r\n                                    <li>Handle Pintu Tipe Grip ( sewarna body )</li>\r\n                                    <li>Audio Double DIN CD, USB, AUX+Bluetooth ( Tipe G )</li>\r\n                                    <li>AC+Air Circulator ( All Tipe )</li>\r\n                                    <li>Peredam Kam Mesin</li>\r\n                                    <li>Arm Rest Baris 1</li>\r\n                                    <li>Hand Brake Tipe Lever ( Modern )</li>\r\n                                    <li>Meter Kombinasi+MID+Eco Indicator</li>\r\n                                    <li>Kursi Baris 2 Sliding+Reclining</li>\r\n                                    <li>Power Window ( All Tipe )</li>\r\n                                    <li>One Touch Tumble ( kursi Baris 2 )</li>\r\n                                    <li>Kabin Lega 7 Seater</li>\r\n                                    <li>Bagasi Barang Luas ( muat 3 galon air )</li>\r\n                                    <li>Ground Clearance Tinggi ( 180mm )</li>\r\n                                    <li>Aero Stabilizing Fin ( ∂ι Spion ϑαƞ Lampu Blkg )</li>\r\n                                    <li>Lampu Blkg dgn Horizontal Reflektor</li>\r\n                                    <li>Short Pole Antena</li>\r\n                                    <li>Warna White, Silver Met, Grey Met, Black, Red, Orange Met.</li>\r\n                                </ul>\r\n<p>Dengan level <strong>Harga Toyota Calya</strong> tidak akan terlalu bermasalah dengan\r\n                                    Avanza. Apalagi nama Avanza sudah established dan kokoh sebagai backbone penjualan\r\n                                    Toyota di Indonesia.</p>\r\n<p>Anda berminat dengan <strong>Harga</strong> <strong>Toyota Calya </strong>yang kami tawarkan? <a href=\"http://localhost/toyotadjakarta/hubungi-kami.html/\" target=\"_blank\">Hubungi Kami</a>\r\n                                    untuk informasi pemesanan <strong><a href=\"http://localhost/toyotadjakarta\" target=\"_blank\">mobil toyota terbaru<br></a></strong></p>\r\n<p class=\"text-center\"><strong><a href=\"http://localhost/toyotadjakarta\" target=\"_blank\">SEGERA HUBUNGI KAMI..!!  Dapatkan harga special melalui Website Kami  Tunas Toyota Jakarta Radin Inten<br></a></strong></p><p class=\"text-center\"><strong><a href=\"http://localhost/toyotadjakarta\" target=\"_blank\"><img src=\"/toyotadjakarta/public/files/images/salmon-contact-us.png\"><br></a></strong><strong><a href=\"http://localhost/toyotadjakarta\" target=\"_blank\"><br></a></strong></p>\r\n<p class=\"text-center\"><strong></strong>\r\n                                </p>');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_pages_pages`
--

CREATE TABLE `toyotadjakarta_pages_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `enabled` tinyint(1) DEFAULT '1',
  `exact` tinyint(1) DEFAULT '1',
  `home` tinyint(1) DEFAULT '0',
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'theme::layouts/default.twig'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_pages_pages`
--

INSERT INTO `toyotadjakarta_pages_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `str_id`, `slug`, `path`, `type_id`, `entry_id`, `entry_type`, `parent_id`, `visible`, `enabled`, `exact`, `home`, `theme_layout`) VALUES
(1, 1, '2017-06-16 22:22:09', NULL, '2017-06-17 05:16:22', 1, '2017-06-19 10:11:28', 'IF03AeJuubJgYHOtBajYk3wx', 'home', '/', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 1, 'theme::layouts.home'),
(2, 6, '2017-06-16 22:22:12', NULL, '2017-06-21 02:47:45', 1, NULL, 'x3aqwWCCINQLpQc2mlrg7FyG', 'hubungi-kami', '/hubungi-kami', 1, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts.contact-us'),
(3, 1, '2017-06-19 10:11:51', 1, '2017-06-20 07:09:15', 1, NULL, 'ZQdIBwGFLraSU1AzLXaQqUr0', 'home', '/', 2, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesWelcomePagePagesEntryModel', NULL, 1, 1, 1, 1, 'theme::layouts.home'),
(4, 2, '2017-06-20 02:59:47', 1, '2017-06-21 02:01:38', 1, NULL, 'bndOuOCaaPHP7gLjyRuw6uUX', 'daftar-harga', '/daftar-harga', 1, 3, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts.blogpost'),
(5, 3, '2017-06-20 07:20:53', 1, '2017-06-20 07:21:01', 1, NULL, 'AJZFCwvKvHfeZuHwXt6M1HdK', 'testimoni', '/testimoni', 3, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTestimoniPagePagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts.blogpost'),
(6, 4, '2017-06-20 08:51:06', 1, '2017-06-21 02:02:54', 1, NULL, 'ltwAQ34NMnlpW9Q04glkhslF', 'tentang-kami', '/tentang-kami', 1, 4, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts.blogpost'),
(7, 5, '2017-06-20 09:01:47', 1, '2017-06-20 09:04:35', 1, NULL, 'MK97LASy8BvFGYqOMNgKb9tL', 'promo-toyota-2017', '/promo-toyota-2017', 1, 5, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 0, NULL),
(8, 1, '2017-06-20 09:04:24', 1, '2017-06-21 02:04:07', 1, NULL, 'nIauuZ8JkLGKF7Lakb4UYpde', 'paket-hemat-dp-2017', '/promo-toyota-2017/paket-hemat-dp-2017', 1, 6, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 7, 1, 1, 1, 0, NULL),
(9, 8, '2017-06-20 09:07:28', 1, '2017-06-21 02:05:24', 1, NULL, 'TThUn9t4Zqav8Xs2PlBMbEDS', 'promo-toyota-calya', '/promo-toyota-2017/promo-toyota-calya', 1, 7, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 7, 1, 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_pages_pages_allowed_roles`
--

CREATE TABLE `toyotadjakarta_pages_pages_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_pages_pages_translations`
--

CREATE TABLE `toyotadjakarta_pages_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_pages_pages_translations`
--

INSERT INTO `toyotadjakarta_pages_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(1, 1, '2017-06-16 22:22:11', NULL, '2017-06-17 05:12:39', 1, 'en', 'Home', NULL, NULL, 'a:0:{}'),
(2, 2, '2017-06-16 22:22:13', NULL, '2017-06-20 09:04:50', 1, 'en', 'Contact', NULL, NULL, 'a:0:{}'),
(3, 3, '2017-06-19 10:11:51', NULL, '2017-06-19 10:21:42', 1, 'en', 'Home', NULL, NULL, 'a:0:{}'),
(4, 3, '2017-06-19 10:11:51', NULL, '2017-06-19 10:11:51', 1, 'id', 'Home', NULL, NULL, 'a:0:{}'),
(5, 4, '2017-06-20 02:59:48', NULL, '2017-06-20 03:01:20', 1, 'en', 'Daftar Harga', NULL, NULL, 'a:0:{}'),
(6, 4, '2017-06-20 02:59:48', NULL, '2017-06-20 02:59:48', 1, 'id', 'Daftar Harga', NULL, NULL, 'a:0:{}'),
(7, 5, '2017-06-20 07:20:54', NULL, '2017-06-20 07:20:54', 1, 'en', NULL, NULL, NULL, 'a:0:{}'),
(8, 5, '2017-06-20 07:20:54', NULL, '2017-06-20 07:20:54', 1, 'id', 'Testimoni', NULL, NULL, 'a:0:{}'),
(9, 6, '2017-06-20 08:51:07', NULL, '2017-06-20 08:57:53', 1, 'en', 'Tentang Kami', NULL, NULL, 'a:0:{}'),
(10, 6, '2017-06-20 08:51:07', NULL, '2017-06-20 08:51:07', 1, 'id', 'Tentang Kami', NULL, NULL, 'a:0:{}'),
(11, 7, '2017-06-20 09:01:48', NULL, '2017-06-20 09:01:48', 1, 'en', NULL, NULL, NULL, 'a:0:{}'),
(12, 7, '2017-06-20 09:01:48', NULL, '2017-06-20 09:01:48', 1, 'id', 'Promo Toyota 2017', NULL, NULL, 'a:0:{}'),
(13, 8, '2017-06-20 09:04:24', NULL, '2017-06-20 09:05:51', 1, 'en', 'Paket Dp Murah Toyota', NULL, NULL, 'a:0:{}'),
(14, 8, '2017-06-20 09:04:25', NULL, '2017-06-20 09:05:52', 1, 'id', 'Paket Hemat Dp 2017', NULL, NULL, 'a:0:{}'),
(15, 2, '2017-06-20 09:04:50', NULL, '2017-06-20 09:04:50', 1, 'id', 'Hubungi Kami', NULL, NULL, 'a:0:{}'),
(16, 9, '2017-06-20 09:07:28', NULL, '2017-06-20 09:20:07', 1, 'en', 'Promo Toyota Calya', NULL, NULL, 'a:0:{}'),
(17, 9, '2017-06-20 09:07:28', NULL, '2017-06-20 09:07:28', 1, 'id', 'Promo Toyota Calya', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_pages_testimoni_page_pages`
--

CREATE TABLE `toyotadjakarta_pages_testimoni_page_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_pages_testimoni_page_pages`
--

INSERT INTO `toyotadjakarta_pages_testimoni_page_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2017-06-20 07:20:52', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_pages_testimoni_page_pages_translations`
--

CREATE TABLE `toyotadjakarta_pages_testimoni_page_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_pages_testimoni_page_pages_translations`
--

INSERT INTO `toyotadjakarta_pages_testimoni_page_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2017-06-20 07:20:52', NULL, '2017-06-20 07:20:52', 1, 'id');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_pages_types`
--

CREATE TABLE `toyotadjakarta_pages_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'theme::layouts/default.twig',
  `layout` text COLLATE utf8_unicode_ci NOT NULL,
  `handler` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'anomaly.extension.default_page_handler'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_pages_types`
--

INSERT INTO `toyotadjakarta_pages_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `theme_layout`, `layout`, `handler`) VALUES
(1, 1, '2017-06-16 22:22:06', NULL, '2017-06-20 03:34:38', 1, NULL, 'default', 'theme::layouts.blogpost', '{{ page.content.render|raw }}', 'anomaly.extension.default_page_handler'),
(2, 2, '2017-06-19 10:10:04', 1, '2017-06-19 10:29:46', 1, NULL, 'welcome_page', 'theme::layouts.home', '<h2 style=\"font-size: 20px;color: #000000;text-align: left\" class=\"vc_custom_heading\">PROMO TOYOTA JAKARTA TERBARU</h2>\r\n<section class=\"vc_cta3-container\">\r\n	<div class=\"vc_general vc_cta3 vc_cta3-style-classic vc_cta3-shape-rounded vc_cta3-align-left vc_cta3-color-classic vc_cta3-icon-size-md\">\r\n        <div class=\"vc_cta3_content-container\">\r\n            <div class=\"vc_cta3-content\">\r\n                    <p>\r\n						<a href=\"#\">\r\n							<img data-attachment-id=\"898\"\r\n                                data-permalink=\"https://www.toyotadjakarta.com/797-2/12-600-x-667#main\"\r\n                                data-orig-file=\"{{ page.image.make().url() }}\"\r\n                                data-orig-size=\"600,667\"\r\n                                data-comments-opened=\"1\"\r\n                                data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}\"\r\n                                data-image-title=\"promo toyota jakarta\"\r\n                                data-image-description=\"\"\r\n                                data-medium-file=\"{{ page.image.make().url() }}\"\r\n                                data-large-file=\"{{ page.image.make().url() }}\"\r\n                                class=\"alignleft wp-image-898\"\r\n                                src=\"{{ page.image.make().url() }}\"\r\n                                alt=\"promo toyota jakarta\" width=\"240\"\r\n                                height=\"267\"\r\n                                srcset=\"{{ page.image.make().url() }} 270w, {{ page.image.make().url() }} 600w\"\r\n                                sizes=\"(max-width: 240px) 100vw, 240px\"/>\r\n						</a>\r\n                    </p>\r\n                    {{ page.content|raw }}\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>', 'anomaly.extension.default_page_handler'),
(3, 3, '2017-06-20 07:20:17', 1, '2017-06-20 07:46:19', 1, NULL, 'testimoni_page', 'theme::layouts.blogpost', '{{ page.content|raw }}\r\n{% set testimonis = entries(\'sales\',\'testimonis\').where(\'publish\',1).get() %}\r\n<div class=\"mp-row-fluid motopress-row mpce-dsbl-margin-left mpce-dsbl-margin-right\">\r\n	{% for testi in testimonis %}\r\n	<div class=\"mp-span4 motopress-clmn  mpce-dsbl-margin-left mpce-dsbl-margin-right\">\r\n		<div class=\"mp-row-fluid motopress-row mpce-dsbl-margin-left mpce-dsbl-margin-right\">\r\n			<div class=\"mp-span12 motopress-clmn mpce-dsbl-margin-left mpce-dsbl-margin-right\">\r\n				<div class=\"motopress-image-obj motopress-text-align-left\">\r\n					<img src=\"{{ testi.image.make().url() }}\"\r\n                        title=\"{{ testi.name|raw }}\"\r\n                    	class=\"motopress-image-obj-basic mpce-dsbl-margin-left mpce-dsbl-margin-right mpce-dsbl-margin-top mpce-dsbl-margin-bottom\"/>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	{% endfor %}\r\n</div>', 'anomaly.extension.default_page_handler');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_pages_types_translations`
--

CREATE TABLE `toyotadjakarta_pages_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_pages_types_translations`
--

INSERT INTO `toyotadjakarta_pages_types_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-06-16 22:22:07', NULL, '2017-06-16 22:22:07', NULL, 'en', 'Default', 'A simple page type.'),
(2, 2, '2017-06-19 10:10:05', NULL, '2017-06-19 10:15:35', 1, 'en', 'Welcome Page', 'Welcome Page'),
(3, 2, '2017-06-19 10:10:05', NULL, '2017-06-19 10:10:05', 1, 'id', 'Welcome Page', 'Welcome Page'),
(4, 1, '2017-06-20 03:34:39', NULL, '2017-06-20 03:34:39', 1, 'id', 'Default', 'A simple page type.'),
(5, 3, '2017-06-20 07:20:19', NULL, '2017-06-20 07:31:48', 1, 'en', 'Testimoni Page', 'Testimoni Page Site'),
(6, 3, '2017-06-20 07:20:19', NULL, '2017-06-20 07:20:19', 1, 'id', 'Testimoni Page', 'Testimoni Page Site');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_pages_welcome_page_pages`
--

CREATE TABLE `toyotadjakarta_pages_welcome_page_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_pages_welcome_page_pages`
--

INSERT INTO `toyotadjakarta_pages_welcome_page_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `image_id`) VALUES
(1, 1, '2017-06-19 10:11:50', 1, '2017-06-20 07:09:15', 1, NULL, 33);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_pages_welcome_page_pages_translations`
--

CREATE TABLE `toyotadjakarta_pages_welcome_page_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_pages_welcome_page_pages_translations`
--

INSERT INTO `toyotadjakarta_pages_welcome_page_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2017-06-19 10:11:51', NULL, '2017-06-19 10:22:09', 1, 'id', '<p>Bagi anda pencinta mobil Toyota Terbaru, kali ini kami akan menawarkan Promo Toyota Jakarta terbaru yakni Kredit Toyota Sienta dan Toyota Calya dengan Dp murah terbaru. Promo yang akan kami berikan kepada anda pencinta otomotif nusantara yang sedang mencari penawaran kredit murah Toyota sienta dan Toyota Calya dengan dp ringan anda bisa mendapatkannnya disini.</p>\r\n<p>Sebagaimana yang anda tahu, Toyota Sienta dan Toyota Calya merupakan Produk terbaru unggulan besutan Toyota yang di luncurkan pada tahun 2016. Toyota selalu berinovasi memberikan mobil yang berkualitas dengan harga yang terjangkau untuk anda pengemar otomotif nusantara. Promo Toyota Jakarta ini bertujuan untuk mewujudkan mimpi anda untuk memiliki mobil idaman keluarga anda dengan kredit murah dan dp ringan yang kami tawarkan.</p>\r\n<p>Jadi tunggu apalagi dapatkan penawarkan terbaik dari promo toyota Jakarta di tahun 2017 ini, dan pastinyanya kami Marketing dari Tunas Toyota Radin inten Jakarta timur akan memberikan kejutan-kejutan yang akan menguntungkan anda bila anda membeli mobil Toyota Cash dan kredit dari dealer kami.<br></p>'),
(2, 1, '2017-06-19 10:21:41', NULL, '2017-06-19 10:22:09', 1, 'en', '<p>Bagi anda pencinta mobil Toyota Terbaru, kali ini kami akan menawarkan Promo Toyota Jakarta terbaru yakni Kredit Toyota Sienta dan Toyota Calya dengan Dp murah terbaru. Promo yang akan kami berikan kepada anda pencinta otomotif nusantara yang sedang mencari penawaran kredit murah Toyota sienta dan Toyota Calya dengan dp ringan anda bisa mendapatkannnya disini.</p>\r\n<p>Sebagaimana yang anda tahu, Toyota Sienta dan Toyota Calya merupakan Produk terbaru unggulan besutan Toyota yang di luncurkan pada tahun 2016. Toyota selalu berinovasi memberikan mobil yang berkualitas dengan harga yang terjangkau untuk anda pengemar otomotif nusantara. Promo Toyota Jakarta ini bertujuan untuk mewujudkan mimpi anda untuk memiliki mobil idaman keluarga anda dengan kredit murah dan dp ringan yang kami tawarkan.</p>\r\n<p>Jadi tunggu apalagi dapatkan penawarkan terbaik dari promo toyota Jakarta di tahun 2017 ini, dan pastinyanya kami Marketing dari Tunas Toyota Radin inten Jakarta timur akan memberikan kejutan-kejutan yang akan menguntungkan anda bila anda membeli mobil Toyota Cash dan kredit dari dealer kami.<br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_page_link_type_pages`
--

CREATE TABLE `toyotadjakarta_page_link_type_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_page_link_type_pages_translations`
--

CREATE TABLE `toyotadjakarta_page_link_type_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_posts_categories`
--

CREATE TABLE `toyotadjakarta_posts_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_posts_categories`
--

INSERT INTO `toyotadjakarta_posts_categories` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`) VALUES
(1, 1, '2017-06-16 22:22:17', NULL, NULL, NULL, NULL, 'news'),
(2, 2, '2017-06-20 02:26:34', 1, NULL, NULL, NULL, 'intro');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_posts_categories_translations`
--

CREATE TABLE `toyotadjakarta_posts_categories_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_posts_categories_translations`
--

INSERT INTO `toyotadjakarta_posts_categories_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-06-16 22:22:17', NULL, '2017-06-16 22:22:17', NULL, 'en', 'News', 'Company news and updates.'),
(2, 2, '2017-06-20 02:26:34', NULL, '2017-06-20 02:26:34', 1, 'en', NULL, NULL),
(3, 2, '2017-06-20 02:26:34', NULL, '2017-06-20 02:26:34', 1, 'id', 'Intro', 'Intro Post');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_posts_default_posts`
--

CREATE TABLE `toyotadjakarta_posts_default_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_posts_default_posts`
--

INSERT INTO `toyotadjakarta_posts_default_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2017-06-16 22:22:18', NULL, NULL, NULL, '2017-06-20 02:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_posts_default_posts_translations`
--

CREATE TABLE `toyotadjakarta_posts_default_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_posts_default_posts_translations`
--

INSERT INTO `toyotadjakarta_posts_default_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2017-06-16 22:22:18', NULL, '2017-06-16 22:22:18', NULL, 'en', '<p>Welcome to PyroCMS!</p>');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_posts_posts`
--

CREATE TABLE `toyotadjakarta_posts_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `publish_at` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '0',
  `tags` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_posts_posts`
--

INSERT INTO `toyotadjakarta_posts_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `str_id`, `slug`, `type_id`, `publish_at`, `author_id`, `entry_id`, `entry_type`, `category_id`, `featured`, `enabled`, `tags`) VALUES
(1, 1, '2017-06-16 22:22:18', NULL, NULL, NULL, '2017-06-20 02:31:01', 'NT8hk4SS71y6M8xn', 'welcome-to-pyrocms', 1, '2017-06-16 22:22:18', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', 1, 0, 1, NULL),
(2, 2, '2017-06-20 02:30:47', 1, '2017-06-21 02:00:16', 1, NULL, 'RReuQRoDwjD7kv5e', 'info-promo', 2, '2017-06-20 02:27:00', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsPostWithImagePostsEntryModel', 2, 0, 1, 'a:1:{i:0;s:9:\"infopromo\";}'),
(3, 2, '2017-06-20 02:44:45', 1, '2017-06-20 02:45:06', 1, NULL, 'in2XaCE7dfjbNBPo', 'paket-dp-murah-toyota-promo-toyota-jakarta-2017-tdp-and-kredit-angsuran-ringan', 2, '2017-06-20 02:41:00', 1, 2, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsPostWithImagePostsEntryModel', 1, 0, 1, 'a:0:{}'),
(4, 3, '2017-06-20 02:54:45', 1, '2017-06-20 02:55:49', 1, NULL, 'G4TrC5QTxwHKXr2c', 'toyota-venturer-2017-terbaru-spesifikasi-and-harga-toyota-venturer-jakarta', 2, '2017-06-20 02:53:00', 1, 3, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsPostWithImagePostsEntryModel', 1, 0, 1, 'a:0:{}'),
(5, 4, '2017-06-20 02:57:09', 1, NULL, NULL, NULL, 'fjcEhDU8pXJFtWGo', 'harga-toyota-calya-2017-kredit-calya-tdp-rendah-toyota-jakarta', 2, '2017-06-20 02:56:00', 1, 4, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsPostWithImagePostsEntryModel', 1, 0, 1, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_posts_posts_translations`
--

CREATE TABLE `toyotadjakarta_posts_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_posts_posts_translations`
--

INSERT INTO `toyotadjakarta_posts_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `summary`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(1, 1, '2017-06-16 22:22:20', NULL, '2017-06-16 22:22:20', NULL, 'en', 'Welcome to PyroCMS!', 'This is an example post to demonstrate the posts module.', NULL, NULL, NULL),
(2, 2, '2017-06-20 02:30:48', NULL, '2017-06-21 02:00:17', 1, 'en', 'Info Promo', 'Untuk info promo kredit ini anda bisa datang langsung ke dealer toyota tunas radin inten jakarta timur. atau anda tidak usah bersusah payah datang, cukup Hubungi nomor sales marketing di website ini saja untuk mengetahui tentang informasi Promo Toyota Jakarta terbaru ini. Jadi jangan ragu segera hubungi kami karena kami dengan senang hati akan selalu melayani anda untuk mendapatkan diskon besar dan promo menarik lainnya', NULL, NULL, 'a:0:{}'),
(3, 2, '2017-06-20 02:30:48', NULL, '2017-06-20 02:30:48', 1, 'id', 'Info Promo', 'Untuk info promo kredit ini anda bisa datang langsung ke dealer toyota tunas radin inten jakarta timur. atau anda tidak usah bersusah payah datang, cukup Hubungi nomor sales marketing di website ini saja untuk mengetahui tentang informasi Promo Toyota Jakarta terbaru ini. Jadi jangan ragu segera hubungi kami karena kami dengan senang hati akan selalu melayani anda untuk mendapatkan diskon besar dan promo menarik lainnya', NULL, NULL, 'a:0:{}'),
(4, 3, '2017-06-20 02:44:45', NULL, '2017-06-20 02:45:06', 1, 'en', 'Paket Dp Murah Toyota – Promo Toyota Jakarta 2017 – TDP & kredit angsuran ringan', 'Asdpf', NULL, NULL, 'a:0:{}'),
(5, 3, '2017-06-20 02:44:45', NULL, '2017-06-20 02:44:45', 1, 'id', 'Paket Dp Murah Toyota – Promo Toyota Jakarta 2017 – TDP & kredit angsuran ringan', 'Asdpf', NULL, NULL, 'a:0:{}'),
(6, 4, '2017-06-20 02:54:45', NULL, '2017-06-20 02:55:50', 1, 'en', 'Toyota Venturer 2017 terbaru – Spesifikasi & Harga Toyota Venturer Jakarta', 'Toyota Venturer 2017 terbaru – Spesifikasi & Harga Toyota Venturer Jakarta', NULL, NULL, 'a:0:{}'),
(7, 4, '2017-06-20 02:54:45', NULL, '2017-06-20 02:54:45', 1, 'id', 'Toyota Venturer 2017 terbaru – Spesifikasi & Harga Toyota Venturer Jakarta', 'Toyota Venturer 2017 terbaru – Spesifikasi & Harga Toyota Venturer Jakarta', NULL, NULL, 'a:0:{}'),
(8, 5, '2017-06-20 02:57:10', NULL, '2017-06-20 02:57:10', 1, 'en', NULL, NULL, NULL, NULL, 'a:0:{}'),
(9, 5, '2017-06-20 02:57:10', NULL, '2017-06-20 02:57:10', 1, 'id', 'Harga Toyota Calya 2017 – Kredit Calya Tdp Rendah – Toyota Jakarta', 'Harga Toyota Calya 2017 – Kredit Calya Tdp Rendah – Toyota Jakarta', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_posts_post_with_image_posts`
--

CREATE TABLE `toyotadjakarta_posts_post_with_image_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_posts_post_with_image_posts`
--

INSERT INTO `toyotadjakarta_posts_post_with_image_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `image_id`) VALUES
(1, 1, '2017-06-20 02:30:47', 1, NULL, NULL, NULL, 25),
(2, 2, '2017-06-20 02:44:44', 1, NULL, NULL, NULL, 26),
(3, 3, '2017-06-20 02:54:44', 1, NULL, NULL, NULL, 27),
(4, 4, '2017-06-20 02:57:09', 1, NULL, NULL, NULL, 28);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_posts_post_with_image_posts_translations`
--

CREATE TABLE `toyotadjakarta_posts_post_with_image_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_posts_post_with_image_posts_translations`
--

INSERT INTO `toyotadjakarta_posts_post_with_image_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2017-06-20 02:30:47', NULL, '2017-06-21 02:00:16', 1, 'en', '<p>Untuk info promo kredit ini anda bisa datang langsung ke dealer toyota tunas radin inten jakarta timur. atau anda tidak usah bersusah payah datang, cukup Hubungi nomor sales marketing di website ini saja untuk mengetahui tentang informasi Promo Toyota Jakarta terbaru ini. Jadi jangan ragu segera hubungi kami karena kami dengan senang hati akan selalu melayani anda untuk mendapatkan diskon besar dan promo menarik lainnya</p>\r\n<p><img src=\"/toyotadjakarta/public/files/images/ALAMAT-DAN-TELPON-1024x294.png\"><br></p>'),
(2, 1, '2017-06-20 02:30:47', NULL, '2017-06-21 02:00:16', 1, 'id', '<p>Untuk info promo kredit ini anda bisa datang langsung ke dealer toyota tunas radin inten jakarta timur. atau anda tidak usah bersusah payah datang, cukup Hubungi nomor sales marketing di website ini saja untuk mengetahui tentang informasi Promo Toyota Jakarta terbaru ini. Jadi jangan ragu segera hubungi kami karena kami dengan senang hati akan selalu melayani anda untuk mendapatkan diskon besar dan promo menarik lainnya</p><p><img src=\"/toyotadjakarta/public/files/images/salmon-contact-us.png\"></p>\r\n<p><br></p>'),
(3, 2, '2017-06-20 02:44:44', NULL, '2017-06-20 02:45:06', 1, 'en', '<p>Asdpf</p>'),
(4, 2, '2017-06-20 02:44:44', NULL, '2017-06-20 02:44:44', 1, 'id', '<p>Asdpf</p>'),
(5, 3, '2017-06-20 02:54:45', NULL, '2017-06-20 02:55:49', 1, 'en', '<p>Toyota Venturer 2017 terbaru – Spesifikasi & Harga Toyota Venturer Jakarta</p>'),
(6, 3, '2017-06-20 02:54:45', NULL, '2017-06-20 02:54:45', 1, 'id', '<p>Toyota Venturer 2017 terbaru – Spesifikasi & Harga Toyota Venturer Jakarta</p>'),
(7, 4, '2017-06-20 02:57:09', NULL, '2017-06-20 02:57:09', 1, 'en', NULL),
(8, 4, '2017-06-20 02:57:09', NULL, '2017-06-20 02:57:09', 1, 'id', '<p>Harga Toyota Calya 2017 – Kredit Calya Tdp Rendah – Toyota Jakarta</p>');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_posts_types`
--

CREATE TABLE `toyotadjakarta_posts_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` text COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_posts_types`
--

INSERT INTO `toyotadjakarta_posts_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `layout`, `theme_layout`) VALUES
(1, 1, '2017-06-16 22:22:14', NULL, NULL, NULL, NULL, 'default', '{{ post.content.render|raw }}', 'theme::layouts/default.twig'),
(2, 2, '2017-06-20 02:23:27', 1, '2017-06-21 04:23:34', 1, NULL, 'post_with_image', '{{ post.content|raw }}', 'theme::layouts.blogpost');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_posts_types_translations`
--

CREATE TABLE `toyotadjakarta_posts_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_posts_types_translations`
--

INSERT INTO `toyotadjakarta_posts_types_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-06-16 22:22:15', NULL, '2017-06-16 22:22:15', NULL, 'en', 'Default', 'A simple post type.'),
(2, 2, '2017-06-20 02:23:28', NULL, '2017-06-21 04:23:35', 1, 'en', 'Post With Image', 'Post With Image'),
(3, 2, '2017-06-20 02:23:28', NULL, '2017-06-20 02:23:28', 1, 'id', 'Post With Image', 'Post With Image');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_preferences_preferences`
--

CREATE TABLE `toyotadjakarta_preferences_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_redirects_redirects`
--

CREATE TABLE `toyotadjakarta_redirects_redirects` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '301',
  `secure` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_sales_banners`
--

CREATE TABLE `toyotadjakarta_sales_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1',
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_sales_banners`
--

INSERT INTO `toyotadjakarta_sales_banners` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`, `image_id`, `publish`, `website`) VALUES
(1, 1, '2017-06-20 04:53:13', 1, NULL, NULL, 'promo-toyota-sienta', 32, 1, 'post/sienta'),
(2, 2, '2017-06-20 04:54:10', 1, NULL, NULL, 'sales-executive', 33, 1, 'wwww'),
(3, 3, '2017-06-20 04:54:50', 1, NULL, NULL, 'paket-merdeka', 34, 1, 'merdeka');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_sales_banners_translations`
--

CREATE TABLE `toyotadjakarta_sales_banners_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_sales_banners_translations`
--

INSERT INTO `toyotadjakarta_sales_banners_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `summary`, `description`) VALUES
(1, 1, '2017-06-20 04:53:14', NULL, '2017-06-20 04:53:14', 1, 'en', NULL, NULL, NULL),
(2, 1, '2017-06-20 04:53:14', NULL, '2017-06-20 04:53:14', 1, 'id', 'Promo Toyota Sienta', 'Promo Toyota Sienta', '<p>Promo Toyota Sienta</p>'),
(3, 2, '2017-06-20 04:54:10', NULL, '2017-06-20 04:54:10', 1, 'en', NULL, NULL, NULL),
(4, 2, '2017-06-20 04:54:10', NULL, '2017-06-20 04:54:10', 1, 'id', 'Sales Executive', 'Sales Executive', NULL),
(5, 3, '2017-06-20 04:54:50', NULL, '2017-06-20 04:54:50', 1, 'en', NULL, NULL, NULL),
(6, 3, '2017-06-20 04:54:50', NULL, '2017-06-20 04:54:50', 1, 'id', 'Paket Merdeka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_sales_models`
--

CREATE TABLE `toyotadjakarta_sales_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_sales_models`
--

INSERT INTO `toyotadjakarta_sales_models` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`, `image_id`, `publish`) VALUES
(1, 1, '2017-06-20 03:33:42', 1, NULL, NULL, 'toyota-agya', 29, 1),
(2, 2, '2017-06-20 04:07:06', 1, NULL, NULL, 'toyota-avanza', 30, 1),
(3, 3, '2017-06-20 04:17:33', 1, NULL, NULL, 'toyota-calya', 28, 1),
(4, 4, '2017-06-21 07:12:43', 1, NULL, NULL, 'toyota-sienta', 49, 1),
(5, 5, '2017-06-21 07:13:30', 1, NULL, NULL, 'toyota-new-rush', 50, 1),
(6, 6, '2017-06-21 07:18:13', 1, NULL, NULL, 'toyota-yaris', 64, 1),
(7, 7, '2017-06-21 07:19:33', 1, NULL, NULL, 'toyota-new-fortuner', 56, 1),
(8, 8, '2017-06-21 07:20:01', 1, NULL, NULL, 'toyota-avanza-veloz', 54, 1),
(9, 9, '2017-06-21 07:21:31', 1, NULL, NULL, 'toyota-corolla', 66, 1),
(10, 10, '2017-06-21 07:22:11', 1, NULL, NULL, 'toyota-kijang-innova', 59, 1),
(11, 11, '2017-06-21 07:23:09', 1, NULL, NULL, 'toyota-alphard', 53, 1),
(12, 12, '2017-06-21 07:23:52', 1, NULL, NULL, 'toyota-etios-valco', 52, 1),
(13, 13, '2017-06-21 07:24:22', 1, NULL, NULL, 'toyota-hiace', 57, 1),
(14, 14, '2017-06-21 07:25:29', 1, NULL, NULL, 'toyota-camry', 67, 1),
(15, 15, '2017-06-21 07:26:33', 1, NULL, NULL, 'toyota-hilux', 58, 1),
(16, 16, '2017-06-21 07:27:01', 1, NULL, NULL, 'toyota-land-cruiser', 60, 1),
(17, 17, '2017-06-21 07:27:43', 1, NULL, NULL, 'toyota-nav1', 61, 1),
(18, 18, '2017-06-21 07:28:13', 1, NULL, NULL, 'toyota-prius', 62, 1),
(19, 19, '2017-06-21 07:37:18', 1, NULL, NULL, 'toyota-86', 51, 1),
(20, 20, '2017-06-21 07:37:49', 1, NULL, NULL, 'toyota-all-new-vios', 63, 1),
(21, 21, '2017-06-21 07:38:26', 1, NULL, NULL, 'toyota-dyna', 55, 1),
(22, 22, '2017-06-21 07:39:10', 1, NULL, NULL, 'toyota-vellfire', 65, 1);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_sales_models_translations`
--

CREATE TABLE `toyotadjakarta_sales_models_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_sales_models_translations`
--

INSERT INTO `toyotadjakarta_sales_models_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-06-20 03:33:42', NULL, '2017-06-20 03:33:42', 1, 'en', NULL, NULL),
(2, 1, '2017-06-20 03:33:43', NULL, '2017-06-20 03:33:43', 1, 'id', 'Toyota Agya', NULL),
(3, 2, '2017-06-20 04:07:07', NULL, '2017-06-20 04:07:07', 1, 'en', NULL, NULL),
(4, 2, '2017-06-20 04:07:07', NULL, '2017-06-20 04:07:07', 1, 'id', 'Toyota Avanza', NULL),
(5, 3, '2017-06-20 04:17:34', NULL, '2017-06-20 04:17:34', 1, 'en', NULL, NULL),
(6, 3, '2017-06-20 04:17:34', NULL, '2017-06-20 04:17:34', 1, 'id', 'Toyota Calya', NULL),
(7, 4, '2017-06-21 07:12:43', NULL, '2017-06-21 07:12:43', 1, 'en', NULL, NULL),
(8, 4, '2017-06-21 07:12:43', NULL, '2017-06-21 07:12:43', 1, 'id', 'Toyota Sienta', NULL),
(9, 5, '2017-06-21 07:13:30', NULL, '2017-06-21 07:13:30', 1, 'en', NULL, NULL),
(10, 5, '2017-06-21 07:13:30', NULL, '2017-06-21 07:13:30', 1, 'id', 'Toyota New Rush', NULL),
(11, 6, '2017-06-21 07:18:13', NULL, '2017-06-21 07:18:13', 1, 'en', NULL, NULL),
(12, 6, '2017-06-21 07:18:13', NULL, '2017-06-21 07:18:13', 1, 'id', 'Toyota Yaris', NULL),
(13, 7, '2017-06-21 07:19:33', NULL, '2017-06-21 07:19:33', 1, 'en', NULL, NULL),
(14, 7, '2017-06-21 07:19:33', NULL, '2017-06-21 07:19:33', 1, 'id', 'Toyota New Fortuner', NULL),
(15, 8, '2017-06-21 07:20:01', NULL, '2017-06-21 07:20:01', 1, 'en', NULL, NULL),
(16, 8, '2017-06-21 07:20:02', NULL, '2017-06-21 07:20:02', 1, 'id', 'Toyota Avanza Veloz', NULL),
(17, 9, '2017-06-21 07:21:31', NULL, '2017-06-21 07:21:31', 1, 'en', NULL, NULL),
(18, 9, '2017-06-21 07:21:31', NULL, '2017-06-21 07:21:31', 1, 'id', 'Toyota Corolla', NULL),
(19, 10, '2017-06-21 07:22:11', NULL, '2017-06-21 07:22:11', 1, 'en', NULL, NULL),
(20, 10, '2017-06-21 07:22:11', NULL, '2017-06-21 07:22:11', 1, 'id', 'Toyota Kijang Innova', NULL),
(21, 11, '2017-06-21 07:23:09', NULL, '2017-06-21 07:23:09', 1, 'en', NULL, NULL),
(22, 11, '2017-06-21 07:23:09', NULL, '2017-06-21 07:23:09', 1, 'id', 'Toyota Alphard', NULL),
(23, 12, '2017-06-21 07:23:52', NULL, '2017-06-21 07:23:52', 1, 'en', NULL, NULL),
(24, 12, '2017-06-21 07:23:52', NULL, '2017-06-21 07:23:52', 1, 'id', 'Toyota Etios Valco', NULL),
(25, 13, '2017-06-21 07:24:22', NULL, '2017-06-21 07:24:22', 1, 'en', NULL, NULL),
(26, 13, '2017-06-21 07:24:22', NULL, '2017-06-21 07:24:22', 1, 'id', 'Toyota Hiace', NULL),
(27, 14, '2017-06-21 07:25:29', NULL, '2017-06-21 07:25:29', 1, 'en', NULL, NULL),
(28, 14, '2017-06-21 07:25:30', NULL, '2017-06-21 07:25:30', 1, 'id', 'Toyota Camry', NULL),
(29, 15, '2017-06-21 07:26:33', NULL, '2017-06-21 07:26:33', 1, 'en', NULL, NULL),
(30, 15, '2017-06-21 07:26:33', NULL, '2017-06-21 07:26:33', 1, 'id', 'Toyota Hilux', NULL),
(31, 16, '2017-06-21 07:27:01', NULL, '2017-06-21 07:27:01', 1, 'en', NULL, NULL),
(32, 16, '2017-06-21 07:27:01', NULL, '2017-06-21 07:27:01', 1, 'id', 'Toyota Land Cruiser', NULL),
(33, 17, '2017-06-21 07:27:43', NULL, '2017-06-21 07:27:43', 1, 'en', NULL, NULL),
(34, 17, '2017-06-21 07:27:43', NULL, '2017-06-21 07:27:43', 1, 'id', 'Toyota NAV1', NULL),
(35, 18, '2017-06-21 07:28:13', NULL, '2017-06-21 07:28:13', 1, 'en', NULL, NULL),
(36, 18, '2017-06-21 07:28:13', NULL, '2017-06-21 07:28:13', 1, 'id', 'Toyota Prius', NULL),
(37, 19, '2017-06-21 07:37:18', NULL, '2017-06-21 07:37:18', 1, 'en', NULL, NULL),
(38, 19, '2017-06-21 07:37:18', NULL, '2017-06-21 07:37:18', 1, 'id', 'Toyota 86', NULL),
(39, 20, '2017-06-21 07:37:49', NULL, '2017-06-21 07:37:49', 1, 'en', NULL, NULL),
(40, 20, '2017-06-21 07:37:49', NULL, '2017-06-21 07:37:49', 1, 'id', 'Toyota ALL NEW VIOS', NULL),
(41, 21, '2017-06-21 07:38:26', NULL, '2017-06-21 07:38:26', 1, 'en', NULL, NULL),
(42, 21, '2017-06-21 07:38:26', NULL, '2017-06-21 07:38:26', 1, 'id', 'Toyota Dyna', NULL),
(43, 22, '2017-06-21 07:39:10', NULL, '2017-06-21 07:39:10', 1, 'en', NULL, NULL),
(44, 22, '2017-06-21 07:39:10', NULL, '2017-06-21 07:39:10', 1, 'id', 'Toyota VELLFIRE', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_sales_products`
--

CREATE TABLE `toyotadjakarta_sales_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1',
  `price` double(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_sales_products`
--

INSERT INTO `toyotadjakarta_sales_products` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`, `image_id`, `publish`, `price`) VALUES
(1, 1, '2017-06-20 03:44:47', 1, NULL, NULL, 'agya-1-0-e-m-t', NULL, 1, 116380000.00),
(2, 2, '2017-06-20 04:08:42', 1, NULL, NULL, 'grand-new-avanza-1-3-e-std-m-t', NULL, 1, 184500000.00),
(3, 3, '2017-06-21 07:40:18', 1, NULL, NULL, 'agya-1-0-e-a-t', NULL, 1, 116380000.00),
(4, 4, '2017-06-21 07:41:17', 1, NULL, NULL, 'agya-1-0-g-m-t', NULL, 1, 116380000.00),
(5, 5, '2017-06-21 07:41:53', 1, NULL, NULL, 'agya-1-0-g-m-t-trd', NULL, 1, 116380000.00),
(6, 6, '2017-06-21 07:42:23', 1, NULL, NULL, 'agya-1-0-g-a-t', NULL, 1, 116380000.00),
(7, 7, '2017-06-21 07:42:56', 1, NULL, NULL, 'agya-1-0-g-a-t-trd', NULL, 1, 116380000.00),
(8, 8, '2017-06-21 07:45:12', 1, NULL, NULL, 'grand-new-avanza-1-3-e-std-m-t-2', NULL, 1, 196600000.00),
(9, 9, '2017-06-21 07:46:14', 1, NULL, NULL, 'grand-new-avanza-1-3-e-std-m-t-3', NULL, 1, 187900000.00),
(10, 10, '2017-06-21 07:47:08', 1, NULL, NULL, 'grand-new-avanza-1-3-e-std-m-t-4', NULL, 1, 199100000.00),
(11, 11, '2017-06-21 07:47:42', 1, NULL, NULL, 'grand-new-avanza-1-3-e-std-m-t-5', NULL, 1, 206000000.00),
(12, 12, '2017-06-21 07:48:10', 1, NULL, NULL, 'grand-new-avanza-1-3-e-std-m-t-6', NULL, 1, 216700000.00),
(13, 13, '2017-06-21 07:48:50', 1, NULL, NULL, 'grand-new-avanza-1-3-e-std-m-t-7', NULL, 1, 218300000.00),
(14, 14, '2017-06-21 07:49:10', 1, '2017-06-21 07:52:34', 1, 'grand-new-avanza-1-3-g-m-t-basic', NULL, 1, 200700000.00),
(15, 15, '2017-06-21 07:54:20', 1, NULL, NULL, 'calya-1-2-e-std-m-t', NULL, 1, 131300000.00),
(16, 16, '2017-06-21 07:54:49', 1, NULL, NULL, 'calya-1-2-e-m-t', NULL, 1, 134100000.00),
(17, 17, '2017-06-21 07:55:17', 1, NULL, NULL, 'calya-1-2-e-a-t', NULL, 1, 147100000.00),
(18, 18, '2017-06-21 07:55:40', 1, NULL, NULL, 'calya-1-2-g-m-t', NULL, 1, 139650000.00),
(19, 19, '2017-06-21 07:56:04', 1, NULL, NULL, 'calya-1-2-g-a-t', NULL, 1, 151650000.00),
(20, 20, '2017-06-21 07:57:06', 1, NULL, NULL, 'sienta-1-5-e-m-t-black-trim', NULL, 1, 230500000.00),
(21, 21, '2017-06-21 07:57:54', 1, NULL, NULL, 'sienta-1-5-e-cvt-black-trim', NULL, 1, 248500000.00),
(22, 22, '2017-06-21 07:58:19', 1, NULL, NULL, 'sienta-1-5-g-m-t-black-trim', NULL, 1, 242500000.00),
(23, 23, '2017-06-21 07:59:51', 1, NULL, NULL, 'sienta-1-5-g-cvt-black-trim', NULL, 1, 260500000.00),
(24, 24, '2017-06-21 08:00:15', 1, NULL, NULL, 'sienta-1-5-v-m-t-black-trim', NULL, 1, 257500000.00),
(25, 25, '2017-06-21 08:00:38', 1, '2017-06-21 08:06:24', 1, 'sienta-1-5-v-m-t-fromage-trim', NULL, 1, 257500000.00),
(26, 26, '2017-06-21 08:01:00', 1, NULL, NULL, 'sienta-1-5-v-cvt-black-trim', NULL, 1, 275500000.00),
(27, 27, '2017-06-21 08:01:25', 1, NULL, NULL, 'sienta-1-5-v-cvt-fromage-trim', NULL, 1, 275500000.00),
(28, 28, '2017-06-21 08:01:58', 1, NULL, NULL, 'sienta-1-5-q-cvt-black-trim', NULL, 1, 295500000.00),
(29, 29, '2017-06-21 08:02:37', 1, '2017-06-21 08:06:54', 1, 'sienta-1-5-q-cvt-fromage-trim', NULL, 1, 295500000.00),
(30, 30, '2017-06-21 08:03:26', 1, NULL, NULL, 'rush-1-5-g-m-t', NULL, 1, 237200000.00),
(31, 31, '2017-06-21 08:04:07', 1, NULL, NULL, 'rush-1-5-g-a-t', NULL, 1, 247200000.00),
(32, 32, '2017-06-21 08:04:31', 1, NULL, NULL, 'rush-1-5-s-m-t-trd-sportivo', NULL, 1, 248550000.00),
(33, 33, '2017-06-21 08:04:52', 1, NULL, NULL, 'rush-1-5-s-a-t-trd-sportivo', NULL, 1, 261850000.00),
(34, 34, '2017-06-21 08:05:17', 1, NULL, NULL, 'rush-1-5-s-m-t-trd-sportivo-ultimo', NULL, 1, 251850000.00),
(35, 35, '2017-06-21 08:05:41', 1, NULL, NULL, 'rush-1-5-s-a-t-trd-sportivo-ultimo', NULL, 1, 265150000.00),
(36, 36, '2017-06-21 08:08:15', 1, NULL, NULL, 'new-yaris-e-m-t', NULL, 1, 228800000.00),
(37, 37, '2017-06-21 08:09:19', 1, NULL, NULL, 'new-yaris-e-cvt', NULL, 1, 240600000.00),
(38, 38, '2017-06-21 08:12:31', 1, NULL, NULL, 'new-yaris-g-m-t', NULL, 1, 237100000.00),
(39, 39, '2017-06-21 08:12:54', 1, NULL, NULL, 'new-yaris-g-cvt', NULL, 1, 248100000.00),
(40, 40, '2017-06-21 08:13:21', 1, NULL, NULL, 'new-yaris-s-m-t-trd', NULL, 1, 259000000.00),
(41, 41, '2017-06-21 08:13:43', 1, NULL, NULL, 'new-yaris-s-cvt-trd', NULL, 1, 270800000.00),
(42, 42, '2017-06-21 08:14:33', 1, NULL, NULL, 'new-yaris-s-m-t-trd-heykers', NULL, 1, 266000000.00),
(43, 43, '2017-06-21 08:14:52', 1, NULL, NULL, 'new-yaris-s-cvt-trd-heykers', NULL, 1, 277800000.00),
(44, 44, '2017-06-21 08:15:28', 1, NULL, NULL, 'all-new-fortuner-4x4-2-4-g-a-t-dsl', NULL, 1, 566200000.00),
(45, 45, '2017-06-21 08:15:50', 1, NULL, NULL, 'all-new-fortuner-4x4-2-4-vrz-a-t-dsl', NULL, 1, 640700000.00),
(46, 46, '2017-06-21 08:16:13', 1, NULL, NULL, 'all-new-fortuner-4x2-2-4-g-a-t-dsl', NULL, 1, 469200000.00),
(47, 47, '2017-06-21 08:16:34', 1, NULL, NULL, 'all-new-fortuner-4x2-2-4-g-m-t-dsl', NULL, 1, 451200000.00),
(48, 48, '2017-06-21 08:16:54', 1, NULL, NULL, 'all-new-fortuner-4x2-2-4-vrz-a-t-dsl', NULL, 1, 503200000.00),
(49, 49, '2017-06-21 08:19:20', 1, NULL, NULL, 'all-new-fortuner-4x2-2-7-srz-a-t-bsn', NULL, 1, 519900000.00),
(50, 50, '2017-06-21 08:19:55', 1, NULL, NULL, 'grand-new-avanza-1-3-veloz-m-t', NULL, 1, 211500000.00),
(51, 51, '2017-06-21 08:20:19', 1, NULL, NULL, 'grand-new-avanza-1-3-veloz-a-t', NULL, 1, 223300000.00),
(52, 52, '2017-06-21 08:25:37', 1, NULL, NULL, 'grand-new-avanza-1-5-veloz-m-t', NULL, 1, 222400000.00),
(53, 53, '2017-06-21 08:29:40', 1, NULL, NULL, 'grand-new-avanza-1-5-veloz-a-t', NULL, 1, 234200000.00),
(54, 54, '2017-06-21 08:31:36', 1, NULL, NULL, 'corolla-altis-1-8-g-m-t', NULL, 1, 409100000.00),
(55, 55, '2017-06-21 08:34:26', 1, NULL, NULL, 'corolla-altis-1-8-v-a-t', NULL, 1, 444600000.00),
(56, 56, '2017-06-21 08:37:01', 1, NULL, NULL, 'new-corolla-altis-1-8-g-m-t', NULL, 1, 422100000.00),
(57, 57, '2017-06-21 08:37:27', 1, NULL, NULL, 'new-corolla-altis-1-8-v-a-t', NULL, 1, 456600000.00),
(58, 58, '2017-06-21 08:40:23', 1, NULL, NULL, 'all-new-kijang-innova-2-0-g-m-t', NULL, 1, 292400000.00),
(59, 59, '2017-06-21 08:41:13', 1, NULL, NULL, 'all-new-kijang-innova-2-0-g-a-t', NULL, 1, 312600000.00),
(60, 60, '2017-06-21 08:41:35', 1, NULL, NULL, 'all-new-kijang-innova-2-0-v-m-t', NULL, 1, 334500000.00),
(61, 61, '2017-06-21 08:43:50', 1, NULL, NULL, 'all-new-kijang-innova-2-0-v-a-t', NULL, 1, 354100000.00),
(62, 62, '2017-06-21 08:44:14', 1, NULL, NULL, 'all-new-kijang-innova-2-0-q-m-t', NULL, 1, 373600000.00),
(63, 63, '2017-06-21 08:44:34', 1, NULL, NULL, 'all-new-kijang-innova-2-0-q-a-t', NULL, 1, 393700000.00),
(64, 64, '2017-06-21 08:45:02', 1, NULL, NULL, 'all-new-kijang-innova-2-4-g-m-t-diesel', NULL, 1, 322500000.00),
(65, 65, '2017-06-21 08:45:23', 1, NULL, NULL, 'all-new-kijang-innova-2-4-g-a-t-diesel', NULL, 1, 344000000.00),
(66, 66, '2017-06-21 08:45:46', 1, NULL, NULL, 'all-new-kijang-innova-2-4-v-m-t-diesel', NULL, 1, 368400000.00),
(67, 67, '2017-06-21 08:46:15', 1, NULL, NULL, 'all-new-kijang-innova-2-4-v-a-t-diesel', NULL, 1, 388200000.00),
(68, 68, '2017-06-21 08:46:34', 1, NULL, NULL, 'all-new-kijang-innova-2-4-q-m-t-diesel', NULL, 1, 411800000.00),
(69, 69, '2017-06-21 08:46:54', 1, NULL, NULL, 'all-new-kijang-innova-2-4-q-a-t-diesel', NULL, 1, 433200000.00),
(70, 70, '2017-06-21 08:47:24', 1, NULL, NULL, 'alphard-2-5-x-a-t', NULL, 1, 881200000.00),
(71, 71, '2017-06-21 08:48:15', 1, '2017-06-21 08:54:44', 1, 'alphard-2-5-g-a-t', NULL, 1, 1031200000.00),
(72, 72, '2017-06-21 08:48:41', 1, '2017-06-21 08:55:13', 1, 'alphard-2-5-g-a-t-hybrid', NULL, 1, 1411800000.00),
(73, 73, '2017-06-21 08:49:01', 1, '2017-06-21 08:55:41', 1, 'alphard-3-5-q-a-t', NULL, 1, 1683000000.00),
(74, 74, '2017-06-21 08:49:24', 1, NULL, NULL, 'etios-1-2-jx-m-t', NULL, 1, 149600000.00),
(75, 75, '2017-06-21 08:49:47', 1, NULL, NULL, 'etios-1-2-e-m-t', NULL, 1, 164200000.00),
(76, 76, '2017-06-21 08:50:07', 1, NULL, NULL, 'etios-1-2-e-m-t-tom-s', NULL, 1, 176900000.00),
(77, 77, '2017-06-21 08:50:27', 1, NULL, NULL, 'etios-1-2-g-m-t', NULL, 1, 175400000.00),
(78, 78, '2017-06-21 08:50:48', 1, NULL, NULL, 'hi-ace-std-manual', NULL, 1, 417250000.00),
(79, 79, '2017-06-21 08:51:10', 1, NULL, NULL, 'hi-ace-commuter-manual', NULL, 1, 452350000.00),
(80, 80, '2017-06-21 08:53:15', 1, NULL, NULL, 'new-camry-2-5-g-a-t', NULL, 1, 576200000.00),
(81, 81, '2017-06-21 08:56:30', 1, NULL, NULL, 'new-camry-2-5-v-a-t', NULL, 1, 604000000.00),
(82, 82, '2017-06-21 08:56:51', 1, NULL, NULL, 'new-camry-2-5-l-a-t-hybrid', NULL, 1, 769050000.00),
(83, 83, '2017-06-21 08:57:34', 1, NULL, NULL, 'all-new-hilux-single-cabin-2-0-l-m-t-bensin', NULL, 1, 200950000.00),
(84, 84, '2017-06-21 08:57:55', 1, NULL, NULL, 'all-new-hilux-single-cabin-2-5-m-t-diesel', NULL, 1, 218450000.00),
(85, 85, '2017-06-21 08:58:15', 1, NULL, NULL, 'all-new-hilux-extra-cabin-2-5-e-4x4-m-t-diesel', NULL, 1, 327150000.00),
(86, 86, '2017-06-21 08:58:47', 1, NULL, NULL, 'all-new-hilux-double-cabin-2-5-e-4x4-m-t-diesel', NULL, 1, 387350000.00),
(87, 87, '2017-06-21 08:59:13', 1, NULL, NULL, 'all-new-hilux-double-cabin-2-5-g-4x4-m-t-diesel', NULL, 1, 408550000.00),
(88, 88, '2017-06-21 08:59:48', 1, NULL, NULL, 'all-new-hilux-double-cabin-2-5-v-4x4-a-t-diesel', NULL, 1, 444750000.00),
(89, 89, '2017-06-21 09:00:12', 1, NULL, NULL, 'new-land-cruiser-200-std-spec-a-t-diesel', NULL, 1, 1900400000.00),
(90, 90, '2017-06-21 09:00:34', 1, NULL, NULL, 'new-land-cruiser-200-full-spec-a-t-diesel', NULL, 1, 2236700000.00),
(91, 91, '2017-06-21 09:01:15', 1, NULL, NULL, 'nav1-g-a-t', NULL, 1, 406850000.00),
(92, 92, '2017-06-21 09:01:36', 1, NULL, NULL, 'nav1-v-a-t-limited', NULL, 1, 426200000.00),
(93, 93, '2017-06-21 09:01:57', 1, NULL, NULL, 'nav1-g-a-t-lux', NULL, 1, 413350000.00),
(94, 94, '2017-06-21 09:02:17', 1, NULL, NULL, 'nav1-v-a-t-limited-lux', NULL, 1, 432700000.00),
(95, 95, '2017-06-21 09:02:40', 1, NULL, NULL, 'nav1-v-a-t-welcab', NULL, 1, 550500000.00),
(96, 96, '2017-06-21 09:03:19', 1, NULL, NULL, 'gen-3', NULL, 1, 635900000.00),
(97, 97, '2017-06-21 09:04:00', 1, NULL, NULL, 'new-ft-86-manual', NULL, 1, 716500000.00),
(98, 98, '2017-06-21 09:04:24', 1, NULL, NULL, 'new-ft-86-automatic', NULL, 1, 722900000.00),
(99, 99, '2017-06-21 09:04:44', 1, NULL, NULL, 'new-ft-86-automatic-trd', NULL, 1, 756900000.00),
(100, 100, '2017-06-21 09:05:23', 1, NULL, NULL, 'vellfire-2-5-g-a-t', NULL, 1, 1031600000.00),
(101, 101, '2017-06-21 09:05:47', 1, NULL, NULL, 'vellfire-2-5-g-a-t-limited', NULL, 1, 1091600000.00),
(102, 102, '2017-06-21 09:07:12', 1, NULL, NULL, 'new-vios-e-m-t', NULL, 1, 272900000.00),
(103, 103, '2017-06-21 09:07:37', 1, NULL, NULL, 'new-vios-e-cvt', NULL, 1, 285900000.00),
(104, 104, '2017-06-21 09:08:01', 1, NULL, NULL, 'new-vios-g-m-t', NULL, 1, 291700000.00),
(105, 105, '2017-06-21 09:08:18', 1, NULL, NULL, 'new-vios-g-cvt', NULL, 1, 307800000.00),
(106, 106, '2017-06-21 09:08:38', 1, NULL, NULL, 'new-vios-g-m-t-trd', NULL, 1, 308200000.00),
(107, 107, '2017-06-21 09:08:57', 1, NULL, NULL, 'new-vios-g-cvt-trd', NULL, 1, 324300000.00),
(108, 108, '2017-06-21 09:10:15', 1, NULL, NULL, 'dyna-4-r-chasis-110-ps-st-power-steering', NULL, 1, 256000000.00),
(109, 109, '2017-06-21 09:10:41', 1, NULL, NULL, 'dyna-4-r-chasis-110-ps-st', NULL, 1, 250000000.00),
(110, 110, '2017-06-21 09:11:07', 1, NULL, NULL, 'dyna-4-r-truck-chasis-110-ps-st-long-wheel-base-pwr-steering', NULL, 1, 264700000.00),
(111, 111, '2017-06-21 09:11:42', 1, NULL, NULL, 'dyna-4-r-bus-chasis-110-ps-st-power-steering', NULL, 1, 256100000.00),
(112, 112, '2017-06-21 09:12:06', 1, NULL, NULL, 'dyna-4-r-bus-chasis-110-ps-st-long-wheel-base-pwr-steering', NULL, 1, 264800000.00),
(113, 113, '2017-06-21 09:12:27', 1, NULL, NULL, 'dyna-6-r-bus-chasis-110-ps-ft-power-steering', NULL, 1, 274600000.00),
(114, 114, '2017-06-21 09:12:55', 1, NULL, NULL, 'dyna-6-r-chasis-110-ps-ft-power-steering', NULL, 1, 285700000.00),
(115, 115, '2017-06-21 09:13:13', 1, NULL, NULL, 'dyna-6-r-chasis-110-ps-ft', NULL, 1, 279700000.00),
(116, 116, '2017-06-21 09:13:43', 1, NULL, NULL, 'dyna-6-r-chasis-110-ps-et-power-steering', NULL, 1, 292550000.00),
(117, 117, '2017-06-21 09:14:07', 1, NULL, NULL, 'dyna-6-r-chasis-110-ps-et', NULL, 1, 286550000.00),
(118, 118, '2017-06-21 09:14:35', 1, NULL, NULL, 'dyna-6-r-chasis-110-ps-et-pwr-steering-with-heavy-duty', NULL, 1, 294650000.00),
(119, 119, '2017-06-21 09:15:03', 1, NULL, NULL, 'dyna-6-r-chasis-110-ps-et-pwr-steering-with-off-road', NULL, 1, 300950000.00),
(120, 120, '2017-06-21 09:15:24', 1, NULL, NULL, 'dyna-6-r-chasis-130-ps-xt-power-steering', NULL, 1, 308300000.00),
(121, 121, '2017-06-21 09:15:59', 1, NULL, NULL, 'dyna-6-r-chasis-130-ps-xt', NULL, 1, 302300008.00),
(122, 122, '2017-06-21 09:16:23', 1, NULL, NULL, 'dyna-6-r-chasis-130-ps-xt-long-wheel-base-pwr-steering', NULL, 1, 317200000.00),
(123, 123, '2017-06-21 09:16:52', 1, NULL, NULL, 'dyna-6-r-chasis-130-ps-ht-std-gear-pwr-steering', NULL, 1, 312500000.00),
(124, 124, '2017-06-21 09:17:12', 1, NULL, NULL, 'dyna-6-r-chasis-130-ps-ht-std-gear', NULL, 1, 306500000.00),
(125, 125, '2017-06-21 09:17:45', 1, NULL, NULL, 'dyna-6-r-chasis-130-ps-ht-std-gear-pwr-str-with-heavy-duty', NULL, 1, 314600000.00),
(126, 126, '2017-06-21 09:18:27', 1, NULL, NULL, 'dyna-6-r-chasis-130-ps-ht-std-gear-pwr-str-with-off-road', NULL, 1, 320900000.00),
(127, 127, '2017-06-21 09:18:47', 1, NULL, NULL, 'dyna-6-r-chasis-130-ps-ht-high-gear-power-steering', NULL, 1, 313000000.00),
(128, 128, '2017-06-21 09:19:13', 1, NULL, NULL, 'dyna-6-r-chasis-130-ps-ht-high-gear', NULL, 1, 307000000.00),
(129, 129, '2017-06-21 09:19:35', 1, NULL, NULL, 'dyna-6-r-chasis-130-ps-ht-high-gear-pwr-str-with-heavy-duty', NULL, 1, 315100000.00),
(130, 130, '2017-06-21 09:20:03', 1, NULL, NULL, 'dyna-6-r-chasis-130-ps-ht-high-gear-pwr-str-with-off-road', NULL, 1, 321400000.00);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_sales_products_models`
--

CREATE TABLE `toyotadjakarta_sales_products_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_sales_products_models`
--

INSERT INTO `toyotadjakarta_sales_products_models` (`id`, `entry_id`, `related_id`, `sort_order`) VALUES
(1, 1, 1, 0),
(2, 2, 2, 0),
(3, 3, 1, 0),
(4, 4, 1, 0),
(5, 5, 1, 0),
(6, 6, 1, 0),
(7, 7, 1, 0),
(8, 8, 2, 0),
(9, 9, 2, 0),
(10, 10, 2, 0),
(11, 11, 2, 0),
(12, 13, 2, 0),
(13, 14, 2, 0),
(14, 15, 3, 0),
(15, 16, 3, 0),
(16, 17, 3, 0),
(17, 18, 3, 0),
(18, 19, 3, 0),
(19, 20, 4, 0),
(20, 21, 4, 0),
(21, 22, 4, 0),
(22, 23, 4, 0),
(23, 24, 4, 0),
(24, 25, 4, 0),
(25, 26, 4, 0),
(26, 27, 4, 0),
(27, 28, 4, 0),
(28, 29, 4, 0),
(29, 30, 5, 0),
(30, 31, 5, 0),
(31, 32, 5, 0),
(32, 33, 5, 0),
(33, 34, 5, 0),
(34, 35, 5, 0),
(35, 36, 6, 0),
(36, 37, 6, 0),
(37, 38, 6, 0),
(38, 39, 6, 0),
(39, 40, 6, 0),
(40, 41, 6, 0),
(41, 42, 6, 0),
(42, 44, 7, 0),
(43, 45, 7, 0),
(44, 46, 7, 0),
(45, 47, 7, 0),
(46, 49, 7, 0),
(47, 50, 8, 0),
(48, 51, 8, 0),
(49, 52, 8, 0),
(50, 53, 8, 0),
(51, 54, 9, 0),
(52, 55, 9, 0),
(53, 56, 9, 0),
(54, 57, 9, 0),
(55, 58, 10, 0),
(56, 59, 10, 0),
(57, 60, 10, 0),
(58, 61, 10, 0),
(59, 62, 10, 0),
(60, 63, 10, 0),
(61, 64, 10, 0),
(62, 66, 10, 0),
(63, 67, 10, 0),
(64, 68, 10, 0),
(65, 69, 10, 0),
(66, 70, 11, 0),
(67, 71, 11, 0),
(68, 72, 11, 0),
(69, 73, 11, 0),
(70, 74, 12, 0),
(71, 75, 12, 0),
(72, 76, 12, 0),
(73, 77, 12, 0),
(74, 78, 13, 0),
(75, 79, 13, 0),
(76, 80, 14, 0),
(77, 81, 14, 0),
(78, 82, 14, 0),
(79, 83, 15, 0),
(80, 84, 15, 0),
(81, 85, 15, 0),
(82, 86, 15, 0),
(83, 87, 15, 0),
(84, 88, 15, 0),
(85, 89, 16, 0),
(86, 90, 16, 0),
(87, 91, 17, 0),
(88, 92, 17, 0),
(89, 93, 17, 0),
(90, 94, 17, 0),
(91, 95, 17, 0),
(92, 96, 18, 0),
(93, 97, 19, 0),
(94, 98, 19, 0),
(95, 99, 19, 0),
(96, 100, 22, 0),
(97, 101, 22, 0),
(98, 102, 20, 0),
(99, 103, 20, 0),
(100, 104, 20, 0),
(101, 105, 20, 0),
(102, 106, 20, 0),
(103, 107, 20, 0),
(104, 108, 21, 0),
(105, 109, 21, 0),
(106, 110, 21, 0),
(107, 111, 21, 0),
(108, 112, 21, 0),
(109, 113, 21, 0),
(110, 114, 21, 0),
(111, 115, 21, 0),
(112, 116, 21, 0),
(113, 117, 21, 0),
(114, 118, 21, 0),
(115, 119, 21, 0),
(116, 120, 21, 0),
(117, 121, 21, 0),
(118, 122, 21, 0),
(119, 123, 21, 0),
(120, 124, 21, 0),
(121, 125, 21, 0),
(122, 126, 21, 0),
(123, 127, 21, 0),
(124, 128, 21, 0),
(125, 129, 21, 0),
(126, 130, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_sales_products_translations`
--

CREATE TABLE `toyotadjakarta_sales_products_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_sales_products_translations`
--

INSERT INTO `toyotadjakarta_sales_products_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `summary`, `description`) VALUES
(1, 1, '2017-06-20 03:44:47', NULL, '2017-06-20 03:44:47', 1, 'en', NULL, NULL, NULL),
(2, 1, '2017-06-20 03:44:48', NULL, '2017-06-20 03:44:48', 1, 'id', 'AGYA 1.0 E M/T', NULL, NULL),
(3, 2, '2017-06-20 04:08:43', NULL, '2017-06-20 04:08:43', 1, 'en', NULL, NULL, NULL),
(4, 2, '2017-06-20 04:08:43', NULL, '2017-06-20 04:08:43', 1, 'id', 'GRAND NEW AVANZA 1.3 E STD M/T', NULL, NULL),
(5, 3, '2017-06-21 07:40:18', NULL, '2017-06-21 07:40:18', 1, 'en', NULL, NULL, NULL),
(6, 3, '2017-06-21 07:40:18', NULL, '2017-06-21 07:40:18', 1, 'id', 'AGYA 1.0 E A/T', NULL, NULL),
(7, 4, '2017-06-21 07:41:18', NULL, '2017-06-21 07:41:18', 1, 'en', NULL, NULL, NULL),
(8, 4, '2017-06-21 07:41:18', NULL, '2017-06-21 07:41:18', 1, 'id', 'AGYA 1.0 G M/T', NULL, NULL),
(9, 5, '2017-06-21 07:41:53', NULL, '2017-06-21 07:41:53', 1, 'en', NULL, NULL, NULL),
(10, 5, '2017-06-21 07:41:53', NULL, '2017-06-21 07:41:53', 1, 'id', 'AGYA 1.0 G M/T TRD', NULL, NULL),
(11, 6, '2017-06-21 07:42:23', NULL, '2017-06-21 07:42:23', 1, 'en', NULL, NULL, NULL),
(12, 6, '2017-06-21 07:42:23', NULL, '2017-06-21 07:42:23', 1, 'id', 'AGYA 1.0 G A/T', NULL, NULL),
(13, 7, '2017-06-21 07:42:56', NULL, '2017-06-21 07:42:56', 1, 'en', NULL, NULL, NULL),
(14, 7, '2017-06-21 07:42:56', NULL, '2017-06-21 07:42:56', 1, 'id', 'AGYA 1.0 G A/T TRD', NULL, NULL),
(15, 8, '2017-06-21 07:45:12', NULL, '2017-06-21 07:45:12', 1, 'en', NULL, NULL, NULL),
(16, 8, '2017-06-21 07:45:13', NULL, '2017-06-21 07:45:13', 1, 'id', 'GRAND NEW AVANZA 1.3 E STD M/T', NULL, NULL),
(17, 9, '2017-06-21 07:46:14', NULL, '2017-06-21 07:46:14', 1, 'en', NULL, NULL, NULL),
(18, 9, '2017-06-21 07:46:14', NULL, '2017-06-21 07:46:14', 1, 'id', 'GRAND NEW AVANZA 1.3 E STD M/T', NULL, NULL),
(19, 10, '2017-06-21 07:47:08', NULL, '2017-06-21 07:47:08', 1, 'en', NULL, NULL, NULL),
(20, 10, '2017-06-21 07:47:08', NULL, '2017-06-21 07:47:08', 1, 'id', 'GRAND NEW AVANZA 1.3 E STD M/T', NULL, NULL),
(21, 11, '2017-06-21 07:47:42', NULL, '2017-06-21 07:47:42', 1, 'en', NULL, NULL, NULL),
(22, 11, '2017-06-21 07:47:42', NULL, '2017-06-21 07:47:42', 1, 'id', 'GRAND NEW AVANZA 1.3 E STD M/T', NULL, NULL),
(23, 12, '2017-06-21 07:48:10', NULL, '2017-06-21 07:48:10', 1, 'en', NULL, NULL, NULL),
(24, 12, '2017-06-21 07:48:10', NULL, '2017-06-21 07:48:10', 1, 'id', 'GRAND NEW AVANZA 1.3 E STD M/T', NULL, NULL),
(25, 13, '2017-06-21 07:48:50', NULL, '2017-06-21 07:48:50', 1, 'en', NULL, NULL, NULL),
(26, 13, '2017-06-21 07:48:50', NULL, '2017-06-21 07:48:50', 1, 'id', 'GRAND NEW AVANZA 1.3 E STD M/T', NULL, NULL),
(27, 14, '2017-06-21 07:49:10', NULL, '2017-06-21 07:51:48', 1, 'en', 'GRAND NEW AVANZA 1.3 G M/T BASIC', NULL, NULL),
(28, 14, '2017-06-21 07:49:10', NULL, '2017-06-21 07:49:10', 1, 'id', 'GRAND NEW AVANZA 1.3 G M/T BASIC', NULL, NULL),
(29, 15, '2017-06-21 07:54:21', NULL, '2017-06-21 07:54:21', 1, 'en', NULL, NULL, NULL),
(30, 15, '2017-06-21 07:54:21', NULL, '2017-06-21 07:54:21', 1, 'id', 'CALYA 1.2 E STD M/T', NULL, NULL),
(31, 16, '2017-06-21 07:54:49', NULL, '2017-06-21 07:54:49', 1, 'en', NULL, NULL, NULL),
(32, 16, '2017-06-21 07:54:49', NULL, '2017-06-21 07:54:49', 1, 'id', 'CALYA 1.2 E M/T', NULL, NULL),
(33, 17, '2017-06-21 07:55:17', NULL, '2017-06-21 07:55:17', 1, 'en', NULL, NULL, NULL),
(34, 17, '2017-06-21 07:55:17', NULL, '2017-06-21 07:55:17', 1, 'id', 'CALYA 1.2 E A/T', NULL, NULL),
(35, 18, '2017-06-21 07:55:40', NULL, '2017-06-21 07:55:40', 1, 'en', NULL, NULL, NULL),
(36, 18, '2017-06-21 07:55:40', NULL, '2017-06-21 07:55:40', 1, 'id', 'CALYA 1.2 G M/T', NULL, NULL),
(37, 19, '2017-06-21 07:56:04', NULL, '2017-06-21 07:56:04', 1, 'en', NULL, NULL, NULL),
(38, 19, '2017-06-21 07:56:04', NULL, '2017-06-21 07:56:04', 1, 'id', 'CALYA 1.2 G A/T', NULL, NULL),
(39, 20, '2017-06-21 07:57:06', NULL, '2017-06-21 07:57:06', 1, 'en', NULL, NULL, NULL),
(40, 20, '2017-06-21 07:57:06', NULL, '2017-06-21 07:57:06', 1, 'id', 'SIENTA 1.5 E M/T (BLACK TRIM)', NULL, NULL),
(41, 21, '2017-06-21 07:57:54', NULL, '2017-06-21 07:57:54', 1, 'en', NULL, NULL, NULL),
(42, 21, '2017-06-21 07:57:54', NULL, '2017-06-21 07:57:54', 1, 'id', 'SIENTA 1.5 E CVT (BLACK TRIM)', NULL, NULL),
(43, 22, '2017-06-21 07:58:19', NULL, '2017-06-21 07:58:19', 1, 'en', NULL, NULL, NULL),
(44, 22, '2017-06-21 07:58:19', NULL, '2017-06-21 07:58:19', 1, 'id', 'SIENTA 1.5 G M/T (BLACK TRIM)', NULL, NULL),
(45, 23, '2017-06-21 07:59:51', NULL, '2017-06-21 07:59:51', 1, 'en', NULL, NULL, NULL),
(46, 23, '2017-06-21 07:59:51', NULL, '2017-06-21 07:59:51', 1, 'id', 'SIENTA 1.5 G CVT (BLACK TRIM)', NULL, NULL),
(47, 24, '2017-06-21 08:00:15', NULL, '2017-06-21 08:00:15', 1, 'en', NULL, NULL, NULL),
(48, 24, '2017-06-21 08:00:15', NULL, '2017-06-21 08:00:15', 1, 'id', 'SIENTA 1.5 V M/T (BLACK TRIM)', NULL, NULL),
(49, 25, '2017-06-21 08:00:38', NULL, '2017-06-21 08:06:09', 1, 'en', 'SIENTA 1.5 V M/T (FROMAGE TRIM)', NULL, NULL),
(50, 25, '2017-06-21 08:00:39', NULL, '2017-06-21 08:00:39', 1, 'id', 'SIENTA 1.5 V M/T (FROMAGE TRIM)', NULL, NULL),
(51, 26, '2017-06-21 08:01:00', NULL, '2017-06-21 08:01:00', 1, 'en', NULL, NULL, NULL),
(52, 26, '2017-06-21 08:01:00', NULL, '2017-06-21 08:01:00', 1, 'id', 'SIENTA 1.5 V CVT (BLACK TRIM)', NULL, NULL),
(53, 27, '2017-06-21 08:01:25', NULL, '2017-06-21 08:01:25', 1, 'en', NULL, NULL, NULL),
(54, 27, '2017-06-21 08:01:25', NULL, '2017-06-21 08:01:25', 1, 'id', 'SIENTA 1.5 V CVT (FROMAGE TRIM)', NULL, NULL),
(55, 28, '2017-06-21 08:01:58', NULL, '2017-06-21 08:01:58', 1, 'en', NULL, NULL, NULL),
(56, 28, '2017-06-21 08:01:58', NULL, '2017-06-21 08:01:58', 1, 'id', 'SIENTA 1.5 Q CVT (BLACK TRIM)', NULL, NULL),
(57, 29, '2017-06-21 08:02:37', NULL, '2017-06-21 08:06:54', 1, 'en', 'SIENTA 1.5 Q CVT (FROMAGE TRIM)', NULL, NULL),
(58, 29, '2017-06-21 08:02:37', NULL, '2017-06-21 08:02:37', 1, 'id', 'SIENTA 1.5 Q CVT (FROMAGE TRIM)', NULL, NULL),
(59, 30, '2017-06-21 08:03:26', NULL, '2017-06-21 08:03:26', 1, 'en', NULL, NULL, NULL),
(60, 30, '2017-06-21 08:03:26', NULL, '2017-06-21 08:03:26', 1, 'id', 'RUSH 1.5 G M/T', NULL, NULL),
(61, 31, '2017-06-21 08:04:07', NULL, '2017-06-21 08:04:07', 1, 'en', NULL, NULL, NULL),
(62, 31, '2017-06-21 08:04:08', NULL, '2017-06-21 08:04:08', 1, 'id', 'RUSH 1.5 G A/T', NULL, NULL),
(63, 32, '2017-06-21 08:04:31', NULL, '2017-06-21 08:04:31', 1, 'en', NULL, NULL, NULL),
(64, 32, '2017-06-21 08:04:31', NULL, '2017-06-21 08:04:31', 1, 'id', 'RUSH 1.5 S M/T TRD SPORTIVO', NULL, NULL),
(65, 33, '2017-06-21 08:04:52', NULL, '2017-06-21 08:04:52', 1, 'en', NULL, NULL, NULL),
(66, 33, '2017-06-21 08:04:52', NULL, '2017-06-21 08:04:52', 1, 'id', 'RUSH 1.5 S A/T TRD SPORTIVO', NULL, NULL),
(67, 34, '2017-06-21 08:05:17', NULL, '2017-06-21 08:05:17', 1, 'en', NULL, NULL, NULL),
(68, 34, '2017-06-21 08:05:17', NULL, '2017-06-21 08:05:17', 1, 'id', 'RUSH 1.5 S M/T TRD SPORTIVO ULTIMO', NULL, NULL),
(69, 35, '2017-06-21 08:05:41', NULL, '2017-06-21 08:05:41', 1, 'en', NULL, NULL, NULL),
(70, 35, '2017-06-21 08:05:41', NULL, '2017-06-21 08:05:41', 1, 'id', 'RUSH 1.5 S A/T TRD SPORTIVO ULTIMO', NULL, NULL),
(71, 36, '2017-06-21 08:08:15', NULL, '2017-06-21 08:08:15', 1, 'en', NULL, NULL, NULL),
(72, 36, '2017-06-21 08:08:15', NULL, '2017-06-21 08:08:15', 1, 'id', 'NEW YARIS E M/T', NULL, NULL),
(73, 37, '2017-06-21 08:09:19', NULL, '2017-06-21 08:09:19', 1, 'en', NULL, NULL, NULL),
(74, 37, '2017-06-21 08:09:19', NULL, '2017-06-21 08:09:19', 1, 'id', 'NEW YARIS E CVT', NULL, NULL),
(75, 38, '2017-06-21 08:12:31', NULL, '2017-06-21 08:12:31', 1, 'en', NULL, NULL, NULL),
(76, 38, '2017-06-21 08:12:31', NULL, '2017-06-21 08:12:31', 1, 'id', 'NEW YARIS G M/T', NULL, NULL),
(77, 39, '2017-06-21 08:12:54', NULL, '2017-06-21 08:12:54', 1, 'en', NULL, NULL, NULL),
(78, 39, '2017-06-21 08:12:54', NULL, '2017-06-21 08:12:54', 1, 'id', 'NEW YARIS G CVT', NULL, NULL),
(79, 40, '2017-06-21 08:13:21', NULL, '2017-06-21 08:13:21', 1, 'en', NULL, NULL, NULL),
(80, 40, '2017-06-21 08:13:21', NULL, '2017-06-21 08:13:21', 1, 'id', 'NEW YARIS S M/T TRD', NULL, NULL),
(81, 41, '2017-06-21 08:13:43', NULL, '2017-06-21 08:13:43', 1, 'en', NULL, NULL, NULL),
(82, 41, '2017-06-21 08:13:44', NULL, '2017-06-21 08:13:44', 1, 'id', 'NEW YARIS S CVT TRD', NULL, NULL),
(83, 42, '2017-06-21 08:14:33', NULL, '2017-06-21 08:14:33', 1, 'en', NULL, NULL, NULL),
(84, 42, '2017-06-21 08:14:34', NULL, '2017-06-21 08:14:34', 1, 'id', 'NEW YARIS S M/T TRD HEYKERS', NULL, NULL),
(85, 43, '2017-06-21 08:14:52', NULL, '2017-06-21 08:14:52', 1, 'en', NULL, NULL, NULL),
(86, 43, '2017-06-21 08:14:53', NULL, '2017-06-21 08:14:53', 1, 'id', 'NEW YARIS S CVT TRD HEYKERS', NULL, NULL),
(87, 44, '2017-06-21 08:15:28', NULL, '2017-06-21 08:15:28', 1, 'en', NULL, NULL, NULL),
(88, 44, '2017-06-21 08:15:28', NULL, '2017-06-21 08:15:28', 1, 'id', 'ALL NEW FORTUNER 4x4 2.4 G A/T DSL', NULL, NULL),
(89, 45, '2017-06-21 08:15:50', NULL, '2017-06-21 08:15:50', 1, 'en', NULL, NULL, NULL),
(90, 45, '2017-06-21 08:15:50', NULL, '2017-06-21 08:15:50', 1, 'id', 'ALL NEW FORTUNER 4x4 2.4 VRZ A/T DSL', NULL, NULL),
(91, 46, '2017-06-21 08:16:13', NULL, '2017-06-21 08:16:13', 1, 'en', NULL, NULL, NULL),
(92, 46, '2017-06-21 08:16:13', NULL, '2017-06-21 08:16:13', 1, 'id', 'ALL NEW FORTUNER 4x2 2.4 G A/T DSL', NULL, NULL),
(93, 47, '2017-06-21 08:16:35', NULL, '2017-06-21 08:16:35', 1, 'en', NULL, NULL, NULL),
(94, 47, '2017-06-21 08:16:35', NULL, '2017-06-21 08:16:35', 1, 'id', 'ALL NEW FORTUNER 4x2 2.4 G M/T DSL', NULL, NULL),
(95, 48, '2017-06-21 08:16:54', NULL, '2017-06-21 08:16:54', 1, 'en', NULL, NULL, NULL),
(96, 48, '2017-06-21 08:16:54', NULL, '2017-06-21 08:16:54', 1, 'id', 'ALL NEW FORTUNER 4x2 2.4 VRZ A/T DSL', NULL, NULL),
(97, 49, '2017-06-21 08:19:20', NULL, '2017-06-21 08:19:20', 1, 'en', NULL, NULL, NULL),
(98, 49, '2017-06-21 08:19:20', NULL, '2017-06-21 08:19:20', 1, 'id', 'ALL NEW FORTUNER 4x2 2.7 SRZ A/T BSN', NULL, NULL),
(99, 50, '2017-06-21 08:19:55', NULL, '2017-06-21 08:19:55', 1, 'en', NULL, NULL, NULL),
(100, 50, '2017-06-21 08:19:55', NULL, '2017-06-21 08:19:55', 1, 'id', 'GRAND NEW AVANZA 1.3 VELOZ M/T', NULL, NULL),
(101, 51, '2017-06-21 08:20:19', NULL, '2017-06-21 08:20:19', 1, 'en', NULL, NULL, NULL),
(102, 51, '2017-06-21 08:20:19', NULL, '2017-06-21 08:20:19', 1, 'id', 'GRAND NEW AVANZA 1.3 VELOZ A/T', NULL, NULL),
(103, 52, '2017-06-21 08:25:37', NULL, '2017-06-21 08:25:37', 1, 'en', NULL, NULL, NULL),
(104, 52, '2017-06-21 08:25:38', NULL, '2017-06-21 08:25:38', 1, 'id', 'GRAND NEW AVANZA 1.5 VELOZ M/T', NULL, NULL),
(105, 53, '2017-06-21 08:29:40', NULL, '2017-06-21 08:29:40', 1, 'en', NULL, NULL, NULL),
(106, 53, '2017-06-21 08:29:40', NULL, '2017-06-21 08:29:40', 1, 'id', 'GRAND NEW AVANZA 1.5 VELOZ A/T', NULL, NULL),
(107, 54, '2017-06-21 08:31:36', NULL, '2017-06-21 08:31:36', 1, 'en', NULL, NULL, NULL),
(108, 54, '2017-06-21 08:31:37', NULL, '2017-06-21 08:31:37', 1, 'id', 'COROLLA ALTIS 1.8 G M/T', NULL, NULL),
(109, 55, '2017-06-21 08:34:26', NULL, '2017-06-21 08:34:26', 1, 'en', NULL, NULL, NULL),
(110, 55, '2017-06-21 08:34:26', NULL, '2017-06-21 08:34:26', 1, 'id', 'COROLLA ALTIS 1.8 V A/T', NULL, NULL),
(111, 56, '2017-06-21 08:37:01', NULL, '2017-06-21 08:37:01', 1, 'en', NULL, NULL, NULL),
(112, 56, '2017-06-21 08:37:01', NULL, '2017-06-21 08:37:01', 1, 'id', 'NEW COROLLA ALTIS 1.8 G M/T', NULL, NULL),
(113, 57, '2017-06-21 08:37:27', NULL, '2017-06-21 08:37:27', 1, 'en', NULL, NULL, NULL),
(114, 57, '2017-06-21 08:37:27', NULL, '2017-06-21 08:37:27', 1, 'id', 'NEW COROLLA ALTIS 1.8 V A/T', NULL, NULL),
(115, 58, '2017-06-21 08:40:23', NULL, '2017-06-21 08:40:23', 1, 'en', NULL, NULL, NULL),
(116, 58, '2017-06-21 08:40:23', NULL, '2017-06-21 08:40:23', 1, 'id', 'ALL NEW KIJANG INNOVA 2.0 G M/T', NULL, NULL),
(117, 59, '2017-06-21 08:41:13', NULL, '2017-06-21 08:41:13', 1, 'en', NULL, NULL, NULL),
(118, 59, '2017-06-21 08:41:13', NULL, '2017-06-21 08:41:13', 1, 'id', 'ALL NEW KIJANG INNOVA 2.0 G A/T', NULL, NULL),
(119, 60, '2017-06-21 08:41:35', NULL, '2017-06-21 08:41:35', 1, 'en', NULL, NULL, NULL),
(120, 60, '2017-06-21 08:41:35', NULL, '2017-06-21 08:41:35', 1, 'id', 'ALL NEW KIJANG INNOVA 2.0 V M/T', NULL, NULL),
(121, 61, '2017-06-21 08:43:50', NULL, '2017-06-21 08:43:50', 1, 'en', NULL, NULL, NULL),
(122, 61, '2017-06-21 08:43:50', NULL, '2017-06-21 08:43:50', 1, 'id', 'ALL NEW KIJANG INNOVA 2.0 V A/T', NULL, NULL),
(123, 62, '2017-06-21 08:44:14', NULL, '2017-06-21 08:44:14', 1, 'en', NULL, NULL, NULL),
(124, 62, '2017-06-21 08:44:14', NULL, '2017-06-21 08:44:14', 1, 'id', 'ALL NEW KIJANG INNOVA 2.0 Q M/T', NULL, NULL),
(125, 63, '2017-06-21 08:44:34', NULL, '2017-06-21 08:44:34', 1, 'en', NULL, NULL, NULL),
(126, 63, '2017-06-21 08:44:34', NULL, '2017-06-21 08:44:34', 1, 'id', 'ALL NEW KIJANG INNOVA 2.0 Q A/T', NULL, NULL),
(127, 64, '2017-06-21 08:45:03', NULL, '2017-06-21 08:45:03', 1, 'en', NULL, NULL, NULL),
(128, 64, '2017-06-21 08:45:03', NULL, '2017-06-21 08:45:03', 1, 'id', 'ALL NEW KIJANG INNOVA 2.4 G M/T DIESEL', NULL, NULL),
(129, 65, '2017-06-21 08:45:23', NULL, '2017-06-21 08:45:23', 1, 'en', NULL, NULL, NULL),
(130, 65, '2017-06-21 08:45:23', NULL, '2017-06-21 08:45:23', 1, 'id', 'ALL NEW KIJANG INNOVA 2.4 G A/T DIESEL', NULL, NULL),
(131, 66, '2017-06-21 08:45:46', NULL, '2017-06-21 08:45:46', 1, 'en', NULL, NULL, NULL),
(132, 66, '2017-06-21 08:45:46', NULL, '2017-06-21 08:45:46', 1, 'id', 'ALL NEW KIJANG INNOVA 2.4 V M/T DIESEL', NULL, NULL),
(133, 67, '2017-06-21 08:46:15', NULL, '2017-06-21 08:46:15', 1, 'en', NULL, NULL, NULL),
(134, 67, '2017-06-21 08:46:15', NULL, '2017-06-21 08:46:15', 1, 'id', 'ALL NEW KIJANG INNOVA 2.4 V A/T DIESEL', NULL, NULL),
(135, 68, '2017-06-21 08:46:34', NULL, '2017-06-21 08:46:34', 1, 'en', NULL, NULL, NULL),
(136, 68, '2017-06-21 08:46:34', NULL, '2017-06-21 08:46:34', 1, 'id', 'ALL NEW KIJANG INNOVA 2.4 Q M/T DIESEL', NULL, NULL),
(137, 69, '2017-06-21 08:46:54', NULL, '2017-06-21 08:46:54', 1, 'en', NULL, NULL, NULL),
(138, 69, '2017-06-21 08:46:54', NULL, '2017-06-21 08:46:54', 1, 'id', 'ALL NEW KIJANG INNOVA 2.4 Q A/T DIESEL', NULL, NULL),
(139, 70, '2017-06-21 08:47:24', NULL, '2017-06-21 08:47:24', 1, 'en', NULL, NULL, NULL),
(140, 70, '2017-06-21 08:47:24', NULL, '2017-06-21 08:47:24', 1, 'id', 'ALPHARD 2.5 X A/T', NULL, NULL),
(141, 71, '2017-06-21 08:48:15', NULL, '2017-06-21 08:54:08', 1, 'en', 'ALPHARD 2.5 G A/T', NULL, NULL),
(142, 71, '2017-06-21 08:48:15', NULL, '2017-06-21 08:48:15', 1, 'id', 'ALPHARD 2.5 G A/T', NULL, NULL),
(143, 72, '2017-06-21 08:48:41', NULL, '2017-06-21 08:55:13', 1, 'en', 'ALPHARD 2.5 G A/T HYBRID', NULL, NULL),
(144, 72, '2017-06-21 08:48:41', NULL, '2017-06-21 08:48:41', 1, 'id', 'ALPHARD 2.5 G A/T HYBRID', NULL, NULL),
(145, 73, '2017-06-21 08:49:01', NULL, '2017-06-21 08:55:41', 1, 'en', 'ALPHARD 3.5 Q A/T', NULL, NULL),
(146, 73, '2017-06-21 08:49:01', NULL, '2017-06-21 08:49:01', 1, 'id', 'ALPHARD 3.5 Q A/T', NULL, NULL),
(147, 74, '2017-06-21 08:49:25', NULL, '2017-06-21 08:49:25', 1, 'en', NULL, NULL, NULL),
(148, 74, '2017-06-21 08:49:25', NULL, '2017-06-21 08:49:25', 1, 'id', 'ETIOS 1.2 JX M/T', NULL, NULL),
(149, 75, '2017-06-21 08:49:47', NULL, '2017-06-21 08:49:47', 1, 'en', NULL, NULL, NULL),
(150, 75, '2017-06-21 08:49:47', NULL, '2017-06-21 08:49:47', 1, 'id', 'ETIOS 1.2 E M/T', NULL, NULL),
(151, 76, '2017-06-21 08:50:07', NULL, '2017-06-21 08:50:07', 1, 'en', NULL, NULL, NULL),
(152, 76, '2017-06-21 08:50:07', NULL, '2017-06-21 08:50:07', 1, 'id', 'ETIOS 1.2 E M/T TOM\'s', NULL, NULL),
(153, 77, '2017-06-21 08:50:27', NULL, '2017-06-21 08:50:27', 1, 'en', NULL, NULL, NULL),
(154, 77, '2017-06-21 08:50:27', NULL, '2017-06-21 08:50:27', 1, 'id', 'ETIOS 1.2 G M/T', NULL, NULL),
(155, 78, '2017-06-21 08:50:48', NULL, '2017-06-21 08:50:48', 1, 'en', NULL, NULL, NULL),
(156, 78, '2017-06-21 08:50:48', NULL, '2017-06-21 08:50:48', 1, 'id', 'HI ACE STD MANUAL', NULL, NULL),
(157, 79, '2017-06-21 08:51:10', NULL, '2017-06-21 08:51:10', 1, 'en', NULL, NULL, NULL),
(158, 79, '2017-06-21 08:51:10', NULL, '2017-06-21 08:51:10', 1, 'id', 'HI ACE COMMUTER MANUAL', NULL, NULL),
(159, 80, '2017-06-21 08:53:15', NULL, '2017-06-21 08:53:15', 1, 'en', NULL, NULL, NULL),
(160, 80, '2017-06-21 08:53:15', NULL, '2017-06-21 08:53:15', 1, 'id', 'NEW CAMRY 2.5 G A/T', NULL, NULL),
(161, 81, '2017-06-21 08:56:30', NULL, '2017-06-21 08:56:30', 1, 'en', NULL, NULL, NULL),
(162, 81, '2017-06-21 08:56:30', NULL, '2017-06-21 08:56:30', 1, 'id', 'NEW CAMRY 2.5 V A/T', NULL, NULL),
(163, 82, '2017-06-21 08:56:51', NULL, '2017-06-21 08:56:51', 1, 'en', NULL, NULL, NULL),
(164, 82, '2017-06-21 08:56:51', NULL, '2017-06-21 08:56:51', 1, 'id', 'NEW CAMRY 2.5 L A/T HYBRID', NULL, NULL),
(165, 83, '2017-06-21 08:57:34', NULL, '2017-06-21 08:57:34', 1, 'en', NULL, NULL, NULL),
(166, 83, '2017-06-21 08:57:34', NULL, '2017-06-21 08:57:34', 1, 'id', 'ALL NEW HILUX SINGLE CABIN 2.0 L M/T BENSIN', NULL, NULL),
(167, 84, '2017-06-21 08:57:55', NULL, '2017-06-21 08:57:55', 1, 'en', NULL, NULL, NULL),
(168, 84, '2017-06-21 08:57:55', NULL, '2017-06-21 08:57:55', 1, 'id', 'ALL NEW HILUX SINGLE CABIN 2.5 M/T DIESEL', NULL, NULL),
(169, 85, '2017-06-21 08:58:16', NULL, '2017-06-21 08:58:16', 1, 'en', NULL, NULL, NULL),
(170, 85, '2017-06-21 08:58:16', NULL, '2017-06-21 08:58:16', 1, 'id', 'ALL NEW HILUX EXTRA CABIN 2.5 E (4X4) M/T DIESEL', NULL, NULL),
(171, 86, '2017-06-21 08:58:47', NULL, '2017-06-21 08:58:47', 1, 'en', NULL, NULL, NULL),
(172, 86, '2017-06-21 08:58:47', NULL, '2017-06-21 08:58:47', 1, 'id', 'ALL NEW HILUX DOUBLE CABIN 2.5 E (4X4) M/T DIESEL', NULL, NULL),
(173, 87, '2017-06-21 08:59:13', NULL, '2017-06-21 08:59:13', 1, 'en', NULL, NULL, NULL),
(174, 87, '2017-06-21 08:59:13', NULL, '2017-06-21 08:59:13', 1, 'id', 'ALL NEW HILUX DOUBLE CABIN 2.5 G (4X4) M/T DIESEL', NULL, NULL),
(175, 88, '2017-06-21 08:59:48', NULL, '2017-06-21 08:59:48', 1, 'en', NULL, NULL, NULL),
(176, 88, '2017-06-21 08:59:48', NULL, '2017-06-21 08:59:48', 1, 'id', 'ALL NEW HILUX DOUBLE CABIN 2.5 V (4x4) A/T DIESEL', NULL, NULL),
(177, 89, '2017-06-21 09:00:12', NULL, '2017-06-21 09:00:12', 1, 'en', NULL, NULL, NULL),
(178, 89, '2017-06-21 09:00:12', NULL, '2017-06-21 09:00:12', 1, 'id', 'NEW LAND CRUISER 200 STD SPEC A/T DIESEL', NULL, NULL),
(179, 90, '2017-06-21 09:00:34', NULL, '2017-06-21 09:00:34', 1, 'en', NULL, NULL, NULL),
(180, 90, '2017-06-21 09:00:34', NULL, '2017-06-21 09:00:34', 1, 'id', 'NEW LAND CRUISER 200 FULL SPEC A/T DIESEL', NULL, NULL),
(181, 91, '2017-06-21 09:01:15', NULL, '2017-06-21 09:01:15', 1, 'en', NULL, NULL, NULL),
(182, 91, '2017-06-21 09:01:15', NULL, '2017-06-21 09:01:15', 1, 'id', 'NAV1 G A/T', NULL, NULL),
(183, 92, '2017-06-21 09:01:37', NULL, '2017-06-21 09:01:37', 1, 'en', NULL, NULL, NULL),
(184, 92, '2017-06-21 09:01:37', NULL, '2017-06-21 09:01:37', 1, 'id', 'NAV1 V A/T LIMITED', NULL, NULL),
(185, 93, '2017-06-21 09:01:57', NULL, '2017-06-21 09:01:57', 1, 'en', NULL, NULL, NULL),
(186, 93, '2017-06-21 09:01:57', NULL, '2017-06-21 09:01:57', 1, 'id', 'NAV1 G A/T LUX', NULL, NULL),
(187, 94, '2017-06-21 09:02:17', NULL, '2017-06-21 09:02:17', 1, 'en', NULL, NULL, NULL),
(188, 94, '2017-06-21 09:02:17', NULL, '2017-06-21 09:02:17', 1, 'id', 'NAV1 V A/T LIMITED LUX', NULL, NULL),
(189, 95, '2017-06-21 09:02:41', NULL, '2017-06-21 09:02:41', 1, 'en', NULL, NULL, NULL),
(190, 95, '2017-06-21 09:02:41', NULL, '2017-06-21 09:02:41', 1, 'id', 'NAV1 V A/T WELCAB', NULL, NULL),
(191, 96, '2017-06-21 09:03:19', NULL, '2017-06-21 09:03:19', 1, 'en', NULL, NULL, NULL),
(192, 96, '2017-06-21 09:03:19', NULL, '2017-06-21 09:03:19', 1, 'id', 'Gen-3', NULL, NULL),
(193, 97, '2017-06-21 09:04:00', NULL, '2017-06-21 09:04:00', 1, 'en', NULL, NULL, NULL),
(194, 97, '2017-06-21 09:04:01', NULL, '2017-06-21 09:04:01', 1, 'id', 'NEW FT 86 MANUAL', NULL, NULL),
(195, 98, '2017-06-21 09:04:24', NULL, '2017-06-21 09:04:24', 1, 'en', NULL, NULL, NULL),
(196, 98, '2017-06-21 09:04:24', NULL, '2017-06-21 09:04:24', 1, 'id', 'NEW FT 86 AUTOMATIC', NULL, NULL),
(197, 99, '2017-06-21 09:04:44', NULL, '2017-06-21 09:04:44', 1, 'en', NULL, NULL, NULL),
(198, 99, '2017-06-21 09:04:44', NULL, '2017-06-21 09:04:44', 1, 'id', 'NEW FT 86 AUTOMATIC TRD', NULL, NULL),
(199, 100, '2017-06-21 09:05:23', NULL, '2017-06-21 09:05:23', 1, 'en', NULL, NULL, NULL),
(200, 100, '2017-06-21 09:05:23', NULL, '2017-06-21 09:05:23', 1, 'id', 'VELLFIRE 2.5 G A/T', NULL, NULL),
(201, 101, '2017-06-21 09:05:47', NULL, '2017-06-21 09:05:47', 1, 'en', NULL, NULL, NULL),
(202, 101, '2017-06-21 09:05:47', NULL, '2017-06-21 09:05:47', 1, 'id', 'VELLFIRE 2.5 G A/T LIMITED', NULL, NULL),
(203, 102, '2017-06-21 09:07:13', NULL, '2017-06-21 09:07:13', 1, 'en', NULL, NULL, NULL),
(204, 102, '2017-06-21 09:07:13', NULL, '2017-06-21 09:07:13', 1, 'id', 'NEW VIOS E M/T', NULL, NULL),
(205, 103, '2017-06-21 09:07:37', NULL, '2017-06-21 09:07:37', 1, 'en', NULL, NULL, NULL),
(206, 103, '2017-06-21 09:07:37', NULL, '2017-06-21 09:07:37', 1, 'id', 'NEW VIOS E CVT', NULL, NULL),
(207, 104, '2017-06-21 09:08:01', NULL, '2017-06-21 09:08:01', 1, 'en', NULL, NULL, NULL),
(208, 104, '2017-06-21 09:08:01', NULL, '2017-06-21 09:08:01', 1, 'id', 'NEW VIOS G M/T', NULL, NULL),
(209, 105, '2017-06-21 09:08:18', NULL, '2017-06-21 09:08:18', 1, 'en', NULL, NULL, NULL),
(210, 105, '2017-06-21 09:08:18', NULL, '2017-06-21 09:08:18', 1, 'id', 'NEW VIOS G CVT', NULL, NULL),
(211, 106, '2017-06-21 09:08:38', NULL, '2017-06-21 09:08:38', 1, 'en', NULL, NULL, NULL),
(212, 106, '2017-06-21 09:08:38', NULL, '2017-06-21 09:08:38', 1, 'id', 'NEW VIOS G M/T TRD', NULL, NULL),
(213, 107, '2017-06-21 09:08:57', NULL, '2017-06-21 09:08:57', 1, 'en', NULL, NULL, NULL),
(214, 107, '2017-06-21 09:08:57', NULL, '2017-06-21 09:08:57', 1, 'id', 'NEW VIOS G CVT TRD', NULL, NULL),
(215, 108, '2017-06-21 09:10:15', NULL, '2017-06-21 09:10:15', 1, 'en', NULL, NULL, NULL),
(216, 108, '2017-06-21 09:10:15', NULL, '2017-06-21 09:10:15', 1, 'id', 'DYNA 4 R CHASIS 110 PS ST POWER STEERING', NULL, NULL),
(217, 109, '2017-06-21 09:10:41', NULL, '2017-06-21 09:10:41', 1, 'en', NULL, NULL, NULL),
(218, 109, '2017-06-21 09:10:41', NULL, '2017-06-21 09:10:41', 1, 'id', 'DYNA 4 R CHASIS 110 PS ST', NULL, NULL),
(219, 110, '2017-06-21 09:11:07', NULL, '2017-06-21 09:11:07', 1, 'en', NULL, NULL, NULL),
(220, 110, '2017-06-21 09:11:07', NULL, '2017-06-21 09:11:07', 1, 'id', 'DYNA 4 R TRUCK CHASIS 110 PS ST LONG WHEEL BASE PWR STEERING', NULL, NULL),
(221, 111, '2017-06-21 09:11:42', NULL, '2017-06-21 09:11:42', 1, 'en', NULL, NULL, NULL),
(222, 111, '2017-06-21 09:11:42', NULL, '2017-06-21 09:11:42', 1, 'id', 'DYNA 4 R BUS CHASIS 110 PS ST POWER STEERING', NULL, NULL),
(223, 112, '2017-06-21 09:12:06', NULL, '2017-06-21 09:12:06', 1, 'en', NULL, NULL, NULL),
(224, 112, '2017-06-21 09:12:06', NULL, '2017-06-21 09:12:06', 1, 'id', 'DYNA 4 R BUS CHASIS 110 PS ST LONG WHEEL BASE PWR STEERING', NULL, NULL),
(225, 113, '2017-06-21 09:12:27', NULL, '2017-06-21 09:12:27', 1, 'en', NULL, NULL, NULL),
(226, 113, '2017-06-21 09:12:27', NULL, '2017-06-21 09:12:27', 1, 'id', 'DYNA 6 R BUS CHASIS 110 PS FT POWER STEERING', NULL, NULL),
(227, 114, '2017-06-21 09:12:55', NULL, '2017-06-21 09:12:55', 1, 'en', NULL, NULL, NULL),
(228, 114, '2017-06-21 09:12:55', NULL, '2017-06-21 09:12:55', 1, 'id', 'DYNA 6 R CHASIS 110 PS FT POWER STEERING', NULL, NULL),
(229, 115, '2017-06-21 09:13:13', NULL, '2017-06-21 09:13:13', 1, 'en', NULL, NULL, NULL),
(230, 115, '2017-06-21 09:13:14', NULL, '2017-06-21 09:13:14', 1, 'id', 'DYNA 6 R CHASIS 110 PS FT', NULL, NULL),
(231, 116, '2017-06-21 09:13:43', NULL, '2017-06-21 09:13:43', 1, 'en', NULL, NULL, NULL),
(232, 116, '2017-06-21 09:13:43', NULL, '2017-06-21 09:13:43', 1, 'id', 'DYNA 6 R CHASIS 110 PS ET POWER STEERING', NULL, NULL),
(233, 117, '2017-06-21 09:14:07', NULL, '2017-06-21 09:14:07', 1, 'en', NULL, NULL, NULL),
(234, 117, '2017-06-21 09:14:07', NULL, '2017-06-21 09:14:07', 1, 'id', 'DYNA 6 R CHASIS 110 PS ET', NULL, NULL),
(235, 118, '2017-06-21 09:14:35', NULL, '2017-06-21 09:14:35', 1, 'en', NULL, NULL, NULL),
(236, 118, '2017-06-21 09:14:35', NULL, '2017-06-21 09:14:35', 1, 'id', 'DYNA 6 R CHASIS 110 PS ET PWR STEERING WITH HEAVY DUTY', NULL, NULL),
(237, 119, '2017-06-21 09:15:03', NULL, '2017-06-21 09:15:03', 1, 'en', NULL, NULL, NULL),
(238, 119, '2017-06-21 09:15:03', NULL, '2017-06-21 09:15:03', 1, 'id', 'DYNA 6 R CHASIS 110 PS ET PWR STEERING WITH OFF ROAD', NULL, NULL),
(239, 120, '2017-06-21 09:15:24', NULL, '2017-06-21 09:15:24', 1, 'en', NULL, NULL, NULL),
(240, 120, '2017-06-21 09:15:24', NULL, '2017-06-21 09:15:24', 1, 'id', 'DYNA 6 R CHASIS 130 PS XT POWER STEERING', NULL, NULL),
(241, 121, '2017-06-21 09:15:59', NULL, '2017-06-21 09:15:59', 1, 'en', NULL, NULL, NULL),
(242, 121, '2017-06-21 09:15:59', NULL, '2017-06-21 09:15:59', 1, 'id', 'DYNA 6 R CHASIS 130 PS XT', NULL, NULL),
(243, 122, '2017-06-21 09:16:23', NULL, '2017-06-21 09:16:23', 1, 'en', NULL, NULL, NULL),
(244, 122, '2017-06-21 09:16:24', NULL, '2017-06-21 09:16:24', 1, 'id', 'DYNA 6 R CHASIS 130 PS XT LONG WHEEL BASE PWR STEERING', NULL, NULL),
(245, 123, '2017-06-21 09:16:52', NULL, '2017-06-21 09:16:52', 1, 'en', NULL, NULL, NULL),
(246, 123, '2017-06-21 09:16:52', NULL, '2017-06-21 09:16:52', 1, 'id', 'DYNA 6 R CHASIS 130 PS HT STD GEAR PWR STEERING', NULL, NULL),
(247, 124, '2017-06-21 09:17:12', NULL, '2017-06-21 09:17:12', 1, 'en', NULL, NULL, NULL),
(248, 124, '2017-06-21 09:17:12', NULL, '2017-06-21 09:17:12', 1, 'id', 'DYNA 6 R CHASIS 130 PS HT STD GEAR', NULL, NULL),
(249, 125, '2017-06-21 09:17:45', NULL, '2017-06-21 09:17:45', 1, 'en', NULL, NULL, NULL),
(250, 125, '2017-06-21 09:17:45', NULL, '2017-06-21 09:17:45', 1, 'id', 'DYNA 6 R CHASIS 130 PS HT STD GEAR PWR STR WITH HEAVY DUTY', NULL, NULL),
(251, 126, '2017-06-21 09:18:27', NULL, '2017-06-21 09:18:27', 1, 'en', NULL, NULL, NULL),
(252, 126, '2017-06-21 09:18:28', NULL, '2017-06-21 09:18:28', 1, 'id', 'DYNA 6 R CHASIS 130 PS HT STD GEAR PWR STR WITH OFF ROAD', NULL, NULL),
(253, 127, '2017-06-21 09:18:47', NULL, '2017-06-21 09:18:47', 1, 'en', NULL, NULL, NULL),
(254, 127, '2017-06-21 09:18:47', NULL, '2017-06-21 09:18:47', 1, 'id', 'DYNA 6 R CHASIS 130 PS HT HIGH GEAR POWER STEERING', NULL, NULL),
(255, 128, '2017-06-21 09:19:13', NULL, '2017-06-21 09:19:13', 1, 'en', NULL, NULL, NULL),
(256, 128, '2017-06-21 09:19:13', NULL, '2017-06-21 09:19:13', 1, 'id', 'DYNA 6 R CHASIS 130 PS HT HIGH GEAR', NULL, NULL),
(257, 129, '2017-06-21 09:19:35', NULL, '2017-06-21 09:19:35', 1, 'en', NULL, NULL, NULL),
(258, 129, '2017-06-21 09:19:36', NULL, '2017-06-21 09:19:36', 1, 'id', 'DYNA 6 R CHASIS 130 PS HT HIGH GEAR PWR STR WITH HEAVY DUTY', NULL, NULL),
(259, 130, '2017-06-21 09:20:03', NULL, '2017-06-21 09:20:03', 1, 'en', NULL, NULL, NULL),
(260, 130, '2017-06-21 09:20:03', NULL, '2017-06-21 09:20:03', 1, 'id', 'DYNA 6 R CHASIS 130 PS HT HIGH GEAR PWR STR WITH OFF ROAD', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_sales_testimonis`
--

CREATE TABLE `toyotadjakarta_sales_testimonis` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_sales_testimonis`
--

INSERT INTO `toyotadjakarta_sales_testimonis` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`, `image_id`, `publish`) VALUES
(1, 1, '2017-06-19 08:52:51', 1, '2017-06-20 07:45:05', 1, 'desi-testis', 39, 1),
(5, 5, '2017-06-19 09:11:07', 1, '2017-06-20 07:43:23', 1, 'turan-testis', 38, 1),
(6, 6, '2017-06-19 09:11:32', 1, '2017-06-20 07:42:27', 1, 'mesi-testis', 37, 1),
(7, 7, '2017-06-19 09:12:20', 1, '2017-06-20 07:41:46', 1, 'tono', 40, 1),
(8, 8, '2017-06-19 09:14:37', 1, '2017-06-20 07:38:28', 1, 'sawerdi-testis', 35, 1);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_sales_testimonis_translations`
--

CREATE TABLE `toyotadjakarta_sales_testimonis_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_sales_testimonis_translations`
--

INSERT INTO `toyotadjakarta_sales_testimonis_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `summary`, `description`) VALUES
(1, 1, '2017-06-19 08:52:51', NULL, '2017-06-20 07:45:05', 1, 'en', 'Desi Testis', 'Testis Desi', '<p>Testis Desi<br></p>'),
(2, 1, '2017-06-19 08:52:52', NULL, '2017-06-19 08:52:52', 1, 'id', 'Desi Testis', 'Testis Desi', '<p>Testis Desi<br></p>'),
(9, 5, '2017-06-19 09:11:08', NULL, '2017-06-20 07:43:23', 1, 'en', 'Turan Testis', 'Turan Testis', '<p>Turan Testis</p>'),
(10, 5, '2017-06-19 09:11:08', NULL, '2017-06-19 09:11:08', 1, 'id', 'Turan Testis', 'Turan Testis', '<p>Turan Testis</p>'),
(11, 6, '2017-06-19 09:11:32', NULL, '2017-06-20 07:42:27', 1, 'en', 'Mesi Testis', 'Mesi Testis', '<p>Mesi Testis</p>'),
(12, 6, '2017-06-19 09:11:32', NULL, '2017-06-19 09:11:32', 1, 'id', 'Mesi Testis', 'Mesi Testis', '<p>Mesi Testis</p>'),
(13, 7, '2017-06-19 09:12:20', NULL, '2017-06-20 07:41:46', 1, 'en', 'Tono', 'Tono', '<p>Tono</p>'),
(14, 7, '2017-06-19 09:12:20', NULL, '2017-06-20 07:41:47', 1, 'id', 'Tono', 'Tono', '<p>Tono</p>'),
(15, 8, '2017-06-19 09:14:37', NULL, '2017-06-20 07:38:28', 1, 'en', 'Sawerdi Testis', 'Sawerdy', '<p>Sawerdy</p>'),
(16, 8, '2017-06-19 09:14:37', NULL, '2017-06-19 09:14:37', 1, 'id', 'Sawerdi Testis', 'Sawerdy', '<p>Sawerdy</p>');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_sessions`
--

CREATE TABLE `toyotadjakarta_sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_settings_settings`
--

CREATE TABLE `toyotadjakarta_settings_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_settings_settings`
--

INSERT INTO `toyotadjakarta_settings_settings` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `key`, `value`) VALUES
(1, 1, '2017-06-16 22:22:22', NULL, '2017-06-20 02:40:36', 1, 'streams::timezone', 'Asia/Jakarta'),
(2, 2, '2017-06-16 22:22:22', NULL, '2017-06-20 02:40:37', 1, 'streams::default_locale', 'id'),
(3, 3, '2017-06-17 05:05:20', 1, '2017-06-20 02:40:36', 1, 'streams::name', 'Promo Toyota Mobil'),
(4, 4, '2017-06-17 05:05:20', 1, '2017-06-20 02:40:36', 1, 'streams::description', 'Promo Toyota Mobil'),
(5, 5, '2017-06-17 05:05:20', 1, '2017-06-20 02:40:36', 1, 'streams::business', NULL),
(6, 6, '2017-06-17 05:05:21', 1, '2017-06-20 02:40:36', 1, 'streams::phone', NULL),
(7, 7, '2017-06-17 05:05:21', 1, '2017-06-20 02:40:36', 1, 'streams::address', NULL),
(8, 8, '2017-06-17 05:05:21', 1, '2017-06-20 02:40:36', 1, 'streams::address2', NULL),
(9, 9, '2017-06-17 05:05:21', 1, '2017-06-20 02:40:36', 1, 'streams::city', NULL),
(10, 10, '2017-06-17 05:05:21', 1, '2017-06-20 02:40:36', 1, 'streams::state', ''),
(11, 11, '2017-06-17 05:05:21', 1, '2017-06-20 02:40:36', 1, 'streams::postal_code', NULL),
(12, 12, '2017-06-17 05:05:21', 1, '2017-06-20 02:40:36', 1, 'streams::country', ''),
(13, 13, '2017-06-17 05:05:21', 1, '2017-06-20 02:40:36', 1, 'streams::date_format', 'j F, Y'),
(14, 14, '2017-06-17 05:05:21', 1, '2017-06-20 02:40:36', 1, 'streams::time_format', 'g:i A'),
(15, 15, '2017-06-17 05:05:21', 1, '2017-06-20 02:40:36', 1, 'streams::unit_system', 'imperial'),
(16, 16, '2017-06-17 05:05:21', 1, '2017-06-20 02:40:36', 1, 'streams::currency', 'USD'),
(17, 17, '2017-06-17 05:05:21', 1, '2017-06-20 02:40:37', 1, 'streams::standard_theme', 'toyotadjakarta.theme.default'),
(18, 18, '2017-06-17 05:05:22', 1, '2017-06-20 02:40:37', 1, 'streams::admin_theme', 'pyrocms.theme.accelerant'),
(19, 19, '2017-06-17 05:05:22', 1, '2017-06-20 02:40:37', 1, 'streams::per_page', '15'),
(20, 20, '2017-06-17 05:05:22', 1, '2017-06-20 02:40:37', 1, 'streams::enabled_locales', 'a:2:{i:0;s:2:\"en\";i:1;s:2:\"id\";}'),
(21, 21, '2017-06-17 05:05:22', 1, '2017-06-18 07:07:08', 1, 'streams::debug', '0'),
(22, 22, '2017-06-17 05:05:22', 1, '2017-06-20 02:40:37', 1, 'streams::maintenance', '0'),
(23, 23, '2017-06-17 05:05:22', 1, '2017-06-20 02:40:37', 1, 'streams::basic_auth', '0'),
(24, 24, '2017-06-17 05:05:22', 1, '2017-06-20 02:40:37', 1, 'streams::ip_whitelist', 'a:0:{}'),
(25, 25, '2017-06-17 05:05:22', 1, '2017-06-20 02:40:37', 1, 'streams::email', 'hendarsyahss@gmail.com'),
(26, 26, '2017-06-17 05:05:22', 1, '2017-06-20 02:40:37', 1, 'streams::sender', 'PyroCMS');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_slideshows_banners`
--

CREATE TABLE `toyotadjakarta_slideshows_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_slideshows_banners`
--

INSERT INTO `toyotadjakarta_slideshows_banners` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`, `image_id`, `publish`) VALUES
(4, 1, '2017-06-19 08:25:35', 1, NULL, NULL, 'slide-1', 9, 1),
(5, 2, '2017-06-19 08:27:08', 1, NULL, NULL, 'slide-2', 10, 1),
(6, 3, '2017-06-19 08:27:34', 1, NULL, NULL, 'slide-3', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_slideshows_banners_translations`
--

CREATE TABLE `toyotadjakarta_slideshows_banners_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_slideshows_banners_translations`
--

INSERT INTO `toyotadjakarta_slideshows_banners_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `summary`, `description`) VALUES
(7, 4, '2017-06-19 08:25:35', NULL, '2017-06-19 08:25:35', 1, 'en', NULL, NULL, NULL),
(8, 4, '2017-06-19 08:25:35', NULL, '2017-06-19 08:25:35', 1, 'id', 'Slide 1', 'Slide 1', '<p>Slide 1<br></p>'),
(9, 5, '2017-06-19 08:27:08', NULL, '2017-06-19 08:27:08', 1, 'en', NULL, NULL, NULL),
(10, 5, '2017-06-19 08:27:08', NULL, '2017-06-19 08:27:08', 1, 'id', 'Slide 2', 'Slide 2', '<p>Slide 2<br></p>'),
(11, 6, '2017-06-19 08:27:35', NULL, '2017-06-19 08:27:35', 1, 'en', NULL, NULL, NULL),
(12, 6, '2017-06-19 08:27:35', NULL, '2017-06-19 08:27:35', 1, 'id', 'Slide 3', 'Slide 3', '<p>Slide 3<br></p>'),
(13, 1, '2017-06-19 08:30:19', NULL, '2017-06-19 08:30:19', 1, 'id', 'Kredit Toyota termurah', 'Kami akan memberikan anda Kredit mobil Toyota termurah dari Promo Toyota Jakarta di tahun 2017 ini, dan kami akan memberikan anda banyak penawaran-penawaran menarik dengan diskon yang besar.', '<p>Kami akan memberikan anda Kredit mobil Toyota termurah dari Promo Toyota Jakarta di tahun 2017 ini, dan kami akan memberikan anda banyak penawaran-penawaran menarik dengan diskon yang besar.</p>'),
(14, 1, '2017-06-19 08:30:20', NULL, '2017-06-19 08:30:20', 1, 'en', NULL, NULL, NULL),
(15, 3, '2017-06-19 08:33:49', NULL, '2017-06-19 08:33:49', 1, 'id', 'Proses Kredit yang Cepat', 'Proses kredit dari promo toyota jakarta kali ini sangat cepat dan tidak bertele-tele, untuk data akan kami bantu agar anda dapat lebih cepat mendapatkan mobil Toyota impian keluarga anda, segera hubungi kami.', '<p>Proses kredit dari promo toyota jakarta kali ini sangat cepat dan tidak bertele-tele, untuk data akan kami bantu agar anda dapat lebih cepat mendapatkan mobil Toyota impian keluarga anda, segera hubungi kami.</p>'),
(16, 3, '2017-06-19 08:33:49', NULL, '2017-06-19 08:33:49', 1, 'en', NULL, NULL, NULL),
(17, 2, '2017-06-19 08:34:47', NULL, '2017-06-19 08:34:47', 1, 'id', 'Pelayanan yang Bersahabat', 'Pelayanan yang bersahabat dan ramah dalam melayani anda untuk dapat mendapatkan mobil toyota impian anda. Konsultasikan rencana pembelian mobil Toyota anda kepada marketing kami yang berpengalaman.', '<p>Pelayanan yang bersahabat dan ramah dalam melayani anda untuk dapat mendapatkan mobil toyota impian anda. Konsultasikan rencana pembelian mobil Toyota anda kepada marketing kami yang berpengalaman.</p>'),
(18, 2, '2017-06-19 08:34:48', NULL, '2017-06-19 08:34:48', 1, 'en', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_slideshows_intros`
--

CREATE TABLE `toyotadjakarta_slideshows_intros` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_id` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_slideshows_intros`
--

INSERT INTO `toyotadjakarta_slideshows_intros` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`, `image_id`, `publish`) VALUES
(1, 1, '2017-06-18 06:37:23', 1, '2017-06-19 08:30:19', 1, 'kredit-toyota-termurah', 12, 1),
(2, 2, '2017-06-18 07:05:44', 1, '2017-06-19 08:34:47', 1, 'pelayanan-yang-bersahabat', 14, 1),
(3, 3, '2017-06-18 07:06:18', 1, '2017-06-19 08:33:49', 1, 'pelayanan-yang-bersahabat2', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_slideshows_intros_translations`
--

CREATE TABLE `toyotadjakarta_slideshows_intros_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_slideshows_intros_translations`
--

INSERT INTO `toyotadjakarta_slideshows_intros_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `summary`, `description`) VALUES
(1, 1, '2017-06-18 06:37:23', NULL, '2017-06-18 06:37:23', 1, 'en', 'Kredit Toyota Termurah', 'Kami akan memberikan anda Kredit mobil Toyota termurah dari Promo Toyota Jakarta di tahun 2017 ini, dan kami akan memberikan anda banyak penawaran-penawaran menarik dengan diskon yang besar.', '<p>Kami akan memberikan anda Kredit mobil Toyota termurah dari Promo Toyota Jakarta di tahun 2017 ini, dan kami akan memberikan anda banyak penawaran-penawaran menarik dengan diskon yang besar.</p>'),
(2, 2, '2017-06-18 07:05:44', NULL, '2017-06-18 07:05:44', 1, 'en', 'Proses Kredit yang Cepat', 'Proses kredit dari promo toyota jakarta kali ini sangat cepat dan tidak bertele-tele, untuk data akan kami bantu agar anda dapat lebih cepat mendapatkan mobil Toyota impian keluarga anda, segera hubungi kami.', '<p>Proses kredit dari promo toyota jakarta kali ini sangat cepat dan tidak bertele-tele, untuk data akan kami bantu agar anda dapat lebih cepat mendapatkan mobil Toyota impian keluarga anda, segera hubungi kami.</p>'),
(3, 3, '2017-06-18 07:06:18', NULL, '2017-06-18 07:06:18', 1, 'en', 'Pelayanan yang Bersahabat', 'Pelayanan yang bersahabat dan ramah dalam melayani anda untuk dapat mendapatkan mobil toyota impian anda. Konsultasikan rencana pembelian mobil Toyota anda kepada marketing kami yang berpengalaman.', '<p>Pelayanan yang bersahabat dan ramah dalam melayani anda untuk dapat mendapatkan mobil toyota impian anda. Konsultasikan rencana pembelian mobil Toyota anda kepada marketing kami yang berpengalaman.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_slideshows_welcomes`
--

CREATE TABLE `toyotadjakarta_slideshows_welcomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_slideshows_welcomes`
--

INSERT INTO `toyotadjakarta_slideshows_welcomes` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`, `publish`) VALUES
(1, 1, '2017-06-18 07:04:13', 1, NULL, NULL, 'selamat-datang-di-promo-toyota-jakarta-tunas-toyota', 1);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_slideshows_welcomes_translations`
--

CREATE TABLE `toyotadjakarta_slideshows_welcomes_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_slideshows_welcomes_translations`
--

INSERT INTO `toyotadjakarta_slideshows_welcomes_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2017-06-18 07:04:13', NULL, '2017-06-18 07:04:13', 1, 'en', 'Selamat Datang di Promo Toyota Jakarta Tunas Toyota', '<p>SELAMAT DATANG DI PROMO TOYOTA JAKARTA TUNAS TOYOTA</p>');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_streams_assignments`
--

CREATE TABLE `toyotadjakarta_streams_assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_streams_assignments`
--

INSERT INTO `toyotadjakarta_streams_assignments` (`id`, `sort_order`, `stream_id`, `field_id`, `config`, `unique`, `required`, `translatable`) VALUES
(1, 1, 1, 1, 'a:0:{}', 0, 1, 0),
(2, 2, 1, 2, 'a:0:{}', 0, 1, 0),
(3, 3, 1, 3, 'a:0:{}', 0, 0, 0),
(4, 4, 2, 4, 'a:0:{}', 0, 1, 1),
(5, 5, 2, 5, 'a:0:{}', 1, 1, 0),
(6, 6, 2, 6, 'a:0:{}', 0, 0, 1),
(7, 7, 2, 7, 'a:0:{}', 0, 1, 0),
(8, 8, 2, 13, 'a:0:{}', 0, 0, 0),
(9, 9, 3, 8, 'a:0:{}', 0, 1, 1),
(10, 10, 3, 6, 'a:0:{}', 0, 0, 1),
(11, 11, 3, 9, 'a:0:{}', 0, 1, 0),
(12, 12, 3, 10, 'a:0:{}', 0, 1, 0),
(13, 13, 3, 12, 'a:0:{}', 0, 1, 0),
(14, 14, 3, 13, 'a:0:{}', 0, 0, 0),
(15, 15, 3, 11, 'a:0:{}', 0, 0, 0),
(16, 16, 4, 14, 'a:0:{}', 1, 1, 1),
(17, 17, 4, 15, 'a:0:{}', 1, 1, 0),
(18, 18, 4, 16, 'a:0:{}', 0, 1, 0),
(19, 19, 4, 20, 'a:0:{}', 0, 0, 1),
(20, 20, 5, 18, 'a:0:{}', 0, 1, 0),
(21, 21, 5, 14, 'a:1:{s:3:\"max\";i:50;}', 0, 1, 1),
(22, 22, 5, 15, 'a:1:{s:3:\"max\";i:50;}', 1, 1, 0),
(23, 23, 5, 20, 'a:0:{}', 0, 0, 1),
(24, 24, 5, 21, 'a:0:{}', 0, 0, 0),
(25, 25, 6, 14, 'a:0:{}', 0, 1, 0),
(26, 26, 6, 18, 'a:0:{}', 0, 1, 0),
(27, 27, 6, 17, 'a:0:{}', 0, 1, 0),
(28, 28, 6, 23, 'a:0:{}', 0, 1, 0),
(29, 29, 6, 27, 'a:0:{}', 0, 1, 0),
(30, 30, 6, 26, 'a:0:{}', 0, 1, 0),
(31, 31, 6, 19, 'a:0:{}', 0, 0, 0),
(32, 32, 6, 22, 'a:0:{}', 0, 0, 0),
(33, 33, 6, 25, 'a:0:{}', 0, 0, 0),
(34, 34, 6, 24, 'a:0:{}', 0, 0, 0),
(35, 35, 7, 28, 'a:0:{}', 1, 1, 1),
(36, 36, 7, 32, 'a:0:{}', 1, 1, 0),
(37, 37, 7, 30, 'a:0:{}', 0, 0, 1),
(38, 38, 8, 33, 'a:0:{}', 0, 1, 0),
(39, 39, 8, 36, 'a:0:{}', 0, 1, 0),
(40, 40, 8, 31, 'a:0:{}', 0, 1, 0),
(41, 41, 8, 37, 'a:0:{}', 0, 1, 0),
(42, 42, 8, 29, 'a:0:{}', 0, 0, 0),
(43, 43, 8, 34, 'a:0:{}', 0, 0, 0),
(44, 44, 8, 35, 'a:0:{}', 0, 0, 0),
(45, 45, 9, 38, 'a:0:{}', 0, 1, 0),
(46, 46, 9, 39, 'a:0:{}', 0, 1, 1),
(47, 47, 9, 40, 'a:0:{}', 0, 1, 0),
(48, 48, 9, 42, 'a:0:{}', 0, 1, 0),
(49, 49, 9, 52, 'a:0:{}', 0, 1, 0),
(50, 50, 9, 56, 'a:0:{}', 0, 0, 0),
(51, 51, 9, 50, 'a:0:{}', 0, 0, 0),
(52, 52, 9, 54, 'a:0:{}', 0, 0, 0),
(53, 53, 9, 43, 'a:0:{}', 0, 0, 0),
(54, 54, 9, 55, 'a:0:{}', 0, 0, 0),
(55, 55, 9, 44, 'a:0:{}', 0, 0, 0),
(56, 56, 9, 45, 'a:0:{}', 0, 0, 1),
(57, 57, 9, 46, 'a:0:{}', 0, 0, 1),
(58, 58, 9, 47, 'a:0:{}', 0, 0, 1),
(59, 59, 9, 51, 'a:0:{}', 0, 0, 0),
(60, 60, 9, 49, 'a:0:{}', 0, 0, 0),
(61, 61, 10, 57, 'a:1:{s:3:\"max\";i:50;}', 1, 1, 1),
(62, 62, 10, 40, 'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}', 1, 1, 0),
(63, 63, 10, 58, 'a:0:{}', 0, 0, 1),
(64, 64, 10, 51, 'a:0:{}', 0, 1, 0),
(65, 65, 10, 48, 'a:0:{}', 0, 1, 0),
(66, 66, 10, 53, 'a:0:{}', 0, 1, 0),
(67, 67, 11, 60, 'a:0:{}', 1, 1, 1),
(68, 68, 11, 62, 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1, 1, 0),
(69, 69, 11, 67, 'a:0:{}', 0, 0, 1),
(70, 70, 12, 59, 'a:0:{}', 1, 1, 0),
(71, 71, 12, 61, 'a:0:{}', 0, 1, 1),
(72, 72, 12, 66, 'a:0:{}', 0, 0, 1),
(73, 73, 12, 62, 'a:0:{}', 1, 1, 0),
(74, 74, 12, 64, 'a:0:{}', 0, 1, 0),
(75, 75, 12, 68, 'a:0:{}', 0, 1, 0),
(76, 76, 12, 70, 'a:0:{}', 0, 1, 0),
(77, 77, 12, 69, 'a:0:{}', 0, 1, 0),
(78, 78, 12, 75, 'a:0:{}', 0, 0, 1),
(79, 79, 12, 76, 'a:0:{}', 0, 0, 1),
(80, 80, 12, 77, 'a:0:{}', 0, 0, 1),
(81, 81, 12, 72, 'a:0:{}', 0, 0, 0),
(82, 82, 12, 74, 'a:0:{}', 0, 0, 0),
(83, 83, 12, 73, 'a:0:{}', 0, 0, 0),
(84, 84, 12, 65, 'a:0:{}', 0, 0, 0),
(85, 85, 13, 60, 'a:1:{s:3:\"max\";i:50;}', 1, 1, 1),
(86, 86, 13, 62, 'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}', 1, 1, 0),
(87, 87, 13, 71, 'a:0:{}', 0, 1, 0),
(88, 88, 13, 79, 'a:0:{}', 0, 1, 0),
(89, 89, 13, 67, 'a:0:{}', 0, 0, 1),
(90, 90, 14, 80, 'a:0:{}', 0, 1, 0),
(91, 91, 14, 81, 'a:0:{}', 0, 1, 0),
(92, 92, 14, 82, 'a:0:{}', 0, 0, 0),
(93, 93, 15, 83, 'a:0:{}', 1, 1, 0),
(94, 94, 15, 84, 'a:0:{}', 0, 1, 0),
(95, 95, 15, 85, 'a:0:{}', 0, 1, 0),
(96, 96, 15, 86, 'a:0:{}', 0, 0, 0),
(97, 97, 16, 87, 'a:0:{}', 1, 1, 0),
(98, 98, 16, 88, 'a:0:{}', 0, 0, 0),
(99, 99, 17, 89, 'a:0:{}', 1, 1, 0),
(100, 100, 17, 90, 'a:0:{}', 1, 1, 0),
(101, 101, 17, 91, 'a:0:{}', 0, 1, 0),
(102, 102, 17, 109, 'a:0:{}', 0, 1, 0),
(103, 103, 17, 97, 'a:0:{}', 0, 1, 0),
(104, 104, 17, 98, 'a:0:{}', 0, 0, 0),
(105, 105, 17, 99, 'a:0:{}', 0, 0, 0),
(106, 106, 17, 106, 'a:0:{}', 0, 0, 0),
(107, 107, 17, 107, 'a:0:{}', 0, 0, 0),
(108, 108, 17, 96, 'a:0:{}', 0, 0, 0),
(109, 109, 17, 94, 'a:0:{}', 0, 0, 0),
(110, 110, 17, 92, 'a:0:{}', 0, 0, 0),
(111, 111, 17, 104, 'a:0:{}', 0, 0, 0),
(112, 112, 17, 102, 'a:0:{}', 0, 0, 0),
(113, 113, 17, 95, 'a:0:{}', 0, 0, 0),
(114, 114, 17, 93, 'a:0:{}', 0, 0, 0),
(115, 115, 18, 100, 'a:0:{}', 0, 1, 1),
(116, 116, 18, 108, 'a:0:{}', 1, 1, 0),
(117, 117, 18, 101, 'a:0:{}', 0, 0, 1),
(118, 118, 18, 96, 'a:0:{}', 0, 0, 0),
(119, 119, 19, 110, 'a:0:{}', 0, 0, 1),
(120, 120, 19, 111, 'a:0:{}', 0, 1, 0),
(121, 121, 19, 112, 'a:0:{}', 0, 0, 1),
(122, 122, 20, 113, 'a:0:{}', 0, 1, 1),
(123, 123, 20, 114, 'a:0:{}', 0, 1, 0),
(124, 124, 20, 115, 'a:0:{}', 0, 0, 1),
(125, 125, 23, 41, 'a:0:{}', 0, 0, 1),
(126, 126, 24, 63, 'a:0:{}', 0, 0, 1),
(143, 127, 28, 128, 'a:0:{}', 0, 1, 1),
(144, 128, 28, 129, 'a:0:{}', 1, 1, 0),
(145, 129, 28, 131, 'a:0:{}', 0, 1, 0),
(146, 130, 28, 130, 'a:0:{}', 0, 1, 0),
(147, 131, 28, 132, 'a:0:{}', 0, 1, 1),
(148, 132, 28, 133, 'a:0:{}', 0, 1, 1),
(149, 133, 29, 128, 'a:0:{}', 0, 1, 1),
(150, 134, 29, 129, 'a:0:{}', 1, 1, 0),
(151, 135, 29, 130, 'a:0:{}', 0, 1, 0),
(152, 136, 29, 133, 'a:0:{}', 0, 1, 1),
(153, 137, 30, 128, 'a:0:{}', 0, 1, 1),
(154, 138, 30, 129, 'a:0:{}', 1, 1, 0),
(155, 139, 30, 131, 'a:0:{}', 0, 1, 0),
(156, 140, 30, 130, 'a:0:{}', 0, 1, 0),
(157, 141, 30, 132, 'a:0:{}', 0, 1, 1),
(158, 142, 30, 133, 'a:0:{}', 0, 1, 1),
(208, 143, 39, 160, 'a:0:{}', 0, 1, 1),
(209, 144, 39, 161, 'a:0:{}', 1, 1, 0),
(210, 145, 39, 166, 'a:0:{}', 0, 1, 0),
(211, 146, 39, 165, 'a:0:{}', 0, 1, 0),
(212, 147, 39, 169, 'a:0:{}', 0, 0, 1),
(213, 148, 40, 160, 'a:0:{}', 0, 1, 1),
(214, 149, 40, 161, 'a:0:{}', 1, 1, 0),
(215, 150, 40, 164, 'a:0:{}', 0, 0, 0),
(216, 151, 40, 166, 'a:0:{}', 0, 0, 0),
(217, 152, 40, 165, 'a:0:{}', 0, 1, 0),
(218, 153, 40, 167, 'a:0:{}', 0, 0, 1),
(219, 154, 40, 169, 'a:0:{}', 0, 0, 1),
(220, 155, 40, 170, 'a:0:{}', 0, 0, 0),
(221, 156, 41, 160, 'a:0:{}', 0, 1, 1),
(222, 157, 41, 161, 'a:0:{}', 1, 1, 0),
(223, 158, 41, 166, 'a:0:{}', 0, 0, 0),
(224, 159, 41, 165, 'a:0:{}', 0, 1, 0),
(225, 160, 41, 167, 'a:0:{}', 0, 0, 1),
(226, 161, 41, 169, 'a:0:{}', 0, 0, 1),
(227, 162, 42, 160, 'a:0:{}', 0, 1, 1),
(228, 163, 42, 161, 'a:0:{}', 1, 1, 0),
(229, 164, 42, 166, 'a:0:{}', 0, 0, 0),
(230, 165, 42, 165, 'a:0:{}', 0, 1, 0),
(231, 166, 42, 167, 'a:0:{}', 0, 0, 1),
(232, 167, 42, 163, 'a:0:{}', 0, 1, 0),
(233, 168, 42, 169, 'a:0:{}', 0, 0, 1),
(234, 169, 44, 41, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 1, 1),
(235, 170, 44, 173, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0),
(236, 171, 45, 174, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0),
(237, 172, 45, 63, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 1, 1),
(238, 173, 49, 175, 'a:0:{}', 0, 1, 0),
(239, 174, 49, 176, 'a:0:{}', 0, 1, 0),
(240, 175, 49, 177, 'a:0:{}', 0, 1, 0),
(241, 176, 49, 178, 'a:0:{}', 0, 1, 0),
(242, 177, 49, 179, 'a:0:{}', 0, 1, 0),
(243, 178, 49, 180, 'a:0:{}', 0, 1, 0),
(244, 179, 49, 181, 'a:0:{}', 0, 1, 0),
(245, 180, 49, 182, 'a:0:{}', 0, 1, 0),
(246, 181, 49, 183, 'a:0:{}', 0, 1, 0),
(247, 182, 49, 184, 'a:0:{}', 0, 1, 0),
(248, 183, 49, 185, 'a:0:{}', 0, 1, 0),
(249, 184, 49, 186, 'a:0:{}', 0, 1, 0),
(250, 185, 49, 187, 'a:0:{}', 0, 1, 0),
(251, 186, 49, 188, 'a:0:{}', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_streams_assignments_translations`
--

CREATE TABLE `toyotadjakarta_streams_assignments_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_streams_assignments_translations`
--

INSERT INTO `toyotadjakarta_streams_assignments_translations` (`id`, `assignment_id`, `locale`, `label`, `warning`, `placeholder`, `instructions`) VALUES
(1, 1, 'en', 'anomaly.module.configuration::field.scope.label.configuration', 'anomaly.module.configuration::field.scope.warning.configuration', 'anomaly.module.configuration::field.scope.placeholder.configuration', 'anomaly.module.configuration::field.scope.instructions.configuration'),
(2, 2, 'en', 'anomaly.module.configuration::field.key.label.configuration', 'anomaly.module.configuration::field.key.warning.configuration', 'anomaly.module.configuration::field.key.placeholder.configuration', 'anomaly.module.configuration::field.key.instructions.configuration'),
(3, 3, 'en', 'anomaly.module.configuration::field.value.label.configuration', 'anomaly.module.configuration::field.value.warning.configuration', 'anomaly.module.configuration::field.value.placeholder.configuration', 'anomaly.module.configuration::field.value.instructions.configuration'),
(4, 4, 'en', 'anomaly.module.dashboard::field.name.label.dashboards', 'anomaly.module.dashboard::field.name.warning.dashboards', 'anomaly.module.dashboard::field.name.placeholder.dashboards', 'anomaly.module.dashboard::field.name.instructions.dashboards'),
(5, 5, 'en', 'anomaly.module.dashboard::field.slug.label.dashboards', 'anomaly.module.dashboard::field.slug.warning.dashboards', 'anomaly.module.dashboard::field.slug.placeholder.dashboards', 'anomaly.module.dashboard::field.slug.instructions.dashboards'),
(6, 6, 'en', 'anomaly.module.dashboard::field.description.label.dashboards', 'anomaly.module.dashboard::field.description.warning.dashboards', 'anomaly.module.dashboard::field.description.placeholder.dashboards', 'anomaly.module.dashboard::field.description.instructions.dashboards'),
(7, 7, 'en', 'anomaly.module.dashboard::field.layout.label.dashboards', 'anomaly.module.dashboard::field.layout.warning.dashboards', 'anomaly.module.dashboard::field.layout.placeholder.dashboards', 'anomaly.module.dashboard::field.layout.instructions.dashboards'),
(8, 8, 'en', 'anomaly.module.dashboard::field.allowed_roles.label.dashboards', 'anomaly.module.dashboard::field.allowed_roles.warning.dashboards', 'anomaly.module.dashboard::field.allowed_roles.placeholder.dashboards', 'anomaly.module.dashboard::field.allowed_roles.instructions.dashboards'),
(9, 9, 'en', 'anomaly.module.dashboard::field.title.label.widgets', 'anomaly.module.dashboard::field.title.warning.widgets', 'anomaly.module.dashboard::field.title.placeholder.widgets', 'anomaly.module.dashboard::field.title.instructions.widgets'),
(10, 10, 'en', 'anomaly.module.dashboard::field.description.label.widgets', 'anomaly.module.dashboard::field.description.warning.widgets', 'anomaly.module.dashboard::field.description.placeholder.widgets', 'anomaly.module.dashboard::field.description.instructions.widgets'),
(11, 11, 'en', 'anomaly.module.dashboard::field.extension.label.widgets', 'anomaly.module.dashboard::field.extension.warning.widgets', 'anomaly.module.dashboard::field.extension.placeholder.widgets', 'anomaly.module.dashboard::field.extension.instructions.widgets'),
(12, 12, 'en', 'anomaly.module.dashboard::field.column.label.widgets', 'anomaly.module.dashboard::field.column.warning.widgets', 'anomaly.module.dashboard::field.column.placeholder.widgets', 'anomaly.module.dashboard::field.column.instructions.widgets'),
(13, 13, 'en', 'anomaly.module.dashboard::field.dashboard.label.widgets', 'anomaly.module.dashboard::field.dashboard.warning.widgets', 'anomaly.module.dashboard::field.dashboard.placeholder.widgets', 'anomaly.module.dashboard::field.dashboard.instructions.widgets'),
(14, 14, 'en', 'anomaly.module.dashboard::field.allowed_roles.label.widgets', 'anomaly.module.dashboard::field.allowed_roles.warning.widgets', 'anomaly.module.dashboard::field.allowed_roles.placeholder.widgets', 'anomaly.module.dashboard::field.allowed_roles.instructions.widgets'),
(15, 15, 'en', 'anomaly.module.dashboard::field.pinned.label.widgets', 'anomaly.module.dashboard::field.pinned.warning.widgets', 'anomaly.module.dashboard::field.pinned.placeholder.widgets', 'anomaly.module.dashboard::field.pinned.instructions.widgets'),
(16, 16, 'en', 'anomaly.module.files::field.name.label.disks', 'anomaly.module.files::field.name.warning.disks', 'anomaly.module.files::field.name.placeholder.disks', 'anomaly.module.files::field.name.instructions.disks'),
(17, 17, 'en', 'anomaly.module.files::field.slug.label.disks', 'anomaly.module.files::field.slug.warning.disks', 'anomaly.module.files::field.slug.placeholder.disks', 'anomaly.module.files::field.slug.instructions.disks'),
(18, 18, 'en', 'anomaly.module.files::field.adapter.label.disks', 'anomaly.module.files::field.adapter.warning.disks', 'anomaly.module.files::field.adapter.placeholder.disks', 'anomaly.module.files::field.adapter.instructions.disks'),
(19, 19, 'en', 'anomaly.module.files::field.description.label.disks', 'anomaly.module.files::field.description.warning.disks', 'anomaly.module.files::field.description.placeholder.disks', 'anomaly.module.files::field.description.instructions.disks'),
(20, 20, 'en', 'anomaly.module.files::field.disk.label.folders', 'anomaly.module.files::field.disk.warning.folders', 'anomaly.module.files::field.disk.placeholder.folders', 'anomaly.module.files::field.disk.instructions.folders'),
(21, 21, 'en', 'anomaly.module.files::field.name.label.folders', 'anomaly.module.files::field.name.warning.folders', 'anomaly.module.files::field.name.placeholder.folders', 'anomaly.module.files::field.name.instructions.folders'),
(22, 22, 'en', 'anomaly.module.files::field.slug.label.folders', 'anomaly.module.files::field.slug.warning.folders', 'anomaly.module.files::field.slug.placeholder.folders', 'anomaly.module.files::field.slug.instructions.folders'),
(23, 23, 'en', 'anomaly.module.files::field.description.label.folders', 'anomaly.module.files::field.description.warning.folders', 'anomaly.module.files::field.description.placeholder.folders', 'anomaly.module.files::field.description.instructions.folders'),
(24, 24, 'en', 'anomaly.module.files::field.allowed_types.label.folders', 'anomaly.module.files::field.allowed_types.warning.folders', 'anomaly.module.files::field.allowed_types.placeholder.folders', 'anomaly.module.files::field.allowed_types.instructions.folders'),
(25, 25, 'en', 'anomaly.module.files::field.name.label.files', 'anomaly.module.files::field.name.warning.files', 'anomaly.module.files::field.name.placeholder.files', 'anomaly.module.files::field.name.instructions.files'),
(26, 26, 'en', 'anomaly.module.files::field.disk.label.files', 'anomaly.module.files::field.disk.warning.files', 'anomaly.module.files::field.disk.placeholder.files', 'anomaly.module.files::field.disk.instructions.files'),
(27, 27, 'en', 'anomaly.module.files::field.folder.label.files', 'anomaly.module.files::field.folder.warning.files', 'anomaly.module.files::field.folder.placeholder.files', 'anomaly.module.files::field.folder.instructions.files'),
(28, 28, 'en', 'anomaly.module.files::field.extension.label.files', 'anomaly.module.files::field.extension.warning.files', 'anomaly.module.files::field.extension.placeholder.files', 'anomaly.module.files::field.extension.instructions.files'),
(29, 29, 'en', 'anomaly.module.files::field.size.label.files', 'anomaly.module.files::field.size.warning.files', 'anomaly.module.files::field.size.placeholder.files', 'anomaly.module.files::field.size.instructions.files'),
(30, 30, 'en', 'anomaly.module.files::field.mime_type.label.files', 'anomaly.module.files::field.mime_type.warning.files', 'anomaly.module.files::field.mime_type.placeholder.files', 'anomaly.module.files::field.mime_type.instructions.files'),
(31, 31, 'en', 'anomaly.module.files::field.entry.label.files', 'anomaly.module.files::field.entry.warning.files', 'anomaly.module.files::field.entry.placeholder.files', 'anomaly.module.files::field.entry.instructions.files'),
(32, 32, 'en', 'anomaly.module.files::field.keywords.label.files', 'anomaly.module.files::field.keywords.warning.files', 'anomaly.module.files::field.keywords.placeholder.files', 'anomaly.module.files::field.keywords.instructions.files'),
(33, 33, 'en', 'anomaly.module.files::field.height.label.files', 'anomaly.module.files::field.height.warning.files', 'anomaly.module.files::field.height.placeholder.files', 'anomaly.module.files::field.height.instructions.files'),
(34, 34, 'en', 'anomaly.module.files::field.width.label.files', 'anomaly.module.files::field.width.warning.files', 'anomaly.module.files::field.width.placeholder.files', 'anomaly.module.files::field.width.instructions.files'),
(35, 35, 'en', 'anomaly.module.navigation::field.name.label.menus', 'anomaly.module.navigation::field.name.warning.menus', 'anomaly.module.navigation::field.name.placeholder.menus', 'anomaly.module.navigation::field.name.instructions.menus'),
(36, 36, 'en', 'anomaly.module.navigation::field.slug.label.menus', 'anomaly.module.navigation::field.slug.warning.menus', 'anomaly.module.navigation::field.slug.placeholder.menus', 'anomaly.module.navigation::field.slug.instructions.menus'),
(37, 37, 'en', 'anomaly.module.navigation::field.description.label.menus', 'anomaly.module.navigation::field.description.warning.menus', 'anomaly.module.navigation::field.description.placeholder.menus', 'anomaly.module.navigation::field.description.instructions.menus'),
(38, 38, 'en', 'anomaly.module.navigation::field.menu.label.links', 'anomaly.module.navigation::field.menu.warning.links', 'anomaly.module.navigation::field.menu.placeholder.links', 'anomaly.module.navigation::field.menu.instructions.links'),
(39, 39, 'en', 'anomaly.module.navigation::field.type.label.links', 'anomaly.module.navigation::field.type.warning.links', 'anomaly.module.navigation::field.type.placeholder.links', 'anomaly.module.navigation::field.type.instructions.links'),
(40, 40, 'en', 'anomaly.module.navigation::field.entry.label.links', 'anomaly.module.navigation::field.entry.warning.links', 'anomaly.module.navigation::field.entry.placeholder.links', 'anomaly.module.navigation::field.entry.instructions.links'),
(41, 41, 'en', 'anomaly.module.navigation::field.target.label.links', 'anomaly.module.navigation::field.target.warning.links', 'anomaly.module.navigation::field.target.placeholder.links', 'anomaly.module.navigation::field.target.instructions.links'),
(42, 42, 'en', 'anomaly.module.navigation::field.class.label.links', 'anomaly.module.navigation::field.class.warning.links', 'anomaly.module.navigation::field.class.placeholder.links', 'anomaly.module.navigation::field.class.instructions.links'),
(43, 43, 'en', 'anomaly.module.navigation::field.parent.label.links', 'anomaly.module.navigation::field.parent.warning.links', 'anomaly.module.navigation::field.parent.placeholder.links', 'anomaly.module.navigation::field.parent.instructions.links'),
(44, 44, 'en', 'anomaly.module.navigation::field.allowed_roles.label.links', 'anomaly.module.navigation::field.allowed_roles.warning.links', 'anomaly.module.navigation::field.allowed_roles.placeholder.links', 'anomaly.module.navigation::field.allowed_roles.instructions.links'),
(45, 45, 'en', 'anomaly.module.pages::field.str_id.label.pages', 'anomaly.module.pages::field.str_id.warning.pages', 'anomaly.module.pages::field.str_id.placeholder.pages', 'anomaly.module.pages::field.str_id.instructions.pages'),
(46, 46, 'en', 'anomaly.module.pages::field.title.label.pages', 'anomaly.module.pages::field.title.warning.pages', 'anomaly.module.pages::field.title.placeholder.pages', 'anomaly.module.pages::field.title.instructions.pages'),
(47, 47, 'en', 'anomaly.module.pages::field.slug.label.pages', 'anomaly.module.pages::field.slug.warning.pages', 'anomaly.module.pages::field.slug.placeholder.pages', 'anomaly.module.pages::field.slug.instructions.pages'),
(48, 48, 'en', 'anomaly.module.pages::field.path.label.pages', 'anomaly.module.pages::field.path.warning.pages', 'anomaly.module.pages::field.path.placeholder.pages', 'anomaly.module.pages::field.path.instructions.pages'),
(49, 49, 'en', 'anomaly.module.pages::field.type.label.pages', 'anomaly.module.pages::field.type.warning.pages', 'anomaly.module.pages::field.type.placeholder.pages', 'anomaly.module.pages::field.type.instructions.pages'),
(50, 50, 'en', 'anomaly.module.pages::field.entry.label.pages', 'anomaly.module.pages::field.entry.warning.pages', 'anomaly.module.pages::field.entry.placeholder.pages', 'anomaly.module.pages::field.entry.instructions.pages'),
(51, 51, 'en', 'anomaly.module.pages::field.parent.label.pages', 'anomaly.module.pages::field.parent.warning.pages', 'anomaly.module.pages::field.parent.placeholder.pages', 'anomaly.module.pages::field.parent.instructions.pages'),
(52, 52, 'en', 'anomaly.module.pages::field.visible.label.pages', 'anomaly.module.pages::field.visible.warning.pages', 'anomaly.module.pages::field.visible.placeholder.pages', 'anomaly.module.pages::field.visible.instructions.pages'),
(53, 53, 'en', 'anomaly.module.pages::field.enabled.label.pages', 'anomaly.module.pages::field.enabled.warning.pages', 'anomaly.module.pages::field.enabled.placeholder.pages', 'anomaly.module.pages::field.enabled.instructions.pages'),
(54, 54, 'en', 'anomaly.module.pages::field.exact.label.pages', 'anomaly.module.pages::field.exact.warning.pages', 'anomaly.module.pages::field.exact.placeholder.pages', 'anomaly.module.pages::field.exact.instructions.pages'),
(55, 55, 'en', 'anomaly.module.pages::field.home.label.pages', 'anomaly.module.pages::field.home.warning.pages', 'anomaly.module.pages::field.home.placeholder.pages', 'anomaly.module.pages::field.home.instructions.pages'),
(56, 56, 'en', 'anomaly.module.pages::field.meta_title.label.pages', 'anomaly.module.pages::field.meta_title.warning.pages', 'anomaly.module.pages::field.meta_title.placeholder.pages', 'anomaly.module.pages::field.meta_title.instructions.pages'),
(57, 57, 'en', 'anomaly.module.pages::field.meta_description.label.pages', 'anomaly.module.pages::field.meta_description.warning.pages', 'anomaly.module.pages::field.meta_description.placeholder.pages', 'anomaly.module.pages::field.meta_description.instructions.pages'),
(58, 58, 'en', 'anomaly.module.pages::field.meta_keywords.label.pages', 'anomaly.module.pages::field.meta_keywords.warning.pages', 'anomaly.module.pages::field.meta_keywords.placeholder.pages', 'anomaly.module.pages::field.meta_keywords.instructions.pages'),
(59, 59, 'en', 'anomaly.module.pages::field.theme_layout.label.pages', 'anomaly.module.pages::field.theme_layout.warning.pages', 'anomaly.module.pages::field.theme_layout.placeholder.pages', 'anomaly.module.pages::field.theme_layout.instructions.pages'),
(60, 60, 'en', 'anomaly.module.pages::field.allowed_roles.label.pages', 'anomaly.module.pages::field.allowed_roles.warning.pages', 'anomaly.module.pages::field.allowed_roles.placeholder.pages', 'anomaly.module.pages::field.allowed_roles.instructions.pages'),
(61, 61, 'en', 'anomaly.module.pages::field.name.label.types', 'anomaly.module.pages::field.name.warning.types', 'anomaly.module.pages::field.name.placeholder.types', 'anomaly.module.pages::field.name.instructions.types'),
(62, 62, 'en', 'anomaly.module.pages::field.slug.label.types', 'anomaly.module.pages::field.slug.warning.types', 'anomaly.module.pages::field.slug.placeholder.types', 'anomaly.module.pages::field.slug.instructions.types'),
(63, 63, 'en', 'anomaly.module.pages::field.description.label.types', 'anomaly.module.pages::field.description.warning.types', 'anomaly.module.pages::field.description.placeholder.types', 'anomaly.module.pages::field.description.instructions.types'),
(64, 64, 'en', 'anomaly.module.pages::field.theme_layout.label.types', 'anomaly.module.pages::field.theme_layout.warning.types', 'anomaly.module.pages::field.theme_layout.placeholder.types', 'anomaly.module.pages::field.theme_layout.instructions.types'),
(65, 65, 'en', 'anomaly.module.pages::field.layout.label.types', 'anomaly.module.pages::field.layout.warning.types', 'anomaly.module.pages::field.layout.placeholder.types', 'anomaly.module.pages::field.layout.instructions.types'),
(66, 66, 'en', 'anomaly.module.pages::field.handler.label.types', 'anomaly.module.pages::field.handler.warning.types', 'anomaly.module.pages::field.handler.placeholder.types', 'anomaly.module.pages::field.handler.instructions.types'),
(67, 67, 'en', 'anomaly.module.posts::field.name.label.categories', 'anomaly.module.posts::field.name.warning.categories', 'anomaly.module.posts::field.name.placeholder.categories', 'anomaly.module.posts::field.name.instructions.categories'),
(68, 68, 'en', 'anomaly.module.posts::field.slug.label.categories', 'anomaly.module.posts::field.slug.warning.categories', 'anomaly.module.posts::field.slug.placeholder.categories', 'anomaly.module.posts::field.slug.instructions.categories'),
(69, 69, 'en', 'anomaly.module.posts::field.description.label.categories', 'anomaly.module.posts::field.description.warning.categories', 'anomaly.module.posts::field.description.placeholder.categories', 'anomaly.module.posts::field.description.instructions.categories'),
(70, 70, 'en', 'anomaly.module.posts::field.str_id.label.posts', 'anomaly.module.posts::field.str_id.warning.posts', 'anomaly.module.posts::field.str_id.placeholder.posts', 'anomaly.module.posts::field.str_id.instructions.posts'),
(71, 71, 'en', 'anomaly.module.posts::field.title.label.posts', 'anomaly.module.posts::field.title.warning.posts', 'anomaly.module.posts::field.title.placeholder.posts', 'anomaly.module.posts::field.title.instructions.posts'),
(72, 72, 'en', 'anomaly.module.posts::field.summary.label.posts', 'anomaly.module.posts::field.summary.warning.posts', 'anomaly.module.posts::field.summary.placeholder.posts', 'anomaly.module.posts::field.summary.instructions.posts'),
(73, 73, 'en', 'anomaly.module.posts::field.slug.label.posts', 'anomaly.module.posts::field.slug.warning.posts', 'anomaly.module.posts::field.slug.placeholder.posts', 'anomaly.module.posts::field.slug.instructions.posts'),
(74, 74, 'en', 'anomaly.module.posts::field.type.label.posts', 'anomaly.module.posts::field.type.warning.posts', 'anomaly.module.posts::field.type.placeholder.posts', 'anomaly.module.posts::field.type.instructions.posts'),
(75, 75, 'en', 'anomaly.module.posts::field.publish_at.label.posts', 'anomaly.module.posts::field.publish_at.warning.posts', 'anomaly.module.posts::field.publish_at.placeholder.posts', 'anomaly.module.posts::field.publish_at.instructions.posts'),
(76, 76, 'en', 'anomaly.module.posts::field.author.label.posts', 'anomaly.module.posts::field.author.warning.posts', 'anomaly.module.posts::field.author.placeholder.posts', 'anomaly.module.posts::field.author.instructions.posts'),
(77, 77, 'en', 'anomaly.module.posts::field.entry.label.posts', 'anomaly.module.posts::field.entry.warning.posts', 'anomaly.module.posts::field.entry.placeholder.posts', 'anomaly.module.posts::field.entry.instructions.posts'),
(78, 78, 'en', 'anomaly.module.posts::field.meta_title.label.posts', 'anomaly.module.posts::field.meta_title.warning.posts', 'anomaly.module.posts::field.meta_title.placeholder.posts', 'anomaly.module.posts::field.meta_title.instructions.posts'),
(79, 79, 'en', 'anomaly.module.posts::field.meta_description.label.posts', 'anomaly.module.posts::field.meta_description.warning.posts', 'anomaly.module.posts::field.meta_description.placeholder.posts', 'anomaly.module.posts::field.meta_description.instructions.posts'),
(80, 80, 'en', 'anomaly.module.posts::field.meta_keywords.label.posts', 'anomaly.module.posts::field.meta_keywords.warning.posts', 'anomaly.module.posts::field.meta_keywords.placeholder.posts', 'anomaly.module.posts::field.meta_keywords.instructions.posts'),
(81, 81, 'en', 'anomaly.module.posts::field.category.label.posts', 'anomaly.module.posts::field.category.warning.posts', 'anomaly.module.posts::field.category.placeholder.posts', 'anomaly.module.posts::field.category.instructions.posts'),
(82, 82, 'en', 'anomaly.module.posts::field.featured.label.posts', 'anomaly.module.posts::field.featured.warning.posts', 'anomaly.module.posts::field.featured.placeholder.posts', 'anomaly.module.posts::field.featured.instructions.posts'),
(83, 83, 'en', 'anomaly.module.posts::field.enabled.label.posts', 'anomaly.module.posts::field.enabled.warning.posts', 'anomaly.module.posts::field.enabled.placeholder.posts', 'anomaly.module.posts::field.enabled.instructions.posts'),
(84, 84, 'en', 'anomaly.module.posts::field.tags.label.posts', 'anomaly.module.posts::field.tags.warning.posts', 'anomaly.module.posts::field.tags.placeholder.posts', 'anomaly.module.posts::field.tags.instructions.posts'),
(85, 85, 'en', 'anomaly.module.posts::field.name.label.types', 'anomaly.module.posts::field.name.warning.types', 'anomaly.module.posts::field.name.placeholder.types', 'anomaly.module.posts::field.name.instructions.types'),
(86, 86, 'en', 'anomaly.module.posts::field.slug.label.types', 'anomaly.module.posts::field.slug.warning.types', 'anomaly.module.posts::field.slug.placeholder.types', 'anomaly.module.posts::field.slug.instructions.types'),
(87, 87, 'en', 'anomaly.module.posts::field.layout.label.types', 'anomaly.module.posts::field.layout.warning.types', 'anomaly.module.posts::field.layout.placeholder.types', 'anomaly.module.posts::field.layout.instructions.types'),
(88, 88, 'en', 'anomaly.module.posts::field.theme_layout.label.types', 'anomaly.module.posts::field.theme_layout.warning.types', 'anomaly.module.posts::field.theme_layout.placeholder.types', 'anomaly.module.posts::field.theme_layout.instructions.types'),
(89, 89, 'en', 'anomaly.module.posts::field.description.label.types', 'anomaly.module.posts::field.description.warning.types', 'anomaly.module.posts::field.description.placeholder.types', 'anomaly.module.posts::field.description.instructions.types'),
(90, 90, 'en', 'anomaly.module.preferences::field.user.label.preferences', 'anomaly.module.preferences::field.user.warning.preferences', 'anomaly.module.preferences::field.user.placeholder.preferences', 'anomaly.module.preferences::field.user.instructions.preferences'),
(91, 91, 'en', 'anomaly.module.preferences::field.key.label.preferences', 'anomaly.module.preferences::field.key.warning.preferences', 'anomaly.module.preferences::field.key.placeholder.preferences', 'anomaly.module.preferences::field.key.instructions.preferences'),
(92, 92, 'en', 'anomaly.module.preferences::field.value.label.preferences', 'anomaly.module.preferences::field.value.warning.preferences', 'anomaly.module.preferences::field.value.placeholder.preferences', 'anomaly.module.preferences::field.value.instructions.preferences'),
(93, 93, 'en', 'anomaly.module.redirects::field.from.label.redirects', 'anomaly.module.redirects::field.from.warning.redirects', 'anomaly.module.redirects::field.from.placeholder.redirects', 'anomaly.module.redirects::field.from.instructions.redirects'),
(94, 94, 'en', 'anomaly.module.redirects::field.to.label.redirects', 'anomaly.module.redirects::field.to.warning.redirects', 'anomaly.module.redirects::field.to.placeholder.redirects', 'anomaly.module.redirects::field.to.instructions.redirects'),
(95, 95, 'en', 'anomaly.module.redirects::field.status.label.redirects', 'anomaly.module.redirects::field.status.warning.redirects', 'anomaly.module.redirects::field.status.placeholder.redirects', 'anomaly.module.redirects::field.status.instructions.redirects'),
(96, 96, 'en', 'anomaly.module.redirects::field.secure.label.redirects', 'anomaly.module.redirects::field.secure.warning.redirects', 'anomaly.module.redirects::field.secure.placeholder.redirects', 'anomaly.module.redirects::field.secure.instructions.redirects'),
(97, 97, 'en', 'anomaly.module.settings::field.key.label.settings', 'anomaly.module.settings::field.key.warning.settings', 'anomaly.module.settings::field.key.placeholder.settings', 'anomaly.module.settings::field.key.instructions.settings'),
(98, 98, 'en', 'anomaly.module.settings::field.value.label.settings', 'anomaly.module.settings::field.value.warning.settings', 'anomaly.module.settings::field.value.placeholder.settings', 'anomaly.module.settings::field.value.instructions.settings'),
(99, 99, 'en', 'anomaly.module.users::field.email.label.users', 'anomaly.module.users::field.email.warning.users', 'anomaly.module.users::field.email.placeholder.users', 'anomaly.module.users::field.email.instructions.users'),
(100, 100, 'en', 'anomaly.module.users::field.username.label.users', 'anomaly.module.users::field.username.warning.users', 'anomaly.module.users::field.username.placeholder.users', 'anomaly.module.users::field.username.instructions.users'),
(101, 101, 'en', 'anomaly.module.users::field.password.label.users', 'anomaly.module.users::field.password.warning.users', 'anomaly.module.users::field.password.placeholder.users', 'anomaly.module.users::field.password.instructions.users'),
(102, 102, 'en', 'anomaly.module.users::field.roles.label.users', 'anomaly.module.users::field.roles.warning.users', 'anomaly.module.users::field.roles.placeholder.users', 'anomaly.module.users::field.roles.instructions.users'),
(103, 103, 'en', 'anomaly.module.users::field.display_name.label.users', 'anomaly.module.users::field.display_name.warning.users', 'anomaly.module.users::field.display_name.placeholder.users', 'anomaly.module.users::field.display_name.instructions.users'),
(104, 104, 'en', 'anomaly.module.users::field.first_name.label.users', 'anomaly.module.users::field.first_name.warning.users', 'anomaly.module.users::field.first_name.placeholder.users', 'anomaly.module.users::field.first_name.instructions.users'),
(105, 105, 'en', 'anomaly.module.users::field.last_name.label.users', 'anomaly.module.users::field.last_name.warning.users', 'anomaly.module.users::field.last_name.placeholder.users', 'anomaly.module.users::field.last_name.instructions.users'),
(106, 106, 'en', 'anomaly.module.users::field.activated.label.users', 'anomaly.module.users::field.activated.warning.users', 'anomaly.module.users::field.activated.placeholder.users', 'anomaly.module.users::field.activated.instructions.users'),
(107, 107, 'en', 'anomaly.module.users::field.enabled.label.users', 'anomaly.module.users::field.enabled.warning.users', 'anomaly.module.users::field.enabled.placeholder.users', 'anomaly.module.users::field.enabled.instructions.users'),
(108, 108, 'en', 'anomaly.module.users::field.permissions.label.users', 'anomaly.module.users::field.permissions.warning.users', 'anomaly.module.users::field.permissions.placeholder.users', 'anomaly.module.users::field.permissions.instructions.users'),
(109, 109, 'en', 'anomaly.module.users::field.last_login_at.label.users', 'anomaly.module.users::field.last_login_at.warning.users', 'anomaly.module.users::field.last_login_at.placeholder.users', 'anomaly.module.users::field.last_login_at.instructions.users'),
(110, 110, 'en', 'anomaly.module.users::field.remember_token.label.users', 'anomaly.module.users::field.remember_token.warning.users', 'anomaly.module.users::field.remember_token.placeholder.users', 'anomaly.module.users::field.remember_token.instructions.users'),
(111, 111, 'en', 'anomaly.module.users::field.activation_code.label.users', 'anomaly.module.users::field.activation_code.warning.users', 'anomaly.module.users::field.activation_code.placeholder.users', 'anomaly.module.users::field.activation_code.instructions.users'),
(112, 112, 'en', 'anomaly.module.users::field.reset_code.label.users', 'anomaly.module.users::field.reset_code.warning.users', 'anomaly.module.users::field.reset_code.placeholder.users', 'anomaly.module.users::field.reset_code.instructions.users'),
(113, 113, 'en', 'anomaly.module.users::field.last_activity_at.label.users', 'anomaly.module.users::field.last_activity_at.warning.users', 'anomaly.module.users::field.last_activity_at.placeholder.users', 'anomaly.module.users::field.last_activity_at.instructions.users'),
(114, 114, 'en', 'anomaly.module.users::field.ip_address.label.users', 'anomaly.module.users::field.ip_address.warning.users', 'anomaly.module.users::field.ip_address.placeholder.users', 'anomaly.module.users::field.ip_address.instructions.users'),
(115, 115, 'en', 'anomaly.module.users::field.name.label.roles', 'anomaly.module.users::field.name.warning.roles', 'anomaly.module.users::field.name.placeholder.roles', 'anomaly.module.users::field.name.instructions.roles'),
(116, 116, 'en', 'anomaly.module.users::field.slug.label.roles', 'anomaly.module.users::field.slug.warning.roles', 'anomaly.module.users::field.slug.placeholder.roles', 'anomaly.module.users::field.slug.instructions.roles'),
(117, 117, 'en', 'anomaly.module.users::field.description.label.roles', 'anomaly.module.users::field.description.warning.roles', 'anomaly.module.users::field.description.placeholder.roles', 'anomaly.module.users::field.description.instructions.roles'),
(118, 118, 'en', 'anomaly.module.users::field.permissions.label.roles', 'anomaly.module.users::field.permissions.warning.roles', 'anomaly.module.users::field.permissions.placeholder.roles', 'anomaly.module.users::field.permissions.instructions.roles'),
(119, 119, 'en', 'anomaly.extension.page_link_type::field.title.label.pages', 'anomaly.extension.page_link_type::field.title.warning.pages', 'anomaly.extension.page_link_type::field.title.placeholder.pages', 'anomaly.extension.page_link_type::field.title.instructions.pages'),
(120, 120, 'en', 'anomaly.extension.page_link_type::field.page.label.pages', 'anomaly.extension.page_link_type::field.page.warning.pages', 'anomaly.extension.page_link_type::field.page.placeholder.pages', 'anomaly.extension.page_link_type::field.page.instructions.pages'),
(121, 121, 'en', 'anomaly.extension.page_link_type::field.description.label.pages', 'anomaly.extension.page_link_type::field.description.warning.pages', 'anomaly.extension.page_link_type::field.description.placeholder.pages', 'anomaly.extension.page_link_type::field.description.instructions.pages'),
(122, 122, 'en', 'anomaly.extension.url_link_type::field.title.label.urls', 'anomaly.extension.url_link_type::field.title.warning.urls', 'anomaly.extension.url_link_type::field.title.placeholder.urls', 'anomaly.extension.url_link_type::field.title.instructions.urls'),
(123, 123, 'en', 'anomaly.extension.url_link_type::field.url.label.urls', 'anomaly.extension.url_link_type::field.url.warning.urls', 'anomaly.extension.url_link_type::field.url.placeholder.urls', 'anomaly.extension.url_link_type::field.url.instructions.urls'),
(124, 124, 'en', 'anomaly.extension.url_link_type::field.description.label.urls', 'anomaly.extension.url_link_type::field.description.warning.urls', 'anomaly.extension.url_link_type::field.description.placeholder.urls', 'anomaly.extension.url_link_type::field.description.instructions.urls'),
(125, 125, 'en', NULL, NULL, NULL, NULL),
(126, 126, 'en', NULL, NULL, NULL, NULL),
(143, 143, 'en', 'toyotadjakarta.module.slideshows::field.title.label.banners', 'toyotadjakarta.module.slideshows::field.title.warning.banners', 'toyotadjakarta.module.slideshows::field.title.placeholder.banners', 'toyotadjakarta.module.slideshows::field.title.instructions.banners'),
(144, 144, 'en', 'toyotadjakarta.module.slideshows::field.slug.label.banners', 'toyotadjakarta.module.slideshows::field.slug.warning.banners', 'toyotadjakarta.module.slideshows::field.slug.placeholder.banners', 'toyotadjakarta.module.slideshows::field.slug.instructions.banners'),
(145, 145, 'en', 'toyotadjakarta.module.slideshows::field.image.label.banners', 'toyotadjakarta.module.slideshows::field.image.warning.banners', 'toyotadjakarta.module.slideshows::field.image.placeholder.banners', 'toyotadjakarta.module.slideshows::field.image.instructions.banners'),
(146, 146, 'en', 'toyotadjakarta.module.slideshows::field.publish.label.banners', 'toyotadjakarta.module.slideshows::field.publish.warning.banners', 'toyotadjakarta.module.slideshows::field.publish.placeholder.banners', 'toyotadjakarta.module.slideshows::field.publish.instructions.banners'),
(147, 147, 'en', 'toyotadjakarta.module.slideshows::field.summary.label.banners', 'toyotadjakarta.module.slideshows::field.summary.warning.banners', 'toyotadjakarta.module.slideshows::field.summary.placeholder.banners', 'toyotadjakarta.module.slideshows::field.summary.instructions.banners'),
(148, 148, 'en', 'toyotadjakarta.module.slideshows::field.description.label.banners', 'toyotadjakarta.module.slideshows::field.description.warning.banners', 'toyotadjakarta.module.slideshows::field.description.placeholder.banners', 'toyotadjakarta.module.slideshows::field.description.instructions.banners'),
(149, 149, 'en', 'toyotadjakarta.module.slideshows::field.title.label.welcomes', 'toyotadjakarta.module.slideshows::field.title.warning.welcomes', 'toyotadjakarta.module.slideshows::field.title.placeholder.welcomes', 'toyotadjakarta.module.slideshows::field.title.instructions.welcomes'),
(150, 150, 'en', 'toyotadjakarta.module.slideshows::field.slug.label.welcomes', 'toyotadjakarta.module.slideshows::field.slug.warning.welcomes', 'toyotadjakarta.module.slideshows::field.slug.placeholder.welcomes', 'toyotadjakarta.module.slideshows::field.slug.instructions.welcomes'),
(151, 151, 'en', 'toyotadjakarta.module.slideshows::field.publish.label.welcomes', 'toyotadjakarta.module.slideshows::field.publish.warning.welcomes', 'toyotadjakarta.module.slideshows::field.publish.placeholder.welcomes', 'toyotadjakarta.module.slideshows::field.publish.instructions.welcomes'),
(152, 152, 'en', 'toyotadjakarta.module.slideshows::field.description.label.welcomes', 'toyotadjakarta.module.slideshows::field.description.warning.welcomes', 'toyotadjakarta.module.slideshows::field.description.placeholder.welcomes', 'toyotadjakarta.module.slideshows::field.description.instructions.welcomes'),
(153, 153, 'en', 'toyotadjakarta.module.slideshows::field.title.label.intros', 'toyotadjakarta.module.slideshows::field.title.warning.intros', 'toyotadjakarta.module.slideshows::field.title.placeholder.intros', 'toyotadjakarta.module.slideshows::field.title.instructions.intros'),
(154, 154, 'en', 'toyotadjakarta.module.slideshows::field.slug.label.intros', 'toyotadjakarta.module.slideshows::field.slug.warning.intros', 'toyotadjakarta.module.slideshows::field.slug.placeholder.intros', 'toyotadjakarta.module.slideshows::field.slug.instructions.intros'),
(155, 155, 'en', 'toyotadjakarta.module.slideshows::field.image.label.intros', 'toyotadjakarta.module.slideshows::field.image.warning.intros', 'toyotadjakarta.module.slideshows::field.image.placeholder.intros', 'toyotadjakarta.module.slideshows::field.image.instructions.intros'),
(156, 156, 'en', 'toyotadjakarta.module.slideshows::field.publish.label.intros', 'toyotadjakarta.module.slideshows::field.publish.warning.intros', 'toyotadjakarta.module.slideshows::field.publish.placeholder.intros', 'toyotadjakarta.module.slideshows::field.publish.instructions.intros'),
(157, 157, 'en', 'toyotadjakarta.module.slideshows::field.summary.label.intros', 'toyotadjakarta.module.slideshows::field.summary.warning.intros', 'toyotadjakarta.module.slideshows::field.summary.placeholder.intros', 'toyotadjakarta.module.slideshows::field.summary.instructions.intros'),
(158, 158, 'en', 'toyotadjakarta.module.slideshows::field.description.label.intros', 'toyotadjakarta.module.slideshows::field.description.warning.intros', 'toyotadjakarta.module.slideshows::field.description.placeholder.intros', 'toyotadjakarta.module.slideshows::field.description.instructions.intros'),
(208, 208, 'en', 'toyotadjakarta.module.sales::field.name.label.models', 'toyotadjakarta.module.sales::field.name.warning.models', 'toyotadjakarta.module.sales::field.name.placeholder.models', 'toyotadjakarta.module.sales::field.name.instructions.models'),
(209, 209, 'en', 'toyotadjakarta.module.sales::field.slug.label.models', 'toyotadjakarta.module.sales::field.slug.warning.models', 'toyotadjakarta.module.sales::field.slug.placeholder.models', 'toyotadjakarta.module.sales::field.slug.instructions.models'),
(210, 210, 'en', 'toyotadjakarta.module.sales::field.image.label.models', 'toyotadjakarta.module.sales::field.image.warning.models', 'toyotadjakarta.module.sales::field.image.placeholder.models', 'toyotadjakarta.module.sales::field.image.instructions.models'),
(211, 211, 'en', 'toyotadjakarta.module.sales::field.publish.label.models', 'toyotadjakarta.module.sales::field.publish.warning.models', 'toyotadjakarta.module.sales::field.publish.placeholder.models', 'toyotadjakarta.module.sales::field.publish.instructions.models'),
(212, 212, 'en', 'toyotadjakarta.module.sales::field.description.label.models', 'toyotadjakarta.module.sales::field.description.warning.models', 'toyotadjakarta.module.sales::field.description.placeholder.models', 'toyotadjakarta.module.sales::field.description.instructions.models'),
(213, 213, 'en', 'toyotadjakarta.module.sales::field.name.label.products', 'toyotadjakarta.module.sales::field.name.warning.products', 'toyotadjakarta.module.sales::field.name.placeholder.products', 'toyotadjakarta.module.sales::field.name.instructions.products'),
(214, 214, 'en', 'toyotadjakarta.module.sales::field.slug.label.products', 'toyotadjakarta.module.sales::field.slug.warning.products', 'toyotadjakarta.module.sales::field.slug.placeholder.products', 'toyotadjakarta.module.sales::field.slug.instructions.products'),
(215, 215, 'en', 'toyotadjakarta.module.sales::field.models.label.products', 'toyotadjakarta.module.sales::field.models.warning.products', 'toyotadjakarta.module.sales::field.models.placeholder.products', 'toyotadjakarta.module.sales::field.models.instructions.products'),
(216, 216, 'en', 'toyotadjakarta.module.sales::field.image.label.products', 'toyotadjakarta.module.sales::field.image.warning.products', 'toyotadjakarta.module.sales::field.image.placeholder.products', 'toyotadjakarta.module.sales::field.image.instructions.products'),
(217, 217, 'en', 'toyotadjakarta.module.sales::field.publish.label.products', 'toyotadjakarta.module.sales::field.publish.warning.products', 'toyotadjakarta.module.sales::field.publish.placeholder.products', 'toyotadjakarta.module.sales::field.publish.instructions.products'),
(218, 218, 'en', 'toyotadjakarta.module.sales::field.summary.label.products', 'toyotadjakarta.module.sales::field.summary.warning.products', 'toyotadjakarta.module.sales::field.summary.placeholder.products', 'toyotadjakarta.module.sales::field.summary.instructions.products'),
(219, 219, 'en', 'toyotadjakarta.module.sales::field.description.label.products', 'toyotadjakarta.module.sales::field.description.warning.products', 'toyotadjakarta.module.sales::field.description.placeholder.products', 'toyotadjakarta.module.sales::field.description.instructions.products'),
(220, 220, 'en', 'toyotadjakarta.module.sales::field.price.label.products', 'toyotadjakarta.module.sales::field.price.warning.products', 'toyotadjakarta.module.sales::field.price.placeholder.products', 'toyotadjakarta.module.sales::field.price.instructions.products'),
(221, 221, 'en', 'toyotadjakarta.module.sales::field.name.label.testimonis', 'toyotadjakarta.module.sales::field.name.warning.testimonis', 'toyotadjakarta.module.sales::field.name.placeholder.testimonis', 'toyotadjakarta.module.sales::field.name.instructions.testimonis'),
(222, 222, 'en', 'toyotadjakarta.module.sales::field.slug.label.testimonis', 'toyotadjakarta.module.sales::field.slug.warning.testimonis', 'toyotadjakarta.module.sales::field.slug.placeholder.testimonis', 'toyotadjakarta.module.sales::field.slug.instructions.testimonis'),
(223, 223, 'en', 'toyotadjakarta.module.sales::field.image.label.testimonis', 'toyotadjakarta.module.sales::field.image.warning.testimonis', 'toyotadjakarta.module.sales::field.image.placeholder.testimonis', 'toyotadjakarta.module.sales::field.image.instructions.testimonis'),
(224, 224, 'en', 'toyotadjakarta.module.sales::field.publish.label.testimonis', 'toyotadjakarta.module.sales::field.publish.warning.testimonis', 'toyotadjakarta.module.sales::field.publish.placeholder.testimonis', 'toyotadjakarta.module.sales::field.publish.instructions.testimonis'),
(225, 225, 'en', 'toyotadjakarta.module.sales::field.summary.label.testimonis', 'toyotadjakarta.module.sales::field.summary.warning.testimonis', 'toyotadjakarta.module.sales::field.summary.placeholder.testimonis', 'toyotadjakarta.module.sales::field.summary.instructions.testimonis'),
(226, 226, 'en', 'toyotadjakarta.module.sales::field.description.label.testimonis', 'toyotadjakarta.module.sales::field.description.warning.testimonis', 'toyotadjakarta.module.sales::field.description.placeholder.testimonis', 'toyotadjakarta.module.sales::field.description.instructions.testimonis'),
(227, 227, 'en', 'toyotadjakarta.module.sales::field.name.label.banners', 'toyotadjakarta.module.sales::field.name.warning.banners', 'toyotadjakarta.module.sales::field.name.placeholder.banners', 'toyotadjakarta.module.sales::field.name.instructions.banners'),
(228, 228, 'en', 'toyotadjakarta.module.sales::field.slug.label.banners', 'toyotadjakarta.module.sales::field.slug.warning.banners', 'toyotadjakarta.module.sales::field.slug.placeholder.banners', 'toyotadjakarta.module.sales::field.slug.instructions.banners'),
(229, 229, 'en', 'toyotadjakarta.module.sales::field.image.label.banners', 'toyotadjakarta.module.sales::field.image.warning.banners', 'toyotadjakarta.module.sales::field.image.placeholder.banners', 'toyotadjakarta.module.sales::field.image.instructions.banners'),
(230, 230, 'en', 'toyotadjakarta.module.sales::field.publish.label.banners', 'toyotadjakarta.module.sales::field.publish.warning.banners', 'toyotadjakarta.module.sales::field.publish.placeholder.banners', 'toyotadjakarta.module.sales::field.publish.instructions.banners'),
(231, 231, 'en', 'toyotadjakarta.module.sales::field.summary.label.banners', 'toyotadjakarta.module.sales::field.summary.warning.banners', 'toyotadjakarta.module.sales::field.summary.placeholder.banners', 'toyotadjakarta.module.sales::field.summary.instructions.banners'),
(232, 232, 'en', 'toyotadjakarta.module.sales::field.website.label.banners', 'toyotadjakarta.module.sales::field.website.warning.banners', 'toyotadjakarta.module.sales::field.website.placeholder.banners', 'toyotadjakarta.module.sales::field.website.instructions.banners'),
(233, 233, 'en', 'toyotadjakarta.module.sales::field.description.label.banners', 'toyotadjakarta.module.sales::field.description.warning.banners', 'toyotadjakarta.module.sales::field.description.placeholder.banners', 'toyotadjakarta.module.sales::field.description.instructions.banners'),
(234, 234, 'en', NULL, NULL, NULL, NULL),
(235, 234, 'id', 'Content', 'Please Input Content', 'Content', 'Please Input Content'),
(236, 235, 'en', NULL, NULL, NULL, NULL),
(237, 235, 'id', 'Image', 'Please upload a image with greater than 2mb', 'Image', 'Please select a image'),
(238, 236, 'en', NULL, NULL, NULL, NULL),
(239, 236, 'id', 'Main Image', 'Please upload a image', 'Please upload a image', 'Please upload a image'),
(240, 237, 'en', NULL, NULL, NULL, NULL),
(241, 237, 'id', 'Content', 'Please fill a content', 'Content', 'Please fill a content'),
(242, 238, 'en', 'toyotadjakarta.module.contacts::field.company.label.contacts', 'toyotadjakarta.module.contacts::field.company.warning.contacts', 'toyotadjakarta.module.contacts::field.company.placeholder.contacts', 'toyotadjakarta.module.contacts::field.company.instructions.contacts'),
(243, 239, 'en', 'toyotadjakarta.module.contacts::field.publish.label.contacts', 'toyotadjakarta.module.contacts::field.publish.warning.contacts', 'toyotadjakarta.module.contacts::field.publish.placeholder.contacts', 'toyotadjakarta.module.contacts::field.publish.instructions.contacts'),
(244, 240, 'en', 'toyotadjakarta.module.contacts::field.division.label.contacts', 'toyotadjakarta.module.contacts::field.division.warning.contacts', 'toyotadjakarta.module.contacts::field.division.placeholder.contacts', 'toyotadjakarta.module.contacts::field.division.instructions.contacts'),
(245, 241, 'en', 'toyotadjakarta.module.contacts::field.address.label.contacts', 'toyotadjakarta.module.contacts::field.address.warning.contacts', 'toyotadjakarta.module.contacts::field.address.placeholder.contacts', 'toyotadjakarta.module.contacts::field.address.instructions.contacts'),
(246, 242, 'en', 'toyotadjakarta.module.contacts::field.phone.label.contacts', 'toyotadjakarta.module.contacts::field.phone.warning.contacts', 'toyotadjakarta.module.contacts::field.phone.placeholder.contacts', 'toyotadjakarta.module.contacts::field.phone.instructions.contacts'),
(247, 243, 'en', 'toyotadjakarta.module.contacts::field.fax.label.contacts', 'toyotadjakarta.module.contacts::field.fax.warning.contacts', 'toyotadjakarta.module.contacts::field.fax.placeholder.contacts', 'toyotadjakarta.module.contacts::field.fax.instructions.contacts'),
(248, 244, 'en', 'toyotadjakarta.module.contacts::field.company_email.label.contacts', 'toyotadjakarta.module.contacts::field.company_email.warning.contacts', 'toyotadjakarta.module.contacts::field.company_email.placeholder.contacts', 'toyotadjakarta.module.contacts::field.company_email.instructions.contacts'),
(249, 245, 'en', 'toyotadjakarta.module.contacts::field.sales_name.label.contacts', 'toyotadjakarta.module.contacts::field.sales_name.warning.contacts', 'toyotadjakarta.module.contacts::field.sales_name.placeholder.contacts', 'toyotadjakarta.module.contacts::field.sales_name.instructions.contacts'),
(250, 246, 'en', 'toyotadjakarta.module.contacts::field.photo.label.contacts', 'toyotadjakarta.module.contacts::field.photo.warning.contacts', 'toyotadjakarta.module.contacts::field.photo.placeholder.contacts', 'toyotadjakarta.module.contacts::field.photo.instructions.contacts'),
(251, 247, 'en', 'toyotadjakarta.module.contacts::field.mobile01.label.contacts', 'toyotadjakarta.module.contacts::field.mobile01.warning.contacts', 'toyotadjakarta.module.contacts::field.mobile01.placeholder.contacts', 'toyotadjakarta.module.contacts::field.mobile01.instructions.contacts'),
(252, 248, 'en', 'toyotadjakarta.module.contacts::field.mobile02.label.contacts', 'toyotadjakarta.module.contacts::field.mobile02.warning.contacts', 'toyotadjakarta.module.contacts::field.mobile02.placeholder.contacts', 'toyotadjakarta.module.contacts::field.mobile02.instructions.contacts'),
(253, 249, 'en', 'toyotadjakarta.module.contacts::field.personal_email.label.contacts', 'toyotadjakarta.module.contacts::field.personal_email.warning.contacts', 'toyotadjakarta.module.contacts::field.personal_email.placeholder.contacts', 'toyotadjakarta.module.contacts::field.personal_email.instructions.contacts'),
(254, 250, 'en', 'toyotadjakarta.module.contacts::field.biodata.label.contacts', 'toyotadjakarta.module.contacts::field.biodata.warning.contacts', 'toyotadjakarta.module.contacts::field.biodata.placeholder.contacts', 'toyotadjakarta.module.contacts::field.biodata.instructions.contacts'),
(255, 251, 'en', 'toyotadjakarta.module.contacts::field.note.label.contacts', 'toyotadjakarta.module.contacts::field.note.warning.contacts', 'toyotadjakarta.module.contacts::field.note.placeholder.contacts', 'toyotadjakarta.module.contacts::field.note.instructions.contacts');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_streams_fields`
--

CREATE TABLE `toyotadjakarta_streams_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_streams_fields`
--

INSERT INTO `toyotadjakarta_streams_fields` (`id`, `namespace`, `slug`, `type`, `config`, `locked`) VALUES
(1, 'configuration', 'scope', 'anomaly.field_type.text', 'a:0:{}', 1),
(2, 'configuration', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(3, 'configuration', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(4, 'dashboard', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(5, 'dashboard', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(6, 'dashboard', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(7, 'dashboard', 'layout', 'anomaly.field_type.select', 'a:1:{s:7:\"options\";a:9:{i:24;s:48:\"anomaly.module.dashboard::field.layout.option.24\";s:5:\"12-12\";s:51:\"anomaly.module.dashboard::field.layout.option.12-12\";s:4:\"16-8\";s:50:\"anomaly.module.dashboard::field.layout.option.16-8\";s:4:\"8-16\";s:50:\"anomaly.module.dashboard::field.layout.option.8-16\";s:5:\"8-8-8\";s:51:\"anomaly.module.dashboard::field.layout.option.8-8-8\";s:6:\"6-12-6\";s:52:\"anomaly.module.dashboard::field.layout.option.6-12-6\";s:6:\"12-6-6\";s:52:\"anomaly.module.dashboard::field.layout.option.12-6-6\";s:6:\"6-6-12\";s:52:\"anomaly.module.dashboard::field.layout.option.6-6-12\";s:7:\"6-6-6-6\";s:53:\"anomaly.module.dashboard::field.layout.option.6-6-6-6\";}}', 1),
(8, 'dashboard', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(9, 'dashboard', 'extension', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:34:\"anomaly.module.dashboard::widget.*\";}', 1),
(10, 'dashboard', 'column', 'anomaly.field_type.integer', 'a:2:{s:3:\"min\";i:1;s:13:\"default_value\";i:1;}', 1),
(11, 'dashboard', 'pinned', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(12, 'dashboard', 'dashboard', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:48:\"Anomaly\\DashboardModule\\Dashboard\\DashboardModel\";}', 1),
(13, 'dashboard', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(14, 'files', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(15, 'files', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(16, 'files', 'adapter', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:10:\"extensions\";s:6:\"search\";s:31:\"anomaly.module.files::adapter.*\";}', 1),
(17, 'files', 'folder', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:38:\"Anomaly\\FilesModule\\Folder\\FolderModel\";}', 1),
(18, 'files', 'disk', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\FilesModule\\Disk\\DiskModel\";}', 1),
(19, 'files', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(20, 'files', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(21, 'files', 'allowed_types', 'anomaly.field_type.tags', 'a:0:{}', 1),
(22, 'files', 'keywords', 'anomaly.field_type.tags', 'a:0:{}', 1),
(23, 'files', 'extension', 'anomaly.field_type.text', 'a:0:{}', 1),
(24, 'files', 'width', 'anomaly.field_type.text', 'a:0:{}', 1),
(25, 'files', 'height', 'anomaly.field_type.text', 'a:0:{}', 1),
(26, 'files', 'mime_type', 'anomaly.field_type.text', 'a:0:{}', 1),
(27, 'files', 'size', 'anomaly.field_type.integer', 'a:0:{}', 1),
(28, 'navigation', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(29, 'navigation', 'class', 'anomaly.field_type.text', 'a:0:{}', 1),
(30, 'navigation', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(31, 'navigation', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(32, 'navigation', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(33, 'navigation', 'menu', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Menu\\MenuModel\";}', 1),
(34, 'navigation', 'parent', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Link\\LinkModel\";}', 1),
(35, 'navigation', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(36, 'navigation', 'type', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:38:\"anomaly.module.navigation::link_type.*\";}', 1),
(37, 'navigation', 'target', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:5:\"_self\";s:7:\"options\";a:2:{s:5:\"_self\";s:51:\"anomaly.module.navigation::field.target.option.self\";s:6:\"_blank\";s:52:\"anomaly.module.navigation::field.target.option.blank\";}}', 1),
(38, 'pages', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(39, 'pages', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(40, 'pages', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}', 1),
(41, 'pages', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 0),
(42, 'pages', 'path', 'anomaly.field_type.text', 'a:0:{}', 1),
(43, 'pages', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(44, 'pages', 'home', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(45, 'pages', 'meta_title', 'anomaly.field_type.text', 'a:0:{}', 1),
(46, 'pages', 'meta_description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(47, 'pages', 'meta_keywords', 'anomaly.field_type.tags', 'a:0:{}', 1),
(48, 'pages', 'layout', 'anomaly.field_type.editor', 'a:2:{s:13:\"default_value\";s:25:\"<h1>{{ page.title }}</h1>\";s:4:\"mode\";s:4:\"twig\";}', 1),
(49, 'pages', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(50, 'pages', 'parent', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}', 1),
(51, 'pages', 'theme_layout', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:27:\"theme::layouts/default.twig\";s:7:\"handler\";s:46:\"Anomaly\\SelectFieldType\\Handler\\Layouts@handle\";}', 1),
(52, 'pages', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Type\\TypeModel\";}', 1),
(53, 'pages', 'handler', 'anomaly.field_type.addon', 'a:3:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:31:\"anomaly.module.pages::handler.*\";s:13:\"default_value\";s:38:\"anomaly.extension.default_page_handler\";}', 1),
(54, 'pages', 'visible', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(55, 'pages', 'exact', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(56, 'pages', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(57, 'pages', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(58, 'pages', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(59, 'posts', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(60, 'posts', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(61, 'posts', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(62, 'posts', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}', 1),
(63, 'posts', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 0),
(64, 'posts', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PostsModule\\Type\\TypeModel\";}', 1),
(65, 'posts', 'tags', 'anomaly.field_type.tags', 'a:0:{}', 1),
(66, 'posts', 'summary', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(67, 'posts', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(68, 'posts', 'publish_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(69, 'posts', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(70, 'posts', 'author', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}', 1),
(71, 'posts', 'layout', 'anomaly.field_type.editor', 'a:2:{s:13:\"default_value\";s:22:\"{{ post.content|raw }}\";s:4:\"mode\";s:4:\"twig\";}', 1),
(72, 'posts', 'category', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:42:\"Anomaly\\PostsModule\\Category\\CategoryModel\";}', 1),
(73, 'posts', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(74, 'posts', 'featured', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(75, 'posts', 'meta_title', 'anomaly.field_type.text', 'a:0:{}', 1),
(76, 'posts', 'meta_description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(77, 'posts', 'meta_keywords', 'anomaly.field_type.tags', 'a:0:{}', 1),
(78, 'posts', 'ttl', 'anomaly.field_type.integer', 'a:3:{s:3:\"min\";i:0;s:4:\"step\";i:1;s:4:\"page\";i:5;}', 1),
(79, 'posts', 'theme_layout', 'anomaly.field_type.select', 'a:1:{s:7:\"handler\";s:39:\"Anomaly\\SelectFieldType\\Handler\\Layouts\";}', 1),
(80, 'preferences', 'user', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}', 1),
(81, 'preferences', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(82, 'preferences', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(83, 'redirects', 'from', 'anomaly.field_type.text', 'a:0:{}', 1),
(84, 'redirects', 'to', 'anomaly.field_type.text', 'a:0:{}', 1),
(85, 'redirects', 'status', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:3:\"301\";s:7:\"options\";a:2:{i:301;s:49:\"anomaly.module.redirects::field.status.option.301\";i:302;s:49:\"anomaly.module.redirects::field.status.option.302\";}}', 1),
(86, 'redirects', 'secure', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(87, 'settings', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(88, 'settings', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(89, 'users', 'email', 'anomaly.field_type.email', 'a:0:{}', 1),
(90, 'users', 'username', 'anomaly.field_type.slug', 'a:2:{s:4:\"type\";s:1:\"_\";s:9:\"lowercase\";b:0;}', 1),
(91, 'users', 'password', 'anomaly.field_type.text', 'a:1:{s:4:\"type\";s:8:\"password\";}', 1),
(92, 'users', 'remember_token', 'anomaly.field_type.text', 'a:0:{}', 1),
(93, 'users', 'ip_address', 'anomaly.field_type.text', 'a:0:{}', 1),
(94, 'users', 'last_login_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(95, 'users', 'last_activity_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(96, 'users', 'permissions', 'anomaly.field_type.checkboxes', 'a:0:{}', 1),
(97, 'users', 'display_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(98, 'users', 'first_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(99, 'users', 'last_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(100, 'users', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(101, 'users', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(102, 'users', 'reset_code', 'anomaly.field_type.text', 'a:0:{}', 1),
(103, 'users', 'reset_code_expires_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(104, 'users', 'activation_code', 'anomaly.field_type.text', 'a:0:{}', 1),
(105, 'users', 'activation_code_expires_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(106, 'users', 'activated', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(107, 'users', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(108, 'users', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(109, 'users', 'roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(110, 'page_link_type', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(111, 'page_link_type', 'page', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}', 1),
(112, 'page_link_type', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(113, 'url_link_type', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(114, 'url_link_type', 'url', 'anomaly.field_type.text', 'a:0:{}', 1),
(115, 'url_link_type', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(128, 'slideshows', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(129, 'slideshows', 'slug', 'anomaly.field_type.slug', 'a:2:{s:4:\"type\";s:1:\"-\";s:7:\"slugify\";s:5:\"title\";}', 1),
(130, 'slideshows', 'publish', 'anomaly.field_type.boolean', 'a:2:{s:13:\"default_value\";b:1;s:4:\"mode\";s:5:\"radio\";}', 1),
(131, 'slideshows', 'image', 'anomaly.field_type.file', 'a:0:{}', 1),
(132, 'slideshows', 'summary', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(133, 'slideshows', 'description', 'anomaly.field_type.wysiwyg', 'a:0:{}', 1),
(160, 'sales', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(161, 'sales', 'slug', 'anomaly.field_type.slug', 'a:2:{s:4:\"type\";s:1:\"-\";s:7:\"slugify\";s:4:\"name\";}', 1),
(162, 'sales', 'email', 'anomaly.field_type.email', 'a:0:{}', 1),
(163, 'sales', 'website', 'anomaly.field_type.text', 'a:0:{}', 1),
(164, 'sales', 'models', 'anomaly.field_type.multiple', 'a:2:{s:10:\"title_name\";s:4:\"name\";s:7:\"related\";s:43:\"Toyotadjakarta\\SalesModule\\Model\\ModelModel\";}', 1),
(165, 'sales', 'publish', 'anomaly.field_type.boolean', 'a:2:{s:13:\"default_value\";b:1;s:4:\"mode\";s:5:\"radio\";}', 1),
(166, 'sales', 'image', 'anomaly.field_type.file', 'a:0:{}', 1),
(167, 'sales', 'summary', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(168, 'sales', 'comment', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(169, 'sales', 'description', 'anomaly.field_type.wysiwyg', 'a:0:{}', 1),
(170, 'sales', 'price', 'anomaly.field_type.decimal', 'a:0:{}', 1),
(171, 'sales', 'notify_follow_up', 'anomaly.field_type.boolean', 'a:2:{s:13:\"default_value\";b:1;s:4:\"mode\";s:5:\"radio\";}', 1),
(172, 'sales', 'notify_post', 'anomaly.field_type.boolean', 'a:2:{s:13:\"default_value\";b:1;s:4:\"mode\";s:5:\"radio\";}', 1),
(173, 'pages', 'image', 'anomaly.field_type.file', 'a:3:{s:7:\"folders\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"5\";}s:3:\"max\";s:3:\"2.0\";s:4:\"mode\";s:7:\"default\";}', 0),
(174, 'posts', 'image', 'anomaly.field_type.file', 'a:3:{s:7:\"folders\";a:1:{i:0;s:1:\"1\";}s:3:\"max\";s:3:\"3.0\";s:4:\"mode\";s:7:\"default\";}', 0),
(175, 'contacts', 'company', 'anomaly.field_type.text', 'a:0:{}', 1),
(176, 'contacts', 'publish', 'anomaly.field_type.boolean', 'a:2:{s:13:\"default_value\";b:1;s:4:\"mode\";s:5:\"radio\";}', 1),
(177, 'contacts', 'division', 'anomaly.field_type.text', 'a:0:{}', 1),
(178, 'contacts', 'address', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(179, 'contacts', 'phone', 'anomaly.field_type.text', 'a:0:{}', 1),
(180, 'contacts', 'fax', 'anomaly.field_type.text', 'a:0:{}', 1),
(181, 'contacts', 'company_email', 'anomaly.field_type.email', 'a:0:{}', 1),
(182, 'contacts', 'sales_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(183, 'contacts', 'photo', 'anomaly.field_type.file', 'a:0:{}', 1),
(184, 'contacts', 'mobile01', 'anomaly.field_type.text', 'a:0:{}', 1),
(185, 'contacts', 'mobile02', 'anomaly.field_type.text', 'a:0:{}', 1),
(186, 'contacts', 'personal_email', 'anomaly.field_type.email', 'a:0:{}', 1),
(187, 'contacts', 'biodata', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(188, 'contacts', 'note', 'anomaly.field_type.textarea', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_streams_fields_translations`
--

CREATE TABLE `toyotadjakarta_streams_fields_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_streams_fields_translations`
--

INSERT INTO `toyotadjakarta_streams_fields_translations` (`id`, `field_id`, `locale`, `name`, `placeholder`, `warning`, `instructions`) VALUES
(1, 1, 'en', 'anomaly.module.configuration::field.scope.name', 'anomaly.module.configuration::field.scope.placeholder', 'anomaly.module.configuration::field.scope.warning', 'anomaly.module.configuration::field.scope.instructions'),
(2, 2, 'en', 'anomaly.module.configuration::field.key.name', 'anomaly.module.configuration::field.key.placeholder', 'anomaly.module.configuration::field.key.warning', 'anomaly.module.configuration::field.key.instructions'),
(3, 3, 'en', 'anomaly.module.configuration::field.value.name', 'anomaly.module.configuration::field.value.placeholder', 'anomaly.module.configuration::field.value.warning', 'anomaly.module.configuration::field.value.instructions'),
(4, 4, 'en', 'anomaly.module.dashboard::field.name.name', 'anomaly.module.dashboard::field.name.placeholder', 'anomaly.module.dashboard::field.name.warning', 'anomaly.module.dashboard::field.name.instructions'),
(5, 5, 'en', 'anomaly.module.dashboard::field.slug.name', 'anomaly.module.dashboard::field.slug.placeholder', 'anomaly.module.dashboard::field.slug.warning', 'anomaly.module.dashboard::field.slug.instructions'),
(6, 6, 'en', 'anomaly.module.dashboard::field.description.name', 'anomaly.module.dashboard::field.description.placeholder', 'anomaly.module.dashboard::field.description.warning', 'anomaly.module.dashboard::field.description.instructions'),
(7, 7, 'en', 'anomaly.module.dashboard::field.layout.name', 'anomaly.module.dashboard::field.layout.placeholder', 'anomaly.module.dashboard::field.layout.warning', 'anomaly.module.dashboard::field.layout.instructions'),
(8, 8, 'en', 'anomaly.module.dashboard::field.title.name', 'anomaly.module.dashboard::field.title.placeholder', 'anomaly.module.dashboard::field.title.warning', 'anomaly.module.dashboard::field.title.instructions'),
(9, 9, 'en', 'anomaly.module.dashboard::field.extension.name', 'anomaly.module.dashboard::field.extension.placeholder', 'anomaly.module.dashboard::field.extension.warning', 'anomaly.module.dashboard::field.extension.instructions'),
(10, 10, 'en', 'anomaly.module.dashboard::field.column.name', 'anomaly.module.dashboard::field.column.placeholder', 'anomaly.module.dashboard::field.column.warning', 'anomaly.module.dashboard::field.column.instructions'),
(11, 11, 'en', 'anomaly.module.dashboard::field.pinned.name', 'anomaly.module.dashboard::field.pinned.placeholder', 'anomaly.module.dashboard::field.pinned.warning', 'anomaly.module.dashboard::field.pinned.instructions'),
(12, 12, 'en', 'anomaly.module.dashboard::field.dashboard.name', 'anomaly.module.dashboard::field.dashboard.placeholder', 'anomaly.module.dashboard::field.dashboard.warning', 'anomaly.module.dashboard::field.dashboard.instructions'),
(13, 13, 'en', 'anomaly.module.dashboard::field.allowed_roles.name', 'anomaly.module.dashboard::field.allowed_roles.placeholder', 'anomaly.module.dashboard::field.allowed_roles.warning', 'anomaly.module.dashboard::field.allowed_roles.instructions'),
(14, 14, 'en', 'anomaly.module.files::field.name.name', 'anomaly.module.files::field.name.placeholder', 'anomaly.module.files::field.name.warning', 'anomaly.module.files::field.name.instructions'),
(15, 15, 'en', 'anomaly.module.files::field.slug.name', 'anomaly.module.files::field.slug.placeholder', 'anomaly.module.files::field.slug.warning', 'anomaly.module.files::field.slug.instructions'),
(16, 16, 'en', 'anomaly.module.files::field.adapter.name', 'anomaly.module.files::field.adapter.placeholder', 'anomaly.module.files::field.adapter.warning', 'anomaly.module.files::field.adapter.instructions'),
(17, 17, 'en', 'anomaly.module.files::field.folder.name', 'anomaly.module.files::field.folder.placeholder', 'anomaly.module.files::field.folder.warning', 'anomaly.module.files::field.folder.instructions'),
(18, 18, 'en', 'anomaly.module.files::field.disk.name', 'anomaly.module.files::field.disk.placeholder', 'anomaly.module.files::field.disk.warning', 'anomaly.module.files::field.disk.instructions'),
(19, 19, 'en', 'anomaly.module.files::field.entry.name', 'anomaly.module.files::field.entry.placeholder', 'anomaly.module.files::field.entry.warning', 'anomaly.module.files::field.entry.instructions'),
(20, 20, 'en', 'anomaly.module.files::field.description.name', 'anomaly.module.files::field.description.placeholder', 'anomaly.module.files::field.description.warning', 'anomaly.module.files::field.description.instructions'),
(21, 21, 'en', 'anomaly.module.files::field.allowed_types.name', 'anomaly.module.files::field.allowed_types.placeholder', 'anomaly.module.files::field.allowed_types.warning', 'anomaly.module.files::field.allowed_types.instructions'),
(22, 22, 'en', 'anomaly.module.files::field.keywords.name', 'anomaly.module.files::field.keywords.placeholder', 'anomaly.module.files::field.keywords.warning', 'anomaly.module.files::field.keywords.instructions'),
(23, 23, 'en', 'anomaly.module.files::field.extension.name', 'anomaly.module.files::field.extension.placeholder', 'anomaly.module.files::field.extension.warning', 'anomaly.module.files::field.extension.instructions'),
(24, 24, 'en', 'anomaly.module.files::field.width.name', 'anomaly.module.files::field.width.placeholder', 'anomaly.module.files::field.width.warning', 'anomaly.module.files::field.width.instructions'),
(25, 25, 'en', 'anomaly.module.files::field.height.name', 'anomaly.module.files::field.height.placeholder', 'anomaly.module.files::field.height.warning', 'anomaly.module.files::field.height.instructions'),
(26, 26, 'en', 'anomaly.module.files::field.mime_type.name', 'anomaly.module.files::field.mime_type.placeholder', 'anomaly.module.files::field.mime_type.warning', 'anomaly.module.files::field.mime_type.instructions'),
(27, 27, 'en', 'anomaly.module.files::field.size.name', 'anomaly.module.files::field.size.placeholder', 'anomaly.module.files::field.size.warning', 'anomaly.module.files::field.size.instructions'),
(28, 28, 'en', 'anomaly.module.navigation::field.name.name', 'anomaly.module.navigation::field.name.placeholder', 'anomaly.module.navigation::field.name.warning', 'anomaly.module.navigation::field.name.instructions'),
(29, 29, 'en', 'anomaly.module.navigation::field.class.name', 'anomaly.module.navigation::field.class.placeholder', 'anomaly.module.navigation::field.class.warning', 'anomaly.module.navigation::field.class.instructions'),
(30, 30, 'en', 'anomaly.module.navigation::field.description.name', 'anomaly.module.navigation::field.description.placeholder', 'anomaly.module.navigation::field.description.warning', 'anomaly.module.navigation::field.description.instructions'),
(31, 31, 'en', 'anomaly.module.navigation::field.entry.name', 'anomaly.module.navigation::field.entry.placeholder', 'anomaly.module.navigation::field.entry.warning', 'anomaly.module.navigation::field.entry.instructions'),
(32, 32, 'en', 'anomaly.module.navigation::field.slug.name', 'anomaly.module.navigation::field.slug.placeholder', 'anomaly.module.navigation::field.slug.warning', 'anomaly.module.navigation::field.slug.instructions'),
(33, 33, 'en', 'anomaly.module.navigation::field.menu.name', 'anomaly.module.navigation::field.menu.placeholder', 'anomaly.module.navigation::field.menu.warning', 'anomaly.module.navigation::field.menu.instructions'),
(34, 34, 'en', 'anomaly.module.navigation::field.parent.name', 'anomaly.module.navigation::field.parent.placeholder', 'anomaly.module.navigation::field.parent.warning', 'anomaly.module.navigation::field.parent.instructions'),
(35, 35, 'en', 'anomaly.module.navigation::field.allowed_roles.name', 'anomaly.module.navigation::field.allowed_roles.placeholder', 'anomaly.module.navigation::field.allowed_roles.warning', 'anomaly.module.navigation::field.allowed_roles.instructions'),
(36, 36, 'en', 'anomaly.module.navigation::field.type.name', 'anomaly.module.navigation::field.type.placeholder', 'anomaly.module.navigation::field.type.warning', 'anomaly.module.navigation::field.type.instructions'),
(37, 37, 'en', 'anomaly.module.navigation::field.target.name', 'anomaly.module.navigation::field.target.placeholder', 'anomaly.module.navigation::field.target.warning', 'anomaly.module.navigation::field.target.instructions'),
(38, 38, 'en', 'anomaly.module.pages::field.str_id.name', 'anomaly.module.pages::field.str_id.placeholder', 'anomaly.module.pages::field.str_id.warning', 'anomaly.module.pages::field.str_id.instructions'),
(39, 39, 'en', 'anomaly.module.pages::field.title.name', 'anomaly.module.pages::field.title.placeholder', 'anomaly.module.pages::field.title.warning', 'anomaly.module.pages::field.title.instructions'),
(40, 40, 'en', 'anomaly.module.pages::field.slug.name', 'anomaly.module.pages::field.slug.placeholder', 'anomaly.module.pages::field.slug.warning', 'anomaly.module.pages::field.slug.instructions'),
(41, 41, 'en', 'anomaly.module.pages::field.content.name', 'anomaly.module.pages::field.content.placeholder', 'anomaly.module.pages::field.content.warning', 'anomaly.module.pages::field.content.instructions'),
(42, 42, 'en', 'anomaly.module.pages::field.path.name', 'anomaly.module.pages::field.path.placeholder', 'anomaly.module.pages::field.path.warning', 'anomaly.module.pages::field.path.instructions'),
(43, 43, 'en', 'anomaly.module.pages::field.enabled.name', 'anomaly.module.pages::field.enabled.placeholder', 'anomaly.module.pages::field.enabled.warning', 'anomaly.module.pages::field.enabled.instructions'),
(44, 44, 'en', 'anomaly.module.pages::field.home.name', 'anomaly.module.pages::field.home.placeholder', 'anomaly.module.pages::field.home.warning', 'anomaly.module.pages::field.home.instructions'),
(45, 45, 'en', 'anomaly.module.pages::field.meta_title.name', 'anomaly.module.pages::field.meta_title.placeholder', 'anomaly.module.pages::field.meta_title.warning', 'anomaly.module.pages::field.meta_title.instructions'),
(46, 46, 'en', 'anomaly.module.pages::field.meta_description.name', 'anomaly.module.pages::field.meta_description.placeholder', 'anomaly.module.pages::field.meta_description.warning', 'anomaly.module.pages::field.meta_description.instructions'),
(47, 47, 'en', 'anomaly.module.pages::field.meta_keywords.name', 'anomaly.module.pages::field.meta_keywords.placeholder', 'anomaly.module.pages::field.meta_keywords.warning', 'anomaly.module.pages::field.meta_keywords.instructions'),
(48, 48, 'en', 'anomaly.module.pages::field.layout.name', 'anomaly.module.pages::field.layout.placeholder', 'anomaly.module.pages::field.layout.warning', 'anomaly.module.pages::field.layout.instructions'),
(49, 49, 'en', 'anomaly.module.pages::field.allowed_roles.name', 'anomaly.module.pages::field.allowed_roles.placeholder', 'anomaly.module.pages::field.allowed_roles.warning', 'anomaly.module.pages::field.allowed_roles.instructions'),
(50, 50, 'en', 'anomaly.module.pages::field.parent.name', 'anomaly.module.pages::field.parent.placeholder', 'anomaly.module.pages::field.parent.warning', 'anomaly.module.pages::field.parent.instructions'),
(51, 51, 'en', 'anomaly.module.pages::field.theme_layout.name', 'anomaly.module.pages::field.theme_layout.placeholder', 'anomaly.module.pages::field.theme_layout.warning', 'anomaly.module.pages::field.theme_layout.instructions'),
(52, 52, 'en', 'anomaly.module.pages::field.type.name', 'anomaly.module.pages::field.type.placeholder', 'anomaly.module.pages::field.type.warning', 'anomaly.module.pages::field.type.instructions'),
(53, 53, 'en', 'anomaly.module.pages::field.handler.name', 'anomaly.module.pages::field.handler.placeholder', 'anomaly.module.pages::field.handler.warning', 'anomaly.module.pages::field.handler.instructions'),
(54, 54, 'en', 'anomaly.module.pages::field.visible.name', 'anomaly.module.pages::field.visible.placeholder', 'anomaly.module.pages::field.visible.warning', 'anomaly.module.pages::field.visible.instructions'),
(55, 55, 'en', 'anomaly.module.pages::field.exact.name', 'anomaly.module.pages::field.exact.placeholder', 'anomaly.module.pages::field.exact.warning', 'anomaly.module.pages::field.exact.instructions'),
(56, 56, 'en', 'anomaly.module.pages::field.entry.name', 'anomaly.module.pages::field.entry.placeholder', 'anomaly.module.pages::field.entry.warning', 'anomaly.module.pages::field.entry.instructions'),
(57, 57, 'en', 'anomaly.module.pages::field.name.name', 'anomaly.module.pages::field.name.placeholder', 'anomaly.module.pages::field.name.warning', 'anomaly.module.pages::field.name.instructions'),
(58, 58, 'en', 'anomaly.module.pages::field.description.name', 'anomaly.module.pages::field.description.placeholder', 'anomaly.module.pages::field.description.warning', 'anomaly.module.pages::field.description.instructions'),
(59, 59, 'en', 'anomaly.module.posts::field.str_id.name', 'anomaly.module.posts::field.str_id.placeholder', 'anomaly.module.posts::field.str_id.warning', 'anomaly.module.posts::field.str_id.instructions'),
(60, 60, 'en', 'anomaly.module.posts::field.name.name', 'anomaly.module.posts::field.name.placeholder', 'anomaly.module.posts::field.name.warning', 'anomaly.module.posts::field.name.instructions'),
(61, 61, 'en', 'anomaly.module.posts::field.title.name', 'anomaly.module.posts::field.title.placeholder', 'anomaly.module.posts::field.title.warning', 'anomaly.module.posts::field.title.instructions'),
(62, 62, 'en', 'anomaly.module.posts::field.slug.name', 'anomaly.module.posts::field.slug.placeholder', 'anomaly.module.posts::field.slug.warning', 'anomaly.module.posts::field.slug.instructions'),
(63, 63, 'en', 'anomaly.module.posts::field.content.name', 'anomaly.module.posts::field.content.placeholder', 'anomaly.module.posts::field.content.warning', 'anomaly.module.posts::field.content.instructions'),
(64, 64, 'en', 'anomaly.module.posts::field.type.name', 'anomaly.module.posts::field.type.placeholder', 'anomaly.module.posts::field.type.warning', 'anomaly.module.posts::field.type.instructions'),
(65, 65, 'en', 'anomaly.module.posts::field.tags.name', 'anomaly.module.posts::field.tags.placeholder', 'anomaly.module.posts::field.tags.warning', 'anomaly.module.posts::field.tags.instructions'),
(66, 66, 'en', 'anomaly.module.posts::field.summary.name', 'anomaly.module.posts::field.summary.placeholder', 'anomaly.module.posts::field.summary.warning', 'anomaly.module.posts::field.summary.instructions'),
(67, 67, 'en', 'anomaly.module.posts::field.description.name', 'anomaly.module.posts::field.description.placeholder', 'anomaly.module.posts::field.description.warning', 'anomaly.module.posts::field.description.instructions'),
(68, 68, 'en', 'anomaly.module.posts::field.publish_at.name', 'anomaly.module.posts::field.publish_at.placeholder', 'anomaly.module.posts::field.publish_at.warning', 'anomaly.module.posts::field.publish_at.instructions'),
(69, 69, 'en', 'anomaly.module.posts::field.entry.name', 'anomaly.module.posts::field.entry.placeholder', 'anomaly.module.posts::field.entry.warning', 'anomaly.module.posts::field.entry.instructions'),
(70, 70, 'en', 'anomaly.module.posts::field.author.name', 'anomaly.module.posts::field.author.placeholder', 'anomaly.module.posts::field.author.warning', 'anomaly.module.posts::field.author.instructions'),
(71, 71, 'en', 'anomaly.module.posts::field.layout.name', 'anomaly.module.posts::field.layout.placeholder', 'anomaly.module.posts::field.layout.warning', 'anomaly.module.posts::field.layout.instructions'),
(72, 72, 'en', 'anomaly.module.posts::field.category.name', 'anomaly.module.posts::field.category.placeholder', 'anomaly.module.posts::field.category.warning', 'anomaly.module.posts::field.category.instructions'),
(73, 73, 'en', 'anomaly.module.posts::field.enabled.name', 'anomaly.module.posts::field.enabled.placeholder', 'anomaly.module.posts::field.enabled.warning', 'anomaly.module.posts::field.enabled.instructions'),
(74, 74, 'en', 'anomaly.module.posts::field.featured.name', 'anomaly.module.posts::field.featured.placeholder', 'anomaly.module.posts::field.featured.warning', 'anomaly.module.posts::field.featured.instructions'),
(75, 75, 'en', 'anomaly.module.posts::field.meta_title.name', 'anomaly.module.posts::field.meta_title.placeholder', 'anomaly.module.posts::field.meta_title.warning', 'anomaly.module.posts::field.meta_title.instructions'),
(76, 76, 'en', 'anomaly.module.posts::field.meta_description.name', 'anomaly.module.posts::field.meta_description.placeholder', 'anomaly.module.posts::field.meta_description.warning', 'anomaly.module.posts::field.meta_description.instructions'),
(77, 77, 'en', 'anomaly.module.posts::field.meta_keywords.name', 'anomaly.module.posts::field.meta_keywords.placeholder', 'anomaly.module.posts::field.meta_keywords.warning', 'anomaly.module.posts::field.meta_keywords.instructions'),
(78, 78, 'en', 'anomaly.module.posts::field.ttl.name', 'anomaly.module.posts::field.ttl.placeholder', 'anomaly.module.posts::field.ttl.warning', 'anomaly.module.posts::field.ttl.instructions'),
(79, 79, 'en', 'anomaly.module.posts::field.theme_layout.name', 'anomaly.module.posts::field.theme_layout.placeholder', 'anomaly.module.posts::field.theme_layout.warning', 'anomaly.module.posts::field.theme_layout.instructions'),
(80, 80, 'en', 'anomaly.module.preferences::field.user.name', 'anomaly.module.preferences::field.user.placeholder', 'anomaly.module.preferences::field.user.warning', 'anomaly.module.preferences::field.user.instructions'),
(81, 81, 'en', 'anomaly.module.preferences::field.key.name', 'anomaly.module.preferences::field.key.placeholder', 'anomaly.module.preferences::field.key.warning', 'anomaly.module.preferences::field.key.instructions'),
(82, 82, 'en', 'anomaly.module.preferences::field.value.name', 'anomaly.module.preferences::field.value.placeholder', 'anomaly.module.preferences::field.value.warning', 'anomaly.module.preferences::field.value.instructions'),
(83, 83, 'en', 'anomaly.module.redirects::field.from.name', 'anomaly.module.redirects::field.from.placeholder', 'anomaly.module.redirects::field.from.warning', 'anomaly.module.redirects::field.from.instructions'),
(84, 84, 'en', 'anomaly.module.redirects::field.to.name', 'anomaly.module.redirects::field.to.placeholder', 'anomaly.module.redirects::field.to.warning', 'anomaly.module.redirects::field.to.instructions'),
(85, 85, 'en', 'anomaly.module.redirects::field.status.name', 'anomaly.module.redirects::field.status.placeholder', 'anomaly.module.redirects::field.status.warning', 'anomaly.module.redirects::field.status.instructions'),
(86, 86, 'en', 'anomaly.module.redirects::field.secure.name', 'anomaly.module.redirects::field.secure.placeholder', 'anomaly.module.redirects::field.secure.warning', 'anomaly.module.redirects::field.secure.instructions'),
(87, 87, 'en', 'anomaly.module.settings::field.key.name', 'anomaly.module.settings::field.key.placeholder', 'anomaly.module.settings::field.key.warning', 'anomaly.module.settings::field.key.instructions'),
(88, 88, 'en', 'anomaly.module.settings::field.value.name', 'anomaly.module.settings::field.value.placeholder', 'anomaly.module.settings::field.value.warning', 'anomaly.module.settings::field.value.instructions'),
(89, 89, 'en', 'anomaly.module.users::field.email.name', 'anomaly.module.users::field.email.placeholder', 'anomaly.module.users::field.email.warning', 'anomaly.module.users::field.email.instructions'),
(90, 90, 'en', 'anomaly.module.users::field.username.name', 'anomaly.module.users::field.username.placeholder', 'anomaly.module.users::field.username.warning', 'anomaly.module.users::field.username.instructions'),
(91, 91, 'en', 'anomaly.module.users::field.password.name', 'anomaly.module.users::field.password.placeholder', 'anomaly.module.users::field.password.warning', 'anomaly.module.users::field.password.instructions'),
(92, 92, 'en', 'anomaly.module.users::field.remember_token.name', 'anomaly.module.users::field.remember_token.placeholder', 'anomaly.module.users::field.remember_token.warning', 'anomaly.module.users::field.remember_token.instructions'),
(93, 93, 'en', 'anomaly.module.users::field.ip_address.name', 'anomaly.module.users::field.ip_address.placeholder', 'anomaly.module.users::field.ip_address.warning', 'anomaly.module.users::field.ip_address.instructions'),
(94, 94, 'en', 'anomaly.module.users::field.last_login_at.name', 'anomaly.module.users::field.last_login_at.placeholder', 'anomaly.module.users::field.last_login_at.warning', 'anomaly.module.users::field.last_login_at.instructions'),
(95, 95, 'en', 'anomaly.module.users::field.last_activity_at.name', 'anomaly.module.users::field.last_activity_at.placeholder', 'anomaly.module.users::field.last_activity_at.warning', 'anomaly.module.users::field.last_activity_at.instructions'),
(96, 96, 'en', 'anomaly.module.users::field.permissions.name', 'anomaly.module.users::field.permissions.placeholder', 'anomaly.module.users::field.permissions.warning', 'anomaly.module.users::field.permissions.instructions'),
(97, 97, 'en', 'anomaly.module.users::field.display_name.name', 'anomaly.module.users::field.display_name.placeholder', 'anomaly.module.users::field.display_name.warning', 'anomaly.module.users::field.display_name.instructions'),
(98, 98, 'en', 'anomaly.module.users::field.first_name.name', 'anomaly.module.users::field.first_name.placeholder', 'anomaly.module.users::field.first_name.warning', 'anomaly.module.users::field.first_name.instructions'),
(99, 99, 'en', 'anomaly.module.users::field.last_name.name', 'anomaly.module.users::field.last_name.placeholder', 'anomaly.module.users::field.last_name.warning', 'anomaly.module.users::field.last_name.instructions'),
(100, 100, 'en', 'anomaly.module.users::field.name.name', 'anomaly.module.users::field.name.placeholder', 'anomaly.module.users::field.name.warning', 'anomaly.module.users::field.name.instructions'),
(101, 101, 'en', 'anomaly.module.users::field.description.name', 'anomaly.module.users::field.description.placeholder', 'anomaly.module.users::field.description.warning', 'anomaly.module.users::field.description.instructions'),
(102, 102, 'en', 'anomaly.module.users::field.reset_code.name', 'anomaly.module.users::field.reset_code.placeholder', 'anomaly.module.users::field.reset_code.warning', 'anomaly.module.users::field.reset_code.instructions'),
(103, 103, 'en', 'anomaly.module.users::field.reset_code_expires_at.name', 'anomaly.module.users::field.reset_code_expires_at.placeholder', 'anomaly.module.users::field.reset_code_expires_at.warning', 'anomaly.module.users::field.reset_code_expires_at.instructions'),
(104, 104, 'en', 'anomaly.module.users::field.activation_code.name', 'anomaly.module.users::field.activation_code.placeholder', 'anomaly.module.users::field.activation_code.warning', 'anomaly.module.users::field.activation_code.instructions'),
(105, 105, 'en', 'anomaly.module.users::field.activation_code_expires_at.name', 'anomaly.module.users::field.activation_code_expires_at.placeholder', 'anomaly.module.users::field.activation_code_expires_at.warning', 'anomaly.module.users::field.activation_code_expires_at.instructions'),
(106, 106, 'en', 'anomaly.module.users::field.activated.name', 'anomaly.module.users::field.activated.placeholder', 'anomaly.module.users::field.activated.warning', 'anomaly.module.users::field.activated.instructions'),
(107, 107, 'en', 'anomaly.module.users::field.enabled.name', 'anomaly.module.users::field.enabled.placeholder', 'anomaly.module.users::field.enabled.warning', 'anomaly.module.users::field.enabled.instructions'),
(108, 108, 'en', 'anomaly.module.users::field.slug.name', 'anomaly.module.users::field.slug.placeholder', 'anomaly.module.users::field.slug.warning', 'anomaly.module.users::field.slug.instructions'),
(109, 109, 'en', 'anomaly.module.users::field.roles.name', 'anomaly.module.users::field.roles.placeholder', 'anomaly.module.users::field.roles.warning', 'anomaly.module.users::field.roles.instructions'),
(110, 110, 'en', 'anomaly.extension.page_link_type::field.title.name', 'anomaly.extension.page_link_type::field.title.placeholder', 'anomaly.extension.page_link_type::field.title.warning', 'anomaly.extension.page_link_type::field.title.instructions'),
(111, 111, 'en', 'anomaly.extension.page_link_type::field.page.name', 'anomaly.extension.page_link_type::field.page.placeholder', 'anomaly.extension.page_link_type::field.page.warning', 'anomaly.extension.page_link_type::field.page.instructions'),
(112, 112, 'en', 'anomaly.extension.page_link_type::field.description.name', 'anomaly.extension.page_link_type::field.description.placeholder', 'anomaly.extension.page_link_type::field.description.warning', 'anomaly.extension.page_link_type::field.description.instructions'),
(113, 113, 'en', 'anomaly.extension.url_link_type::field.title.name', 'anomaly.extension.url_link_type::field.title.placeholder', 'anomaly.extension.url_link_type::field.title.warning', 'anomaly.extension.url_link_type::field.title.instructions'),
(114, 114, 'en', 'anomaly.extension.url_link_type::field.url.name', 'anomaly.extension.url_link_type::field.url.placeholder', 'anomaly.extension.url_link_type::field.url.warning', 'anomaly.extension.url_link_type::field.url.instructions'),
(115, 115, 'en', 'anomaly.extension.url_link_type::field.description.name', 'anomaly.extension.url_link_type::field.description.placeholder', 'anomaly.extension.url_link_type::field.description.warning', 'anomaly.extension.url_link_type::field.description.instructions'),
(128, 128, 'en', 'toyotadjakarta.module.slideshows::field.title.name', 'toyotadjakarta.module.slideshows::field.title.placeholder', 'toyotadjakarta.module.slideshows::field.title.warning', 'toyotadjakarta.module.slideshows::field.title.instructions'),
(129, 129, 'en', 'toyotadjakarta.module.slideshows::field.slug.name', 'toyotadjakarta.module.slideshows::field.slug.placeholder', 'toyotadjakarta.module.slideshows::field.slug.warning', 'toyotadjakarta.module.slideshows::field.slug.instructions'),
(130, 130, 'en', 'toyotadjakarta.module.slideshows::field.publish.name', 'toyotadjakarta.module.slideshows::field.publish.placeholder', 'toyotadjakarta.module.slideshows::field.publish.warning', 'toyotadjakarta.module.slideshows::field.publish.instructions'),
(131, 131, 'en', 'toyotadjakarta.module.slideshows::field.image.name', 'toyotadjakarta.module.slideshows::field.image.placeholder', 'toyotadjakarta.module.slideshows::field.image.warning', 'toyotadjakarta.module.slideshows::field.image.instructions'),
(132, 132, 'en', 'toyotadjakarta.module.slideshows::field.summary.name', 'toyotadjakarta.module.slideshows::field.summary.placeholder', 'toyotadjakarta.module.slideshows::field.summary.warning', 'toyotadjakarta.module.slideshows::field.summary.instructions'),
(133, 133, 'en', 'toyotadjakarta.module.slideshows::field.description.name', 'toyotadjakarta.module.slideshows::field.description.placeholder', 'toyotadjakarta.module.slideshows::field.description.warning', 'toyotadjakarta.module.slideshows::field.description.instructions'),
(160, 160, 'en', 'toyotadjakarta.module.sales::field.name.name', 'toyotadjakarta.module.sales::field.name.placeholder', 'toyotadjakarta.module.sales::field.name.warning', 'toyotadjakarta.module.sales::field.name.instructions'),
(161, 161, 'en', 'toyotadjakarta.module.sales::field.slug.name', 'toyotadjakarta.module.sales::field.slug.placeholder', 'toyotadjakarta.module.sales::field.slug.warning', 'toyotadjakarta.module.sales::field.slug.instructions'),
(162, 162, 'en', 'toyotadjakarta.module.sales::field.email.name', 'toyotadjakarta.module.sales::field.email.placeholder', 'toyotadjakarta.module.sales::field.email.warning', 'toyotadjakarta.module.sales::field.email.instructions'),
(163, 163, 'en', 'toyotadjakarta.module.sales::field.website.name', 'toyotadjakarta.module.sales::field.website.placeholder', 'toyotadjakarta.module.sales::field.website.warning', 'toyotadjakarta.module.sales::field.website.instructions'),
(164, 164, 'en', 'toyotadjakarta.module.sales::field.models.name', 'toyotadjakarta.module.sales::field.models.placeholder', 'toyotadjakarta.module.sales::field.models.warning', 'toyotadjakarta.module.sales::field.models.instructions'),
(165, 165, 'en', 'toyotadjakarta.module.sales::field.publish.name', 'toyotadjakarta.module.sales::field.publish.placeholder', 'toyotadjakarta.module.sales::field.publish.warning', 'toyotadjakarta.module.sales::field.publish.instructions'),
(166, 166, 'en', 'toyotadjakarta.module.sales::field.image.name', 'toyotadjakarta.module.sales::field.image.placeholder', 'toyotadjakarta.module.sales::field.image.warning', 'toyotadjakarta.module.sales::field.image.instructions'),
(167, 167, 'en', 'toyotadjakarta.module.sales::field.summary.name', 'toyotadjakarta.module.sales::field.summary.placeholder', 'toyotadjakarta.module.sales::field.summary.warning', 'toyotadjakarta.module.sales::field.summary.instructions'),
(168, 168, 'en', 'toyotadjakarta.module.sales::field.comment.name', 'toyotadjakarta.module.sales::field.comment.placeholder', 'toyotadjakarta.module.sales::field.comment.warning', 'toyotadjakarta.module.sales::field.comment.instructions'),
(169, 169, 'en', 'toyotadjakarta.module.sales::field.description.name', 'toyotadjakarta.module.sales::field.description.placeholder', 'toyotadjakarta.module.sales::field.description.warning', 'toyotadjakarta.module.sales::field.description.instructions'),
(170, 170, 'en', 'toyotadjakarta.module.sales::field.price.name', 'toyotadjakarta.module.sales::field.price.placeholder', 'toyotadjakarta.module.sales::field.price.warning', 'toyotadjakarta.module.sales::field.price.instructions'),
(171, 171, 'en', 'toyotadjakarta.module.sales::field.notify_follow_up.name', 'toyotadjakarta.module.sales::field.notify_follow_up.placeholder', 'toyotadjakarta.module.sales::field.notify_follow_up.warning', 'toyotadjakarta.module.sales::field.notify_follow_up.instructions'),
(172, 172, 'en', 'toyotadjakarta.module.sales::field.notify_post.name', 'toyotadjakarta.module.sales::field.notify_post.placeholder', 'toyotadjakarta.module.sales::field.notify_post.warning', 'toyotadjakarta.module.sales::field.notify_post.instructions'),
(173, 173, 'en', 'Image', 'Image', 'Please Upload a Image', 'Please Upload a Image'),
(174, 173, 'id', 'Image', 'Image', 'Please Upload a Image', 'Please Upload a Image'),
(175, 174, 'en', NULL, NULL, NULL, NULL),
(176, 174, 'id', 'Image', 'Please upload a image', 'Please upload a image', 'Please upload a image'),
(177, 175, 'en', 'toyotadjakarta.module.contacts::field.company.name', 'toyotadjakarta.module.contacts::field.company.placeholder', 'toyotadjakarta.module.contacts::field.company.warning', 'toyotadjakarta.module.contacts::field.company.instructions'),
(178, 176, 'en', 'toyotadjakarta.module.contacts::field.publish.name', 'toyotadjakarta.module.contacts::field.publish.placeholder', 'toyotadjakarta.module.contacts::field.publish.warning', 'toyotadjakarta.module.contacts::field.publish.instructions'),
(179, 177, 'en', 'toyotadjakarta.module.contacts::field.division.name', 'toyotadjakarta.module.contacts::field.division.placeholder', 'toyotadjakarta.module.contacts::field.division.warning', 'toyotadjakarta.module.contacts::field.division.instructions'),
(180, 178, 'en', 'toyotadjakarta.module.contacts::field.address.name', 'toyotadjakarta.module.contacts::field.address.placeholder', 'toyotadjakarta.module.contacts::field.address.warning', 'toyotadjakarta.module.contacts::field.address.instructions'),
(181, 179, 'en', 'toyotadjakarta.module.contacts::field.phone.name', 'toyotadjakarta.module.contacts::field.phone.placeholder', 'toyotadjakarta.module.contacts::field.phone.warning', 'toyotadjakarta.module.contacts::field.phone.instructions'),
(182, 180, 'en', 'toyotadjakarta.module.contacts::field.fax.name', 'toyotadjakarta.module.contacts::field.fax.placeholder', 'toyotadjakarta.module.contacts::field.fax.warning', 'toyotadjakarta.module.contacts::field.fax.instructions'),
(183, 181, 'en', 'toyotadjakarta.module.contacts::field.company_email.name', 'toyotadjakarta.module.contacts::field.company_email.placeholder', 'toyotadjakarta.module.contacts::field.company_email.warning', 'toyotadjakarta.module.contacts::field.company_email.instructions'),
(184, 182, 'en', 'toyotadjakarta.module.contacts::field.sales_name.name', 'toyotadjakarta.module.contacts::field.sales_name.placeholder', 'toyotadjakarta.module.contacts::field.sales_name.warning', 'toyotadjakarta.module.contacts::field.sales_name.instructions'),
(185, 183, 'en', 'toyotadjakarta.module.contacts::field.photo.name', 'toyotadjakarta.module.contacts::field.photo.placeholder', 'toyotadjakarta.module.contacts::field.photo.warning', 'toyotadjakarta.module.contacts::field.photo.instructions'),
(186, 184, 'en', 'toyotadjakarta.module.contacts::field.mobile01.name', 'toyotadjakarta.module.contacts::field.mobile01.placeholder', 'toyotadjakarta.module.contacts::field.mobile01.warning', 'toyotadjakarta.module.contacts::field.mobile01.instructions'),
(187, 185, 'en', 'toyotadjakarta.module.contacts::field.mobile02.name', 'toyotadjakarta.module.contacts::field.mobile02.placeholder', 'toyotadjakarta.module.contacts::field.mobile02.warning', 'toyotadjakarta.module.contacts::field.mobile02.instructions'),
(188, 186, 'en', 'toyotadjakarta.module.contacts::field.personal_email.name', 'toyotadjakarta.module.contacts::field.personal_email.placeholder', 'toyotadjakarta.module.contacts::field.personal_email.warning', 'toyotadjakarta.module.contacts::field.personal_email.instructions'),
(189, 187, 'en', 'toyotadjakarta.module.contacts::field.biodata.name', 'toyotadjakarta.module.contacts::field.biodata.placeholder', 'toyotadjakarta.module.contacts::field.biodata.warning', 'toyotadjakarta.module.contacts::field.biodata.instructions'),
(190, 188, 'en', 'toyotadjakarta.module.contacts::field.note.name', 'toyotadjakarta.module.contacts::field.note.placeholder', 'toyotadjakarta.module.contacts::field.note.warning', 'toyotadjakarta.module.contacts::field.note.instructions');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_streams_streams`
--

CREATE TABLE `toyotadjakarta_streams_streams` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_column` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `order_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `sortable` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `trashable` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_streams_streams`
--

INSERT INTO `toyotadjakarta_streams_streams` (`id`, `namespace`, `slug`, `prefix`, `title_column`, `order_by`, `locked`, `hidden`, `sortable`, `searchable`, `trashable`, `translatable`, `config`) VALUES
(1, 'configuration', 'configuration', 'configuration_', 'id', 'id', 1, 0, 0, 0, 0, 0, 'a:0:{}'),
(2, 'dashboard', 'dashboards', 'dashboard_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(3, 'dashboard', 'widgets', 'dashboard_', 'title', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(4, 'files', 'disks', 'files_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(5, 'files', 'folders', 'files_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(6, 'files', 'files', 'files_', 'name', 'id', 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(7, 'navigation', 'menus', 'navigation_', 'name', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(8, 'navigation', 'links', 'navigation_', 'id', 'id', 0, 0, 1, 0, 1, 0, 'a:0:{}'),
(9, 'pages', 'pages', 'pages_', 'title', 'id', 0, 0, 1, 1, 1, 1, 'a:0:{}'),
(10, 'pages', 'types', 'pages_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(11, 'posts', 'categories', 'posts_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(12, 'posts', 'posts', 'posts_', 'title', 'id', 0, 0, 0, 1, 1, 1, 'a:0:{}'),
(13, 'posts', 'types', 'posts_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(14, 'preferences', 'preferences', 'preferences_', 'id', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(15, 'redirects', 'redirects', 'redirects_', 'from', 'id', 0, 0, 1, 0, 1, 0, 'a:0:{}'),
(16, 'settings', 'settings', 'settings_', 'id', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(17, 'users', 'users', 'users_', 'display_name', 'id', 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(18, 'users', 'roles', 'users_', 'name', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(19, 'page_link_type', 'pages', 'page_link_type_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(20, 'url_link_type', 'urls', 'url_link_type_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(21, 'files', 'images', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(22, 'files', 'documents', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(23, 'pages', 'default_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(24, 'posts', 'default_posts', 'posts_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(28, 'slideshows', 'banners', 'slideshows_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(29, 'slideshows', 'welcomes', 'slideshows_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(30, 'slideshows', 'intros', 'slideshows_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(39, 'sales', 'models', 'sales_', 'name', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(40, 'sales', 'products', 'sales_', 'name', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(41, 'sales', 'testimonis', 'sales_', 'name', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(42, 'sales', 'banners', 'sales_', 'name', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(43, 'files', 'testimoni', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(44, 'pages', 'welcome_page_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(45, 'posts', 'post_with_image_posts', 'posts_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(46, 'files', 'car_models', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(47, 'files', 'banner_promosi', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(48, 'pages', 'testimoni_page_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(49, 'contacts', 'contacts', 'contacts_', 'name', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_streams_streams_translations`
--

CREATE TABLE `toyotadjakarta_streams_streams_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `stream_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_streams_streams_translations`
--

INSERT INTO `toyotadjakarta_streams_streams_translations` (`id`, `stream_id`, `locale`, `name`, `description`) VALUES
(1, 1, 'en', 'anomaly.module.configuration::stream.configuration.name', 'anomaly.module.configuration::stream.configuration.description'),
(2, 2, 'en', 'anomaly.module.dashboard::stream.dashboards.name', 'anomaly.module.dashboard::stream.dashboards.description'),
(3, 3, 'en', 'anomaly.module.dashboard::stream.widgets.name', 'anomaly.module.dashboard::stream.widgets.description'),
(4, 4, 'en', 'anomaly.module.files::stream.disks.name', 'anomaly.module.files::stream.disks.description'),
(5, 5, 'en', 'anomaly.module.files::stream.folders.name', 'anomaly.module.files::stream.folders.description'),
(6, 6, 'en', 'anomaly.module.files::stream.files.name', 'anomaly.module.files::stream.files.description'),
(7, 7, 'en', 'anomaly.module.navigation::stream.menus.name', 'anomaly.module.navigation::stream.menus.description'),
(8, 8, 'en', 'anomaly.module.navigation::stream.links.name', 'anomaly.module.navigation::stream.links.description'),
(9, 9, 'en', 'anomaly.module.pages::stream.pages.name', 'anomaly.module.pages::stream.pages.description'),
(10, 10, 'en', 'anomaly.module.pages::stream.types.name', 'anomaly.module.pages::stream.types.description'),
(11, 11, 'en', 'anomaly.module.posts::stream.categories.name', 'anomaly.module.posts::stream.categories.description'),
(12, 12, 'en', 'anomaly.module.posts::stream.posts.name', 'anomaly.module.posts::stream.posts.description'),
(13, 13, 'en', 'anomaly.module.posts::stream.types.name', 'anomaly.module.posts::stream.types.description'),
(14, 14, 'en', 'anomaly.module.preferences::stream.preferences.name', 'anomaly.module.preferences::stream.preferences.description'),
(15, 15, 'en', 'anomaly.module.redirects::stream.redirects.name', 'anomaly.module.redirects::stream.redirects.description'),
(16, 16, 'en', 'anomaly.module.settings::stream.settings.name', 'anomaly.module.settings::stream.settings.description'),
(17, 17, 'en', 'anomaly.module.users::stream.users.name', 'anomaly.module.users::stream.users.description'),
(18, 18, 'en', 'anomaly.module.users::stream.roles.name', 'anomaly.module.users::stream.roles.description'),
(19, 19, 'en', 'anomaly.extension.page_link_type::stream.pages.name', 'anomaly.extension.page_link_type::stream.pages.description'),
(20, 20, 'en', 'anomaly.extension.url_link_type::stream.urls.name', 'anomaly.extension.url_link_type::stream.urls.description'),
(21, 21, 'en', 'Images', 'A folder for images.'),
(22, 22, 'en', 'Documents', 'A folder for documents.'),
(23, 23, 'en', 'Default', 'A simple page type.'),
(24, 24, 'en', 'Default', NULL),
(28, 28, 'en', 'toyotadjakarta.module.slideshows::stream.banners.name', 'toyotadjakarta.module.slideshows::stream.banners.description'),
(29, 29, 'en', 'toyotadjakarta.module.slideshows::stream.welcomes.name', 'toyotadjakarta.module.slideshows::stream.welcomes.description'),
(30, 30, 'en', 'toyotadjakarta.module.slideshows::stream.intros.name', 'toyotadjakarta.module.slideshows::stream.intros.description'),
(39, 39, 'en', 'toyotadjakarta.module.sales::stream.models.name', 'toyotadjakarta.module.sales::stream.models.description'),
(40, 40, 'en', 'toyotadjakarta.module.sales::stream.products.name', 'toyotadjakarta.module.sales::stream.products.description'),
(41, 41, 'en', 'toyotadjakarta.module.sales::stream.testimonis.name', 'toyotadjakarta.module.sales::stream.testimonis.description'),
(42, 42, 'en', 'toyotadjakarta.module.sales::stream.banners.name', 'toyotadjakarta.module.sales::stream.banners.description'),
(43, 43, 'en', 'Testimoni', NULL),
(44, 44, 'en', 'Welcome Page', 'Welcome Page'),
(45, 45, 'en', 'Post With Image', NULL),
(46, 46, 'en', 'Car Models', NULL),
(47, 47, 'en', 'Banner Promosi', NULL),
(48, 48, 'en', 'Testimoni Page', 'Testimoni Page Site'),
(49, 49, 'en', 'toyotadjakarta.module.contacts::stream.contacts.name', 'toyotadjakarta.module.contacts::stream.contacts.description');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_url_link_type_urls`
--

CREATE TABLE `toyotadjakarta_url_link_type_urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_url_link_type_urls`
--

INSERT INTO `toyotadjakarta_url_link_type_urls` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `url`) VALUES
(1, 1, '2017-06-16 22:22:04', NULL, NULL, NULL, 'http://pyrocms.com/'),
(2, 2, '2017-06-16 22:22:04', NULL, NULL, NULL, 'http://pyrocms.com/documentation');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_url_link_type_urls_translations`
--

CREATE TABLE `toyotadjakarta_url_link_type_urls_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_url_link_type_urls_translations`
--

INSERT INTO `toyotadjakarta_url_link_type_urls_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2017-06-16 22:22:04', NULL, '2017-06-16 22:22:04', NULL, 'en', 'PyroCMS.com', NULL),
(2, 2, '2017-06-16 22:22:04', NULL, '2017-06-16 22:22:04', NULL, 'en', 'Documentation', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_users_roles`
--

CREATE TABLE `toyotadjakarta_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_users_roles`
--

INSERT INTO `toyotadjakarta_users_roles` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `permissions`) VALUES
(1, 1, '2017-06-16 15:22:23', NULL, NULL, NULL, NULL, 'admin', NULL),
(2, 2, '2017-06-16 15:22:23', NULL, NULL, NULL, NULL, 'user', NULL),
(3, 3, '2017-06-16 15:22:23', NULL, NULL, NULL, NULL, 'guest', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_users_roles_translations`
--

CREATE TABLE `toyotadjakarta_users_roles_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_users_roles_translations`
--

INSERT INTO `toyotadjakarta_users_roles_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-06-16 15:22:23', NULL, '2017-06-16 15:22:23', NULL, 'en', 'Admin', 'The super admin role.'),
(2, 2, '2017-06-16 15:22:23', NULL, '2017-06-16 15:22:23', NULL, 'en', 'User', 'The default user role.'),
(3, 3, '2017-06-16 15:22:23', NULL, '2017-06-16 15:22:23', NULL, 'en', 'Guest', 'The fallback role for non-users.');

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_users_users`
--

CREATE TABLE `toyotadjakarta_users_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_users_users`
--

INSERT INTO `toyotadjakarta_users_users` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `email`, `username`, `password`, `display_name`, `first_name`, `last_name`, `activated`, `enabled`, `permissions`, `last_login_at`, `remember_token`, `activation_code`, `reset_code`, `last_activity_at`, `ip_address`) VALUES
(1, 1, '2017-06-16 15:22:23', NULL, '2017-06-21 02:47:06', 1, NULL, 'admin@toyota.com', 'admin', '$2y$10$2.jKbA9qFgjF/mdpC7YgHuuBpfuCRp3WtNfUtvdCdCsnsnCe2Qh1K', 'Administrator', NULL, NULL, 1, 1, NULL, '2017-06-21 02:47:06', NULL, NULL, NULL, NULL, NULL),
(2, 2, '2017-06-16 15:22:25', NULL, '2017-06-16 15:22:26', NULL, NULL, 'demo@pyrocms.com', 'demo', '$2y$10$pcMnWdSPtYdzqngj/5FV7usxxV83kEimXfpsLM6uA3moANf.73Gj.', 'Demo User', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toyotadjakarta_users_users_roles`
--

CREATE TABLE `toyotadjakarta_users_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyotadjakarta_users_users_roles`
--

INSERT INTO `toyotadjakarta_users_users_roles` (`id`, `entry_id`, `related_id`, `sort_order`) VALUES
(1, 2, 2, NULL),
(2, 1, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application_references` (`reference`),
  ADD UNIQUE KEY `unique_application_domains` (`domain`);

--
-- Indexes for table `applications_domains`
--
ALTER TABLE `applications_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application_aliases` (`domain`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_addons_extensions`
--
ALTER TABLE `toyotadjakarta_addons_extensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_extensions` (`namespace`);

--
-- Indexes for table `toyotadjakarta_addons_modules`
--
ALTER TABLE `toyotadjakarta_addons_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_modules` (`namespace`);

--
-- Indexes for table `toyotadjakarta_configuration_configuration`
--
ALTER TABLE `toyotadjakarta_configuration_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_contacts_contacts`
--
ALTER TABLE `toyotadjakarta_contacts_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_dashboard_dashboards`
--
ALTER TABLE `toyotadjakarta_dashboard_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `9e2c1f0b0af4a3796ef2922690d63a22` (`slug`);

--
-- Indexes for table `toyotadjakarta_dashboard_dashboards_allowed_roles`
--
ALTER TABLE `toyotadjakarta_dashboard_dashboards_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique-relations` (`entry_id`,`related_id`);

--
-- Indexes for table `toyotadjakarta_dashboard_dashboards_translations`
--
ALTER TABLE `toyotadjakarta_dashboard_dashboards_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_dashboards_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_dashboard_widgets`
--
ALTER TABLE `toyotadjakarta_dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_dashboard_widgets_allowed_roles`
--
ALTER TABLE `toyotadjakarta_dashboard_widgets_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique-relations` (`entry_id`,`related_id`);

--
-- Indexes for table `toyotadjakarta_dashboard_widgets_translations`
--
ALTER TABLE `toyotadjakarta_dashboard_widgets_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widgets_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_failed_jobs`
--
ALTER TABLE `toyotadjakarta_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_files_banner_promosi`
--
ALTER TABLE `toyotadjakarta_files_banner_promosi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_files_banner_promosi_translations`
--
ALTER TABLE `toyotadjakarta_files_banner_promosi_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_banner_promosi_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_files_car_models`
--
ALTER TABLE `toyotadjakarta_files_car_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_files_car_models_translations`
--
ALTER TABLE `toyotadjakarta_files_car_models_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_car_models_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_files_disks`
--
ALTER TABLE `toyotadjakarta_files_disks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e45e39ecdef3a3c7a5535279b117d2a4` (`slug`);

--
-- Indexes for table `toyotadjakarta_files_disks_translations`
--
ALTER TABLE `toyotadjakarta_files_disks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_disks_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_files_documents`
--
ALTER TABLE `toyotadjakarta_files_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_files_documents_translations`
--
ALTER TABLE `toyotadjakarta_files_documents_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_documents_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_files_files`
--
ALTER TABLE `toyotadjakarta_files_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_files_folders`
--
ALTER TABLE `toyotadjakarta_files_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eb1f1e9d6c256e3428a0c6606a721cc5` (`slug`);

--
-- Indexes for table `toyotadjakarta_files_folders_translations`
--
ALTER TABLE `toyotadjakarta_files_folders_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_folders_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_files_images`
--
ALTER TABLE `toyotadjakarta_files_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_files_images_translations`
--
ALTER TABLE `toyotadjakarta_files_images_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_images_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_files_testimoni`
--
ALTER TABLE `toyotadjakarta_files_testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_files_testimoni_translations`
--
ALTER TABLE `toyotadjakarta_files_testimoni_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_testimoni_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_jobs`
--
ALTER TABLE `toyotadjakarta_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `toyotadjakarta_migrations`
--
ALTER TABLE `toyotadjakarta_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_navigation_links`
--
ALTER TABLE `toyotadjakarta_navigation_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_navigation_links_allowed_roles`
--
ALTER TABLE `toyotadjakarta_navigation_links_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique-relations` (`entry_id`,`related_id`);

--
-- Indexes for table `toyotadjakarta_navigation_menus`
--
ALTER TABLE `toyotadjakarta_navigation_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `b971176b13cd6738cbb5a6905fe40e9b` (`slug`);

--
-- Indexes for table `toyotadjakarta_navigation_menus_translations`
--
ALTER TABLE `toyotadjakarta_navigation_menus_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navigation_menus_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_notifications`
--
ALTER TABLE `toyotadjakarta_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `toyotadjakarta_pages_default_pages`
--
ALTER TABLE `toyotadjakarta_pages_default_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_pages_default_pages_translations`
--
ALTER TABLE `toyotadjakarta_pages_default_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_default_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_pages_pages`
--
ALTER TABLE `toyotadjakarta_pages_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_pages_pages_allowed_roles`
--
ALTER TABLE `toyotadjakarta_pages_pages_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique-relations` (`entry_id`,`related_id`);

--
-- Indexes for table `toyotadjakarta_pages_pages_translations`
--
ALTER TABLE `toyotadjakarta_pages_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_pages_testimoni_page_pages`
--
ALTER TABLE `toyotadjakarta_pages_testimoni_page_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_pages_testimoni_page_pages_translations`
--
ALTER TABLE `toyotadjakarta_pages_testimoni_page_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_testimoni_page_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_pages_types`
--
ALTER TABLE `toyotadjakarta_pages_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `381176fc0d89ae8d97d99ce9b6109b9a` (`slug`);

--
-- Indexes for table `toyotadjakarta_pages_types_translations`
--
ALTER TABLE `toyotadjakarta_pages_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_types_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_pages_welcome_page_pages`
--
ALTER TABLE `toyotadjakarta_pages_welcome_page_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_pages_welcome_page_pages_translations`
--
ALTER TABLE `toyotadjakarta_pages_welcome_page_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_welcome_page_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_page_link_type_pages`
--
ALTER TABLE `toyotadjakarta_page_link_type_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_page_link_type_pages_translations`
--
ALTER TABLE `toyotadjakarta_page_link_type_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_link_type_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_posts_categories`
--
ALTER TABLE `toyotadjakarta_posts_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `9a8a0682d35f9b22c741cb0536aa691f` (`slug`);

--
-- Indexes for table `toyotadjakarta_posts_categories_translations`
--
ALTER TABLE `toyotadjakarta_posts_categories_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_categories_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_posts_default_posts`
--
ALTER TABLE `toyotadjakarta_posts_default_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_posts_default_posts_translations`
--
ALTER TABLE `toyotadjakarta_posts_default_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_default_posts_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_posts_posts`
--
ALTER TABLE `toyotadjakarta_posts_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `a1128facbe9e8e6c2c59eddcfa495104` (`str_id`),
  ADD UNIQUE KEY `0c47b5470543e28befe49a899387ccff` (`slug`);

--
-- Indexes for table `toyotadjakarta_posts_posts_translations`
--
ALTER TABLE `toyotadjakarta_posts_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_posts_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_posts_post_with_image_posts`
--
ALTER TABLE `toyotadjakarta_posts_post_with_image_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_posts_post_with_image_posts_translations`
--
ALTER TABLE `toyotadjakarta_posts_post_with_image_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_post_with_image_posts_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_posts_types`
--
ALTER TABLE `toyotadjakarta_posts_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `1dc1b98be4181be266b483941a42b000` (`slug`);

--
-- Indexes for table `toyotadjakarta_posts_types_translations`
--
ALTER TABLE `toyotadjakarta_posts_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_types_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_preferences_preferences`
--
ALTER TABLE `toyotadjakarta_preferences_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_redirects_redirects`
--
ALTER TABLE `toyotadjakarta_redirects_redirects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `0cb4275c3992e35aae2a6b18f5f213c1` (`from`);

--
-- Indexes for table `toyotadjakarta_sales_banners`
--
ALTER TABLE `toyotadjakarta_sales_banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `4110dab2f603c24900d892f5c391b2a5` (`slug`);

--
-- Indexes for table `toyotadjakarta_sales_banners_translations`
--
ALTER TABLE `toyotadjakarta_sales_banners_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_banners_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_sales_models`
--
ALTER TABLE `toyotadjakarta_sales_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `d2f7401f27e4fa0452c6de23f87dfe8c` (`slug`);

--
-- Indexes for table `toyotadjakarta_sales_models_translations`
--
ALTER TABLE `toyotadjakarta_sales_models_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_models_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_sales_products`
--
ALTER TABLE `toyotadjakarta_sales_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `0f4c0a5d421b8ca563b657cef234cbc5` (`slug`);

--
-- Indexes for table `toyotadjakarta_sales_products_models`
--
ALTER TABLE `toyotadjakarta_sales_products_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique-relations` (`entry_id`,`related_id`);

--
-- Indexes for table `toyotadjakarta_sales_products_translations`
--
ALTER TABLE `toyotadjakarta_sales_products_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_products_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_sales_testimonis`
--
ALTER TABLE `toyotadjakarta_sales_testimonis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `d7a7b9492464d4dc0e9adced18c9f095` (`slug`);

--
-- Indexes for table `toyotadjakarta_sales_testimonis_translations`
--
ALTER TABLE `toyotadjakarta_sales_testimonis_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_testimonis_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_sessions`
--
ALTER TABLE `toyotadjakarta_sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `toyotadjakarta_settings_settings`
--
ALTER TABLE `toyotadjakarta_settings_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `c51990785fa58fe7b8132ccb33d9b45f` (`key`);

--
-- Indexes for table `toyotadjakarta_slideshows_banners`
--
ALTER TABLE `toyotadjakarta_slideshows_banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `72f52063e23fabd626f6e3a4ce89c117` (`slug`);

--
-- Indexes for table `toyotadjakarta_slideshows_banners_translations`
--
ALTER TABLE `toyotadjakarta_slideshows_banners_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slideshows_banners_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_slideshows_intros`
--
ALTER TABLE `toyotadjakarta_slideshows_intros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bf63d651560962b8582325ab10d44b44` (`slug`);

--
-- Indexes for table `toyotadjakarta_slideshows_intros_translations`
--
ALTER TABLE `toyotadjakarta_slideshows_intros_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slideshows_intros_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_slideshows_welcomes`
--
ALTER TABLE `toyotadjakarta_slideshows_welcomes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `b00c1bb0df8465698ca28ce1e4250ed2` (`slug`);

--
-- Indexes for table `toyotadjakarta_slideshows_welcomes_translations`
--
ALTER TABLE `toyotadjakarta_slideshows_welcomes_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slideshows_welcomes_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_streams_assignments`
--
ALTER TABLE `toyotadjakarta_streams_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_assignments` (`stream_id`,`field_id`);

--
-- Indexes for table `toyotadjakarta_streams_assignments_translations`
--
ALTER TABLE `toyotadjakarta_streams_assignments_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_assignments_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_streams_fields`
--
ALTER TABLE `toyotadjakarta_streams_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_fields` (`namespace`,`slug`);

--
-- Indexes for table `toyotadjakarta_streams_fields_translations`
--
ALTER TABLE `toyotadjakarta_streams_fields_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_fields_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_streams_streams`
--
ALTER TABLE `toyotadjakarta_streams_streams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_streams` (`namespace`,`slug`);

--
-- Indexes for table `toyotadjakarta_streams_streams_translations`
--
ALTER TABLE `toyotadjakarta_streams_streams_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_streams_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_url_link_type_urls`
--
ALTER TABLE `toyotadjakarta_url_link_type_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyotadjakarta_url_link_type_urls_translations`
--
ALTER TABLE `toyotadjakarta_url_link_type_urls_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_link_type_urls_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_users_roles`
--
ALTER TABLE `toyotadjakarta_users_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `c8501689d10e8645dd553604c773dca2` (`slug`);

--
-- Indexes for table `toyotadjakarta_users_roles_translations`
--
ALTER TABLE `toyotadjakarta_users_roles_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_roles_translations_locale_index` (`locale`);

--
-- Indexes for table `toyotadjakarta_users_users`
--
ALTER TABLE `toyotadjakarta_users_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `f432e8a18875d82efd589bf0d89fc033` (`email`),
  ADD UNIQUE KEY `729e247f9366c049a3e2924a0a51b756` (`username`);

--
-- Indexes for table `toyotadjakarta_users_users_roles`
--
ALTER TABLE `toyotadjakarta_users_users_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique-relations` (`entry_id`,`related_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `applications_domains`
--
ALTER TABLE `applications_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `toyotadjakarta_addons_extensions`
--
ALTER TABLE `toyotadjakarta_addons_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `toyotadjakarta_addons_modules`
--
ALTER TABLE `toyotadjakarta_addons_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `toyotadjakarta_configuration_configuration`
--
ALTER TABLE `toyotadjakarta_configuration_configuration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_contacts_contacts`
--
ALTER TABLE `toyotadjakarta_contacts_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_dashboard_dashboards`
--
ALTER TABLE `toyotadjakarta_dashboard_dashboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_dashboard_dashboards_allowed_roles`
--
ALTER TABLE `toyotadjakarta_dashboard_dashboards_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_dashboard_dashboards_translations`
--
ALTER TABLE `toyotadjakarta_dashboard_dashboards_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_dashboard_widgets`
--
ALTER TABLE `toyotadjakarta_dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_dashboard_widgets_allowed_roles`
--
ALTER TABLE `toyotadjakarta_dashboard_widgets_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_dashboard_widgets_translations`
--
ALTER TABLE `toyotadjakarta_dashboard_widgets_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_failed_jobs`
--
ALTER TABLE `toyotadjakarta_failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_banner_promosi`
--
ALTER TABLE `toyotadjakarta_files_banner_promosi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_banner_promosi_translations`
--
ALTER TABLE `toyotadjakarta_files_banner_promosi_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_car_models`
--
ALTER TABLE `toyotadjakarta_files_car_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_car_models_translations`
--
ALTER TABLE `toyotadjakarta_files_car_models_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_disks`
--
ALTER TABLE `toyotadjakarta_files_disks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_disks_translations`
--
ALTER TABLE `toyotadjakarta_files_disks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_documents`
--
ALTER TABLE `toyotadjakarta_files_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_documents_translations`
--
ALTER TABLE `toyotadjakarta_files_documents_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_files`
--
ALTER TABLE `toyotadjakarta_files_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_folders`
--
ALTER TABLE `toyotadjakarta_files_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_folders_translations`
--
ALTER TABLE `toyotadjakarta_files_folders_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_images`
--
ALTER TABLE `toyotadjakarta_files_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_images_translations`
--
ALTER TABLE `toyotadjakarta_files_images_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_testimoni`
--
ALTER TABLE `toyotadjakarta_files_testimoni`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_files_testimoni_translations`
--
ALTER TABLE `toyotadjakarta_files_testimoni_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_jobs`
--
ALTER TABLE `toyotadjakarta_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_migrations`
--
ALTER TABLE `toyotadjakarta_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `toyotadjakarta_navigation_links`
--
ALTER TABLE `toyotadjakarta_navigation_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `toyotadjakarta_navigation_links_allowed_roles`
--
ALTER TABLE `toyotadjakarta_navigation_links_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_navigation_menus`
--
ALTER TABLE `toyotadjakarta_navigation_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_navigation_menus_translations`
--
ALTER TABLE `toyotadjakarta_navigation_menus_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_pages_default_pages`
--
ALTER TABLE `toyotadjakarta_pages_default_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `toyotadjakarta_pages_default_pages_translations`
--
ALTER TABLE `toyotadjakarta_pages_default_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `toyotadjakarta_pages_pages`
--
ALTER TABLE `toyotadjakarta_pages_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `toyotadjakarta_pages_pages_allowed_roles`
--
ALTER TABLE `toyotadjakarta_pages_pages_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_pages_pages_translations`
--
ALTER TABLE `toyotadjakarta_pages_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `toyotadjakarta_pages_testimoni_page_pages`
--
ALTER TABLE `toyotadjakarta_pages_testimoni_page_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_pages_testimoni_page_pages_translations`
--
ALTER TABLE `toyotadjakarta_pages_testimoni_page_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_pages_types`
--
ALTER TABLE `toyotadjakarta_pages_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `toyotadjakarta_pages_types_translations`
--
ALTER TABLE `toyotadjakarta_pages_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `toyotadjakarta_pages_welcome_page_pages`
--
ALTER TABLE `toyotadjakarta_pages_welcome_page_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_pages_welcome_page_pages_translations`
--
ALTER TABLE `toyotadjakarta_pages_welcome_page_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `toyotadjakarta_page_link_type_pages`
--
ALTER TABLE `toyotadjakarta_page_link_type_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_page_link_type_pages_translations`
--
ALTER TABLE `toyotadjakarta_page_link_type_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_posts_categories`
--
ALTER TABLE `toyotadjakarta_posts_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `toyotadjakarta_posts_categories_translations`
--
ALTER TABLE `toyotadjakarta_posts_categories_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `toyotadjakarta_posts_default_posts`
--
ALTER TABLE `toyotadjakarta_posts_default_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_posts_default_posts_translations`
--
ALTER TABLE `toyotadjakarta_posts_default_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_posts_posts`
--
ALTER TABLE `toyotadjakarta_posts_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `toyotadjakarta_posts_posts_translations`
--
ALTER TABLE `toyotadjakarta_posts_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `toyotadjakarta_posts_post_with_image_posts`
--
ALTER TABLE `toyotadjakarta_posts_post_with_image_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `toyotadjakarta_posts_post_with_image_posts_translations`
--
ALTER TABLE `toyotadjakarta_posts_post_with_image_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `toyotadjakarta_posts_types`
--
ALTER TABLE `toyotadjakarta_posts_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `toyotadjakarta_posts_types_translations`
--
ALTER TABLE `toyotadjakarta_posts_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `toyotadjakarta_preferences_preferences`
--
ALTER TABLE `toyotadjakarta_preferences_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_redirects_redirects`
--
ALTER TABLE `toyotadjakarta_redirects_redirects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toyotadjakarta_sales_banners`
--
ALTER TABLE `toyotadjakarta_sales_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `toyotadjakarta_sales_banners_translations`
--
ALTER TABLE `toyotadjakarta_sales_banners_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `toyotadjakarta_sales_models`
--
ALTER TABLE `toyotadjakarta_sales_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `toyotadjakarta_sales_models_translations`
--
ALTER TABLE `toyotadjakarta_sales_models_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `toyotadjakarta_sales_products`
--
ALTER TABLE `toyotadjakarta_sales_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `toyotadjakarta_sales_products_models`
--
ALTER TABLE `toyotadjakarta_sales_products_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `toyotadjakarta_sales_products_translations`
--
ALTER TABLE `toyotadjakarta_sales_products_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;
--
-- AUTO_INCREMENT for table `toyotadjakarta_sales_testimonis`
--
ALTER TABLE `toyotadjakarta_sales_testimonis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `toyotadjakarta_sales_testimonis_translations`
--
ALTER TABLE `toyotadjakarta_sales_testimonis_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `toyotadjakarta_settings_settings`
--
ALTER TABLE `toyotadjakarta_settings_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `toyotadjakarta_slideshows_banners`
--
ALTER TABLE `toyotadjakarta_slideshows_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `toyotadjakarta_slideshows_banners_translations`
--
ALTER TABLE `toyotadjakarta_slideshows_banners_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `toyotadjakarta_slideshows_intros`
--
ALTER TABLE `toyotadjakarta_slideshows_intros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `toyotadjakarta_slideshows_intros_translations`
--
ALTER TABLE `toyotadjakarta_slideshows_intros_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `toyotadjakarta_slideshows_welcomes`
--
ALTER TABLE `toyotadjakarta_slideshows_welcomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_slideshows_welcomes_translations`
--
ALTER TABLE `toyotadjakarta_slideshows_welcomes_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `toyotadjakarta_streams_assignments`
--
ALTER TABLE `toyotadjakarta_streams_assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `toyotadjakarta_streams_assignments_translations`
--
ALTER TABLE `toyotadjakarta_streams_assignments_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;
--
-- AUTO_INCREMENT for table `toyotadjakarta_streams_fields`
--
ALTER TABLE `toyotadjakarta_streams_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `toyotadjakarta_streams_fields_translations`
--
ALTER TABLE `toyotadjakarta_streams_fields_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT for table `toyotadjakarta_streams_streams`
--
ALTER TABLE `toyotadjakarta_streams_streams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `toyotadjakarta_streams_streams_translations`
--
ALTER TABLE `toyotadjakarta_streams_streams_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `toyotadjakarta_url_link_type_urls`
--
ALTER TABLE `toyotadjakarta_url_link_type_urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `toyotadjakarta_url_link_type_urls_translations`
--
ALTER TABLE `toyotadjakarta_url_link_type_urls_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `toyotadjakarta_users_roles`
--
ALTER TABLE `toyotadjakarta_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `toyotadjakarta_users_roles_translations`
--
ALTER TABLE `toyotadjakarta_users_roles_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `toyotadjakarta_users_users`
--
ALTER TABLE `toyotadjakarta_users_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `toyotadjakarta_users_users_roles`
--
ALTER TABLE `toyotadjakarta_users_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
