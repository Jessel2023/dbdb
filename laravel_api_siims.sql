-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 04:06 PM
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
-- Database: `laravel_api_siims`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_post_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `status_type_id` bigint(20) UNSIGNED NOT NULL,
  `remarks` text NOT NULL DEFAULT '',
  `applied_date` timestamp NOT NULL DEFAULT '2024-09-28 02:15:04',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `campuses`
--

CREATE TABLE `campuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campuses`
--

INSERT INTO `campuses` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'USTP CAGAYAN DE ORO', NULL, NULL, NULL),
(2, 'USTP ALUBIJID', NULL, NULL, NULL),
(3, 'USTP CLAVERIA', NULL, NULL, NULL),
(4, 'USTP VILLANUEVA', NULL, NULL, NULL),
(5, 'USTP BALUBAL', NULL, NULL, NULL),
(6, 'USTP JASAAN', NULL, NULL, NULL),
(7, 'USTP OROQUIETA', NULL, NULL, NULL),
(8, 'USTP PANAON', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dean_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `campus_id`, `dean_id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'College of Engineering and Architecture', NULL, NULL, NULL),
(2, 1, 2020301502, 'College of Information Technology and Computing', NULL, NULL, NULL),
(3, 1, NULL, 'College of Science and Mathematics', NULL, NULL, NULL),
(4, 1, NULL, 'College of Science and Technology Education', NULL, NULL, NULL),
(5, 1, NULL, 'College of Technology', NULL, NULL, NULL),
(6, 1, NULL, 'College of Medicine', NULL, NULL, NULL),
(7, 1, NULL, 'Senior High School', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `website_url`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2023301502, 2023301502, 'http://orn.info/dolore-placeat-hic-ut-non-sunt-qui', 'Ebert, Deckow and Thompson', NULL, NULL, NULL),
(2024128762, 2024128762, 'https://www.dietrich.biz/repellat-voluptate-quis-asperiores-quo-cum-aut-facere', 'Nader LLC', NULL, NULL, NULL),
(2024220992, 2024220992, 'http://swaniawski.com/sint-ipsum-qui-molestiae-numquam-provident-vero-dolorem', 'Ullrich Inc', NULL, NULL, NULL),
(2024301502, 2024301502, 'http://gerlach.com/ducimus-id-eveniet-dolorem-ex-id-id', 'Jaskolski Group', NULL, NULL, NULL),
(2024603707, 2024603707, 'http://haag.biz/placeat-illum-sit-in-sint', 'Lehner, Cummings and Feil', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coordinators`
--

CREATE TABLE `coordinators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `program_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_students` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coordinators`
--

INSERT INTO `coordinators` (`id`, `user_id`, `program_id`, `total_students`, `created_at`, `updated_at`) VALUES
(1, 2023301502, NULL, 0, NULL, NULL),
(2, 2024128762, NULL, 0, NULL, NULL),
(3, 2024129049, NULL, 0, NULL, NULL),
(4, 2024154396, NULL, 0, NULL, NULL),
(5, 2024179268, NULL, 0, NULL, NULL),
(6, 2024250205, NULL, 0, NULL, NULL),
(7, 2024262995, NULL, 0, NULL, NULL),
(8, 2024263656, NULL, 0, NULL, NULL),
(9, 2024350632, NULL, 0, NULL, NULL),
(10, 2024375299, NULL, 0, NULL, NULL),
(11, 2024379113, NULL, 0, NULL, NULL),
(12, 2024446381, NULL, 0, NULL, NULL),
(13, 2024484025, NULL, 0, NULL, NULL),
(14, 2024494330, NULL, 0, NULL, NULL),
(15, 2024497605, NULL, 0, NULL, NULL),
(16, 2024509684, NULL, 0, NULL, NULL),
(17, 2024628640, NULL, 0, NULL, NULL),
(18, 2024686666, NULL, 0, NULL, NULL),
(19, 2024690046, NULL, 0, NULL, NULL),
(20, 2024711061, NULL, 0, NULL, NULL),
(21, 2024822520, NULL, 0, NULL, NULL),
(22, 2024829242, NULL, 0, NULL, NULL),
(23, 2024830719, NULL, 0, NULL, NULL),
(24, 2024835991, NULL, 0, NULL, NULL),
(25, 2024841170, NULL, 0, NULL, NULL),
(26, 2024854889, NULL, 0, NULL, NULL),
(27, 2024860605, NULL, 0, NULL, NULL),
(28, 2024944597, NULL, 0, NULL, NULL),
(29, 2024957656, NULL, 0, NULL, NULL),
(30, 2024988704, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document_submissions`
--

CREATE TABLE `document_submissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` bigint(20) UNSIGNED NOT NULL,
  `doc_type_id` bigint(20) UNSIGNED NOT NULL,
  `doc_status_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `file_size` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_types`
--

CREATE TABLE `document_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_types`
--

INSERT INTO `document_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cover Letter', '2024-09-28 02:16:05', NULL),
(2, 'Endorsement Letter', '2024-09-28 02:16:05', NULL),
(3, 'Resume', '2024-09-28 02:16:05', NULL),
(4, 'Medical Certificate', '2024-09-28 02:16:05', NULL),
(5, 'Acceptance Letter', '2024-09-28 02:16:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtr_entries`
--

CREATE TABLE `dtr_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `time_in` varchar(255) DEFAULT NULL,
  `time_out` varchar(255) DEFAULT NULL,
  `hours_received` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `full_address` varchar(255) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `endorsement_letter_requests`
--

CREATE TABLE `endorsement_letter_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_post_id` bigint(20) UNSIGNED NOT NULL,
  `requested_by_id` bigint(20) UNSIGNED NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `folder_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_memberships`
--

CREATE TABLE `group_memberships` (
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2024_07_30_105536_create_personal_access_tokens_table', 1),
(4, '2024_07_31_014906_create_campuses_table', 1),
(5, '2024_07_31_021451_create_folders_table', 1),
(6, '2024_07_31_022251_create_messages_table', 1),
(7, '2024_08_07_111850_create_companies_table', 1),
(8, '2024_08_07_112202_create_office_types_table', 1),
(9, '2024_08_08_033358_create_programs_table', 1),
(10, '2024_08_08_035608_create_coordinators_table', 1),
(11, '2024_08_08_035716_create_students_table', 1),
(12, '2024_09_08_040601_create_work_experiences', 1),
(13, '2024_09_08_040805_create_educations', 1),
(14, '2024_09_08_040959_create_skills', 1),
(15, '2024_09_08_042336_create_work_types', 1),
(16, '2024_09_08_042635_create_work_posts', 1),
(17, '2024_09_08_043540_create_statuses', 1),
(18, '2024_09_08_044214_create_document_types', 1),
(19, '2024_09_08_050353_create_applications', 1),
(20, '2024_09_08_050641_create_document_submissions', 1),
(21, '2024_09_08_050913_create_student_skills', 1),
(22, '2024_09_08_051259_create_dtr_entries', 1),
(23, '2024_09_08_051440_create_weekly_entries', 1),
(24, '2024_09_18_232648_create_endorsement_letter_requests', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `office_type_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supervisor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `barangay` varchar(100) DEFAULT NULL,
  `city_municipality` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `office_type_id`, `company_id`, `supervisor_id`, `name`, `phone_number`, `street`, `barangay`, `city_municipality`, `province`, `postal_code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'Department of Science in Architecture', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, NULL, 'Department of Science in Civil Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, 'Department of Science in Mechanical Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, NULL, NULL, 'Department of Science in Computer Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, NULL, NULL, 'Department of Science in Geodetic Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, NULL, NULL, 'Department of Science in Electrical Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, NULL, NULL, 'Department of Science in Electronics Engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, NULL, NULL, 'Department of Science in Information Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, NULL, NULL, 'Department of Science in Technology Communication Management', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, NULL, NULL, 'Department of Science in Data Science', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, NULL, NULL, 'Department of Science in Computer Science', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, NULL, NULL, 'Department of Science in Applied Mathemathics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, NULL, NULL, 'Department of Science in Applied Mathemathics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, NULL, NULL, 'Department of Science in Applied Physics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1, NULL, NULL, 'Department of Science in Chemistry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, NULL, NULL, 'Department of Science in Environmental Science', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 1, NULL, NULL, 'Department of Science in Food Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1, NULL, NULL, 'Department in Secondary Education Major in Science', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 1, NULL, NULL, 'Department in Secondary Education Major in Mathematics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, NULL, NULL, 'Department in Technology and Livelihood Education', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 1, NULL, NULL, 'Department in Technical Vocational Teacher Education', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1, NULL, NULL, 'Department of Science in Electronics Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 1, NULL, NULL, 'Department of Science in Autotronics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 1, NULL, NULL, 'Department of Science in Energy Systems and Management', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 1, NULL, NULL, 'Department of Science in Electro-Mechanical Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 1, NULL, NULL, 'Department of Science in Manufacturing Engineering Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 1, 2023301502, NULL, 'Main Office for Ebert, Deckow and Thompson', '+123456789', '123 Main St', 'Barangay 1', 'Sample City', 'Sample Province', '12345', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(28, 2, 2023301502, NULL, 'Branch Office for Ebert, Deckow and Thompson', '+987654321', '456 Elm St', 'Barangay 2', 'Another City', 'Another Province', '67890', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(29, 1, 2024128762, NULL, 'Main Office for Nader LLC', '+123456789', '123 Main St', 'Barangay 1', 'Sample City', 'Sample Province', '12345', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(30, 2, 2024128762, NULL, 'Branch Office for Nader LLC', '+987654321', '456 Elm St', 'Barangay 2', 'Another City', 'Another Province', '67890', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(31, 1, 2024220992, NULL, 'Main Office for Ullrich Inc', '+123456789', '123 Main St', 'Barangay 1', 'Sample City', 'Sample Province', '12345', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(32, 2, 2024220992, NULL, 'Branch Office for Ullrich Inc', '+987654321', '456 Elm St', 'Barangay 2', 'Another City', 'Another Province', '67890', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(33, 1, 2024301502, NULL, 'Main Office for Jaskolski Group', '+123456789', '123 Main St', 'Barangay 1', 'Sample City', 'Sample Province', '12345', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(34, 2, 2024301502, NULL, 'Branch Office for Jaskolski Group', '+987654321', '456 Elm St', 'Barangay 2', 'Another City', 'Another Province', '67890', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(35, 1, 2024603707, NULL, 'Main Office for Lehner, Cummings and Feil', '+123456789', '123 Main St', 'Barangay 1', 'Sample City', 'Sample Province', '12345', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(36, 2, 2024603707, NULL, 'Branch Office for Lehner, Cummings and Feil', '+987654321', '456 Elm St', 'Barangay 2', 'Another City', 'Another Province', '67890', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `office_types`
--

CREATE TABLE `office_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `office_types`
--

INSERT INTO `office_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Department Office', '2024-09-28 02:16:05', NULL),
(2, 'Other Office', '2024-09-28 02:16:05', NULL);

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
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `college_id` bigint(20) UNSIGNED DEFAULT NULL,
  `chairperson_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dept_office_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `max_internships` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `college_id`, `chairperson_id`, `dept_office_id`, `name`, `max_internships`, `created_at`, `updated_at`) VALUES
(8, 2, 2019301502, 8, 'Bachelor of Science in Information Technology', 1, NULL, NULL),
(9, 1, NULL, 1, 'Bachelor of Science in Architecture', 0, NULL, NULL),
(10, 1, NULL, 2, 'Bachelor of Science in Civil Engineering', 0, NULL, NULL),
(11, 1, NULL, 3, 'Bachelor of Science in Mechanical Engineering', 0, NULL, NULL),
(12, 1, NULL, 4, 'Bachelor of Science in Computer Engineering', 0, NULL, NULL),
(13, 1, NULL, 5, 'Bachelor of Science in Geodetic Engineering', 0, NULL, NULL),
(14, 1, NULL, 6, 'Bachelor of Science in Electrical Engineering', 0, NULL, NULL),
(15, 1, NULL, 7, 'Bachelor of Science in Electronics Engineering', 0, NULL, NULL),
(16, 2, NULL, 9, 'Bachelor of Science in Technology Communication Management', 2, NULL, NULL),
(17, 2, NULL, 10, 'Bachelor of Science in Data Science', 2, NULL, NULL),
(18, 2, NULL, 11, 'Bachelor of Science in Computer Science', 1, NULL, NULL),
(19, 3, NULL, 12, 'Bachelor of Science in Applied Mathemathics', 0, NULL, NULL),
(20, 3, NULL, 13, 'Bachelor of Science in Applied Mathemathics', 0, NULL, NULL),
(21, 3, NULL, 14, 'Bachelor of Science in Applied Physics', 0, NULL, NULL),
(22, 3, NULL, 15, 'Bachelor of Science in Chemistry', 0, NULL, NULL),
(23, 3, NULL, 16, 'Bachelor of Science in Environmental Science', 0, NULL, NULL),
(24, 3, NULL, 17, 'Bachelor of Science in Food Technology', 0, NULL, NULL),
(25, 4, NULL, 18, 'Bachelor in Secondary Education Major in Science', 0, NULL, NULL),
(26, 4, NULL, 19, 'Bachelor in Secondary Education Major in Mathematics', 0, NULL, NULL),
(27, 4, NULL, 20, 'Bachelor in Technology and Livelihood Education', 0, NULL, NULL),
(28, 4, NULL, 21, 'Bachelor in Technical Vocational Teacher Education', 0, NULL, NULL),
(29, 5, NULL, 22, 'Bachelor of Science in Electronics Technology', 0, NULL, NULL),
(30, 5, NULL, 23, 'Bachelor of Science in Autotronics', 0, NULL, NULL),
(31, 5, NULL, 24, 'Bachelor of Science in Energy Systems and Management', 0, NULL, NULL),
(32, 5, NULL, 25, 'Bachelor of Science in Electro-Mechanical Technology', 0, NULL, NULL),
(33, 5, NULL, 26, 'Bachelor of Science in Manufacturing Engineering Technology', 0, NULL, NULL),
(34, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'chairperson', NULL, NULL),
(3, 'coordinator', NULL, NULL),
(4, 'company', NULL, NULL),
(5, 'dean', NULL, NULL),
(6, 'osa', NULL, NULL),
(7, 'student', NULL, NULL),
(8, 'supervisor', NULL, NULL);

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
('mActBfjCFpNTEQhvaOJINxMZKCY5Ch1llEbXJTxw', 2023301502, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3JPY3ZsV29rSDJyUTN6ZnhDb2RSWkoySVBMTW50RXJZYnNabXhJYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvdjEvY2hhaXJwZXJzb24vY29tcGFuaWVzIjt9fQ==', 1732266344);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pending', NULL, NULL),
(2, 'Approved', NULL, NULL),
(3, 'Rejected', NULL, NULL),
(4, 'Completed', NULL, NULL),
(5, 'Need Revisions', NULL, NULL),
(6, 'Withdrawn', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `program_id` bigint(20) UNSIGNED NOT NULL,
  `coordinator_id` bigint(20) UNSIGNED DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `isApplied` tinyint(1) NOT NULL DEFAULT 0,
  `isPending` tinyint(1) NOT NULL DEFAULT 0,
  `date_of_birth` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `program_id`, `coordinator_id`, `age`, `isApplied`, `isPending`, `date_of_birth`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2019301502, 2019301502, 28, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2020301502, 2020301502, 33, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024144487, 2024144487, 10, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024167787, 2024167787, 26, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024181178, 2024181178, 14, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024301502, 2024301502, 20, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024364980, 2024364980, 19, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024380394, 2024380394, 9, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024394828, 2024394828, 28, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024418123, 2024418123, 26, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024448275, 2024448275, 10, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024505973, 2024505973, 10, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024520524, 2024520524, 32, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024651285, 2024651285, 21, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024801078, 2024801078, 13, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024801718, 2024801718, 31, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024889959, 2024889959, 11, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL),
(2024971651, 2024971651, 31, NULL, NULL, 0, 0, NULL, NULL, '2024-09-28 02:16:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_skills`
--

CREATE TABLE `student_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `barangay` varchar(100) DEFAULT NULL,
  `city_municipality` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `email_verified_at`, `password`, `gender`, `phone_number`, `street`, `barangay`, `city_municipality`, `province`, `postal_code`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2019301502, 'David', 'Andrew', 'Johnson', 'david.johnson@email.com', '2024-09-28 02:16:07', '$2y$12$nf1zeAiyunwFpCEBmaTatey6wovzVgMwSMMjdSBWDUoqooC/QCq2a', 'male', '987-654-3210', 'Third Avenue', 'BarangayWest', 'MetroTown', 'NorthernProvince', '67890', NULL, NULL, NULL, NULL),
(2020301502, 'James', 'Michael', 'Smith', 'smith@email.com', '2024-09-28 02:16:07', '$2y$12$Ec0qMzdfv6FC/.28mZeNTuzAHGGbsV8OhUvmK7DB8EgFnnGeVHdUO', 'male', '123-456-7890', 'Second St', 'BarangayEast', 'UrbanCity', 'EasternProvince', '12345', NULL, NULL, NULL, NULL),
(2021301502, 'Liam', 'Javier', 'Garcia', 'garcia@email.com', '2024-09-28 02:16:05', '$2y$12$zXVTOJuXuvjGLwR5oH2ghu59KIn43rHSSy.Af9UiNV5KLUU/d9Qhe', 'male', '321-654-9870', 'Elm Street', 'BarangayEast', 'NewTown', 'EastProvince', '78901', NULL, NULL, NULL, NULL),
(2023301502, 'Hans Business', 'Instinct', 'Hello', 'businessSanchez@email.com', '2024-09-28 02:16:06', '$2y$12$/VHKXg0BfBVt5fktRsLTRe3mp3XGr0men6KWUF5Bypd0Tyf0rLahq', 'male', '123-456-789', 'StreetSample', 'BarangaySample', 'CitySample', 'ProvinceSample', '123', NULL, NULL, NULL, NULL),
(2024128762, 'Toby', 'Mitchell', 'Predovic', 'marques47@example.net', '2024-09-28 02:16:17', '$2y$12$Z6iOnS/kKU/BRwTsIlb4q.5enPmq4mp6V9ieRc0IAUbaVHf4ba28O', 'Female', '646-404-9224', '8492 Jarvis Route Suite 064', 'doloremque', 'North Austyn', 'Colorado', '33867-4417', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024129049, 'Fay', 'Stokes', 'Nicolas', 'crist.antonietta@example.org', '2024-09-28 02:16:23', '$2y$12$2dXzbjSvqsShrsemClvfGu4z2Qj8XNED9qz1Vrv6zOzUNpD7B10SG', 'Female', '845.531.6527', '226 Richmond Ridge', 'ea', 'Rauburgh', 'Kentucky', '64514-6867', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024144487, 'Layla', 'Nitzsche', 'Gorczany', 'tillman.yessenia@example.com', '2024-09-28 02:16:14', '$2y$12$LB48V6MZ.o82gaCGVpdt5e6OXtcyNmoLX/Xm/AyVSN3rzE0nDpHia', 'Female', '(435) 228-4505', '6895 Pasquale Mall Apt. 164', 'sit', 'Sauershire', 'Massachusetts', '23611-4296', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024154396, 'Vicky', 'Nikolaus', 'Rohan', 'hahn.dulce@example.net', '2024-09-28 02:16:16', '$2y$12$RNPDAmu1yoGRPXxI66m/HuHRAm1CTPOmQnRuubXdpXkJW.sMOb.V6', 'Male', '+1 (909) 444-1981', '2801 Eugene Garden Suite 941', 'sed', 'West Ray', 'Illinois', '95997', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024167787, 'Sylvan', NULL, 'Kuhlman', 'clinton.connelly@example.com', '2024-09-28 02:16:25', '$2y$12$HMlr0G/eefg/2ZHIPYNRoua2/b35rGNJeQG9.XKLWh5MQ1nE4rc2q', 'Female', '+15314039307', '18057 Vincent Lakes', 'voluptatibus', 'Morarfort', 'New York', '98573', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024179268, 'Amparo', NULL, 'Bechtelar', 'vito17@example.net', '2024-09-28 02:16:09', '$2y$12$MUHZt3QqLDDO.6k.v3hwPe5H5yF9vcA6brk15Cp9Je7F7y.j31tsy', 'Female', '+1.410.347.6982', '3471 Rippin Trafficway Suite 390', 'quod', 'Dimitriville', 'Arizona', '14735-2308', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024181178, 'Christina', 'Willms', 'Heller', 'dhills@example.net', '2024-09-28 02:16:11', '$2y$12$Fk12Og6g5SswRZjWBb6jb.XrLzMub.5I3RwtjNcG8l.SjffrvkoQ6', 'Male', '+1-704-881-8361', '1371 Spencer Isle', 'ipsa', 'Keatonside', 'Alabama', '81046', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024194147, 'Ryley', 'O\'Keefe', 'Olson', 'macy.fadel@example.com', '2024-09-28 02:16:08', '$2y$12$R7SRkpLiOgNOwCUusZI9PuKzxpfCb6d266j2Er4uojYqWJ0ehiwLu', 'Female', '225.214.8383', '938 Bergstrom Row Suite 317', 'sed', 'Langoshchester', 'Mississippi', '81267-5964', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024220992, 'Myrl', NULL, 'Friesen', 'tremblay.dariana@example.com', '2024-09-28 02:16:17', '$2y$12$2KIayNf9pukVVSTnDUvHceSUAJ77qQODTtnr3mhCs0mRabeMOW5Ju', 'Female', '+1.628.894.9540', '709 Effertz Fall Apt. 718', 'molestiae', 'East Giafort', 'Maine', '22662', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024250205, 'Sasha', 'Gutkowski', 'Roberts', 'keagan73@example.net', '2024-09-28 02:16:27', '$2y$12$k/pHxbhdJu8LQf8bBDEs8O6OUP/x4/bi.RTrKUYsBxOLe4GTVLD0e', 'Male', '657.328.4811', '807 Jo Island Suite 598', 'pariatur', 'West Sheridanside', 'Vermont', '23158-4227', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024262995, 'Sim', NULL, 'Yundt', 'blanda.odessa@example.org', '2024-09-28 02:16:26', '$2y$12$F9CxG7pHJuXa2QWN3I4kF.tQJPNoWCC7hfus6IFNiDKO8lwKH3PkO', 'Male', '573-747-5863', '719 Boris Turnpike', 'repellendus', 'West Virgie', 'Idaho', '80114', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024263656, 'Freddie', NULL, 'Reichel', 'brandon.yundt@example.com', '2024-09-28 02:16:13', '$2y$12$xAJKECDvYqY1kFMwnyKjTORzLNj.BDBW72Sd7siGXbh1Zt8vGM4em', 'Male', '915.983.1965', '13517 Conn Port', 'illo', 'Mossiechester', 'Oklahoma', '14249-3316', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024301502, 'Emily', 'Joan', 'Rodriguez', 'rodriguez@email.com', '2024-09-28 02:16:06', '$2y$12$CjtESqcKQJJcsc8IaREnu.LsP9/maj97aseBkyoUA2Rc/qqdF/cg6', 'female', '987-654-3210', 'Main St', 'BarangayCentral', 'MetroCity', 'CentralProvince', '45678', NULL, NULL, NULL, NULL),
(2024350632, 'Hardy', NULL, 'Klein', 'haley.cassin@example.com', '2024-09-28 02:16:18', '$2y$12$oZnfP61nplY2.1gde100Te5LgyfMAk6pWY9tFexFsMe5U.BV5YCUO', 'Male', '562.685.2312', '87340 Sarah Camp', 'consequuntur', 'South Derickton', 'Ohio', '76493', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024364980, 'Casey', 'Schneider', 'Murphy', 'miracle55@example.net', '2024-09-28 02:16:10', '$2y$12$6MITJIy/WsB/T0YmyhJEfOUrndYwQldQoDGDUg6quE3EAQW2ia1y.', 'Male', '(469) 395-5966', '1263 Renee Ridges Suite 012', 'ut', 'Port Mossie', 'Connecticut', '93596', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024375299, 'Sean', NULL, 'Schuppe', 'demetrius.zboncak@example.net', '2024-09-28 02:16:25', '$2y$12$dDyQ8M0K5i6csmRX80ZUSuoUGTl5Ok/vkD7zO2DExOh9ANS1vMJMu', 'Female', '(619) 572-8671', '44169 Jena Tunnel Suite 666', 'aliquam', 'Beiermouth', 'Montana', '66900', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024379113, 'Madelyn', NULL, 'Gaylord', 'amira32@example.com', '2024-09-28 02:16:23', '$2y$12$yQPKig0KJmwHiWLrJAp7h.X7jCCRC6axIoYi3646Uj37cvwy10m/K', 'Male', '1-520-587-7945', '1260 Alford Dam Apt. 798', 'et', 'Bradtkefort', 'New York', '13716-2379', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024380394, 'Gerda', 'Tremblay', 'Bernier', 'jerad12@example.com', '2024-09-28 02:16:15', '$2y$12$fGX3tNJeSWE6tpVkWmwM7.s82vxhEPnIph5EhqriFWsL4oF0WlVVC', 'Female', '+1 (727) 794-2724', '3579 Walter Wall', 'exercitationem', 'Port Charlene', 'Colorado', '40185', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024394828, 'Adam', NULL, 'Rowe', 'annetta.altenwerth@example.org', '2024-09-28 02:16:24', '$2y$12$t4dwAwOO9EvOehHC/9PilOtKXJv9OumBy5xeeHmegexD.4Jjyp1fW', 'Male', '734.942.0089', '240 Morissette Creek', 'laudantium', 'Jonestown', 'Nevada', '03292-0681', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024418123, 'Norene', NULL, 'Nitzsche', 'lkautzer@example.net', '2024-09-28 02:16:16', '$2y$12$zJn81MybIfwu6G02nNP/uuVIMtKNoJJULJBN3vHKpPzRsAzcKqDAe', 'Female', '+1 (339) 636-1760', '798 Dayna Path Suite 325', 'quae', 'Coystad', 'Rhode Island', '64574', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024446381, 'Maximillian', 'Brekke', 'King', 'mona.schaefer@example.org', '2024-09-28 02:16:21', '$2y$12$veDL4awG/CVtPhdCCGf.V.kBHcg0W239x5lTSmSuIUSGtGjmLwt7q', 'Female', '308-776-5571', '3263 Eloisa Oval', 'odit', 'West Roxanneport', 'Michigan', '90366-8737', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024448275, 'Rosalee', 'Zemlak', 'Gerlach', 'bmccullough@example.net', '2024-09-28 02:16:18', '$2y$12$2f3PhbbWcIOnhnO/WhCgFOR2duXBmOY0n5k35sxGgyoD/xRdzb.qq', 'Male', '1-619-949-5268', '636 Moen Coves Suite 285', 'aut', 'Lake Emilianoberg', 'Oklahoma', '20387', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024484025, 'Melody', NULL, 'Fritsch', 'xweimann@example.com', '2024-09-28 02:16:19', '$2y$12$cC//KfB125su6zWyHcyoC.TbHfDcB/d5wOYKTQnpz9vgJ8tI46mVy', 'Male', '1-323-786-5556', '2631 Anita Run', 'sint', 'West Friedrichborough', 'Maine', '72799', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024494330, 'Jakayla', NULL, 'Spinka', 'obins@example.org', '2024-09-28 02:16:27', '$2y$12$5OMjcV53Cq9ehWTJABoNG.pg5JMAwoI5Y8IqWyqe.XpQ1cGtUHcnW', 'Female', '+1-747-564-3549', '27125 Grady Pike Apt. 923', 'sit', 'Jacobsonport', 'Indiana', '56014-7758', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024495328, 'Chester', 'Pfannerstill', 'Miller', 'luisa12@example.net', '2024-09-28 02:16:26', '$2y$12$AdUmcbfuy4r7tgCw/7Uh2OqmU9JSwF.LYPWLJXRdRIbBbtODusg2.', 'Male', '929-904-7293', '9368 Hintz Common Apt. 751', 'similique', 'New Olaftown', 'Maine', '73478-9095', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024497605, 'Virginie', NULL, 'Mraz', 'isai.kozey@example.net', '2024-09-28 02:16:15', '$2y$12$Ab4R1Tv5KJdTiNlV8I17MezN1pXmE/kwKENYclF.LMyE4hPHhee56', 'Female', '(551) 378-3944', '3960 Madge Trail', 'aut', 'South Laverne', 'Maryland', '37695', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024505973, 'Abbigail', 'Nader', 'Zulauf', 'plemke@example.com', '2024-09-28 02:16:12', '$2y$12$UE8ROzBwj7wywv.GHlhZFOnQ6ZEJJA6zvSv7I8Z81P06mTDPofX/S', 'Female', '+1 (440) 982-0864', '826 Boyle Valleys Suite 423', 'cumque', 'Chadrickmouth', 'New York', '67585', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024509684, 'Alexie', 'Dietrich', 'Mertz', 'rhagenes@example.org', '2024-09-28 02:16:09', '$2y$12$CE3Q7f993pP6/kEzNczjKe2zumkl9IVVIZfeaAkYmNSHUING7DEiu', 'Female', '650-920-7373', '16336 Donnelly Land', 'sint', 'Lake Madisonborough', 'Illinois', '09055', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024520524, 'Alison', 'Armstrong', 'Schneider', 'ckonopelski@example.net', '2024-09-28 02:16:22', '$2y$12$M0pnC1k0jx4kMJIOs4Znuuxt/PtPv.j5C0oq.Bwu0kZnI3GVNj0/.', 'Female', '726-789-0876', '368 Hagenes Port', 'vel', 'New Rosina', 'Colorado', '90659', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024603707, 'Gerry', 'Brown', 'Hills', 'gziemann@example.com', '2024-09-28 02:16:26', '$2y$12$L2xfXGy5e5LRwfLyUvhTZ.SPoP1KuEdmKQiTylegRJ30TJBxC/ZeO', 'Female', '818-230-2478', '99345 Homenick Valleys', 'minus', 'South Eda', 'Kansas', '57962-9359', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024628640, 'Alexie', NULL, 'Casper', 'orville.lowe@example.org', '2024-09-28 02:16:25', '$2y$12$xmcYE84YFapGIQD51XW8heXcXfCLN3b8FOFEQQxNipIgCyFMFfDkq', 'Female', '+1.260.620.7187', '60370 Goodwin Freeway', 'dolore', 'North Vivienne', 'South Dakota', '14766', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024651285, 'Shaun', NULL, 'Shanahan', 'csenger@example.com', '2024-09-28 02:16:07', '$2y$12$vBBTasR7rjKrG5KPxtMpw.izsBOSjWkxiSnxgKCWGvK53DtkqvZtu', 'Female', '1-682-278-1938', '94726 Pfannerstill Summit', 'aperiam', 'South Zoey', 'Ohio', '61051', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024686666, 'Paige', NULL, 'Parker', 'ward.dickens@example.org', '2024-09-28 02:16:22', '$2y$12$yulxw.x7DUOcQHr2L/fGPO7O.YxXVTPasxxwXLtXdwJnqjsij9Ve.', 'Female', '+1-859-347-0587', '2861 Jerde Mount Suite 255', 'accusamus', 'North Bertrandhaven', 'Alabama', '56160-6712', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024690046, 'Arnold', NULL, 'Bogan', 'leffler.korbin@example.net', '2024-09-28 02:16:09', '$2y$12$GRsnBSV6KNiFpt.ISD/dxO/nsbUpKXzG9LiAEnz.4wQijNIgOjASu', 'Male', '920-290-1731', '181 Hulda Manors', 'et', 'Dickinsonfurt', 'Louisiana', '57831-1671', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024711061, 'Johnpaul', NULL, 'Schinner', 'fvolkman@example.com', '2024-09-28 02:16:20', '$2y$12$mlwtkEq1ASOCg5cdEcVF8uczDzzvw5sKfqHyjynlYblxjhGeaIn0u', 'Female', '740-913-6766', '87000 Unique Meadows Apt. 708', 'voluptatem', 'Cordellport', 'Rhode Island', '82348-9530', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024801078, 'Marilou', 'Bernhard', 'Grant', 'meagan74@example.org', '2024-09-28 02:16:19', '$2y$12$q.cQUpP/YNAYxYiJjp6Y9.3G.pVB1uoPOKnf7OfvjvW1gqCBhzm/S', 'Male', '781.831.6782', '702 Kacey Springs', 'in', 'East Daphnee', 'Colorado', '98876', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024801718, 'Patricia', 'Waters', 'Braun', 'elliott47@example.com', '2024-09-28 02:16:15', '$2y$12$S4XZMJAUpYOQEAUhAbXpe.CgYuOXfhLLVU6.gJIgrKeUE3DOBI8my', 'Female', '930.628.5870', '5541 Nikolaus Park Apt. 461', 'temporibus', 'North Everthaven', 'Vermont', '72879-8462', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024822520, 'Jack', 'Terry', 'Halvorson', 'gschroeder@example.com', '2024-09-28 02:16:08', '$2y$12$nNw7PZkWxKBRMqIPF4ru3u.vTtwA098Pwm8zRzVZBVq8dLjVTuAz.', 'Female', '+1-407-903-5941', '9778 Labadie Springs Apt. 863', 'delectus', 'Franeckiside', 'Hawaii', '08730', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024823475, 'Delta', NULL, 'Paucek', 'rupert.turner@example.com', '2024-09-28 02:16:11', '$2y$12$FLcoXjoXDVg1JGI2OckeL.5dRIqWwLvq3T8TDPLdnFcVbMAMsG3Hi', 'Female', '+1 (276) 844-2941', '5227 Janis Ville', 'omnis', 'Lesliehaven', 'Louisiana', '53869-7417', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024829242, 'Maegan', NULL, 'Halvorson', 'anais.hodkiewicz@example.com', '2024-09-28 02:16:21', '$2y$12$kxz/6.75aREpHnzOkWjDduLuaq78mwMc/OkAcOEPCv7G.SmrNvj6C', 'Female', '574.623.0876', '6379 Hansen Creek Apt. 555', 'et', 'Sipesfort', 'Georgia', '70529', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024830719, 'Herminio', NULL, 'Bednar', 'sean58@example.com', '2024-09-28 02:16:28', '$2y$12$5TvizLcs.MuNVYW9g/t/Vu7P4AVpSqR6rdr2JERTb.x7GjK0DcivW', 'Female', '+1 (503) 662-6337', '166 Quitzon Cape Apt. 678', 'iure', 'West Pedroborough', 'Hawaii', '42510-9064', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024835991, 'Nick', 'Mayer', 'Parisian', 'marian.mclaughlin@example.net', '2024-09-28 02:16:18', '$2y$12$tN7fkXPoCqPzv1l7cgcfUuCgCCTxa5lr/pVlJSWpdYfm1ZT9NwzyG', 'Male', '+1.912.210.9885', '1991 Eliezer Parkways Suite 875', 'quibusdam', 'West Loyton', 'Washington', '57102', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024841170, 'Leanne', NULL, 'Huel', 'abel30@example.com', '2024-09-28 02:16:27', '$2y$12$ZaFtmojfY0gSdhSZIILIfuOJTnJhdgx9bFM2qAM2.JpjmYmwE3Yjq', 'Male', '+12815626135', '20515 Cassie Court', 'sed', 'Baumbachfurt', 'California', '93829-2866', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024854889, 'Virginie', 'Stokes', 'Ankunding', 'herman.brennan@example.net', '2024-09-28 02:16:13', '$2y$12$QXm/Yf46HTkqirz99e4riOD4luPup743PFtCMPi9yzmkTUfovLjtq', 'Male', '1-689-525-0143', '484 Kirsten Lodge', 'ut', 'Hellerbury', 'Maine', '21537', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024860605, 'Minerva', 'Spencer', 'Boyer', 'pledner@example.com', '2024-09-28 02:16:10', '$2y$12$WqD5GldqoHvCla.d/xOu4.xnTUoUzGuW5w4wEOieYp0meLHf.epjO', 'Female', '+1.341.781.6141', '26067 Moen Shoal', 'quibusdam', 'Marquardtfurt', 'Kansas', '01424-6061', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024863700, 'Dallin', NULL, 'Franecki', 'kuhlman.kaia@example.com', '2024-09-28 02:16:20', '$2y$12$VhS9QgWO/vVkXE6aE/9eCewMwvbOB3ErU59SLnWNPbbn4EVPxZoGu', 'Male', '1-661-975-0702', '153 Bennie Extensions Apt. 242', 'provident', 'Jeffreyfurt', 'Rhode Island', '78727', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024889959, 'Roscoe', NULL, 'Greenholt', 'yadira.deckow@example.org', '2024-09-28 02:16:24', '$2y$12$1VEVZ2zQUfVbfWtvYM5NRulueO.nE//VAcy8vJRRqgMY0DmLOoRxy', 'Female', '+1 (380) 401-6531', '5283 Josie Pike Apt. 361', 'qui', 'New Jovanyfort', 'New Hampshire', '33844', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024944597, 'Rodger', 'Morissette', 'Rogahn', 'terrance.welch@example.net', '2024-09-28 02:16:08', '$2y$12$x3olktGTWhR7m0YC9xD8pO0FGZ1czxXweFjeU1Q0VHKI1YlP4wCwy', 'Male', '+1 (571) 733-5748', '257 Narciso Pass Apt. 700', 'adipisci', 'Spencerville', 'New Mexico', '33967-1233', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024957656, 'Thomas', NULL, 'Hackett', 'carmella.adams@example.net', '2024-09-28 02:16:16', '$2y$12$DMG2xiVDWnrUYMy2zrChSOCch20pJbJ84kaMpUIknYCnjVq4HeHty', 'Female', '281-871-5321', '3715 Marquardt Stravenue', 'culpa', 'Karlieburgh', 'Connecticut', '68132', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024971651, 'Audra', NULL, 'Adams', 'germaine.monahan@example.com', '2024-09-28 02:16:23', '$2y$12$TzXo3SX6uQ/MF5hbCiXBQ.bhHHdddjq.wquNZMUGKW7SWl13Cu6NW', 'Female', '+14586583343', '64311 Feest Well Apt. 068', 'et', 'VonRuedenfurt', 'North Dakota', '76750', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL),
(2024988704, 'Gabe', NULL, 'Kuvalis', 'nella.wehner@example.net', '2024-09-28 02:16:14', '$2y$12$j4kR2EVtXlAKJ6YcbwfCF.Mr/mU345EJSlGig6LzQYDf/4z.eSk9C', 'Male', '1-850-509-8825', '3299 Fisher Cliff Suite 072', 'veritatis', 'Port Lizaberg', 'Maryland', '97293-3777', NULL, '2024-09-28 02:16:28', '2024-09-28 02:16:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `deleted_at`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 2021301502, 1, NULL, NULL, NULL, NULL, NULL),
(2, 2023301502, 4, NULL, NULL, NULL, NULL, NULL),
(3, 2024301502, 4, NULL, NULL, NULL, NULL, NULL),
(4, 2020301502, 5, NULL, NULL, NULL, NULL, NULL),
(5, 2019301502, 2, NULL, NULL, NULL, NULL, NULL),
(6, 2019301502, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(7, 2020301502, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(8, 2023301502, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(9, 2023301502, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(10, 2024128762, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(11, 2024128762, 4, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(12, 2024129049, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(13, 2024129049, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(14, 2024144487, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(15, 2024154396, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(16, 2024154396, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(17, 2024167787, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(18, 2024179268, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(19, 2024179268, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(20, 2024181178, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(21, 2024194147, 5, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(22, 2024220992, 4, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(23, 2024220992, 5, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(24, 2024220992, 6, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(25, 2024250205, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(26, 2024250205, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(27, 2024262995, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(28, 2024262995, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(29, 2024263656, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(30, 2024263656, 8, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(31, 2024301502, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(32, 2024350632, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(33, 2024350632, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(34, 2024364980, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(35, 2024375299, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(36, 2024375299, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(37, 2024379113, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(38, 2024379113, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(39, 2024380394, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(40, 2024394828, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(41, 2024418123, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(42, 2024446381, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(43, 2024446381, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(44, 2024448275, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(45, 2024484025, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(46, 2024494330, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(47, 2024495328, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(48, 2024495328, 5, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(49, 2024497605, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(50, 2024497605, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(51, 2024505973, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(52, 2024509684, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(53, 2024509684, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(54, 2024520524, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(55, 2024603707, 4, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(56, 2024628640, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(57, 2024628640, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(58, 2024651285, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(59, 2024686666, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(60, 2024686666, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(61, 2024690046, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(62, 2024690046, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(63, 2024711061, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(64, 2024801078, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(65, 2024801718, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(66, 2024822520, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(67, 2024822520, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(68, 2024823475, 6, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(69, 2024823475, 8, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(70, 2024829242, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(71, 2024829242, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(72, 2024830719, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(73, 2024830719, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(74, 2024835991, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(75, 2024835991, 6, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(76, 2024841170, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(77, 2024841170, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(78, 2024854889, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(79, 2024854889, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(80, 2024860605, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(81, 2024860605, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(82, 2024863700, 5, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(83, 2024863700, 6, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(84, 2024863700, 8, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(85, 2024889959, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(86, 2024944597, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(87, 2024944597, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(88, 2024957656, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(89, 2024957656, 5, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(90, 2024957656, 6, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(91, 2024971651, 7, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(92, 2024988704, 2, NULL, '2024-09-28', '2025-09-28', NULL, NULL),
(93, 2024988704, 3, NULL, '2024-09-28', '2025-09-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `weekly_entries`
--

CREATE TABLE `weekly_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` bigint(20) UNSIGNED NOT NULL,
  `date_time` timestamp NULL DEFAULT NULL,
  `no_of_hours` int(11) DEFAULT NULL,
  `activity_tasks` text DEFAULT NULL,
  `learning` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_experiences`
--

CREATE TABLE `work_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `job_position` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `full_address` varchar(255) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_posts`
--

CREATE TABLE `work_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `office_id` bigint(20) UNSIGNED DEFAULT NULL,
  `work_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `responsibilities` text DEFAULT NULL,
  `qualifications` text DEFAULT NULL,
  `max_applicants` int(11) DEFAULT 1,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `work_duration` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_posts`
--

INSERT INTO `work_posts` (`id`, `office_id`, `work_type_id`, `title`, `responsibilities`, `qualifications`, `max_applicants`, `start_date`, `end_date`, `work_duration`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 27, 1, 'Plant Scientist', 'Customer Service Representative', 'Est officiis placeat dolores libero reprehenderit culpa quos quis. Impedit voluptates quis fugiat aut blanditiis molestiae qui. Voluptatem nihil porro repellat quidem autem. Sed exercitationem quisquam labore ullam possimus veritatis quia.', 10, '2024-10-02 02:16:29', '2024-11-20 02:16:29', '1 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(2, 27, 2, 'Petroleum Engineer', 'Fire Inspector', 'Qui rerum aperiam dolores et sint porro sit quasi. Corporis odio quia laboriosam et eum. Quia nam dolores et iure vel. Nobis doloribus et ut voluptatum ipsum labore delectus. Culpa sit dolor molestias aperiam et error.', 8, '2024-10-25 02:16:29', '2024-11-13 02:16:29', '4 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(3, 28, 1, 'Potter', 'Chemical Equipment Controller', 'Provident possimus consequatur qui delectus inventore. Animi excepturi suscipit exercitationem iusto inventore cupiditate ut quisquam. Nobis at sit tempora corporis voluptatem tempora.', 5, '2024-10-13 02:16:29', '2024-11-18 02:16:29', '1 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(4, 28, 2, 'Airframe Mechanic', 'Food Batchmaker', 'Ut provident qui molestiae ex inventore perspiciatis. Repellat quidem at id. Qui quo cupiditate illo nulla. Quo ratione dolore sapiente.', 3, '2024-10-08 02:16:29', '2024-11-26 02:16:29', '5 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(5, 28, 2, 'Interior Designer', 'Agricultural Crop Worker', 'Ex accusantium excepturi eveniet eos. Qui itaque commodi corrupti sed ad cupiditate. Et veritatis laborum tempora at ducimus numquam. Et aut et ut. Eaque aperiam at corrupti aut qui.', 8, '2024-10-19 02:16:29', '2024-10-30 02:16:29', '3 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(6, 28, 2, 'Producer', 'Night Security Guard', 'Inventore reprehenderit eos nisi officia dolores voluptatibus. Ad cumque dolores aut voluptas magnam. Dolorem nihil rerum molestiae omnis enim ullam alias.', 6, '2024-10-23 02:16:29', '2024-11-11 02:16:29', '4 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(7, 28, 2, 'Health Technologist', 'Washing Equipment Operator', 'Ab et commodi quo tenetur ab corrupti. Quisquam asperiores molestiae explicabo dolores sed doloribus totam. Dolorem in sit asperiores labore tempore modi quo. Illo a alias ea quis nihil deserunt.', 6, '2024-10-06 02:16:29', '2024-11-02 02:16:29', '1 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(8, 29, 2, 'Natural Sciences Manager', 'Interviewer', 'Rem eos natus eum ut rerum. Rerum sed sapiente culpa et placeat pariatur. Necessitatibus nesciunt quos deleniti repudiandae animi. Itaque tenetur est consequatur soluta.', 6, '2024-10-09 02:16:29', '2024-11-21 02:16:29', '6 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(9, 29, 2, 'Soil Conservationist', 'Vending Machine Servicer', 'Aliquid rem ea eligendi facilis est. Error dolor aperiam enim. Aspernatur itaque et eos quae.', 9, '2024-10-15 02:16:29', '2024-11-23 02:16:29', '6 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(10, 30, 2, 'Creative Writer', 'Sheriff', 'Eos sequi voluptas in beatae. Autem nobis quos animi magni ut iure laboriosam. Fugiat quos ex et sit tenetur quo.', 7, '2024-10-14 02:16:29', '2024-11-15 02:16:29', '2 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(11, 30, 2, 'Administrative Support Supervisors', 'Terrazzo Workes and Finisher', 'Et consequatur reprehenderit nulla eum. Tempore et rerum placeat. Vel aliquam sed illo et optio accusantium.', 10, '2024-10-09 02:16:29', '2024-11-13 02:16:29', '6 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(12, 31, 1, 'Outdoor Power Equipment Mechanic', 'Anthropology Teacher', 'Sequi itaque dolore necessitatibus est impedit aut. Quis distinctio placeat ut dolor. Ipsum quis eos qui labore. Libero quae et fuga praesentium tempore deserunt et.', 2, '2024-10-06 02:16:29', '2024-11-06 02:16:29', '2 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(13, 31, 1, 'Computer Software Engineer', 'Creative Writer', 'Libero natus accusantium eum magnam doloremque. Voluptatem rerum ab et. Quo ut cum occaecati. Sed est tenetur magni fugiat magni sint.', 5, '2024-10-24 02:16:29', '2024-11-12 02:16:29', '6 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(14, 31, 2, 'Mental Health Counselor', 'Mining Machine Operator', 'Sed aut consectetur placeat et repellendus. Qui illo rerum ab eum aspernatur unde quam. Velit id cum rerum facilis ab ducimus consequatur. Est officia et quia explicabo.', 4, '2024-10-17 02:16:29', '2024-11-11 02:16:29', '4 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(15, 31, 2, 'Plating Operator', 'Freight and Material Mover', 'Suscipit dolor libero provident. Tenetur quis dolorem nihil. In ut ut et sed nostrum qui eum ex.', 8, '2024-09-29 02:16:29', '2024-11-01 02:16:29', '5 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(16, 32, 1, 'Coil Winders', 'Machinery Maintenance', 'Ratione qui dolorem quidem aut non id. Iure sequi ad qui voluptatem culpa id. Odio unde quae voluptatibus dolor ut modi.', 5, '2024-10-06 02:16:29', '2024-11-08 02:16:29', '6 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(17, 32, 2, 'Photographic Reproduction Technician', 'Stationary Engineer OR Boiler Operator', 'Repudiandae sed aspernatur ut aliquid dolor sit. Et velit aut sunt et quae quia. Adipisci ullam eum sunt reprehenderit. Omnis enim sed velit quasi quis ut.', 9, '2024-10-13 02:16:29', '2024-11-21 02:16:29', '5 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(18, 32, 2, 'Spraying Machine Operator', 'MARCOM Director', 'Non officiis quisquam ut id perspiciatis aut. Aliquid debitis rem quaerat alias ut. Dicta iste et velit. Eos impedit voluptatum fugit vel sed ut.', 7, '2024-10-02 02:16:29', '2024-11-06 02:16:29', '3 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(19, 33, 1, 'Electronic Drafter', 'Environmental Science Technician', 'Sit quibusdam illo esse quia possimus amet. Voluptas aperiam expedita occaecati quas. Aut autem a voluptatem asperiores repudiandae officiis.', 9, '2024-10-20 02:16:29', '2024-11-07 02:16:29', '3 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(20, 33, 2, 'Executive Secretary', 'Food Preparation Worker', 'Iure sequi nam velit velit provident sit. Vitae atque excepturi id deleniti impedit reprehenderit. Non ut atque voluptas provident sint ipsa et. Reiciendis sit quis maiores sit adipisci deleniti reprehenderit.', 4, '2024-10-04 02:16:29', '2024-11-27 02:16:29', '3 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(21, 33, 2, 'Gas Plant Operator', 'Surgeon', 'Rerum dolorem voluptatem ut et quam omnis. Ut id nihil ex quis tempora commodi. Voluptatum quod animi nisi totam quis. Doloribus ex tempore nisi soluta vel eaque.', 7, '2024-10-25 02:16:29', '2024-11-02 02:16:29', '5 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(22, 34, 2, 'Human Resource Manager', 'Training Manager OR Development Manager', 'Harum odit blanditiis eveniet cupiditate ipsa vitae distinctio aut. Dolor quibusdam reiciendis ad voluptate facere. Accusantium autem dignissimos repellat sunt voluptas eos.', 8, '2024-10-28 02:16:29', '2024-11-20 02:16:29', '4 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(23, 34, 2, 'Epidemiologist', 'Office and Administrative Support Worker', 'Earum quas iusto veritatis ut maxime. Facere dolores ex reprehenderit sit numquam suscipit nam. Eveniet architecto in sunt illo.', 1, '2024-10-18 02:16:29', '2024-11-19 02:16:29', '1 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(24, 34, 2, 'Marketing Manager', 'Teacher Assistant', 'Itaque unde tempora optio. Atque eum quasi nisi. Nam rerum accusamus et atque.', 4, '2024-10-21 02:16:29', '2024-11-06 02:16:29', '1 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(25, 34, 2, 'Marking Machine Operator', 'Painter', 'Nihil corrupti commodi sed omnis cumque at. Nesciunt similique cumque ut et. Natus voluptatem id quia adipisci. Eligendi ea et qui et et.', 2, '2024-10-08 02:16:29', '2024-10-29 02:16:29', '2 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(26, 34, 1, 'Accountant', 'Freight Agent', 'Officiis tempore facere saepe assumenda. Debitis quos ut velit dolor sint. Et aut maiores quia facere.', 6, '2024-10-21 02:16:29', '2024-11-06 02:16:29', '3 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(27, 35, 1, 'Loan Interviewer', 'Forester', 'Similique voluptatem voluptas totam quo facere. Et repudiandae id ab sint facere et ipsam. Incidunt tempore qui blanditiis voluptatem sit error.', 4, '2024-10-25 02:16:29', '2024-11-27 02:16:29', '1 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(28, 35, 2, 'Trainer', 'Claims Taker', 'Aut et magnam a sed quae. Consequatur amet suscipit officiis enim unde aut autem. A quae tempore eaque explicabo tempore. Voluptatem sint tempora dolores ea.', 3, '2024-10-24 02:16:29', '2024-11-26 02:16:29', '4 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(29, 35, 2, 'Segmental Paver', 'Industrial-Organizational Psychologist', 'Error illo in odio quos enim. Esse velit impedit asperiores. Iure facilis eius sint.', 1, '2024-10-18 02:16:29', '2024-11-22 02:16:29', '5 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(30, 35, 1, 'Private Household Cook', 'Stringed Instrument Repairer and Tuner', 'Qui quis iure eum assumenda aut. Deserunt at itaque dolor.', 3, '2024-10-21 02:16:29', '2024-11-09 02:16:29', '3 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(31, 35, 2, 'Life Scientists', 'Sawing Machine Setter', 'Saepe quos quia rerum eaque. Accusamus est magni id autem. Dolorum enim laborum eius vitae.', 2, '2024-10-04 02:16:29', '2024-11-07 02:16:29', '5 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29'),
(32, 36, 2, 'Set Designer', 'Brickmason', 'Est rem maiores nostrum ea pariatur ut adipisci. Facilis asperiores doloremque aspernatur incidunt dolore dolor consequatur. Consequatur voluptatem consequatur omnis ea dolores corrupti vitae. Quidem commodi similique dolorem aut eum sunt.', 8, '2024-10-21 02:16:29', '2024-11-20 02:16:29', '4 months', NULL, '2024-09-28 02:16:29', '2024-09-28 02:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `work_skills`
--

CREATE TABLE `work_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_post_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_types`
--

CREATE TABLE `work_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_types`
--

INSERT INTO `work_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'internship', '2024-09-28 02:16:05', NULL),
(2, 'immersion', '2024-09-28 02:16:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applications_work_post_id_foreign` (`work_post_id`),
  ADD KEY `applications_student_id_foreign` (`student_id`),
  ADD KEY `applications_status_type_id_foreign` (`status_type_id`);

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
-- Indexes for table `campuses`
--
ALTER TABLE `campuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colleges_campus_id_foreign` (`campus_id`),
  ADD KEY `colleges_dean_id_foreign` (`dean_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_user_id_unique` (`user_id`);

--
-- Indexes for table `coordinators`
--
ALTER TABLE `coordinators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coordinators_user_id_foreign` (`user_id`),
  ADD KEY `coordinators_program_id_foreign` (`program_id`);

--
-- Indexes for table `document_submissions`
--
ALTER TABLE `document_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_submissions_application_id_foreign` (`application_id`),
  ADD KEY `document_submissions_doc_type_id_foreign` (`doc_type_id`),
  ADD KEY `document_submissions_doc_status_id_foreign` (`doc_status_id`);

--
-- Indexes for table `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `document_types_name_unique` (`name`);

--
-- Indexes for table `dtr_entries`
--
ALTER TABLE `dtr_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dtr_entries_application_id_foreign` (`application_id`),
  ADD KEY `dtr_entries_status_id_foreign` (`status_id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `educations_student_id_foreign` (`student_id`);

--
-- Indexes for table `endorsement_letter_requests`
--
ALTER TABLE `endorsement_letter_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `endorsement_letter_requests_work_post_id_foreign` (`work_post_id`),
  ADD KEY `endorsement_letter_requests_requested_by_id_foreign` (`requested_by_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_folder_id_foreign` (`folder_id`),
  ADD KEY `files_user_id_foreign` (`user_id`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folders_user_id_foreign` (`user_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_created_by_foreign` (`created_by`);

--
-- Indexes for table `group_memberships`
--
ALTER TABLE `group_memberships`
  ADD KEY `group_memberships_group_id_foreign` (`group_id`),
  ADD KEY `group_memberships_user_id_foreign` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_group_id_foreign` (`group_id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offices_office_type_id_foreign` (`office_type_id`),
  ADD KEY `offices_company_id_foreign` (`company_id`),
  ADD KEY `offices_supervisor_id_foreign` (`supervisor_id`);

--
-- Indexes for table `office_types`
--
ALTER TABLE `office_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `office_types_name_unique` (`name`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `programs_dept_office_id_unique` (`dept_office_id`),
  ADD KEY `programs_college_id_foreign` (`college_id`),
  ADD KEY `programs_chairperson_id_foreign` (`chairperson_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `skills_name_unique` (`name`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `statuses_name_unique` (`name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_user_id_unique` (`user_id`),
  ADD KEY `students_program_id_foreign` (`program_id`),
  ADD KEY `students_coordinator_id_foreign` (`coordinator_id`);

--
-- Indexes for table `student_skills`
--
ALTER TABLE `student_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_skills_skill_id_foreign` (`skill_id`),
  ADD KEY `student_skills_student_id_foreign` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `weekly_entries`
--
ALTER TABLE `weekly_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weekly_entries_application_id_foreign` (`application_id`);

--
-- Indexes for table `work_experiences`
--
ALTER TABLE `work_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_experiences_student_id_foreign` (`student_id`);

--
-- Indexes for table `work_posts`
--
ALTER TABLE `work_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_posts_office_id_foreign` (`office_id`),
  ADD KEY `work_posts_work_type_id_foreign` (`work_type_id`);

--
-- Indexes for table `work_skills`
--
ALTER TABLE `work_skills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `work_skills_skill_id_unique` (`skill_id`),
  ADD KEY `work_skills_work_post_id_foreign` (`work_post_id`);

--
-- Indexes for table `work_types`
--
ALTER TABLE `work_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campuses`
--
ALTER TABLE `campuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2024603708;

--
-- AUTO_INCREMENT for table `coordinators`
--
ALTER TABLE `coordinators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `document_submissions`
--
ALTER TABLE `document_submissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dtr_entries`
--
ALTER TABLE `dtr_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `endorsement_letter_requests`
--
ALTER TABLE `endorsement_letter_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `office_types`
--
ALTER TABLE `office_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2024971652;

--
-- AUTO_INCREMENT for table `student_skills`
--
ALTER TABLE `student_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2024988705;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `weekly_entries`
--
ALTER TABLE `weekly_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_experiences`
--
ALTER TABLE `work_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_posts`
--
ALTER TABLE `work_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `work_skills`
--
ALTER TABLE `work_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_types`
--
ALTER TABLE `work_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_status_type_id_foreign` FOREIGN KEY (`status_type_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `applications_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `applications_work_post_id_foreign` FOREIGN KEY (`work_post_id`) REFERENCES `work_posts` (`id`);

--
-- Constraints for table `colleges`
--
ALTER TABLE `colleges`
  ADD CONSTRAINT `colleges_campus_id_foreign` FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`),
  ADD CONSTRAINT `colleges_dean_id_foreign` FOREIGN KEY (`dean_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `coordinators`
--
ALTER TABLE `coordinators`
  ADD CONSTRAINT `coordinators_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `coordinators_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `document_submissions`
--
ALTER TABLE `document_submissions`
  ADD CONSTRAINT `document_submissions_application_id_foreign` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  ADD CONSTRAINT `document_submissions_doc_status_id_foreign` FOREIGN KEY (`doc_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `document_submissions_doc_type_id_foreign` FOREIGN KEY (`doc_type_id`) REFERENCES `document_types` (`id`);

--
-- Constraints for table `dtr_entries`
--
ALTER TABLE `dtr_entries`
  ADD CONSTRAINT `dtr_entries_application_id_foreign` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  ADD CONSTRAINT `dtr_entries_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `educations`
--
ALTER TABLE `educations`
  ADD CONSTRAINT `educations_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `endorsement_letter_requests`
--
ALTER TABLE `endorsement_letter_requests`
  ADD CONSTRAINT `endorsement_letter_requests_requested_by_id_foreign` FOREIGN KEY (`requested_by_id`) REFERENCES `students` (`user_id`),
  ADD CONSTRAINT `endorsement_letter_requests_work_post_id_foreign` FOREIGN KEY (`work_post_id`) REFERENCES `work_posts` (`id`);

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `folders`
--
ALTER TABLE `folders`
  ADD CONSTRAINT `folders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `group_memberships`
--
ALTER TABLE `group_memberships`
  ADD CONSTRAINT `group_memberships_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `group_memberships_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `offices`
--
ALTER TABLE `offices`
  ADD CONSTRAINT `offices_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `offices_office_type_id_foreign` FOREIGN KEY (`office_type_id`) REFERENCES `office_types` (`id`),
  ADD CONSTRAINT `offices_supervisor_id_foreign` FOREIGN KEY (`supervisor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_chairperson_id_foreign` FOREIGN KEY (`chairperson_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `programs_college_id_foreign` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`id`),
  ADD CONSTRAINT `programs_dept_office_id_foreign` FOREIGN KEY (`dept_office_id`) REFERENCES `offices` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_coordinator_id_foreign` FOREIGN KEY (`coordinator_id`) REFERENCES `coordinators` (`id`),
  ADD CONSTRAINT `students_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `student_skills`
--
ALTER TABLE `student_skills`
  ADD CONSTRAINT `student_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`),
  ADD CONSTRAINT `student_skills_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `weekly_entries`
--
ALTER TABLE `weekly_entries`
  ADD CONSTRAINT `weekly_entries_application_id_foreign` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`);

--
-- Constraints for table `work_experiences`
--
ALTER TABLE `work_experiences`
  ADD CONSTRAINT `work_experiences_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `work_posts`
--
ALTER TABLE `work_posts`
  ADD CONSTRAINT `work_posts_office_id_foreign` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`),
  ADD CONSTRAINT `work_posts_work_type_id_foreign` FOREIGN KEY (`work_type_id`) REFERENCES `work_types` (`id`);

--
-- Constraints for table `work_skills`
--
ALTER TABLE `work_skills`
  ADD CONSTRAINT `work_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`),
  ADD CONSTRAINT `work_skills_work_post_id_foreign` FOREIGN KEY (`work_post_id`) REFERENCES `work_posts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
