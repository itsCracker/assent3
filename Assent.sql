-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 17, 2023 at 06:10 PM
-- Server version: 10.11.2-MariaDB-1
-- PHP Version: 8.1.18

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
-- Table structure for table `eu_product_recalls`
--

CREATE TABLE `eu_product_recalls` (
  `uid` int(11) NOT NULL,
  `type_of_alert` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `alert_number` text DEFAULT NULL,
  `alert_submitted_by` text DEFAULT NULL,
  `country_of_origin` text DEFAULT NULL,
  `counterfeit` text DEFAULT NULL,
  `risk_type` text DEFAULT NULL,
  `risk_legal_provision` text DEFAULT NULL,
  `product` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `brand` text DEFAULT NULL,
  `category` text DEFAULT NULL,
  `number_of_model` text DEFAULT NULL,
  `OECD_portal_category` text DEFAULT NULL,
  `risk` text DEFAULT NULL,
  `compulsory_measures` text DEFAULT NULL,
  `voluntary_measures` text DEFAULT NULL,
  `company_recall_page` text DEFAULT NULL,
  `url_of_case` text DEFAULT NULL,
  `barcode` text DEFAULT NULL,
  `batch_number` text DEFAULT NULL,
  `packaging_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pro65`
--

CREATE TABLE `pro65` (
  `uid` int(11) NOT NULL,
  `ag_number` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `noticing_party` text DEFAULT NULL,
  `plaintiff_attoney` text DEFAULT NULL,
  `alleged_violatior` text DEFAULT NULL,
  `chemicals` text DEFAULT NULL,
  `source` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `case_id` text DEFAULT NULL,
  `case_name` text DEFAULT NULL,
  `court_docket_number` text DEFAULT NULL,
  `civil_penalty` text DEFAULT NULL,
  `attorney_fees` text DEFAULT NULL,
  `other_payments` text DEFAULT NULL,
  `type_of_claim` text DEFAULT NULL,
  `relief_sought` text DEFAULT NULL,
  `injuctive_relief` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eu_product_recalls`
--
ALTER TABLE `eu_product_recalls`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `pro65`
--
ALTER TABLE `pro65`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eu_product_recalls`
--
ALTER TABLE `eu_product_recalls`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro65`
--
ALTER TABLE `pro65`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
