-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 30, 2017 at 05:15 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpegdevelopment`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2017-01-20 02:53:17', '2017-01-20 02:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(3) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `company_address` text NOT NULL,
  `company_profile` text,
  `company_taxidentification` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_address`, `company_profile`, `company_taxidentification`) VALUES
(1, 'PT. LUNTANG LANTUNG SEJAHTERA', 'Jl. Raya Penggilingan no.99 Cakung Jakarta Timur', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `departements`
--

CREATE TABLE `departements` (
  `departement_id` int(4) NOT NULL,
  `departement_code` varchar(4) NOT NULL,
  `departement_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departements`
--

INSERT INTO `departements` (`departement_id`, `departement_code`, `departement_name`) VALUES
(1, 'D001', 'BIRO'),
(2, 'D002', 'HRD'),
(3, 'D003', 'DIREKTUR UTAMA'),
(4, 'D004', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `NIP` varchar(15) NOT NULL,
  `employee_name` varchar(40) NOT NULL,
  `placeofbirth` varchar(200) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `gender` enum('L','P') NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text,
  `dateofentry` date DEFAULT NULL,
  `departement_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `user_id` int(5) NOT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  `mobilenumber` varchar(15) DEFAULT NULL,
  `NPWP` varchar(30) DEFAULT NULL,
  `religion_id` int(3) DEFAULT NULL,
  `ktpnumber` varchar(25) DEFAULT NULL,
  `accountnumber` varchar(20) DEFAULT NULL,
  `bank_id` int(15) DEFAULT NULL,
  `marital_id` int(3) DEFAULT NULL,
  `statusemployee_id` int(3) DEFAULT NULL,
  `time_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `photo_file_name` varchar(255) DEFAULT NULL,
  `photo_content_type` varchar(255) DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `NIP`, `employee_name`, `placeofbirth`, `dateofbirth`, `gender`, `email`, `address`, `dateofentry`, `departement_id`, `position_id`, `user_id`, `phonenumber`, `mobilenumber`, `NPWP`, `religion_id`, `ktpnumber`, `accountnumber`, `bank_id`, `marital_id`, `statusemployee_id`, `time_update`, `photo_file_name`, `photo_content_type`, `photo_file_size`, `photo_updated_at`) VALUES
(1, '1235', 'ANDEZ MAULANA', 'SUKABUMI', '1989-11-20', 'L', NULL, 'Jl.raya bekasi', '2013-11-02', 1, 1, 1, '(025) 565-6565', '058989898', '05.656.565.6-565.656', 1, '32323562335', '223232323', 1, 1, 1, '2017-01-27 10:59:33', '', '', 0, NULL),
(2, '6311230', 'Tata Sutiadi', 'Tasik', '1993-04-17', 'L', 'tatasutiadi@gmail.com', 'Cimahi', '2017-01-30', 4, 10, 2, '', '082225533544', '', 1, '', '', NULL, 1, 1, '2017-01-29 16:33:46', 'Tata_.png', 'image/png', 245391, '2017-01-29 16:33:42'),
(4, '32123123', 'Ehsan', 'Tasik', NULL, 'L', '', '', NULL, 3, 1, 4, '', '', '', NULL, '', '', NULL, NULL, 1, '2017-01-29 10:59:01', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_trainings`
--

CREATE TABLE `employee_trainings` (
  `training_id` int(4) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `training_date` date NOT NULL,
  `training_topic` varchar(100) DEFAULT NULL,
  `organizer` text,
  `training_result` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_trainings`
--

INSERT INTO `employee_trainings` (`training_id`, `employee_id`, `training_date`, `training_topic`, `organizer`, `training_result`) VALUES
(1, '2', '2017-01-29', 'Which Topic', 'Good', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `history_educations`
--

CREATE TABLE `history_educations` (
  `hemployee_id` int(4) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_year` varchar(20) NOT NULL,
  `end_year` varchar(20) NOT NULL,
  `placeeducation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_educations`
--

INSERT INTO `history_educations` (`hemployee_id`, `employee_id`, `start_year`, `end_year`, `placeeducation`) VALUES
(1, 2, '2000 - 2006', '', 'SD Negeri 2 Palembang'),
(2, 2, '2006 - 2007', '', 'SMP Negeri 3 Palembang'),
(3, 2, '2007 - 2010', '', 'SMA 1 Negeri Palembang');

-- --------------------------------------------------------

--
-- Table structure for table `master_bank`
--

CREATE TABLE `master_bank` (
  `bank_id` int(3) NOT NULL,
  `bank_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_bank`
--

INSERT INTO `master_bank` (`bank_id`, `bank_name`) VALUES
(1, 'BCA'),
(2, 'BRI'),
(3, 'MANDIRI'),
(4, 'CIMB'),
(5, 'BNI');

-- --------------------------------------------------------

--
-- Table structure for table `master_education`
--

CREATE TABLE `master_education` (
  `education_id` int(3) NOT NULL,
  `education_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_education`
--

INSERT INTO `master_education` (`education_id`, `education_name`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA/SMK/MA'),
(4, 'D3'),
(5, 'S1'),
(6, 'S2'),
(7, 'D1'),
(8, 'D2'),
(9, 'S2'),
(10, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `master_position`
--

CREATE TABLE `master_position` (
  `position_id` int(4) NOT NULL,
  `position_code` varchar(10) NOT NULL,
  `position_name` varchar(20) NOT NULL,
  `position_salary` varchar(25) NOT NULL DEFAULT '0',
  `position_allowance` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_position`
--

INSERT INTO `master_position` (`position_id`, `position_code`, `position_name`, `position_salary`, `position_allowance`) VALUES
(1, 'P001', 'Rekom', '5000000', '50000'),
(2, 'P002', 'Kepala Rekom', '3000000', '300000'),
(3, 'P003', 'Mgr.Rekom', '1500000', '150000'),
(4, 'P004', 'Kepala IT', '1200000', '500000'),
(10, 'P005', 'IT', '5000000', '300000'),
(11, 'P005', 'IT 1', '3520000', '220000'),
(19, 'P006', 'Manager', '50000000', '600000');

-- --------------------------------------------------------

--
-- Table structure for table `master_religion`
--

CREATE TABLE `master_religion` (
  `religion_id` int(3) NOT NULL,
  `religion_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_religion`
--

INSERT INTO `master_religion` (`religion_id`, `religion_name`) VALUES
(1, 'Islam'),
(2, 'Khatolik'),
(3, 'Kristen Protestan'),
(4, 'Hindu'),
(5, 'Budha');

-- --------------------------------------------------------

--
-- Table structure for table `microposts`
--

CREATE TABLE `microposts` (
  `id` int(11) NOT NULL,
  `content` text,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `microposts`
--

INSERT INTO `microposts` (`id`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'gfh', 1, '2017-01-23 13:20:34', '2017-01-23 13:20:34'),
(2, 'asd', 1, '2017-01-26 03:40:25', '2017-01-26 03:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20170120021506'),
('20170123124327'),
('20170123131234'),
('20170123132833');

-- --------------------------------------------------------

--
-- Table structure for table `status_employees`
--

CREATE TABLE `status_employees` (
  `statusemployee_id` int(3) NOT NULL,
  `statusemployee_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_employees`
--

INSERT INTO `status_employees` (`statusemployee_id`, `statusemployee_name`) VALUES
(1, 'Tetap'),
(2, 'Kontrak'),
(3, 'Magang');

-- --------------------------------------------------------

--
-- Table structure for table `status_maritals`
--

CREATE TABLE `status_maritals` (
  `marital_id` int(3) NOT NULL,
  `marital_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_maritals`
--

INSERT INTO `status_maritals` (`marital_id`, `marital_name`) VALUES
(1, 'Lajang'),
(2, 'Menikah'),
(3, 'Duda'),
(4, 'Janda');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salt_password` varchar(100) DEFAULT NULL,
  `auth_key` varchar(100) DEFAULT NULL,
  `language` varchar(2) NOT NULL DEFAULT 'ID',
  `role_id` int(3) DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `salt_password`, `auth_key`, `language`, `role_id`, `create_at`, `update_at`) VALUES
(1, 'Test', 'Test', 'Test', 'Test', '', NULL, '2017-01-20 00:00:00', '2017-01-20 00:00:00'),
(2, 'tatasutiadi', '$2a$10$COhvsZtehLNgkQ6T07c9xe', '$2a$10$COhvsZtehLNgkQ6T07c9xeYGN6ZwDs/PgPJiXneDG8E6OMt1VW81K', NULL, 'EN', NULL, '2017-01-29 22:28:52', '2017-01-29 22:28:52'),
(4, 'ehsan', '$2a$10$L9/nRfMrJDGx6a./tJvgRu', '$2a$10$L9/nRfMrJDGx6a./tJvgRuLG6hGk2VQnz/INNJRvFs.gQRAInyQN.', NULL, 'ID', NULL, '2017-01-29 17:59:01', '2017-01-29 17:59:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`departement_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employee_trainings`
--
ALTER TABLE `employee_trainings`
  ADD PRIMARY KEY (`training_id`);

--
-- Indexes for table `history_educations`
--
ALTER TABLE `history_educations`
  ADD PRIMARY KEY (`hemployee_id`);

--
-- Indexes for table `master_bank`
--
ALTER TABLE `master_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `master_education`
--
ALTER TABLE `master_education`
  ADD PRIMARY KEY (`education_id`);

--
-- Indexes for table `master_position`
--
ALTER TABLE `master_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `master_religion`
--
ALTER TABLE `master_religion`
  ADD PRIMARY KEY (`religion_id`);

--
-- Indexes for table `microposts`
--
ALTER TABLE `microposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `status_employees`
--
ALTER TABLE `status_employees`
  ADD PRIMARY KEY (`statusemployee_id`);

--
-- Indexes for table `status_maritals`
--
ALTER TABLE `status_maritals`
  ADD PRIMARY KEY (`marital_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `departements`
--
ALTER TABLE `departements`
  MODIFY `departement_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employee_trainings`
--
ALTER TABLE `employee_trainings`
  MODIFY `training_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `history_educations`
--
ALTER TABLE `history_educations`
  MODIFY `hemployee_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `master_bank`
--
ALTER TABLE `master_bank`
  MODIFY `bank_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `master_education`
--
ALTER TABLE `master_education`
  MODIFY `education_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `master_position`
--
ALTER TABLE `master_position`
  MODIFY `position_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `master_religion`
--
ALTER TABLE `master_religion`
  MODIFY `religion_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `microposts`
--
ALTER TABLE `microposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status_employees`
--
ALTER TABLE `status_employees`
  MODIFY `statusemployee_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `status_maritals`
--
ALTER TABLE `status_maritals`
  MODIFY `marital_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
