-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2023 at 06:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collaboration`
--

-- --------------------------------------------------------

--
-- Table structure for table `collab_details`
--

CREATE TABLE `collab_details` (
  `id` int(255) NOT NULL,
  `notebook_id` int(255) NOT NULL,
  `person1` varchar(255) NOT NULL,
  `person2` varchar(255) NOT NULL,
  `person3` varchar(255) NOT NULL,
  `person4` varchar(255) NOT NULL,
  `person5` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collab_details`
--

INSERT INTO `collab_details` (`id`, `notebook_id`, `person1`, `person2`, `person3`, `person4`, `person5`, `password`) VALUES
(1, 1, '7337300596', '9992995994', '6754321895', '7869564532', '6543278964', '1234567'),
(2, 2, '7337300897', '9999298890', '7878787887', '1234554321', '9898976543', 'rev@123');

-- --------------------------------------------------------

--
-- Table structure for table `hidden_notes`
--

CREATE TABLE `hidden_notes` (
  `id` int(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `event_datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hidden_notes`
--

INSERT INTO `hidden_notes` (`id`, `heading`, `content`, `event_datetime`) VALUES
(1, 'passwords', 'amazon password:- 1234567', '2023-10-09 11:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `notebooks`
--

CREATE TABLE `notebooks` (
  `notebook_id` int(255) NOT NULL,
  `UserId` int(11) NOT NULL,
  `notebook` varchar(255) NOT NULL DEFAULT '',
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `recently_deleted` tinyint(1) DEFAULT 0,
  `event_datetime` datetime DEFAULT current_timestamp(),
  `completedDate` date DEFAULT current_timestamp(),
  `VerifiedDate` date NOT NULL DEFAULT current_timestamp(),
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `completeUserId` int(11) NOT NULL DEFAULT 0,
  `verifyUserId` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notebooks`
--

INSERT INTO `notebooks` (`notebook_id`, `UserId`, `notebook`, `heading`, `content`, `recently_deleted`, `event_datetime`, `completedDate`, `VerifiedDate`, `hidden`, `status`, `completeUserId`, `verifyUserId`) VALUES
(34, 1, '', 'Event', 'Christmas Eve nights are going held from 18th dec .', 0, '2023-12-11 09:55:48', '2023-12-11', '2023-12-11', 0, 'pending', 0, 0),
(35, 1, '', 'Project', 'Submission  of  project demo on 25th dec  ', 0, '2023-12-11 09:58:07', '2023-12-11', '2023-12-11', 0, 'pending', 0, 0),
(36, 1, '', 'Meeting ', 'Contact the client and note their instructions.', 0, '2023-12-11 10:00:39', '2023-12-11', '2023-12-11', 0, 'pending', 0, 0),
(37, 1, '', 'project overview', 'Project  Ui\nDatabase\nHTML\nCSS\nPhp\n\n', 0, '2023-12-11 10:02:24', '2023-12-11', '2023-12-11', 0, 'pending', 0, 0),
(38, 1, '', 'updation ', 'In integration and UI screens', 0, '2023-12-11 14:59:56', '2023-12-11', '2023-12-11', 0, 'pending', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `Id` int(11) NOT NULL,
  `Collab_Id` int(11) DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `requestedId` int(11) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `group_name` varchar(255) NOT NULL DEFAULT 'No group name',
  `username` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`Id`, `Collab_Id`, `UserId`, `requestedId`, `status`, `group_name`, `username`) VALUES
(306, 721437, 2, 2, 'accepted', 'waterways', 'maina'),
(307, 721437, 2, 1, 'accepted', 'waterways', 'revathi'),
(308, 721437, 2, 3, 'accepted', 'waterways', 'bharath'),
(309, 721437, 2, 7, 'pending', 'waterways', 'suresh'),
(310, 721437, 2, 8, 'accepted', 'waterways', 'radha'),
(311, 721437, 2, 10, 'accepted', 'waterways', 'karthick'),
(312, 721437, 2, 13, 'pending', 'waterways', 'Harish'),
(313, 721437, 2, 14, 'accepted', 'waterways', 'Naveen'),
(317, 280691, 1, 3, 'accepted', 'IOS group', 'Bharath'),
(318, 280691, 1, 7, 'pending', 'IOS group', 'Suresh'),
(319, 280691, 1, 8, 'accepted', 'IOS group', 'Radha'),
(320, 280691, 1, 10, 'accepted', 'IOS group', 'karthick'),
(328, 813387, 1, 1, 'accepted', 'Testing Group', 'Revathi'),
(329, 813387, 1, 1, 'pending', 'Testing Group', 'Revathi'),
(330, 813387, 1, 3, 'accepted', 'Testing Group', 'Bharath'),
(331, 813387, 1, 7, 'pending', 'Testing Group', 'Suresh'),
(332, 813387, 1, 15, 'pending', 'Testing Group', 'Kathir'),
(333, 813387, 1, 14, 'accepted', 'Testing Group', 'Naveen'),
(334, 813387, 1, 10, 'accepted', 'Testing Group', 'karthick'),
(354, 721437, 1, 13, 'pending', 'waterways', 'Harish'),
(361, 280691, 3, 1, 'pending', 'IOS group', 'Revathi'),
(362, 293372, 1, 1, 'accepted', 'Developer’s', 'Revathi'),
(363, 293372, 1, 2, 'accepted', 'Developer’s', 'Maina'),
(364, 293372, 1, 3, 'pending', 'Developer’s', 'Bharath'),
(365, 293372, 1, 7, 'pending', 'Developer’s', 'Suresh'),
(366, 293372, 1, 8, 'pending', 'Developer’s', 'Radha'),
(367, 293372, 1, 10, 'pending', 'Developer’s', 'karthick'),
(368, 293372, 1, 13, 'pending', 'Developer’s', 'Harish'),
(369, 335595, 1, 1, 'accepted', 'g', 'Revathi'),
(370, 335595, 1, 1, 'pending', 'g', 'Revathi'),
(371, 335595, 1, 2, 'pending', 'g', 'Maina'),
(372, 335595, 1, 3, 'pending', 'g', 'Bharath'),
(373, 335595, 1, 7, 'pending', 'g', 'Suresh');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `UserId` int(50) NOT NULL,
  `username` varchar(250) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`UserId`, `username`, `phone_number`, `password`) VALUES
(1, 'Revathi', '7337300596', 'revathi'),
(2, 'Maina', '9992995993', 'maina'),
(3, 'Bharath', '1234567899', '123'),
(7, 'Suresh', '9295755423', '1234'),
(8, 'Radha', '232323454545', 'radha'),
(10, 'karthick', '9364712843', '12345'),
(13, 'Harish', '9472954801', '12345678'),
(14, 'Naveen', '8420152843', 'nav123'),
(15, 'Kathir', '9264826501', '123'),
(16, 'ram', '9992995993', 'ram');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Collab_Id` int(11) NOT NULL,
  `assigned_id` int(11) NOT NULL DEFAULT 0,
  `task_issued` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `completed_id` int(11) NOT NULL DEFAULT 0,
  `verified_id` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `group_name` varchar(255) NOT NULL DEFAULT '',
  `active_date` date NOT NULL DEFAULT '0000-00-00',
  `completed_date` date NOT NULL DEFAULT '0000-00-00',
  `verified_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_Id`, `UserId`, `Collab_Id`, `assigned_id`, `task_issued`, `status`, `completed_id`, `verified_id`, `date`, `group_name`, `active_date`, `completed_date`, `verified_date`) VALUES
(9, 1, 48932, 1, 'Start working', 'completed', 1, 0, '2023-11-29', 'Group 2', '0000-00-00', '2023-11-30', '0000-00-00'),
(15, 1, 48932, 1, 'Start again', 'completed', 1, 1, '2023-11-29', 'Group 2', '2023-12-08', '2023-12-08', '2023-11-30'),
(21, 1, 48932, 0, 'Walk', 'active', 0, 0, '2023-12-01', '', '0000-00-00', '0000-00-00', '0000-00-00'),
(22, 1, 123, 0, 'roam', 'verified', 1, 1, '2023-12-01', '', '0000-00-00', '2023-12-01', '2023-12-02'),
(23, 1, 48932, 1, 'checkingwifi', 'active', 0, 0, '2023-12-01', '', '2023-12-01', '0000-00-00', '0000-00-00'),
(24, 1, 48932, 1, 'dancing', 'active', 0, 0, '2023-12-01', '', '2023-12-02', '0000-00-00', '0000-00-00'),
(25, 1, 48932, 0, 'fall', 'completed', 0, 0, '2023-12-01', '', '0000-00-00', '0000-00-00', '0000-00-00'),
(27, 1, 123498, 0, 'llddd', 'verified', 0, 1, '2023-12-01', '', '0000-00-00', '0000-00-00', '2023-12-01'),
(28, 1, 48932, 0, 'rrffdd', 'verified', 0, 0, '2023-12-01', '', '0000-00-00', '0000-00-00', '0000-00-00'),
(30, 1, 48932, 0, 'ch', 'completed', 0, 0, '2023-12-01', '', '0000-00-00', '0000-00-00', '0000-00-00'),
(33, 1, 123, 0, 'Works', 'pending', 0, 0, '2023-12-02', 'BTBH', '0000-00-00', '0000-00-00', '0000-00-00'),
(34, 1, 123498, 0, 'Rsdbf', 'pending', 0, 0, '2023-12-02', 'xyz', '0000-00-00', '0000-00-00', '0000-00-00'),
(35, 1, 123, 0, 'Bfdvs', 'pending', 0, 0, '2023-12-02', 'BTBH', '0000-00-00', '0000-00-00', '0000-00-00'),
(38, 2, 778991, 3, 'Revathi', 'completed', 3, 0, '2023-12-08', 'waterways', '2023-12-11', '2023-12-11', '0000-00-00'),
(43, 1, 257908, 0, 'Project demo', 'pending', 0, 0, '2023-12-11', 'Ida', '0000-00-00', '0000-00-00', '0000-00-00'),
(50, 3, 123456, 1, 'Complete the demo', 'verified', 1, 2, '2023-12-11', 'xyz', '2023-12-11', '2023-12-11', '2023-12-11'),
(52, 3, 123456, 3, 'Vgderth', 'verified', 8, 8, '2023-12-11', 'xyz', '2023-12-11', '2023-12-11', '2023-12-11'),
(53, 3, 123456, 8, 'Pizza', 'verified', 2, 2, '2023-12-11', 'xyz', '2023-12-11', '2023-12-11', '2023-12-11'),
(54, 3, 123456, 1, 'Burger', 'active', 0, 0, '2023-12-11', 'xyz', '2023-12-11', '0000-00-00', '0000-00-00'),
(55, 2, 123456, 1, 'Buzzzz', 'active', 0, 0, '2023-12-11', 'xyz', '2023-12-11', '0000-00-00', '0000-00-00'),
(57, 1, 280691, 1, 'Submit the demo', 'active', 0, 0, '2023-12-11', 'IOS group', '2023-12-11', '0000-00-00', '0000-00-00'),
(58, 1, 280691, 8, 'Complete the UI Design', 'verified', 2, 2, '2023-12-11', 'IOS group', '2023-12-11', '2023-12-11', '2023-12-11'),
(59, 1, 280691, 2, 'Submit the daily report', 'active', 0, 0, '2023-12-11', 'IOS group', '2023-12-11', '0000-00-00', '0000-00-00'),
(60, 1, 280691, 0, 'Complete the designing part for XYZ project', 'pending', 0, 0, '2023-12-11', 'IOS group', '0000-00-00', '0000-00-00', '0000-00-00'),
(61, 1, 280691, 8, 'Submit the project overview', 'active', 0, 0, '2023-12-11', 'IOS group', '2023-12-11', '0000-00-00', '0000-00-00'),
(62, 1, 956785, 1, 'Complete the database orientation', 'completed', 1, 0, '2023-12-11', 'Web Developers', '2023-12-11', '2023-12-11', '0000-00-00'),
(63, 1, 956785, 0, 'Design the userinterface', 'pending', 0, 0, '2023-12-11', 'Web Developers', '0000-00-00', '0000-00-00', '0000-00-00'),
(64, 1, 956785, 8, 'Get approval and rectify the changes', 'active', 0, 0, '2023-12-11', 'Web Developers', '2023-12-11', '0000-00-00', '0000-00-00'),
(65, 1, 956785, 8, 'Prepare the presentation', 'active', 0, 0, '2023-12-11', 'Web Developers', '2023-12-11', '0000-00-00', '0000-00-00'),
(66, 8, 721437, 1, 'Check the requirements ', 'completed', 1, 0, '2023-12-11', 'waterways', '2023-12-12', '2023-12-12', '0000-00-00'),
(67, 8, 721437, 1, 'Submit the project overview', 'completed', 1, 0, '2023-12-11', 'waterways', '2023-12-12', '2023-12-12', '0000-00-00'),
(68, 8, 771200, 3, 'Submit the Event  production details ', 'active', 0, 0, '2023-12-11', 'Module Batch 2', '2023-12-12', '0000-00-00', '0000-00-00'),
(69, 8, 771200, 0, 'Complete the Eve arrangements', 'pending', 0, 0, '2023-12-11', 'Module Batch 2', '0000-00-00', '0000-00-00', '0000-00-00'),
(70, 8, 771200, 0, 'Arrange the guestlist for presentation', 'pending', 0, 0, '2023-12-11', 'Module Batch 2', '0000-00-00', '0000-00-00', '0000-00-00'),
(71, 8, 771200, 0, 'Presentation', 'pending', 0, 0, '2023-12-11', 'Module Batch 2', '0000-00-00', '0000-00-00', '0000-00-00'),
(72, 1, 956785, 0, 'B', 'pending', 0, 0, '2023-12-12', 'Web Developers', '0000-00-00', '0000-00-00', '0000-00-00'),
(73, 3, 813387, 0, 'Send me the module  presentation schedule ', 'pending', 0, 0, '2023-12-12', 'Testing Group', '0000-00-00', '0000-00-00', '0000-00-00'),
(74, 3, 813387, 0, 'Submit the report', 'pending', 0, 0, '2023-12-12', 'Testing Group', '0000-00-00', '0000-00-00', '0000-00-00'),
(75, 3, 813387, 0, 'Finish the final corrections', 'pending', 0, 0, '2023-12-12', 'Testing Group', '0000-00-00', '0000-00-00', '0000-00-00'),
(76, 3, 721437, 1, 'Project demo', 'active', 0, 0, '2023-12-12', 'waterways', '2023-12-12', '0000-00-00', '0000-00-00'),
(77, 3, 721437, 0, 'UI sample design', 'pending', 0, 0, '2023-12-12', 'waterways', '0000-00-00', '0000-00-00', '0000-00-00'),
(78, 3, 721437, 0, 'Database connections', 'pending', 0, 0, '2023-12-12', 'waterways', '0000-00-00', '0000-00-00', '0000-00-00'),
(79, 3, 280691, 0, 'Submit the demo ', 'pending', 0, 0, '2023-12-12', 'IOS group', '0000-00-00', '0000-00-00', '0000-00-00'),
(80, 3, 280691, 0, 'Check the integration. Finish the final presentation. ', 'pending', 0, 0, '2023-12-12', 'IOS group', '0000-00-00', '0000-00-00', '0000-00-00'),
(81, 2, 293372, 0, 'Submit the report', 'pending', 0, 0, '2023-12-12', 'Developer’s', '0000-00-00', '0000-00-00', '0000-00-00'),
(82, 2, 293372, 0, 'Prepare the presentation and submit it before noon', 'pending', 0, 0, '2023-12-12', 'Developer’s', '0000-00-00', '0000-00-00', '0000-00-00'),
(83, 1, 721437, 0, 'G', 'pending', 0, 0, '2023-12-12', 'waterways', '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `todo_id` int(255) NOT NULL,
  `UserId` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(6) DEFAULT 'undone',
  `reminder` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`todo_id`, `UserId`, `content`, `date`, `status`, `reminder`) VALUES
(59, 1, 'submission', '2023-12-11 10:04:06', 'undone', '2023-12-25 08:40:00'),
(60, 1, 'Demo Completion', '2023-12-11 10:04:51', 'undone', '2023-12-18 10:30:00'),
(61, 1, 'Exercise', '2023-12-11 10:05:40', 'undone', '2023-12-12 18:00:00'),
(62, 1, 'Grocery Shopping', '2023-12-11 10:06:43', 'done', '0000-00-00 00:00:00'),
(63, 2, 'walking', '2023-12-12 13:14:06', 'undone', '2023-12-12 05:10:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collab_details`
--
ALTER TABLE `collab_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hidden_notes`
--
ALTER TABLE `hidden_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notebooks`
--
ALTER TABLE `notebooks`
  ADD PRIMARY KEY (`notebook_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_Id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`todo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collab_details`
--
ALTER TABLE `collab_details`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hidden_notes`
--
ALTER TABLE `hidden_notes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notebooks`
--
ALTER TABLE `notebooks`
  MODIFY `notebook_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `UserId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `todo_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
