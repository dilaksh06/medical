-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2024 at 03:03 PM
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
-- Database: `dms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `created_list`
--

CREATE TABLE `created_list` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `drug_id` int(11) DEFAULT NULL,
  `strength` varchar(100) NOT NULL,
  `solution_id` int(11) DEFAULT NULL,
  `volume` varchar(100) NOT NULL,
  `location` varchar(20) NOT NULL,
  `duration_id` int(11) DEFAULT NULL,
  `dosage` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `created_list`
--

INSERT INTO `created_list` (`id`, `patient_id`, `route_id`, `drug_id`, `strength`, `solution_id`, `volume`, `location`, `duration_id`, `dosage`, `created_at`, `updated_at`, `deleted_at`) VALUES
(958, NULL, 6, 126, '500 mg', 2, '7', 'Inside', 1, 'bd', '2024-08-02 12:27:24', NULL, NULL),
(959, NULL, 8, 128, '200 mg', 3, '1', 'Inside', 2, 'bd', '2024-08-02 12:27:49', NULL, NULL),
(961, 676, 5, 128, '200 mg', 1, '1', 'Inside', 2, 'bd', '2024-08-02 12:31:05', NULL, NULL),
(962, 676, 8, 142, '500 mg', 2, '7', 'Outside', 2, 'tds', '2024-08-02 12:31:05', NULL, NULL),
(963, 676, 7, 139, '100 mg', 3, '21', 'Inside', 2, 'bd', '2024-08-02 12:31:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `id` int(11) NOT NULL,
  `drug_type_id` int(11) NOT NULL,
  `srs_number` varchar(50) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `drug_type_id`, `srs_number`, `drug_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(125, 1, 'SRS123456', 'Paracetamol', '2024-06-05 15:51:05', NULL, NULL),
(126, 2, 'SRS234567', 'Ibuprofen', '2024-06-05 15:51:05', NULL, NULL),
(127, 3, 'SRS345678', 'Aspirin', '2024-06-05 15:51:05', NULL, NULL),
(128, 1, 'SRS456789', 'Amoxicillin', '2024-06-05 15:51:05', NULL, NULL),
(129, 2, 'SRS567890', 'Ciprofloxacin', '2024-06-05 15:51:05', NULL, NULL),
(130, 3, 'SRS678901', 'Penicillin', '2024-06-05 15:51:05', NULL, NULL),
(131, 1, 'SRS789012', 'Omeprazole', '2024-06-05 15:51:05', NULL, NULL),
(132, 2, 'SRS890123', 'Ranitidine', '2024-06-05 15:51:05', NULL, NULL),
(133, 3, 'SRS901234', 'Famotidine', '2024-06-05 15:51:05', NULL, NULL),
(134, 1, 'SRS012345', 'Metformin', '2024-06-05 15:51:05', NULL, NULL),
(135, 2, 'SRS123450', 'Gliclazide', '2024-06-05 15:51:05', NULL, NULL),
(136, 3, 'SRS234501', 'Insulin', '2024-06-05 15:51:05', NULL, NULL),
(137, 1, 'SRS345012', 'Simvastatin', '2024-06-05 15:51:05', NULL, NULL),
(138, 2, 'SRS450123', 'Atorvastatin', '2024-06-05 15:51:05', NULL, NULL),
(139, 3, 'SRS501234', 'Rosuvastatin', '2024-06-05 15:51:05', NULL, NULL),
(140, 1, 'SRS012345', 'Amlodipine', '2024-06-05 15:51:05', NULL, NULL),
(141, 2, 'SRS123456', 'Lisinopril', '2024-06-05 15:51:05', NULL, NULL),
(142, 3, 'SRS234567', 'Metoprolol', '2024-06-05 15:51:05', NULL, NULL),
(143, 1, 'SRS345678', 'Warfarin', '2024-06-05 15:51:05', NULL, NULL),
(144, 2, 'SRS456789', 'Clopidogrel', '2024-06-05 15:51:05', NULL, NULL),
(145, 3, 'SRS567890', 'Rivaroxaban', '2024-06-05 15:51:05', NULL, NULL),
(146, 1, 'SRS678901', 'Amiodarone', '2024-06-05 15:51:05', NULL, NULL),
(147, 2, 'SRS789012', 'Digoxin', '2024-06-05 15:51:05', NULL, NULL),
(148, 3, 'SRS890123', 'Diltiazem', '2024-06-05 15:51:05', NULL, NULL),
(149, 1, 'SRS901234', 'Levothyroxine', '2024-06-05 15:51:05', NULL, NULL),
(150, 2, 'SRS012345', 'Methotrexate', '2024-06-05 15:51:05', NULL, NULL),
(151, 3, 'SRS123450', 'Prednisone', '2024-06-05 15:51:05', NULL, NULL),
(152, 1, 'SRS234501', 'Hydrochlorothiazide', '2024-06-05 15:51:05', NULL, NULL),
(153, 2, 'SRS345012', 'Losartan', '2024-06-05 15:51:05', NULL, NULL),
(154, 3, 'SRS450123', 'Valsartan', '2024-06-05 15:51:05', NULL, NULL),
(155, 1, 'SRS501234', 'Captopril', '2024-06-05 15:51:05', NULL, NULL),
(156, 2, 'SRS012345', 'Enalapril', '2024-06-05 15:51:05', NULL, NULL),
(157, 3, 'SRS123456', 'Irbesartan', '2024-06-05 15:51:05', NULL, NULL),
(158, 1, 'SRS234567', 'Carvedilol', '2024-06-05 15:51:05', NULL, NULL),
(159, 2, 'SRS345678', 'Labetalol', '2024-06-05 15:51:05', NULL, NULL),
(160, 3, 'SRS456789', 'Nifedipine', '2024-06-05 15:51:05', NULL, NULL),
(161, 1, 'SRS567890', 'Amitriptyline', '2024-06-05 15:51:05', NULL, NULL),
(162, 2, 'SRS678901', 'Fluoxetine', '2024-06-05 15:51:05', NULL, NULL),
(163, 3, 'SRS789012', 'Sertraline', '2024-06-05 15:51:05', NULL, NULL),
(164, 1, 'SRS890123', 'Venlafaxine', '2024-06-05 15:51:05', NULL, NULL),
(165, 2, 'SRS901234', 'Paroxetine', '2024-06-05 15:51:05', NULL, NULL),
(166, 3, 'SRS012345', 'Citalopram', '2024-06-05 15:51:05', NULL, NULL),
(167, 1, 'SRS123450', 'Escitalopram', '2024-06-05 15:51:05', NULL, NULL),
(168, 2, 'SRS234501', 'Diazepam', '2024-06-05 15:51:05', NULL, NULL),
(169, 3, 'SRS345012', 'Alprazolam', '2024-06-05 15:51:05', NULL, NULL),
(170, 1, 'SRS450123', 'Lorazepam', '2024-06-05 15:51:05', NULL, NULL),
(171, 2, 'SRS501234', 'Clonazepam', '2024-06-05 15:51:05', NULL, NULL),
(172, 3, 'SRS012345', 'Temazepam', '2024-06-05 15:51:05', NULL, NULL),
(173, 1, 'SRS123456', 'Zolpidem', '2024-06-05 15:51:05', NULL, NULL),
(174, 2, 'SRS234567', 'Zopiclone', '2024-06-05 15:51:05', NULL, NULL),
(175, 3, 'SRS345678', 'Diphenhydramine', '2024-06-05 15:51:05', NULL, NULL),
(176, 1, 'SRS456789', 'Cetirizine', '2024-06-05 15:51:05', NULL, NULL),
(177, 2, 'SRS567890', 'Loratadine', '2024-06-05 15:51:05', NULL, NULL),
(178, 3, 'SRS678901', 'Fexofenadine', '2024-06-05 15:51:05', NULL, NULL),
(179, 1, 'SRS789012', 'Oxycodone', '2024-06-05 15:51:05', NULL, NULL),
(180, 2, 'SRS890123', 'Morphine', '2024-06-05 15:51:05', NULL, NULL),
(181, 3, 'SRS901234', 'Hydromorphone', '2024-06-05 15:51:05', NULL, NULL),
(182, 1, 'SRS012345', 'Tramadol', '2024-06-05 15:51:05', NULL, NULL),
(183, 2, 'SRS123450', 'Codeine', '2024-06-05 15:51:05', NULL, NULL),
(184, 3, 'SRS234501', 'Acetaminophen with Codeine', '2024-06-05 15:51:05', NULL, NULL),
(185, 1, 'SRS345012', 'Gabapentin', '2024-06-05 15:51:05', NULL, NULL),
(186, 2, 'SRS450123', 'Pregabalin', '2024-06-05 15:51:05', NULL, NULL),
(187, 3, 'SRS501234', 'Duloxetine', '2024-06-05 15:51:05', NULL, NULL),
(188, 1, 'SRS012345', 'Bupropion', '2024-06-05 15:51:05', NULL, NULL),
(189, 2, 'SRS123456', 'Varenicline', '2024-06-05 15:51:05', NULL, NULL),
(190, 3, 'SRS234567', 'Naltrexone', '2024-06-05 15:51:05', NULL, NULL),
(191, 1, 'SRS345678', 'Benzonatate', '2024-06-05 15:51:05', NULL, NULL),
(192, 2, 'SRS456789', 'Dextromethorphan', '2024-06-05 15:51:05', NULL, NULL),
(193, 3, 'SRS567890', 'Guaifenesin', '2024-06-05 15:51:05', NULL, NULL),
(194, 1, 'SRS678901', 'Pseudoephedrine', '2024-06-05 15:51:05', NULL, NULL),
(195, 2, 'SRS789012', 'Phenylephrine', '2024-06-05 15:51:05', NULL, NULL),
(196, 3, 'SRS890123', 'Oxymetazoline', '2024-06-05 15:51:05', NULL, NULL),
(197, 1, 'SRS901234', 'Diphenhydramine', '2024-06-05 15:51:05', NULL, NULL),
(198, 2, 'SRS012345', 'Cetirizine', '2024-06-05 15:51:05', NULL, NULL),
(199, 3, 'SRS123450', 'Loratadine', '2024-06-05 15:51:05', NULL, NULL),
(200, 1, 'SRS234501', 'Fexofenadine', '2024-06-05 15:51:05', NULL, NULL),
(201, 2, 'SRS345012', 'Chlorpheniramine', '2024-06-05 15:51:05', NULL, NULL),
(202, 3, 'SRS450123', 'Desloratadine', '2024-06-05 15:51:05', NULL, NULL),
(203, 1, 'SRS501234', 'Hydroxyzine', '2024-06-05 15:51:05', NULL, NULL),
(204, 2, 'SRS012345', 'Promethazine', '2024-06-05 15:51:05', NULL, NULL),
(205, 3, 'SRS123456', 'Meclizine', '2024-06-05 15:51:05', NULL, NULL),
(206, 1, 'SRS234567', 'Dimenhydrinate', '2024-06-05 15:51:05', NULL, NULL),
(207, 2, 'SRS345678', 'Scopolamine', '2024-06-05 15:51:05', NULL, NULL),
(208, 3, 'SRS456789', 'Ondansetron', '2024-06-05 15:51:05', NULL, NULL),
(209, 1, 'SRS567890', 'Metoclopramide', '2024-06-05 15:51:05', NULL, NULL),
(210, 2, 'SRS678901', 'Domperidone', '2024-06-05 15:51:05', NULL, NULL),
(211, 3, 'SRS789012', 'Prochlorperazine', '2024-06-05 15:51:05', NULL, NULL),
(212, 1, 'SRS890123', 'Dicyclomine', '2024-06-05 15:51:05', NULL, NULL),
(213, 2, 'SRS901234', 'Hyoscyamine', '2024-06-05 15:51:05', NULL, NULL),
(214, 3, 'SRS012345', 'Atropine', '2024-06-05 15:51:05', NULL, NULL),
(215, 1, 'SRS123450', 'Loperamide', '2024-06-05 15:51:05', NULL, NULL),
(216, 2, 'SRS234501', 'Psyllium', '2024-06-05 15:51:05', NULL, NULL),
(217, 3, 'SRS345012', 'Polyethylene Glycol', '2024-06-05 15:51:05', NULL, NULL),
(218, 1, 'SRS450123', 'Docusate', '2024-06-05 15:51:05', NULL, NULL),
(219, 2, 'SRS501234', 'Senna', '2024-06-05 15:51:05', NULL, NULL),
(220, 3, 'SRS012345', 'Bisacodyl', '2024-06-05 15:51:05', NULL, NULL),
(221, 1, 'SRS123456', 'Lactulose', '2024-06-05 15:51:05', NULL, NULL),
(222, 2, 'SRS234567', 'Magnesium Hydroxide', '2024-06-05 15:51:05', NULL, NULL),
(223, 3, 'SRS345678', 'Simethicone', '2024-06-05 15:51:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drug_types`
--

CREATE TABLE `drug_types` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drug_types`
--

INSERT INTO `drug_types` (`id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Normal', '2024-08-02 12:53:16', NULL, NULL),
(2, 'Name patient', '2024-08-02 12:53:16', NULL, NULL),
(3, 'Special', '2024-08-02 12:53:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `durations`
--

CREATE TABLE `durations` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `durations`
--

INSERT INTO `durations` (`id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'D1-D2', '2024-04-03 15:44:25', NULL, NULL),
(2, 'D1-D3', '2024-04-03 15:44:25', NULL, NULL),
(3, 'D1-D4', '2024-04-03 15:44:25', NULL, NULL),
(4, 'D1-D5', '2024-04-03 15:44:25', NULL, NULL),
(5, 'D1-D6', '2024-04-03 15:44:25', NULL, NULL),
(6, 'D1-D7', '2024-04-03 15:44:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oncologists`
--

CREATE TABLE `oncologists` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oncologists`
--

INSERT INTO `oncologists` (`id`, `first_name`, `last_name`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(50, 'Saman', 'Perera', 'Dr', '2024-07-11 19:58:47', NULL, '2024-07-11 20:04:36'),
(51, 'Nimal', 'Silva', 'Prof', '2024-07-11 19:58:47', NULL, NULL),
(52, 'Kamal', 'Fernando', 'Asst. Prof', '2024-07-11 19:58:47', NULL, NULL),
(53, 'Sunil', 'De Silva', 'Assoc. Prof', '2024-07-11 19:58:47', NULL, NULL),
(54, 'Ananda', 'Gunawardena', 'Sr. Dr', '2024-07-11 19:58:47', NULL, NULL),
(55, 'Malini', 'Perera', 'Prof', '2024-07-11 19:58:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `age` tinyint(11) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `bht_number` varchar(50) NOT NULL,
  `clinic_number` varchar(20) DEFAULT NULL,
  `phn` varchar(50) DEFAULT NULL,
  `ward_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `oncologist_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `first_name`, `last_name`, `age`, `gender`, `title`, `bht_number`, `clinic_number`, `phn`, `ward_id`, `section_id`, `oncologist_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(667, 'Saman', 'Silva', 45, 'Male', 'Mr', 'BHT12345', 'CLIN56789', '071525458555', 1, 1, 50, '2024-07-12 01:50:00', NULL, NULL),
(668, 'Kumari', 'Perera', 32, 'Female', 'Ms', 'BHT54321', 'CLIN98765', '071525458556', 2, 2, 51, '2024-07-12 01:50:00', NULL, NULL),
(669, 'Nimal', 'Fernando', 50, 'Male', 'Dr', 'BHT67890', 'CLIN34567', '071525458557', 3, 3, 52, '2024-07-12 01:50:00', NULL, NULL),
(670, 'Malini', 'Gunawardena', 28, 'Female', 'Dr', 'BHT45678', 'CLIN23456', '071525458558', 4, 4, 53, '2024-07-12 01:50:00', NULL, NULL),
(671, 'Ranjan', 'Jayawardena', 38, 'Male', 'Prof', 'BHT78901', 'CLIN12345', '071525458559', 5, 5, 54, '2024-07-12 01:50:00', NULL, NULL),
(672, 'Yasodara', 'Ratnayake', 41, 'Female', 'Prof', 'BHT23456', 'CLIN45678', '071525458560', 1, 6, 55, '2024-07-12 01:50:00', NULL, NULL),
(673, 'Somapala', 'Wickramasinghe', 55, 'Male', 'Asst. Prof.', 'BHT89012', 'CLIN56789', '071525458561', 2, 7, 50, '2024-07-12 01:50:00', NULL, NULL),
(674, 'Kamala', 'Wijewardena', 29, 'Female', 'Assoc. Prof.', 'BHT56789', 'CLIN67890', '071525458562', 3, 8, 51, '2024-07-12 01:50:00', NULL, NULL),
(675, 'Bandula', 'Amarasinghe', 48, 'Male', 'Sr. Dr.', 'BHT34567', 'CLIN78901', '071525458563', 4, 9, 52, '2024-07-12 01:50:00', NULL, NULL),
(676, 'Chandani', 'Karunaratne', 36, 'Female', 'Mr', 'BHT67890', 'CLIN89012', '071525458564', 5, 10, 53, '2024-07-12 01:50:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'IV', '2024-08-02 11:55:10', NULL, NULL),
(6, 'IM', '2024-08-02 11:55:11', NULL, NULL),
(7, 'IT', '2024-08-02 11:55:11', NULL, NULL),
(8, 'SC', '2024-08-02 11:55:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `section_name` varchar(100) NOT NULL,
  `ward_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `ward_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Section A', 1, '2024-05-24 12:43:29', NULL, NULL),
(2, 'Section B', 2, '2024-05-12 15:39:56', NULL, '2024-05-19 07:20:49'),
(3, 'Section C', 3, '2024-05-24 12:43:42', NULL, NULL),
(4, 'Section D', 4, '2024-05-12 15:39:56', NULL, NULL),
(5, 'Section E', 5, '2024-05-12 15:39:56', NULL, '2024-05-19 06:53:34'),
(6, 'Section F', 1, '2024-05-24 12:43:34', NULL, NULL),
(7, 'Section G', 2, '2024-05-12 15:39:56', NULL, '2024-05-19 06:57:12'),
(8, 'Section H', 3, '2024-05-24 12:43:46', NULL, NULL),
(9, 'Section I', 4, '2024-05-12 15:39:56', NULL, '2024-05-19 06:57:30'),
(10, 'Section J', 5, '2024-05-12 15:39:56', NULL, '2024-05-19 06:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE `solutions` (
  `id` int(11) NOT NULL,
  `solution` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solutions`
--

INSERT INTO `solutions` (`id`, `solution`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'N/S', '2024-04-03 15:45:07', '2024-07-10 19:10:52', NULL),
(2, '5/D', '2024-04-03 15:45:07', '2024-07-10 19:10:59', NULL),
(3, 'N/I', '2024-04-03 15:45:07', '2024-07-10 19:11:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `role` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `last_login`, `role`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '123', '2024-08-02 13:00:45', 'admin', 'active', '2024-08-02 12:54:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` int(11) NOT NULL,
  `ward_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `ward_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ward 01', '2024-04-03 14:43:20', '2024-05-19 13:00:30', NULL),
(2, 'Ward 02', '2024-04-03 14:43:20', '2024-05-24 12:43:04', NULL),
(3, 'Ward 03', '2024-04-03 14:43:20', '2024-05-24 12:43:10', NULL),
(4, 'Ward 04', '2024-04-03 14:43:20', '2024-05-19 06:45:38', NULL),
(5, 'Ward 05', '2024-04-03 14:43:20', '2024-05-19 06:45:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `created_list`
--
ALTER TABLE `created_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `drug_id` (`drug_id`),
  ADD KEY `solution_id` (`solution_id`),
  ADD KEY `days_type_id` (`duration_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`drug_type_id`);

--
-- Indexes for table `drug_types`
--
ALTER TABLE `drug_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `durations`
--
ALTER TABLE `durations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oncologists`
--
ALTER TABLE `oncologists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ward_id` (`ward_id`),
  ADD KEY `oncologist_id` (`oncologist_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ward_id` (`ward_id`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `created_list`
--
ALTER TABLE `created_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=964;

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `drug_types`
--
ALTER TABLE `drug_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `durations`
--
ALTER TABLE `durations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oncologists`
--
ALTER TABLE `oncologists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=686;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `created_list`
--
ALTER TABLE `created_list`
  ADD CONSTRAINT `created_list_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `created_list_ibfk_2` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `created_list_ibfk_3` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `created_list_ibfk_4` FOREIGN KEY (`duration_id`) REFERENCES `durations` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `created_list_ibfk_5` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `drugs`
--
ALTER TABLE `drugs`
  ADD CONSTRAINT `drugs_ibfk_1` FOREIGN KEY (`drug_type_id`) REFERENCES `drug_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`ward_id`) REFERENCES `wards` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `patients_ibfk_2` FOREIGN KEY (`oncologist_id`) REFERENCES `oncologists` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `patients_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`ward_id`) REFERENCES `wards` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
