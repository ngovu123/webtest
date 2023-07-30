-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2023 at 02:50 PM
-- Server version: 5.7.33-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r8rkblctogh1_tdmujobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Ngô Trường Vũhanganhhanganhshanganh', 'quyongtiktok@gmail.com', '$2y$10$nkm/fyrMYGesvlqEJsu6HubZfjEgTmtSPhTDs/YUwNnxZPGb7yETy', 'admin.jpg', '', NULL, '2023-07-20 07:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_listing_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_listing_ad_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_listing_ad_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_listing_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_listing_ad_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_listing_ad_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `job_listing_ad`, `job_listing_ad_url`, `job_listing_ad_status`, `company_listing_ad`, `company_listing_ad_url`, `company_listing_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'job_listing_ad.jpg', 'http://tdmu.edu.vn', 'Show', 'company_listing_ad.jpg', 'https://www.yahoo.com', 'Hide', NULL, '2023-07-03 02:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_job_listing` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_job_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_job_categories` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_company_listing` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_company_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_pricing` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_blog` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_faq` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_terms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_privacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_signup` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_forget_password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_company_panel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_candidate_panel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_job_listing`, `banner_job_detail`, `banner_job_categories`, `banner_company_listing`, `banner_company_detail`, `banner_pricing`, `banner_blog`, `banner_post`, `banner_faq`, `banner_contact`, `banner_terms`, `banner_privacy`, `banner_signup`, `banner_login`, `banner_forget_password`, `banner_company_panel`, `banner_candidate_panel`, `created_at`, `updated_at`) VALUES
(1, 'banner_job_listing.jpg', 'banner_job_detail.jpg', 'banner_job_categories.jpg', 'banner_company_listing.jpg', 'banner_company_detail.jpg', 'banner_pricing.jpg', 'banner_blog.jpg', 'banner_post.jpg', 'banner_faq.jpg', 'banner_contact.jpg', 'banner_terms.jpg', 'banner_privacy.jpg', 'banner_signup.jpg', 'banner_login.jpg', 'banner_forget_password.jpg', 'banner_company_panel.jpg', 'banner_candidate_panel.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `designation`, `username`, `email`, `password`, `token`, `photo`, `biography`, `phone`, `country`, `address`, `state`, `city`, `zip_code`, `gender`, `marital_status`, `date_of_birth`, `website`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Peter Smith', 'PHP Developer', 'peter', 'peter@gmail.com', '$2y$10$LpfVvaPXRjGTBKtdiZoCze82qWjU2RzAJnspOLbFVFNR2WurWuTrW', '', 'candidate_photo_1673696295.jpg', '<p>Ea has adhuc nusquam nominavi, homero possit platonem cu qui. Ancillae fabellas definiebas his ea. Tale dicta epicuri eam id, in volutpat urbanitas usu. Wisi facilisis eu vel, in nulla democritum nam, ad sed aliquip recteque adversarium. Usu et assum liber delicata.</p>\r\n<p>At vim hinc nonumy nostrud. Ex dolorem probatus qui. Erroribus democritum reprimique an ius. Facer volumus ei usu, congue utroque petentium ad mel, wisi quaerendum an sit. Per id postea aliquip, ut sea pertinax deseruisse. Euismod dolores accumsan ex vix, id nec libris complectitur, fabellas apeirian id est.</p>\r\n<p>Possim oporteat eos et, graeci lobortis ne ius, vis id appetere definitiones. Pro quando officiis te, equidem scribentur definitiones ei has. Natum novum ex nec, ut sed modo stet. Ex quo brute option constituam.</p>', '234-333-2222', 'USA', '87/4 Main Street', 'NYC', 'NY', '91282', 'Male', 'Unmarried', '2000-03-16', 'https://www.petersite.com', 1, '2023-01-08 05:22:32', '2023-01-14 07:14:00'),
(2, 'Richard Anderson', 'PHP Developer', 'richard', 'richard@gmail.com', '$2y$10$N0HtrzblaZ/CmUgAgrN96uwvFlX9pp1Zt5Z7cfKJquwYuIFlW7TWm', '', 'candidate_photo_1673860200.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '443-616-4741', 'USA', '1559 Hewes Avenue', 'MD', 'Baltimore', '21201', 'Male', 'Unmarried', '2001-12-26', 'https://www.richardanderson.com', 1, '2023-01-16 03:04:49', '2023-01-16 03:10:00'),
(3, 'Janice Wallace', 'Laravel Developer', 'janice', 'janice@gmail.com', '$2y$10$dPpTXWMupRAEY1ZISO6zyOMmkY.FecCxCfpBLjfwgDCt8TbhwjJsC', '', 'candidate_photo_1673860357.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '281-559-1295', 'USA', '1008 Bird Spring Lane,', 'TX', 'Bacliff', '77518', 'Male', 'Unmarried', '2001-12-26', 'https://www.JaniceWallace.com', 1, '2023-01-16 03:10:52', '2023-01-16 03:12:37'),
(4, 'Carlos Phoenix', 'Web Designer', 'carlos', 'carlos@gmail.com', '$2y$10$BgdGLc.aOZiPzBpXjiO27OiDGgzaqpt4u5jGtlup5rNJSoD7JLp2G', '', 'candidate_photo_1673861153.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '805-457-4657', 'USA', '4354 Diane Street,', 'CA', 'San Luis Obispo', '93401', 'Male', 'Married', '2001-12-26', 'https://www.CarlosPhoenix.com', 1, '2023-01-16 03:13:21', '2023-01-16 03:25:53'),
(5, 'David Slattery', 'Junior Law Consultant', 'david', 'david@gmail.com', '$2y$10$YBvzZqXEoY4n19BQkk/JXeH5386MNQpLAYNRHCykcqKS4si9sJ06q', '', 'candidate_photo_1673861326.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '415-327-8977', 'USA', '3505 Delaware Avenue', 'CA', 'Oakland', '94612', 'Male', 'Unmarried', '2001-12-26', 'https://www.DavidSlattery.com', 1, '2023-01-16 03:26:29', '2023-01-16 03:28:46'),
(6, 'Victor Krebs', 'Senior Law Consultant', 'victor', 'victor@gmail.com', '$2y$10$Pwz0F1xl6gkHWs33sANYC.l881id6uHVivyU1ZGI0NgxlvyPrzupy', '', 'candidate_photo_1673861471.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '(03) 9752 0812', 'Australia', '80 Rose Street,', 'VIC', 'THE PATCH', '3792', 'Male', 'Married', '2001-12-26', 'https://www.victorkrebs.com', 1, '2023-01-16 03:29:35', '2023-01-16 03:31:11'),
(7, 'Daniel John', 'Junior Real Estate Agent', 'daniel', 'daniel@gmail.com', '$2y$10$JVBFgpd2BHani6MpEfcD1.RhHwKFF.2WeFij8DSPK.sEz11cbIqAW', '', 'candidate_photo_1673861606.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '(08) 9020 4465', 'Australia', '59 Baker Street,', 'WA', 'BAYONET HEAD', '6330', 'Male', 'Married', '2001-12-26', 'https://www.danieljohn.com', 1, '2023-01-16 03:31:46', '2023-01-16 03:33:34'),
(8, 'Henri Patenaude', 'Real Estate Marketer', 'henri', 'henri@gmail.com', '$2y$10$xbIE9w/c57Dx.xLN3OYQ7O7a9CVTagFK6S7OAIWHWIEYjruDvRT5C', '', 'candidate_photo_1673861779.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '03.16.22.32.96', 'Franch', '60, Quai des Belges,', 'MAUBEUGE', 'MAUBEUGE', '59600', 'Male', 'Married', '2001-12-26', 'https://www.henri-patenaude.com', 1, '2023-01-16 03:34:25', '2023-01-16 03:36:19'),
(10, 'Eduardo Dias', 'Accounting Assistant', 'dias', 'dias@gmail.com', '$2y$10$yplwsCBQjSBa2I/omwaq4.M4ubUOObqz4C2eaQisTWKBtrKbZUBI.', '', 'candidate_photo_1673862148.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '(21) 4984-5302', 'Brazil', 'Rua Ibicarai, 1393', 'RJ', 'Belford Roxo', '26113-710', 'Male', 'Married', '2001-12-26', 'https://www.eduardo-dias.com', 1, '2023-01-16 03:39:46', '2023-01-16 03:42:28'),
(11, 'Richard Yang', 'Network Operator', 'yang', 'yang@gmail.com', '$2y$10$7i5w9BxFL5/.0a9.MkHGsudr8VQwszLhdos.dQ1aoy4u8fjOeOHSu', '', 'candidate_photo_1673866452.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '407-453-6387', 'USA', '190 Ocala Street,', 'FL', 'Orlando', '32805', 'Male', 'Divorced', '2001-12-26', 'https://www.richard-yang.com', 1, '2023-01-16 04:52:29', '2023-01-16 04:54:26'),
(12, 'Antonio Moon', 'Server Administrator', 'moon', 'moon@gmail.com', '$2y$10$8LUMgL/ZlaISdolpy7eoS.vwVi9qxRxsMp26Xn/hBpas0pO9uQO82', '', 'candidate_photo_1673866576.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '303-605-8872', 'USA', '1656 Sampson Street,', 'CO', 'Denver', '80202', 'Male', 'Married', '2001-12-26', 'https://www.antonio-moon.com', 1, '2023-01-16 04:54:52', '2023-01-16 04:56:16'),
(13, 'Michael Taylor', 'Senior Office Assitant', 'taylor', 'taylor@gmail.com', '$2y$10$Yrw54B7wzw1psdBz261PuOeI0GH4PbTHnGEVo5ThtTw5..m.4JcKm', '7599806ede3d20f0ed5fc6332fe3a94f53aad5adc4f2e9f97ce65e24d6718f4d', 'candidate_photo_1673866686.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '814-796-2418', 'USA', '3236 Spadafore Drive,', 'PA', 'Waterford', '16441', 'Male', 'Married', '2001-12-26', 'https://www.michael-taylor.com', 0, '2023-01-16 04:56:46', '2023-01-16 04:58:06'),
(14, 'Cody Arendt', 'Senior Conference Manager', 'cody', 'cody@gmail.com', '$2y$10$AbyqG2RpD2sFVwlOg2fqwONacyHwF1Tdk9cFZ1ysPyq8iZWBvaORG', '', 'candidate_photo_1673866823.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '918-577-6924', 'USA', '1321 Camel Back Road,', 'OK', 'Tulsa', '74120', 'Male', 'Married', '2001-12-26', 'https://www.cody-arendt.com', 1, '2023-01-16 04:58:37', '2023-01-16 05:00:50'),
(15, 'Hugh Peters', 'Software Operator', 'hugh', 'hugh@gmail.com', '$2y$10$mncDOXJ3IBOzeoC7/.L5nue6fODyzPjZBtu5gVu7cGK.6jonaWSBm', '', 'candidate_photo_1673866970.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '804-212-9291', 'USA', '2602 Emily Drive,', 'VA', 'Richmond', '23219', 'Male', 'Married', '2001-12-26', 'https://www.hugh-peters.com', 1, '2023-01-16 05:01:27', '2023-01-16 05:02:50'),
(18, 'vu', NULL, 'VUNGO', '2024801030014@student.tdmu.edu.vn', '$2y$10$9MbW6RaWtNuyRgS8kctoYOmNU0r8yjXTAOpIQ6bdIZcGbY9uldmNS', 'ce98c96d989aae735ccd9353f964461fded713bf1abc6e0598c6a06944dc3a93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-01 22:46:08', '2023-07-01 22:46:08'),
(19, 'vu', NULL, 'ngotruongvu', 'quyongtiktok@gmail.com', '$2y$10$KmA13LIRN1AScKyM.OK/NOL5fE5CQx4cdT216dRAOsSZtPJQyyl3O', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-01 22:52:28', '2023-07-02 18:56:49'),
(20, 'dat', NULL, 'trandat', 'thuykieu182002@gmail.com', '$2y$10$I0/duZijf69KivaWHQk1EO0L1o6ywJ89tPFBDA5LZXgtg/qJR/pSC', '84206c4cf4b5d8a5bf0acaf65e7ea7606a2fe203502d111c05968557b8ab34dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-01 23:03:26', '2023-07-01 23:03:26'),
(21, 'vu', NULL, 'ngotruonvu', 'vietnam@gmail.com', '$2y$10$Ovx72HHtGDKKs8TleMR8W.QSEHx2kMeMl9.gJF2aC6PqoAEF3Jngq', '9b6684b69457e87461abe6ddf5a0390c7f64669ca7d12bf5639d1260cb3d38cb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-01 23:44:38', '2023-07-01 23:44:38'),
(22, 'dat', NULL, 'nguyentandat', 'tien@gmail.com', '$2y$10$QXklfAMuBB5aBbr7uMDG6OiXyz5yIU5gAOOD1DstC5WoCLFSkLCCi', '1434d02c29148deccfb1054849d8f5015f076a49643a643b4d6c43e2e5512de9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-02 01:19:52', '2023-07-02 01:19:52'),
(23, 'ngan', NULL, 'nguyenthanhngan', 'tenba4481@gmail.com', '$2y$10$.jmsd2dRgca/a8bSdwR4OemdDpJd0wy8RB6HjQNmxyiH5mGsynPAu', '3bb10532bc8ee1065601bad2c4cb9f5ed1859da206cb564aad74fbb413c2db95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-02 04:21:44', '2023-07-02 05:50:25'),
(24, 'thang', NULL, 'trantrungthang', 'tt2601761@gmail.com', '$2y$10$fGHBwh5bW00h0x79EOITCuDytkjXwpWlsG3JCsh33Szw96ru9n5fG', '063228913b8f132963253a5b168d841bef93b793cee399f166cf6c34c9bc5ae1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-02 06:18:18', '2023-07-02 06:26:02'),
(25, 'vsvj', NULL, 'acac', 'kieu72075@gmail.com', '$2y$10$9U5wyDb5tVmphV3niV9FIOEVd/Wxxl0q7R7.w7/a7DdvyoEPaCPGa', 'c7d09c3499b383e9a57021e75adc312798596fe1a1b43339a20b5e2db7e669e7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-02 06:29:04', '2023-07-02 06:29:04'),
(26, 'acacac', NULL, 'cacac', 'acacac@gmail.com', '$2y$10$RiUQzAJbtZkUCS3KJhLDf./PEaWbXf4J2vw5qfI2h8FP1jn7rLL7e', '3c77805a87442e70c42f4f4e8f41d00270ac76998dd0cb9c14ea069f92d64ea4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-02 06:41:59', '2023-07-02 06:41:59'),
(27, 'acacac', NULL, 'cacaca', 'arefindev@gmail.com', '$2y$10$yDvdoETM4MMEU8hViLC9sOvwITlqJoOMCiz2UMixCEX1Q4AiE1M1e', 'fe02c356b4a784ce42d3b3821833ae3d4a3450418bdf9bba59fdb7686eea1b05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-02 07:32:41', '2023-07-02 07:32:41'),
(28, 'bccjakcka', NULL, 'cacacacaca', 'achacac@gmail.com', '$2y$10$A.T48MerriGDxd5W1bXsDeBOmSrrsnPlQMRb1hl8L7WA1Re7eX6lK', 'b933def1a214187d91eda6ec61a73e7e3eea70ef74d87ec758501e0faf06da02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-02 16:16:33', '2023-07-02 16:16:33'),
(29, 'ngo', NULL, 'vu', 'hoanganhngo199@gmail.com', '$2y$10$5ebDYJbhTFfi5zLShk8koOPCsJBfjy8e4xx7Ux.gH4ZR3FMph9TUa', 'a07917745cbc612c50a01a0396f3ddbf2e6a98917bbef8ea6a730ecb4f65568c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-02 17:43:53', '2023-07-15 20:03:22'),
(30, 'vu', NULL, 'nguyenanhvu', 'vu4985770@gmail.com', '$2y$10$WfT/2dNEA458LfxCR.gpbeFTN42vSePWSxEx18qkUHfewGLdRKloS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-07-03 19:00:26', '2023-07-20 06:39:45'),
(31, 'vn', 'Maketing', 'vietnam', 'cnttktpm@gmail.com', '$2y$10$gp88Nu1/UfWSbdpUrg1Fh./euoY3/qjOtYMgPDbdxh2c5BnzMiyLa', '', NULL, '<p>test</p>', '252525', NULL, NULL, NULL, NULL, NULL, 'Male', 'Married', NULL, NULL, 1, '2023-07-06 20:19:15', '2023-07-13 07:54:29'),
(32, 'cac', NULL, 'cấc', 'nvcnguyen2n@gmail.com', '$2y$10$OOXS0HkG9Upnt6prrLZXGuKdkaW/2GJUrfe87wsWr67MPNpi3ZK2i', 'fc8ccb71dbbb10edb9a9f85a120f01cf27f1258410cd154ed61c80e4d381c569', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 09:14:06', '2023-07-11 09:14:06'),
(33, 'Ala', NULL, 'nguyen10', 'michael@example', '$2y$10$nX/P7U6zzuBBkueKsyoCQucxAEtuTT03q3QGR94o/.o8stY0xnyym', '2d0f3d85b2e271cbef7d2051c95822598fa4ae7f79b65de579c6985ca700b568', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 10:23:18', '2023-07-11 10:23:18'),
(34, 'Ala', NULL, 'nguyen101231231231231', 'michaesadads@example', '$2y$10$ZKpDl1k8Fbjzpw7AcmzODOLjlXIVSvFt1pVVxZPxkftdeDenLQYxq', '093bf970571636ed4a9be7c0a2da83731b950fde201a73575ed264f01acaadb3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 10:23:42', '2023-07-11 10:23:42'),
(35, 'Ala', NULL, 'nguyen101231231231231sá', 'michaesadads@example.kaka', '$2y$10$Nh1ko2PAdHIeno8nrSBgQepGO.hiOp6NLfjroRDjuNkAZDtLNcdCK', 'b690539a6846efb9aa7f9d6a8fcdaef0038fe0241a6510e9a79576b64b00754b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 10:24:29', '2023-07-11 10:24:29'),
(36, 'nguyen', NULL, 'chunguyenkk', 'NVA@gmail.com', '$2y$10$GjLBaG74OltaplXyzUoTreRw2RTy0UhFRp/dk8tTf3MX3tr6i7C3a', 'bdba5ecfffcce2f561d2a3418e19d032c47be4dee86109b1c309e64ef81611ec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 20:43:46', '2023-07-11 20:43:46'),
(37, 'nguyen', NULL, '123kk', 'ka@gmail.com', '$2y$10$.IPFHxI.W1BR/OXC92BCNOP.H8TWbJ2qsSle6tw08m7RCTuNeWrkq', '7c9e18f4a9f7951d8ffcb0e2682c1b5a3202b998fe2f15d09c1d94897d7b8a1b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 20:48:37', '2023-07-11 20:48:37'),
(38, 'nguyen', NULL, '12ds3kk', 'kad@gmail.com', '$2y$10$hKVSpZFy.MHRjYQ0JF8miOshzJe5Yb3wcGG56QhcjFQn7TUzI.KOC', 'dd156b0af27d42bd9aa2cf5ea57cb2d4f0edfa5eb28ef2e6601d0fcb9b91e78d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 20:49:25', '2023-07-11 20:49:25'),
(39, 'nguyen', NULL, '122ds3kk', 'ka1d@gmail.com', '$2y$10$SPOFiKPaK89SJrC61mGYpeuncaP7srWZ5MhtvLhLU2Jq9rk53iDne', 'cc4159a762c8aa866f81c51aa8fc688af2a04e01226a271cee639ad56b8f672c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 20:51:05', '2023-07-11 20:51:05'),
(40, 'nguyen', NULL, '1222ds3kk', 'ka12d@gmail.com', '$2y$10$plGzgDNrnWDn6kfHKzCOg.r9XZQf0rgfK1V2yDWL.zQW/ipjZWE3S', 'efa7ef6ad94dbcc3bd474bec81741b8bcbfea73cd86f7fa115818e96ecad47c2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 21:07:46', '2023-07-11 21:07:46'),
(41, 'nguyên1', NULL, 'nguyen1', 'nguyen1@gmail.kaka', '$2y$10$sl.UGFjq8Fy2nM9ONcBH5.kUB0Q3k1MaeFfYvV6ilkKnuST6ds93e', '67f9723e597220a48fc18009ecc947901a9202e2a32fa529322e1520be618feb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 21:47:04', '2023-07-11 21:47:04'),
(42, 'nguyen', NULL, '1221232ds3kk', 'ka23121d@gmail.com', '$2y$10$o3egjALqaQiIOkhY5wqkgO4NFM7f2mLDOeWvzrlODvJkqgrdL5fZa', '935a75582ef13be1ec471974600e8018dae9daef858440ac5e3a009bf0e39375', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 21:50:32', '2023-07-11 21:50:32'),
(43, '12344', NULL, '123121', 'nguyen@gmail.kaka', '$2y$10$XnH.Tt0oDxrjB6Chq7mZnOG5bduzQAx5GO3I8K9kGPZrW.ZM.a.Gu', '2a603e35dcacf80ff9810cf68a4c6184e4cabc676b4ad9eaeeb6ea61d3a5f540', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 22:02:40', '2023-07-11 22:02:40'),
(44, 'nguyen', NULL, '123dsdaa', 'ka2312231d@gmail.com', '$2y$10$zh9CYa/li91Onyu4AulNt.rFV.B2ETSp.Bfc4xivbyaZ4Tpo0rFAK', '322ce766f44777f352195ecbef76ca19f24fb280874454e3770feb5d13e12d81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 22:17:09', '2023-07-11 22:17:09'),
(45, 'nguyen', NULL, '123dsssdaa', 'ka2312ss231d@gmail.com', '$2y$10$JvgFp/rNB65QOfBmgIAXgOm0ngPal5J9A3layfuE829PvFsbmn19q', '13b151f32a1233933790895370cec4d5e578985177b151d5c083deee6f4a7028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 22:26:56', '2023-07-11 22:26:56'),
(46, 'nguyen', NULL, 'bagia', 'bagia@gmail.com', '$2y$10$1QQYKNp3icU6tQTBAK.pUOV1L9Skw45JJrd7qe83PMIf82/QA3dvi', '6849aa65d139a7c5d8e28fc7db1ca8e4f6fc68bbdecc7056f8bfe4dd786aa2ab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 22:28:27', '2023-07-11 22:28:27'),
(47, 'nguyen', NULL, 'ba2gia', 'bag2ia@gmail.com', '$2y$10$GnJ99v05NMcwwFiZTHcqMuiuKwELGRk71Ov1bLgzQ0Spiy1wsx2Wy', '4c39926a0a6f1f4a6713c3fa393a44e66b609d5953438eaa7246d8b4c36a84fd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 22:29:04', '2023-07-11 22:29:04'),
(48, 'nguyen', NULL, 'ba22gia', 'bag22ia@gmail.com', '$2y$10$oOoY3uoZgbYv6/tqJ9WmT.No0Ru.PapTmQpGf93p7bjXWkdxB8Wdm', '0def198834756d8230c0a48c2b997e92d0d39e5fef855daa2dad1d7e45f5a1f7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 22:36:47', '2023-07-11 22:36:47'),
(49, 'nguyen', NULL, 'ba221gia', 'bag2ia123@gmail.com', '$2y$10$2X/vTD0Nlc9sr6qtNz7SsuFOIblF2O9Q4nXjNjU.b6GHLmVb7aynm', 'd7de701a84db6a4bf1f5875db0df2fb53d1c69b3d29b887cf0c7df8d23e99ddf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-11 22:37:08', '2023-07-11 22:37:08'),
(50, 'nguyen', NULL, 'nguyen', 'nvcnguyenn@gmail.com', '$2y$10$vAwMd6FrT3vMYO5ypzkcB.319xAh6YW3KVZqLIAn7ViSmE8qCn9wS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-07-12 00:37:10', '2023-07-12 00:37:29'),
(51, '1223344', NULL, 'lala', 'nguyen213@gmail.kaka', '$2y$10$1C1ZbNxs8r97c0ndBfA04.5yKTtaCdZjLcd39YCBlWUVrVBH2ZTry', '71af4765c7b5b8cb96072dc4e5c65f4d924b830cc0f38dbcacf256057c1971d9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-12 02:37:06', '2023-07-12 02:37:06'),
(52, 'uidsfkljdfs', NULL, 'kjdszsuida', 'quyongtiktok213123@gmail.com', '$2y$10$4Lt/pcpRUShG0.0zCjuv7.1UJJFGaYrD21o2ofXS0NghUdX9RP8ga', '817f3ebbd0e0874de3deb97a3ff9781252186f1359b58b933315f8768612dfe1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-16 20:30:38', '2023-07-16 20:30:38'),
(53, 'nguyen13', NULL, 'test13', 'test13@gmail.com', '$2y$10$BGUeh2edU3GFRDcHmec0wuY6rV2V2kOI/GfkzUB9whkeKVKQwfMia', '219db8d9957b8fef7c92ca9b183c24641b4655702b8535e56b97a40d530d04d9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-16 20:31:38', '2023-07-16 20:31:38'),
(54, 'nguyen1âs3', NULL, 'tes2167t13', 'test132323@gmail.com', '$2y$10$ia.k0BdlRKVs6Bz2DxCP9.s2t.NOIQIFFps9pe4NpkOXSSwkEx7Fe', '641dda8183beb054d4fc9b1fd11eb100eebd9acc3a92e64a25352e7497a2b1f1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-16 20:32:48', '2023-07-16 20:32:48'),
(55, 'hjashjahjsda', NULL, '783421hjhj', 'hjasdhj@gmail.com', '$2y$10$L6fVuFCqry3eDOyaVsp1Vufantco5qSwLAIW8wQBj1Yp941QHKSmm', '3cad49050522eeed0e108d680b281bd28dad783f542f072adcf534f6fa4ed495', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-16 20:34:28', '2023-07-16 20:34:28'),
(56, 'nguyen1939s3', NULL, 'tes2167212t13', 'test132213323@gmail.com', '$2y$10$S6xJERfGi7hfSjcN9KIn7eW5DPRB1PBNQ5s8izGT6bw6onpyyRQQq', 'a014f94f99bb9a1c5c9167a061f1eb895bea230c6bf7efb840e86184c2406050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-16 20:37:22', '2023-07-16 20:37:22'),
(57, 'oyea', NULL, 'lhjala', 'nguyen213dss@gmail.kaka', '$2y$10$HPCo5RjN/c9a4kRiFyWg8.NVmsCQD/VDDgBzeBAeBlQPsKd2hB07y', '61d85a4cfd9f0cb3c95e714e5c7177232390bc84370cba02f37ab62532102ee1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-16 20:41:09', '2023-07-16 20:41:09'),
(58, '34', NULL, 'NGUYEN12376128793', 'nvcnguyenn123123123312@gmail.com', '$2y$10$yUv1pY9V0xMnG6znuB7Sle3TdqwZjEBTPwDLxt4tAQpHlufsPjb32', '27f8b0d8e9a99cb4f0fcbde48760544ca24dd07a34d4e39904dd48a0e36a7984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-20 07:07:43', '2023-07-20 07:07:43'),
(59, 'nguye', NULL, '889a', '889a@gmail.com', '$2y$10$QXiA6cLfmljtJHuZKkVNS.mcHHCj9rnsd3bSdE8.CcNP77srFvCiO', 'a8e2894cf71295ba20ee7a48d7d9753549e9b83a6d2faa89c765f6b62ba8fd60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-07-20 07:12:30', '2023-07-20 07:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_applications`
--

CREATE TABLE `candidate_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `cover_letter` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_applications`
--

INSERT INTO `candidate_applications` (`id`, `candidate_id`, `job_id`, `cover_letter`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 16, 'Hi,\r\n\r\nPlease check my cover letter. I am applying to your job. \r\n\r\nThank you.', 'Applied', '2023-01-17 06:54:12', '2023-01-17 06:54:12'),
(2, 1, 11, 'Hi,\r\n\r\nI am a very expert PHP developer. I want a job to you like this. So, please give me a chance. \r\n\r\nThank you so much for your time and consideration. \r\n\r\n- Best Regards', 'Applied', '2023-01-17 06:55:34', '2023-01-17 13:56:55'),
(3, 2, 11, 'Hello,\r\n\r\nI am working as PHP developer for about 12+ years and I have experience to work with Laravel, Codeigniter etc. \r\n\r\nPlease check my detailed CV and work experience. \r\n\r\nThank you.', 'Applied', '2023-01-17 06:57:10', '2023-01-17 13:56:59'),
(4, 6, 16, 'Hi, \r\n\r\nI am very excited to apply here. Please check my CV and resume details to know about me. \r\n\r\nThank you.', 'Approved', '2023-01-18 20:36:32', '2023-01-18 21:16:17'),
(11, 30, 11, 'heeloo', 'Applied', '2023-07-04 01:35:31', '2023-07-04 01:35:31'),
(12, 30, 14, 'haha', 'Applied', '2023-07-11 02:20:09', '2023-07-11 02:20:09'),
(13, 30, 14, 'hahaádiuasjdasioud', 'Applied', '2023-07-11 02:20:37', '2023-07-11 02:20:37'),
(14, 30, 16, 'ád', 'Applied', '2023-07-11 02:21:26', '2023-07-11 02:21:26'),
(15, 30, 10, 'sadasd', 'Applied', '2023-07-11 04:52:04', '2023-07-11 04:52:04'),
(16, 30, 15, '3', 'Applied', '2023-07-11 10:36:42', '2023-07-11 10:36:42'),
(17, 30, 12, 'sa', 'Applied', '2023-07-11 10:48:12', '2023-07-11 10:48:12'),
(18, 50, 16, 'hello', 'Applied', '2023-07-12 00:39:26', '2023-07-12 00:39:26'),
(19, 50, 14, 'hello', 'Applied', '2023-07-12 00:43:32', '2023-07-12 00:43:32'),
(20, 50, 13, 'hello', 'Applied', '2023-07-12 00:51:43', '2023-07-12 00:51:43'),
(21, 50, 12, 'hello', 'Applied', '2023-07-12 00:54:17', '2023-07-12 00:54:17'),
(22, 50, 10, 'hello', 'Applied', '2023-07-12 00:56:06', '2023-07-12 00:56:06'),
(23, 50, 11, 'hello', 'Applied', '2023-07-12 00:58:31', '2023-07-12 00:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_awards`
--

CREATE TABLE `candidate_awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_awards`
--

INSERT INTO `candidate_awards` (`id`, `candidate_id`, `title`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Employee of the Year, AMB Software Solutions', 'Won the employee of the year award for accomplishing all the targets and goals.', 'Sep 2021', '2023-01-14 13:34:17', '2023-01-14 13:34:17'),
(2, 1, 'The Dean\'s Award, MJ University', 'Awarded for representing the univerity at muiltiple international business case competitions.', 'Feb 2022', '2023-01-14 13:34:50', '2023-01-14 13:34:50');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_bookmarks`
--

CREATE TABLE `candidate_bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_bookmarks`
--

INSERT INTO `candidate_bookmarks` (`id`, `candidate_id`, `job_id`, `created_at`, `updated_at`) VALUES
(5, 2, 17, '2023-01-17 05:04:23', '2023-01-17 05:04:23'),
(12, 30, 2, '2023-07-04 00:21:18', '2023-07-04 00:21:18'),
(13, 30, 11, '2023-07-04 01:35:19', '2023-07-04 01:35:19'),
(14, 30, 17, '2023-07-06 22:39:28', '2023-07-06 22:39:28'),
(15, 30, 15, '2023-07-08 19:57:59', '2023-07-08 19:57:59'),
(16, 30, 16, '2023-07-11 19:37:26', '2023-07-11 19:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_education`
--

CREATE TABLE `candidate_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `level` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `passing_year` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_education`
--

INSERT INTO `candidate_education` (`id`, `candidate_id`, `level`, `institute`, `degree`, `passing_year`, `created_at`, `updated_at`) VALUES
(1, 1, 'Secondary', 'MBN School', 'S.S.C.', '2016', '2023-01-14 11:03:39', '2023-01-14 11:03:39'),
(2, 1, 'Higher Secondary', 'FHJ College, NYC', 'H.S.C.', '2018', '2023-01-14 11:04:22', '2023-01-14 11:04:22'),
(8, 30, '12/12', 'thu dau mot', 'kỹ sư', '2025', NULL, NULL),
(9, 30, '12/12', 'thu dau mot', 'kỹ sư', '2025', NULL, NULL),
(10, 30, '12/12', 'thu dau mot', 'kỹ sư phần mềm', '2025', NULL, NULL),
(11, 31, '12/12', 'thu dau mot', 'kỹ sư phần mềm', '2025', NULL, NULL),
(12, 31, '12/12', 'thu dau mot', 'kỹ sư phần mềm', '2025', NULL, NULL),
(13, 31, '12/12', 'thu dau mot', 'giao vien', '2025', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_experiences`
--

CREATE TABLE `candidate_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `company` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_experiences`
--

INSERT INTO `candidate_experiences` (`id`, `candidate_id`, `company`, `designation`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pixel Media Ltd.', 'Web Developer', 'Apr 2015', 'Mar 2017', '2023-01-14 12:24:48', '2023-01-14 12:24:48'),
(2, 1, 'Facebook', 'Senior Web Developer', 'Aug 2017', 'Dec 2020', '2023-01-14 12:25:21', '2023-01-14 12:25:21'),
(3, 1, 'Google', 'System Analyst', 'Jan 2021', 'Present', '2023-01-14 12:25:46', '2023-01-14 12:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_resumes`
--

CREATE TABLE `candidate_resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_resumes`
--

INSERT INTO `candidate_resumes` (`id`, `candidate_id`, `name`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 'CV', 'resume_1673727626.pdf', '2023-01-14 14:20:26', '2023-01-14 14:20:26'),
(2, 1, 'Experience Certificate 1', 'resume_1673727729.pdf', '2023-01-14 14:22:09', '2023-01-14 14:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_skills`
--

CREATE TABLE `candidate_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_skills`
--

INSERT INTO `candidate_skills` (`id`, `candidate_id`, `name`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 1, 'Photoshop', '60', '2023-01-14 11:46:04', '2023-01-14 11:46:04'),
(2, 1, 'PHP', '88', '2023-01-14 11:46:13', '2023-01-14 11:46:13'),
(3, 1, 'Laravel', '92', '2023-01-14 11:46:31', '2023-01-14 11:46:31'),
(4, 1, 'Javascript', '75', '2023-01-14 11:46:44', '2023-01-14 11:46:44'),
(5, 1, 'Ajax', '82', '2023-01-14 11:46:53', '2023-01-14 11:46:53'),
(8, 30, 'tester', 'PHP', '2023-07-12 06:28:41', '2023-07-12 06:28:41'),
(9, 30, 'tester', 'PHP', '2023-07-12 06:29:08', '2023-07-12 06:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_location_id` int(11) DEFAULT NULL,
  `company_size_id` int(11) DEFAULT NULL,
  `founded_on` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `oh_mon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_tue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_wed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_thu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_fri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_sat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_sun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_code` text COLLATE utf8mb4_unicode_ci,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `twitter` text COLLATE utf8mb4_unicode_ci,
  `linkedin` text COLLATE utf8mb4_unicode_ci,
  `instagram` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `company_industry_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `person_name`, `username`, `email`, `password`, `token`, `logo`, `phone`, `address`, `company_location_id`, `company_size_id`, `founded_on`, `website`, `description`, `oh_mon`, `oh_tue`, `oh_wed`, `oh_thu`, `oh_fri`, `oh_sat`, `oh_sun`, `map_code`, `facebook`, `twitter`, `linkedin`, `instagram`, `status`, `company_industry_id`, `created_at`, `updated_at`) VALUES
(2, 'ABC Media Ltd.', 'James O\'neil', 'james', '2024801030030@student.tdmu.edu.vn', '$2y$10$Y4mm/BMHJGLaxu8kbhg7CuLYKED.f3BD7z5TrQFadvzIeMSYXPB0W', '', 'company_logo_1673536072.png', '193-223-3483', '67, AM Road, KK Street', 2, 2, '2010', 'https://www.abcmedialtd.com', '<p>Lorem ipsum dolor sit amet, te vis veri debet persius, populo platonem disputationi an mea. Eu pro mutat denique intellegam. Ne oporteat recteque scribentur mel, eam erant doctus gubergren ex. At per eros nonumes dissentiunt. Pro volumus dignissim efficiantur ad, te eos nostro veritus expetendis, eam summo legendos ad. At eum euripidis conclusionemque, ius cu assum lucilius, mei mazim theophrastus ea.</p>\r\n<p>Duis libris ponderum per in, esse nemore quo ad. Sit an dicat constituto, illum eleifend mei ex. In duo incorrupte scriptorem, essent ponderum has in, no indoctum cotidieque usu. Sed affert quodsi an. Quod vivendo dignissim te qui, mel alii diam populo at.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Offday', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2172.706509014502!2d-116.04833484480983!3d58.39963502045449!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4b0d03d337cc6ad9%3A0x9968b72aa2438fa5!2sCanada!5e0!3m2!1sen!2sbd!4v1673540786606!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.instagram.com', 1, 2, '2023-01-08 00:53:40', '2023-07-09 23:35:25'),
(4, 'Tax Associates', 'Michael Johnson', 'johnson', 'johnson@gmail.com', '$2y$10$oNr0lqiQa7nJMpMibqRodu7SUpOr5NJya/SqYwCTm9Kgpn6JyMfz.', '', 'company_logo_1673853989.png', '415-732-6182', '4890 Boring Lane San Francisco, CA 94108', 1, 2, '2000', 'https://www.jourrapide.com', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 5, '2023-01-16 01:11:40', '2023-01-16 01:26:50'),
(5, 'Deeptimay Associates', 'Jessica Smith', 'jessica', 'jessica@gmail.com', '$2y$10$rGA9g5hdUbxXINYbLrFbpegD0XN.zOb14kPMIK7wSu8GVEQ6rf/tm', '', 'company_logo_1673854119.png', '705-744-9588', '2275 Landon Street Mattawa, ON P0H 1V0', 2, 4, '2005', 'https://www.jourrapide.com', '<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>\r\n<p>Te ipsum quidam commune eos, per at quidam virtute. Ut vel tantas consetetur, ea habeo mundi vix, eum ne soluta verear deleniti. Quo no nemore adipisci. Case nonumes commune ne eum, tincidunt efficiendi an has, ut sed falli ponderum. Tation tacimates per in, vel alienum voluptatibus id.</p>\r\n<p>Ex nec aperiri aliquando, brute audiam delicata eum te. Vel purto malorum et. Vel omnes scribentur ei, in erant periculis eam, vim ex ceteros lobortis. Ei purto volumus sit, quo ut dolore facilisi. At ius iudico tollit iisque.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 5, '2023-01-16 01:12:41', '2023-01-16 01:28:39'),
(6, 'Strategy One', 'David Williams', 'william', 'william@gmail.com', '$2y$10$aYcE67fGXzchbCxreEMgKuTrXya7wuWvQMitxq8MPmwC3P1IGG8zS', '', 'company_logo_1673856074.png', '(03) 5304 1586', '22 Fitzroy Street, CANADIAN VIC, 3350', 3, 4, '2010', 'https://www.strategyone.com', '<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>\r\n<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 3, '2023-01-16 01:13:54', '2023-01-16 02:01:14'),
(7, 'Nakzib & Associates', 'Jennifer Jones', 'jones', 'jones@gmail.com', '$2y$10$8x3Fxo8yR.em.gqjc3Mxiei14pIV2Oc/wAVwugqNGXP7QstRhblEK', '', 'company_logo_1673856202.png', '604-851-1905', '679 Essendene Avenue Abbotsford, BC V2S 2H7', 2, 4, '2002', 'https://www.nakzibassociates.com', '<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>\r\n<p>Te ipsum quidam commune eos, per at quidam virtute. Ut vel tantas consetetur, ea habeo mundi vix, eum ne soluta verear deleniti. Quo no nemore adipisci. Case nonumes commune ne eum, tincidunt efficiendi an has, ut sed falli ponderum. Tation tacimates per in, vel alienum voluptatibus id.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 1, '2023-01-16 01:15:35', '2023-01-16 02:03:22'),
(8, 'Skyline Corporate Law', 'Melissa Davis', 'melissa', 'melissa@gmail.com', '$2y$10$lFLknuxasy0e78YEs9Tj0ed/PH5XIPa4Z/SVKS7bELzwZxcbCslN.', '', 'company_logo_1673856347.png', '+39 0549 443356', '4 Correa Place JINGILI NT 0810', 6, 1, '1995', 'https://www.skylinelaw.com', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>\r\n<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 1, '2023-01-16 01:16:32', '2023-01-16 02:05:47'),
(9, 'PS Corporation', 'Christopher Garcia', 'garcia', 'garcia@gmail.com', '$2y$10$eJPe699ePPEZ7gp2e6xgB.xvfFI.kTq0hRHi38y5f5VJ1DTwH51vi', '', 'company_logo_1673856503.png', '+86 16535533188', 'No 1 Jianguomenwai Avenue premises,', 4, 3, '2004', 'https://www.pscorp.com', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>\r\n<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 5, '2023-01-16 01:18:07', '2023-01-16 02:08:23'),
(10, 'BTI Brokerage', 'Mary Rodriguez', 'mary', 'mary@gmail.com', '$2y$10$frn1Ace5hhuAjmpGjAu.OeR1I26IyO6r7NU05f4g5QD8fW6Q7f52a', '', 'company_logo_1673856654.png', '(03) 1255-4592', '34 Street, Hideaki, HAYASHI', 5, 3, '2007', 'https://www.btibrokerage.com', '<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>\r\n<p>Te ipsum quidam commune eos, per at quidam virtute. Ut vel tantas consetetur, ea habeo mundi vix, eum ne soluta verear deleniti. Quo no nemore adipisci. Case nonumes commune ne eum, tincidunt efficiendi an has, ut sed falli ponderum. Tation tacimates per in, vel alienum voluptatibus id.</p>\r\n<p>Ex nec aperiri aliquando, brute audiam delicata eum te. Vel purto malorum et. Vel omnes scribentur ei, in erant periculis eam, vim ex ceteros lobortis. Ei purto volumus sit, quo ut dolore facilisi. At ius iudico tollit iisque.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 5, '2023-01-16 01:18:59', '2023-01-16 02:10:54'),
(14, 'T&v', 'TVJJ', 'NGÔ TRUONG VU', 'quyongtiktok@gmail.com', '$2y$10$mka3mOW9/KJOBtfpFlOofOtsoN5eMef1b/8hfE1.9hTAWY1w2ad6C', '5f8375a24ff98d4ba56869a06c62b8ebad5c874decd244317752c49d6cd931b7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2023-07-01 22:43:32', '2023-07-01 22:43:32'),
(15, 'tnhg', 'nguyewyf', 'vsvsvsv', 'arefindev@gmail.com', '$2y$10$ig/HMqbkbePI5UZOoFRW4us/V3Bkuqtqp.MfnEtNCOYXid6KF.FQS', '073cfbda732de26c5915a2bcb8d0b9bf5fddbe295af9f8c2e396753b0843129f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2023-07-02 06:38:07', '2023-07-02 06:38:07'),
(16, 'cacac', 'cacacac', 'ngotruonvu', 'ngotruonvu@gmail.com', '$2y$10$u/eZAD0rFRwW8bkQw/6jN.HCMoYcCBc2ggPYt3x9liSU3ysiX2BEC', '60addbd695e4902f6084dbadc800f4c33dd5024bbf91acb57bed24679239ad90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2023-07-02 06:40:40', '2023-07-02 06:40:40'),
(17, 'Phát triển', 'Nguyễn Phát Triển', 'PT', 'phattrientnhh@gmail.com', '$2y$10$v9.jAYVMCIzdcZPPp5NSPew/f.kX6QRDvrWqvYZQGh8DgFy7rzMNe', '', 'company_logo_1688454746.jpg', 'ASDSA', NULL, 5, 5, '1945', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, '2023-07-03 21:00:50', '2023-07-13 06:30:32'),
(18, 'cong', 'dong', 'congdong', 'congdong562@gmail.com', '$2y$10$.MijfizDl5XTMrn6uk8JMux3jWXj0J5mTqNyaPCZyKpenW7mHT90i', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-07-06 20:25:14', '2023-07-06 20:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `company_industries`
--

CREATE TABLE `company_industries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_industries`
--

INSERT INTO `company_industries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'May mặc', '2023-01-12 03:32:15', '2023-07-03 01:28:22'),
(2, 'Kĩ thuật ứng dụng/ Cơ khí', '2023-01-12 03:32:27', '2023-07-03 01:28:43'),
(3, 'Kĩ thuật IT', '2023-01-12 03:32:34', '2023-07-03 01:29:28'),
(4, 'Ngân hàng/chứng khoán', '2023-01-12 03:32:43', '2023-07-03 01:29:50'),
(5, 'Chăm sóc sức khỏe/Y tế', '2023-01-12 03:32:53', '2023-07-03 01:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `company_locations`
--

CREATE TABLE `company_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_locations`
--

INSERT INTO `company_locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Chí Minh', '2023-01-12 02:59:29', '2023-07-03 01:26:28'),
(2, 'Hà Nội', '2023-01-12 02:59:38', '2023-07-03 01:26:35'),
(3, 'Đà Nẵng', '2023-01-12 02:59:45', '2023-07-03 01:26:51'),
(4, 'Bình Dương', '2023-01-12 02:59:51', '2023-07-03 01:26:58'),
(5, 'Bà Rịa - Vũng Tàu', '2023-01-12 02:59:57', '2023-07-03 01:27:07'),
(6, 'Bình Phước', '2023-01-12 03:00:11', '2023-07-03 01:27:16'),
(9, 'Bình Định', '2023-07-03 01:27:25', '2023-07-03 01:27:25'),
(10, 'Bình Thuận', '2023-07-03 01:27:36', '2023-07-03 01:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `company_photos`
--

CREATE TABLE `company_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_photos`
--

INSERT INTO `company_photos` (`id`, `company_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 2, 'company_photo_1673543078.jpg', '2023-01-12 11:04:38', '2023-01-12 11:04:38'),
(3, 2, 'company_photo_1673548094.jpg', '2023-01-12 12:28:14', '2023-01-12 12:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `company_sizes`
--

CREATE TABLE `company_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_sizes`
--

INSERT INTO `company_sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2-5 Người', '2023-01-12 03:53:03', '2023-07-03 01:30:37'),
(2, '5-10 Người', '2023-01-12 03:53:34', '2023-07-03 01:30:43'),
(3, '10-20 Người', '2023-01-12 03:53:49', '2023-07-03 01:30:51'),
(4, '20-50 Người', '2023-01-12 03:54:00', '2023-07-03 01:30:58'),
(5, '50-100 Người', '2023-01-12 03:54:12', '2023-07-03 01:31:04'),
(6, '100+ Người', '2023-01-12 03:54:21', '2023-07-03 01:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `company_videos`
--

CREATE TABLE `company_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `video_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_videos`
--

INSERT INTO `company_videos` (`id`, `company_id`, `video_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'j_Y2Gwaj7Gs', '2023-01-12 13:11:22', '2023-01-12 13:11:22'),
(3, 2, 'adyjQReasLk', '2023-01-12 13:40:10', '2023-01-12 13:40:10');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet qui gubergren?', '<p>Lorem ipsum dolor sit amet, qui gubergren assueverit definitiones ad. Cu solet delenit signiferumque est, nam impetus persequeris at. Quo te dignissim expetendis, mea tation soleat ea. Rebum oratio ius te, ut eum percipit delicatissimi.</p>', '2023-01-05 07:48:10', '2023-01-05 07:48:10'),
(2, 'Id quo habeo virtute evertitur pro dicta fabulas no?', '<p>Id quo habeo virtute evertitur, pro dicta fabulas no. Diceret alterum consectetuer eum an, ridens hendrerit ea vim, eam wisi viderer periculis eu. Est ad alii concludaturque, quas consetetur mel at. Dicunt evertitur omittantur no est. Cu mea suas bonorum imperdiet, sea graeci mediocritatem at.</p>', '2023-01-05 07:48:59', '2023-01-05 07:48:59'),
(3, 'Eum alii delectus adversarium ne id vim purto?', '<p>Eum alii delectus adversarium ne, id vim purto partiendo intellegat, mei illum doming cu. Ius at adhuc facilisis, quas ullum dissentiunt mel te. Id sanctus hendrerit gloriatur eum, sale malis assum ex pri, aliquid argumentum ut usu. Scripta appetere assentior ius id, ea suas purto eius eam. Vis platonem deseruisse persequeris ut, sit ne doctus accusam, mea ea nisl alienum. Pro nulla quando in, nam purto exerci ea.</p>\r\n<p>In vitae tollit iisque vel, odio laboramus neglegentur eum at. Eam eu simul quando definitionem. An vide adhuc sit, eu quo falli tritani. His viris aperiam ullamcorper ex, est adhuc ridens labores id. Ut vis saepe laudem eripuit, suscipit pericula percipitur eos ad. Unum epicurei ei nam.</p>', '2023-01-05 07:49:30', '2023-01-05 07:49:30'),
(4, 'Pri te errem recteque quo ne apeirian assueverit?', '<p>Pri te errem recteque. Quo ne apeirian assueverit philosophia, etiam debet ad duo. Nam an error paulo definitionem, an mandamus mediocrem mea, postea copiosae dissentiunt per at. Ut mea aliquando forensibus, modus nostrud torquatos ea ius.</p>', '2023-01-05 07:49:52', '2023-01-05 08:11:41'),
(7, 'TEST', '<p>TEST</p>', '2023-07-13 07:29:04', '2023-07-13 07:29:04'),
(8, 'TEST', '<p>TEST</p>', '2023-07-13 07:29:33', '2023-07-13 07:29:33');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibility` text COLLATE utf8mb4_unicode_ci,
  `skill` text COLLATE utf8mb4_unicode_ci,
  `education` text COLLATE utf8mb4_unicode_ci,
  `benefit` text COLLATE utf8mb4_unicode_ci,
  `deadline` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacancy` int(11) NOT NULL,
  `job_category_id` int(11) NOT NULL,
  `job_location_id` int(11) NOT NULL,
  `job_type_id` int(11) NOT NULL,
  `job_experience_id` int(11) NOT NULL,
  `job_gender_id` int(11) NOT NULL,
  `job_salary_range_id` int(11) NOT NULL,
  `map_code` text COLLATE utf8mb4_unicode_ci,
  `is_featured` tinyint(4) NOT NULL,
  `is_urgent` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_id`, `title`, `description`, `responsibility`, `skill`, `education`, `benefit`, `deadline`, `vacancy`, `job_category_id`, `job_location_id`, `job_type_id`, `job_experience_id`, `job_gender_id`, `job_salary_range_id`, `map_code`, `is_featured`, `is_urgent`, `created_at`, `updated_at`) VALUES
(1, 2, 'Software Engineer', '<p>We are looking for a motivated PHP / Laravel developer to come join our agile team of professionals. If you are passionate about technology, constantly seeking to learn and improve your skillset, then you are the type of person we are looking for! We are offering superb career growth opportunities, great compensation, and benefits.</p>', '<p>- Develop, record and maintain cutting edge web-based PHP applications on portal plus premium service platforms</p>\r\n<p>- Build innovative, state-of-the-art applications and collaborate with the User Experience (UX) team</p>\r\n<p>- Ensure HTML, CSS, and shared JavaScript is valid and consistent across applications</p>\r\n<p>- Prepare and maintain all applications utilizing standard development tools</p>\r\n<p>- Utilize backend data services and contribute to increase existing data services API</p>\r\n<p>- Lead the entire web application development life cycle right from concept stage to delivery and post launch support</p>', '<p>- Previous working experience as a PHP / Laravel developer for 4 year(s)</p>\r\n<p>- BS/MS degree in Computer Science, Engineering, MIS or similar relevant field</p>\r\n<p>- In depth knowledge of object-oriented PHP and Laravel PHP Framework</p>\r\n<p>- Hands on experience with SQL schema design, SOLID principles, REST API design</p>\r\n<p>- Software testing (PHPUnit, PHPSpec, Behat)</p>\r\n<p>- MySQL profiling and query optimization</p>\r\n<p>- Creative and efficient problem solver</p>', '<p>- B.Sc. in CSE from any reputed University</p>\r\n<p>- CGPA minimum 3.50</p>', '<p>- Early finish on Fridays for our end of week catch up (4:30 finish, and drink of your choice from the bar)</p>\r\n<p>- 28 days holiday(including bank holidays) rising by 1 day per year PLUS an additional day off on your birthday</p>\r\n<p>- Generous annual bonus.</p>\r\n<p>- Healthcare package</p>\r\n<p>- Free Breakfast on Mondays and free snacks in the office</p>\r\n<p>- Cycle 2 Work Scheme</p>\r\n<p>- Brand new MacBook Pro</p>', '2023-01-14', 2, 1, 1, 1, 3, 3, 3, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10479.736858111415!2d-79.54941021538883!3d43.696075096261126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89d4cb90d7c63ba5%3A0x323555502ab4c477!2sToronto%2C%20ON%2C%20Canada!5e0!3m2!1sen!2sbd!4v1673620210604!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-01-13 08:30:56', '2023-01-13 08:30:56'),
(2, 2, 'Web Designer', '<p>Lorem ipsum dolor sit amet, no tamquam gloriatur democritum mea, his suas everti ad. Odio nulla paulo vel ut, nam no primis accumsan, ad vis aliquam volumus delicatissimi. Tollit accumsan ei duo, his apeirian antiopam cu. At senserit laboramus gloriatur nam. Eu cetero similique nam. Eu dolorem nominavi nam.</p>\r\n<p>Te laudem labitur usu, iudico convenire abhorreant est cu. No discere philosophia necessitatibus vix, has te facete facilisi corrumpit, ne nec movet dolore. Usu modo dissentiunt ex, no iisque nonumes euripidis vel. Usu eius probatus consulatu ex. Suscipiantur intellegebat pri eu.</p>', '<p>- In iuvaret evertitur moderatius pri. Ei his quod labitur quaestio, veri homero ne ius.</p>\r\n<p>- Quod propriae delicatissimi at mel. Vis no dolor offendit torquatos.</p>\r\n<p>- Id dicit temporibus ullamcorper eos, mei an quas nonumy nusquam. In dictas reprehendunt vel, alterum mediocrem sadipscing ad vix.</p>\r\n<p>- Per hinc postulant ut, timeam impedit elaboraret no sit. Ne mel laudem scaevola, ut has esse facer omnes, cu sit eros decore democritum.</p>\r\n<p>- Sed et vide voluptatibus, cum graeco probatus incorrupte te.</p>', '<p>- Te sea erant numquam. Eu utamur explicari omittantur pri. Per odio omittantur cu, congue semper cu vis.</p>\r\n<p>- Sit in maiestatis theophrastus, causae blandit sit eu, dissentiet philosophia pro ex.</p>\r\n<p>- Est no sanctus debitis, id sale eleifend appellantur pri, ex elit liberavisse nam.</p>', '<p>- Et eos rebum graeci convenire, modus percipit vulputate an eam, eos soleat nostrud menandri ei.</p>\r\n<p>- Mutat ancillae vel id, qui id tota phaedrum senserit. Dico fabulas cu vis. Et reque dicta duo, eu ius aliquando liberavisse. Ad est possim quodsi.</p>', '<p>- In sea eirmod labores neglegentur, nam et latine maluisset sadipscing.</p>\r\n<p>- Nonumes neglegentur vim ad. Ne natum epicurei dissentias sed, mea elitr vivendo te.</p>\r\n<p>- Ei maiorum similique comprehensam sed. Suas mazim ludus eu ius, cum munere debitis interpretaris ut.</p>', '2023-01-28', 1, 1, 3, 2, 2, 1, 2, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4813.6601003929845!2d-76.08544139295589!3d43.002220188858225!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89d98b4f6e5bac81%3A0x7cba128675331aa0!2sRuston&#39;s%20Diner!5e0!3m2!1sen!2sbd!4v1673639605774!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-13 13:53:37', '2023-01-14 04:20:00'),
(4, 2, 'PHP Developer', '<p>Te laudem labitur usu, iudico convenire abhorreant est cu. No discere philosophia necessitatibus vix, has te facete facilisi corrumpit, ne nec movet dolore. Usu modo dissentiunt ex, no iisque nonumes euripidis vel. Usu eius probatus consulatu ex. Suscipiantur intellegebat pri eu.</p>\r\n<p>In iuvaret evertitur moderatius pri. Ei his quod labitur quaestio, veri homero ne ius. Quod propriae delicatissimi at mel. Vis no dolor offendit torquatos.</p>', '<p>- Id dicit temporibus ullamcorper eos, mei an quas nonumy nusquam.</p>\r\n<p>- In dictas reprehendunt vel, alterum mediocrem sadipscing ad vix. Per hinc postulant ut, timeam impedit elaboraret no sit.</p>\r\n<p>- Ne mel laudem scaevola, ut has esse facer omnes, cu sit eros decore democritum.</p>\r\n<p>- Sed et vide voluptatibus, cum graeco probatus incorrupte te.</p>', '<p>- Te sea erant numquam. Eu utamur explicari omittantur pri. Per odio omittantur cu, congue semper cu vis.</p>\r\n<p>- Sit in maiestatis theophrastus, causae blandit sit eu, dissentiet philosophia pro ex.</p>\r\n<p>- Est no sanctus debitis, id sale eleifend appellantur pri, ex elit liberavisse nam. Eam laoreet ponderum in, id vis audire aperiam.</p>\r\n<p>- Quod everti scripserit et nam, eam enim bonorum recteque eu.</p>', '<p>- Et eos rebum graeci convenire, modus percipit vulputate an eam, eos soleat nostrud menandri ei.</p>\r\n<p>- Mutat ancillae vel id, qui id tota phaedrum senserit.</p>\r\n<p>- Dico fabulas cu vis. Et reque dicta duo, eu ius aliquando liberavisse. Ad est possim quodsi.</p>', '<p>- In sea eirmod labores neglegentur, nam et latine maluisset sadipscing.</p>\r\n<p>- Nonumes neglegentur vim ad.</p>\r\n<p>- Ne natum epicurei dissentias sed, mea elitr vivendo te.</p>\r\n<p>- Ei maiorum similique comprehensam sed.</p>\r\n<p>- Suas mazim ludus eu ius, cum munere debitis interpretaris ut.</p>', '2023-02-09', 3, 8, 5, 1, 1, 1, 1, NULL, 0, 0, '2023-01-13 14:09:14', '2023-07-09 23:34:27'),
(6, 4, 'Experienced Legal Transcriptionist', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-14', 1, 3, 2, 1, 2, 1, 3, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-01-16 05:58:55', '2023-01-16 05:58:55'),
(7, 4, 'Law Clerk', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-14', 2, 3, 2, 1, 1, 3, 2, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, 0, '2023-01-16 06:00:20', '2023-01-16 06:00:20'),
(8, 5, 'Legal Transcriber', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-14', 1, 3, 1, 2, 1, 1, 1, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 06:02:44', '2023-01-16 06:02:44'),
(9, 5, 'Computer Operator', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-01-16', 1, 4, 2, 1, 3, 3, 2, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, 0, '2023-01-16 06:03:48', '2023-01-16 06:03:48'),
(10, 6, 'Python Developer', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-14', 2, 1, 3, 1, 2, 3, 4, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, 1, '2023-01-16 06:07:05', '2023-01-16 06:07:05'),
(11, 6, 'Senior PHP Developer', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-14', 3, 1, 3, 1, 4, 1, 8, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, 0, '2023-01-16 06:08:08', '2023-01-16 06:08:08'),
(12, 7, 'Senior Accounting Associate', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-16', 5, 3, 1, 1, 2, 1, 3, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-01-16 07:14:21', '2023-01-16 07:14:21'),
(13, 7, 'Administrative Bookkeeper', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-08-16', 1, 3, 1, 2, 3, 3, 5, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 07:15:28', '2023-01-16 07:15:28'),
(14, 8, 'Senior Budget Analyst', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-09-24', 2, 3, 4, 1, 1, 2, 6, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-01-16 07:17:39', '2023-01-16 07:17:39'),
(15, 8, 'Online Accounting Tutor', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-10-26', 1, 3, 5, 2, 1, 3, 3, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 07:18:44', '2023-01-16 07:18:44'),
(16, 9, 'Legal Transcription', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-11-13', 1, 3, 5, 1, 1, 1, 5, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, 1, '2023-01-16 07:24:13', '2023-01-16 07:24:13'),
(17, 10, 'Legislative Assistant', '<p>Lorem ipsum dolor sit amet, mea aliquip legimus vituperata no, electram sententiae scriptorem sea ad. Sed te duis appetere assentior. No quo nihil molestie, et pertinax hendrerit usu. Omnesque tractatos similique et nam, has mucius efficiantur ea, cu per modo sumo nominati.</p>\r\n<p>Eu mel adipiscing voluptatum, delenit nostrum sit cu. Quaestio recteque consequuntur eam ei, duo democritum scripserit an, audiam inciderint an eam. Mel aeque movet ut, ne ius pericula suavitate urbanitas. Sed te odio erant, vel feugiat facilis consulatu ex. Eum meis autem graeco ne, ad qui aperiri necessitatibus. Id congue postea corrumpit sit. Tritani corpora repudiare ea vim.</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '<p>- Mea natum nullam expetendis eu</p>\r\n<p>- An eam reque illum definiebas mei duis noluisse</p>\r\n<p>- Nostrud impedit consectetuer sed ad</p>\r\n<p>- Vim solet dolores ne option numquam sanctus ne duo</p>\r\n<p>- Te cum ubique meliore ne nemore saperet percipit eam&nbsp;</p>\r\n<p>- Debet aliquam dissentiet vel te ad ius elit scaevola</p>\r\n<p>- Ne per movet vocent eloquentiam scripta accumsan phaedrum</p>', '2023-06-29', 1, 13, 5, 2, 2, 2, 3, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 0, '2023-01-16 07:26:34', '2023-01-16 07:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Kĩ thuật ứng dụng/ Cơ khí', 'fas fa-magic', '2023-01-02 04:16:29', '2023-07-03 01:04:06'),
(2, 'Chăm sóc sức khỏe/Y tế', 'fas fa-stethoscope', '2023-01-02 04:17:07', '2023-07-03 00:53:33'),
(3, 'Ngân hàng/chứng khoán', 'fas fa-landmark', '2023-01-02 04:17:47', '2023-07-03 00:50:50'),
(4, 'Data Entry', 'fas fa-share-alt', '2023-01-02 04:18:11', '2023-01-02 04:55:52'),
(5, 'Quản trị kinh doanh/Marketing', 'fas fa-bullhorn', '2023-01-02 04:18:38', '2023-07-03 01:00:49'),
(6, 'Logistics/ Quản lý chuỗi cung ứng', 'fas fa-sitemap', '2023-01-02 04:19:08', '2023-07-03 00:56:54'),
(7, 'May mặc', 'fas fa-users', '2023-01-02 04:19:41', '2023-07-03 00:57:59'),
(8, 'Giáo dục/Đào tạo/Thư viện', 'fas fa-user-graduate', '2023-01-02 04:20:22', '2023-07-03 00:58:52'),
(9, 'Kỹ thuật viên IT', 'fas fa-street-view', '2023-01-02 04:20:41', '2023-07-03 00:59:34'),
(11, 'Bảo vệ', 'fas fa-lock', '2023-01-02 21:25:02', '2023-07-03 01:00:26'),
(12, 'Viễn thông', 'fas fa-vector-square', '2023-01-02 21:25:26', '2023-07-03 01:02:57'),
(13, 'Thương mại', 'fas fa-suitcase', '2023-01-02 21:25:54', '2023-07-03 01:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `job_experiences`
--

CREATE TABLE `job_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_experiences`
--

INSERT INTO `job_experiences` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kinh nghiệm làm việc', '2023-01-11 04:35:24', '2023-07-03 01:18:57'),
(2, '1 Năm', '2023-01-11 04:35:32', '2023-07-03 01:19:13'),
(3, '2 Năm', '2023-01-11 04:35:40', '2023-07-03 01:19:27'),
(4, '3 Năm', '2023-01-11 04:35:47', '2023-07-03 01:19:41'),
(5, '4 Năm', '2023-01-11 04:35:55', '2023-07-03 01:19:49'),
(6, '5 Năm', '2023-01-11 04:36:02', '2023-07-03 01:19:55'),
(7, 'Trên 5 Năm', '2023-01-11 04:36:12', '2023-07-03 01:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `job_genders`
--

CREATE TABLE `job_genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_genders`
--

INSERT INTO `job_genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nam', '2023-01-11 09:51:59', '2023-07-03 01:20:47'),
(2, 'Nữ', '2023-01-11 09:52:09', '2023-07-03 01:20:55'),
(3, 'Không xác định', '2023-01-11 09:52:23', '2023-07-03 01:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `job_locations`
--

CREATE TABLE `job_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_locations`
--

INSERT INTO `job_locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Chí Minh', '2023-01-10 22:54:44', '2023-07-03 01:06:40'),
(2, 'Hà Nội', '2023-01-10 22:54:52', '2023-07-03 01:06:49'),
(3, 'Đà Nẵng', '2023-01-10 22:54:58', '2023-07-03 01:07:00'),
(4, 'An Giang', '2023-01-10 22:55:07', '2023-07-03 01:07:23'),
(5, 'Bà Rịa - Vũng Tàu', '2023-01-10 22:55:13', '2023-07-03 01:07:37'),
(8, 'Bình Dương', '2023-07-03 01:07:54', '2023-07-03 01:07:54'),
(9, 'Bắc Cạn', '2023-07-03 01:08:26', '2023-07-03 01:08:26'),
(10, 'Bắc Giang', '2023-07-03 01:08:34', '2023-07-03 01:08:34'),
(11, 'Bạc Liêu', '2023-07-03 01:08:46', '2023-07-03 01:08:46'),
(12, 'Bắc Ninh', '2023-07-03 01:09:12', '2023-07-03 01:09:12'),
(13, 'Bến Tre', '2023-07-03 01:09:20', '2023-07-03 01:09:20'),
(14, 'Bình Định', '2023-07-03 01:09:30', '2023-07-03 01:09:30'),
(15, 'Bình Phước', '2023-07-03 01:09:52', '2023-07-03 01:09:52'),
(16, 'Bình Thuận', '2023-07-03 01:10:04', '2023-07-03 01:10:04'),
(17, 'Cà Mau', '2023-07-03 01:10:25', '2023-07-03 01:10:25'),
(18, 'Cần Giờ', '2023-07-03 01:10:36', '2023-07-03 01:10:36'),
(19, 'Cao Bằng', '2023-07-03 01:10:46', '2023-07-03 01:10:46'),
(20, 'Đắk Lắk', '2023-07-03 01:11:57', '2023-07-03 01:11:57'),
(21, 'Đắk Nông', '2023-07-03 01:12:05', '2023-07-03 01:12:05'),
(22, 'Điện Biên', '2023-07-03 01:12:18', '2023-07-03 01:12:18'),
(23, 'Đồng Nai', '2023-07-03 01:12:47', '2023-07-03 01:12:47'),
(24, 'Đồng Tháp', '2023-07-03 01:12:58', '2023-07-03 01:12:58'),
(25, 'Gia Lai', '2023-07-03 01:13:05', '2023-07-03 01:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `job_salary_ranges`
--

CREATE TABLE `job_salary_ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_salary_ranges`
--

INSERT INTO `job_salary_ranges` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1 triệu-5 triệu', '2023-01-12 00:16:08', '2023-07-03 01:23:01'),
(2, '5 triệu-10 triệu', '2023-01-12 00:16:34', '2023-07-03 01:23:12'),
(3, '10 triệu-15 triệu', '2023-01-12 00:16:46', '2023-07-03 01:23:23'),
(4, '15 triệu-20 triệu', '2023-01-12 00:17:04', '2023-07-03 01:23:42'),
(5, '20 triệu-25 triệu', '2023-01-12 00:17:22', '2023-07-03 01:23:57'),
(6, '25 triệu-30 triệu', '2023-01-12 00:17:44', '2023-07-03 01:24:09'),
(7, '30 triệu-35 triệu', '2023-01-12 00:17:56', '2023-07-03 01:24:27'),
(8, '35 triệu-40 triệu', '2023-01-12 00:18:19', '2023-07-03 01:24:46'),
(9, '40 triệu-45 triệu', '2023-01-12 00:18:33', '2023-07-03 01:25:22'),
(12, '45 triệu-50 triệu', '2023-07-03 01:25:37', '2023-07-03 01:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Toàn Thời Gian-Full Time', '2023-01-11 02:30:43', '2023-07-03 01:13:57'),
(2, 'Bán Thời Gian-Part Time', '2023-01-11 02:30:51', '2023-07-03 01:16:41'),
(3, 'Thời vụ', '2023-01-11 02:30:58', '2023-07-03 01:17:21'),
(4, 'Thực tập', '2023-01-11 02:31:11', '2023-07-03 01:17:07'),
(5, 'Công việc tự do-Freelance', '2023-01-11 02:31:21', '2023-07-03 01:17:36');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_18_035205_create_admins_table', 1),
(7, '2022_12_28_080549_create_page_home_items_table', 2),
(8, '2023_01_02_021122_create_job_categories_table', 3),
(9, '2023_01_03_084406_create_why_choose_items_table', 4),
(10, '2023_01_04_105324_create_testimonials_table', 5),
(11, '2023_01_05_065028_create_posts_table', 6),
(12, '2023_01_05_134141_create_faqs_table', 7),
(13, '2023_01_05_185142_create_page_faq_items_table', 8),
(14, '2023_01_06_035704_create_page_blog_items_table', 9),
(15, '2023_01_06_050415_create_page_term_items_table', 10),
(16, '2023_01_06_055951_create_page_privacy_items_table', 11),
(17, '2023_01_06_101905_create_page_contact_items_table', 12),
(18, '2023_01_07_025746_create_page_job_category_items_table', 13),
(19, '2023_01_07_064308_create_packages_table', 14),
(20, '2023_01_07_155714_create_page_pricing_items_table', 15),
(21, '2023_01_08_023955_create_page_other_items_table', 16),
(22, '2023_01_08_062413_create_companies_table', 17),
(23, '2023_01_08_104809_create_candidates_table', 18),
(24, '2023_01_10_055139_create_orders_table', 19),
(25, '2023_01_11_043448_create_job_locations_table', 20),
(26, '2023_01_11_081552_create_job_types_table', 21),
(27, '2023_01_11_102006_create_job_experiences_table', 22),
(28, '2023_01_11_104905_create_job_genders_table', 23),
(29, '2023_01_11_161512_create_job_salary_ranges_table', 24),
(30, '2023_01_12_082123_create_company_locations_table', 25),
(31, '2023_01_12_091915_create_company_industries_table', 26),
(32, '2023_01_12_094209_create_company_sizes_table', 27),
(33, '2023_01_12_165520_create_company_photos_table', 28),
(34, '2023_01_12_185742_create_company_videos_table', 29),
(35, '2023_01_13_051447_create_jobs_table', 30),
(36, '2023_01_14_132659_create_candidate_education_table', 31),
(37, '2023_01_14_173836_create_candidate_skills_table', 32),
(38, '2023_01_14_181556_create_candidate_experiences_table', 33),
(39, '2023_01_14_192647_create_candidate_awards_table', 34),
(40, '2023_01_14_201037_create_candidate_resumes_table', 35),
(41, '2023_01_17_080918_create_candidate_bookmarks_table', 36),
(42, '2023_01_17_123810_create_candidate_applications_table', 37),
(43, '2023_01_18_021823_create_advertisements_table', 38),
(44, '2023_01_18_040010_create_banners_table', 39),
(45, '2023_01_18_112645_create_subscribers_table', 40),
(46, '2023_01_19_053258_create_settings_table', 41);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currently_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `company_id`, `package_id`, `order_no`, `paid_amount`, `payment_method`, `start_date`, `expire_date`, `currently_active`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '1673344340', '19', 'PayPal', '2023-01-10', '2023-01-17', 0, '2023-01-10 03:52:20', '2023-01-12 12:23:54'),
(2, 2, 2, '1673344551', '29', 'PayPal', '2023-01-10', '2023-02-09', 0, '2023-01-10 03:55:51', '2023-01-12 12:23:54'),
(3, 2, 1, '1673344722', '19', 'PayPal', '2023-01-10', '2023-01-17', 0, '2023-01-10 03:58:42', '2023-01-12 12:23:54'),
(4, 2, 2, '1673348274', '29', 'Stripe', '2023-01-10', '2023-02-09', 0, '2023-01-10 04:57:54', '2023-01-12 12:23:54'),
(5, 2, 1, '1673348395', '19', 'Stripe', '2023-01-10', '2023-01-17', 0, '2023-01-10 04:59:55', '2023-01-12 12:23:54'),
(6, 2, 2, '1673547834', '29', 'Stripe', '2023-01-12', '2023-02-11', 1, '2023-01-12 12:23:54', '2023-01-12 12:23:54'),
(7, 4, 2, '1673870238', '29', 'PayPal', '2023-01-16', '2023-02-15', 1, '2023-01-16 05:57:18', '2023-01-16 05:57:18'),
(8, 5, 2, '1673870482', '29', 'Stripe', '2023-01-16', '2023-02-15', 1, '2023-01-16 06:01:22', '2023-01-16 06:01:22'),
(9, 6, 1, '1673870737', '19', 'PayPal', '2023-01-16', '2023-01-23', 1, '2023-01-16 06:05:37', '2023-01-16 06:05:37'),
(10, 7, 2, '1673874774', '29', 'Stripe', '2023-01-16', '2023-02-15', 1, '2023-01-16 07:12:54', '2023-01-16 07:12:54'),
(11, 8, 2, '1673874993', '29', 'PayPal', '2023-01-16', '2023-02-15', 1, '2023-01-16 07:16:33', '2023-01-16 07:16:33'),
(12, 9, 2, '1673875216', '29', 'PayPal', '2023-01-16', '2023-02-15', 1, '2023-01-16 07:20:16', '2023-01-16 07:20:16'),
(13, 10, 2, '1673875513', '29', 'PayPal', '2023-01-16', '2023-02-15', 1, '2023-01-16 07:25:13', '2023-01-16 07:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_days` smallint(6) NOT NULL,
  `package_display_time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_allowed_jobs` tinyint(4) NOT NULL,
  `total_allowed_featured_jobs` tinyint(4) NOT NULL,
  `total_allowed_photos` tinyint(4) NOT NULL,
  `total_allowed_videos` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `package_price`, `package_days`, `package_display_time`, `total_allowed_jobs`, `total_allowed_featured_jobs`, `total_allowed_photos`, `total_allowed_videos`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '100000a', 60, '12 month', 11, 10, 10, 10, '2023-01-07 05:47:31', '2023-07-11 10:32:48'),
(2, 'Standard', '290000', 10000, '12 month', 15, 14, 14, 14, '2023-01-07 05:48:43', '2023-07-05 23:51:03'),
(3, 'Gold', '500000', 120, '3 Tháng', 17, 15, 10, 10, '2023-01-07 05:49:36', '2023-07-05 23:56:53'),
(8, 'free', '0', 3, '1 ngày', 1, 0, 1, 0, '2023-07-06 20:31:18', '2023-07-06 20:31:18'),
(9, 'freminium', '18000', 10, '5 tháng', 3, 17, 3, 17, '2023-07-07 18:01:37', '2023-07-07 18:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `page_blog_items`
--

CREATE TABLE `page_blog_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_blog_items`
--

INSERT INTO `page_blog_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Cẩm nang việc làm', 'Cẩm nang việc làm', 'Blog', NULL, '2023-07-03 00:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `page_contact_items`
--

CREATE TABLE `page_contact_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contact_items`
--

INSERT INTO `page_contact_items` (`id`, `heading`, `map_code`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Contact', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d21352.402716370183!2d-92.78038851217293!3d38.008773582048896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87c4de5cceb9b6bb%3A0x284be10f005781bd!2sCamdenton%2C%20MO%2065020%2C%20USA!5e0!3m2!1sen!2sbd!4v1673000849671!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Contact', 'Contact', NULL, '2023-01-06 19:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `page_faq_items`
--

CREATE TABLE `page_faq_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_faq_items`
--

INSERT INTO `page_faq_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Câu hỏi thường gặp (FAQ)', 'Câu hỏi thường gặp', 'FAQ', NULL, '2023-07-03 00:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `page_home_items`
--

CREATE TABLE `page_home_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `job_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `search` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category_subheading` text COLLATE utf8mb4_unicode_ci,
  `job_category_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `why_choose_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `why_choose_subheading` text COLLATE utf8mb4_unicode_ci,
  `why_choose_background` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `why_choose_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_jobs_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_jobs_subheading` text COLLATE utf8mb4_unicode_ci,
  `featured_jobs_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_background` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_subheading` text COLLATE utf8mb4_unicode_ci,
  `blog_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_home_items`
--

INSERT INTO `page_home_items` (`id`, `heading`, `text`, `job_title`, `job_category`, `job_location`, `search`, `background`, `job_category_heading`, `job_category_subheading`, `job_category_status`, `why_choose_heading`, `why_choose_subheading`, `why_choose_background`, `why_choose_status`, `featured_jobs_heading`, `featured_jobs_subheading`, `featured_jobs_status`, `testimonial_heading`, `testimonial_background`, `testimonial_status`, `blog_heading`, `blog_subheading`, `blog_status`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Chúng mình là TDMUJOBS', 'Trang website tìm kiếm những công việc tốt nhất, hoàn hảo và phù hợp với kỹ năng của bạn trong lĩnh vực chuyên môn của bạn.', 'Chức vụ', 'Ngành nghề', 'Nơi làm việc', 'Tìm kiếm', 'banner_home.jpg', 'Việc làm theo ngành nghề', 'Danh sách các công việc', 'Show', 'Tại sao bạn nên đồng hành cùng chúng tôi', 'Phương pháp của chúng tôi để giúp bạn xây dựng sự nghiệp của mình trong tương lai', 'why_choose_home_background.jpg', 'Show', 'Các công việc đang tuyển', 'Hãy Tìm những công việc tuyệt vời phù hợp với kỹ năng của bạn.', 'Show', 'Các thành viên thành lập TDMUJOBS', 'testimonial_home_background.jpg', 'Show', 'Cẩm nang việc làm', 'Mang đến những góc nhìn, câu chuyện và lời khuyên từ những người trong nghề', 'Show', 'TDMUJOBS', 'TDMUJOBS- Trang website tìm kiếm việc làm cho mọi người', NULL, '2023-07-03 00:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `page_job_category_items`
--

CREATE TABLE `page_job_category_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_job_category_items`
--

INSERT INTO `page_job_category_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Job Categories', 'Job Categories', 'Job Categories', NULL, '2023-01-06 21:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `page_other_items`
--

CREATE TABLE `page_other_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_page_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_page_title` text COLLATE utf8mb4_unicode_ci,
  `login_page_meta_description` text COLLATE utf8mb4_unicode_ci,
  `signup_page_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_page_title` text COLLATE utf8mb4_unicode_ci,
  `signup_page_meta_description` text COLLATE utf8mb4_unicode_ci,
  `forget_password_page_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `forget_password_page_title` text COLLATE utf8mb4_unicode_ci,
  `forget_password_page_meta_description` text COLLATE utf8mb4_unicode_ci,
  `job_listing_page_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_listing_page_title` text COLLATE utf8mb4_unicode_ci,
  `job_listing_page_meta_description` text COLLATE utf8mb4_unicode_ci,
  `company_listing_page_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_listing_page_title` text COLLATE utf8mb4_unicode_ci,
  `company_listing_page_meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_other_items`
--

INSERT INTO `page_other_items` (`id`, `login_page_heading`, `login_page_title`, `login_page_meta_description`, `signup_page_heading`, `signup_page_title`, `signup_page_meta_description`, `forget_password_page_heading`, `forget_password_page_title`, `forget_password_page_meta_description`, `job_listing_page_heading`, `job_listing_page_title`, `job_listing_page_meta_description`, `company_listing_page_heading`, `company_listing_page_title`, `company_listing_page_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Đăng nhập', 'Đăng nhập', 'Login', 'Đăng ký tài khoản', 'Đăng ký', 'Signup', 'Quên mật khẩu', 'Quên mật khẩu', 'Forget Password', 'Danh sách các công việc', 'Danh sách các công việc', 'Job Listing', 'Danh sách các công ty', 'Danh sách các công ty', 'Company Listing', NULL, '2023-07-03 00:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `page_pricing_items`
--

CREATE TABLE `page_pricing_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_pricing_items`
--

INSERT INTO `page_pricing_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Giá', 'Giá', 'Pricing', NULL, '2023-07-03 02:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `page_privacy_items`
--

CREATE TABLE `page_privacy_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_privacy_items`
--

INSERT INTO `page_privacy_items` (`id`, `heading`, `content`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<p>Ea pri harum eleifend, mel quodsi mentitum reformidans te. Tibique placerat luptatum eam ut, usu vocent prompta no. No agam verterem temporibus vis. Officiis scripserit sed no, eum ne quas accumsan efficiantur, in usu quas cetero sapientem. Ut appetere facilisi appellantur est, mei dolor corpora ne. Autem numquam atomorum ne mel.</p>\r\n<p>Altera noster appellantur nam cu, ponderum adversarium an eos. Alia ignota mediocrem nam et. Est quodsi inermis adversarium eu, sed atomorum mandamus intellegam id. Usu at insolens recteque.</p>\r\n<p>Nec prima laudem eu, in tale utroque incorrupte ius. Falli disputationi reprehendunt cum ea, te nec minim albucius neglegentur. Eos an ferri aperiam conceptam, ne qui legere cetero consequat. Quod adipiscing eos ad, ut quo quis principes torquatos. Laoreet sapientem cum ne. Pri simul impedit interesset ex.</p>\r\n<p>Mei eripuit interpretaris ut. Te quo numquam gloriatur, decore timeam per et. Ad sit amet hinc vulputate, ea habeo impedit torquatos pri, at semper facilis salutandi quo. Et brute recusabo adipiscing vim, eos viderer iudicabit no, ne mea fierent omnesque. In facete insolens expetenda quo, in labore impetus sea.</p>\r\n<p>Id sit aliquam praesent adolescens, cu eros mucius latine usu. Cu falli harum pertinacia his, vel placerat similique necessitatibus ea, labores graecis at mea. Te mel utamur impedit ponderum, pro ei tantas commune, accusam cotidieque ne mea. Aeterno graecis per ne, mei ut probatus patrioque. Mea suas nonumes no, dolorem invenire cu pri. Nam sumo democritum te, modo nostro iudicabit est in.</p>\r\n<p>Ea per quas electram similique, te posse sententiae pro. Eum no nostrud alterum epicuri, eum ea imperdiet posidonium inciderint. Eos albucius forensibus honestatis cu, volutpat hendrerit duo te, paulo everti nam ad. Ei eleifend percipitur disputationi cum, ea sint putent salutatus per, vix tibique maluisset argumentum an.</p>\r\n<p>Ex ius dicam alienum deterruisset. Ei sea sint ignota euripidis. Usu nonumes iracundia ne. Ad sint civibus per, eum iisque dissentias in, sea te rationibus elaboraret. Cibo luptatum no sed, recusabo maiestatis incorrupte te eam. Maluisset percipitur pro ex.</p>\r\n<p>Qui at definiebas eloquentiam adversarium, mel ferri inani laoreet ei. Ius ea habeo discere meliore. Soluta tempor efficiendi nec ei, sit ea electram signiferumque. Prompta insolens ad eum.</p>', 'Privacy Policy', 'Privacy Policy', NULL, '2023-01-06 03:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `page_term_items`
--

CREATE TABLE `page_term_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_term_items`
--

INSERT INTO `page_term_items` (`id`, `heading`, `content`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Terms of Use', '<p>Lorem ipsum dolor sit amet, vis ne aeterno regione, sea dicta vituperatoribus et. Ad offendit praesent nec. Ex tritani fuisset qui. Vero probo persecuti ex quo. Eum dico insolens ad, cu eam modo erant corrumpit, et vel quis probatus.</p>\r\n<p>Ei facilis menandri euripidis nam, eam eruditi repudiandae no. Has verterem scribentur ea, sea movet equidem cu. Sonet comprehensam mea te, in pri noluisse liberavisse, ius te placerat partiendo. Consequat forensibus usu at.</p>\r\n<p>Ei clita nemore has, facilisis vulputate usu eu. Facer everti ius id, mollis electram et per, his at error iusto. Eros consectetuer ut qui, ut eos nominavi scaevola honestatis. Ex quo porro indoctum volutpat, eos illum veritus ponderum ut. Viris indoctum tractatos at has.</p>\r\n<p>Sit vidisse fabulas neglegentur ad, sed te simul feugait luptatum. Et mei duis soleat, ne movet scaevola elaboraret qui. Saepe atomorum usu cu, tollit adipiscing has te. Vis ridens quodsi te, meis graecis ad eos, suas hinc nostro duo ut.</p>\r\n<p>Cibo alienum qui id. Tale partem appellantur te pri, ad animal neglegentur nam. Mundi alterum aliquando est no, ne mei saepe salutatus sadipscing. No mea utroque mandamus deseruisse, natum appareat pri ei. Cum an vocibus theophrastus, vis causae interesset an, in noster sapientem inciderint cum.</p>\r\n<p>Minim laudem nusquam in has, quo te veniam nominavi oporteat. Ius ut velit volutpat, eam scripta atomorum in. Eu labore nostro est. Sed ei odio convenire, oportere deseruisse eos ei.</p>\r\n<p>Ceteros suavitate scribentur no nam, ut feugiat assueverit est. Usu facete offendit gubergren ei. Pro impetus labitur veritus eu, ne ius omittam albucius. Eum an nullam regione facilis, ei impetus imperdiet instructior vim. Ad mei dicit nostrum recusabo. Purto dicat graeco eu vix.</p>\r\n<p>Nonumy veritus consetetur ei sit, possit gubergren ei per, affert salutandi et eos. Omnes animal facilis an cum, ex solum primis inciderint sea. Facilisi singulis definitionem ut nec. No mucius placerat evertitur est, per intellegat expetendis no. Ei ius rebum numquam, velit iuvaret repudiandae nec id. Ne everti impetus per.</p>', 'Terms of Use', 'Terms of Use', NULL, '2023-01-05 23:35:01');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_view` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `heading`, `slug`, `short_description`, `description`, `total_view`, `photo`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(2, 'Possim percipit suavitate sed in usu cu', 'possim-percipit-suavitate', 'Possim percipit suavitate sed in. Usu cu rebum pericula, ut periculis vituperatoribus his. Ad per eleifend suavitate. At nec nullam vituperata, eos ridens civibus consequat ne.', '<p>Possim percipit suavitate sed in. Usu cu rebum pericula, ut periculis vituperatoribus his. Ad per eleifend suavitate. At nec nullam vituperata, eos ridens civibus consequat ne. Eam ut congue tempor dissentiet, quas mollis per eu, vis nonumy possim ne.</p>\r\n<p>At expetenda repudiare has. Everti omnesque conceptam sea ex, ex qui eros legendos. Sed choro omnesque volutpat cu. Eu labore sententiae eam, at liber expetenda usu.</p>\r\n<p>Melius minimum per te, dicant putent intellegam vel eu, cu pro copiosae forensibus dissentiet. Pro dicta habemus definiebas te. Te mea assueverit ullamcorper. Clita omittam disputando ut vim, porro conclusionemque has cu.</p>', '3', 'post_1672906331.jpg', 'Possim percipit suavitate sed in usu cu', 'Possim percipit suavitate sed in usu cu', '2023-01-05 02:12:11', '2023-07-10 00:41:35'),
(3, 'At nec sint wisi qui affert repudiare iracundia', 'at-nec-sint-wisi-qui', 'At nec sint wisi. Qui affert repudiare iracundia ad. His eu tollit altera, est eros falli vulputate eu, est ne quem prodesset maiestatis. Nonumes eloquentiam in vel id.', '<p>At nec sint wisi. Qui affert repudiare iracundia ad. His eu tollit altera, est eros falli vulputate eu, est ne quem prodesset maiestatis. Nonumes eloquentiam in vel, id audiam persecuti abhorreant eam.</p>\r\n<p>Eum no postea malorum. Nisl fierent in mel, an nominavi assentior his, in usu porro tincidunt mediocritatem. Vituperata disputando et has, at pro diceret lucilius evertitur. Eos at quot mucius accumsan, no oratio denique nostrum ius.</p>\r\n<p>Nisl tritani tincidunt eos id, veritus copiosae cu vix. Ne nam error argumentum definitiones, cu pro quodsi lucilius consetetur. Quot efficiantur ut qui, pri iudicabit moderatius in, usu ei mollis fabulas vituperata. Eos ridens reprehendunt in, et solet labore mei.</p>\r\n<p>Mei sonet ignota sensibus cu, ei sit consul volumus omittam. Nullam minimum ne his, ex has liber intellegam. Per eu quaeque ponderum, mel at periculis voluptaria, mei possit epicurei ea. An veniam iriure sanctus has, mel adolescens scribentur ne, enim salutandi ei his. Vim eu illum debet similique, munere indoctum sea an.</p>\r\n<p>&nbsp;</p>', '5', 'post_1672906404.jpg', 'At nec sint wisi qui affert repudiare iracundia', 'At nec sint wisi qui affert repudiare iracundia', '2023-01-05 02:13:24', '2023-07-10 00:42:42'),
(4, 'Eum no postea malorum nisl fierent', 'eum-no-postea', 'Eum no postea malorum. Nisl fierent in mel, an nominavi assentior his, in usu porro tincidunt mediocritatem. Vituperata disputando et has, at pro diceret lucilius evertitur.', '<p>Eum no postea malorum. Nisl fierent in mel, an nominavi assentior his, in usu porro tincidunt mediocritatem. Vituperata disputando et has, at pro diceret lucilius evertitur. Eos at quot mucius accumsan, no oratio denique nostrum ius.</p>\r\n<p>Nisl tritani tincidunt eos id, veritus copiosae cu vix. Ne nam error argumentum definitiones, cu pro quodsi lucilius consetetur. Quot efficiantur ut qui, pri iudicabit moderatius in, usu ei mollis fabulas vituperata. Eos ridens reprehendunt in, et solet labore mei.</p>\r\n<p>Mei sonet ignota sensibus cu, ei sit consul volumus omittam. Nullam minimum ne his, ex has liber intellegam. Per eu quaeque ponderum, mel at periculis voluptaria, mei possit epicurei ea. An veniam iriure sanctus has, mel adolescens scribentur ne, enim salutandi ei his. Vim eu illum debet similique, munere indoctum sea an.</p>', '3', 'post_1672906463.jpg', 'Eum no postea malorum nisl fierent', 'Eum no postea malorum nisl fierent', '2023-01-05 02:14:23', '2023-07-10 00:41:51'),
(5, 'Kịch bản là gì? Xây dựng kịch bản cần theo nguyên tắc nào?', 'nghe-nghiep', 'Một sản phẩm nghệ thuật đạt tiêu chuẩn chất lượng và được khán giả đón nhận xuất phát từ kịch bản chỉn chu, chuyên nghiệp. Vậy kịch bản là gì? Một kịch bản hay sẽ bao gồm những yếu tố nào? Làm thế nào để xây dựng kịch bản hiệu quả? Hãy cùng tìm hiểu thông qua nội dung bài viết dưới đây nhé!', '<h2 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 500; line-height: 1.3; font-size: 32px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Kich_ban_la_gi_Kich_ban_tieng_Anh_la_gi\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Kịch bản l&agrave; g&igrave;? Kịch bản tiếng Anh l&agrave; g&igrave;?</strong></span></h2>\r\n<blockquote class=\"wp-block-quote\" style=\"box-sizing: border-box; margin: 0px 0px 1.75em; font-size: 18px; line-height: 35px; position: relative; box-shadow: #dddddd 0px 0px 0px 0px inset; border-left-width: 4px; border-left-color: #000000; padding: 1em; overflow-wrap: break-word; background-color: #eeeeee; color: #666666; font-family: Inter, sans-serif;\">\r\n<p style=\"box-sizing: inherit; margin: 0px;\"><strong style=\"box-sizing: inherit;\">&ldquo;Kịch bản (trong tiếng Anh l&agrave; Scripting) l&agrave; bản thảo nội dung d&ugrave;ng cho phim truyền h&igrave;nh, phim điện ảnh, truyền th&ocirc;ng quảng c&aacute;o, TVC, gameshow, vở kịch&hellip; Trong đ&oacute; c&oacute; m&ocirc; tả h&agrave;nh động, cốt truyện, nh&acirc;n vật, thời lượng, trang phục, vị tr&iacute; g&oacute;c quay.&rdquo;</strong></p>\r\n</blockquote>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Kịch bản thường được viết dưới dạng văn bản tường thuật, với lời thoại v&agrave; h&agrave;nh động chi tiết để hỗ trợ cho khi tr&igrave;nh chiếu tr&ecirc;n s&acirc;n khấu hoặc m&agrave;n ảnh. Kịch bản l&agrave; một phần rất quan trọng của sản xuất kịch v&agrave; phim, l&agrave; &ldquo;vũ kh&iacute;&rdquo; thu h&uacute;t sự quan t&acirc;m của c&aacute;c nh&agrave; đầu tư hoặc c&aacute;c nh&agrave; sản xuất kh&aacute;c v&agrave; đưa t&aacute;c phẩm của nh&agrave; bi&ecirc;n kịch l&ecirc;n s&acirc;n khấu hoặc m&agrave;n ảnh.</p>\r\n<h2 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 500; line-height: 1.3; font-size: 32px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Nguoi_viet_kich_ban_la_gi_Nguoi_viet_kich_ban_tieng_Anh_la_gi\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Người viết kịch bản l&agrave; g&igrave;? Người viết kịch bản tiếng Anh l&agrave; g&igrave;?</strong></span></h2>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Người viết kịch bản l&agrave; người s&aacute;ng t&aacute;c nội dung cho c&aacute;c vở kịch, bộ phim điện ảnh hoặc truyền h&igrave;nh, chương tr&igrave;nh truyền h&igrave;nh thậm ch&iacute; l&agrave; quảng c&aacute;o.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Người viết kịch bản tiếng Anh v&agrave; scripter.</p>\r\n<h2 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 500; line-height: 1.3; font-size: 32px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"3_yeu_to_quan_trong_can_co_trong_kich_ban\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">3 yếu tố quan trọng cần c&oacute; trong kịch bản</strong></span></h2>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Khi x&acirc;y dựng kịch bản c&oacute; 3 yếu tố quan trọng kh&ocirc;ng thể thiếu để tạo hiệu ứng c&acirc;u chuyện v&agrave; thu h&uacute;t sự ch&uacute; &yacute; của c&ocirc;ng ch&uacute;ng, đ&oacute; l&agrave;:&nbsp;</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Yeu_to_xung_dot\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Yếu tố xung đột</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Đ&acirc;y l&agrave; một trong những yếu tố quan trọng tạo n&ecirc;n kịch bản văn học. T&iacute;nh kịch t&iacute;nh trong truyện được bộc lộ qua những sắc th&aacute;i tương phản nhau. Xung đột trong kịch l&agrave; động lực chủ yếu th&uacute;c đẩy sự ph&aacute;t triển của h&agrave;nh động tiếp nối trong kịch, l&agrave; điểm tập trung cao nhất của m&acirc;u thuẫn, t&aacute;c động trực tiếp đến kết cấu, nhịp điệu h&agrave;nh động v&agrave; nội dung của t&aacute;c phẩm.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Nếu kịch bản thiếu xung đột, t&aacute;c phẩm sẽ mất đi đặc trưng thể loại thiết yếu v&agrave; kh&ocirc;ng thể được coi l&agrave; một kịch bản văn học.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Yếu tố xung đột c&oacute; thể tồn tại dưới nhiều h&igrave;nh thức kh&aacute;c nhau, bao gồm: Xung đột giữa nh&acirc;n vật &ndash; nh&acirc;n vật; xung đột giữa lựa chọn v&agrave; h&agrave;nh động của nh&acirc;n vật; xung đột giữa c&aacute;c yếu tố trong thế giới truyện; xung đột giữa c&aacute;c gi&aacute; trị&hellip;</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Hiện thực l&agrave; sự vận động đa chiều giữa c&aacute;c kh&aacute;i niệm: đẹp &ndash; xấu, thiện &ndash; &aacute;c, y&ecirc;u &ndash; gh&eacute;t&hellip; n&ecirc;n xung đột kịch ch&iacute;nh l&agrave; đỉnh điểm của sự vận động n&agrave;y, v&agrave; nh&agrave; bi&ecirc;n kịch tạo ra hoặc lựa chọn xung đột từ m&acirc;u thuẫn hiện tại, từ đ&oacute; đảm bảo t&iacute;nh ch&acirc;n thực của kịch bản.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Nếu kh&ocirc;ng c&oacute; chủ nghĩa hiện thực n&agrave;y, kịch bản sẽ chỉ l&agrave; những d&ograve;ng văn. Ngo&agrave;i ra, nếu kh&ocirc;ng kh&aacute;i qu&aacute;t được c&acirc;u chuyện, kịch bản cũng sẽ chỉ thể hiện những m&acirc;u thuẫn nhỏ phi thực tế trong cuộc sống.</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Ngon_ngu_kich_ban\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Ng&ocirc;n ngữ kịch bản</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Ng&ocirc;n ngữ&nbsp;<strong style=\"box-sizing: inherit;\">kịch bản l&agrave; g&igrave;</strong>? Đối với một t&aacute;c phẩm nghệ thuật, mọi vấn đề xung quanh h&igrave;nh tượng nh&acirc;n vật đều được x&acirc;y dựng trong ng&ocirc;n ngữ kịch bản. Ng&ocirc;n ngữ kịch bản l&agrave; một hệ thống k&yacute; tự mang t&iacute;nh hoạt động của mỗi nh&acirc;n vật. N&oacute; đ&oacute;ng vai tr&ograve; quan trọng trong việc ph&aacute;c họa ch&acirc;n dung v&agrave; thể hiện t&iacute;nh c&aacute;ch cho nh&acirc;n vật.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Nh&acirc;n vật trong t&aacute;c phẩm nghệ thuật thường được mi&ecirc;u tả qua ng&ocirc;n ngữ đối thoại trong truyện, kết hợp với một số lời văn &ndash; ng&ocirc;n ngữ mi&ecirc;u tả. Ngo&agrave;i ra, ng&ocirc;n ngữ kịch bản cũng cần đảm bảo t&iacute;nh cao tr&agrave;o của cốt truyện v&agrave; chuỗi h&agrave;nh động của c&aacute;c nh&acirc;n vật.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">C&ograve;n một yếu tố quan trọng kh&aacute;c trong c&aacute;c t&aacute;c phẩm đ&oacute; l&agrave; h&igrave;nh th&aacute;i ng&ocirc;n ngữ kịch bản. Những c&acirc;u đối thoại đời thường sẽ được sử dụng thay v&igrave; ng&ocirc;n ngữ truyền thống (đặc biệt l&agrave; trong phim v&agrave; kịch n&oacute;i). Mặt kh&aacute;c, lời thoại trong kịch bản tuy gần gũi với đời thực nhưng kh&ocirc;ng n&ecirc;n c&oacute; những từ ngữ th&ocirc; tục m&agrave; cần truyền tải &yacute; nghĩa triết l&yacute; s&acirc;u sắc của t&aacute;c giả đến độc giả, kh&aacute;n giả.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Điều n&agrave;y sẽ gi&uacute;p nh&agrave; bi&ecirc;n kịch thể hiện được t&agrave;i năng của m&igrave;nh khi tận dụng triệt để sức mạnh đặc biệt của ng&ocirc;n ngữ hội thoại để khắc họa nh&acirc;n vật.</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Hanh_dong_trong_kich_ban\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">H&agrave;nh động trong kịch bản</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Trong cuộc sống h&agrave;ng ng&agrave;y, h&agrave;nh động ch&iacute;nh l&agrave; điểm bộc lộ bản chất, t&iacute;nh c&aacute;ch của mỗi con người. Trong văn học nghệ thuật, h&agrave;nh động kịch bản l&agrave; sự m&ocirc; tả cử chỉ, động t&aacute;c của nh&acirc;n vật b&ecirc;n cạnh c&aacute;c yếu tố kh&aacute;c như m&acirc;u thuẫn giữa c&aacute;c nh&acirc;n vật&hellip;</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">C&aacute;c h&agrave;nh động trong kịch bản l&agrave; sự thể hiện trực tiếp nội dung của c&aacute;c xung đột trong kịch bản. Cụ thể, nếu xung đột của truyện ph&aacute;t triển đến cao tr&agrave;o th&igrave; h&agrave;nh động của c&aacute;c nh&acirc;n vật sẽ trở n&ecirc;n gay cấn, căng thẳng hơn, từ đ&oacute; l&agrave;m tăng t&iacute;nh giật g&acirc;n v&agrave; thu h&uacute;t cho t&aacute;c phẩm.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">H&agrave;nh động trong kịch bản sẽ thể hiện được những xung đột theo quy luật nh&acirc;n quả. C&aacute;c cảnh, c&aacute;c đoạn, c&aacute;c chương, c&aacute;c đoạn&hellip; cũng vậy, kết nối với nhau một c&aacute;ch logic, tr&aacute;nh những chi tiết thừa, đồng thời đẩy xung đột của c&acirc;u chuyện l&ecirc;n đỉnh điểm.</p>\r\n<h2 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 500; line-height: 1.3; font-size: 32px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Cac_quy_tac_xay_dung_kich_ban_la_gi\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">C&aacute;c quy tắc x&acirc;y dựng kịch bản l&agrave; g&igrave;?</strong></span></h2>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Để x&acirc;y dựng được một kịch bản hấp dẫn v&agrave; chuy&ecirc;n nghiệp, thu h&uacute;t người xem quan t&acirc;m th&igrave; bạn cần phải tu&acirc;n thủ những quy tắc sau:</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Bam_sat_thuc_te\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">B&aacute;m s&aacute;t thực tế</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">C&aacute;c nh&agrave; bi&ecirc;n kịch thường coi kịch bản l&agrave; nơi họ c&oacute; thể thỏa sức tưởng tượng v&agrave; s&aacute;ng tạo với v&ocirc; số &yacute; tưởng v&agrave; cảm hứng. Tuy nhi&ecirc;n, một điều bạn cần lưu &yacute; trong khi viết l&agrave; kh&ocirc;ng được bỏ qua yếu tố thực tế trong kịch bản của m&igrave;nh. Điều n&agrave;y ảnh hưởng rất nhiều đến độ xuy&ecirc;n suốt của cốt truyện.</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Viet_ngan_gon_nhat_co_the\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Viết ngắn gọn nhất c&oacute; thể</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">T&ugrave;y theo thể loại, y&ecirc;u cầu nội dung v&agrave; thời lượng của từng bộ phim, kịch bản của phim kh&ocirc;ng cần qu&aacute; d&agrave;i nhưng phải đạt hiệu quả thu h&uacute;t v&agrave; mang lại cảm x&uacute;c ch&acirc;n thực cho kh&aacute;n giả. Bởi lẽ, khi thời lượng của nội dung c&acirc;u chuyện ng&agrave;y c&agrave;ng d&agrave;i, nhiều yếu tố thừa, sẽ g&acirc;y tốn k&eacute;m kinh ph&iacute; sản xuất, đồng thời khiến người xem cảm thấy nh&agrave;m ch&aacute;n, kh&ocirc;ng thể tập trung v&agrave;o t&aacute;c phẩm, mất đi sự hấp dẫn v&agrave; l&ocirc;i cuốn.</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Ke_chuyen_bang_hinh_anh\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Kể chuyện bằng h&igrave;nh ảnh</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Một quy tắc cực kỳ quan trọng của việc viết kịch bản l&agrave; vận dụng những h&igrave;nh ảnh cụ thể để tạo n&ecirc;n c&acirc;u chuyện cho nh&acirc;n vật. Những c&acirc;u chuyện bằng h&igrave;nh ảnh sẽ truyền tải t&iacute;nh ch&acirc;n thực v&agrave; những khoảnh khắc ấn tượng của t&aacute;c phẩm đến kh&aacute;n giả.</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Tan_dung_khoanh_khac_gia_tri_trong_cau_chuyen\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Tận dụng khoảnh khắc gi&aacute; trị trong c&acirc;u chuyện</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Nội dung hay thời lượng của một t&aacute;c phẩm thường kh&ocirc;ng thể thể hiện hết gi&aacute; trị m&agrave; t&aacute;c giả muốn đề cập. Ngược lại, để chạm đến cảm x&uacute;c của kh&aacute;n giả th&igrave; ch&iacute;nh những khoảnh khắc đặc biệt trong kịch bản sẽ để lại ấn tượng mạnh trong l&ograve;ng kh&aacute;n giả.</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Chon_loc_chi_tiet_cu\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Chọn lọc chi tiết cũ</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Với những chi tiết cũ thường xuy&ecirc;n xuất hiện trong t&aacute;c phẩm v&agrave; được t&aacute;i sử dụng nhiều lần, c&aacute;c nh&agrave; bi&ecirc;n kịch d&agrave;y dặn kinh nghiệm cho rằng đ&acirc;y ch&iacute;nh l&agrave; c&aacute;ch gi&uacute;p t&aacute;c phẩm tạo được sự ch&uacute; &yacute; tối đa. Tuy nhi&ecirc;n, tr&ecirc;n thực tế, nếu kh&ocirc;ng biết c&aacute;ch tạo sự li&ecirc;n kết logic trong c&acirc;u chuyện, c&aacute;c chi tiết cũ dễ bị mất dấu ấn v&agrave; g&acirc;y sự hụt hẫng kh&ocirc;ng đ&aacute;ng c&oacute; cho kh&aacute;n giả.</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Ke_chuyen_bang_cam_xuc\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Kể chuyện bằng cảm x&uacute;c</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Kh&aacute;n giả thường đ&aacute;nh gi&aacute; cao nội dung của t&aacute;c phẩm chứ kh&ocirc;ng phải độ d&agrave;i hay nh&acirc;n vật. Để c&oacute; thể dẫn dắt mạch cảm x&uacute;c của kh&aacute;n giả, bi&ecirc;n kịch n&ecirc;n sử dụng lối kể gi&agrave;u cảm x&uacute;c, truyền cảm v&agrave; tập trung v&agrave;o gi&aacute; trị &yacute; nghĩa m&agrave; t&aacute;c phẩm muốn truyền tải.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">B&agrave;i viết tr&ecirc;n đ&atilde; chia sẻ đến bạn định nghĩa&nbsp;<strong style=\"box-sizing: inherit;\">kịch bản l&agrave; g&igrave;&nbsp;</strong>v&agrave; c&aacute;c quy tắc x&acirc;y dựng kịch bản. Hy vọng những th&ocirc;ng tin bổ &iacute;ch tr&ecirc;n sẽ gi&uacute;p bạn s&aacute;ng tạo n&ecirc;n những kịch bản hay, chất lượng v&agrave; thu h&uacute;t được thật nhiều người xem!</p>\r\n<p class=\"has-text-align-right\" style=\"box-sizing: inherit; margin: 0px 0px 1em; text-align: right; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"box-sizing: inherit;\">TDMUJOBS</strong></p>', '11', 'post_1688374736.jpg', 'Kịch bản là gì? Xây dựng kịch bản cần theo nguyên tắc nào?', 'Kịch bản là gì? Xây dựng kịch bản cần theo nguyên tắc nào?', '2023-01-05 02:15:09', '2023-07-10 01:15:57'),
(6, 'CV video là gì? 5 bước giúp bạn tạo CV video chuyên nghiệp', 'tu-van-nghe-nghiep', 'CV video là một trong những loại hình CV mới và phổ biến hiện nay. Tuy nhiên nhiều bạn trẻ vừa mới ra trường lại chưa hiểu hết được CV video là gì? Bài viết dưới đây sẽ giúp bạn giải đáp được hết các thắc mắc về loại video này!...........', '<h2 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 500; line-height: 1.3; font-size: 32px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"CV_video_la_gi\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">CV video l&agrave; g&igrave;?</strong></span></h2>\r\n<blockquote class=\"wp-block-quote\" style=\"box-sizing: border-box; margin: 0px 0px 1.75em; font-size: 18px; line-height: 35px; position: relative; box-shadow: #dddddd 0px 0px 0px 0px inset; border-left-width: 4px; border-left-color: #000000; padding: 1em; overflow-wrap: break-word; background-color: #eeeeee; color: #666666; font-family: Inter, sans-serif;\">\r\n<p style=\"box-sizing: inherit; margin: 0px;\"><strong style=\"box-sizing: inherit;\">&ldquo;CV video l&agrave; loại CV mới nhất hiện nay được tạo bằng h&igrave;nh thức video, c&oacute; những chức năng giống với c&aacute;c mẫu CV th&ocirc;ng thường nhưng c&aacute;ch thể hiện c&oacute; sự kh&aacute;c biệt.&rdquo;</strong></p>\r\n</blockquote>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">C&aacute;c mẫu CV th&ocirc;ng thường được tạo ra bằng văn bản th&igrave; CV video được tạo n&ecirc;n từ những clip ngắn.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">CV video tr&igrave;nh b&agrave;y đầy đủ th&ocirc;ng tin về bản th&acirc;n của ứng vi&ecirc;n giống như c&aacute;c bản CV kh&aacute;c nhưng điểm kh&aacute;c biệt l&agrave; mẫu CV n&agrave;y gửi nội dung về h&igrave;nh ảnh, lời n&oacute;i&hellip; của ứng vi&ecirc;n tạo ra một cuộc gặp gỡ gi&aacute;n tiếp cho người xem để họ c&oacute; thể nghe được trực tiếp lời n&oacute;i v&agrave; h&igrave;nh ảnh cụ thể, r&otilde; r&agrave;ng về bản th&acirc;n bạn. Từ đ&oacute;, nh&agrave; tuyển dụng c&oacute; thể đ&aacute;nh gi&aacute; được c&aacute;c kỹ năng kh&aacute;c trong CV th&ocirc;ng qua đoạn video được x&acirc;y dựng bằng thiết kế đồ họa.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Th&ocirc;ng thường CV video được tr&igrave;nh b&agrave;y bằng hai h&igrave;nh thức. H&igrave;nh thức thứ nhất l&agrave; ứng vi&ecirc;n ngồi trước ống k&iacute;nh v&agrave; giới thiệu về m&igrave;nh, thể hiện hết những ưu điểm của bản th&acirc;n đến nh&agrave; tuyển dụng một c&aacute;ch sinh động nhất. H&igrave;nh thức thứ hai l&agrave; tạo ra một mẫu CV bằng đồ họa, trong đ&oacute; c&oacute; chứa đầy đủ th&ocirc;ng tin quan trọng. Sau khi đ&atilde; được chỉnh sửa cẩn thận th&igrave; sẽ xuất video th&igrave; đoạn clip n&agrave;y sẽ được gửi đến cho nh&agrave; tuyển dụng trong vai tr&ograve; l&agrave; bản CV xin việc ho&agrave;n chỉnh.</p>\r\n<h2 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 500; line-height: 1.3; font-size: 32px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Uu_nhuoc_diem_cua_CV_video_la_gi\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Ưu nhược điểm của CV video l&agrave; g&igrave;?</strong></span></h2>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Uu_diem_cua_CV_video\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Ưu điểm của CV video</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">93% sự giao tiếp của con người được sử dụng bằng h&igrave;nh ảnh v&agrave; lời n&oacute;i. Do đ&oacute; một đoạn clip khoảng 1 ph&uacute;t c&oacute; thể tương đương con số 1,8 triệu ng&ocirc;n từ gi&uacute;p thu h&uacute;t hiệu quả hơn cả ng&agrave;n lần so với đoạn văn khi c&ugrave;ng thể hiện chức năng l&agrave; truyền tải th&ocirc;ng điệp.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">CV video sinh động hơn n&ecirc;n sẽ thu h&uacute;t hơn c&aacute;c bản CV bằng văn bản.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Với những c&ocirc;ng việc ứng tuyển đ&ograve;i hỏi sự s&aacute;ng tạo hoặc xin việc ở nước ngo&agrave;i, c&aacute;c doanh nghiệp nước ngo&agrave;i th&igrave; CV video sẽ gi&uacute;p bạn trở n&ecirc;n nổi bật hơn so với c&aacute;c ứng vi&ecirc;n kh&aacute;c.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">C&aacute;ch bạn thể hiện trong video sẽ gi&uacute;p nh&agrave; tuyển dụng đ&aacute;nh gi&aacute; kh&aacute;ch quan hơn về khả năng truyền tải th&ocirc;ng tin v&agrave; thuyết tr&igrave;nh của bạn. Đặc biệt l&agrave; ở những vị tr&iacute; li&ecirc;n quan đến lĩnh vực marketing.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">CV video c&oacute; sự cuốn h&uacute;t v&agrave; sinh động th&igrave; nh&agrave; tuyển dụng c&oacute; thể d&agrave;nh nhiều thời gian để theo d&otilde;i CV của bạn, tạo ưu thế về mặt thời gian.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Sử dụng CV video gi&uacute;p bạn ghi điểm về sự tự tin với nh&agrave; tuyển dụng. Bởi tự tin l&agrave; lợi thế gi&uacute;p bạn gặt h&aacute;i được nhiều th&agrave;nh c&ocirc;ng v&agrave; l&agrave; gốc rễ của sự th&agrave;nh c&ocirc;ng của doanh nghiệp.</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Nhuoc_diem_cua_CV_video\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Nhược điểm của CV video</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Nếu như CV video kh&ocirc;ng c&oacute; sự chuẩn bị cẩn thận sẽ tạo ra t&aacute;c dụng ngược. Điều n&agrave;y l&agrave; bằng chứng tố c&aacute;o điểm yếu của bạn bởi sự kh&ocirc;ng tự tin, lo lắng, hồi hộp với những lời n&oacute;i lắp bắp đều được thu h&igrave;nh lại trong bản CV.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Video chỉ c&oacute; khả năng thể hiện một số tố chất vậy n&ecirc;n kh&ocirc;ng phải ai cũng ph&ugrave; hợp để thiết kế một bản CV video.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Nhiều nh&agrave; tuyển dụng sẽ từ chối nhận CV video bởi n&oacute; c&oacute; dung lượng lớn hơn so với dạng văn bản.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">CV video kh&ocirc;ng thể thay thế được ho&agrave;n to&agrave;n c&aacute;c cuộc phỏng vấn trực tiếp bởi c&aacute;c nh&agrave; tuyển dụng chỉ muốn xem c&aacute;ch m&agrave; bạn phản ứng trước những c&acirc;u hỏi kh&ocirc;ng c&oacute; sự chuẩn bị trước.</p>\r\n<h2 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 500; line-height: 1.3; font-size: 32px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Khi_nao_nen_tao_CV_video\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Khi n&agrave;o n&ecirc;n tạo CV video?</strong></span></h2>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Dựa tr&ecirc;n đặc điểm, t&iacute;nh chất v&agrave; gi&aacute; trị của CV video cho thấy những ng&agrave;nh nghề đ&ograve;i hỏi sự s&aacute;ng tạo, năng động sẽ th&iacute;ch hợp nhất. Vậy n&ecirc;n nếu bạn c&oacute; nhu cầu ứng tuyển ở những lĩnh vực sau th&igrave; h&atilde;y d&agrave;nh nhiều thời gian để tự thiết kế CV bằng video:</p>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding-left: 1.5em; list-style-position: initial; list-style-image: initial; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<li style=\"box-sizing: inherit;\">Lĩnh vực truyền th&ocirc;ng</li>\r\n<li style=\"box-sizing: inherit;\">Ng&agrave;nh thời trang</li>\r\n<li style=\"box-sizing: inherit;\">Ng&agrave;nh thiết kế</li>\r\n<li style=\"box-sizing: inherit;\">Mảng hoạt động marketing</li>\r\n<li style=\"box-sizing: inherit;\">Ng&agrave;nh nghệ thuật</li>\r\n<li style=\"box-sizing: inherit;\">Kinh doanh</li>\r\n</ul>\r\n<h2 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 500; line-height: 1.3; font-size: 32px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Nhung_noi_dung_can_co_trong_CV_Video_la_gi\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Những nội dung cần c&oacute; trong CV Video l&agrave; g&igrave;?</strong></span></h2>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Khi tạo CV video xin việc bạn cần c&oacute; đủ c&aacute;c mục v&agrave; nội dung sau đ&acirc;y để bản CV được ho&agrave;n chỉnh v&agrave; chuy&ecirc;n nghiệp hơn khi gửi đến nh&agrave; tuyển dụng:</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"box-sizing: inherit;\">Th&ocirc;ng tin c&aacute; nh&acirc;n, địa chỉ li&ecirc;n&nbsp;</strong><strong style=\"box-sizing: inherit;\">hệ:&nbsp;</strong>Gồm họ v&agrave; t&ecirc;n, ng&agrave;y th&aacute;ng năm sinh, địa chỉ m&agrave; b&ecirc;n tuyển dụng c&oacute; thể li&ecirc;n hệ với bạn như email hay số điện thoại.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"box-sizing: inherit;\">Tr&igrave;nh độ học&nbsp;</strong><strong style=\"box-sizing: inherit;\">vấn:&nbsp;</strong>Bạn c&oacute; thể liệt k&ecirc; một số cấp học của m&igrave;nh từ cao đẳng cho đến bậc đại học. Ngo&agrave;i ra cũng cần kết hợp với việc đưa ra bằng hoặc chứng chỉ đ&agrave;o tạo c&oacute; li&ecirc;n quan.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"box-sizing: inherit;\">Mục ti&ecirc;u nghề&nbsp;</strong><strong style=\"box-sizing: inherit;\">nghiệp:&nbsp;</strong>Bạn h&atilde;y x&acirc;y dựng c&aacute;c mục ti&ecirc;u ngắn hạn v&agrave; d&agrave;i hạn cho từng vị tr&iacute; c&ocirc;ng việc sắp tới của m&igrave;nh để tr&igrave;nh b&agrave;y một c&aacute;ch lưu lo&aacute;t với nh&agrave; tuyển dụng.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"box-sizing: inherit;\">Kinh nghiệm l&agrave;m&nbsp;</strong><strong style=\"box-sizing: inherit;\">việc:&nbsp;</strong>Đưa ra những hiểu biết, trải nghiệm của m&igrave;nh thể hiện được th&ocirc;ng qua c&aacute;c ng&agrave;nh nghề ph&ugrave; hợp t&ugrave;y v&agrave;o vị tr&iacute; ứng tuyển.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong style=\"box-sizing: inherit;\">C&aacute;c kỹ năng:&nbsp;</strong>Đ&acirc;y l&agrave; mục quan trọng để đ&aacute;nh gi&aacute; xem ứng vi&ecirc;n c&oacute; c&aacute;c kỹ năng đ&aacute;p ứng nhu cầu của c&ocirc;ng việc ứng tuyển hay kh&ocirc;ng.</p>\r\n<h2 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 500; line-height: 1.3; font-size: 32px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Huong_dan_cac_buoc_tao_CV_video\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Hướng dẫn c&aacute;c bước tạo CV video</strong></span></h2>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Ngo&agrave;i s&aacute;ng tạo v&agrave; sinh động l&agrave; từ kh&oacute;a ch&iacute;nh cho bản CV video, bạn cũng cần phải chuẩn bị cầu kỳ hơn để tạo được CV bằng video chuy&ecirc;n nghiệp. Dưới đ&acirc;y l&agrave; c&acirc;u trả lời cho c&acirc;u hỏi c&aacute;c bước tạo&nbsp;<strong style=\"box-sizing: inherit;\">CV video l&agrave; g&igrave;.</strong></p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Chuan_bi_dung_cu_thiet_bi_phu_hop\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Chuẩn bị dụng cụ, thiết bị ph&ugrave; hợp</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">M&aacute;y t&iacute;nh kết nối mạng v&agrave; m&aacute;y quay l&agrave; hai thiết bị kh&ocirc;ng thể thiếu để tạo ra CV video. B&ecirc;n cạnh đ&oacute;, bạn cũng c&oacute; thể quay bằng điện thoại, m&aacute;y quay phim, m&aacute;y ảnh nhưng cần sử dụng th&ecirc;m c&aacute;c loại phần mềm chỉnh sửa video để sản phẩm cho ra mắt được sắc n&eacute;t v&agrave; mượt m&agrave; hơn.</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Lua_chon_dia_diem_phu_hop_de_quay_video_lam_CV\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Lựa chọn địa điểm ph&ugrave; hợp để quay video l&agrave;m CV</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Địa điểm quay m&agrave; bạn lựa chọn cần phải y&ecirc;n tĩnh, đủ &aacute;nh s&aacute;ng để gi&uacute;p bạn tập trung tr&igrave;nh b&agrave;y hiệu quả, &iacute;t phải chỉnh sửa v&agrave; tận dụng được hiệu ứng &aacute;nh s&aacute;ng. Tr&aacute;nh những nơi ồn &agrave;o, &aacute;nh s&aacute;ng yếu khiến bạn trở n&ecirc;n căng thẳng, kh&ocirc;ng tập trung thể hiện tốt bản th&acirc;n.</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Chuan_bi_noi_dung\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Chuẩn bị nội dung</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Đ&acirc;y l&agrave; bước quan trọng nhất bởi bạn kh&ocirc;ng thể xuất hiện trước ống k&iacute;nh với sự im lặng v&agrave; những biểu cảm kh&aacute;c nhau. Điều quan trọng l&agrave; bạn cần phải biết nội dung bạn tr&igrave;nh b&agrave;y l&agrave; g&igrave; để truyền tải đến nh&agrave; tuyển dụng. Dựa theo bố cục chuẩn của CV xin việc bạn c&oacute; thể tạo lập những mục m&igrave;nh cần tr&igrave;nh b&agrave;y v&agrave; tr&igrave;nh b&agrave;y th&ocirc;ng tin g&igrave; cho từng phần.</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Quay_va_chinh_sua_video\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Quay v&agrave; chỉnh sửa video</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Nội dung l&agrave; phần quan trọng nhưng quay video v&agrave; edit video cũng cần rất nhiều thời gian. Để bước n&agrave;y diễn ra thuận lợi th&igrave; bạn cần tập trung v&agrave; học nội dung thật tốt. Điều n&agrave;y gi&uacute;p bạn c&oacute; được phong th&aacute;i tự tin m&agrave; kh&ocirc;ng cần phải quay đi quay lại nhiều lần.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Sau khi đ&atilde; quay xong video bạn n&ecirc;n d&agrave;nh thời gian để bi&ecirc;n tập, chỉnh sửa sản phẩm của m&igrave;nh. Video CV kh&ocirc;ng được qu&aacute; d&agrave;i hoặc qu&aacute; ngắn, ngo&agrave;i ra bạn c&oacute; thể th&ecirc;m một số hiệu ứng, nhưng kh&ocirc;ng n&ecirc;n lạm dụng v&igrave; về bản chất đ&acirc;y l&agrave; t&agrave;i liệu xin việc n&ecirc;n sự c&aacute; t&iacute;nh, độc đ&aacute;o cần được thể hiện vừa đủ.</p>\r\n<h3 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 400; line-height: 1.3; font-size: 28px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Dang_tai_video\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Đăng tải video</strong></span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Khi đ&atilde; c&oacute; được video ưng &yacute;, bạn c&oacute; thể đăng tải video l&ecirc;n Youtube bằng c&aacute;ch:</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Bước 1: Đăng nhập v&agrave;o t&agrave;i khoảng Youtube v&agrave; k&iacute;ch v&agrave;o mục Upload ở ph&iacute;a tr&ecirc;n m&agrave;n h&igrave;nh;</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Bước 2: Chọn video bạn muốn tải l&ecirc;n, k&iacute;ch chọn Open;</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Bước 3: Sau khi video đ&atilde; được tải l&ecirc;n, Youtube sẽ y&ecirc;u cầu bạn nhập th&ocirc;ng tin m&ocirc; tả. Tại đ&acirc;y, bạn c&oacute; thể m&ocirc; tả sơ lược về bản th&acirc;n cũng như gắn th&ecirc;m link t&agrave;i khoản mạng x&atilde; hội của bạn;</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Bước 4: Trong phần c&agrave;i đặt quyền ri&ecirc;ng tư, bạn h&atilde;y để chế độ c&ocirc;ng khai để mọi nh&agrave; tuyển dụng c&oacute; thể xem được.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Th&ocirc;ng qua b&agrave;i viết tr&ecirc;n chắc hẳn bạn đ&atilde; hiểu r&otilde; hơn về&nbsp;<strong style=\"box-sizing: inherit;\">CV video l&agrave; g&igrave;&nbsp;</strong>v&agrave; những bước để bạn c&oacute; thể thiết kế được CV video một c&aacute;ch chuy&ecirc;n nghiệp, tạo ấn tượng với nh&agrave; tuyển dụng. Ch&uacute;c bạn lu&ocirc;n th&agrave;nh c&ocirc;ng!</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff; text-align: right;\"><strong style=\"box-sizing: inherit;\">TDMUJOBS</strong></p>', '24', 'post_1688374383.jpg', 'CV video là gì? 5 bước giúp bạn tạo CV video chuyên nghiệp', 'CV video là gì? 5 bước giúp bạn tạo CV video chuyên nghiệp', '2023-01-05 02:15:52', '2023-07-10 01:15:32');
INSERT INTO `posts` (`id`, `heading`, `slug`, `short_description`, `description`, `total_view`, `photo`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(7, 'Tuổi trẻ đừng chọn an nhàn: liệu có đúng??', 'goc-ky-nang', 'Tôi muốn thử sức mình. Tôi muốn khám phá những điều thú vị và mới mẻ. Tôi chỉ thích làm những công việc khó khăn. Tôi sẵn sàng chấp nhận thách thức đi kèm với công việc… Trong khi nhiều người trẻ luôn hừng hực khí thế với sự năng động, cầu tiến đúng với câu “Tuổi trẻ đừng chọn an nhàn” thì cũng không ít người trong chúng ta từng cho rằng tìm được một công việc nhẹ nhàng, đơn giản với mức lương ổn định chính là sự may mắn mà không phải ai cầu cũng được. Hay nói cách khác, họ thích sống yên ổn, an nhàn.', '<h2 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 500; line-height: 1.3; font-size: 32px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Tai_sao_nhieu_nguoi_tre_chon_su_an_nhan\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Tại sao nhiều người trẻ chọn sự an nh&agrave;n?</strong></span></h2>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">C&oacute; thể l&agrave; do lười biếng, kh&ocirc;ng tự tin v&agrave;o năng lực của bản th&acirc;n. Nhiều người cho rằng bản th&acirc;n kh&ocirc;ng phải l&agrave; người c&oacute; năng lực v&agrave; mọi người đều giỏi hơn họ, v&igrave; vậy lựa chọn duy nhất của họ l&agrave; cứ an nh&agrave;n m&agrave; sống, tới đ&acirc;u hay tới đ&oacute;.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">C&oacute; người lại chọn sự nh&agrave;n hạ v&igrave; nghĩ rằng biết nhiều th&igrave; khổ nhiều. Tội t&igrave;nh g&igrave; phải tất bật với c&ocirc;ng việc, OT suốt đ&ecirc;m, căng n&atilde;o suy nghĩ cho c&aacute;c dự &aacute;n sắp tới? Cuộc sống c&oacute; bao l&acirc;u, chẳng bằng để tinh thần thoải m&aacute;i sẽ tốt hơn sao?&nbsp;</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Cũng c&oacute; người bị r&agrave;ng buộc bởi 2 chữ &ldquo;ổn định&rdquo; m&agrave; t&igrave;m đến sự an nh&agrave;n. Họ chọn c&ocirc;ng việc nhẹ, kh&ocirc;ng cần hao t&acirc;m tổn tr&iacute;, s&aacute;ng đi l&agrave;m &ndash; chiều về nh&agrave;, mỗi ng&agrave;y b&igrave;nh lặng tr&ocirc;i qua, kh&ocirc;ng gợn s&oacute;ng, kh&ocirc;ng &aacute;p lực, kh&ocirc;ng phải nghĩ suy chi nhiều cho đau đầu mệt &oacute;c.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Những năm th&aacute;ng n&agrave;y nh&igrave;n qua c&oacute; vẻ sung sướng, v&ocirc; lo v&ocirc; nghĩ nhưng cũng l&agrave; khoảng thời gian m&agrave; bạn đ&aacute;nh mất đi l&ograve;ng quả cảm, sự mạnh mẽ v&agrave; quyền được ph&eacute;p l&agrave;m sai m&agrave; tuổi trẻ vốn c&oacute; để trui r&egrave;n năng lực v&agrave; l&agrave;m gi&agrave;u th&ecirc;m vốn sống của m&igrave;nh. V&agrave; rồi khi kh&oacute; khăn ập tới, đương nhi&ecirc;n người đ&atilde; quen nh&agrave;n hạ sẽ kh&ocirc;ng thể chống đỡ kịp so với những ai đ&atilde; từng trải qua biết bao nhi&ecirc;u &ldquo;c&aacute;i t&aacute;t của cuộc đời&rdquo;. Cuối c&ugrave;ng đ&agrave;nh để bản th&acirc;n ch&igrave;m trong những lời ph&agrave;n n&agrave;n, than thở.</p>\r\n<h2 class=\"wp-block-heading\" style=\"box-sizing: inherit; margin: 16px 0px; font-weight: 500; line-height: 1.3; font-size: 32px; clear: both; color: #282828; font-family: Inter, sans-serif; background-color: #ffffff;\"><span id=\"Su_nhan_ha_o_hien_tai_chinh_la_su_be_tac_o_tuong_lai\" style=\"box-sizing: inherit;\"><strong style=\"box-sizing: inherit;\">Sự nh&agrave;n hạ ở hiện tại ch&iacute;nh l&agrave; sự bế tắc ở tương lai</strong></span></h2>\r\n<blockquote class=\"wp-block-quote\" style=\"box-sizing: border-box; margin: 0px 0px 1.75em; font-size: 18px; line-height: 35px; position: relative; box-shadow: #dddddd 0px 0px 0px 0px inset; border-left-width: 4px; border-left-color: #000000; padding: 1em; overflow-wrap: break-word; background-color: #eeeeee; color: #666666; font-family: Inter, sans-serif;\">\r\n<p style=\"box-sizing: inherit; margin: 0px;\"><strong style=\"box-sizing: inherit;\">&ldquo;Tuổi trẻ đừng chọn an nh&agrave;n. Chinh phục kh&oacute; khăn v&agrave; thử th&aacute;ch mới gi&uacute;p ch&uacute;ng ta trở n&ecirc;n mạnh mẽ v&agrave; c&oacute; những bước tiến đột ph&aacute; dẫn đến th&agrave;nh c&ocirc;ng.&rdquo;</strong></p>\r\n</blockquote>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Anh Bằng, l&agrave; bố của 2 đứa con, sắp sửa bước sang buổi 40, thất nghiệp đến nay đ&atilde; 2 th&aacute;ng. Anh nộp hồ sơ khắp nơi nhưng chẳng kh&aacute;c n&agrave;o đ&aacute;nh rơi c&acirc;y kim xuống đại dương m&ecirc;nh m&ocirc;ng. Thỉnh thoảng cũng đi phỏng vấn nhưng anh kh&ocirc;ng h&agrave;i l&ograve;ng với c&ocirc;ng việc m&agrave; nh&agrave; tuyển dụng cũng chẳng ưng &yacute; với anh. Anh chỉ biết than vắn thở d&agrave;i: &ldquo;Chắc tại trước đ&oacute; th&iacute;ch sống nh&agrave;n hạ, ngại phấn đấu n&ecirc;n giờ phải nếm m&ugrave;i&rdquo;.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Chắc hẳn ch&uacute;ng ta đều biết rằng: rất nhiều thứ nếu như l&acirc;u kh&ocirc;ng d&ugrave;ng đến, để mặc một x&oacute; c&oacute; thể sẽ bị hỏng hay thậm ch&iacute; l&agrave; kh&ocirc;ng thể d&ugrave;ng được nữa. V&iacute; dụ như những thanh kim loại, l&acirc;u kh&ocirc;ng d&ugrave;ng sẽ bị gỉ s&eacute;t, hay như những sản phẩm điện tử l&acirc;u kh&ocirc;ng đụng đến sẽ trở n&ecirc;n kh&oacute; d&ugrave;ng hay thậm ch&iacute; l&agrave; kh&ocirc;ng thể x&agrave;i được nữa. Con người cũng vậy, nhất l&agrave;&nbsp;<strong style=\"box-sizing: inherit;\">tuổi trẻ đừng chọn an nh&agrave;n&nbsp;</strong>bởi nh&agrave;n hạ sẽ khiến ch&uacute;ng ta trở n&ecirc;n tr&igrave; trệ v&agrave; chậm tiến. Một người như thanh &ldquo;củi ướt nhem&rdquo;, c&oacute; cố gắng mấy cũng kh&ocirc;ng thể b&ugrave;ng ch&aacute;y l&ecirc;n được.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Thế giới đang hướng đến sự đa nhiệm, đặc biệt l&agrave; khi c&aacute;c c&ocirc;ng nghệ AI ra đời v&agrave; dần thay thế vị tr&iacute; của con người trong những việc đơn giản. B&ecirc;n cạnh đ&oacute;, thị trường lao động vốn dĩ đất chật người đ&ocirc;ng, đồng nghĩa với việc cơ hội tốt chỉ thuộc về những ai c&oacute; đủ năng lực để tranh gi&agrave;nh. Nếu cứ m&atilde;i tụt hậu, m&atilde;i l&agrave; một nh&acirc;n vi&ecirc;n đơn nhiệm, sớm muộn g&igrave; bạn cũng bị loại bỏ khỏi chuỗi lao động.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Một Designer chỉ biết ho&agrave;n th&agrave;nh file thiết kế theo y&ecirc;u cầu v&agrave; ph&oacute; mặc cho người kh&aacute;c giải quyết những c&ocirc;ng đoạn c&ograve;n lại sẽ yếu thế hơn so với những Designer biết tư vấn chất liệu in v&agrave; c&ocirc;ng nghệ in ph&ugrave; hợp với từng ấn phẩm hay c&oacute; khả năng g&oacute;p &yacute; v&agrave; điều chỉnh những thiếu s&oacute;t của content/marketer để mỗi ấn phẩm quảng c&aacute;o của doanh nghiệp trở n&ecirc;n bắt mắt hơn, hợp thời hơn, ho&agrave;n hảo hơn.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Một người s&aacute;ng tạo nội dung lu&ocirc;n c&oacute; sự chủ động, s&aacute;ng tạo, gi&agrave;u &yacute; tưởng trong c&aacute;ch thức truyền tải th&ocirc;ng điệp quảng c&aacute;o th&ocirc;ng qua ng&ocirc;n ngữ, h&igrave;nh ảnh, c&oacute; khả năng tạo trend, biết viết kịch bản, biết l&agrave;m MC chắc chắn sẽ được coi trọng hơn một Content creator chỉ biết đặt b&uacute;t viết những g&igrave; leader/maketer đặt h&agrave;ng theo khu&ocirc;n mẫu nhất định, th&agrave;nh quả kh&ocirc;ng dở nhưng chẳng c&oacute; g&igrave; khiến người đọc phải ghi nhớ.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Hay một kế to&aacute;n vừa c&oacute; thể đảm nhận vị tr&iacute; kế to&aacute;n c&ocirc;ng nợ, vừa c&oacute; thể g&aacute;nh v&aacute;c trọng tr&aacute;ch của kế to&aacute;n kho v&agrave; am hiểu về c&aacute;c thủ tục bảo hiểm x&atilde; hội bao giờ cũng c&oacute; nhiều cơ hội nghề nghiệp v&agrave; cơ hội thăng tiến hơn so với những kế to&aacute;n chỉ c&oacute; chuy&ecirc;n m&ocirc;n trong một mảng nhất định.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">C&oacute; thể hiện tại bạn cảm thấy h&agrave;i l&ograve;ng với những c&ocirc;ng việc nhẹ nh&agrave;ng, đơn giản m&agrave; m&igrave;nh đang l&agrave;m nhưng đến một ng&agrave;y, khi đạt đến độ ch&iacute;n muồi nhất định của đời người bạn sẽ nhận ra rằng đ&aacute;p &aacute;n &ldquo;Em biết&rdquo; bao giờ cũng đem lại cảm gi&aacute;c thoả m&atilde;n trong l&ograve;ng bạn hơn rất nhiều so với c&acirc;u trả lời &ldquo;Em kh&ocirc;ng biết&rdquo;.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1em; color: #666666; font-family: Inter, sans-serif; font-size: 14px; background-color: #ffffff;\">Nh&acirc;n l&uacute;c c&ograve;n trẻ, h&atilde;y tr&acirc;n trọng từng ph&uacute;t, từng gi&acirc;y để nỗ lực, để cố gắng l&agrave;m cuộc đời của m&igrave;nh trở n&ecirc;n &yacute; nghĩa hơn.&nbsp;<strong style=\"box-sizing: inherit;\">Tuổi trẻ đừng chọn an nh&agrave;n</strong>. Thay v&igrave; mỗi ng&agrave;y đều l&agrave;m một c&ocirc;ng việc nh&agrave;n hạ, thiếu thử th&aacute;ch, th&igrave; h&atilde;y tự tin t&igrave;m kiếm một c&ocirc;ng việc nơi bạn c&oacute; thể trở n&ecirc;n vui vẻ, mỗi ng&agrave;y l&agrave; một ng&agrave;y được l&agrave;m, được học hỏi v&agrave; được ph&aacute;t triển bản th&acirc;n. H&atilde;y tin rằng bắt đầu lại từ đầu sẽ c&oacute; v&ocirc; v&agrave;n kh&oacute; khăn, nhất l&agrave; khi bạn đ&atilde; lớn tuổi bởi v&igrave; uốn c&acirc;y từ thuở c&ograve;n non bao giờ cũng dễ d&agrave;ng hơn so với việc cưỡng &eacute;p uốn nắn khi c&acirc;y đ&atilde; trưởng th&agrave;nh.</p>\r\n<p style=\"text-align: right;\"><strong style=\"box-sizing: inherit;\">TDMUJOBS</strong></p>', '19', 'post_1688374140.jpg', 'Tuổi trẻ đừng chọn an nhàn: liệu có đúng?', 'Tuổi trẻ đừng chọn an nhàn: liệu có đúng?', '2023-01-05 02:18:16', '2023-07-10 01:15:05'),
(12, 'ffaf', 'test_bai', 'dadad', '<p>dadadad</p>', '0', 'post_1689168925.jpg', 'dada', 'dadad', '2023-07-12 06:35:25', '2023-07-12 06:35:25'),
(13, '1111', '123', '123', '<p>sddasd</p>', '0', 'post_1689247576.png', 'asd', 'asd', '2023-07-13 04:26:16', '2023-07-13 04:26:16'),
(14, 'xin chào', 'xinchao', '123', '<p>xinchao123</p>', '0', 'post_1689258112.jpg', '123', NULL, '2023-07-13 07:21:52', '2023-07-13 07:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_bar_phone` text COLLATE utf8mb4_unicode_ci,
  `top_bar_email` text COLLATE utf8mb4_unicode_ci,
  `footer_phone` text COLLATE utf8mb4_unicode_ci,
  `footer_email` text COLLATE utf8mb4_unicode_ci,
  `footer_address` text COLLATE utf8mb4_unicode_ci,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `twitter` text COLLATE utf8mb4_unicode_ci,
  `pinterest` text COLLATE utf8mb4_unicode_ci,
  `linkedin` text COLLATE utf8mb4_unicode_ci,
  `instagram` text COLLATE utf8mb4_unicode_ci,
  `copyright_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `top_bar_phone`, `top_bar_email`, `footer_phone`, `footer_email`, `footer_address`, `facebook`, `twitter`, `pinterest`, `linkedin`, `instagram`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 'favicon.png', '0274-383-4512', 'thongtindientu@tdmu.edu.vn', NULL, 'quyongtiktok@gmail.com', NULL, 'https://www.facebook.com/dhtdm2009', '#S', '#SS', '#SS', '#SS', '© 2020 Trường Đại học Thủ Dầu MộtSS', NULL, '2023-07-13 07:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'testing1@gmail.com', '', 1, '2023-01-18 05:41:36', '2023-01-18 05:43:31'),
(4, 'testing3@gmail.com', '', 1, '2023-01-18 09:39:32', '2023-01-18 09:39:51'),
(5, 'quyongtiktok@gmail.com', '6a44532b78a457835d08c495bed5435c96367a26baf2911145ccb55ee12e19ae', 0, '2023-07-04 04:14:33', '2023-07-04 04:14:33'),
(6, 'quyongtiktok@gmail.com', 'bf1d863eceee26223784f965aa5476113c83274088d3b52cb9ada31ff5ade72e', 0, '2023-07-04 04:14:41', '2023-07-04 04:14:41'),
(7, 'quyongtiktok@gmail.com', 'dc8ca4a7f668e283094d2f38be9c73e4cd73bc2a68636625c1e56274ebb00f17', 0, '2023-07-04 04:14:49', '2023-07-04 04:14:49'),
(8, 'tt2601761@gmail.com', '7d9ffea49ae4a2027cf75a1fb6ffe2e24a22a06ecbe30758cb895f5f3b7a5a1e', 0, '2023-07-04 04:33:58', '2023-07-04 04:33:58'),
(9, 'tt2601761@gmail.com', '292709c02cb7e584c364f2b65dee4ad556598bbbd302185a607d98ee28d84025', 0, '2023-07-04 04:34:06', '2023-07-04 04:34:06'),
(10, 'tt2601761@gmail.com', 'a3ee5c6e790342d21b97a75ddf7f1fbf5d88da1db5a0cad7900a8d18190d760f', 0, '2023-07-04 04:34:14', '2023-07-04 04:34:14'),
(11, 'tt2601761@gmail.com', 'c00ed7cb2c9ef67f02ffe9513bbf8d66d5e7cc418aba7c63fcb18a3923404db4', 0, '2023-07-04 04:34:22', '2023-07-04 04:34:22'),
(12, 'tt2601761@gmail.com', 'ba624176cf8b9f49165fd8ffd0d669ce0ba0ddfbe765a46f5580d8a7a3e50939', 0, '2023-07-04 04:34:26', '2023-07-04 04:34:26'),
(13, 'tt2601761@gmail.com', 'b4752143aee22926810e3fa03d3b7d174f0e7a0cc19857c07e9f776a425ff3e6', 0, '2023-07-04 04:34:30', '2023-07-04 04:34:30'),
(14, 'tt2601761@gmail.com', '4bb8b09bd777cc520be0bcce3cb9a18a7c14c73167f399d954ca5b7088a62f49', 0, '2023-07-04 04:34:34', '2023-07-04 04:34:34'),
(15, 'quyongtiktok@gmail.com', '', 1, '2023-07-04 04:36:30', '2023-07-04 04:37:04'),
(16, 'ngaq3260@gmail.com', '901e0755fdb4a8a82a72806a4d96aa75319f6e53d838b67022f70a5500b9979a', 0, '2023-07-13 07:21:46', '2023-07-13 07:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Ngô Trường Vũ', 'Kỹ thuật viên IT', 'Trang website này là nơi đăng tuyển và tìm việc làm nhanh chóng và hiệu quả nhất', 'testimonial_1688373571.jpg', '2023-01-04 05:28:02', '2023-07-03 01:39:31'),
(2, 'Mai Xuân Thuận', 'Maketing', 'Trang website này là nơi đăng tuyển và tìm việc làm nhanh chóng và hiệu quả nhất', 'testimonial_1688373710.jpg', '2023-01-04 05:29:09', '2023-07-03 01:42:07'),
(4, 'Nguyễn Hoàng Qui', 'Maketing', 'Trang website này là nơi đăng tuyển và tìm việc làm nhanh chóng và hiệu quả nhất', 'testimonial_1688373828.jpg', '2023-07-03 01:43:48', '2023-07-03 01:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_items`
--

CREATE TABLE `why_choose_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_choose_items`
--

INSERT INTO `why_choose_items` (`id`, `icon`, `heading`, `text`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-briefcase', 'Đăng k', 'Bạn chỉ cần tạo tài khoản của mình trên trang web của chúng tôi và nộp đơn xin việc rất nhanh chóng.', '2023-01-03 03:48:54', '2023-07-13 08:19:33'),
(2, 'fas fa-search', 'Công cụ tìm kiếm', 'Chúng tôi cung cấp một công cụ tìm kiếm hoàn hảo và tiên tiến cho người tìm việc, nhà tuyển dụng hoặc công ty.', '2023-01-03 03:50:11', '2023-07-03 01:34:16'),
(3, 'fas fa-share-alt', 'Công ty tốt nhất', 'Các công ty tốt nhất và có uy tín trên toàn thế giới đã đăng ký tại đây và vì vậy bạn sẽ nhận được những công việc chất lượng.', '2023-01-03 03:50:35', '2023-07-03 01:35:31'),
(7, 'hello', 'xinchao', 'h1', '2023-07-13 08:39:58', '2023-07-13 08:39:58'),
(8, 'hello', '#$#$%#@', 'h1', '2023-07-13 09:03:53', '2023-07-13 09:03:53'),
(9, 'hello', 'xinchao', 'h1', '2023-07-15 19:59:50', '2023-07-15 19:59:50'),
(10, 'hello', '#$#$%#@', 'h1', '2023-07-15 20:00:02', '2023-07-15 20:00:02'),
(11, 'hello', 'xinchao', 'h1', '2023-07-16 18:42:10', '2023-07-16 18:42:10'),
(12, 'hello', '#$#$%#@', 'h1', '2023-07-16 18:42:31', '2023-07-16 18:42:31'),
(13, 'hello', 'xinchao', 'h1', '2023-07-16 18:53:45', '2023-07-16 18:53:45'),
(14, 'hello', '#$#$%#@', 'h1', '2023-07-16 18:54:13', '2023-07-16 18:54:13'),
(15, 'hello', 'xinchao', 'h1', '2023-07-20 06:06:15', '2023-07-20 06:06:15'),
(16, 'hello', '#$#$%#@', 'h1', '2023-07-20 06:06:33', '2023-07-20 06:06:33'),
(17, 'hello', 'xinchao', 'h1', '2023-07-20 06:33:13', '2023-07-20 06:33:13'),
(18, 'hello', '#$#$%#@', 'h1', '2023-07-20 06:33:34', '2023-07-20 06:33:34'),
(19, 'hello', 'xinchao', 'h1', '2023-07-20 06:44:32', '2023-07-20 06:44:32'),
(20, 'hello', '#$#$%#@', 'h1', '2023-07-20 06:44:52', '2023-07-20 06:44:52'),
(21, 'hello', 'xinchao', 'h1', '2023-07-20 07:41:10', '2023-07-20 07:41:10'),
(22, 'hello', '#$#$%#@', 'h1', '2023-07-20 07:41:32', '2023-07-20 07:41:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_applications`
--
ALTER TABLE `candidate_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_awards`
--
ALTER TABLE `candidate_awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_bookmarks`
--
ALTER TABLE `candidate_bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_education`
--
ALTER TABLE `candidate_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_industries`
--
ALTER TABLE `company_industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_locations`
--
ALTER TABLE `company_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_photos`
--
ALTER TABLE `company_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_sizes`
--
ALTER TABLE `company_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_videos`
--
ALTER TABLE `company_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_experiences`
--
ALTER TABLE `job_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_genders`
--
ALTER TABLE `job_genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_locations`
--
ALTER TABLE `job_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_salary_ranges`
--
ALTER TABLE `job_salary_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_home_items`
--
ALTER TABLE `page_home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_job_category_items`
--
ALTER TABLE `page_job_category_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_other_items`
--
ALTER TABLE `page_other_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_term_items`
--
ALTER TABLE `page_term_items`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `candidate_applications`
--
ALTER TABLE `candidate_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `candidate_awards`
--
ALTER TABLE `candidate_awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidate_bookmarks`
--
ALTER TABLE `candidate_bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `candidate_education`
--
ALTER TABLE `candidate_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `company_industries`
--
ALTER TABLE `company_industries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_locations`
--
ALTER TABLE `company_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `company_photos`
--
ALTER TABLE `company_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_sizes`
--
ALTER TABLE `company_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `company_videos`
--
ALTER TABLE `company_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `job_experiences`
--
ALTER TABLE `job_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_genders`
--
ALTER TABLE `job_genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_locations`
--
ALTER TABLE `job_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `job_salary_ranges`
--
ALTER TABLE `job_salary_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_home_items`
--
ALTER TABLE `page_home_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_job_category_items`
--
ALTER TABLE `page_job_category_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_other_items`
--
ALTER TABLE `page_other_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_term_items`
--
ALTER TABLE `page_term_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
