-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2024 at 09:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact-management-application`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(28, 'Dejon Smitham', 'harry.carter@gmail.com', '+1-985-521-7476', '9361 Trisha Plain\nTurcottehaven, OK 30865-7924', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(32, 'Carmel Crist', 'ijones@yahoo.com', '+1-260-856-8671', '349 Jarred Shores\nSouth Estella, AK 86546-5599', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(33, 'Ramiro Murray', 'otho.will@heaney.com', '+1-231-741-8889', '3971 Heller Square\nLake Nathanielchester, KY 54030', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(34, 'Ned Hickle', 'evolkman@jaskolski.com', '+1-531-312-2205', '158 Cyrus Crossroad Apt. 255\nSchmidtburgh, TX 84406-8309', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(35, 'Francisco Mertz Jr.', 'atreutel@konopelski.com', '1-743-335-4072', '2337 Wade Island Suite 488\nWest Darrin, TN 73292', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(36, 'Brook Mayert', 'pasquale.stoltenberg@harris.info', '65656565656565656', '1451 Fay Stream Apt. 845D\'Amoreville, NY 73774-8068', '2024-08-01 13:16:31', '2024-08-01 13:28:04'),
(37, 'Ladarius Nolan', 'denesik.lourdes@yahoo.com', '1-551-781-5307', '6089 Ruecker Route\nClementinamouth, ND 80241-3555', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(38, 'Emanuel Connelly', 'leannon.king@keeling.com', '520-437-9244', '446 Stanton Court Apt. 070\nNew Alfred, ME 04808-9346', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(39, 'Prof. Merl Romaguera', 'carlee.terry@gmail.com', '(820) 255-3988', '205 Paula Manor Apt. 777\nEast Orie, FL 74078', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(40, 'Deshawn Schiller III', 'ethel35@conroy.com', '+1-657-949-8840', '2206 Schumm Skyway\nPort Litzyland, DC 17959', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(41, 'Mr. Hal Kunde', 'florence.padberg@gmail.com', '585-824-3357', '847 Bartell Mall\nDavidtown, MS 09948-0739', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(42, 'Devon Mitchell', 'kaylah47@gerlach.net', '+1.463.204.6720', '4478 Jerrell Land\nEast Gilbert, KS 48740-5439', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(43, 'Prof. Hilton Von', 'allison.west@turcotte.com', '(629) 246-9581', '3490 Estrella Plains\nEast Dylan, CT 24853', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(44, 'Dr. Gerald Anderson', 'edickens@yahoo.com', '830.860.2626', '4109 Osborne Motorway Apt. 325\nHoppeberg, AL 73395-4359', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(45, 'Constantin Lakin', 'connelly.gus@yahoo.com', '+1.805.250.4988', '36250 Ward Junctions\nTurcottebury, UT 73165', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(46, 'Ryder D\'Amore', 'yborer@yahoo.com', '+1 (502) 957-2020', '10111 Runolfsdottir Field Apt. 652\nWest Addieview, CT 69880-4763', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(47, 'Kyler Larson', 'cummerata.alisha@gmail.com', '+1-520-491-0997', '90180 Strosin Flat Apt. 110\nNew Arvilla, OH 20502-0201', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(48, 'Dayne Howell Sr.', 'carroll.izabella@gmail.com', '651.703.9418', '76523 Berge Square\nReicherttown, MS 65032-3104', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(49, 'Dr. Tavares Kub', 'koepp.raheem@marquardt.info', '781.389.3761', '690 Reta Island Suite 220\nSouth Arne, NM 72455-4437', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(51, 'Giovanny Gaylord', 'haylee20@brekke.biz', '+1 (731) 204-0878', '2092 Garrick Locks\nWatsicamouth, DE 52342-3103', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(52, 'Mr. Roman Cremin', 'boyle.karley@gmail.com', '+1-440-920-8647', '403 Fiona Walks\nZboncakberg, NH 31769', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(53, 'Gaston Moore', 'doyle05@stehr.com', '1-870-536-8186', '84497 Samanta Plaza\nBerenicechester, SD 79177', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(54, 'Camron Corwin', 'bernita.schoen@yahoo.com', '+17546596839', '351 Will Plaza\nNew Colten, ID 22572-5264', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(57, 'Ubaldo Kling', 'liana.murphy@yahoo.com', '+1-520-429-7349', '595 Misael Mill Suite 118\nDavischester, KS 84837', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(58, 'Dr. Antone Breitenberg', 'aisha04@hotmail.com', '+1 (520) 245-2191', '868 O\'Kon Turnpike\nStephenland, OK 36024', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(59, 'Marley Greenfelder', 'maxwell.konopelski@hotmail.com', '+1-754-857-3986', '690 Von Mountain\nRodriguezland, MO 89142-3323', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(60, 'Prof. Clifton Corkery MD', 'natasha.padberg@kertzmann.com', '602.782.4869', '766 Elmo Fort Apt. 109\nMcLaughlinstad, PA 56662-9492', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(61, 'Dr. Kevon Kunze', 'darlene40@hotmail.com', '1-872-659-6972', '655 Powlowski Rue Apt. 010\nLindchester, NC 79374', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(62, 'Tom Lueilwitz', 'francesca80@gmail.com', '878.792.8405', '25793 Kohler Springs\nMcDermottchester, OH 76423-7401', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(63, 'Wilber Stark', 'kyler94@yahoo.com', '+13463260044', '2702 Kautzer Branch\nReingerton, SD 56764', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(64, 'Rogelio Hilpert', 'yazmin68@hotmail.com', '+1-618-868-4743', '889 Willie Roads Apt. 967\nWest Shawna, CT 01258', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(65, 'Laurel Bednar', 'ernser.gus@koss.com', '929.437.1676', '92352 Reynolds Hill\nTurnermouth, SD 44735-6492', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(69, 'Wilfrid Johnson', 'alexanne.walker@ziemann.com', '+1.575.927.1788', '228 Estevan Fords\nKonopelskifurt, OK 05651', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(70, 'Marshall Daugherty', 'harris.myrtie@yahoo.com', '310-605-0851', '683 Julie Springs\nSouth Shannaton, PA 72911', '2024-08-01 13:16:31', '2024-08-01 13:16:31'),
(71, 'Mr. Garland Mueller', 'ahagenes@yahoo.com', '+1 (541) 735-4385', '7828 Murphy Hill\nFlorineshire, KY 19899', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(72, 'Dr. Aron Shanahan', 'kohler.zula@yahoo.com', '+1-757-757-9800', '28511 Klein Isle\nRunolfsdottirton, IN 25419', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(73, 'Keshaun Maggio', 'khammes@gmail.com', '1-918-631-8645', '27947 Mante Station\nLangoshfurt, MT 09720', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(75, 'Napoleon O\'Kon', 'okozey@hotmail.com', '+1-323-813-2425', '36297 Nicolas Garden Apt. 204\nCasperport, NY 94395', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(76, 'Mr. Roderick Maggio', 'gorczany.rolando@mcglynn.com', '1-352-313-1904', '5582 Fletcher Pass\nThaddeusmouth, NC 77962', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(77, 'Shayne Baumbach', 'paige.frami@yahoo.com', '(718) 813-8448', '1676 Stamm Tunnel\nEast Rosemaryfurt, ID 70514-0760', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(79, 'Leif Rowe', 'kozey.aniyah@jaskolski.com', '1-779-247-7925', '9802 Stoltenberg Plaza\nNorth Mario, MO 73081-2210', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(81, 'Noah Jones', 'tkreiger@yahoo.com', '(845) 303-1951', '77540 Kihn Squares\nMyahtown, DE 84190-9099', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(82, 'Guy Reichel DDS', 'zstark@dare.org', '+1-316-204-4003', '62109 Abigail Coves\nAlbinashire, ID 45404-2429', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(83, 'Mr. Consuelo Emard Jr.', 'pattie24@hirthe.org', '+1-820-822-5808', '4728 Douglas Overpass\nNorth Sonyamouth, GA 03758', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(84, 'Isaiah Treutel', 'reymundo94@gmail.com', '1-503-910-7346', '41406 Volkman Extension\nWest Ali, LA 24087-3776', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(85, 'Terrell Bednar', 'samson.stark@gmail.com', '470.957.1029', '1429 Fritsch Rest Suite 403\nEast Wanda, CT 91291-8001', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(86, 'Prof. Tyree Osinski', 'xcollins@mitchell.com', '+1 (251) 222-0469', '898 Morissette Court Apt. 527\nAshtonburgh, PA 77673-9653', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(87, 'Mathias Schmitt', 'beau34@trantow.com', '+1.408.979.5145', '9260 Ray Stream\nCesarburgh, MS 83829', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(88, 'Prof. Zachariah Wolff', 'balistreri.joanie@gmail.com', '956.593.1441', '842 Wilber Bridge Apt. 018\nLake Jerrell, PA 14007-3927', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(89, 'Prof. Reuben Graham MD', 'stoltenberg.alejandra@yahoo.com', '1-503-540-2694', '29264 Abbigail Land Suite 900\nGibsonchester, NM 17705', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(90, 'Jaleel Leffler', 'hertha.bergstrom@gibson.net', '330-252-9658', '241 Yost Gateway Apt. 708\nPort Jacyntheburgh, AK 93478', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(93, 'Hayden Kiehn', 'smith.alvina@hotmail.com', '714.965.1999', '8295 Walker Burg\nTessview, ND 00256-2849', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(94, 'Jarred Cronin', 'sweissnat@hoeger.com', '1-478-409-7190', '404 Zulauf Rue\nWest Haileeside, FL 87903', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(95, 'Nelson Bailey', 'michaela.cummings@collins.biz', '+1-260-241-9603', '3735 Kathlyn Pass Apt. 320\nNew Edison, IA 28199-2028', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(96, 'Mr. Stanton Waelchi', 'connie.homenick@yahoo.com', '1-985-554-5093', '7005 Karlee Shores Apt. 087\nLake Shannyborough, TN 82769', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(97, 'Jabari Homenick', 'bhuels@gmail.com', '+1-913-515-0026', '8719 Sauer Spurs Suite 296\nEdenton, WY 50441', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(98, 'Geo Mohr', 'hudson.barrows@reichel.com', '+1.980.440.8694', '93662 Monahan Village\nIvyborough, MA 02746', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(100, 'Candido Flatley', 'bmayert@quitzon.biz', '1-561-365-5135', '40675 Mann Plain Suite 129\nToyfurt, MD 07919-0977', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(101, 'Kurtis Graham', 'kristoffer04@yahoo.com', '616.485.1123', '26505 Liana Orchard Suite 453\nPurdyton, NV 47315', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(102, 'Johnathan Hickle', 'sawayn.jazmin@lueilwitz.com', '(650) 569-0540', '50446 Clarabelle Ridge\nSwaniawskistad, OH 74281', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(104, 'Dr. Payton Wisozk MD', 'cpouros@gmail.com', '+1 (571) 615-1870', '511 Maybelle Shore Suite 654\nCormiertown, SC 41536', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(105, 'Filiberto Bosco', 'tnitzsche@yahoo.com', '1-253-695-6990', '6569 Zieme Mall Suite 594\nNorth Antoinette, NM 10658', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(106, 'Chad Predovic', 'jenkins.alisa@metz.com', '1-239-334-2594', '47848 Anastasia Drive\nLake Elody, IA 87199-6764', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(107, 'Mr. Jay Corwin MD', 'murray95@gmail.com', '+1.620.281.6436', '982 Kurtis Rapid\nEast Paige, MO 26075', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(108, 'Brown Howell', 'maida33@hotmail.com', '+19166328649', '7155 Anthony Trail Apt. 218\nPierrehaven, MO 82788', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(109, 'Micheal Romaguera', 'armando.mclaughlin@weimann.com', '+1 (608) 297-3099', '13208 Kilback Locks\nPort Shakira, UT 99831', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(110, 'Prof. Kane Brakus DDS', 'amelie.klocko@yahoo.com', '(223) 422-3676', '50250 Bednar Villages Apt. 128\nFlorinetown, MS 08669-8941', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(112, 'Dee Hansen', 'boyle.sydney@howell.com', '1-669-509-2772', '27292 Shanna Crossroad Apt. 237\nDennismouth, MA 93058-0492', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(113, 'Mr. Lonzo Waters III', 'jamal92@hotmail.com', '754-326-8852', '6673 Muller Well\nWest Zenaburgh, AK 94004', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(114, 'Mr. Dave Wisozk', 'pgorczany@yahoo.com', '+1-272-326-2393', '307 Krajcik Cliff\nWest Bertram, RI 81937', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(115, 'Nikko Bosco', 'adams.patience@hotmail.com', '1-571-868-8382', '91282 Steuber Passage\nLake Brockfurt, MN 97455', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(116, 'Skylar Hegmann', 'cbeier@gmail.com', '534.787.1025', '76305 Armstrong Stravenue Suite 409\nOraborough, VT 67327', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(117, 'Prof. Buster Feest IV', 'ebony.luettgen@tremblay.com', '706.984.0271', '36504 Blick Motorway Suite 953\nEast Bernita, LA 30915-3249', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(118, 'Kacey Ritchie DVM', 'kirlin.mia@considine.com', '814.559.5805', '77389 Schuppe Port Apt. 944\nWindlerchester, UT 77090', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(119, 'Mallory Barrows Sr.', 'sincere65@gmail.com', '(432) 550-6765', '451 Jacklyn Causeway\nKarlfurt, NV 38464-2218', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(120, 'Prof. Osvaldo Toy MD', 'ekiehn@rolfson.com', '(423) 240-1825', '2744 Russel Stravenue\nEast Derek, ME 36235-1329', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(121, 'Christop Herzog', 'simone.kutch@pouros.com', '1-470-939-7601', '58234 Kilback Summit Apt. 299\nKesslerhaven, LA 79320-9016', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(122, 'Ricardo McClure DDS', 'pabernathy@keeling.org', '+1 (628) 567-2669', '61057 Hobart Fork\nPort Jazmyne, NJ 28981', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(123, 'Orlo Lemke', 'josiah96@gmail.com', '413.874.7071', '246 Gottlieb Divide\nPort Alvis, NV 35408', '2024-08-01 13:16:32', '2024-08-01 13:16:32'),
(124, 'Elliot Lowe', 'mariela44@hegmann.com', '+1-413-292-7871', '945 Bernita Parkways\nNorth Orpha, TX 86961', '2024-08-01 13:16:32', '2024-08-01 13:16:32');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_30_193834_create_contacts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6ghGe10ulqD8h02Tsi7ZXYPJh21s8W2ukUdacoIK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnRRNjlHaWZOa1JxdjhEUDE2RUE3WDJnU0lMNWtzUG12b3BrcW9rayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722540771);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
