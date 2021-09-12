-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 13, 2021 at 03:08 PM
-- Server version: 10.5.8-MariaDB-3
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `official_assent`
--

-- --------------------------------------------------------

--
-- Table structure for table `australia`
--

CREATE TABLE `australia` (
  `uid` int(255) NOT NULL,
  `agency` varchar(1500) DEFAULT NULL,
  `entity_number` varchar(2000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `programs` varchar(2500) DEFAULT NULL,
  `name` varchar(4000) DEFAULT NULL,
  `title` varchar(2200) DEFAULT NULL,
  `addresses` varchar(3500) DEFAULT NULL,
  `federal_register_notice` varchar(2500) DEFAULT NULL,
  `start_date` varchar(250) DEFAULT NULL,
  `end_date` varchar(250) DEFAULT NULL,
  `standard_order` varchar(2500) DEFAULT NULL,
  `license_requirement` varchar(2500) DEFAULT NULL,
  `license_policy` varchar(2500) DEFAULT NULL,
  `call_sign` varchar(2500) DEFAULT NULL,
  `vessel_type` varchar(2500) DEFAULT NULL,
  `gross_tonnage` varchar(2500) DEFAULT NULL,
  `gross_registered_tonnage` varchar(250) DEFAULT NULL,
  `vessel_flag` varchar(2500) DEFAULT NULL,
  `vessel_owner` varchar(2500) DEFAULT NULL,
  `remarks` varchar(2500) DEFAULT NULL,
  `source_list_url` varchar(2500) DEFAULT NULL,
  `alt_names` varchar(3000) DEFAULT NULL,
  `citizenships` varchar(2500) DEFAULT NULL,
  `dates_of_birth` varchar(2500) DEFAULT NULL,
  `nationalities` varchar(2500) DEFAULT NULL,
  `places_of_birth` varchar(2500) DEFAULT NULL,
  `source_information_url` varchar(2500) DEFAULT NULL,
  `country` varchar(20) DEFAULT 'Australia'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `canada`
--

CREATE TABLE `canada` (
  `uid` int(255) NOT NULL,
  `agency` varchar(1500) DEFAULT NULL,
  `entity_number` varchar(2000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `programs` varchar(2500) DEFAULT NULL,
  `name` varchar(4000) DEFAULT NULL,
  `title` varchar(2200) DEFAULT NULL,
  `addresses` varchar(3500) DEFAULT NULL,
  `federal_register_notice` varchar(2500) DEFAULT NULL,
  `start_date` varchar(250) DEFAULT NULL,
  `end_date` varchar(250) DEFAULT NULL,
  `standard_order` varchar(2500) DEFAULT NULL,
  `license_requirement` varchar(2500) DEFAULT NULL,
  `license_policy` varchar(2500) DEFAULT NULL,
  `call_sign` varchar(2500) DEFAULT NULL,
  `vessel_type` varchar(2500) DEFAULT NULL,
  `gross_tonnage` varchar(2500) DEFAULT NULL,
  `gross_registered_tonnage` varchar(250) DEFAULT NULL,
  `vessel_flag` varchar(2500) DEFAULT NULL,
  `vessel_owner` varchar(2500) DEFAULT NULL,
  `remarks` varchar(2500) DEFAULT NULL,
  `source_list_url` varchar(2500) DEFAULT NULL,
  `alt_names` varchar(3000) DEFAULT NULL,
  `citizenships` varchar(2500) DEFAULT NULL,
  `dates_of_birth` varchar(2500) DEFAULT NULL,
  `nationalities` varchar(2500) DEFAULT NULL,
  `places_of_birth` varchar(2500) DEFAULT NULL,
  `source_information_url` varchar(2500) DEFAULT NULL,
  `country` varchar(20) DEFAULT 'Canada'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `china`
--

CREATE TABLE `china` (
  `uid` int(255) NOT NULL,
  `agency` varchar(1500) DEFAULT NULL,
  `entity_number` varchar(2000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `programs` varchar(2500) DEFAULT NULL,
  `name` varchar(4000) DEFAULT NULL,
  `title` varchar(2200) DEFAULT NULL,
  `addresses` varchar(3500) DEFAULT NULL,
  `federal_register_notice` varchar(2500) DEFAULT NULL,
  `start_date` varchar(250) DEFAULT NULL,
  `end_date` varchar(250) DEFAULT NULL,
  `standard_order` varchar(2500) DEFAULT NULL,
  `license_requirement` varchar(2500) DEFAULT NULL,
  `license_policy` varchar(2500) DEFAULT NULL,
  `call_sign` varchar(2500) DEFAULT NULL,
  `vessel_type` varchar(2500) DEFAULT NULL,
  `gross_tonnage` varchar(2500) DEFAULT NULL,
  `gross_registered_tonnage` varchar(250) DEFAULT NULL,
  `vessel_flag` varchar(2500) DEFAULT NULL,
  `vessel_owner` varchar(2500) DEFAULT NULL,
  `remarks` varchar(2500) DEFAULT NULL,
  `source_list_url` varchar(2500) DEFAULT NULL,
  `alt_names` varchar(3000) DEFAULT NULL,
  `citizenships` varchar(2500) DEFAULT NULL,
  `dates_of_birth` varchar(2500) DEFAULT NULL,
  `nationalities` varchar(2500) DEFAULT NULL,
  `places_of_birth` varchar(2500) DEFAULT NULL,
  `source_information_url` varchar(2500) DEFAULT NULL,
  `country` varchar(20) DEFAULT 'China'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eu`
--

CREATE TABLE `eu` (
  `uid` int(255) NOT NULL,
  `agency` varchar(1500) DEFAULT NULL,
  `entity_number` varchar(2000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `programs` varchar(2500) DEFAULT NULL,
  `name` varchar(4000) DEFAULT NULL,
  `title` varchar(2200) DEFAULT NULL,
  `addresses` varchar(3500) DEFAULT NULL,
  `federal_register_notice` varchar(2500) DEFAULT NULL,
  `start_date` varchar(250) DEFAULT NULL,
  `end_date` varchar(250) DEFAULT NULL,
  `standard_order` varchar(2500) DEFAULT NULL,
  `license_requirement` varchar(2500) DEFAULT NULL,
  `license_policy` varchar(2500) DEFAULT NULL,
  `call_sign` varchar(2500) DEFAULT NULL,
  `vessel_type` varchar(2500) DEFAULT NULL,
  `gross_tonnage` varchar(2500) DEFAULT NULL,
  `gross_registered_tonnage` varchar(250) DEFAULT NULL,
  `vessel_flag` varchar(2500) DEFAULT NULL,
  `vessel_owner` varchar(2500) DEFAULT NULL,
  `remarks` varchar(2500) DEFAULT NULL,
  `source_list_url` varchar(2500) DEFAULT NULL,
  `alt_names` varchar(3000) DEFAULT NULL,
  `citizenships` varchar(2500) DEFAULT NULL,
  `dates_of_birth` varchar(2500) DEFAULT NULL,
  `nationalities` varchar(2500) DEFAULT NULL,
  `places_of_birth` varchar(2500) DEFAULT NULL,
  `source_information_url` varchar(2500) DEFAULT NULL,
  `country` varchar(20) DEFAULT 'EU'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_search`
--

CREATE TABLE `file_search` (
  `search_id` int(200) NOT NULL,
  `name` tinytext DEFAULT NULL,
  `alias_name` tinytext DEFAULT NULL,
  `passport_details` tinytext DEFAULT NULL,
  `nationalities` tinytext DEFAULT NULL,
  `citizenships` tinytext DEFAULT NULL,
  `entity_number` tinytext DEFAULT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `japan`
--

CREATE TABLE `japan` (
  `uid` int(255) NOT NULL,
  `agency` varchar(1500) DEFAULT NULL,
  `entity_number` varchar(2000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `programs` varchar(2500) DEFAULT NULL,
  `name` varchar(4000) DEFAULT NULL,
  `title` varchar(2200) DEFAULT NULL,
  `addresses` varchar(3500) DEFAULT NULL,
  `federal_register_notice` varchar(2500) DEFAULT NULL,
  `start_date` varchar(250) DEFAULT NULL,
  `end_date` varchar(250) DEFAULT NULL,
  `standard_order` varchar(2500) DEFAULT NULL,
  `license_requirement` varchar(2500) DEFAULT NULL,
  `license_policy` varchar(2500) DEFAULT NULL,
  `call_sign` varchar(2500) DEFAULT NULL,
  `vessel_type` varchar(2500) DEFAULT NULL,
  `gross_tonnage` varchar(2500) DEFAULT NULL,
  `gross_registered_tonnage` varchar(250) DEFAULT NULL,
  `vessel_flag` varchar(2500) DEFAULT NULL,
  `vessel_owner` varchar(2500) DEFAULT NULL,
  `remarks` varchar(2500) DEFAULT NULL,
  `source_list_url` varchar(2500) DEFAULT NULL,
  `alt_names` varchar(3000) DEFAULT NULL,
  `citizenships` varchar(2500) DEFAULT NULL,
  `dates_of_birth` varchar(2500) DEFAULT NULL,
  `nationalities` varchar(2500) DEFAULT NULL,
  `places_of_birth` varchar(2500) DEFAULT NULL,
  `source_information_url` varchar(2500) DEFAULT NULL,
  `country` varchar(20) DEFAULT 'Japan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1607075736),
('m130524_201442_init', 1607075753),
('m190124_110200_add_verification_token_column_to_user_table', 1607075753);

-- --------------------------------------------------------

--
-- Table structure for table `uk`
--

CREATE TABLE `uk` (
  `uid` int(255) NOT NULL,
  `agency` varchar(1500) DEFAULT NULL,
  `entity_number` varchar(2000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `programs` varchar(2500) DEFAULT NULL,
  `name` varchar(4000) DEFAULT NULL,
  `title` varchar(2200) DEFAULT NULL,
  `addresses` varchar(3500) DEFAULT NULL,
  `federal_register_notice` varchar(2500) DEFAULT NULL,
  `start_date` varchar(250) DEFAULT NULL,
  `end_date` varchar(250) DEFAULT NULL,
  `standard_order` varchar(2500) DEFAULT NULL,
  `license_requirement` varchar(2500) DEFAULT NULL,
  `license_policy` varchar(2500) DEFAULT NULL,
  `call_sign` varchar(2500) DEFAULT NULL,
  `vessel_type` varchar(2500) DEFAULT NULL,
  `gross_tonnage` varchar(2500) DEFAULT NULL,
  `gross_registered_tonnage` varchar(250) DEFAULT NULL,
  `vessel_flag` varchar(2500) DEFAULT NULL,
  `vessel_owner` varchar(2500) DEFAULT NULL,
  `remarks` varchar(2500) DEFAULT NULL,
  `source_list_url` varchar(2500) DEFAULT NULL,
  `alt_names` varchar(3000) DEFAULT NULL,
  `citizenships` varchar(2500) DEFAULT NULL,
  `dates_of_birth` varchar(2500) DEFAULT NULL,
  `nationalities` varchar(2500) DEFAULT NULL,
  `places_of_birth` varchar(2500) DEFAULT NULL,
  `source_information_url` varchar(2500) DEFAULT NULL,
  `country` varchar(20) DEFAULT 'UK'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usa`
--

CREATE TABLE `usa` (
  `uid` int(255) NOT NULL,
  `agency` varchar(1500) DEFAULT NULL,
  `entity_number` varchar(2000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `programs` varchar(2500) DEFAULT NULL,
  `name` varchar(4000) DEFAULT NULL,
  `title` varchar(2200) DEFAULT NULL,
  `addresses` varchar(3500) DEFAULT NULL,
  `federal_register_notice` varchar(2500) DEFAULT NULL,
  `start_date` varchar(250) DEFAULT NULL,
  `end_date` varchar(250) DEFAULT NULL,
  `standard_order` varchar(2500) DEFAULT NULL,
  `license_requirement` varchar(2500) DEFAULT NULL,
  `license_policy` varchar(2500) DEFAULT NULL,
  `call_sign` varchar(2500) DEFAULT NULL,
  `vessel_type` varchar(2500) DEFAULT NULL,
  `gross_tonnage` varchar(2500) DEFAULT NULL,
  `gross_registered_tonnage` varchar(250) DEFAULT NULL,
  `vessel_flag` varchar(2500) DEFAULT NULL,
  `vessel_owner` varchar(2500) DEFAULT NULL,
  `remarks` varchar(2500) DEFAULT NULL,
  `source_list_url` varchar(2500) DEFAULT NULL,
  `alt_names` varchar(3000) DEFAULT NULL,
  `citizenships` varchar(2500) DEFAULT NULL,
  `dates_of_birth` varchar(2500) DEFAULT NULL,
  `nationalities` varchar(2500) DEFAULT NULL,
  `places_of_birth` varchar(2500) DEFAULT NULL,
  `source_information_url` varchar(2500) DEFAULT NULL,
  `country` varchar(20) DEFAULT 'USA'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `first_name`, `middle_name`, `last_name`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`, `user_role`) VALUES
(1, 'admin', 'System', NULL, 'Administrator', 'a1s_HYCt1MjLWWh656ryvQI8FSZiYAs2', '$2y$13$65tBFkDK27F7Jx7Bb4M8Cu4jVpNC/47yG92gVH.sOdFRGOTYglsU.', NULL, 'douglasdaggs@gmail.com', 10, 1607075884, 1607075884, 'CvYgUJgEQzXbuNWgkDbZ2HWz5PPT_P5H_1607075884', 'SU');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_countries`
-- (See below for the actual view)
--
CREATE TABLE `vw_countries` (
  `uid` int(255) NOT NULL,
  `agency` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_number`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `programs`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addresses`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `federal_register_notice`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standard_order`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_requirement`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_policy`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_sign`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vessel_type`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gross_tonnage`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gross_registered_tonnage`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vessel_flag`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vessel_owner`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_list_url`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_names`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenships`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dates_of_birth`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationalities`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `places_of_birth`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_information_url`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_fileSearch`
-- (See below for the actual view)
--
CREATE TABLE `vw_fileSearch` (
  `agency` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_number`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `programs`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addresses`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `federal_register_notice`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standard_order`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_requirement`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_policy`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_sign`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vessel_type`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gross_tonnage`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gross_registered_tonnage`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vessel_flag`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vessel_owner`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_list_url`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_names`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenships`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dates_of_birth`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationalities`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `places_of_birth`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_information_url`  text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20)
,`user_id` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_countries`
--
DROP TABLE IF EXISTS `vw_countries`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_countries`  AS  select `australia`.`uid` AS `uid`,`australia`.`agency` AS `agency`,`australia`.`entity_number` AS `entity_number`,`australia`.`type` AS `type`,`australia`.`programs` AS `programs`,`australia`.`name` AS `name`,`australia`.`title` AS `title`,`australia`.`addresses` AS `addresses`,`australia`.`federal_register_notice` AS `federal_register_notice`,`australia`.`start_date` AS `start_date`,`australia`.`end_date` AS `end_date`,`australia`.`standard_order` AS `standard_order`,`australia`.`license_requirement` AS `license_requirement`,`australia`.`license_policy` AS `license_policy`,`australia`.`call_sign` AS `call_sign`,`australia`.`vessel_type` AS `vessel_type`,`australia`.`gross_tonnage` AS `gross_tonnage`,`australia`.`gross_registered_tonnage` AS `gross_registered_tonnage`,`australia`.`vessel_flag` AS `vessel_flag`,`australia`.`vessel_owner` AS `vessel_owner`,`australia`.`remarks` AS `remarks`,`australia`.`source_list_url` AS `source_list_url`,`australia`.`alt_names` AS `alt_names`,`australia`.`citizenships` AS `citizenships`,`australia`.`dates_of_birth` AS `dates_of_birth`,`australia`.`nationalities` AS `nationalities`,`australia`.`places_of_birth` AS `places_of_birth`,`australia`.`source_information_url` AS `source_information_url`,`australia`.`country` AS `country` from `australia` union all select `canada`.`uid` AS `uid`,`canada`.`agency` AS `agency`,`canada`.`entity_number` AS `entity_number`,`canada`.`type` AS `type`,`canada`.`programs` AS `programs`,`canada`.`name` AS `name`,`canada`.`title` AS `title`,`canada`.`addresses` AS `addresses`,`canada`.`federal_register_notice` AS `federal_register_notice`,`canada`.`start_date` AS `start_date`,`canada`.`end_date` AS `end_date`,`canada`.`standard_order` AS `standard_order`,`canada`.`license_requirement` AS `license_requirement`,`canada`.`license_policy` AS `license_policy`,`canada`.`call_sign` AS `call_sign`,`canada`.`vessel_type` AS `vessel_type`,`canada`.`gross_tonnage` AS `gross_tonnage`,`canada`.`gross_registered_tonnage` AS `gross_registered_tonnage`,`canada`.`vessel_flag` AS `vessel_flag`,`canada`.`vessel_owner` AS `vessel_owner`,`canada`.`remarks` AS `remarks`,`canada`.`source_list_url` AS `source_list_url`,`canada`.`alt_names` AS `alt_names`,`canada`.`citizenships` AS `citizenships`,`canada`.`dates_of_birth` AS `dates_of_birth`,`canada`.`nationalities` AS `nationalities`,`canada`.`places_of_birth` AS `places_of_birth`,`canada`.`source_information_url` AS `source_information_url`,`canada`.`country` AS `country` from `canada` union all select `china`.`uid` AS `uid`,`china`.`agency` AS `agency`,`china`.`entity_number` AS `entity_number`,`china`.`type` AS `type`,`china`.`programs` AS `programs`,`china`.`name` AS `name`,`china`.`title` AS `title`,`china`.`addresses` AS `addresses`,`china`.`federal_register_notice` AS `federal_register_notice`,`china`.`start_date` AS `start_date`,`china`.`end_date` AS `end_date`,`china`.`standard_order` AS `standard_order`,`china`.`license_requirement` AS `license_requirement`,`china`.`license_policy` AS `license_policy`,`china`.`call_sign` AS `call_sign`,`china`.`vessel_type` AS `vessel_type`,`china`.`gross_tonnage` AS `gross_tonnage`,`china`.`gross_registered_tonnage` AS `gross_registered_tonnage`,`china`.`vessel_flag` AS `vessel_flag`,`china`.`vessel_owner` AS `vessel_owner`,`china`.`remarks` AS `remarks`,`china`.`source_list_url` AS `source_list_url`,`china`.`alt_names` AS `alt_names`,`china`.`citizenships` AS `citizenships`,`china`.`dates_of_birth` AS `dates_of_birth`,`china`.`nationalities` AS `nationalities`,`china`.`places_of_birth` AS `places_of_birth`,`china`.`source_information_url` AS `source_information_url`,`china`.`country` AS `country` from `china` union all select `eu`.`uid` AS `uid`,`eu`.`agency` AS `agency`,`eu`.`entity_number` AS `entity_number`,`eu`.`type` AS `type`,`eu`.`programs` AS `programs`,`eu`.`name` AS `name`,`eu`.`title` AS `title`,`eu`.`addresses` AS `addresses`,`eu`.`federal_register_notice` AS `federal_register_notice`,`eu`.`start_date` AS `start_date`,`eu`.`end_date` AS `end_date`,`eu`.`standard_order` AS `standard_order`,`eu`.`license_requirement` AS `license_requirement`,`eu`.`license_policy` AS `license_policy`,`eu`.`call_sign` AS `call_sign`,`eu`.`vessel_type` AS `vessel_type`,`eu`.`gross_tonnage` AS `gross_tonnage`,`eu`.`gross_registered_tonnage` AS `gross_registered_tonnage`,`eu`.`vessel_flag` AS `vessel_flag`,`eu`.`vessel_owner` AS `vessel_owner`,`eu`.`remarks` AS `remarks`,`eu`.`source_list_url` AS `source_list_url`,`eu`.`alt_names` AS `alt_names`,`eu`.`citizenships` AS `citizenships`,`eu`.`dates_of_birth` AS `dates_of_birth`,`eu`.`nationalities` AS `nationalities`,`eu`.`places_of_birth` AS `places_of_birth`,`eu`.`source_information_url` AS `source_information_url`,`eu`.`country` AS `country` from `eu` union all select `japan`.`uid` AS `uid`,`japan`.`agency` AS `agency`,`japan`.`entity_number` AS `entity_number`,`japan`.`type` AS `type`,`japan`.`programs` AS `programs`,`japan`.`name` AS `name`,`japan`.`title` AS `title`,`japan`.`addresses` AS `addresses`,`japan`.`federal_register_notice` AS `federal_register_notice`,`japan`.`start_date` AS `start_date`,`japan`.`end_date` AS `end_date`,`japan`.`standard_order` AS `standard_order`,`japan`.`license_requirement` AS `license_requirement`,`japan`.`license_policy` AS `license_policy`,`japan`.`call_sign` AS `call_sign`,`japan`.`vessel_type` AS `vessel_type`,`japan`.`gross_tonnage` AS `gross_tonnage`,`japan`.`gross_registered_tonnage` AS `gross_registered_tonnage`,`japan`.`vessel_flag` AS `vessel_flag`,`japan`.`vessel_owner` AS `vessel_owner`,`japan`.`remarks` AS `remarks`,`japan`.`source_list_url` AS `source_list_url`,`japan`.`alt_names` AS `alt_names`,`japan`.`citizenships` AS `citizenships`,`japan`.`dates_of_birth` AS `dates_of_birth`,`japan`.`nationalities` AS `nationalities`,`japan`.`places_of_birth` AS `places_of_birth`,`japan`.`source_information_url` AS `source_information_url`,`japan`.`country` AS `country` from `japan` union all select `uk`.`uid` AS `uid`,`uk`.`agency` AS `agency`,`uk`.`entity_number` AS `entity_number`,`uk`.`type` AS `type`,`uk`.`programs` AS `programs`,`uk`.`name` AS `name`,`uk`.`title` AS `title`,`uk`.`addresses` AS `addresses`,`uk`.`federal_register_notice` AS `federal_register_notice`,`uk`.`start_date` AS `start_date`,`uk`.`end_date` AS `end_date`,`uk`.`standard_order` AS `standard_order`,`uk`.`license_requirement` AS `license_requirement`,`uk`.`license_policy` AS `license_policy`,`uk`.`call_sign` AS `call_sign`,`uk`.`vessel_type` AS `vessel_type`,`uk`.`gross_tonnage` AS `gross_tonnage`,`uk`.`gross_registered_tonnage` AS `gross_registered_tonnage`,`uk`.`vessel_flag` AS `vessel_flag`,`uk`.`vessel_owner` AS `vessel_owner`,`uk`.`remarks` AS `remarks`,`uk`.`source_list_url` AS `source_list_url`,`uk`.`alt_names` AS `alt_names`,`uk`.`citizenships` AS `citizenships`,`uk`.`dates_of_birth` AS `dates_of_birth`,`uk`.`nationalities` AS `nationalities`,`uk`.`places_of_birth` AS `places_of_birth`,`uk`.`source_information_url` AS `source_information_url`,`uk`.`country` AS `country` from `uk` union all select `usa`.`uid` AS `uid`,`usa`.`agency` AS `agency`,`usa`.`entity_number` AS `entity_number`,`usa`.`type` AS `type`,`usa`.`programs` AS `programs`,`usa`.`name` AS `name`,`usa`.`title` AS `title`,`usa`.`addresses` AS `addresses`,`usa`.`federal_register_notice` AS `federal_register_notice`,`usa`.`start_date` AS `start_date`,`usa`.`end_date` AS `end_date`,`usa`.`standard_order` AS `standard_order`,`usa`.`license_requirement` AS `license_requirement`,`usa`.`license_policy` AS `license_policy`,`usa`.`call_sign` AS `call_sign`,`usa`.`vessel_type` AS `vessel_type`,`usa`.`gross_tonnage` AS `gross_tonnage`,`usa`.`gross_registered_tonnage` AS `gross_registered_tonnage`,`usa`.`vessel_flag` AS `vessel_flag`,`usa`.`vessel_owner` AS `vessel_owner`,`usa`.`remarks` AS `remarks`,`usa`.`source_list_url` AS `source_list_url`,`usa`.`alt_names` AS `alt_names`,`usa`.`citizenships` AS `citizenships`,`usa`.`dates_of_birth` AS `dates_of_birth`,`usa`.`nationalities` AS `nationalities`,`usa`.`places_of_birth` AS `places_of_birth`,`usa`.`source_information_url` AS `source_information_url`,`usa`.`country` AS `country` from `usa` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_fileSearch`
--
DROP TABLE IF EXISTS `vw_fileSearch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_fileSearch`  AS  select `co`.`agency` AS `agency`,`co`.`entity_number` AS `entity_number`,`co`.`type` AS `type`,`co`.`programs` AS `programs`,`co`.`name` AS `name`,`co`.`title` AS `title`,`co`.`addresses` AS `addresses`,`co`.`federal_register_notice` AS `federal_register_notice`,`co`.`start_date` AS `start_date`,`co`.`end_date` AS `end_date`,`co`.`standard_order` AS `standard_order`,`co`.`license_requirement` AS `license_requirement`,`co`.`license_policy` AS `license_policy`,`co`.`call_sign` AS `call_sign`,`co`.`vessel_type` AS `vessel_type`,`co`.`remarks` AS `remarks`,`co`.`gross_tonnage` AS `gross_tonnage`,`co`.`gross_registered_tonnage` AS `gross_registered_tonnage`,`co`.`vessel_flag` AS `vessel_flag`,`co`.`vessel_owner` AS `vessel_owner`,`co`.`source_list_url` AS `source_list_url`,`co`.`alt_names` AS `alt_names`,`co`.`citizenships` AS `citizenships`,`co`.`dates_of_birth` AS `dates_of_birth`,`co`.`nationalities` AS `nationalities`,`co`.`places_of_birth` AS `places_of_birth`,`co`.`source_information_url` AS `source_information_url`,`co`.`country` AS `country`,`fs`.`user_id` AS `user_id` from (`vw_countries` `co` join `file_search` `fs` on(`co`.`name` like "%" + `fs`.`name` + "%" or `co`.`alt_names` like "%" + `fs`.`alias_name` + "%" or `co`.`nationalities` like "%" + `fs`.`nationalities` + "%" or `co`.`citizenships` like "%" + `fs`.`citizenships` + "%" or `co`.`entity_number` like "%" + `fs`.`entity_number` + "%")) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `australia`
--
ALTER TABLE `australia`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `canada`
--
ALTER TABLE `canada`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `china`
--
ALTER TABLE `china`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `eu`
--
ALTER TABLE `eu`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `file_search`
--
ALTER TABLE `file_search`
  ADD PRIMARY KEY (`search_id`);

--
-- Indexes for table `japan`
--
ALTER TABLE `japan`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `uk`
--
ALTER TABLE `uk`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `usa`
--
ALTER TABLE `usa`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `australia`
--
ALTER TABLE `australia`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `canada`
--
ALTER TABLE `canada`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `china`
--
ALTER TABLE `china`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eu`
--
ALTER TABLE `eu`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_search`
--
ALTER TABLE `file_search`
  MODIFY `search_id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `japan`
--
ALTER TABLE `japan`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uk`
--
ALTER TABLE `uk`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usa`
--
ALTER TABLE `usa`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
