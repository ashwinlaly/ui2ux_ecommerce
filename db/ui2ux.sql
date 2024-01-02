-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 27, 2023 at 09:10 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employement_management`
--
CREATE DATABASE IF NOT EXISTS `employement_management` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employement_management`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `participation_time` varchar(10) DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `emp_no` varchar(10) NOT NULL,
  `entity` varchar(10) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `privacy` varchar(500) DEFAULT NULL,
  `gift_option` varchar(200) DEFAULT NULL,
  `bsh_state` varchar(100) DEFAULT NULL,
  `bsh_product` varchar(100) DEFAULT NULL,
  `fitness_product` varchar(200) DEFAULT NULL,
  `smart_watch` varchar(200) DEFAULT NULL,
  `bsh_application` varchar(200) DEFAULT NULL,
  `bill_name` varchar(20) NOT NULL,
  `address_1` varchar(200) DEFAULT NULL,
  `address_2` varchar(200) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pincode` varchar(15) DEFAULT NULL,
  `phone_no` varchar(300) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `date`, `time`, `participation_time`, `language`, `status`, `emp_no`, `entity`, `name`, `email`, `privacy`, `gift_option`, `bsh_state`, `bsh_product`, `fitness_product`, `smart_watch`, `bsh_application`, `bill_name`, `address_1`, `address_2`, `city`, `state`, `pincode`, `phone_no`, `remarks`, `created_at`, `updated_at`) VALUES
(6, '2022-03-22', '', '', '', '', '123', '', 'therewego', 'acctracking001@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-03-21 10:08:12', '2022-03-21 04:38:12'),
(7, '', '', '', '', '', '312', '', 'ssss', 'developer@tracxsystems.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-03-21 10:08:28', '2022-03-21 04:38:28'),
(8, '', '', '', '', '', '223', '', 'test', 'admin@example.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-03-21 10:12:15', '2022-03-21 04:42:15'),
(10, '2022-03-22', '12:50', 'AM', 'English', 'Completed', '1050', 'HejP', 'Pavan G', 'Pavan.Gurulingappa@bosch.com', 'By participating in this survey, I agree that my personal data will be used by Bosch and its partners  for the purpose of delivering the souvenir to me.By participating in this survey, I agree that my personal data will be used by Bosch and its partners  for the purpose of delivering the souvenir to me.', 'ProudBoschler - Silver memento with Bosch 100 years insignia (approx. 400-450gm) from Tanishq', 'Karnataka', '560057', 'test', 'test', 'Refrigerator Top Freezer', 'Prajwal D Rai', 'Flat No. 106, B Block, Sai Sumukha Apartment, 6th Cross, 1st Main, Shiv Layout, Mariyappanapalya,', 'Near Bangalore University', 'Bangalore', 'Karnataka', '560056', '9480216833', 'Valid data', '2022-03-22 11:50:25', '2022-03-22 06:20:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `gf_interview_task`
--
CREATE DATABASE IF NOT EXISTS `gf_interview_task` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gf_interview_task`;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL COMMENT 'The ID of the Application',
  `user_id` int(11) NOT NULL COMMENT 'The id of the user the application is created by',
  `charity_id` int(11) NOT NULL COMMENT 'The id of the charity the application belongs to ',
  `stage` int(11) NOT NULL COMMENT 'if the application is belong to',
  `created_at` datetime NOT NULL COMMENT 'Application created date'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `user_id`, `charity_id`, `stage`, `created_at`) VALUES
(1, 3, 4, 1, '2021-07-05 00:00:00'),
(2, 1, 5, 1, '2021-07-12 08:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `charities`
--

CREATE TABLE `charities` (
  `charity_id` int(11) NOT NULL COMMENT 'The ID of the charity',
  `charity_name` varchar(255) NOT NULL COMMENT 'The name of the charity',
  `is_approved` tinyint(1) DEFAULT 0 COMMENT 'If the charity is approved for applications',
  `country_id` int(11) NOT NULL COMMENT 'The id of the country the charity is headquarted in'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charities`
--

INSERT INTO `charities` (`charity_id`, `charity_name`, `is_approved`, `country_id`) VALUES
(3, 'My Giving Account', 0, 223),
(4, 'Oxford Kidney Unit Trust Fund', 0, 223),
(5, 'Human Values Foundation', 0, 221),
(6, 'Mudlarks Community Garden', 0, 150),
(7, 'Belfast Bible College', 0, 223),
(8, 'CILIP Career Development Group', 0, 223),
(9, 'The Inga Foundation', 0, 223),
(10, 'GMGA1', 0, 100),
(11, 'GMGA2', 0, 223),
(12, 'Amigos Worldwide', 0, 211),
(13, 'CAF charity account', 0, 223);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL COMMENT 'The ID of the country',
  `country_name` varchar(255) NOT NULL COMMENT 'The name of the country',
  `country_code` varchar(255) NOT NULL COMMENT 'The ISO code fo the charity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `country_code`) VALUES
(1, 'AFGHANISTAN', 'AFG'),
(2, 'ALBANIA', 'ALB'),
(3, 'ALGERIA', 'DZA'),
(4, 'AMERICAN SAMOA', 'ASM'),
(5, 'ANDORRA', 'AND'),
(6, 'ANGOLA', 'AGO'),
(7, 'ANGUILLA', 'AIA'),
(8, 'ANTARCTICA', 'ATA'),
(9, 'ANTIGUA AND BARBUDA', 'ATG'),
(10, 'ARGENTINA', 'ARG'),
(11, 'ARMENIA', 'ARM'),
(12, 'ARUBA', 'ABW'),
(13, 'AUSTRALIA', 'AUS'),
(14, 'AUSTRIA', 'AUT'),
(15, 'AZERBAIJAN', 'AZE'),
(16, 'BAHAMAS', 'BHS'),
(17, 'BAHRAIN', 'BHR'),
(18, 'BANGLADESH', 'BGD'),
(19, 'BARBADOS', 'BRB'),
(20, 'BELARUS', 'BLR'),
(21, 'BELGIUM', 'BEL'),
(22, 'BELIZE', 'BLZ'),
(23, 'BENIN', 'BEN'),
(24, 'BERMUDA', 'BMU'),
(25, 'BHUTAN', 'BTN'),
(26, 'BOLIVIA', 'BOL'),
(27, 'BOSNIA AND HERZEGOVINA', 'BIH'),
(28, 'BOTSWANA', 'BWA'),
(29, 'BOUVET ISLAND', 'BVT'),
(30, 'BRAZIL', 'BRA'),
(31, 'BRITISH INDIAN OCEAN TERRITORY', 'IOT'),
(32, 'BRUNEI DARUSSALAM', 'BRN'),
(33, 'BULGARIA', 'BGR'),
(34, 'BURKINA FASO', 'BFA'),
(35, 'BURUNDI', 'BDI'),
(36, 'CAMBODIA', 'KHM'),
(37, 'CAMEROON', 'CMR'),
(38, 'CANADA', 'CAN'),
(39, 'CAPE VERDE', 'CPV'),
(40, 'CAYMAN ISLANDS', 'CYM'),
(41, 'CENTRAL AFRICAN REPUBLIC', 'CAF'),
(42, 'CHAD', 'TCD'),
(43, 'CHILE', 'CHL'),
(44, 'CHINA', 'CHN'),
(45, 'CHRISTMAS ISLAND', 'CXR'),
(46, 'COCOS (KEELING) ISLANDS', 'CCK'),
(47, 'COLOMBIA', 'COL'),
(48, 'COMOROS', 'COM'),
(49, 'CONGO', 'COG'),
(50, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'COD'),
(51, 'COOK ISLANDS', 'COK'),
(52, 'COSTA RICA', 'CRI'),
(53, 'COTE D\'IVOIRE', 'CIV'),
(54, 'CROATIA', 'HRV'),
(55, 'CUBA', 'CUB'),
(56, 'CYPRUS', 'CYP'),
(57, 'CZECH REPUBLIC', 'CZE'),
(58, 'DENMARK', 'DNK'),
(59, 'DJIBOUTI', 'DJI'),
(60, 'DOMINICA', 'DMA'),
(61, 'DOMINICAN REPUBLIC', 'DOM'),
(62, 'ECUADOR', 'ECU'),
(63, 'EGYPT', 'EGY'),
(64, 'EL SALVADOR', 'SLV'),
(65, 'EQUATORIAL GUINEA', 'GNQ'),
(66, 'ERITREA', 'ERI'),
(67, 'ESTONIA', 'EST'),
(68, 'ETHIOPIA', 'ETH'),
(69, 'FALKLAND ISLANDS (MALVINAS)', 'FLK'),
(70, 'FAROE ISLANDS', 'FRO'),
(71, 'FIJI', 'FJI'),
(72, 'FINLAND', 'FIN'),
(73, 'FRANCE', 'FRA'),
(74, 'FRENCH GUIANA', 'GUF'),
(75, 'FRENCH POLYNESIA', 'PYF'),
(76, 'FRENCH SOUTHERN TERRITORIES', 'ATF'),
(77, 'GABON', 'GAB'),
(78, 'GAMBIA', 'GMB'),
(79, 'GEORGIA', 'GEO'),
(80, 'GERMANY', 'DEU'),
(81, 'GHANA', 'GHA'),
(82, 'GIBRALTAR', 'GIB'),
(83, 'GREECE', 'GRC'),
(84, 'GREENLAND', 'GRL'),
(85, 'GRENADA', 'GRD'),
(86, 'GUADELOUPE', 'GLP'),
(87, 'GUAM', 'GUM'),
(88, 'GUATEMALA', 'GTM'),
(89, 'GUINEA', 'GIN'),
(90, 'GUINEA-BISSAU', 'GNB'),
(91, 'GUYANA', 'GUY'),
(92, 'HAITI', 'HTI'),
(93, 'HEARD ISLAND AND MCDONALD ISLANDS', 'HMD'),
(94, 'HOLY SEE (VATICAN CITY STATE)', 'VAT'),
(95, 'HONDURAS', 'HND'),
(96, 'HONG KONG', 'HKG'),
(97, 'HUNGARY', 'HUN'),
(98, 'ICELAND', 'ISL'),
(99, 'INDIA', 'IND'),
(100, 'INDONESIA', 'IDN'),
(101, 'IRAN, ISLAMIC REPUBLIC OF', 'IRN'),
(102, 'IRAQ', 'IRQ'),
(103, 'IRELAND', 'IRL'),
(104, 'ISRAEL', 'ISR'),
(105, 'ITALY', 'ITA'),
(106, 'JAMAICA', 'JAM'),
(107, 'JAPAN', 'JPN'),
(108, 'JORDAN', 'JOR'),
(109, 'KAZAKHSTAN', 'KAZ'),
(110, 'KENYA', 'KEN'),
(111, 'KIRIBATI', 'KIR'),
(112, 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'PRK'),
(113, 'KOREA, REPUBLIC OF', 'KOR'),
(114, 'KUWAIT', 'KWT'),
(115, 'KYRGYZSTAN', 'KGZ'),
(116, 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LAO'),
(117, 'LATVIA', 'LVA'),
(118, 'LEBANON', 'LBN'),
(119, 'LESOTHO', 'LSO'),
(120, 'LIBERIA', 'LBR'),
(121, 'LIBYAN ARAB JAMAHIRIYA', 'LBY'),
(122, 'LIECHTENSTEIN', 'LIE'),
(123, 'LITHUANIA', 'LTU'),
(124, 'LUXEMBOURG', 'LUX'),
(125, 'MACAO', 'MAC'),
(126, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MKD'),
(127, 'MADAGASCAR', 'MDG'),
(128, 'MALAWI', 'MWI'),
(129, 'MALAYSIA', 'MYS'),
(130, 'MALDIVES', 'MDV'),
(131, 'MALI', 'MLI'),
(132, 'MALTA', 'MLT'),
(133, 'MARSHALL ISLANDS', 'MHL'),
(134, 'MARTINIQUE', 'MTQ'),
(135, 'MAURITANIA', 'MRT'),
(136, 'MAURITIUS', 'MUS'),
(137, 'MAYOTTE', 'MYT'),
(138, 'MEXICO', 'MEX'),
(139, 'MICRONESIA, FEDERATED STATES OF', 'FSM'),
(140, 'MOLDOVA, REPUBLIC OF', 'MDA'),
(141, 'MONACO', 'MCO'),
(142, 'MONGOLIA', 'MNG'),
(143, 'MONTSERRAT', 'MSR'),
(144, 'MOROCCO', 'MAR'),
(145, 'MOZAMBIQUE', 'MOZ'),
(146, 'MYANMAR', 'MMR'),
(147, 'NAMIBIA', 'NAM'),
(148, 'NAURU', 'NRU'),
(149, 'NEPAL', 'NPL'),
(150, 'NETHERLANDS', 'NLD'),
(151, 'NETHERLANDS ANTILLES', 'ANT'),
(152, 'NEW CALEDONIA', 'NCL'),
(153, 'NEW ZEALAND', 'NZL'),
(154, 'NICARAGUA', 'NIC'),
(155, 'NIGER', 'NER'),
(156, 'NIGERIA', 'NGA'),
(157, 'NIUE', 'NIU'),
(158, 'NORFOLK ISLAND', 'NFK'),
(159, 'NORTHERN MARIANA ISLANDS', 'MNP'),
(160, 'NORWAY', 'NOR'),
(161, 'OMAN', 'OMN'),
(162, 'PAKISTAN', 'PAK'),
(163, 'PALAU', 'PLW'),
(164, 'PANAMA', 'PAN'),
(165, 'PAPUA NEW GUINEA', 'PNG'),
(166, 'PARAGUAY', 'PRY'),
(167, 'PERU', 'PER'),
(168, 'PHILIPPINES', 'PHL'),
(169, 'PITCAIRN', 'PCN'),
(170, 'POLAND', 'POL'),
(171, 'PORTUGAL', 'PRT'),
(172, 'PUERTO RICO', 'PRI'),
(173, 'QATAR', 'QAT'),
(174, 'REUNION', 'REU'),
(175, 'ROMANIA', 'ROU'),
(176, 'RUSSIAN FEDERATION', 'RUS'),
(177, 'RWANDA', 'RWA'),
(178, 'SAINT HELENA', 'SHN'),
(179, 'SAINT KITTS AND NEVIS', 'KNA'),
(180, 'SAINT LUCIA', 'LCA'),
(181, 'SAINT PIERRE AND MIQUELON', 'SPM'),
(182, 'SAINT VINCENT AND THE GRENADINES', 'VCT'),
(183, 'SAMOA', 'WSM'),
(184, 'SAN MARINO', 'SMR'),
(185, 'SAO TOME AND PRINCIPE', 'STP'),
(186, 'SAUDI ARABIA', 'SAU'),
(187, 'SENEGAL', 'SEN'),
(188, 'SEYCHELLES', 'SYC'),
(189, 'SIERRA LEONE', 'SLE'),
(190, 'SINGAPORE', 'SGP'),
(191, 'SLOVAKIA', 'SVK'),
(192, 'SLOVENIA', 'SVN'),
(193, 'SOLOMON ISLANDS', 'SLB'),
(194, 'SOMALIA', 'SOM'),
(195, 'SOUTH AFRICA', 'ZAF'),
(196, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'SGS'),
(197, 'SPAIN', 'ESP'),
(198, 'SRI LANKA', 'LKA'),
(199, 'SUDAN', 'SDN'),
(200, 'SURINAME', 'SUR'),
(201, 'SVALBARD AND JAN MAYEN', 'SJM'),
(202, 'SWAZILAND', 'SWZ'),
(203, 'SWEDEN', 'SWE'),
(204, 'SWITZERLAND', 'CHE'),
(205, 'SYRIAN ARAB REPUBLIC', 'SYR'),
(206, 'TAIWAN, PROVINCE OF CHINA', 'TWN'),
(207, 'TAJIKISTAN', 'TJK'),
(208, 'TANZANIA, UNITED REPUBLIC OF', 'TZA'),
(209, 'THAILAND', 'THA'),
(210, 'TIMOR-LESTE', 'TLS'),
(211, 'TOGO', 'TGO'),
(212, 'TOKELAU', 'TKL'),
(213, 'TONGA', 'TON'),
(214, 'TRINIDAD AND TOBAGO', 'TTO'),
(215, 'TUNISIA', 'TUN'),
(216, 'TURKEY', 'TUR'),
(217, 'TURKMENISTAN', 'TKM'),
(218, 'TURKS AND CAICOS ISLANDS', 'TCA'),
(219, 'TUVALU', 'TUV'),
(220, 'UGANDA', 'UGA'),
(221, 'UKRAINE', 'UKR'),
(222, 'UNITED ARAB EMIRATES', 'ARE'),
(223, 'UNITED KINGDOM', 'GBR'),
(224, 'UNITED STATES', 'USA'),
(225, 'URUGUAY', 'URY'),
(226, 'UZBEKISTAN', 'UZB'),
(227, 'VANUATU', 'VUT'),
(228, 'VENEZUELA', 'VEN'),
(229, 'VIET NAM', 'VNM'),
(230, 'VIRGIN ISLANDS, BRITISH', 'VGB'),
(231, 'VIRGIN ISLANDS, U.S.', 'VIR'),
(232, 'WALLIS AND FUTUNA', 'WLF'),
(233, 'WESTERN SAHARA', 'ESH'),
(234, 'YEMEN', 'YEM'),
(235, 'ZAMBIA', 'ZMB'),
(236, 'ZIMBABWE', 'ZWE'),
(237, 'JERSEY', 'JEY'),
(238, 'GUERNSEY', 'GGY'),
(239, 'UNKNOWN', 'UNK'),
(240, 'ISLE OF MAN', 'IMN');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`) VALUES
(1, 'Employee 1', 'employee1@givingforce.com'),
(2, 'Employee 2', 'employee2@givingforce.com'),
(3, 'Admin 1', 'admin1@givingforce.com'),
(4, 'Admin 2', 'admin2@givingforce.com'),
(5, 'Admin 3', 'admin3@givingforce.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL COMMENT 'The ID of the user role',
  `user_id` int(11) NOT NULL COMMENT 'The ID of the user the role belongs to',
  `role` enum('employee','admin','admin_applications','admin_reports') NOT NULL COMMENT 'The role the user has. Has an enum of values'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `user_id`, `role`) VALUES
(1, 1, 'employee'),
(2, 2, 'employee'),
(3, 3, 'admin'),
(4, 5, 'admin_applications'),
(5, 5, 'admin_reports'),
(6, 4, 'admin'),
(7, 3, 'admin'),
(8, 4, 'admin_applications');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `charity_id` (`charity_id`);

--
-- Indexes for table `charities`
--
ALTER TABLE `charities`
  ADD PRIMARY KEY (`charity_id`),
  ADD KEY `charitys_country` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `country_name_index` (`country_name`) USING BTREE COMMENT 'The country will be looked up regularly so best to have an index';

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD KEY `user_role_user` (`user_id`) USING BTREE COMMENT 'Foreign key between users and user roles';

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The ID of the Application', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `charities`
--
ALTER TABLE `charities`
  MODIFY `charity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The ID of the charity', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The ID of the country', AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The ID of the user role', AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`charity_id`) REFERENCES `charities` (`charity_id`);

--
-- Constraints for table `charities`
--
ALTER TABLE `charities`
  ADD CONSTRAINT `charitys_country` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `users_roles` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
--
-- Database: `havia`
--
CREATE DATABASE IF NOT EXISTS `havia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `havia`;

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2023_10_01_105927_create_store_table', 1),
(6, '2023_10_01_124004_create_random_numbers_table', 1),
(7, '2023_10_01_124504_create_tokens_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `random_numbers`
--

CREATE TABLE `random_numbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `redemption_date` timestamp NULL DEFAULT NULL,
  `token_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `random_numbers`
--
ALTER TABLE `random_numbers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `random_numbers_number_unique` (`number`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_email_unique` (`email`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_number_unique` (`token_number`),
  ADD KEY `tokens_user_id_foreign` (`user_id`),
  ADD KEY `tokens_store_id_foreign` (`store_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `random_numbers`
--
ALTER TABLE `random_numbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `hoof`
--
CREATE DATABASE IF NOT EXISTS `hoof` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hoof`;

-- --------------------------------------------------------

--
-- Table structure for table `ht_action`
--

CREATE TABLE `ht_action` (
  `id` int(11) NOT NULL,
  `action_name` varchar(255) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ht_billed_item`
--

CREATE TABLE `ht_billed_item` (
  `invoice_id` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_qty` int(10) NOT NULL,
  `item_price` double NOT NULL,
  `sub_total` double NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ht_comment_template`
--

CREATE TABLE `ht_comment_template` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ht_farm`
--

CREATE TABLE `ht_farm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `farm_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_report` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ht_farm`
--

INSERT INTO `ht_farm` (`id`, `farm_name`, `email`, `email_report`, `email_invoice`, `is_deleted`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, '', '', '', '', 0, NULL, NULL, NULL, NULL),
(2, '', '', '', '', 0, NULL, NULL, NULL, NULL),
(3, '', '', '', '', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ht_hoof_trimming`
--

CREATE TABLE `ht_hoof_trimming` (
  `cow_number` varchar(255) NOT NULL,
  `animal_type` varchar(255) NOT NULL,
  `recheck` varchar(255) DEFAULT NULL,
  `cantfix` varchar(255) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `session_name` varchar(255) NOT NULL,
  `farm_id` int(10) DEFAULT NULL,
  `device_id` varchar(255) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` bigint(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` bigint(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_hoof_trimming`
--

INSERT INTO `ht_hoof_trimming` (`cow_number`, `animal_type`, `recheck`, `cantfix`, `comments`, `session_name`, `farm_id`, `device_id`, `is_deleted`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('1', 'cow', NULL, NULL, NULL, 'session-19-07-2021', 3, '3337bb054a7ba392', 0, NULL, '2021-07-27 16:35:18', NULL, '2021-07-27 11:09:56'),
('2', 'cow', NULL, NULL, NULL, 'session-19-07-2021', 3, '3337bb054a7ba392', 0, NULL, '2021-07-27 16:38:38', NULL, '2021-07-27 11:09:56'),
('3', 'cow', NULL, NULL, NULL, 'session-19-07-2021', 3, '3337bb054a7ba392', 0, NULL, '2021-07-27 16:38:38', NULL, '2021-07-27 11:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `ht_info`
--

CREATE TABLE `ht_info` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_info`
--

INSERT INTO `ht_info` (`id`, `name`, `email`, `address`) VALUES
(1, 'Hoof Trimming', 'hooftrimming@ht.com', 'Hoof Trimming Company');

-- --------------------------------------------------------

--
-- Table structure for table `ht_invoice`
--

CREATE TABLE `ht_invoice` (
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percentage` int(10) DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `tax1_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax1_percentage` int(10) DEFAULT NULL,
  `tax1_amount` double DEFAULT NULL,
  `tax2_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax2_percentage` double DEFAULT NULL,
  `tax2_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `farm_id` int(10) DEFAULT NULL,
  `session_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_invoiced` tinyint(4) DEFAULT 1,
  `is_deleted` tinyint(4) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ht_invoice_item`
--

CREATE TABLE `ht_invoice_item` (
  `item_id` bigint(20) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_order` int(10) NOT NULL,
  `item_price` double NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` bigint(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` bigint(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ht_lesion`
--

CREATE TABLE `ht_lesion` (
  `id` int(10) NOT NULL,
  `lesion_name` varchar(255) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `created_by` bigint(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ht_session`
--

CREATE TABLE `ht_session` (
  `session_name` varchar(50) NOT NULL,
  `farm_id` bigint(20) UNSIGNED NOT NULL,
  `farm_name` varchar(255) NOT NULL,
  `is_invoiced` int(10) UNSIGNED NOT NULL,
  `empty_invoice_created` int(11) NOT NULL DEFAULT 0,
  `is_synced` int(10) UNSIGNED NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `record_createdDate` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_session`
--

INSERT INTO `ht_session` (`session_name`, `farm_id`, `farm_name`, `is_invoiced`, `empty_invoice_created`, `is_synced`, `device_id`, `is_deleted`, `created_by`, `created_at`, `updated_by`, `updated_at`, `record_createdDate`) VALUES
('session-19-07-2021', 3, 'BFARgggM', 0, 0, 0, '3337bb054a7ba392', 0, NULL, '2021-07-27 16:35:18', NULL, '2021-07-27 11:09:56', '19-07-2021');

-- --------------------------------------------------------

--
-- Table structure for table `ht_setting`
--

CREATE TABLE `ht_setting` (
  `id` int(10) NOT NULL,
  `cc_settings` int(10) NOT NULL,
  `history_days` int(10) NOT NULL,
  `tax1_name` varchar(255) NOT NULL,
  `tax1_percentage` int(10) NOT NULL,
  `tax2_name` varchar(255) NOT NULL,
  `tax2_percentage` int(10) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ht_treatment`
--

CREATE TABLE `ht_treatment` (
  `id` int(10) NOT NULL,
  `lesion_id` int(10) NOT NULL,
  `lesion_name` varchar(255) DEFAULT NULL,
  `zone` int(10) DEFAULT NULL,
  `cow_number` varchar(255) DEFAULT NULL,
  `foot_location` varchar(255) DEFAULT NULL,
  `claw` varchar(20) DEFAULT NULL,
  `severity` int(10) DEFAULT NULL,
  `action_id` int(10) DEFAULT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `animal_type` varchar(255) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `session_name` varchar(255) DEFAULT NULL,
  `farm_id` int(10) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT 0,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ht_treatment`
--

INSERT INTO `ht_treatment` (`id`, `lesion_id`, `lesion_name`, `zone`, `cow_number`, `foot_location`, `claw`, `severity`, `action_id`, `action_name`, `animal_type`, `comments`, `session_name`, `farm_id`, `device_id`, `is_deleted`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(42, 0, NULL, -1, '3', NULL, NULL, -1, 1, NULL, 'cow', NULL, 'session-19-07-2021', 3, '3337bb054a7ba392', 0, NULL, '2021-07-27 16:35:18', NULL, '2021-07-27 11:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `ht_user`
--

CREATE TABLE `ht_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ht_user`
--

INSERT INTO `ht_user` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `api_token`, `remember_token`, `created_at`, `updated_at`, `last_login`) VALUES
(1, 'hoof', 'hooftrimming@ht.com', NULL, '$2y$10$lxzBgn3IDXC.Atns85dsme7RIIDJmsxW3LpDkVnQpiKcjFcG4fod2', NULL, NULL, NULL, '2021-03-09 14:09:57', '2021-08-07 06:28:57', '2021-08-07 06:28:57');

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
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2021_03_15_113137_create_comments_table', 3),
(9, '2021_03_15_125412_create_invoices_table', 4),
(10, '2021_03_15_103321_create_farms_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('015669bf9716f7ca1e7265c25713465e89593e123e81a2c167fdb669dfc19c605a369ae68eaadb21', 1, 1, NULL, '[]', 0, '2021-07-19 13:07:37', '2021-07-19 13:07:37', '2022-07-19 18:37:37'),
('0167e6e442b45a200c18e18abb3de9469be9572aee4a1846a91267417011a0dfdfd10d23e34bf590', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-21 10:46:50', '2021-04-21 10:46:50', '2022-04-21 16:16:50'),
('01e799a700ba3424e729b385d2926e167cfc0dfdc9a240b5f6dfeb3de0573d961d50bc7f77232221', 1, 1, NULL, '[]', 0, '2021-04-29 00:29:45', '2021-04-29 00:29:45', '2022-04-29 05:59:45'),
('021cb1fca667ae8a7ae981c9dffd0082d469c3c4e85312c931705fa8dd9b57b5c7da594d1151a55c', 1, 1, NULL, '[]', 0, '2021-05-17 10:32:34', '2021-05-17 10:32:34', '2022-05-17 16:02:34'),
('0254b3c1f586b969c2241a26bd89deb2f8a9b9db039b17289e222c5c32bc5310418e230390655cc1', 4, 1, NULL, '[]', 0, '2021-03-11 04:39:16', '2021-03-11 04:39:16', '2021-03-12 10:09:16'),
('02de6b937b2101ca948ce5c62a11a491d7f2a1486851b1397d5503921505b4159efefe3991b364bb', 1, 1, NULL, '[]', 0, '2021-07-19 13:08:22', '2021-07-19 13:08:22', '2022-07-19 18:38:22'),
('02ea18cce11c2021a21858380d74b9af7a61d6f77fa5a4e73c88f6f0a194982a405ae4a99cd5dae3', 1, 1, NULL, '[]', 0, '2021-04-08 12:08:01', '2021-04-08 12:08:01', '2021-04-09 17:38:01'),
('035931f31f9d864704002f66bf563a0d420ec97f09dadece19c991a942e104c61c7aa93a2ffb49e4', 1, 1, NULL, '[]', 0, '2021-04-30 10:54:13', '2021-04-30 10:54:13', '2022-04-30 16:24:13'),
('03963aff38b88f8abe88f22c64e889dc88cea052a91ac7c3434edf058c383ee556b4d73566eda259', 1, 1, NULL, '[]', 0, '2021-06-28 10:55:21', '2021-06-28 10:55:21', '2022-06-28 16:25:21'),
('03a320f61c43b3e871cc66f3068878203ac702bf0cb755bcd18c27672ec754109af8ec5970745ad9', 1, 1, NULL, '[]', 0, '2021-06-06 04:44:49', '2021-06-06 04:44:49', '2022-06-06 10:14:49'),
('03bdc14414f3b5fa1756e09b2845632a45560f30fabb6c769d72a8bdb23fa7c9f3542a88beffedbf', 1, 1, NULL, '[]', 0, '2021-06-07 10:02:22', '2021-06-07 10:02:22', '2022-06-07 15:32:22'),
('044babb228785889e23a22e0e59f4d05b56db84bf64d98975ca9c88c492b0cedfa4a67c1758bc2e0', 1, 1, NULL, '[]', 0, '2021-06-06 02:55:10', '2021-06-06 02:55:10', '2022-06-06 08:25:10'),
('0460e85dcfd42d26539839dd1bd869cef2593843a4505f9a665a27e73815a875b68ea1ce6412ded6', 1, 1, NULL, '[]', 0, '2021-06-05 12:35:26', '2021-06-05 12:35:26', '2022-06-05 18:05:26'),
('049dca00130f62d025b88f8a0fc6a9a2b7d11863c60087ad8b5388de0420615cfecbb2b6f382d6d1', 1, 1, NULL, '[]', 0, '2021-05-01 06:26:02', '2021-05-01 06:26:02', '2022-05-01 11:56:02'),
('04c9237071b4bcfd970806cad11fea9d1adb0b110bd9f7f205fb9ee57332a6c9b531abd669501aed', 1, 1, NULL, '[]', 0, '2021-05-10 06:46:39', '2021-05-10 06:46:39', '2022-05-10 12:16:39'),
('0668df5874d73f48a7892ab6406ffa623664b0cfd5563bbb82fe8fe59a3eb4c85ed572fb54dd426a', 1, 1, NULL, '[]', 0, '2021-06-04 09:46:47', '2021-06-04 09:46:47', '2022-06-04 15:16:47'),
('067ede9041a8617824a4422e2abbc522b0e662d78105067ec253723639a50ea9d7ea0246683b8937', 1, 1, NULL, '[]', 0, '2021-06-07 01:19:22', '2021-06-07 01:19:22', '2022-06-07 06:49:22'),
('06b4f03e742b2d7dd79e4b02263980ff7af1b324a3d9fd774d41ba7920699507947c35e2bd9e96ea', 1, 1, NULL, '[]', 0, '2021-05-18 07:14:40', '2021-05-18 07:14:40', '2022-05-18 12:44:40'),
('074d5c8a0582f0d1095473851910b69089b239414237b3c3dc675024387b287bd1bf7ce4a236c915', 1, 1, NULL, '[]', 0, '2021-06-12 09:24:07', '2021-06-12 09:24:07', '2022-06-12 14:54:06'),
('0786cc2130466b851ae137cd92d38158a08eef4610939451cf45a99db6102b351f9dbe72c6c1bbf9', 7, 1, NULL, '[]', 0, '2021-03-15 05:56:09', '2021-03-15 05:56:09', '2021-03-16 11:26:09'),
('07f3746e7185771d3bdb8d26fa433ad6a2a60a7104fa04ecf5c73e50e190f10cf0eacb94f4d31ea7', 1, 1, NULL, '[]', 0, '2021-05-19 12:26:56', '2021-05-19 12:26:56', '2022-05-19 17:56:56'),
('0987aa58ccb8af09fd2e7e8aacc0aa558ccd7f1365d273a98589f1841ebde09ba83066125b72aa35', 1, 1, NULL, '[]', 0, '2021-06-28 10:16:22', '2021-06-28 10:16:22', '2022-06-28 15:46:22'),
('09b044080e6891ff1bd9acb50d6cb407be16d07368779a287780ecc3acaea0ad6dad493aba5808d1', 1, 1, NULL, '[]', 0, '2021-05-03 06:17:42', '2021-05-03 06:17:42', '2022-05-03 11:47:42'),
('09c59a451fc2ae95a965e29772b40aa1d18e07ef5615bfe4b511f0fbf80d677f9ed131949e2ee7ee', 1, 1, NULL, '[]', 0, '2021-06-07 12:11:32', '2021-06-07 12:11:32', '2022-06-07 17:41:32'),
('0a1c12c1ef6a75e5d732ee0d41864f75aab296d8f0cb90be58a91ab03c418b69ba809f7cf874a672', 1, 1, NULL, '[]', 0, '2021-05-13 10:55:59', '2021-05-13 10:55:59', '2022-05-13 16:25:59'),
('0a59a4b92ca532e690dd1253d04b77d1686c3941bce52d01d53f7f1921cb527aca3d11f6107182eb', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-21 11:08:02', '2021-04-21 11:08:02', '2022-04-21 16:38:02'),
('0a964108ece2af838d8893a15fdeb45bca5244945fb872c0e07d4bd7a68a127a5b070e0bfe22ecf5', 1, 1, NULL, '[]', 0, '2021-07-19 07:36:36', '2021-07-19 07:36:36', '2022-07-19 13:06:36'),
('0b98a6ea0951c451d6de3a16dc75372b57ab44de196159c64e4f551d6ba1e1af1bfe6db6aeda847d', 1, 1, NULL, '[]', 0, '2021-06-15 05:19:04', '2021-06-15 05:19:04', '2022-06-15 10:49:04'),
('0bdadc0216fcde1955371e4f988de91b0c5c30637354032ca5435858a54b0422c57bf18f31414b39', 1, 1, NULL, '[]', 0, '2021-05-30 03:39:02', '2021-05-30 03:39:02', '2022-05-30 09:09:02'),
('0c2e49db94f75c53d08ac3c31cd9acc86ce2e6aaafbde87b232990440da12766b051aee10020fc22', 1, 1, NULL, '[]', 0, '2021-03-10 03:21:36', '2021-03-10 03:21:36', '2021-09-10 08:51:36'),
('0d36aabcd0d73c18c80a32515db5b49e9b66b7ef067a398ff933e1f48be0243c6e545424bdd97f12', 1, 1, NULL, '[]', 0, '2021-03-30 07:55:42', '2021-03-30 07:55:42', '2021-03-31 13:25:41'),
('0d4fa247e718ced6b96761cb7d15c598cb8d855f78bc15f1a9abefb5792912e4cc4937602602b657', 1, 1, NULL, '[]', 0, '2021-06-04 15:20:59', '2021-06-04 15:20:59', '2022-06-04 20:50:59'),
('0df284d84fdd3c07eb106c958044a78a25c7b30fb6a23a526ad47e78e8e904340d697e4364c97584', 1, 1, NULL, '[]', 0, '2021-06-04 09:13:34', '2021-06-04 09:13:34', '2022-06-04 14:43:34'),
('0e431a7b103f80527333ce96cb4385c0eb7bbcc352d08b49ee2aaeab1502318168eb5b736b0b0b84', 1, 1, NULL, '[]', 0, '2021-06-25 04:25:25', '2021-06-25 04:25:25', '2022-06-25 09:55:25'),
('0f0970d3f10b6438750863bde73cbd3ee6512c8f4ef1c9f9bf8f5d333125139eee4afd40d8b4f5ba', 1, 1, NULL, '[]', 0, '2021-05-13 10:45:42', '2021-05-13 10:45:42', '2022-05-13 16:15:42'),
('0f0db643317c490595b3b35e7954e17b5a618b83ab616c9df79a5ed0c57e90deca0bc91ec20b7c0f', 1, 1, NULL, '[]', 0, '2021-05-13 11:05:56', '2021-05-13 11:05:56', '2022-05-13 16:35:56'),
('0f78c67836120add5806adbe128606c79fe4d37f5799833f661f3387bd0419f0c39739e2e933035a', 1, 1, NULL, '[]', 0, '2021-07-09 06:06:13', '2021-07-09 06:06:13', '2022-07-09 11:36:13'),
('0f8a2b333311b121ba67fe35c27a81532d78aa669ddd818ed0117d94d4febff29395390eee6b48f7', 1, 1, NULL, '[]', 0, '2021-04-08 12:08:03', '2021-04-08 12:08:03', '2021-04-09 17:38:03'),
('10951005d1e4ee9de564bff0193ecbc63207c626fef61c366e9aa25bc56ecf9b37eedfe625df378d', 1, 1, NULL, '[]', 0, '2021-06-25 13:55:28', '2021-06-25 13:55:28', '2022-06-25 19:25:28'),
('10ef4c9e2ae75a173c95950f69aae68983e9d1ebc9b3d4292792e2b9dd10a398c2f20c321b09b147', 1, 1, NULL, '[]', 0, '2021-03-10 03:27:05', '2021-03-10 03:27:05', '2021-09-10 08:57:05'),
('14842c92f46fd5ba3ec854687759439ec2c64e52377306cb7480b591201520f7e6e7eb5cd311c2bd', 1, 1, NULL, '[]', 0, '2021-07-15 10:12:59', '2021-07-15 10:12:59', '2022-07-15 15:42:59'),
('14dd75a865457ac9978cf6e9526c8a52f1656db546bb41bd2adc1a180fbddf4a849110d5790db942', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 12:18:03', '2021-04-22 12:18:03', '2022-04-22 17:48:03'),
('156b42b7c6797ee802f00048922ce60bb635cebebc5bb08932a8111fdc6bd1f74073c4ded4d4a474', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-23 09:34:02', '2021-04-23 09:34:02', '2022-04-23 15:04:02'),
('156e063d3992a244553f2d9f1c329bf40421787e02066f562fc4b1d237895f0d4f642cf5fc6ce5d6', 1, 1, NULL, '[]', 0, '2021-03-11 09:06:26', '2021-03-11 09:06:26', '2021-03-12 14:36:26'),
('15804a2cbee20d005d19fb7bdb0e0b25ed966b2ee1157642cb12c558230653d17ed99bcc6452678c', 1, 1, NULL, '[]', 0, '2021-05-19 11:51:51', '2021-05-19 11:51:51', '2022-05-19 17:21:51'),
('16557d32fd2a7fe2c2c25caa4fdb4013227e07756326475629b708e7f6ec73c5eea81c0862eedd48', 1, 1, NULL, '[]', 0, '2021-04-29 09:26:59', '2021-04-29 09:26:59', '2022-04-29 14:56:58'),
('1713e44c5f4157feac3ed99f15f2a816a8b7cb38b2df83ecabdb5e15475cbd6079cae1fbe6c1c8ef', 1, 1, NULL, '[]', 0, '2021-05-27 10:35:20', '2021-05-27 10:35:20', '2022-05-27 16:05:20'),
('1799caf77a9bc585fc9d7442e2fbb8c50408692c82108a480d8f59bfb907b84f43dbef22a5fbb8ba', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-19 05:04:40', '2021-04-19 05:04:40', '2022-04-19 10:34:39'),
('195461d06f147e7cbe8d563de695620557a4d7f220bc5ba19e7b6f5bbc9885064e5d1034ae53ba07', 1, 1, NULL, '[]', 0, '2021-05-29 01:26:29', '2021-05-29 01:26:29', '2022-05-29 06:56:29'),
('19a10f32e0e21d1d403e1a1eb6bd31fc787746a32b9fd67bd0d4f8e1d5d4c0cac23e1d912a9f938c', 1, 1, NULL, '[]', 0, '2021-06-04 15:23:36', '2021-06-04 15:23:36', '2022-06-04 20:53:35'),
('1a2d3e8938396344a25df559df0be17731f69ead33ff4ab3962d0a1f0c424fc0d287de8ee511024e', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 10:01:11', '2021-04-22 10:01:11', '2022-04-22 15:31:11'),
('1ac3ef867b11f5fdadb8dd20b5993db97251d2ae8e5ff0f26c19a16fa874fcfc84eef2c05afccb11', 1, 1, NULL, '[]', 0, '2021-06-29 04:23:58', '2021-06-29 04:23:58', '2022-06-29 09:53:58'),
('1b196e3bdf23d058954eb0fb12fadf191ec9b7ea50f296986ecb562bb213ce73f039750e1440aa78', 1, 1, NULL, '[]', 0, '2021-07-19 10:15:29', '2021-07-19 10:15:29', '2022-07-19 15:45:28'),
('1b3f079e024a10a3feb5daff730389435a2075b84959ac68cf0cef47fccc6aacfb605b838b1a843b', 1, 1, NULL, '[]', 0, '2021-07-15 15:54:08', '2021-07-15 15:54:08', '2022-07-15 21:24:08'),
('1b6fc5de3f5ac4d66a142ea43b4538e856442863597be1dcb7034033e1af8bc1edb9cea87528ff61', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-03-09 09:45:11', '2021-03-09 09:45:11', '2021-09-09 15:15:11'),
('1b7e27058753355dae538996bbf27bcd6249e218973db55441cf1bbc2bd6a0ecb5297a025570cc65', 1, 1, NULL, '[]', 0, '2021-06-16 04:03:31', '2021-06-16 04:03:31', '2022-06-16 09:33:31'),
('1b869b18ba05cd28a8d0e058311a26561c0da5d363628c4f61393d450810168fced239f456939841', 1, 1, NULL, '[]', 0, '2021-03-10 11:02:11', '2021-03-10 11:02:11', '2021-03-11 16:32:11'),
('1bb0c44a167e208a4285c2b8f7414e14fce9f056a657ec0682539bd908c13213930728bc21f1b628', 1, 1, NULL, '[]', 0, '2021-04-14 05:17:25', '2021-04-14 05:17:25', '2021-04-15 10:47:25'),
('1ce139cd383bdf4931cba5c1294f4d5e06c6153b2939b61fc06f31ff5e01b9983859aecd9c995cf5', 1, 1, NULL, '[]', 0, '2021-06-06 11:35:07', '2021-06-06 11:35:07', '2022-06-06 17:05:07'),
('1cf6c4182afea0cc3a85fd10be14c7a018d52d5dcfc0e814e830fefa2fbcacde9745bb9d013f433c', 1, 1, NULL, '[]', 0, '2021-05-28 06:27:22', '2021-05-28 06:27:22', '2022-05-28 11:57:22'),
('1d2062bef808693bcf89d2b9bb933225e69d18c3d95fff8d2cf4604351ec389ca7182f21c7d68508', 1, 1, NULL, '[]', 0, '2021-06-25 15:43:17', '2021-06-25 15:43:17', '2022-06-25 21:13:17'),
('1d476d4f2dadee57b0b3d83a00b2490622e1b84b9253a6447e296199e2d28be19861f011a6168303', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-24 05:52:07', '2021-04-24 05:52:07', '2022-04-24 11:22:07'),
('1d91554c3a74480ed391e9b81ea4a28b525d3a67d592b1d6f8f686b8fbccc0ae5e57fb0d1f64f206', 1, 1, NULL, '[]', 0, '2021-07-03 21:54:43', '2021-07-03 21:54:43', '2022-07-04 03:24:43'),
('1e01df32f221c6cea90b49efc048f2cfbc7fcc4a4d4068abc8d822b0921b2621c280ea355388de2b', 1, 1, NULL, '[]', 0, '2021-05-03 09:21:02', '2021-05-03 09:21:02', '2022-05-03 14:51:02'),
('1eb379d0aa686794111dfaefa3df9afb3e8b92d2e95078aff8b62fd1e15517ae9bc93c4741db6905', 1, 1, NULL, '[]', 0, '2021-04-16 07:47:43', '2021-04-16 07:47:43', '2021-04-17 13:17:43'),
('1efb6defcca34cc07200c72cfa10818b7767d64c1ad22b6ec72145d0f9c522f60d74929afd5edb06', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 11:13:42', '2021-04-22 11:13:42', '2022-04-22 16:43:42'),
('1f7e1cbf57d1213c07d15ae4e791e39aac9133d5b393bade27dfeda3d01ad48fc759a8fe772456f7', 1, 1, NULL, '[]', 0, '2021-04-29 01:22:29', '2021-04-29 01:22:29', '2022-04-29 06:52:29'),
('20540746c70844b086c56761daaecee4b52867be2134a563c4c46d0759bfd1ae9c70fbab8dbd72b7', 1, 1, NULL, '[]', 0, '2021-04-29 00:51:32', '2021-04-29 00:51:32', '2022-04-29 06:21:32'),
('2142da6aece837ba6b7d80cc6ae079e412c740da93c149f39a8dc6c8356eddf64d6d942e702f453f', 1, 1, NULL, '[]', 0, '2021-03-10 03:32:32', '2021-03-10 03:32:32', '2021-09-10 09:02:32'),
('215993550c3cfad701838f4700bf59169631520dec296e9e8c6dd7540c309e502e8a856a920851a8', 1, 1, NULL, '[]', 0, '2021-05-10 07:57:36', '2021-05-10 07:57:36', '2022-05-10 13:27:36'),
('2283e205767773ca223daa24d59a1a795bcc138bda90319763e7006e2b61c12614e42093b88c5916', 1, 1, NULL, '[]', 0, '2021-06-05 01:03:32', '2021-06-05 01:03:32', '2022-06-05 06:33:32'),
('22bbedeeff4f19bfe4523b17d1521c77c76c8d8d6da3135f18643ba78c2c4b7713011d2129b4b13f', 1, 1, NULL, '[]', 0, '2021-04-14 05:13:18', '2021-04-14 05:13:18', '2021-04-15 10:43:18'),
('2317e3757ca6bd7263fdbc08a310f60891fdf9003b459d244c89496384338cfff76cc323e74214e3', 1, 1, NULL, '[]', 0, '2021-05-30 08:30:19', '2021-05-30 08:30:19', '2022-05-30 14:00:19'),
('24e6eed2b940d22403f45f212a7f6f5b6f3a506e7c0a0601536bf47f2f183220c8cb5f5d73a11ed7', 1, 1, NULL, '[]', 0, '2021-07-01 12:31:30', '2021-07-01 12:31:30', '2022-07-01 18:01:30'),
('24eeae2b85e58f772586faa6936bed3ccdec6f15ab6e301cab98e4f0209b6db7008554a029835ea4', 7, 1, NULL, '[]', 0, '2021-03-11 06:55:03', '2021-03-11 06:55:03', '2021-03-12 12:25:03'),
('25ad224daad9165a8476a6f6b1601d19904f0341642e8d9fc6792bc0cff11cda45a1f4fd62026246', 1, 1, NULL, '[]', 0, '2021-05-02 06:27:23', '2021-05-02 06:27:23', '2022-05-02 11:57:23'),
('25ff45aa604eb7f4442cbb3fab65f5b199ca576a73a6fe3cfdd749b30dd55b512f6bfec32a33092b', 1, 1, NULL, '[]', 0, '2021-03-11 12:46:37', '2021-03-11 12:46:37', '2021-03-12 18:16:37'),
('264a6731923352059bd98cf0e2e7454ebe619ef9653bbc1911a33060f3df2ce9068043def75a32aa', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 12:41:06', '2021-04-16 12:41:06', '2022-04-16 18:11:06'),
('26f84a342816e4ec4ab34dcdda5b32c32b956affc01d40eccdb18debe3d1c1df81ab83443f42768f', 7, 1, NULL, '[]', 0, '2021-03-15 04:59:37', '2021-03-15 04:59:37', '2021-03-16 10:29:37'),
('271ea47e9a983f4d1d1e25bf5ab7f8ec28a9f9d32795a239e711fb8aa6535ccf593edca6652d932a', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-03-09 09:24:52', '2021-03-09 09:24:52', '2022-03-09 14:54:52'),
('27346faf6e4ff3248e1cb3a36cb0d695e347aafed9c9df3e8d06d6089a15e4655e629ca7fb213307', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 10:04:02', '2021-04-20 10:04:02', '2022-04-20 15:34:02'),
('275d53e30bcdd4dc27b2e8b938811d00388c52789c79e33152fde936128fa53a1ea237693b8e6116', 1, 1, NULL, '[]', 0, '2021-06-16 04:38:20', '2021-06-16 04:38:20', '2022-06-16 10:08:20'),
('276681782f9060ba2440c3168c17d0d04954a24560fa3453fa90ad0f4ce5b4ce811590e0ca718341', 1, 1, NULL, '[]', 0, '2021-06-16 04:59:49', '2021-06-16 04:59:49', '2022-06-16 10:29:49'),
('27e4131e46d2724850c3ec4b73b083bb8b466ac8394dd04db9fa482a931b1312740379b1d1ec31cf', 2, 1, NULL, '[]', 0, '2021-03-10 11:32:35', '2021-03-10 11:32:35', '2021-03-11 17:02:35'),
('293619579ffc347ae841a3b81884b71564bec7d65736f457fb8640fe927f5dd3d1f71802300b4200', 1, 1, NULL, '[]', 0, '2021-04-13 09:49:11', '2021-04-13 09:49:11', '2021-04-14 15:19:11'),
('2a32c34c40669a72fb266ea959535634bea5475200735c51570528c7edb7399e617a3d0861265a96', 1, 1, NULL, '[]', 0, '2021-03-10 03:28:35', '2021-03-10 03:28:35', '2021-09-10 08:58:35'),
('2a497ba783e4950eac9a02705369df83c803c07c311478b0729d0b1f5eac550bbacfeba21c4c56e8', 1, 1, NULL, '[]', 0, '2021-06-04 12:46:40', '2021-06-04 12:46:40', '2022-06-04 18:16:40'),
('2ad568d1af5b4f704deb132301ec07d176169bf325a85088f63e6926c47884459a7e7a25718b3bba', 1, 1, NULL, '[]', 0, '2021-07-13 09:50:52', '2021-07-13 09:50:52', '2022-07-13 15:20:51'),
('2bb3d9434f4bf91c14ab83157ce2e533540bbe6b3d568fc02b092983753b100af5684ade0264af0a', 1, 1, NULL, '[]', 0, '2021-04-29 01:18:51', '2021-04-29 01:18:51', '2022-04-29 06:48:51'),
('2bda5e8cef6253c0070de6c0322217e9af3d5a49e3c1bc7c73c790cba08974023abb38f2292a11d8', 1, 1, NULL, '[]', 0, '2021-06-04 14:37:21', '2021-06-04 14:37:21', '2022-06-04 20:07:21'),
('2d7fb87496932691f84337b9e80bf5bfba0b429245f41b0911d346472a55d1dc83d1e3a390569e03', 1, 1, NULL, '[]', 0, '2021-05-04 10:47:39', '2021-05-04 10:47:39', '2022-05-04 16:17:39'),
('2e0d00358a90a330cf4a4ef992ec69e225f808fd0d9fce7bfe338db7afe55e8f3b5b8332630b2aa4', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-24 11:26:14', '2021-04-24 11:26:14', '2022-04-24 16:56:14'),
('2eeec00ac5208538d12d7c59e61e26ad1f2bcb4cfa4da5896eab2a3089d6ae77972fa3054ce4d758', 1, 1, NULL, '[]', 0, '2021-06-01 07:26:05', '2021-06-01 07:26:05', '2022-06-01 12:56:05'),
('2fb905e09e7a9355773148a80f5c1621cefc8c778475f0ac1bd869c59efe7103a0d915b2c93bb840', 1, 1, NULL, '[]', 0, '2021-05-02 09:37:46', '2021-05-02 09:37:46', '2022-05-02 15:07:46'),
('2fe012e0762929d0e2ed8de4705d584bea874a44918555d44129cae694e085b0623c63b41438cd9e', 1, 1, NULL, '[]', 0, '2021-05-27 22:02:56', '2021-05-27 22:02:56', '2022-05-28 03:32:56'),
('30e4239c088ed86e07410f47d319895ccf435cf8933ecc1ca96c359fc2993c73e352312f65d2bb63', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-19 08:24:54', '2021-04-19 08:24:54', '2022-04-19 13:54:54'),
('314983f024c3840bcd7657cdef3e84e5fd9a24ba525389635cac88473aa8b6d93a0adc6072a60312', 1, 1, NULL, '[]', 0, '2021-03-12 07:43:21', '2021-03-12 07:43:21', '2021-03-13 13:13:21'),
('321576ced9d28e025301222fa85690967fc8bb0a13f7e72c1d1e8c5b3b2bf1ad20407e90cdf81745', 12, 1, NULL, '[]', 0, '2021-03-11 11:25:34', '2021-03-11 11:25:34', '2021-03-12 16:55:34'),
('324f27675d62e5b57f39f239247264361024561ea00ef773729431ddaaf44935dd7d260902c30d34', 1, 1, NULL, '[]', 0, '2021-06-04 10:00:06', '2021-06-04 10:00:06', '2022-06-04 15:30:05'),
('35bc31a65d9ac2e59b7d8763b55fffe4424421ab022b0b70a5e8b1fbcdbf257629b7a13cb6f495ca', 1, 1, NULL, '[]', 0, '2021-06-04 10:13:43', '2021-06-04 10:13:43', '2022-06-04 15:43:43'),
('367fecc9c03ee0c2a2cf933d258f4e9084d8035d7b6d71a828845c0314548e500fef72fa38572292', 1, 1, NULL, '[]', 0, '2021-06-10 13:58:38', '2021-06-10 13:58:38', '2022-06-10 19:28:37'),
('376fba1df8ca853131a1895afb03c14cad8955ca2e745edddcc0c3e7d4e66716d3fb2293283438e8', 1, 1, NULL, '[]', 0, '2021-03-10 05:16:05', '2021-03-10 05:16:05', '2021-03-11 10:46:05'),
('3770021731374e063897073ced980dea99d47d886116e816b493facb680c914db932e0b111562d01', 1, 1, NULL, '[]', 0, '2021-04-29 09:28:48', '2021-04-29 09:28:48', '2022-04-29 14:58:48'),
('37f1bcf194f28520c3a81608fab17c49a7e52d5abc8978d6f37a39dc91970995c5d7ce8bcecf9de6', 7, 1, NULL, '[]', 0, '2021-03-11 09:05:46', '2021-03-11 09:05:46', '2021-03-12 14:35:46'),
('38097b029053522f916645ef9b1905a36d6af7f79375704fb02e28088f8017c781e6fc5c4ef78dd4', 1, 1, NULL, '[]', 0, '2021-04-30 12:16:19', '2021-04-30 12:16:19', '2022-04-30 17:46:19'),
('3825010d2d20d84eb2e4edbeb95fecfdb227162621132b9f77b2d48c3a35e406d9413a7420697957', 1, 1, NULL, '[]', 0, '2021-05-06 21:17:49', '2021-05-06 21:17:49', '2022-05-07 02:47:49'),
('3861f5b00110823bf339eccf7ee8aa6827bd808b8f7ea6a70ca61869deb4f5929eef61c2e5818afc', 1, 1, NULL, '[]', 0, '2021-05-06 20:59:39', '2021-05-06 20:59:39', '2022-05-07 02:29:39'),
('399543140737a8f1529b172241a9d0db4addb063773542c3016b12a2faa54713729eaa6a06a67b0b', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 09:42:24', '2021-04-22 09:42:24', '2022-04-22 15:12:24'),
('3a20913c156298da76a7601614050318ed8a6238baa3c0b83c5a9d4fab9e8a534be35fac4349b5cd', 1, 1, NULL, '[]', 0, '2021-04-13 07:16:11', '2021-04-13 07:16:11', '2021-04-14 12:46:11'),
('3bd161b1493f65ae1b9e7c36d797487ff725a38c70b4b04ef70b52239a851d430a7e0af4c0bec72f', 1, 1, NULL, '[]', 0, '2021-06-06 09:08:41', '2021-06-06 09:08:41', '2022-06-06 14:38:41'),
('3c5f32cf23aefe5d325bd0e520fe347c214abccc9d22cf372ccf4c8c45e9333804645b22079bd72e', 1, 1, NULL, '[]', 0, '2021-05-26 09:51:22', '2021-05-26 09:51:22', '2022-05-26 15:21:22'),
('3cf8940e911dfeb5cedc62a02877f6c79a7902a23b93cf214cda3d0515cf18bef78f581649522764', 1, 1, NULL, '[]', 0, '2021-06-04 09:26:47', '2021-06-04 09:26:47', '2022-06-04 14:56:47'),
('3cfe0e4e3c2aaf4d3f3e327c522530360552fff55d9f3a5f978d104715b2f04276eca41a3333c84a', 1, 1, NULL, '[]', 0, '2021-06-06 09:11:28', '2021-06-06 09:11:28', '2022-06-06 14:41:28'),
('3d544dadb6e6d052d9f670b2ab49087a3a63420ce8c15aa65e245b3960333d2dfcdceab52899d8bf', 1, 1, NULL, '[]', 0, '2021-04-28 23:07:18', '2021-04-28 23:07:18', '2022-04-29 04:37:18'),
('3dab18279ca1580b8d7d0ea077d252dd786ef188535ed54b0d5654e3afa0954ca7dfc7a02f5a3ab3', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 10:01:38', '2021-04-20 10:01:38', '2022-04-20 15:31:38'),
('3eccfeb31ca6cab0d3988c84f8d070120717ffc2ff916d5a6a8a89afafe821bda096f57d6b3959d5', 1, 1, NULL, '[]', 0, '2021-06-06 12:39:05', '2021-06-06 12:39:05', '2022-06-06 18:09:05'),
('3f2d19e1f0f5b8ee1663bb874fb9f88b4be3e2b9bdd6ef8c79b7bd108f5beab17a0a3931a1473938', 1, 1, NULL, '[]', 0, '2021-07-14 13:43:24', '2021-07-14 13:43:24', '2022-07-14 19:13:24'),
('3f32050d4bbdfc2cd4243bee03d141b3a1f878e014d2e3c70b616f91986b26b4c24a33f1eaea2165', 1, 1, NULL, '[]', 0, '2021-06-26 04:03:57', '2021-06-26 04:03:57', '2022-06-26 09:33:57'),
('3f4895524fce7d681781ace38808cfa855916fcfc68743e4f7f28794037abd48affc947736a2a9fa', 1, 1, NULL, '[]', 0, '2021-06-25 12:50:07', '2021-06-25 12:50:07', '2022-06-25 18:20:07'),
('3f63558934539277e1079e0cc503a2b72f437f5fcaa5089adf32a7e8e3d0910ef3fd6a9fde0c98e6', 1, 1, NULL, '[]', 0, '2021-07-19 13:35:49', '2021-07-19 13:35:49', '2022-07-19 19:05:49'),
('3f96ca7abb873ecb31bf518b5fdb0b7610c94bf632e1a2abb0e41aa55293fd9383d355ddee066e60', 1, 1, NULL, '[]', 0, '2021-06-29 06:15:57', '2021-06-29 06:15:57', '2022-06-29 11:45:57'),
('4335ed8edf9e5be4be7be2ca714822857f28ac016869e9de93a2bb5993ce5b117dc1d18f3ab8329b', 5, 1, NULL, '[]', 0, '2021-03-11 04:40:27', '2021-03-11 04:40:27', '2021-03-12 10:10:27'),
('44089e72edd8602ce854999ad0afdb652314442fd0259e7af001d3dbc28975b82e5ca6d76c50e973', 1, 1, NULL, '[]', 0, '2021-05-01 06:51:20', '2021-05-01 06:51:20', '2022-05-01 12:21:20'),
('4409e4759e18a0771e14accb55273b4fd738563e12e11765186c1a57c2c0bd275359d219f391db38', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-27 10:09:07', '2021-04-27 10:09:07', '2022-04-27 15:39:07'),
('441b25aac3e4225d63ddb88a2a0a461f11cd862cd9ad6a9325cf3d13e207f9aa27591f2c3de307e6', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 08:54:55', '2021-04-20 08:54:55', '2022-04-20 14:24:55'),
('4429f554170540541f0ae3ce539b7de55139e2e0b97dc37401ae68677c77079bec5d0c0759fcc969', 1, 1, NULL, '[]', 0, '2021-03-10 03:37:27', '2021-03-10 03:37:27', '2021-09-10 09:07:27'),
('451df3c7a4b7b90707f4052b86e263846251aad331e306c4b455ed451a23bae2a18b413819cde6cc', 1, 1, NULL, '[]', 0, '2021-05-10 06:55:51', '2021-05-10 06:55:51', '2022-05-10 12:25:51'),
('4745ab9d7ef008b65fb09809490d0871f095a36ef2d314f8879afd0d4c0022bc6041887743333115', 1, 1, NULL, '[]', 0, '2021-05-20 07:56:34', '2021-05-20 07:56:34', '2022-05-20 13:26:34'),
('482bb0dd4bd359f9aa15aaf2f4c5181e3931cac55bf9ec414f2ff37d0f1fafeb5981c6942ebe8924', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:32:48', '2021-04-16 10:32:48', '2022-04-16 16:02:48'),
('48eed17245a0ec31a751969ffb9b8e12a7f926d34de8fecd6592d3625d5a06bdd871b2508344f208', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-03-09 08:46:15', '2021-03-09 08:46:15', '2022-03-09 14:16:15'),
('491f439d2fa84f9e0c793e38ccf263f4d58189400243020350eb3a7c7c2757ca9ad29279d626ec37', 1, 1, NULL, '[]', 0, '2021-06-06 08:51:20', '2021-06-06 08:51:20', '2022-06-06 14:21:20'),
('4a18f6f191daed00ee074e75904cdd32f1e7c50f13afa9c0f945bc2e4e36aa9260179aa5d05fa88a', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:36:29', '2021-04-16 10:36:29', '2022-04-16 16:06:29'),
('4a9c245b82b58367fee44fbc4a95e1ee0b2bbee16b372f0098d83bcc3b8baef8678175803950e3e7', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-24 03:33:43', '2021-04-24 03:33:43', '2022-04-24 09:03:43'),
('4b0737a6d679a102515840503b0ddead0341aadb19157815dfc2831d3deb714346ae5c275cb9d980', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 10:11:44', '2021-04-22 10:11:44', '2022-04-22 15:41:44'),
('4baadf134fd67a87cc54182258753468fec888313adbc909ec7823d3c65677e125ee3c0614be04e1', 1, 1, NULL, '[]', 0, '2021-03-10 11:28:38', '2021-03-10 11:28:38', '2021-03-11 16:58:38'),
('4bc5006ce9a83731eb643623ae0810c2c2932a235682b17fc77bcca0c09341b7078b27919589ecdd', 1, 1, NULL, '[]', 0, '2021-05-13 10:56:01', '2021-05-13 10:56:01', '2022-05-13 16:26:01'),
('4be8b60d486674bf696ac51e912af0c5d8cbdfbb6875d65f786362cfbe4654a801a2fc80ec9bb254', 1, 1, NULL, '[]', 0, '2021-06-29 16:38:46', '2021-06-29 16:38:46', '2022-06-29 22:08:45'),
('4c93c2d9778a3164b5cf8e3edb52be6840f74f81c75fd17609f300ff124255a610a4f477c192c3de', 1, 1, NULL, '[]', 0, '2021-04-09 06:39:45', '2021-04-09 06:39:45', '2021-04-10 12:09:45'),
('4cbf1164a1018592f585487b7f02098af7da3ca4791c19371a5b85b270c78d229ca984d2cb538015', 1, 1, NULL, '[]', 0, '2021-05-29 05:35:54', '2021-05-29 05:35:54', '2022-05-29 11:05:54'),
('4d02e080067bed9e1f115ddd48d12a97fe8c26ee32d3e854ee143992f7856f44437596dfcfce7327', 1, 1, NULL, '[]', 0, '2021-04-13 12:56:32', '2021-04-13 12:56:32', '2021-04-14 18:26:32'),
('4d57010f4ed313890d0cd6d1297a530f3667338fc28eb7aa45a96e48e83b2c9a40048486d7f87197', 1, 1, NULL, '[]', 0, '2021-06-04 08:56:03', '2021-06-04 08:56:03', '2022-06-04 14:26:02'),
('4e66fbdb0c63f02aeda707e38ed10ef8e1385f4f5fb1a511beaeccf4f89996b968ea7f9b1c2dd9dc', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 05:35:32', '2021-04-20 05:35:32', '2022-04-20 11:05:32'),
('4f40caf7380dd26e6dd5a9774a52f18d0a29098989cc6c6796feee9c171b07ecd6718d7dc3281b86', 1, 1, NULL, '[]', 0, '2021-05-13 02:36:51', '2021-05-13 02:36:51', '2022-05-13 08:06:51'),
('4f63980d7629c89af03e9a244fc5cfb5bf8962e352aa4d45dfcab701e13ffbfd21f983177fa7961e', 1, 1, NULL, '[]', 0, '2021-03-10 03:37:31', '2021-03-10 03:37:31', '2021-09-10 09:07:31'),
('4fc291c45611b586ebbbd0e3aec38e6623dd6db1a8c6d483923275caaa1c759f70c30bfb00ab6190', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-19 08:25:08', '2021-04-19 08:25:08', '2022-04-19 13:55:08'),
('510d3b48f2639f2ab4bff80e41ea9bf091cbe13147a4e85a863db40c1420ce8e68b218bb81cc8a52', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-21 12:24:00', '2021-04-21 12:24:00', '2022-04-21 17:54:00'),
('5121bcabeaeb43d317e5c036c866357b22e89eea415eb5b1093323ad3e9c983bb8b93ccb8849fa32', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 10:09:21', '2021-04-20 10:09:21', '2022-04-20 15:39:21'),
('518059b5944d089e70ef46cc6664b17781df92a205ebc1d56cf54e9a80de204120353fe54ca3521e', 1, 1, NULL, '[]', 0, '2021-03-10 03:32:27', '2021-03-10 03:32:27', '2021-09-10 09:02:27'),
('51cad0f3f595551eeeed1727030a825df4bc26580853f0fb019cb0badacec5b5c64993c79b273699', 1, 1, NULL, '[]', 0, '2021-06-06 14:20:10', '2021-06-06 14:20:10', '2022-06-06 19:50:10'),
('52589ce715a7484e03124f2179e801145eebc22088ca9cc0de299ce99bf240f35caf035963204a96', 1, 1, NULL, '[]', 0, '2021-04-16 04:31:44', '2021-04-16 04:31:44', '2021-04-17 10:01:44'),
('52ee922a795bc6b09ed3388d62a3c6516e14a93c5f051dbac35bff16b9240e3ff7ad5b93c771c591', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:57:03', '2021-04-16 10:57:03', '2022-04-16 16:27:02'),
('53392ca08b7a0eeb36fce3bcdb961aca3f8fdd9733d8e32c3f044657d1a7dfe793de022c47ab55f5', 17, 1, NULL, '[]', 0, '2021-03-12 06:58:47', '2021-03-12 06:58:47', '2021-03-13 12:28:47'),
('5373d2026a0987805f2aabb9f1a3f9659c8e978f50cae164cffbd864a9468280709f03fe5848420e', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-26 05:41:06', '2021-04-26 05:41:06', '2022-04-26 11:11:06'),
('54b7b1b33d0a65b604e1c4c5dd0df084eb68db546271fe3762bae86854081abd29ec70ec660965e9', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 02:55:08', '2021-04-20 02:55:08', '2022-04-20 08:25:08'),
('559fc425871cabf4fd54386ad3469691a1e0430ce977bca8e7152cc3d7958915ec35177c46750396', 1, 1, NULL, '[]', 0, '2021-05-01 06:49:56', '2021-05-01 06:49:56', '2022-05-01 12:19:56'),
('560a9bdb58e0645ab56566c1a54c7f9f36c9a7b47a3a4f1e698805fefa0c324f1795857f6d092eb4', 1, 1, NULL, '[]', 0, '2021-05-15 09:04:23', '2021-05-15 09:04:23', '2022-05-15 14:34:23'),
('5646c2ae20f1014515634305c1eb05346048ceb254b676af55be3d0e142a7e78d073f40ae09d6b7b', 1, 1, NULL, '[]', 0, '2021-06-14 11:44:19', '2021-06-14 11:44:19', '2022-06-14 17:14:19'),
('56bbbdad38c8fe2c7f86a90f604c31f6406a104741b358f5baf88f35a06877b843f8379fbca82c29', 1, 1, NULL, '[]', 0, '2021-05-14 02:07:40', '2021-05-14 02:07:40', '2022-05-14 07:37:40'),
('571f1dac0febd66cbb3b689d52e0a97b2e19e0b298f31fcb6a1be604b277507a0f7714609c8199e8', 1, 1, NULL, '[]', 0, '2021-05-03 09:06:34', '2021-05-03 09:06:34', '2022-05-03 14:36:34'),
('5769a3684e2df2b5d38846be147dede4a42e786b3329eec54aafe31875b7179600964d9ee4182fc2', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-08 12:48:44', '2021-04-08 12:48:44', '2021-04-09 18:18:44'),
('57be30476bd6e35177e9ffa06014e0ee1377feb524f91a599f0838ac67998d3988c23d05eb051e1d', 1, 1, NULL, '[]', 0, '2021-03-11 05:06:09', '2021-03-11 05:06:09', '2021-03-12 10:36:09'),
('58c0181eeefd84ea03c0076c694e1f081e4ff7ec90f06b800311a16ce4601f7d4e366b6d63ae8fe5', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 09:55:42', '2021-04-22 09:55:42', '2022-04-22 15:25:42'),
('58e6bebec10b167446a430dde47125ee977df5e772dd5a87a32c02830beeb5123cd6ac5f555a152b', 1, 1, NULL, '[]', 0, '2021-05-26 04:58:56', '2021-05-26 04:58:56', '2022-05-26 10:28:56'),
('59dd6f4ed0dbad6ebbccfb5440fd2da63c4c92b3830fa79ff9f0f331178e5009b6318981f30d1158', 1, 1, NULL, '[]', 0, '2021-05-04 12:40:27', '2021-05-04 12:40:27', '2022-05-04 18:10:27'),
('59e72887b2189bb9b4c8c9b6478836fa75cc55c728ce4ec3d3e9715ebd1ed4aeca36611fce0bf14f', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-27 10:11:34', '2021-04-27 10:11:34', '2022-04-27 15:41:33'),
('59f2bdfd5347e6bcf625234e30bf0f1999e58fdf2feff0304b915c2027e30fc5d75715a015cf1a69', 1, 1, NULL, '[]', 0, '2021-06-07 04:46:19', '2021-06-07 04:46:19', '2022-06-07 10:16:19'),
('5aeec1bebdf0b69ae594a80c95f67f3a09c049889d16599c8fe00d2d6411468673f2f079814a0b66', 1, 1, NULL, '[]', 0, '2021-05-11 04:46:59', '2021-05-11 04:46:59', '2022-05-11 10:16:59'),
('5b09ea9c1989066e083ffda53a00ae16747b09c2ef52c2f5750bd025f3e20a51eb6567344e455204', 1, 1, NULL, '[]', 0, '2021-05-27 00:46:47', '2021-05-27 00:46:47', '2022-05-27 06:16:47'),
('5cd64e752a662b101ba2c13c2621dc8039bc3ce5a641f2c4171d282594b43f692638321b394a3be8', 1, 1, NULL, '[]', 0, '2021-05-10 12:10:11', '2021-05-10 12:10:11', '2022-05-10 17:40:11'),
('5cff8cf769b9b637f9967f3dfe2a01bf3fadb46a0ee5b355611b284da6ea9d941fa88134632cbfe0', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-23 09:34:31', '2021-04-23 09:34:31', '2022-04-23 15:04:31'),
('5d67bbadab54764e72574d15366f68b540e7e9950a3d169f44ac2eaaee18a52d0af30d939d80bb95', 1, 1, NULL, '[]', 0, '2021-03-30 07:56:25', '2021-03-30 07:56:25', '2021-03-31 13:26:25'),
('5da4312642d78ef8322831897bc337e4856a034e961ac87402a55aae3e39d515f46e36a07e4f2e20', 1, 1, NULL, '[]', 0, '2021-07-14 12:07:56', '2021-07-14 12:07:56', '2022-07-14 17:37:56'),
('5dfcc3a3def758c8d831e27260377eeb36c4a1f1e7760bd311207ddd21473a9bccfbd7e5f86b52e5', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-26 07:15:28', '2021-04-26 07:15:28', '2022-04-26 12:45:28'),
('5f39302997bed26b73d321920c48f92e8c80966ec06d6d7432ad1f0333446d14bcc1436376da108b', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 20:32:09', '2021-04-20 20:32:09', '2022-04-21 02:02:09'),
('5fb4932fae2a8a16299b97aa5a3ffab505429868c4195e6432370ee623d30c8730ff027c128a1af0', 1, 1, NULL, '[]', 0, '2021-06-01 07:23:36', '2021-06-01 07:23:36', '2022-06-01 12:53:36'),
('62023b5873d7d92d730da348f8c146f6cfa966f8b98851381f36ad9de56259b40f6b6ea8bb14e16f', 1, 1, NULL, '[]', 0, '2021-05-27 00:42:05', '2021-05-27 00:42:05', '2022-05-27 06:12:05'),
('6204a1e91ce12fb0c587f615949acce2c0c6263f983aff7f80d96b29c767a6f6ed4aad4a69a77daf', 1, 1, NULL, '[]', 0, '2021-04-13 12:50:47', '2021-04-13 12:50:47', '2021-04-14 18:20:47'),
('62d416dbeebf6f2ce6a2e9578c8566a250c121f4df86e87482749bc37345f07b41c7e0e145f91236', 1, 1, NULL, '[]', 0, '2021-06-06 02:54:31', '2021-06-06 02:54:31', '2022-06-06 08:24:31'),
('643489b93411cc185d5a9795af118ea783df3e1f6720c6002c2090a9fee81badc67557cedde9c33b', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-03-09 08:46:03', '2021-03-09 08:46:03', '2022-03-09 14:16:03'),
('6508bfe669c88acf7471ab99bb95ea6030f1c35053118e40c94d1c6d3e1f419bea19337e5a8cbca4', 1, 1, NULL, '[]', 0, '2021-06-07 10:01:15', '2021-06-07 10:01:15', '2022-06-07 15:31:15'),
('650fd29a2f3e39586c553d230e76125c0847a664e1848dbf51e0d8c0b62fcf7e6b19863302612fdf', 1, 1, NULL, '[]', 0, '2021-04-28 23:04:01', '2021-04-28 23:04:01', '2022-04-29 04:34:00'),
('65395eb4a6e9a3309e470a2b17d305c8b912a48c2ddebcf095c6c4977731c7050bb07c33a78a172a', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:20:38', '2021-04-16 10:20:38', '2022-04-16 15:50:38'),
('657a40aa1bc9294620c8b6216ccda583822f0d18d7282a8b8f63baaed82a2dee5ad5aed45dbe9eea', 1, 1, NULL, '[]', 0, '2021-03-10 03:32:24', '2021-03-10 03:32:24', '2021-09-10 09:02:24'),
('660583e40615394c3d2d40d1b8e85098de2b2d60cea39f04b56b13eaea31cfbbe8f4e2207439d625', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 12:41:09', '2021-04-16 12:41:09', '2022-04-16 18:11:08'),
('67034fc205af434adb4cd76cb21b365f310f25273cb83957058a4c99bd289ba2d67444f85c1e06ff', 1, 1, NULL, '[]', 0, '2021-05-13 02:31:15', '2021-05-13 02:31:15', '2022-05-13 08:01:15'),
('6774d8acc65133c2e9005d57566dfd2e98f4d3a17af36f840ddf1b1d0c3d437baf173f6743cd9049', 1, 1, NULL, '[]', 0, '2021-04-29 00:26:45', '2021-04-29 00:26:45', '2022-04-29 05:56:45'),
('6789025c20aa27c7ac7bb021628abb40a880b8c88c4685b847a02c8765026ff241606ef89a418259', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-21 20:04:18', '2021-04-21 20:04:18', '2022-04-22 01:34:18'),
('67f12381c7e41faf76d5d066426eeab4fb9a759195ab662449d26828a042e5ec265bb23d49532f3f', 1, 1, NULL, '[]', 0, '2021-07-16 01:19:26', '2021-07-16 01:19:26', '2022-07-16 06:49:26'),
('68389063937233217ab151437e877ed3f384982c7288f7a64f8e03ca3c1ddbb59392d187bb21bbab', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-27 04:28:06', '2021-04-27 04:28:06', '2022-04-27 09:58:06'),
('692daccecc823180653bc2bf080af9be4cb2cd488d70e1ccc0527d5cc8bc4a4d1c85676f856d8f74', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:50:41', '2021-04-16 10:50:41', '2022-04-16 16:20:41'),
('69d5dc1164de02c4240195107bc779c2651ebdba858c544fe119e108a417b56d8466202e2a1d379c', 10, 1, NULL, '[]', 0, '2021-03-11 11:23:11', '2021-03-11 11:23:11', '2021-03-12 16:53:11'),
('6a05bbb8abe2ae13ff50776c89595551999e85b4c3848d3ec47bb2c007a2862d9bc782dce81f8f46', 7, 1, NULL, '[]', 0, '2021-03-11 11:01:33', '2021-03-11 11:01:33', '2021-03-12 16:31:33'),
('6a561b9634f54789c9aca55a6e51521d1112ffa4d818647a295f557ba8d629fa5a902974cdbc646d', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 11:46:06', '2021-04-16 11:46:06', '2022-04-16 17:16:06'),
('6a9b4f2531bed18b1b19165d1652553aca76e2a6936ef61c196d40f51dca22dee4b065add69292b7', 1, 1, NULL, '[]', 0, '2021-06-06 14:40:03', '2021-06-06 14:40:03', '2022-06-06 20:10:03'),
('6b05749211e1b4816f91d346288936ff0a3d43cb8e7312fa817738c3a3d0afe7a818cfc36f25d075', 1, 1, NULL, '[]', 0, '2021-05-18 08:23:35', '2021-05-18 08:23:35', '2022-05-18 13:53:34'),
('6b86c01a750072abb42c9391b40c18e4bb0d50e7f611b8819bdb410375d2af1d8805dee9a68a3a77', 1, 1, NULL, '[]', 0, '2021-06-04 15:37:55', '2021-06-04 15:37:55', '2022-06-04 21:07:55'),
('6c26967bc4e2042e5e7250548910360a42edf3854c60a185e9f87a7fb31a5026c3bb3c6f7a17b4dd', 1, 1, NULL, '[]', 0, '2021-06-07 04:22:11', '2021-06-07 04:22:11', '2022-06-07 09:52:11'),
('6c9a7a47ea1750c7b2eadbdf80ebabf8bf102b78bb760e95bf56add095044ec0f66c5cf9cdef1856', 1, 1, NULL, '[]', 0, '2021-07-13 09:24:51', '2021-07-13 09:24:51', '2022-07-13 14:54:51'),
('6de4e8a68569d823625ca9f87d1f76005c846109923eeb4fd88e078d1118740baa97b8d525db4dd4', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-27 10:10:23', '2021-04-27 10:10:23', '2022-04-27 15:40:23'),
('6de9afea747576980be9287c4039fc5423100a30c6917aba990aff887b9ee8bbdd5abcf313fb5e17', 7, 1, NULL, '[]', 0, '2021-03-12 04:25:28', '2021-03-12 04:25:28', '2021-03-13 09:55:28'),
('6eaf34dedd38e015e51e2977b7e213a2492dddf893c5af119622c458caa87105d2953b498fc57658', 1, 1, NULL, '[]', 0, '2021-04-09 11:02:01', '2021-04-09 11:02:01', '2021-04-10 16:32:00'),
('709799b83183bd77db461d81a0907cbf97d016a0ece9f73413e67cd21ce71adb4e89f29df1632c5e', 1, 1, NULL, '[]', 0, '2021-06-24 12:36:10', '2021-06-24 12:36:10', '2022-06-24 18:06:10'),
('70ae9e2213838f51c03d9fa1d84b03c434f31931b885ddac20c09c539758ae0e87cd899f74daf349', 1, 1, NULL, '[]', 0, '2021-04-30 08:19:20', '2021-04-30 08:19:20', '2022-04-30 13:49:20'),
('70dd3bc46403eb9c5744f6ef5f1a5c8729a309d27a0c198d4308df109df5bd194937cf3da8115e62', 1, 1, NULL, '[]', 0, '2021-05-29 00:28:24', '2021-05-29 00:28:24', '2022-05-29 05:58:24'),
('711a1e91471421437ae82de4748548b7050cca8d7e2eff1b314698b6652db2b0589e57ce009abc93', 1, 1, NULL, '[]', 0, '2021-05-25 10:52:00', '2021-05-25 10:52:00', '2022-05-25 16:22:00'),
('71232857277e60f9cf22832e8d754637a529f1aab4f6c5e76ee32edb1273c4f77a6d750a81616653', 1, 1, NULL, '[]', 0, '2021-06-06 09:52:53', '2021-06-06 09:52:53', '2022-06-06 15:22:53'),
('713d500c10667bc4bc31365ddb0379b1f85bf8066d7e831f091511d3700e9efdc0ed4bef72056ca8', 1, 1, NULL, '[]', 0, '2021-06-15 02:21:20', '2021-06-15 02:21:20', '2022-06-15 07:51:20'),
('718f4a14efbd6e576e254ba52e24cc7c3bfa240854afe6302e0637465d8473a38fbf09dfb6af0705', 1, 1, NULL, '[]', 0, '2021-07-01 13:58:18', '2021-07-01 13:58:18', '2022-07-01 19:28:18'),
('71ff42f4b1427222932406926f77850f2afa5ebe41bf0254220045284580fb9322b63ca141bf60c8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-03-09 08:43:41', '2021-03-09 08:43:41', '2022-03-09 14:13:41'),
('7226c9efbf1174f3e44b389c168976c26c1b5a7b1a7809d9d6d118a4d12bf0c3298a93e28b73eef3', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-26 05:56:14', '2021-04-26 05:56:14', '2022-04-26 11:26:14'),
('72e67b8a4c226e2f9a31beb8332ed018ae5ae85a4fa5cac1ac2ee405581d1c1586876d9a8af43faf', 1, 1, NULL, '[]', 0, '2021-03-10 04:05:55', '2021-03-10 04:05:55', '2021-03-11 09:35:55'),
('7373bb69933293a6a13ec9bcc7172018b012314481a5113089284da9b640281665cfc036ad0dd2ff', 1, 1, NULL, '[]', 0, '2021-06-14 23:22:08', '2021-06-14 23:22:08', '2022-06-15 04:52:08'),
('737e1baeef735beecd133f25acff62deb6b9e9d68f3de4d260bc5c473cc1255fc476d9b00468e170', 1, 1, NULL, '[]', 0, '2021-08-07 06:28:57', '2021-08-07 06:28:57', '2022-08-07 11:58:57'),
('7437f25012caf1f0f3a02eafd1fdf39b4f612d42c276f28501d6d1558e437ab46ef71a5016e1a80a', 1, 1, NULL, '[]', 0, '2021-05-02 07:34:02', '2021-05-02 07:34:02', '2022-05-02 13:04:01'),
('745c3043148de1d543b375413722e8de8e49b45cdbe9db24f5779aa97dae4c336b64cf1c32106211', 1, 1, NULL, '[]', 0, '2021-07-18 06:05:56', '2021-07-18 06:05:56', '2022-07-18 11:35:56'),
('74b85348149be84f7e63142a00645bfd9cdf2d35b8f5686824539a68e965e4e43b2c16a23373e2ac', 1, 1, NULL, '[]', 0, '2021-05-13 02:31:47', '2021-05-13 02:31:47', '2022-05-13 08:01:47'),
('75227e168c7b05b36ef283e6988a064f8fe170e78bf31c3d3e09017ee4cc12aad1d0ba6c84a0f95e', 1, 1, NULL, '[]', 0, '2021-05-06 21:21:14', '2021-05-06 21:21:14', '2022-05-07 02:51:14'),
('7577eea8548d73fa6c1d42552cfeddb6268bef71458abfa73f9105cacfcfa3f0e800b6b2c4bf08fa', 1, 1, NULL, '[]', 0, '2021-05-10 11:35:14', '2021-05-10 11:35:14', '2022-05-10 17:05:13'),
('76bf577931adeead9d51a03070c6dbac22c1fc9bad46f1bd5cf69becc97ff9e74c1217327b570944', 1, 1, NULL, '[]', 0, '2021-05-10 07:47:51', '2021-05-10 07:47:51', '2022-05-10 13:17:50'),
('77f02d6b70266ec8ac7dbdbc8393278b4b82383700e2e73932f4065c29387299cf7086b76ff7d89d', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 22:20:52', '2021-04-20 22:20:52', '2022-04-21 03:50:52'),
('787e596c9800c8573a67e77e2671d2f70fc9b29f12ac8e15c466a6fceeb801173c1e389d5a70c534', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:35:05', '2021-04-16 10:35:05', '2022-04-16 16:05:05'),
('7908014d9a04fa9396afb1636cacabf9c9a2ef4947739d9047c7051e097c101c0ee4064a1b419835', 1, 1, NULL, '[]', 0, '2021-06-16 05:06:39', '2021-06-16 05:06:39', '2022-06-16 10:36:39'),
('796be2b58c38e121d447d3865f97bca091fa5031ded63b40df9b71b0ea99ae21e75d237685cdebd9', 1, 1, NULL, '[]', 0, '2021-04-28 13:10:44', '2021-04-28 13:10:44', '2022-04-28 18:40:44'),
('7afd2fd374e5b6ebeb6fbc8b2637626a79e8dbffdb15c3c69a894a409fea369fec25c1c1125dd6c7', 1, 1, NULL, '[]', 0, '2021-05-27 09:28:53', '2021-05-27 09:28:53', '2022-05-27 14:58:53'),
('7cc102380552d97000d8bfcd0ef942b0dc6503440bd47ddddb47b00e845086f3372d971670a7c3fe', 1, 1, NULL, '[]', 0, '2021-05-04 20:45:08', '2021-05-04 20:45:08', '2022-05-05 02:15:08'),
('7db64acc11425cf4384d8747a03f3663a4f46e45fe93fb884f8b1cced0892b28e844d02da22f9bea', 1, 1, NULL, '[]', 0, '2021-06-23 12:09:43', '2021-06-23 12:09:43', '2022-06-23 17:39:43'),
('7e201ed6fa733e7e10be734e7e6b05e65d1a95b14783341d22bcdd64a38d22d3777b51324641f846', 7, 1, NULL, '[]', 0, '2021-03-15 03:30:57', '2021-03-15 03:30:57', '2021-03-16 09:00:57'),
('7e53d0d62217a6044d1ace96a5e6b5f6ea108bbb2a61604dc0859c242ffc05c68bf0c7b3c43ed69b', 18, 1, NULL, '[]', 0, '2021-03-12 07:03:03', '2021-03-12 07:03:03', '2021-03-13 12:33:03'),
('7e9b5611eaf5e248a4b830364919ffb9a4d2cc8badb015344293de3d461815614dffcdeaea1c136e', 1, 1, NULL, '[]', 0, '2021-03-10 03:32:29', '2021-03-10 03:32:29', '2021-09-10 09:02:29'),
('7f962e9f060c4c3af40000184c59dd331ef42ac45c669570b3ef214e9b8ab14f9c8b743639a9e290', 1, 1, NULL, '[]', 0, '2021-05-10 10:17:39', '2021-05-10 10:17:39', '2022-05-10 15:47:39'),
('8130820cd28d9e88afcee0ea68394b152b30b82e8a4e3cef2776c8d443bdcbc064b39885af1a7dd0', 1, 1, NULL, '[]', 0, '2021-04-28 12:48:10', '2021-04-28 12:48:10', '2022-04-28 18:18:09'),
('8227a52b3a48a3db755f802eefb730072f4f5456a60c600e04613e7ff910550c41966903089a4dfd', 1, 1, NULL, '[]', 0, '2021-05-19 13:07:43', '2021-05-19 13:07:43', '2022-05-19 18:37:43'),
('824134526efe58065bf16e8cb901d2459be2b121346138dab23ecd171e9065c061ba6fc7ab729e03', 1, 1, NULL, '[]', 0, '2021-05-13 02:30:07', '2021-05-13 02:30:07', '2022-05-13 08:00:07'),
('82a1fe7d000bdfe5599090c2ca22b4a23cb0effe7093a95f0ffcad1f939f4645f60b7e843c7b8983', 1, 1, NULL, '[]', 0, '2021-04-30 12:20:35', '2021-04-30 12:20:35', '2022-04-30 17:50:34'),
('82e8ecd081eefec11042bbe21e518d005a4bdb5c6b9898c089d80849e7f20aec167077e3ee8b6c25', 1, 1, NULL, '[]', 0, '2021-05-19 05:31:27', '2021-05-19 05:31:27', '2022-05-19 11:01:27'),
('84193c9918ed2b2dca0837a784ca3d96f7d6eb7c93f1f2046aebb7998728d6ed1f3b42f635f6e075', 1, 1, NULL, '[]', 0, '2021-05-13 10:47:16', '2021-05-13 10:47:16', '2022-05-13 16:17:16'),
('849f0ef0ae3f040faea722b3c82c022753fe7bc689b9ac774dcfede4a8290408f486db288083921a', 1, 1, NULL, '[]', 0, '2021-06-07 02:20:51', '2021-06-07 02:20:51', '2022-06-07 07:50:51'),
('852795c771c35d5047033397abeebd345e705305eebb35f7f82745745b22485b711d97ba9682bbf3', 7, 1, NULL, '[]', 0, '2021-03-15 05:42:35', '2021-03-15 05:42:35', '2021-03-16 11:12:35'),
('85f4e8f67f5fc6228a4e64c00fae70cd72c11462f14736de5cd6d807437dae4c11c3ffd41a6d1d71', 1, 1, NULL, '[]', 0, '2021-03-11 04:23:47', '2021-03-11 04:23:47', '2021-03-12 09:53:47'),
('867a18f453719417e44bee369f0bdcbae582eea7c5936b1fa28d084d366bb4695af17d96b29e1e5e', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:44:11', '2021-04-16 10:44:11', '2022-04-16 16:14:11'),
('876d81e8797b805560300a6453f66ec913c923ca05c102811fc0b0be29bc6918e866d307d8dabec6', 1, 1, NULL, '[]', 0, '2021-07-16 00:29:24', '2021-07-16 00:29:24', '2022-07-16 05:59:24'),
('87e8dbabea8973fcaabc57a3433f1965896279fec8ef7d364ca73315c4cc40c7284c85b9c887bd89', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:20:01', '2021-04-16 10:20:01', '2022-04-16 15:50:01'),
('89b037e3d717717c6132b63153af174946ff5a63f9773395c4d644373aa197a058bac3c3197a622e', 1, 1, NULL, '[]', 0, '2021-04-08 12:41:27', '2021-04-08 12:41:27', '2021-04-09 18:11:27'),
('8a7fdc064ca2d74c1b12b83f00df4a1673340f1862b1bbc67113b4d3b3598c4afc268f7536631b67', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-27 10:11:29', '2021-04-27 10:11:29', '2022-04-27 15:41:29'),
('8c858aea542dd0c82c9cd8dd9c7beb9c49d58ef4e4e652c3f0596f464cb9a7b050680778647fd38a', 1, 1, NULL, '[]', 0, '2021-06-26 02:46:21', '2021-06-26 02:46:21', '2022-06-26 08:16:21'),
('8cae6e305f055f1a812964675a52b4c0248b36ea18ccc38902ae750569d40d00abbaea0cb04662fb', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 10:01:57', '2021-04-20 10:01:57', '2022-04-20 15:31:57'),
('8d2283408ea61b1590cbcace509f13754be0e5280ae43391bbdcca576de90be52333ae9a6d947a95', 1, 1, NULL, '[]', 0, '2021-06-22 13:18:18', '2021-06-22 13:18:18', '2022-06-22 18:48:18'),
('8df3a52eccbbfbe61db728c4c817503637674d3aebfc4ef64c15c7fd3db6589d304c6c613e5a0152', 1, 1, NULL, '[]', 0, '2021-06-29 11:19:17', '2021-06-29 11:19:17', '2022-06-29 16:49:17'),
('8f9591c13ba88af81fff81f10da385fddbdfd62bd8575e082572465d2919b850280bc082e6ae6b8e', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 08:36:31', '2021-04-20 08:36:31', '2022-04-20 14:06:31'),
('903c67ae0c324fd279a53dcc9d28e3741b1073bc755eb6ab360bf80849dc42fd0d1373cb410a12e3', 1, 1, NULL, '[]', 0, '2021-07-12 05:26:30', '2021-07-12 05:26:30', '2022-07-12 10:56:30'),
('90807a5708a1165ded75537bf41bd8001a7597daede428803ef76e94576033fb79120cccbf2116ed', 1, 1, NULL, '[]', 0, '2021-05-17 08:20:22', '2021-05-17 08:20:22', '2022-05-17 13:50:22'),
('908af255b7f3af4d642a06cc93fa7e57e42aa38ac1547f49d49e8873c8f10508686d6eed4147e867', 1, 1, NULL, '[]', 0, '2021-06-05 10:52:09', '2021-06-05 10:52:09', '2022-06-05 16:22:08'),
('90ba57204002a4e0243f425154572d6f38f0bba1da1c995033c389fe55a4e53cec4cf6953b4276ed', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-27 10:10:58', '2021-04-27 10:10:58', '2022-04-27 15:40:58'),
('90e459fd0cea11b036c64e3527fd3116a60ba095aafe5860c3700b30f8b6d25c7fd74879dd79453e', 1, 1, NULL, '[]', 0, '2021-03-11 05:06:31', '2021-03-11 05:06:31', '2021-03-12 10:36:31'),
('9115f3932fd5720e516a6bf49776d8e6772e7396b9f01b9a5675036b4ed657f1415fa96262b2ae38', 1, 1, NULL, '[]', 0, '2021-04-29 01:17:30', '2021-04-29 01:17:30', '2022-04-29 06:47:30'),
('9132f63665524097c9560fc9c5edca5fe3889d1232ec7e86de859e9ba601e8f1a88524ea6b0311da', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 09:36:32', '2021-04-22 09:36:32', '2022-04-22 15:06:31'),
('91589bd1bb437893a1000823c4f00c5504743c374047ebac33985e201d5ffc7f95017e9d5c2c39f1', 7, 1, NULL, '[]', 0, '2021-03-15 05:42:07', '2021-03-15 05:42:07', '2021-03-16 11:12:06'),
('917bb603cac4fe10821471bbf8db5159ec06e6fe51eaa8b00a3848bf22319e3e918d8ffe90e62995', 7, 1, NULL, '[]', 0, '2021-03-11 06:57:24', '2021-03-11 06:57:24', '2021-03-12 12:27:24'),
('917c54c6c0d158412e7932376f4e3e0b3b5e17db483ec22d5562070291715482aae9f3c3cb647bcc', 1, 1, NULL, '[]', 0, '2021-06-15 14:49:11', '2021-06-15 14:49:11', '2022-06-15 20:19:11'),
('925a93fd4ae8fb343a798e943c208c0eeafd5c0e34caee966d39a2d3aaa998e055fa6f9e7f6b42c7', 14, 1, NULL, '[]', 0, '2021-03-11 12:01:35', '2021-03-11 12:01:35', '2021-03-12 17:31:35'),
('92854730895f758c7b6e1364dc0b561f9777624e6280062f089ade5935c1622966409eb4b52e20da', 1, 1, NULL, '[]', 0, '2021-07-18 05:45:54', '2021-07-18 05:45:54', '2022-07-18 11:15:53'),
('9286865a9b6c8c0fc374dc3a35a178cc8ffe4050cae0b2530a1bbdd2799390c4694c4932c59a02f0', 5, 1, NULL, '[]', 0, '2021-03-11 05:56:24', '2021-03-11 05:56:24', '2021-03-12 11:26:24'),
('92c07d625733a5f1dba400dc5e0b46187de553bedf3bd7eed9256a10d2a734e0481062f2c8922d8a', 1, 1, NULL, '[]', 0, '2021-06-06 12:16:54', '2021-06-06 12:16:54', '2022-06-06 17:46:54'),
('92da8657816b45782f591e22aede43ca63830997b75f132d99c1bd78809aea79ecbac3ca3d76a75c', 1, 1, NULL, '[]', 0, '2021-06-07 07:37:22', '2021-06-07 07:37:22', '2022-06-07 13:07:22'),
('92f6e20754882b0138ed3fa759f62705b59ff570ae69d0f3f07cdb500f63b956d367ae7af5fa6111', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 11:31:41', '2021-04-16 11:31:41', '2022-04-16 17:01:41'),
('93b0631d09a8a2ad3f3c7aacc0799dff86a37e5b273d12cea559b8676a9cc4c1b3c141726dfbbadf', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 09:56:01', '2021-04-20 09:56:01', '2022-04-20 15:26:01'),
('93d2a9e1d9ce614169bc6d91682027d75f075019fe6835ddc60579ebb36a63eebde39aa9df36486c', 1, 1, NULL, '[]', 0, '2021-06-21 23:33:06', '2021-06-21 23:33:06', '2022-06-22 05:03:06'),
('94174bd4eeb21d95e633991873de0bc5d55a996349a3316d320fa96cc9ea7c89e9ac3af4c95a4d1d', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 01:56:40', '2021-04-20 01:56:40', '2022-04-20 07:26:39'),
('948898be3b22f655c5b886e207d1134e8a7dc823d347f5d789e1a10a285c6c2f1eacbbbe01d90732', 1, 1, NULL, '[]', 0, '2021-06-07 09:52:24', '2021-06-07 09:52:24', '2022-06-07 15:22:24'),
('94b3ab49b53db694bf05a2188dc89d3c42659d3a0f8e9921bfeb5d657733ff8d5b98e14a5c6c2d85', 1, 1, NULL, '[]', 0, '2021-05-30 08:04:41', '2021-05-30 08:04:41', '2022-05-30 13:34:41'),
('952ba3bd27eabf940b023eb005aa326497928bd17828f5489b6b8f86ea042ad77f00b640d2b5258b', 1, 1, NULL, '[]', 0, '2021-05-06 13:03:18', '2021-05-06 13:03:18', '2022-05-06 18:33:18'),
('95fb74959b9dc493f6c5e3c459015e3830961616de359efc25627c5033ac02e873392badda7304c2', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 19:11:48', '2021-04-22 19:11:48', '2022-04-23 00:41:48'),
('9648fe17a2c250a561e60b557bc4698bbf7cdfd2e52b256ebf49440b564f39e38d9bbbb0753169ce', 1, 1, NULL, '[]', 0, '2021-04-29 12:23:18', '2021-04-29 12:23:18', '2022-04-29 17:53:18'),
('964e142c1660db353ad521956315237b47717d480d2ce02e6af369966ef506e8cadafde0a760b38e', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 23:02:02', '2021-04-22 23:02:02', '2022-04-23 04:32:02'),
('9672d6cf5fbd641bbcef6db595d5f9c77735f0767aa22a6d828d50e59398b7a136d5170a6fa0ced5', 1, 1, NULL, '[]', 0, '2021-05-13 01:53:54', '2021-05-13 01:53:54', '2022-05-13 07:23:54'),
('9797231b37adeb47ed7c875678afb396bc04c62734c4b295d3154500b6e6e3d992fbb13a97425cd8', 1, 1, NULL, '[]', 0, '2021-07-18 05:45:44', '2021-07-18 05:45:44', '2022-07-18 11:15:44'),
('97de0f0598ac533d5d0ee08ff763a2827a47150f960006392ba16340dfa400d10c0c7d9f481d8fea', 1, 1, NULL, '[]', 0, '2021-07-01 14:15:27', '2021-07-01 14:15:27', '2022-07-01 19:45:27'),
('97f9ca053247909ba0a04991392947e586f9445fd595866cffec4a04397dabff72d94171bb8be297', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:39:46', '2021-04-16 10:39:46', '2022-04-16 16:09:46'),
('992f88215198f6edf14ec47bb4c3b14314831ee1ab12d75f1db3d9bfcf072596976af80c86eb8576', 8, 1, NULL, '[]', 0, '2021-03-11 11:03:39', '2021-03-11 11:03:39', '2021-03-12 16:33:39'),
('9930562efbe9c5763dd1adbbf70231553e284a1c6fb30560d9c779757ae1e5d423f0f18482ffd257', 1, 1, NULL, '[]', 0, '2021-05-18 06:34:11', '2021-05-18 06:34:11', '2022-05-18 12:04:11'),
('995d1f6332397739fc10021a7e4119e9aa5e8340356c8e77815cae6248c1e102e5157b146a9d0cc8', 1, 1, NULL, '[]', 0, '2021-06-06 04:43:09', '2021-06-06 04:43:09', '2022-06-06 10:13:09'),
('998586b449d3c6053f9369bc3090b98ad9e101927e8614572fd09a1fd17c07721c6182987547cd27', 1, 1, NULL, '[]', 0, '2021-07-08 11:54:18', '2021-07-08 11:54:18', '2022-07-08 17:24:18');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('99915e512da9f4ff620c21e032ffd4c752704116d17bf8d0240e4822bc5abcdff1fd4cc21445a9b6', 1, 1, NULL, '[]', 0, '2021-07-15 10:13:03', '2021-07-15 10:13:03', '2022-07-15 15:43:03'),
('99a7bd2ec689b5a9f9816ea108e3c94e665d5292ce167e40834a7355f8d4baff42e9ace4ce39a8a2', 1, 1, NULL, '[]', 0, '2021-06-05 03:28:37', '2021-06-05 03:28:37', '2022-06-05 08:58:37'),
('9a1bcdb66117945c45904936b960a567885b1d08ff28fda218b98f57b0658ca22f5697ab472df3ff', 1, 1, NULL, '[]', 0, '2021-05-02 06:40:55', '2021-05-02 06:40:55', '2022-05-02 12:10:55'),
('9a2dde3f47c4811c5d6094d63b9fbc17da0c8e94550415818665491ec694bc5fea0e3c695f1e0165', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-23 10:29:12', '2021-04-23 10:29:12', '2022-04-23 15:59:12'),
('9b179a5065f1301ee607ab692820acf127c5b4a9ced041bc795efe50fbb068971a590ccae6a40224', 1, 1, NULL, '[]', 0, '2021-05-05 19:51:15', '2021-05-05 19:51:15', '2022-05-06 01:21:15'),
('9b64c8b5914703d3203e797b8565f453f0b9ae4a7de922133b51aba40bc40578a77b3203f8daccc1', 1, 1, NULL, '[]', 0, '2021-07-13 09:50:51', '2021-07-13 09:50:51', '2022-07-13 15:20:51'),
('9c1ffdf3ed49b425133edc7dc2187f68bf001d9980699d4fd97128c86c9d45928d8a8ed0872f1766', 1, 1, NULL, '[]', 0, '2021-04-30 10:22:11', '2021-04-30 10:22:11', '2022-04-30 15:52:11'),
('9c29585183d837d8aee820e2c68685749d1f1c4e35b5cfbfc7e488aeee295dede5c431daa70e776a', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-21 12:37:24', '2021-04-21 12:37:24', '2022-04-21 18:07:24'),
('9d5c359435da0226b47e44f2b95803925d8b53f137f4e455f6e7399d90d4931c1dc04d8de8bfc9df', 1, 1, NULL, '[]', 0, '2021-05-28 11:15:51', '2021-05-28 11:15:51', '2022-05-28 16:45:51'),
('9d7b7e2d2629f38d2b886a2f8458fa21e2aea300024d674e3acc596bd14318119952bab0ab46941e', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-26 13:48:27', '2021-04-26 13:48:27', '2022-04-26 19:18:27'),
('9eaa221a590ef5696600fbeaf804549a27690a33b92e8a78c0e3b02e7d7fc026b2bcb1d4593b733b', 1, 1, NULL, '[]', 0, '2021-04-28 22:59:28', '2021-04-28 22:59:28', '2022-04-29 04:29:28'),
('9ecfce70eeedf16c897a8eddf94c2b3814c7ce225a404972f29103df95f8fac4c712a38c9fd92798', 1, 1, NULL, '[]', 0, '2021-06-22 12:41:07', '2021-06-22 12:41:07', '2022-06-22 18:11:06'),
('9f53d405d9325230336a5b1fbb25840150b145248bf218b87687bbd88b8508872cf8701f1bc951df', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-26 04:52:55', '2021-04-26 04:52:55', '2022-04-26 10:22:55'),
('9fc41d5146db66b3fdf9979c557f79791fa653ca1783baaf20cf7520918253aae3a126e47d7cc33a', 1, 1, NULL, '[]', 0, '2021-07-18 05:45:53', '2021-07-18 05:45:53', '2022-07-18 11:15:53'),
('a0422733db0c68c4badf04ba94908b5891d44c8ff16c589aaa27cfb3cd3020480e71e529bd434839', 1, 1, NULL, '[]', 0, '2021-05-26 04:58:19', '2021-05-26 04:58:19', '2022-05-26 10:28:19'),
('a0aba93c7e390b794f41d64c8e8f977f9f5573934d571e0f99604643cb137c62ac1f65f47796e083', 7, 1, NULL, '[]', 0, '2021-03-11 10:59:04', '2021-03-11 10:59:04', '2021-03-12 16:29:04'),
('a1183247d5a67778b95f7b29fbfc3cbfd5829721bad61ac7e17dfa5349f55d74037c28282537a490', 1, 1, NULL, '[]', 0, '2021-06-19 02:30:03', '2021-06-19 02:30:03', '2022-06-19 08:00:03'),
('a123552cf28e45b9b04910bd22b39e136b06e245ccd39fa16579cda9dec1c61b2ab8e295ad6cf070', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:46:13', '2021-04-16 10:46:13', '2022-04-16 16:16:13'),
('a27f743f384bcc0a3c1c571f48a57cb3bbb1670d72e92e6e1663515a28cc39408b0674b421986245', 1, 1, NULL, '[]', 0, '2021-05-27 10:21:29', '2021-05-27 10:21:29', '2022-05-27 15:51:29'),
('a2b6cae5c72a743af70269dcdb31b8b83ac846a3c777fb49dda1b41ee1d7ba841a49b3b4392484f1', 7, 1, NULL, '[]', 0, '2021-03-16 06:16:27', '2021-03-16 06:16:27', '2021-03-17 11:46:27'),
('a2dfc2551a94aea92fd067db1fa574b60c91fc615eb69c0bbc33b37d3f61144c198ccc3722f905ba', 1, 1, NULL, '[]', 0, '2021-06-07 12:21:35', '2021-06-07 12:21:35', '2022-06-07 17:51:35'),
('a2e7616bfff78e7895ef9283bbec7c1608e067de668d233ede7624c143ff45ac94592133d96f4305', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-27 10:08:37', '2021-04-27 10:08:37', '2022-04-27 15:38:37'),
('a2fc210ccaabfb9d12c7c56784ef4a057e1ce9769dd13a424e463a42c4d49ef4613bf9017ad5d43c', 1, 1, NULL, '[]', 0, '2021-07-05 11:25:07', '2021-07-05 11:25:07', '2022-07-05 16:55:07'),
('a30cc1dd7f643c8b7f00cdc8d948ab31b999b4a903deaa2c9d73158fe4b699410533b09bbcd9f380', 1, 1, NULL, '[]', 0, '2021-05-05 06:15:48', '2021-05-05 06:15:48', '2022-05-05 11:45:48'),
('a36b914092194883c16d49f9647a0e355c40cb98c795672726296fb05ff7a27d55f341dc0969c297', 1, 1, NULL, '[]', 0, '2021-06-11 13:17:17', '2021-06-11 13:17:17', '2022-06-11 18:47:17'),
('a376afce9bd42c55c2b7d4f28cb86bae828642035f0e0d8aa3a43eb37583d1a08afd91634282539d', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-03-09 11:27:25', '2021-03-09 11:27:25', '2021-09-09 16:57:25'),
('a4531a635763e6e2ceaa112c3cf9b1bb919ef9dac55fc7642b8506894d39b4af2472f114537afbbc', 1, 1, NULL, '[]', 0, '2021-06-22 08:16:48', '2021-06-22 08:16:48', '2022-06-22 13:46:48'),
('a60739cc7ae16fb09f6e48224cd8553dd238fbd4f36c844d7a0c31562ebd5c828f65dc0d53a31b32', 1, 1, NULL, '[]', 0, '2021-05-29 07:20:59', '2021-05-29 07:20:59', '2022-05-29 12:50:59'),
('a6bc2847f265bb255c4a4803f3249096caf748c520cf737e539b737b9e851274c9cf0c2d90d3d010', 1, 1, NULL, '[]', 0, '2021-03-12 07:45:59', '2021-03-12 07:45:59', '2021-03-13 13:15:59'),
('a6c24599e09529be0db78e93d3fe47416c559890f006086056e2b822c608b0b278bee7e35e7b5339', 1, 1, NULL, '[]', 0, '2021-07-19 08:19:45', '2021-07-19 08:19:45', '2022-07-19 13:49:45'),
('a6e187489d76f3b351bbe7060813c4f81eb15b66e1e990428e55aa02131fcc859cbbb2363ac8759a', 1, 1, NULL, '[]', 0, '2021-03-10 03:32:30', '2021-03-10 03:32:30', '2021-09-10 09:02:30'),
('a81cf0db533f6eb94ebf7cfe53874548ad54dba98345fcc9c807ae900dc2978b88aada6022024d78', 1, 1, NULL, '[]', 0, '2021-03-10 03:32:31', '2021-03-10 03:32:31', '2021-09-10 09:02:31'),
('a89705aeb2fdd86aeefa8d3cb90e42f88792e2852f38868620a7bb2f8dd55e1704af6f21d8eaa4e5', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-27 10:08:36', '2021-04-27 10:08:36', '2022-04-27 15:38:35'),
('a952c49089b6a3ef24310a2e58f727831492fcb44c23e79501f1944e9ffd955c9ea273e3f5c13a4b', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-26 04:59:19', '2021-04-26 04:59:19', '2022-04-26 10:29:19'),
('aa0f33ec0c5e552c968cf856c73cbaf246d74813e6864cd55f4bf1d955c1ec614efabf335c22b62e', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 03:05:03', '2021-04-20 03:05:03', '2022-04-20 08:35:03'),
('aadfaa32cfbcede7cf557442e3c1c64c1aaeb37326cbc33ed940f644a0c822453fecdf67ab7326b4', 1, 1, NULL, '[]', 0, '2021-06-26 07:41:21', '2021-06-26 07:41:21', '2022-06-26 13:11:21'),
('ab58fe727860835eb38524f4f4ed8f1304942db1511b32d65b3adf8c7433798d62027893806549de', 11, 1, NULL, '[]', 0, '2021-03-11 11:25:03', '2021-03-11 11:25:03', '2021-03-12 16:55:03'),
('abbfd0314631ca1595722e83d064447160c0a24b1a9af8794da933f4414e76b1a182ae11dcb3b944', 1, 1, NULL, '[]', 0, '2021-07-19 12:26:45', '2021-07-19 12:26:45', '2022-07-19 17:56:44'),
('ac66b489695313d38ce4d0630363e9d1b768c6b0be0e680acb80be94f41877e34083559ab92301a3', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:19:44', '2021-04-16 10:19:44', '2022-04-16 15:49:44'),
('ac8530042aced3ba78876dcda981f089fd558277ef57404786a7030761588880cc14cbcd4dc317d5', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 12:50:56', '2021-04-22 12:50:56', '2022-04-22 18:20:56'),
('acab6687e2f11fff22a0885bb0eb57d7e0ecebfc42ab7095b5e59499f7e9dc6b9cdef032c0579cb9', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-26 07:06:45', '2021-04-26 07:06:45', '2022-04-26 12:36:45'),
('acdc35c3b7ec0aa8e9d39b8ad1c4664952840861c5fa910710db94576ee26496e88d25237eefcce4', 1, 1, NULL, '[]', 0, '2021-05-13 11:23:58', '2021-05-13 11:23:58', '2022-05-13 16:53:58'),
('adb5218d3848d2e2c6661986e3be88ec7d83c406db23253140e5ce6fcc1cb0eb6ded6d6d227b2233', 1, 1, NULL, '[]', 0, '2021-05-01 03:43:46', '2021-05-01 03:43:46', '2022-05-01 09:13:46'),
('ae10b2f4f078a6e777f03f488d202b06c31ba09c48441f3053f04cebbb0720306bc12f7f316b51d0', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 19:12:16', '2021-04-22 19:12:16', '2022-04-23 00:42:16'),
('af01b537d3d6c20f7a6976cc7897f6330bbcb51db7f9a32e12272b867efa6f6d8a6018f86cbb254c', 1, 1, NULL, '[]', 0, '2021-07-19 03:42:03', '2021-07-19 03:42:03', '2022-07-19 09:12:03'),
('af1f863555f6805db64deb3a38fab3409315d3597e4a3f50e4b21df5ee285d55966e1de860f2609d', 1, 1, NULL, '[]', 0, '2021-06-04 15:13:56', '2021-06-04 15:13:56', '2022-06-04 20:43:56'),
('af3eb0f87bfe3a43ffb5f4c9f0a04741fbd2cdaf77bff9eff1dd97b0e713d5252d247791c7eb4af1', 1, 1, NULL, '[]', 0, '2021-03-10 04:05:05', '2021-03-10 04:05:05', '2021-03-10 09:35:11'),
('afe46abce2478be72b67699824ca99774ab4e15801c0de0fcced9f924c8a37fb21fb3548aa2219c4', 1, 1, NULL, '[]', 0, '2021-05-27 22:50:05', '2021-05-27 22:50:05', '2022-05-28 04:20:05'),
('b00ac7a185b25d0019e36018700d7170baa3f471b8a55e5fd58ed6c05fda0b475f1ed5f7a5c1529e', 1, 1, NULL, '[]', 0, '2021-03-30 06:25:39', '2021-03-30 06:25:39', '2021-03-31 11:55:39'),
('b0c9bef374d3e9d4f259e1284e08eb2aea5cb213ef39dbb396df28902e24e1d4ba6a8868ead5e52f', 1, 1, NULL, '[]', 0, '2021-07-03 01:17:51', '2021-07-03 01:17:51', '2022-07-03 06:47:51'),
('b4791ad73c27c1466f2ff4cdc5e24e891bad7e63b62909e43f420c298a538398377a08225b30422a', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-27 10:09:53', '2021-04-27 10:09:53', '2022-04-27 15:39:52'),
('b4dd43ba116880c336f43a061288e04b03c89793d87610c899311e5d9c9b77a3c2aef32e5ba4ffa0', 1, 1, NULL, '[]', 0, '2021-06-14 23:46:25', '2021-06-14 23:46:25', '2022-06-15 05:16:25'),
('b5ab46ffda6441734d85f8e91031350a8157f8484166f6432bc6149abc5a4ebe317b24a0d7b35b45', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 10:08:14', '2021-04-22 10:08:14', '2022-04-22 15:38:14'),
('b693e376feb4588ffe57d1eb4bc4a83649176dc72ea764115f8cbfec75d4edf5d870743fe4de9dd2', 1, 1, NULL, '[]', 0, '2021-05-06 21:28:25', '2021-05-06 21:28:25', '2022-05-07 02:58:25'),
('b6e51fca14c3dad8eb99eaa144ff3aeec6f51ff5e3e8b01b5153010e798f368f238f8f9257b8b1fc', 1, 1, NULL, '[]', 0, '2021-06-04 12:17:24', '2021-06-04 12:17:24', '2022-06-04 17:47:24'),
('b71388484787d3e968b62ab9439173966bfa494ded39c6950929da4e1c856ca044705289402f2d2f', 1, 1, NULL, '[]', 0, '2021-05-06 21:24:11', '2021-05-06 21:24:11', '2022-05-07 02:54:11'),
('b77a47a620a58ab1a5d5c5aef4ba3f8593e15b1a6942030436d999f8ddc2bbac8cf8c28ee3fd9776', 1, 1, NULL, '[]', 0, '2021-05-28 04:46:45', '2021-05-28 04:46:45', '2022-05-28 10:16:45'),
('b925e9c974d486efb4828c2bdf8e36e314692db43397f1d52da8fe3204fabd7577593f4b3746f0df', 1, 1, NULL, '[]', 0, '2021-07-09 11:08:53', '2021-07-09 11:08:53', '2022-07-09 16:38:53'),
('b927c22c413f4a9de6138e0a2d2a082d3044beeae95a74d1d35873df0c3482ea0f76566d7e86ed77', 1, 1, NULL, '[]', 0, '2021-06-02 07:18:55', '2021-06-02 07:18:55', '2022-06-02 12:48:55'),
('b939c0868665b2eef20b3a04c972495dec2c577817a1e02fc8f5b4a1967f77c3e6aea52d2a942446', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-21 20:03:05', '2021-04-21 20:03:05', '2022-04-22 01:33:05'),
('b972e5e1a59cda6468d5e869b19fb6c69c4d54c877b97565b2bb97e96c136f4cd87004538db66cae', 1, 1, NULL, '[]', 0, '2021-05-20 04:06:47', '2021-05-20 04:06:47', '2022-05-20 09:36:47'),
('ba0674b13e43d5887ae0a405d17bfb61fc73e5c7f951f31f0aace6be655001e5ebf6ab1ebc894cae', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:36:24', '2021-04-16 10:36:24', '2022-04-16 16:06:23'),
('ba0b4323f2a6a932b924019219c2bb8eb4c6b825eee27d37670ce8c3987790df46620087641842b4', 1, 1, NULL, '[]', 0, '2021-06-16 04:00:05', '2021-06-16 04:00:05', '2022-06-16 09:30:04'),
('bae1b94ebe9de87a2c563ff14dbca404ca7db2a25dd5f0d141b7f39974f47079cd7337c5bbf765b7', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 09:32:35', '2021-04-22 09:32:35', '2022-04-22 15:02:35'),
('bb1763d84afea2c4200e686bf79d3cc45da078acf8830bf9b10e31c75ab481b47df492b5662e7f43', 1, 1, NULL, '[]', 0, '2021-04-13 07:46:39', '2021-04-13 07:46:39', '2021-04-14 13:16:39'),
('bb84a719052825f466403c49bac9a47b93f8a06b998d7ee7084cdfd1247a3f81cdc394e096c38be3', 1, 1, NULL, '[]', 0, '2021-04-08 12:05:35', '2021-04-08 12:05:35', '2021-04-09 17:35:35'),
('bba9b4a0f73a59a5baa4a5821e7189acdd86717c209dd58b5dfbb4f7c0c53e5b499711b9634fb100', 6, 1, NULL, '[]', 0, '2021-03-11 05:07:13', '2021-03-11 05:07:13', '2021-03-12 10:37:13'),
('bc332d9b5917a7bae3020245af63e7bf228b4655c89f36f939cb9f84dc7b315fe58868be035fe904', 1, 1, NULL, '[]', 0, '2021-04-29 09:46:36', '2021-04-29 09:46:36', '2022-04-29 15:16:36'),
('bd1c02e1e03d7433fb0b8feec797cd37726b7567bff7c747f4621b4fc1fe674b7265effd6d9679ed', 1, 1, NULL, '[]', 0, '2021-03-10 03:27:58', '2021-03-10 03:27:58', '2021-09-10 08:57:58'),
('be48719723090d6158d38ff4305832656eab26b75ab656e60a2423980f700d84f232f9d939ccbfa3', 1, 1, NULL, '[]', 0, '2021-04-29 09:28:46', '2021-04-29 09:28:46', '2022-04-29 14:58:46'),
('be6418f850e71bbf38b29767b952bfd473432ea2b526a96fa431ff678c150a7ad91e2b567cca6226', 3, 1, NULL, '[]', 0, '2021-03-10 11:32:57', '2021-03-10 11:32:57', '2021-03-11 17:02:57'),
('bf16741d7df89f4457f6b4bf9389085b04f376ac23f46009834da8be32f913bf3da6e2560d3f9c5b', 1, 1, NULL, '[]', 0, '2021-06-07 11:35:00', '2021-06-07 11:35:00', '2022-06-07 17:05:00'),
('bfa5c45721b826851d593e5606d04816caced1c4d528e674745a9f16da5deeac39eb80c628b5142b', 1, 1, NULL, '[]', 0, '2021-03-30 07:57:01', '2021-03-30 07:57:01', '2021-03-31 13:27:01'),
('bfb59fdd2225cf60093b2fed575ad44a4845b80d4c3a1efb994cd4d8a79928963451328a0a1196c6', 1, 1, NULL, '[]', 0, '2021-07-05 11:10:07', '2021-07-05 11:10:07', '2022-07-05 16:40:07'),
('bfb6fecc9b66d6e6e54013d7f7c40fd28c8a7b4338314e53da4a98bfd4ee5f51262d85a74003ae99', 1, 1, NULL, '[]', 0, '2021-03-10 04:32:42', '2021-03-10 04:32:42', '2021-03-11 10:02:42'),
('bfffbbd634f8acb224df7880a85802bccc50712fb7f47276d7e2649a17cb4f011cba3583f3381cce', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-22 10:10:16', '2021-04-22 10:10:16', '2022-04-22 15:40:15'),
('c0d9c7b5526742f31c1158ec1671a60fece0bcfbcea0a152b8b4ba95de086af527aa6185a22a169a', 1, 1, NULL, '[]', 0, '2021-07-02 11:42:36', '2021-07-02 11:42:36', '2022-07-02 17:12:36'),
('c14978e58392111dcde3ac82918e2a1fe2b5c8de9a2e6535b3e3406219a2cea8e667ebef5d6e21fb', 1, 1, NULL, '[]', 0, '2021-06-07 01:09:32', '2021-06-07 01:09:32', '2022-06-07 06:39:32'),
('c3a091463c19be84464e048e14ceb212f7c9a94090df755e6fd1638e7c6622a0841093fa686ec119', 1, 1, NULL, '[]', 0, '2021-03-15 05:28:10', '2021-03-15 05:28:10', '2021-03-16 10:58:10'),
('c3a3bc76f0d1b259635697293653fc77a1b5b2f33f583556ab09213220335769cbd9615677499b90', 1, 1, NULL, '[]', 0, '2021-03-11 12:40:42', '2021-03-11 12:40:42', '2021-03-12 18:10:42'),
('c3f25dc9df7475702ec9b0446aba8d8554e67425757f49818815a640ca0fb427730b8ca82fa0b7b3', 1, 1, NULL, '[]', 0, '2021-06-02 09:30:36', '2021-06-02 09:30:36', '2022-06-02 15:00:36'),
('c44db4f7a35baad0bf8251d69335e20ebf4ffef8acb29007e486df768cc256228e968d1939589cda', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-27 10:08:04', '2021-04-27 10:08:04', '2022-04-27 15:38:04'),
('c49e279d34577a09ea1c0116a02d7154349461daeb20d053c911359d381d51f9529a4c50353da35d', 7, 1, NULL, '[]', 0, '2021-03-11 10:58:51', '2021-03-11 10:58:51', '2021-03-12 16:28:51'),
('c4e10566397979fdafe57936a5f49e94295c0793bbd26e4564a621bd7ccd618f970740197243259b', 1, 1, NULL, '[]', 0, '2021-05-13 10:46:21', '2021-05-13 10:46:21', '2022-05-13 16:16:21'),
('c54bfcf742b55caf3f6376c522f945f65becc9aceddbe3c173fbcb2e7092a9e8b9f937163620cbcc', 1, 1, NULL, '[]', 0, '2021-06-16 05:33:30', '2021-06-16 05:33:30', '2022-06-16 11:03:30'),
('c56e648dc49cfbbaf74ff8fc2ac9df17b5b528a67b9b497d4b9a230c6868b0d2cc89ea4f3c3dac07', 1, 1, NULL, '[]', 0, '2021-06-06 13:58:41', '2021-06-06 13:58:41', '2022-06-06 19:28:41'),
('c5852b6c4cc3f2d29a782886a2df35234d899eec815a54e416eb4fafac1281727558b621001ce15d', 1, 1, NULL, '[]', 0, '2021-05-10 11:35:52', '2021-05-10 11:35:52', '2022-05-10 17:05:52'),
('c6778f377859f811a3eef783ca3dfa7849f2b5cde9bd8a3e4476af81cbc241a8b98bf2048aa635a2', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-21 00:30:04', '2021-04-21 00:30:04', '2022-04-21 06:00:04'),
('c6c7267b4bda69f029207ceae57d21a8b2d9b9ac6ee851c996a6763df351d6a44918b9c082225755', 1, 1, NULL, '[]', 0, '2021-07-02 08:52:55', '2021-07-02 08:52:55', '2022-07-02 14:22:55'),
('c7c87fa4ad43bdc8051f3b16f57d80c128a0fb2eab97ddd966c1e4e9746a77bf1634ecafd147b4bf', 1, 1, NULL, '[]', 0, '2021-06-23 07:47:46', '2021-06-23 07:47:46', '2022-06-23 13:17:46'),
('c7d138f3e0074db09e85eae1e0538c5e66f25615189a298908ccf87b4f4fc3e480f1275be2582be4', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-03-09 09:32:59', '2021-03-09 09:32:59', '2022-03-09 15:02:59'),
('c7e55c3fa626e64bef192d5356661a5a22fffd35aa3ae7fb1bc440c752f561aa0efddd92ed4ad14b', 1, 1, NULL, '[]', 0, '2021-06-05 13:55:17', '2021-06-05 13:55:17', '2022-06-05 19:25:16'),
('c81c9450d8f6f783040e5046580fb6fbdbb54dafd442bdb27479be9a1feecbc8aba81e6daf698b4f', 1, 1, NULL, '[]', 0, '2021-05-28 02:06:40', '2021-05-28 02:06:40', '2022-05-28 07:36:40'),
('c8784182d53365fcd6fa3bd58645dcf4305c0b15574a3b7a5762c15181f383b13b5d7c1d09f9f02f', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:50:38', '2021-04-16 10:50:38', '2022-04-16 16:20:38'),
('c983f3ad25f134a7f8e65d37de599e73f0c41874b92d0fb9a20452a62a415460d6429a92e90d8b3b', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 12:42:49', '2021-04-16 12:42:49', '2022-04-16 18:12:49'),
('c98d1dfe9eee78e2d9fe3fa0387739bbf617172c6e663a8203a51e6ccdc90515767673f0e9eb708f', 1, 1, NULL, '[]', 0, '2021-06-12 11:18:01', '2021-06-12 11:18:01', '2022-06-12 16:48:01'),
('c99bb06854e4186221982d421f85522a4e0ba4b402a5687932dd78889a0203ec8a96667ea6b3bdde', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 09:55:55', '2021-04-20 09:55:55', '2022-04-20 15:25:55'),
('ca7d781898f760d5ec4c898010f4b836db48b5ba0cc39462f89a60e771b118fb5f7e91e2fc7bc944', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-27 09:59:20', '2021-04-27 09:59:20', '2022-04-27 15:29:20'),
('cb8cdf6f532dd782114a4a19487bbcaeabb851f30d0fbe6d35a7b7b212ec26a8815a69e06c3d6714', 1, 1, NULL, '[]', 0, '2021-04-09 06:37:55', '2021-04-09 06:37:55', '2021-04-10 12:07:55'),
('ccd040e2241ae3284bd5676e49e160f7c9532abe2592d292d751b5b426b87df6080a74fa48a29541', 5, 1, NULL, '[]', 0, '2021-03-11 04:40:06', '2021-03-11 04:40:06', '2021-03-12 10:10:05'),
('cd34e39fd59eb0054877387c99f916502dbf3b911fe77f6634a7e92e26fd002f59f6ab815423131c', 16, 1, NULL, '[]', 0, '2021-03-12 06:58:10', '2021-03-12 06:58:10', '2021-03-13 12:28:10'),
('cd5a03da21e59b7a1c61e08ab81ec70769b337cbbaecbcd38bb50bd4c371a42d7581c50356ca3f24', 1, 1, NULL, '[]', 0, '2021-06-25 11:39:03', '2021-06-25 11:39:03', '2022-06-25 17:09:03'),
('cd6f8d1b5a1f4e63425833c6a433003ea2aa033876d8f1b0ba8b760c20c9e6a9f179117790ce91db', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 12:40:56', '2021-04-16 12:40:56', '2022-04-16 18:10:56'),
('ce10944b033f9e91af97ba7fc20d2f9d5d1b7592d546f5e3cdf051a77bf0b6a05df40c14eaad8031', 1, 1, NULL, '[]', 0, '2021-06-01 06:55:34', '2021-06-01 06:55:34', '2022-06-01 12:25:34'),
('cf35439c48e962738f24dff199cfb049073a9dc7e9d4a553aa8d17caa37145958cc6d283c7f20607', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:27:45', '2021-04-16 10:27:45', '2022-04-16 15:57:45'),
('cf44f671ae585d5250517ec6562e986e7bbfaf5549240a71bcce3784ac6fc17bde665017da6b03f7', 7, 1, NULL, '[]', 0, '2021-03-15 05:44:07', '2021-03-15 05:44:07', '2021-03-16 11:14:07'),
('cf8574e15886f5e89c76a866e576efd80dd54ab7b83ddcf53cfd1034b0bd09238e6f3ccbd962426a', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 12:30:12', '2021-04-16 12:30:12', '2022-04-16 18:00:12'),
('cfe638e8a7949b2675fbacba179b784f4f7dc06fb51ce865a18a2b420f69020830f322a880c557c6', 1, 1, NULL, '[]', 0, '2021-05-13 02:34:18', '2021-05-13 02:34:18', '2022-05-13 08:04:18'),
('d0013201c7a41522d9acbb074530487ac05cad5998011e25cbb571e4b76ba9798c43128b0f75c36e', 1, 1, NULL, '[]', 0, '2021-05-28 02:05:32', '2021-05-28 02:05:32', '2022-05-28 07:35:32'),
('d0986ae77889a301f6500e20e975371f7a6d657adb53e65e05198832ed7031e4b9deec9608ef92a4', 1, 1, NULL, '[]', 0, '2021-06-15 14:35:47', '2021-06-15 14:35:47', '2022-06-15 20:05:47'),
('d16bb29077d99278cec1ddaf03ee366fe0552e6258f14fac46cf0c7f5edc81e6cb4fab417d2a5184', 1, 1, NULL, '[]', 0, '2021-07-03 21:30:08', '2021-07-03 21:30:08', '2022-07-04 03:00:08'),
('d21bfad4de9a47e7db0700110390f9e6b73c2d1c647fd3c473ea07b4f7435e8260a0fe32892b74b6', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-03-09 09:44:15', '2021-03-09 09:44:15', '2022-03-09 15:14:15'),
('d2e2e1ad399e2bcba14b9946b1e3194bc351ce22c5733ccdf357d5ec1939636522d2ba50d026fd29', 5, 1, NULL, '[]', 0, '2021-03-11 05:27:14', '2021-03-11 05:27:14', '2021-03-12 10:57:14'),
('d32d75f2c5b016dc0d817ebc6af8ea865c89c793498d6c3ec4dd5f6ef1f4c2e08b7dac78ee0e6057', 1, 1, NULL, '[]', 0, '2021-05-05 03:48:40', '2021-05-05 03:48:40', '2022-05-05 09:18:40'),
('d4757b5f70ba44b86adc65621fbaee0176968ceefcb67b335045c2fb5a24fd551f7477153141e3b8', 1, 1, NULL, '[]', 0, '2021-06-25 10:55:00', '2021-06-25 10:55:00', '2022-06-25 16:25:00'),
('d5a5ba99af67713be791160816bcc6d3a71ddee72c47fe71c19f9f70aa33326ef07934ef8095e8a9', 1, 1, NULL, '[]', 0, '2021-06-18 11:26:37', '2021-06-18 11:26:37', '2022-06-18 16:56:37'),
('d68c89cc93faaff681503fdd5f6728f6c10f606d44b404f4f9decfd9a9bdcf21c64954452e13dfde', 1, 1, NULL, '[]', 0, '2021-06-06 08:47:20', '2021-06-06 08:47:20', '2022-06-06 14:17:20'),
('d70023800045fdefa688891d9741b2aa09d462e6bdfa32e1d706306d044eb7a87fe754beeb5397d1', 1, 1, NULL, '[]', 0, '2021-07-15 13:07:02', '2021-07-15 13:07:02', '2022-07-15 18:37:02'),
('d72ddd4fab84ae916b31787f189b8f098dfc953a2c78640aa3df614f4758b4b197c3ed2e8c85965b', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:19:20', '2021-04-16 10:19:20', '2022-04-16 15:49:20'),
('d7bcaface053bce70a40a684e80b3fa1a851756b2527b3be2a96ce0539ab77790903d49357cee24b', 1, 1, NULL, '[]', 0, '2021-05-29 07:28:40', '2021-05-29 07:28:40', '2022-05-29 12:58:40'),
('d81aa305844e974743b336d6a3e85f755c701a952bd6b0e6a762d3bbe418a9ca806ef176a8a377d6', 1, 1, NULL, '[]', 0, '2021-06-04 15:40:30', '2021-06-04 15:40:30', '2022-06-04 21:10:30'),
('d823a314b4ef25be0587177001217d6863c4b71c97e0eed30222387f31feb97beb6bf16414061433', 1, 1, NULL, '[]', 0, '2021-04-13 12:52:49', '2021-04-13 12:52:49', '2021-04-14 18:22:49'),
('d8e1538f6f2e3f24b1f478d52f9a64790b0f507700aee1a1c0dd59f0f99a46ca23434662dbd5bb72', 1, 1, NULL, '[]', 0, '2021-07-15 15:50:45', '2021-07-15 15:50:45', '2022-07-15 21:20:45'),
('da11d117289338b3cc4b7d41d474ca10aa13c9704e95e94cfd1da884b130168a28ae7f31ab76b0d6', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 11:47:52', '2021-04-16 11:47:52', '2022-04-16 17:17:52'),
('da2e58916c1869e653b8a165482a669f2be27005b97ea06a7ce636f853373549d7b0a19f41297fb1', 1, 1, NULL, '[]', 0, '2021-04-16 07:45:55', '2021-04-16 07:45:55', '2021-04-17 13:15:55'),
('db05ea4bca21fb112d7a2ef569df9eadaefc71b5b470440dbb4d3ebfe01d09e8dc12ed9b57db28c5', 1, 1, NULL, '[]', 0, '2021-04-28 23:34:47', '2021-04-28 23:34:47', '2022-04-29 05:04:47'),
('dbd4400524124602456cd77bc175dd960b4f063ba9bd938cf1c599fa158e34c5e63efbc19ae3e069', 1, 1, NULL, '[]', 0, '2021-07-09 05:18:44', '2021-07-09 05:18:44', '2022-07-09 10:48:44'),
('dbeee41f526313e84af89e2197a406a274f08f7c69e26bf3657b96ff89c4e04087a6cbaa9afc5164', 7, 1, NULL, '[]', 0, '2021-03-11 09:05:24', '2021-03-11 09:05:24', '2021-03-12 14:35:24'),
('dc1dce14533d7f057521e513a9386147d610ae4d5f3bfefdfd849c00a3060f73d27d4efa62582008', 1, 1, NULL, '[]', 0, '2021-07-09 06:08:19', '2021-07-09 06:08:19', '2022-07-09 11:38:19'),
('dc4860d6708d82052505dfe0b6b8678d407e4768f62b2287a2db5a0b9546e5b04bd7e24cdc446b3c', 1, 1, NULL, '[]', 0, '2021-06-22 12:31:33', '2021-06-22 12:31:33', '2022-06-22 18:01:33'),
('dc9cabbed21dfda3841f2f4539d657db70cd17fdf9221c01b231b0f24a4ff6561b6c2f0f78da7c07', 1, 1, NULL, '[]', 0, '2021-05-25 11:13:00', '2021-05-25 11:13:00', '2022-05-25 16:43:00'),
('dcac04ff69068419d7e9066db05edd3ad2074b4d24da947fe2e63258e90ea6b8b8150073368df910', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-20 22:41:25', '2021-04-20 22:41:25', '2022-04-21 04:11:25'),
('dcb15685f0c67f8cf8ed12e4040c3759b162c817545e5f884b95d2640cfcf3ee200454d69fbdfe44', 1, 1, NULL, '[]', 0, '2021-06-16 04:56:20', '2021-06-16 04:56:20', '2022-06-16 10:26:20'),
('ddb61739eade073604b58a4b1793e80f0c7a53c68ccf13ffc6983eab44279dbe6a5dd71f26c8fc8c', 1, 1, NULL, '[]', 0, '2021-07-16 07:45:19', '2021-07-16 07:45:19', '2022-07-16 13:15:19'),
('de0b4106cc9cc464910001d0de6e6139862e0b566177abf5ccda408dcf1649505b603856527343b2', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-03-09 11:26:20', '2021-03-09 11:26:20', '2021-09-09 16:56:20'),
('de2546f79b0f3e62334373b90f9c654c618684297e4ff46c47b3c93c712c8858b8c5e72ae09489a2', 1, 1, NULL, '[]', 0, '2021-06-29 11:06:44', '2021-06-29 11:06:44', '2022-06-29 16:36:44'),
('de9b85c690163853a0333da07678afe5661d8f580f4153262917cc96b63b141fb198f59eb8788582', 1, 1, NULL, '[]', 0, '2021-05-04 20:56:26', '2021-05-04 20:56:26', '2022-05-05 02:26:26'),
('def3a9745dfa7ff8f477924645507e2c183a3b337dc3f7551f447f939f9e533c42cd748ac3bef33b', 1, 1, NULL, '[]', 0, '2021-06-07 09:42:55', '2021-06-07 09:42:55', '2022-06-07 15:12:55'),
('e022f16a9d411ee06178ab156dc15621addda363ceb3ca17a9d9d22ea1c713325426b474d9b26dff', 1, 1, NULL, '[]', 0, '2021-05-13 02:32:37', '2021-05-13 02:32:37', '2022-05-13 08:02:37'),
('e09e420658cab9cb43c9cea3b48ad41df0a200ab438bb014f082ce1f5283a582368214d2e591f76e', 1, 1, NULL, '[]', 0, '2021-05-06 12:39:40', '2021-05-06 12:39:40', '2022-05-06 18:09:40'),
('e19734be932f2e97f827b958e3b3425918b35729da3fba24f3ae0923bfa01d3d2672649992919b08', 1, 1, NULL, '[]', 0, '2021-06-04 09:23:44', '2021-06-04 09:23:44', '2022-06-04 14:53:44'),
('e1a4376b667f84ad5deac7ac1b27c3220674b9b7c6236f94f5f7d8e53145096c1da61483367447ea', 1, 1, NULL, '[]', 0, '2021-05-13 10:47:53', '2021-05-13 10:47:53', '2022-05-13 16:17:53'),
('e22a88b4a69679eeff33c114d2d7c378ce9affebee20db132fecfc6f423007643f508a402c06e06b', 1, 1, NULL, '[]', 0, '2021-07-15 15:01:13', '2021-07-15 15:01:13', '2022-07-15 20:31:13'),
('e25dbc5f515460e54dd9ae56a8526f1cd326e40cd47db5acddd71c2f946fb2fe8a08773fb25f8b4d', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-23 07:55:26', '2021-04-23 07:55:26', '2022-04-23 13:25:26'),
('e27a4e3f18288f5682f4a24d34edc8094beea6bdeff7335e2c2a32a1c9339222ccf010953c9537e7', 1, 1, NULL, '[]', 0, '2021-05-19 09:12:41', '2021-05-19 09:12:41', '2022-05-19 14:42:41'),
('e29ba4105cfec4e209ccb0268f9b563ddd9d3cb1e3b982e9c03a16603f1f9f5e13c79feeb9b6a926', 1, 1, NULL, '[]', 0, '2021-07-16 02:21:02', '2021-07-16 02:21:02', '2022-07-16 07:51:02'),
('e34da9efc77848bc12a6092382a45e7fb8425f8447be66a9806f06e9f62f322b40c54146c0361ee4', 1, 1, NULL, '[]', 0, '2021-05-29 01:18:53', '2021-05-29 01:18:53', '2022-05-29 06:48:53'),
('e3916b250b8f006f754e20b58962cfa685165cb427dcdbecf21cbd87ba778f302903d9a6d6fc462a', 7, 1, NULL, '[]', 0, '2021-03-11 11:01:18', '2021-03-11 11:01:18', '2021-03-12 16:31:18'),
('e44ee1f229c1b529cefe8919ab4f9dfe93a3ce0687458e1bc50bc0c90af96a0862dac141f9eef16a', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-18 17:12:48', '2021-04-18 17:12:48', '2022-04-18 22:42:48'),
('e4a4ba359f0573640529bb3d51cc7c0ac5cd18bf5f1f5d10d6d2ab1167f07adcbe7cd0afd200c0db', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 11:31:39', '2021-04-16 11:31:39', '2022-04-16 17:01:39'),
('e518d960739373919115df079e65343c6244cfc0069a68b18e736a0e3a99d11614cc15205b925360', 1, 1, NULL, '[]', 0, '2021-05-20 04:55:18', '2021-05-20 04:55:18', '2022-05-20 10:25:18'),
('e59ce45b6d973a0d8309ad8d264896f8d334d654e89c1faf407acc777c5e9e1f19cb0706624db6b1', 1, 1, NULL, '[]', 0, '2021-05-05 06:11:44', '2021-05-05 06:11:44', '2022-05-05 11:41:43'),
('e5ac2dd21d9253ee7b22cd20cea3cd74dee5aac4437b380706297612f7bc775c3866de423bb1be5e', 1, 1, NULL, '[]', 0, '2021-03-10 03:32:34', '2021-03-10 03:32:34', '2021-09-10 09:02:34'),
('e5c8e8098ea05f6ac6cfc1851694e94fd202211ea9fdf3a735a1b3716d8cfbc403393c6ce118c717', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-03-09 09:02:28', '2021-03-09 09:02:28', '2022-03-09 14:32:28'),
('e65726d76d721fbfa21673d6cc0fc8b563fd6abe4ae634ceffc4e1aca7b4da2ac3e00acfee014fcb', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 10:27:36', '2021-04-16 10:27:36', '2022-04-16 15:57:36'),
('e68f21f662a27e2851f373819e1b8d6efdc875d990f1cab75c5261eccda645aa4f0bd28995adbcb0', 1, 1, NULL, '[]', 0, '2021-06-09 04:15:22', '2021-06-09 04:15:22', '2022-06-09 09:45:22'),
('e6946ff84d1f72efd673550f69b232ec0462ec13715136e44e2771cf6e8b88c41a2d1f2781858908', 1, 1, NULL, '[]', 0, '2021-07-13 08:39:21', '2021-07-13 08:39:21', '2022-07-13 14:09:21'),
('e69b8cbfb504f7168383f86edfd1cf5c60409401bea981c4dcbd6a40260cfc9896971af0ae39408b', 1, 1, NULL, '[]', 0, '2021-05-13 10:46:24', '2021-05-13 10:46:24', '2022-05-13 16:16:24'),
('e70b9cd28b32896b353774ff3975025b982c9ce471d9a6f0705d0d69e833a0b26cba9043217abdf7', 7, 1, NULL, '[]', 0, '2021-03-15 05:40:34', '2021-03-15 05:40:34', '2021-03-16 11:10:34'),
('e77e94aa13edb87adc78ec621fbfd0c2b0fb0e7e5265078a2359f1c93124a13f467e7abe7ae5eb1c', 1, 1, NULL, '[]', 0, '2021-03-10 04:04:47', '2021-03-10 04:04:47', '2021-03-10 09:34:53'),
('e7c6fa76a65d1315eb5d7dd3fc9b2f2f2c750404b56fbcf84fd4ad0ad84a1a025a1ae795de4cf534', 1, 1, NULL, '[]', 0, '2021-06-06 12:12:02', '2021-06-06 12:12:02', '2022-06-06 17:42:02'),
('e81f0f395635d83b38b33bf3b4b1cc1cbd732175fdb6f8a2b52fde06005426d149279be2a2da2b67', 1, 1, NULL, '[]', 0, '2021-03-11 05:08:14', '2021-03-11 05:08:14', '2021-03-12 10:38:14'),
('e837d04f9a8e4d34980e0654657b922a64c572fc0ca947be8139d434ed730a211cb08f2177fc4122', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-24 11:25:03', '2021-04-24 11:25:03', '2022-04-24 16:55:03'),
('e8505a9c5caa272aa5fa6042ce30a06638034e83633854e85cf4b4e29a28dd49fdd8ef154c6c6f3b', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-26 05:56:39', '2021-04-26 05:56:39', '2022-04-26 11:26:39'),
('e955cb81b6d759f3fc13331291567595b9cfb2aa2bfa4da8f36a71a5515987dd5043295de726b49e', 1, 1, NULL, '[]', 0, '2021-05-05 10:01:10', '2021-05-05 10:01:10', '2022-05-05 15:31:10'),
('e9dddd4ffad2eb3c9d06d1fb506b0e7a5911049fcc76d0ae8a03e5ab38ff8aa76ef7decf5ed4d6a8', 1, 1, NULL, '[]', 0, '2021-05-10 11:48:03', '2021-05-10 11:48:03', '2022-05-10 17:18:03'),
('e9f8fac170fc4d9f9c055cf9a8e4fdb8b558eab4ad3747e76a06f1a4e64221d48a9f4d3b89d46d8a', 7, 1, NULL, '[]', 0, '2021-03-15 04:58:40', '2021-03-15 04:58:40', '2021-03-16 10:28:40'),
('ea4b20ac3e7c9e222475d54d1a40bab64c3905d76fa632e386960a280b662a41be398b3861252dc5', 1, 1, NULL, '[]', 0, '2021-06-06 10:48:14', '2021-06-06 10:48:14', '2022-06-06 16:18:14'),
('eb1497a0aaca95be6e18c9c1bada66ccbd25b5fe25a202800db7aee2990dfaa34dcac482270ea110', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-26 07:00:22', '2021-04-26 07:00:22', '2022-04-26 12:30:22'),
('ec3d8133aef2a9d3644161ae8a487ed9ad448d76b02223fc372458433d74672e7c9e30ca39f13b10', 1, 1, NULL, '[]', 0, '2021-06-02 10:20:24', '2021-06-02 10:20:24', '2022-06-02 15:50:24'),
('ecae7120530c42bf2e65343297dc8d82b960f309f6e299c7f35acca30862fef7c407984d0a26f3ec', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-26 06:37:06', '2021-04-26 06:37:06', '2022-04-26 12:07:06'),
('eda9adb01d76894a189e633ad55e97bd494b79edaf5b85bf2f30f34bf94cff33e00697a2e2d9b88e', 1, 1, NULL, '[]', 0, '2021-07-13 08:41:05', '2021-07-13 08:41:05', '2022-07-13 14:11:04'),
('edc0f0b360743d16793ce84fb2048c56c05c7c17b2ba6de950709afe8ea2e2bde2b0e64ec5666ca7', 1, 1, NULL, '[]', 0, '2021-03-16 08:05:59', '2021-03-16 08:05:59', '2021-03-17 13:35:59'),
('edcabef845f73939943aa8f0bdfddf4083a3c4e2c40e3767f28029c6c62dd198c4b30e7cbc4a4234', 1, 1, NULL, '[]', 0, '2021-04-09 04:05:20', '2021-04-09 04:05:20', '2021-04-10 09:35:20'),
('edf6097e35e7742b9850d2985e9da1d25b44039725877db82c3111cdaacdf96c8245b75001febb51', 1, 1, NULL, '[]', 0, '2021-03-15 04:39:49', '2021-03-15 04:39:49', '2021-03-16 10:09:49'),
('efc2aafca8541e4fe6c3de7b52ea471547aa1f14c6e8e12454bc5da53d106a00dbd5708dcb060294', 1, 1, NULL, '[]', 0, '2021-04-08 12:43:19', '2021-04-08 12:43:19', '2021-04-09 18:13:19'),
('eff2b2803a47910e39567ef988945fd3ff7c019e317449a221bb0ca1ca58348bb18db3cb445037c1', 1, 1, NULL, '[]', 0, '2021-05-03 02:18:05', '2021-05-03 02:18:05', '2022-05-03 07:48:05'),
('f06cd871a5d14358515adb1bf7951f4ce09302d52b792389265456de11b8ed627f66c46e60fe63de', 1, 1, NULL, '[]', 0, '2021-05-10 11:33:43', '2021-05-10 11:33:43', '2022-05-10 17:03:43'),
('f0905ec7c58b13392f00a8613e612eee384cc22a900416141e977c93a095719b35ee835eb2cf8cb9', 1, 1, NULL, '[]', 0, '2021-07-19 07:24:14', '2021-07-19 07:24:14', '2022-07-19 12:54:14'),
('f0e62b27a084d514cb2afaaf7dc159a50ed32b6071c14b4c14389fbee09a22b6519c6da5d1311828', 1, 1, NULL, '[]', 0, '2021-04-14 07:04:13', '2021-04-14 07:04:13', '2021-04-15 12:34:13'),
('f0ea47ce4dbce8384bac4601d24df67729e601df91d7376b081db6b0ce0a99064c327af6e7ce51e9', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-23 12:46:49', '2021-04-23 12:46:49', '2022-04-23 18:16:49'),
('f16a1e21f1727f5f98f9bd7fde1ca2d3c6e1f17c6084b6b12feb8976d25b4a64b7135848f3fcf650', 1, 1, NULL, '[]', 0, '2021-04-13 04:30:58', '2021-04-13 04:30:58', '2021-04-14 10:00:58'),
('f2aa1e8d870e37359d9bd920270d77338db8627237318821ed52ab72321feb2245a8d087747734d5', 1, 1, NULL, '[]', 0, '2021-04-14 05:27:03', '2021-04-14 05:27:03', '2021-04-15 10:57:03'),
('f2c41cb947dffc6bde0e05496fb35493da5906bd9d4e2316410bbb9e2dcd267f3f448f053a1b86e0', 7, 1, NULL, '[]', 0, '2021-03-15 05:56:03', '2021-03-15 05:56:03', '2021-03-16 11:26:03'),
('f32a56fa34fe699beed1c5bd1f4dc3f1527ca230f88b8ae27b459bbe0d41cf5476f86901a0498cac', 1, 1, NULL, '[]', 0, '2021-03-30 07:56:22', '2021-03-30 07:56:22', '2021-03-31 13:26:22'),
('f37ca8a7f7827afe85f34c8cba54b7e156a1b07db60d0b7b8bb4dd3d086e698cb679116c86ad954d', 1, 1, NULL, '[]', 0, '2021-05-10 11:34:51', '2021-05-10 11:34:51', '2022-05-10 17:04:51'),
('f3c8e7d4c3fb520c8fc1dab9b31d6d532fe078d0769637a106a894cddc51286b79d9770b7754715e', 5, 1, NULL, '[]', 0, '2021-03-11 04:40:35', '2021-03-11 04:40:35', '2021-03-12 10:10:35'),
('f3ca0e54b189705a7c3e0ce63160b90a1b745b0793507435c19f7d221fb0aa6d1ce81e4d61c66662', 7, 1, NULL, '[]', 0, '2021-03-15 05:54:51', '2021-03-15 05:54:51', '2021-03-16 11:24:51'),
('f411603e65f0ddf4bcc2ad5e0fdec81d5bfbefa8489efa35d8357a651c20b70185dca18383849c4c', 1, 1, NULL, '[]', 0, '2021-06-16 05:28:37', '2021-06-16 05:28:37', '2022-06-16 10:58:37'),
('f41e99911a7fb7cf7d2d37bd1438995d7bf739e0060fac05bf870508eed4cbb14a61abf451a27500', 1, 1, NULL, '[]', 0, '2021-06-05 11:52:48', '2021-06-05 11:52:48', '2022-06-05 17:22:48'),
('f546c1dffd7ce4f3151a1d7dc6d1406202c3693ae4dd2e5c9bcd53b362e051f7bd8770661138077e', 1, 1, NULL, '[]', 0, '2021-04-29 01:54:49', '2021-04-29 01:54:49', '2022-04-29 07:24:48'),
('f5b465e965ccd116b2b11904f9b80bf74d47bc0f9e2da3418e1439c60c6e5387ede1bb7ac39f0318', 1, 1, NULL, '[]', 0, '2021-05-31 08:00:47', '2021-05-31 08:00:47', '2022-05-31 13:30:47'),
('f5df3f7ebe1b146d340ddd368a27f7d60c2253f1e5f5b4cf260f943d10dbbba5aa339da4c9c39c9f', 7, 1, NULL, '[]', 0, '2021-03-11 11:01:44', '2021-03-11 11:01:44', '2021-03-12 16:31:44'),
('f649867127b2f9ea95806273d76a89f6492f32bf9129c5f2ba546c20fa0b0dd66f49a2048c8b0b93', 1, 1, NULL, '[]', 0, '2021-05-29 01:14:45', '2021-05-29 01:14:45', '2022-05-29 06:44:45'),
('f6cf522d95e9cebde19a97cac04a4e1e01d7d1728cb22acddc771b3c54a7123ef9423d6bd55972cd', 1, 1, NULL, '[]', 0, '2021-04-28 23:06:38', '2021-04-28 23:06:38', '2022-04-29 04:36:37'),
('f6d1f88dd28d5e1df9e6fb055284760216a1b189e4932e13ff9cd7ae6551dac71cd8f9f2112566cf', 1, 1, NULL, '[]', 0, '2021-04-28 23:06:47', '2021-04-28 23:06:47', '2022-04-29 04:36:47'),
('f828ab7e72b32addb7bb2c207a1a0092b6d035e1b2199e078edf0fa043d33f832c444227fbf8a3ae', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-19 08:25:54', '2021-04-19 08:25:54', '2022-04-19 13:55:54'),
('f85a84a13132431a1def20acb5bcb69e7e602667e89f203d22c47caff49a85506dc3b43990075417', 9, 1, NULL, '[]', 0, '2021-03-11 11:04:00', '2021-03-11 11:04:00', '2021-03-12 16:34:00'),
('f893812906b4d26d68998d0d6ca1d7ce8fb7bdc57db98b6739b5d1a55fc076773d948944b495dc1a', 5, 1, NULL, '[]', 0, '2021-03-11 05:30:35', '2021-03-11 05:30:35', '2021-03-12 11:00:35'),
('f8b8fd63861f26f4da5fadeb652bc577a2277560e8db3a413b8f2d56e0c85fe0a2590f8dd0cb091d', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-18 10:03:29', '2021-04-18 10:03:29', '2022-04-18 15:33:29'),
('f8cadd0202db56a494857b1b425ebb565b3aa0cf9f8148a3200cd017b0983d847c2d5914be237a39', 15, 1, NULL, '[]', 0, '2021-03-12 06:57:53', '2021-03-12 06:57:53', '2021-03-13 12:27:53'),
('f8fe8d9a71bb6201b4567a499819bcb6221352cf445a9c2ece08fc85b32388b5796ffccecada68c0', 1, 1, NULL, '[]', 0, '2021-05-30 10:17:36', '2021-05-30 10:17:36', '2022-05-30 15:47:36'),
('f9c6ccce8164364ed2b79008f41316513799598e5dc9dc06763d3d66b70c7379833cefa53be89fe5', 1, 1, NULL, '[]', 0, '2021-03-26 06:19:35', '2021-03-26 06:19:35', '2021-03-27 11:49:34'),
('fa317d3a3b3d02dafca99ce0cacab932a048d3699690b4499cb6b5f0fd42c6f326629ae5038d5530', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-21 12:04:18', '2021-04-21 12:04:18', '2022-04-21 17:34:18'),
('fac86b1af1373696c1473550d769583476a208acbd9704f607fa2b4cfaf8b3cb0e1ecf30c3fabbb9', 1, 1, NULL, '[]', 0, '2021-04-16 07:56:43', '2021-04-16 07:56:43', '2021-04-17 13:26:43'),
('fb52dbcf77769d1526189215a7a7e42458152c935f304c1d8c95f948e8296bc711b2e47f9d7d59bd', 1, 1, NULL, '[]', 0, '2021-04-28 13:03:36', '2021-04-28 13:03:36', '2022-04-28 18:33:36'),
('fb69c427427b8e1fd63454e563eb7d6e7872a246b4ed2a7812e92cb2d0e7a3d7baa118aba426b618', 1, 1, NULL, '[]', 0, '2021-06-15 05:20:32', '2021-06-15 05:20:32', '2022-06-15 10:50:32'),
('fc7afb1a2187dab6c2f1bedbb014dd54befe8ddd7e13b255284e30bea5d0ec727de208193182c38b', 1, 1, NULL, '[]', 0, '2021-05-25 10:52:25', '2021-05-25 10:52:25', '2022-05-25 16:22:25'),
('fcae4089d52d65182daaf33f236d902b0cf80d5ea1e2a8cad2de38504fbc8fcd5a9143a907cc1471', 1, 1, 'wndo34n8ujfnms', '[]', 0, '2021-04-16 11:12:16', '2021-04-16 11:12:16', '2022-04-16 16:42:16'),
('fd1b2a2b2cbdf014ba03b245d13c52af6c33d04ca1ee6b545b3e0afb76960af95c67a6a732ed2319', 1, 1, NULL, '[]', 0, '2021-06-06 02:23:41', '2021-06-06 02:23:41', '2022-06-06 07:53:41'),
('fd26b28f2b491452374f1616ff1913be65842dd40841ea56886d7f9cbe9a3ae2e264c339074d5f16', 1, 1, NULL, '[]', 0, '2021-06-07 07:37:51', '2021-06-07 07:37:51', '2022-06-07 13:07:51'),
('fd52b468be2e02b0e4c7a10edfde0ac4beb6c01bc2b1501e831947f83caf2d6c033831f774a6ea6c', 1, 1, NULL, '[]', 0, '2021-07-01 11:41:41', '2021-07-01 11:41:41', '2022-07-01 17:11:41'),
('fe6b5d766ab0bfbbc69070e2030c290491120e2df7ca2432733aa10482aac4e95b620f057f2365f0', 1, 1, NULL, '[]', 0, '2021-04-14 08:34:38', '2021-04-14 08:34:38', '2021-04-15 14:04:38'),
('ff2817c70a52bf43f735f0d40d9efcf0ab8ee8ee692750319cc15ac8281e4bf328afcbee0d3e23dd', 1, 1, NULL, '[]', 0, '2021-05-01 06:19:13', '2021-05-01 06:19:13', '2022-05-01 11:49:13'),
('ff586065664da5b5ed2c76c0bdfa1cb1689775fe1c51a3f2233f85a79ef0ba0a770bcb0259db153d', 1, 1, NULL, '[]', 0, '2021-05-17 04:55:55', '2021-05-17 04:55:55', '2022-05-17 10:25:55'),
('ffd2a25d727b9033d480da5d932bf30772616d8118e7c54b38543ed784ea3728dad94f17d3fd2251', 1, 1, NULL, '[]', 0, '2021-04-09 11:02:03', '2021-04-09 11:02:03', '2021-04-10 16:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '1qyFvxoq6A9kKpzwTGPV8JXbVxpH3DyyZj17a8fB', NULL, 'http://localhost', 1, 0, 0, '2021-03-09 08:41:49', '2021-03-09 08:41:49'),
(2, NULL, 'Laravel Password Grant Client', 'oylsV4ETmA5hKLXGMFbtuuzodMuWsGd16xODH6C0', 'users', 'http://localhost', 0, 1, 0, '2021-03-09 08:41:49', '2021-03-09 08:41:49'),
(3, 7, 'weqweq', '0RE7ocJg62edC3PVTTeNZDeiztTkZrgka7RoTQJS', NULL, 'http://182.74.129.3:8076/api/hoofs', 0, 0, 0, '2021-03-12 06:48:36', '2021-03-12 06:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-09 08:41:49', '2021-03-09 08:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ht_action`
--
ALTER TABLE `ht_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_comment_template`
--
ALTER TABLE `ht_comment_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ht_farm`
--
ALTER TABLE `ht_farm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farms_created_by_foreign` (`created_by`);

--
-- Indexes for table `ht_info`
--
ALTER TABLE `ht_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_invoice`
--
ALTER TABLE `ht_invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `ht_invoice_item`
--
ALTER TABLE `ht_invoice_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `ht_lesion`
--
ALTER TABLE `ht_lesion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_session`
--
ALTER TABLE `ht_session`
  ADD KEY `farm_id` (`farm_id`);

--
-- Indexes for table `ht_setting`
--
ALTER TABLE `ht_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_treatment`
--
ALTER TABLE `ht_treatment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ht_user`
--
ALTER TABLE `ht_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ht_action`
--
ALTER TABLE `ht_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ht_comment_template`
--
ALTER TABLE `ht_comment_template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ht_farm`
--
ALTER TABLE `ht_farm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ht_info`
--
ALTER TABLE `ht_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ht_invoice`
--
ALTER TABLE `ht_invoice`
  MODIFY `invoice_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ht_invoice_item`
--
ALTER TABLE `ht_invoice_item`
  MODIFY `item_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ht_lesion`
--
ALTER TABLE `ht_lesion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ht_setting`
--
ALTER TABLE `ht_setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ht_treatment`
--
ALTER TABLE `ht_treatment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `ht_user`
--
ALTER TABLE `ht_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ht_comment_template`
--
ALTER TABLE `ht_comment_template`
  ADD CONSTRAINT `ht_comment_template_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `ht_user` (`id`);

--
-- Constraints for table `ht_farm`
--
ALTER TABLE `ht_farm`
  ADD CONSTRAINT `farms_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `ht_user` (`id`);

--
-- Constraints for table `ht_session`
--
ALTER TABLE `ht_session`
  ADD CONSTRAINT `ht_session_ibfk_1` FOREIGN KEY (`farm_id`) REFERENCES `ht_farm` (`id`);
--
-- Database: `invoice_system`
--
CREATE DATABASE IF NOT EXISTS `invoice_system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `invoice_system`;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `batch_no` varchar(50) NOT NULL,
  `payment_type` int(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch_no`, `payment_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'B0001', 1, 1, '2020-09-05 06:14:14', '2020-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `batch_invoice`
--

CREATE TABLE `batch_invoice` (
  `id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `balance_amount` decimal(10,2) NOT NULL,
  `amount_to_be_paid` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `batch_invoice`
--

INSERT INTO `batch_invoice` (`id`, `batch_id`, `invoice_id`, `balance_amount`, `amount_to_be_paid`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '10.00', '10.00', 1, '2020-09-05 06:14:14', '2020-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Supplier', 'Supplier', 1, '2020-06-03 07:47:53', '2020-06-03 07:47:53'),
(2, 'Consultant', 'Consultant', 1, '2020-06-03 07:48:10', '2020-06-03 07:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `cgvak_departmentmaster`
--

CREATE TABLE `cgvak_departmentmaster` (
  `DepartmentICode` int(10) UNSIGNED NOT NULL,
  `DepartmentName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_tamil` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgvak_departmentmaster`
--

INSERT INTO `cgvak_departmentmaster` (`DepartmentICode`, `DepartmentName`, `name_tamil`, `description`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'HR', 'எச்.ஆர்', 'HR', 1, '2020-06-06 00:45:01', '2020-06-06 00:45:01'),
(2, 'Technical', 'தொழில்நுட்பம்', 'Technical', 1, '2020-06-05 23:07:55', '2020-06-05 23:07:55'),
(3, 'Accounts', 'கணக்குகள்', 'Accounts', 1, '2020-06-06 00:44:42', '2020-06-06 00:44:42'),
(13, 'Testing', 'கணக்குகள்', 'Testing', 1, '2020-06-06 00:44:42', '2020-06-06 00:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `cgvak_employeemaster`
--

CREATE TABLE `cgvak_employeemaster` (
  `id` int(11) NOT NULL,
  `EmployeeICode` int(11) NOT NULL,
  `LoginUserName` varchar(100) NOT NULL,
  `LoginPassword` varchar(100) NOT NULL,
  `IsActive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cgvak_employeemaster`
--

INSERT INTO `cgvak_employeemaster` (`id`, `EmployeeICode`, `LoginUserName`, `LoginPassword`, `IsActive`) VALUES
(1, 1, 'test', 'test', 1),
(2, 2, 'testUser', 'testUser', 1),
(3, 3, 'newUser', 'newUser', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gen_image_ids`
--

CREATE TABLE `gen_image_ids` (
  `id` int(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gen_image_ids`
--

INSERT INTO `gen_image_ids` (`id`, `name`, `status`) VALUES
(1, 'I0A00001\n', NULL),
(2, 'I0A00002\n', NULL),
(3, 'I0A00003\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `file_type` varchar(30) NOT NULL,
  `path` varchar(200) NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `file_type`, `path`, `department_id`, `status`, `created_at`, `updated_at`) VALUES
(30, 'I0A00018.jpg', 'jpg', 'E:PHP SITESpayment_approval_systempublicimages/invoices/it recruitment', 13, 1, '2020-12-08 01:23:56', '2020-12-08 06:53:56'),
(31, 'I0A00001.jpg', 'jpg', '/opt/lampp/htdocs/invoice_system/public/images/invoices/hr', 1, 1, '2021-05-08 02:44:53', '2021-05-08 08:14:53'),
(32, 'I0A00002.jpg', 'jpg', '/opt/lampp/htdocs/invoice_system/public/images/invoices/hr', 1, 1, '2021-05-08 03:19:49', '2021-05-08 08:49:49'),
(33, 'I0A00003.jpg', 'jpg', '/opt/lampp/htdocs/invoice_system/public/images/invoices/hr', 1, 1, '2021-05-08 03:26:05', '2021-05-08 08:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `invoiceotp`
--

CREATE TABLE `invoiceotp` (
  `otp` varchar(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoiceotp`
--

INSERT INTO `invoiceotp` (`otp`, `created_at`) VALUES
('9999', '2020-08-20 10:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `invoice_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `department_id` int(10) NOT NULL,
  `invoice_category_id` int(10) UNSIGNED NOT NULL,
  `invoice_status` tinyint(4) NOT NULL,
  `invoice_amount` decimal(10,2) DEFAULT 0.00,
  `is_tds_applicable` tinyint(4) DEFAULT NULL,
  `tds_id` int(11) DEFAULT NULL,
  `tds_amount` decimal(10,2) DEFAULT NULL,
  `to_be_paid` decimal(10,2) DEFAULT NULL,
  `advance_amount` decimal(10,2) DEFAULT 0.00,
  `balance_amount` decimal(10,2) DEFAULT 0.00,
  `payment_type` int(1) NOT NULL,
  `payment_paid` decimal(10,2) NOT NULL,
  `paid` int(2) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `supplier_id`, `invoice_no`, `date`, `department_id`, `invoice_category_id`, `invoice_status`, `invoice_amount`, `is_tds_applicable`, `tds_id`, `tds_amount`, `to_be_paid`, `advance_amount`, `balance_amount`, `payment_type`, `payment_paid`, `paid`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'I0001', '2020-09-05', 1, 1, 1, '100.00', NULL, NULL, NULL, NULL, '80.00', '10.00', 1, '90.00', NULL, 1, 1, '2020-09-05 06:10:06', '2020-09-05 06:14:14'),
(2, 1, 'I0002', '2021-05-08', 1, 1, 0, '100.00', 1, 3, '10.00', NULL, '5.00', '85.00', 1, '5.00', NULL, 1, 1, '2021-05-08 02:45:42', '2021-05-08 02:45:42'),
(3, 1, 'I0003', '2021-05-08', 1, 1, 0, '300.00', 1, 3, '30.00', NULL, '50.00', '220.00', 1, '50.00', NULL, 1, 1, '2021-05-08 03:23:11', '2021-05-08 03:23:11'),
(4, 1, 'I0004', '2021-05-08', 1, 1, 0, '5000.00', 1, 3, '500.00', '4500.00', '50.00', '4450.00', 1, '50.00', NULL, 1, 1, '2021-05-08 03:31:15', '2021-05-08 03:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_category`
--

CREATE TABLE `invoice_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_tamil` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `department_id` int(2) DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_category`
--

INSERT INTO `invoice_category` (`id`, `name`, `name_tamil`, `parent`, `department_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test', NULL, NULL, 1, NULL, 1, '2020-09-05 05:21:22', '2020-09-05 05:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_comments`
--

CREATE TABLE `invoice_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `comments` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_by` int(11) NOT NULL,
  `send_to` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_comments`
--

INSERT INTO `invoice_comments` (`id`, `invoice_id`, `comments`, `assigned_by`, `send_to`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'test', 1, 2, 1, '2021-05-08 02:45:42', '2021-05-08 02:45:42'),
(2, 3, 'comment', 1, 3, 1, '2021-05-08 03:23:11', '2021-05-08 03:23:11'),
(3, 4, 'test', 1, 3, 1, '2021-05-08 03:31:15', '2021-05-08 03:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_images`
--

CREATE TABLE `invoice_images` (
  `id` int(11) NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `image_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `invoice_images`
--

INSERT INTO `invoice_images` (`id`, `invoice_id`, `image_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 31, 1, '2021-05-08 02:45:42', '2021-05-08 08:15:42'),
(2, 3, 32, 1, '2021-05-08 03:23:11', '2021-05-08 08:53:11'),
(3, 4, 33, 1, '2021-05-08 03:31:15', '2021-05-08 09:01:15');

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
(1, '2020_06_02_130235_create_category_table', 1),
(2, '2020_06_02_130236_create_supplier_table', 1),
(3, '2020_06_02_130254_create_invoice_category_table', 1),
(4, '2020_06_02_130255_create_invoice_table', 1),
(5, '2020_06_02_130256_create_invoice_comment_table', 1),
(6, '2020_06_02_130350_create_invoice_images_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `contact_name`, `email`, `phone`, `address`, `category_id`, `status`, `created_at`, `updated_at`, `IsActive`) VALUES
(1, 'test', 'test', 'test@test.com', '123123123', 'test', 1, 1, '2020-09-05 05:21:51', '2020-09-05 05:21:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tds`
--

CREATE TABLE `tds` (
  `id` int(11) NOT NULL,
  `percentage` int(10) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tds`
--

INSERT INTO `tds` (`id`, `percentage`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 10, 'Sample', 1, '2021-05-07 18:48:15', '2021-05-07 18:48:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch_invoice`
--
ALTER TABLE `batch_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batch_id` (`batch_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgvak_departmentmaster`
--
ALTER TABLE `cgvak_departmentmaster`
  ADD PRIMARY KEY (`DepartmentICode`);

--
-- Indexes for table `cgvak_employeemaster`
--
ALTER TABLE `cgvak_employeemaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gen_image_ids`
--
ALTER TABLE `gen_image_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_supplier_id_foreign` (`supplier_id`),
  ADD KEY `invoices_invoice_category_id_foreign` (`invoice_category_id`);

--
-- Indexes for table `invoice_category`
--
ALTER TABLE `invoice_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_comments`
--
ALTER TABLE `invoice_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_comments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `invoice_images`
--
ALTER TABLE `invoice_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_category_id_foreign` (`category_id`);

--
-- Indexes for table `tds`
--
ALTER TABLE `tds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `batch_invoice`
--
ALTER TABLE `batch_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cgvak_employeemaster`
--
ALTER TABLE `cgvak_employeemaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gen_image_ids`
--
ALTER TABLE `gen_image_ids`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice_category`
--
ALTER TABLE `invoice_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_comments`
--
ALTER TABLE `invoice_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_images`
--
ALTER TABLE `invoice_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tds`
--
ALTER TABLE `tds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batch_invoice`
--
ALTER TABLE `batch_invoice`
  ADD CONSTRAINT `batch_invoice_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`id`),
  ADD CONSTRAINT `batch_invoice_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `cgvak_departmentmaster` (`DepartmentICode`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_invoice_category_id_foreign` FOREIGN KEY (`invoice_category_id`) REFERENCES `invoice_category` (`id`),
  ADD CONSTRAINT `invoices_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `invoice_comments`
--
ALTER TABLE `invoice_comments`
  ADD CONSTRAINT `invoice_comments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

--
-- Constraints for table `invoice_images`
--
ALTER TABLE `invoice_images`
  ADD CONSTRAINT `invoice_images_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `invoice_images_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
--
-- Database: `peo`
--
CREATE DATABASE IF NOT EXISTS `peo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `peo`;

-- --------------------------------------------------------

--
-- Table structure for table `peo_broker`
--

CREATE TABLE `peo_broker` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `contact_name` varchar(100) DEFAULT NULL,
  `address_1` text DEFAULT NULL,
  `address_2` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city2` varchar(50) DEFAULT NULL,
  `state2` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) NOT NULL,
  `zipcode2` varchar(22) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `eligibility_start_date` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `file_name` varchar(50) DEFAULT NULL,
  `is_deleted` int(11) NOT NULL,
  `is_disabled` int(11) DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peo_broker`
--

INSERT INTO `peo_broker` (`id`, `name`, `code`, `contact_name`, `address_1`, `address_2`, `city`, `state`, `city2`, `state2`, `zipcode`, `zipcode2`, `phone`, `eligibility_start_date`, `email`, `logo`, `file_name`, `is_deleted`, `is_disabled`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(1, 'paul', '123456', NULL, NULL, '871/4 thomayar street pannur', 'tiruvallur', 'Tamil Nadu', NULL, NULL, '602108', NULL, '08838521291', '2021-04-03', 'shanpaulspr@gmail.com', '/broker/logo/1/thunderbird_7.png', NULL, 1, 0, 1, '2021-04-03 03:30:27', NULL, NULL),
(2, 'shan', '123456', 'dsdsd', '', '8712/4 thomayar street pannur', 'tiruvallurr', 'test2', 'test2', 'test2', '602108', '602106', '088385212913', '2021-04-05', 'shanpaulspr@gmail.com', '/broker/logo/1/tvwallmount_4.png', 'TESTDATA_17.csv', 0, 0, 1, '2021-04-05 07:49:05', 1, '2021-04-05 08:10:05'),
(3, 'paul', '123456', NULL, NULL, '871/4 thomayar street pannur', 'tiruvallur', 'Tamil Nadu', NULL, NULL, '602108', NULL, '08838521291', '2021-04-03', 'shanpaulspr@gmail.com', '/broker/logo/1/thunderbird_9.png', 'TESTDATA_30.xls', 0, 0, 1, '2021-04-03 03:33:08', NULL, NULL),
(13, 'shan new', '', 'shan', NULL, '871/4 thomayar street pannur', 'tiruvallur', 'Tamil Nadu', 'Kanchipuram', 'Tamil Nadu', '602108', '602108', '08838521291', '2021-04-07', 'shan@gmai.com', '/broker/logo/1/Screenshot from 2021-04-06 22-29-43_1.png', 'TESTDATA_20.csv', 0, 0, 1, '2021-04-07 06:13:38', NULL, NULL),
(15, 'shan', '123456', 'dsdsd', NULL, '8712/4 thomayar street pannur', 'tiruvallurr', 'test2', 'test2', 'test2', '602108', '602106', '088385212913', '2021-04-07', 'shanpaulspr@gmail.com', NULL, 'TESTDATA_1.xls', 0, 0, 1, '2021-04-07 11:36:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peo_cms`
--

CREATE TABLE `peo_cms` (
  `id` int(20) NOT NULL,
  `name` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `page_content` text DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_disabled` int(10) NOT NULL DEFAULT 0,
  `created_by` bigint(20) NOT NULL DEFAULT 1,
  `created_time` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peo_cms`
--

INSERT INTO `peo_cms` (`id`, `name`, `url`, `meta_keyword`, `meta_description`, `page_content`, `is_deleted`, `is_disabled`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(2, 'Test', 'Www.google.com', 'Test', 'Test', 'Test', 0, 0, 1, '0000-00-00 00:00:00', NULL, NULL),
(3, 'Test1 ', 'Test1 ', 'Test1 ', 'Test1 ', 'Test1 ', 0, 0, 1, '0000-00-00 00:00:00', NULL, NULL),
(4, 'Test2a', 'Test2a', 'Test2a', 'Test2a', 'Test2a', 1, 0, 1, '0000-00-00 00:00:00', NULL, NULL),
(5, 'Test3', 'Test3', 'Test3', 'Test3', 'Test3', 1, 0, 1, '0000-00-00 00:00:00', NULL, NULL),
(6, 'Lewis Guy', 'In Et Itaque Iste Rerum', 'Et Perspiciatis Commodo Fugiat Repellendus Quis Rerum Sapiente', 'Dolores Iste Non Nisi Quidem Nulla Eum Nam Do', 'Cumque Molestias Facilis Voluptate Esse Alias Dicta Dolor', 1, 0, 1, '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peo_employer`
--

CREATE TABLE `peo_employer` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `identification_number` varchar(100) NOT NULL,
  `pay_type` int(10) NOT NULL,
  `pay_frequency` int(10) NOT NULL,
  `address` varchar(300) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `vehicle_rate_template` int(200) NOT NULL,
  `bill_address` varchar(300) DEFAULT NULL,
  `bill_zipcode` varchar(50) DEFAULT NULL,
  `bill_city` varchar(100) DEFAULT NULL,
  `bill_state` varchar(100) DEFAULT NULL,
  `enrollment_start_date` datetime DEFAULT NULL,
  `enrollment_end_date` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `eligibility_start_date` datetime DEFAULT NULL,
  `contact_name` varchar(100) DEFAULT NULL,
  `bill_broker` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `file_name` text DEFAULT NULL,
  `color` text DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_disabled` int(10) DEFAULT 0,
  `created_by` bigint(20) NOT NULL DEFAULT 1,
  `created_time` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peo_employer`
--

INSERT INTO `peo_employer` (`id`, `name`, `code`, `identification_number`, `pay_type`, `pay_frequency`, `address`, `city`, `state`, `zipcode`, `phone`, `vehicle_rate_template`, `bill_address`, `bill_zipcode`, `bill_city`, `bill_state`, `enrollment_start_date`, `enrollment_end_date`, `email`, `eligibility_start_date`, `contact_name`, `bill_broker`, `logo`, `file_name`, `color`, `is_deleted`, `is_disabled`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(1, 'Heidi Camacho', '123456', '714', 0, 0, 'ut repudiandae aut architecto quis pariatur deleniti similique autem quaerat quae est irure facilis odio et et ipsa veniam q', 'facilis explicabo u', 'aspernatur accusanti', '99038', '+1 (406) 361-6392', 1, 'quo asperiores asperiores aperiam praesentium ratione fuga id ipsam cum ex beatae commodo at qui quis harum laborum maiores', '88004', 'est eaque eligendi e', 'ut ut pariatur volu', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'cyzixo@mailinator.com', '0000-00-00 00:00:00', 'waxedinixy@mailinator.com', 'nihil libero est et ', NULL, NULL, '', 0, 0, 1, '0000-00-00 00:00:00', NULL, NULL),
(9, 'Heidi Camacho', '123456', '714', 0, 0, 'ut repudiandae aut architecto quis pariatur deleniti similique autem quaerat quae est irure facilis odio et et ipsa veniam q', 'facilis explicabo u', 'aspernatur accusanti', '99038', '+1 (406) 361-6392', 1, 'quo asperiores asperiores aperiam praesentium ratione fuga id ipsam cum ex beatae commodo at qui quis harum laborum maiores', '88004', 'est eaque eligendi e', 'ut ut pariatur volu', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'cyzixo@mailinator.com', '0000-00-00 00:00:00', 'waxedinixy@mailinator.com', NULL, '/employer/logo/1/Screenshot from 2021-04-07 21-07-46_2.png', NULL, '', 1, 0, 1, '2021-04-07 10:42:23', NULL, NULL),
(10, 'Heidi Camacho', '123456', '714', 0, 0, 'ut repudiandae aut architecto quis pariatur deleniti similique autem quaerat quae est irure facilis odio et et ipsa veniam q', 'facilis explicabo u', 'aspernatur accusanti', '99038', '+1 (406) 361-6392', 1, 'quo asperiores asperiores aperiam praesentium ratione fuga id ipsam cum ex beatae commodo at qui quis harum laborum maiores', '88004', 'est eaque eligendi e', 'ut ut pariatur volu', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'cyzixo@mailinator.com', '0000-00-00 00:00:00', 'waxedinixy@mailinator.com', NULL, '/employer/logo/1/Screenshot from 2021-04-06 22-29-43.png', 'TESTDATA_3.xls', '', 0, 0, 1, '2021-04-07 11:59:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peo_last_login`
--

CREATE TABLE `peo_last_login` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `session_data` varchar(2048) NOT NULL,
  `machine_ip` varchar(1024) NOT NULL,
  `user_agent` varchar(128) NOT NULL,
  `agent_string` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peo_last_login`
--

INSERT INTO `peo_last_login` (`id`, `user_id`, `session_data`, `machine_ip`, `user_agent`, `agent_string`, `platform`, `created_time`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 88.0.4324.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'Linux', '2021-03-17 18:26:52'),
(2, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 88.0.4324.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'Linux', '2021-03-17 18:30:07'),
(3, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 88.0.4324.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'Linux', '2021-03-17 18:31:00'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 88.0.4324.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'Linux', '2021-03-17 19:49:59'),
(5, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 88.0.4324.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'Linux', '2021-03-18 18:49:27'),
(41, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-04-06 21:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `peo_pages`
--

CREATE TABLE `peo_pages` (
  `id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_time` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peo_pages`
--

INSERT INTO `peo_pages` (`id`, `page_name`, `created_time`, `updated_time`, `is_deleted`, `created_by`, `updated_by`) VALUES
(1, 'Users', '2021-04-07 15:32:24', '2021-04-07 15:32:24', 0, 1, 1),
(2, 'Role', '2021-04-07 15:32:24', '2021-04-07 15:32:24', 0, 1, 1),
(3, 'CMS', '2021-04-07 15:32:24', '2021-04-07 15:32:24', 0, 1, 1),
(4, 'Vehicle Management', '2021-04-07 15:32:24', '2021-04-07 15:32:24', 0, 1, 1),
(5, 'Reports', '2021-04-07 15:32:24', '2021-04-07 15:32:24', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `peo_reset_password`
--

CREATE TABLE `peo_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` bigint(20) NOT NULL DEFAULT 1,
  `created_time` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peo_reset_password`
--

INSERT INTO `peo_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `is_deleted`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(2, 'shanpaulspr@gmail.com', 'bQixZHuvCs0T8hA', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:40:48', NULL, NULL),
(3, 'shanpaulspr@gmail.com', 'K97A5aTfIOWz0Vh', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:41:08', NULL, NULL),
(4, 'shanpaulspr@gmail.com', '8XqrtVRYz9nD1So', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:44:35', NULL, NULL),
(5, 'shanpaulspr@gmail.com', 'gzIO9ielQt7Zynh', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:48:28', NULL, NULL),
(65, 'shanpaulspr@gmail.com', 'MdojxZL5bQUYyVF', 'Chrome', '127.0.0.1', 0, 1, '2021-04-06 07:03:52', NULL, NULL),
(66, 'shanpaulspr@gmail.com', 'zS9g3yC4pGBes6o', 'Chrome', '127.0.0.1', 0, 1, '2021-04-06 07:04:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peo_role`
--

CREATE TABLE `peo_role` (
  `id` int(20) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_disabled` int(10) DEFAULT 0,
  `created_by` bigint(20) NOT NULL DEFAULT 1,
  `created_time` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peo_role`
--

INSERT INTO `peo_role` (`id`, `role`, `is_deleted`, `is_disabled`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(2, 'Admin', 0, 0, 1, '2021-04-01 05:09:03', 1, '2021-04-06 11:00:39'),
(3, 'Test', 1, 0, 1, '2021-04-06 10:54:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peo_user`
--

CREATE TABLE `peo_user` (
  `id` int(20) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `mobile` varchar(128) DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_disabled` int(10) DEFAULT 0,
  `created_by` bigint(20) NOT NULL DEFAULT 1,
  `created_time` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `password_updated_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peo_user`
--

INSERT INTO `peo_user` (`id`, `email`, `password`, `name`, `mobile`, `role_id`, `is_deleted`, `is_disabled`, `created_by`, `created_time`, `updated_by`, `updated_time`, `password_updated_date`) VALUES
(1, 'admin@example.com', '$2y$10$cKEzf8f9/HDUedxsLW3kb.Mp/LhL0lOdPDx8Oc5g40.FtOh8jrfDS', 'System Administrator', '9890098900', 2, 0, 0, 1, '2021-04-01 05:11:42', 1, '2021-04-01 05:20:33', NULL),
(2, 'cujafi@mailinator.com', '$2y$10$wso3N.cwNIFD7DEbRyWZju6mSxgL0DC2IcXRyoAW1PWficXfgP5LW', 'Brian Perry', '9709090901', 0, 1, 0, 1, '2021-04-06 11:46:26', 1, '2021-04-06 11:46:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 88.0.4324.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'Linux', '2021-03-17 18:26:52'),
(2, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 88.0.4324.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'Linux', '2021-03-17 18:30:07'),
(3, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 88.0.4324.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'Linux', '2021-03-17 18:31:00'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 88.0.4324.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'Linux', '2021-03-17 19:49:59'),
(5, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 88.0.4324.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'Linux', '2021-03-18 18:49:27'),
(6, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 88.0.4324.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'Linux', '2021-03-18 19:29:43'),
(7, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 88.0.4324.182', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'Linux', '2021-03-18 23:39:58'),
(8, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 89.0.4389.90', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-19 13:56:19'),
(9, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-22 19:38:50'),
(10, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-22 19:48:10'),
(11, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-22 20:33:28'),
(12, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-23 18:03:56'),
(13, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-23 18:40:49'),
(14, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-23 19:17:49'),
(15, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-23 20:20:04'),
(16, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-23 20:28:10'),
(17, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-23 20:31:52'),
(18, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-25 14:19:04'),
(19, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-25 16:47:25'),
(20, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-26 14:29:23'),
(21, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-26 17:04:07'),
(22, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-26 17:06:11'),
(23, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-26 17:56:05'),
(24, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-26 18:02:58'),
(25, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-26 21:45:31'),
(26, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-26 21:53:25'),
(27, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-26 21:53:43'),
(28, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-29 14:21:32'),
(29, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-30 14:54:39'),
(30, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-31 14:11:03'),
(31, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-03-31 14:18:06'),
(32, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-04-01 13:57:26'),
(33, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-04-03 09:00:53'),
(0, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-04-15 16:36:57'),
(0, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'Linux', '2021-04-15 19:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` bigint(20) NOT NULL DEFAULT 1,
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reset_password`
--

INSERT INTO `tbl_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@example.com', 'm0jTb5CPwu1GBH4', 'Chrome 88.0.4324.182', '127.0.0.1', 0, 1, '2021-03-17 18:30:44', NULL, NULL),
(2, 'shanpaulspr@gmail.com', 'bQixZHuvCs0T8hA', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:40:48', NULL, NULL),
(3, 'shanpaulspr@gmail.com', 'K97A5aTfIOWz0Vh', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:41:08', NULL, NULL),
(4, 'shanpaulspr@gmail.com', '8XqrtVRYz9nD1So', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:44:35', NULL, NULL),
(5, 'shanpaulspr@gmail.com', 'gzIO9ielQt7Zynh', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:48:28', NULL, NULL),
(6, 'shanpaulspr@gmail.com', 'QzEKZ7HsbXymNUv', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:49:12', NULL, NULL),
(7, 'shanpaulspr@gmail.com', 'JYAWMPBZU6huneV', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:49:23', NULL, NULL),
(8, 'shanpaulspr@gmail.com', 'b0mkw4szFGVNPOe', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:49:29', NULL, NULL),
(9, 'shanpaulspr@gmail.com', '2yZxXEJqHiUwAsI', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:50:26', NULL, NULL),
(10, 'shanpaulspr@gmail.com', 'LqrG1VtQumpdYU5', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:52:46', NULL, NULL),
(11, 'shanpaulspr@gmail.com', 'rMin7DRSNEcxmHt', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:54:24', NULL, NULL),
(12, 'shanpaulspr@gmail.com', 'jxFzmT6e8AMUHvh', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:56:06', NULL, NULL),
(13, 'shanpaulspr@gmail.com', 'eiXvkrsKhpqZofP', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:56:18', NULL, NULL),
(14, 'shanpaulspr@gmail.com', 'khyKHu3XM9tnrm1', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:56:24', NULL, NULL),
(15, 'shanpaulspr@gmail.com', 'tNyrknAdPYfEVRH', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 06:57:14', NULL, NULL),
(16, 'employee@example.com', 'UqfmrO4QRhklxHE', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 07:01:03', NULL, NULL),
(17, 'employee@example.com', 'WD6nKa0Vx1YoI7U', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 07:01:08', NULL, NULL),
(18, 'employee@example.com', 'JZOwuVEFaTBeKRm', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 07:01:17', NULL, NULL),
(19, 'admin@example.com', 'R2CckfoMr76BJOX', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 08:12:37', NULL, NULL),
(20, 'employee@example.com', '8a190jTXZClNHBo', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 08:12:41', NULL, NULL),
(21, 'admin@example.com', 'Q0rSAudnvRqkpoT', 'Chrome', '127.0.0.1', 0, 1, '2021-03-23 08:12:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Manager'),
(3, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@example.com', '$2y$10$DtKvHD5NjWwVGJVUSRb0.OMj.TRJuFd0rdPho.VpK.sSYHELOXi1C', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2021-03-17 18:29:44'),
(2, 'manager@example.com', '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2018-01-12 07:22:11'),
(3, 'employee@example.com', '$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u', 'Employee', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 3, '2018-01-04 07:58:28'),
(9, 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Test', '8838521291', 3, 1, 1, '2021-03-17 18:28:08', 1, '2021-03-18 19:26:20'),
(11, 'shanpaulspr@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Shan', '8838521291', 1, 0, 1, '2021-03-26 07:36:36', NULL, NULL),
(10, 'tets@gmail.com', '$2y$10$Wf2ftjYU89rhnEj66epDxesIZs.FgETFneHHnyvqlqHCSvTMINika', 'Test2', '8838521291', 2, 0, 1, '2021-03-18 19:27:54', NULL, NULL),
(12, 'shanpaulspr@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Shan', '8838521291', 1, 0, 1, '2021-03-26 07:45:21', NULL, NULL),
(13, 'shanpaulspr@gmail.com', '3e119ab537d3c4cc0c31b9277bfd785e', 'Shan', '8838521291', 2, 0, 1, '2021-03-26 07:45:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `role`, `key`, `active`) VALUES
(1, 'admin', '0c7540eb7e65b553ec1ba6b20de79608', 'Admin2', 'Account', 'email@email.com', 100, '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `peo_broker`
--
ALTER TABLE `peo_broker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peo_cms`
--
ALTER TABLE `peo_cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peo_employer`
--
ALTER TABLE `peo_employer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peo_last_login`
--
ALTER TABLE `peo_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peo_pages`
--
ALTER TABLE `peo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peo_reset_password`
--
ALTER TABLE `peo_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peo_role`
--
ALTER TABLE `peo_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peo_user`
--
ALTER TABLE `peo_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peo_broker`
--
ALTER TABLE `peo_broker`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `peo_cms`
--
ALTER TABLE `peo_cms`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `peo_employer`
--
ALTER TABLE `peo_employer`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `peo_last_login`
--
ALTER TABLE `peo_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `peo_pages`
--
ALTER TABLE `peo_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `peo_reset_password`
--
ALTER TABLE `peo_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `peo_role`
--
ALTER TABLE `peo_role`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peo_user`
--
ALTER TABLE `peo_user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ui2ux\",\"table\":\"users\"},{\"db\":\"ui2ux\",\"table\":\"favorites\"},{\"db\":\"ui2ux\",\"table\":\"products\"},{\"db\":\"ui2ux\",\"table\":\"reviews\"},{\"db\":\"ui2ux\",\"table\":\"category_mapping\"},{\"db\":\"ui2ux\",\"table\":\"categories\"},{\"db\":\"ui2ux\",\"table\":\"cars\"},{\"db\":\"ui2ux\",\"table\":\"TABLE 1\"},{\"db\":\"havia\",\"table\":\"tokens\"},{\"db\":\"havia\",\"table\":\"stores\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'gf_interview_task', 'charities', '{\"sorted_col\":\"`charities`.`charity_id`  ASC\"}', '2021-07-11 18:04:06'),
('root', 'invoice_system', 'invoices', '{\"sorted_col\":\"`invoices`.`to_be_paid` ASC\"}', '2021-05-08 09:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-12-27 20:10:06', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `salary` int(10) NOT NULL,
  `managerId` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `salary`, `managerId`) VALUES
(1, 'a', 7000, 3),
(2, 'b', 8000, 4),
(3, 'c', 6000, NULL),
(4, 'd', 9000, NULL),
(5, 'a', 12423, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2021_04_15_154547_create_employer_table', 1),
(5, '2021_04_15_154956_add_status_column_to_employer', 2),
(6, '2021_04_15_160523_add_new_user_id_column_to_employer', 3),
(7, '2021_04_15_162814_create_currency_table', 4);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employer_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `employer_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `ui2ux`
--
CREATE DATABASE IF NOT EXISTS `ui2ux` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ui2ux`;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `model` varchar(36) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `model`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 'Mazda RX4', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(2, 'Mazda RX3', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(3, 'Hornet Sportabout', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(4, 'Valiant', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(5, 'Duster 360', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(6, 'Merc 240D', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(7, 'Merc 230', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(8, 'Merc 280', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(9, 'Merc 280C', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(10, 'Merc 450SE', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(11, 'Merc 450SL', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(12, 'Merc 450SLC', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(13, 'Cadillac Fleetwood', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(14, 'Lincoln Continental', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(15, 'Chrysler Imperial', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(16, 'Fiat 128', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(17, 'Honda Civic', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(18, 'Toyota Corolla', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(19, 'Toyota Corona', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(20, 'Dodge Challenger', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(21, 'AMC Javelin', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(22, 'Camaro Z28', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(23, 'Pontiac Firebird', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(24, 'Fiat X1', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(25, 'Ford Pantera', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(26, 'Maserati Bora', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36'),
(27, 'Volvo 142E', 1, '2023-12-24 14:56:36', '2023-12-24 14:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 'power tools', 1, '2023-12-26 16:58:13', '2023-12-26 16:58:13'),
(2, 'hand tools', 1, '2023-12-26 16:58:13', '2023-12-26 16:58:13'),
(3, 'plumbing', 1, '2023-12-26 16:59:22', '2023-12-26 16:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `category_mapping`
--

CREATE TABLE `category_mapping` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_mapping`
--

INSERT INTO `category_mapping` (`id`, `category_id`, `product_id`, `isActive`, `createdAt`, `updateAt`) VALUES
(1, 2, 1, 1, '2023-12-26 17:46:56', '2023-12-26 17:46:56'),
(2, 2, 2, 1, '2023-12-26 17:47:09', '2023-12-26 17:47:09'),
(3, 2, 3, 1, '2023-12-26 17:47:09', '2023-12-26 17:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `part_number` varchar(30) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image_path` varchar(150) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `part_number`, `price`, `image_path`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 'cutters', '', '10', 'Hand_Tools/cutters.jpg', 1, '2023-12-26 17:06:41', '2023-12-26 17:06:41'),
(2, 'files', '', '15', 'Hand_Tools/files.jpg', 1, '2023-12-26 17:06:41', '2023-12-26 17:06:41'),
(3, 'hammer', '', '12', 'Hand_Tools/hammer.jpg', 1, '2023-12-26 17:08:04', '2023-12-26 17:08:04'),
(4, 'torque wrench', '', '12', 'Hand_Tools/torque_wrench.jpg', 1, '2023-12-26 17:08:04', '2023-12-26 17:08:04'),
(5, 'wrench', '', '20', 'Hand_Tools/wrench.jpg', 1, '2023-12-26 17:08:04', '2023-12-26 17:08:04'),
(6, 'pliers', '', '9', 'Hand_Tools/pliers.jpg', 1, '2023-12-26 17:08:04', '2023-12-26 17:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `notes` varchar(300) NOT NULL,
  `rating` int(5) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` int(30) NOT NULL,
  `lastName` int(20) DEFAULT NULL,
  `email` int(50) NOT NULL,
  `password` int(50) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `category_mapping`
--
ALTER TABLE `category_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `part_number` (`part_number`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_mapping`
--
ALTER TABLE `category_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_mapping`
--
ALTER TABLE `category_mapping`
  ADD CONSTRAINT `category_mapping_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_mapping_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
--
-- Database: `ztaskmanager`
--
CREATE DATABASE IF NOT EXISTS `ztaskmanager` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ztaskmanager`;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Coimbatore', 'Coimbatore', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(2, 'Chennai', 'Chennai', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(3, 'Bangalore', 'Bangalore', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(4, 'Mysure', 'Mysure', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dell', 'Dell', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(2, 'HP', 'HP', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(3, 'Apple', 'Apple', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(4, 'Google', 'Google', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_05_075025_create_states_table', 1),
(3, '2019_12_09_075833_create_city_table', 1),
(4, '2019_12_10_120132_create_companies_table', 1),
(5, '2019_12_10_162502_create_roles_table', 1),
(6, '2019_12_10_163801_create_projects_table', 1),
(7, '2019_12_12_104605_create_project_users_table', 1),
(8, '2019_12_12_110951_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `company_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dig-trick', 1, 'Dig-trick', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(2, 'Spark i', 1, 'Spark i', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `project_users`
--

CREATE TABLE `project_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_users`
--

INSERT INTO `project_users` (`id`, `project_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(2, 2, 2, 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Super Admin', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(2, 'Admin', 'Admin', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(3, 'Manager', 'Manager', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(4, 'Team Lead', 'Team Lead', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(5, 'Tester', 'Tester', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(6, 'Developer', 'Developer', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(7, 'Designer', 'Designer', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41'),
(8, 'Client', 'Client', 1, '2023-10-01 03:30:41', '2023-10-01 03:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `deadline` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL DEFAULT 2,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_users`
--
ALTER TABLE `project_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_users`
--
ALTER TABLE `project_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
