-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2025 at 05:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mic`
--

-- --------------------------------------------------------

--
-- Table structure for table `absent`
--

CREATE TABLE `absent` (
  `sno` int(11) NOT NULL,
  `type` varchar(8) NOT NULL,
  `date` date NOT NULL,
  `reason` varchar(100) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `status` varchar(55) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absent`
--

INSERT INTO `absent` (`sno`, `type`, `date`, `reason`, `proof`, `status`) VALUES
(1, 'Leave', '2025-08-13', 'GENERAL LEAVE', 'proofs/leave_1.pdf', 'Approved'),
(2, 'OD', '2025-08-26', 'GIT MEET', 'proofs/leave_2.pdf', 'No OD is provided during CIA exams'),
(4, 'Leave', '2025-08-13', 'kk', '', 'op adikadha'),
(6, 'Leave', '2025-08-15', 'GENERAL LEAVE', 'leave_6.pdf', 'Approved'),
(7, 'OD', '2025-08-28', 'test file', 'leave_7.pdf', 'Approved'),
(8, 'OD', '2025-08-16', 'GENERAL LEAVE', 'proofs/leave_8.pdf', 'Approved'),
(9, 'OD', '2025-08-20', 'GENERAL LEAVE', '', 'Approved'),
(10, 'OD', '2025-08-21', 'GENERAL LEAVE teest', '', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `academics`
--

CREATE TABLE `academics` (
  `sno` int(11) NOT NULL,
  `course` varchar(75) NOT NULL,
  `institution` varchar(120) NOT NULL,
  `board` varchar(120) NOT NULL,
  `year` int(11) NOT NULL,
  `percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academics`
--

INSERT INTO `academics` (`sno`, `course`, `institution`, `board`, `year`, `percentage`) VALUES
(22, 'CSE', 'MKCE', 'ANNA UNIVERSITY', 2022, 89),
(36, 'HSC', 'GHSS', 'STATE BOARD', 2023, 91);

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `sno` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `relation` varchar(20) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`sno`, `name`, `gender`, `relation`, `mobile`) VALUES
(14, 'ARUN SANJEEV M S', 'Male', 'Mother', '9443355081'),
(15, 'LAKSHMANAN KAVITHA', 'Female', 'Mother', '9492633000'),
(17, 'M SENGOTTUVEL', 'Male', 'Father', '9443355081'),
(18, 'M S ARUN SANDEEP', 'Male', 'Brother', '7402733000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `regno` varchar(17) NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`regno`, `password`, `name`) VALUES
('927623BCS011', '9443355081', NULL),
('927623BCS012', 'ARUN', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absent`
--
ALTER TABLE `absent`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `academics`
--
ALTER TABLE `academics`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absent`
--
ALTER TABLE `absent`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `academics`
--
ALTER TABLE `academics`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
