CREATE TABLE `australia` (
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
  `country` varchar(20) DEFAULT 'Australia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `australia`
  ADD PRIMARY KEY (`uid`);
COMMIT;

CREATE TABLE `canada` (
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
  `country` varchar(20) DEFAULT 'Australia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `canada`
  ADD PRIMARY KEY (`uid`);
COMMIT;

CREATE TABLE `china` (
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
  `country` varchar(20) DEFAULT 'Australia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `china`
  ADD PRIMARY KEY (`uid`);
COMMIT;

CREATE TABLE `eu` (
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
  `country` varchar(20) DEFAULT 'Australia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `eu`
  ADD PRIMARY KEY (`uid`);
COMMIT;

CREATE TABLE `japan` (
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
  `country` varchar(20) DEFAULT 'Australia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `japan`
  ADD PRIMARY KEY (`uid`);
COMMIT;


CREATE TABLE `uk` (
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
  `country` varchar(20) DEFAULT 'Australia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `uk`
  ADD PRIMARY KEY (`uid`);
COMMIT;

CREATE TABLE `usa` (
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
  `country` varchar(20) DEFAULT 'Australia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `usa`
  ADD PRIMARY KEY (`uid`);
COMMIT;

CREATE TABLE `file_search` (
  `search_id` int(200) NOT NULL,
  `name` text DEFAULT NULL,
  `alias_name` text DEFAULT NULL,
  `passport_details` text DEFAULT NULL,
  `nationalities` text DEFAULT NULL,
  `citizenships` text DEFAULT NULL,
  `entity_number` text DEFAULT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `file_search`
  ADD PRIMARY KEY (`search_id`);
COMMIT;


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

DROP TABLE IF EXISTS `vw_fileSearch`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_fileSearch`  AS  select `co`.`agency` AS `agency`,`co`.`entity_number` AS `entity_number`,`co`.`type` AS `type`,`co`.`programs` AS `programs`,`co`.`name` AS `name`,`co`.`title` AS `title`,`co`.`addresses` AS `addresses`,`co`.`federal_register_notice` AS `federal_register_notice`,`co`.`start_date` AS `start_date`,`co`.`end_date` AS `end_date`,`co`.`standard_order` AS `standard_order`,`co`.`license_requirement` AS `license_requirement`,`co`.`license_policy` AS `license_policy`,`co`.`call_sign` AS `call_sign`,`co`.`vessel_type` AS `vessel_type`,`co`.`remarks` AS `remarks`,`co`.`gross_tonnage` AS `gross_tonnage`,`co`.`gross_registered_tonnage` AS `gross_registered_tonnage`,`co`.`vessel_flag` AS `vessel_flag`,`co`.`vessel_owner` AS `vessel_owner`,`co`.`source_list_url` AS `source_list_url`,`co`.`alt_names` AS `alt_names`,`co`.`citizenships` AS `citizenships`,`co`.`dates_of_birth` AS `dates_of_birth`,`co`.`nationalities` AS `nationalities`,`co`.`places_of_birth` AS `places_of_birth`,`co`.`source_information_url` AS `source_information_url`,`co`.`country` AS `country`,`fs`.`user_id` AS `user_id` from (`vw_countries` `co` join `file_search` `fs` on(`co`.`name` like "%" + `fs`.`name` + "%" or `co`.`alt_names` like "%" + `fs`.`alias_name` + "%" or `co`.`nationalities` like "%" + `fs`.`nationalities` + "%" or `co`.`citizenships` like "%" + `fs`.`citizenships` + "%" or `co`.`entity_number` like "%" + `fs`.`entity_number` + "%")) ;


DROP VIEW IF EXISTS vw_fileSearch;
CREATE VIEW vw_fileSearch
AS
SELECT sub.*, file_search.user_id FROM (
  SELECT australia.agency, australia.entity_number, australia.type, australia.programs, australia.name, australia.title, australia.addresses, australia.federal_register_notice, australia.start_date, australia.end_date, australia.standard_order, australia.license_requirement, australia.license_policy, australia.call_sign, australia.vessel_type, australia.gross_tonnage, australia.gross_registered_tonnage, australia.vessel_flag, australia.vessel_owner, australia.remarks, australia.source_list_url, australia.alt_names, australia.citizenships, australia.dates_of_birth, australia.nationalities, australia.places_of_birth, australia.source_information_url, australia.country
  FROM australia
  UNION ALL
  SELECT canada.agency, canada.entity_number, canada.type, canada.programs, canada.name, canada.title, canada.addresses, canada.federal_register_notice, canada.start_date, canada.end_date, canada.standard_order, canada.license_requirement, canada.license_policy, canada.call_sign, canada.vessel_type, canada.gross_tonnage, canada.gross_registered_tonnage, canada.vessel_flag, canada.vessel_owner, canada.remarks, canada.source_list_url, canada.alt_names, canada.citizenships, canada.dates_of_birth, canada.nationalities, canada.places_of_birth, canada.source_information_url, canada.country
  FROM canada
  UNION ALL
  SELECT china.agency, china.entity_number, china.type, china.programs, china.name, china.title, china.addresses, china.federal_register_notice, china.start_date, china.end_date, china.standard_order, china.license_requirement, china.license_policy, china.call_sign, china.vessel_type, china.gross_tonnage, china.gross_registered_tonnage, china.vessel_flag, china.vessel_owner, china.remarks, china.source_list_url, china.alt_names, china.citizenships, china.dates_of_birth, china.nationalities, china.places_of_birth, china.source_information_url, china.country
  FROM china
  UNION ALL
  SELECT eu.agency, eu.entity_number, eu.type, eu.programs, eu.name, eu.title, eu.addresses, eu.federal_register_notice, eu.start_date, eu.end_date, eu.standard_order, eu.license_requirement, eu.license_policy, eu.call_sign, eu.vessel_type, eu.gross_tonnage, eu.gross_registered_tonnage, eu.vessel_flag, eu.vessel_owner, eu.remarks, eu.source_list_url, eu.alt_names, eu.citizenships, eu.dates_of_birth, eu.nationalities, eu.places_of_birth, eu.source_information_url, eu.country
  FROM eu
  UNION ALL
  SELECT japan.agency, japan.entity_number, japan.type, japan.programs, japan.name, japan.title, japan.addresses, japan.federal_register_notice, japan.start_date, japan.end_date, japan.standard_order, japan.license_requirement, japan.license_policy, japan.call_sign, japan.vessel_type, japan.gross_tonnage, japan.gross_registered_tonnage, japan.vessel_flag, japan.vessel_owner, japan.remarks, japan.source_list_url, japan.alt_names, japan.citizenships, japan.dates_of_birth, japan.nationalities, japan.places_of_birth, japan.source_information_url, japan.country
  FROM japan
  UNION ALL
  SELECT uk.agency, uk.entity_number, uk.type, uk.programs, uk.name, uk.title, uk.addresses, uk.federal_register_notice, uk.start_date, uk.end_date, uk.standard_order, uk.license_requirement, uk.license_policy, uk.call_sign, uk.vessel_type, uk.gross_tonnage, uk.gross_registered_tonnage, uk.vessel_flag, uk.vessel_owner, uk.remarks, uk.source_list_url, uk.alt_names, uk.citizenships, uk.dates_of_birth, uk.nationalities, uk.places_of_birth, uk.source_information_url, uk.country
  FROM uk
  UNION ALL
  SELECT usa.agency, usa.entity_number, usa.type, usa.programs, usa.name, usa.title, usa.addresses, usa.federal_register_notice, usa.start_date, usa.end_date, usa.standard_order, usa.license_requirement, usa.license_policy, usa.call_sign, usa.vessel_type, usa.gross_tonnage, usa.gross_registered_tonnage, usa.vessel_flag, usa.vessel_owner, usa.remarks, usa.source_list_url, usa.alt_names, usa.citizenships, usa.dates_of_birth, usa.nationalities, usa.places_of_birth, usa.source_information_url, usa.country
  FROM usa
) sub
WHERE sub.name IN (select name from file_search)





DROP VIEW IF EXISTS vw_fileSearch;
CREATE VIEW vw_fileSearch
AS
SELECT co.*, fs.user_id FROM vw_countries co INNER JOIN file_search fs on `co`.`name` LIKE '%tali%'
WHERE sub.name IN (select name from file_search)
