-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2023 at 01:48 PM
-- Server version: 8.0.32
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ub2023`
--

-- --------------------------------------------------------

--
-- Table structure for table `Runner`
--

CREATE TABLE `Runner` (
  `id` int NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teamId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Runner`
--

INSERT INTO `Runner` (`id`, `firstName`, `lastName`, `pace`, `teamId`, `createdAt`, `updatedAt`) VALUES
(1, 'Zoltán', 'Sisák', '06:00', 1, '2023-04-21 13:47:01.363', '2023-04-21 13:47:01.363'),
(2, 'Zoltán', 'Szepesi', '06:10', 1, '2023-04-21 13:47:01.363', '2023-04-21 13:47:01.363'),
(3, 'Tibor', 'Nagy', '06:00', 1, '2023-04-21 13:47:01.363', '2023-04-21 13:47:01.363'),
(4, 'Balázs', 'Acenet', '06:00', 1, '2023-04-21 13:47:01.363', '2023-04-21 13:47:01.363'),
(5, 'Ottó', 'Dalos', '06:20', 1, '2023-04-21 13:47:01.363', '2023-04-21 13:47:01.363'),
(6, 'Lajos', 'Vlasics', '05:30', 1, '2023-04-21 13:47:01.363', '2023-04-21 13:47:01.363'),
(7, 'Edit', 'Bodnár', '06:00', 1, '2023-04-21 13:47:01.363', '2023-04-21 13:47:01.363'),
(8, 'Attila', 'Kirsch', '06:10', 1, '2023-04-21 13:47:01.363', '2023-04-21 13:47:01.363'),
(9, 'Benjámin', 'Darvas', '06:00', 1, '2023-04-21 13:47:01.363', '2023-04-21 13:47:01.363'),
(10, 'József', 'Kovács', '06:00', 1, '2023-04-21 13:47:01.363', '2023-04-21 13:47:01.363');

-- --------------------------------------------------------

--
-- Table structure for table `RunnerStage`
--

CREATE TABLE `RunnerStage` (
  `id` int NOT NULL,
  `runnerId` int NOT NULL,
  `stageId` int NOT NULL,
  `handoverTime` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `RunnerStage`
--

INSERT INTO `RunnerStage` (`id`, `runnerId`, `stageId`, `handoverTime`) VALUES
(1, 10, 8, NULL),
(2, 6, 2, NULL),
(3, 6, 4, NULL),
(4, 6, 5, NULL),
(5, 1, 6, NULL),
(6, 5, 1, NULL),
(7, 6, 3, NULL),
(8, 5, 7, NULL),
(9, 3, 9, NULL),
(10, 3, 10, NULL),
(11, 7, 13, NULL),
(12, 6, 11, NULL),
(13, 4, 14, NULL),
(14, 3, 12, NULL),
(15, 10, 15, NULL),
(16, 2, 17, NULL),
(17, 6, 18, NULL),
(18, 7, 20, NULL),
(19, 7, 24, NULL),
(20, 1, 23, NULL),
(21, 10, 19, NULL),
(22, 1, 22, NULL),
(23, 10, 21, NULL),
(24, 8, 16, NULL),
(25, 3, 25, NULL),
(26, 4, 27, NULL),
(27, 7, 26, NULL),
(28, 1, 28, NULL),
(29, 2, 29, NULL),
(30, 4, 30, NULL),
(31, 7, 32, NULL),
(32, 7, 33, NULL),
(33, 9, 31, NULL),
(34, 7, 34, NULL),
(35, 4, 35, NULL),
(36, 1, 36, NULL),
(37, 4, 37, NULL),
(38, 4, 38, NULL),
(39, 10, 42, NULL),
(40, 5, 39, NULL),
(41, 10, 41, NULL),
(42, 5, 40, NULL),
(43, 4, 44, NULL),
(44, 10, 45, NULL),
(45, 5, 46, NULL),
(46, 6, 43, NULL),
(47, 5, 47, NULL),
(48, 7, 48, NULL),
(49, 6, 49, NULL),
(50, 2, 50, NULL),
(51, 1, 51, NULL),
(52, 7, 52, NULL),
(53, 2, 53, NULL),
(54, 10, 54, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Stage`
--

CREATE TABLE `Stage` (
  `id` int NOT NULL,
  `startingLocation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrivalLocation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` decimal(10,2) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Stage`
--

INSERT INTO `Stage` (`id`, `startingLocation`, `arrivalLocation`, `distance`, `name`) VALUES
(1, 'Balatonfüred', 'Aszófő', '7.00', 'NHKV'),
(2, 'Aszófő', 'Fövenyes', '4.50', 'MARKET'),
(3, 'Fövenyes', 'Balatonalakli', '4.50', ''),
(4, 'Balatonalakli', 'Zánka Unk', '3.70', 'BOROTALCO '),
(5, 'Zánka Unk', 'Zánka', '2.90', 'SUZUKI'),
(6, 'Zánka', 'Balatonszepezd', '3.70', 'PRIMAVERA'),
(7, 'Balatonszepezd', 'Révfülöp kelet', '3.10', 'NICOFLEX'),
(8, 'Révfülöp kelet', 'Révfülöp nyugat', '1.80', 'OTP MOBIL'),
(9, 'Révfülöp nyugat', 'Ábrahámhegy ', '5.30', 'MEDVE SAJT'),
(10, 'Ábrahámhegy ', 'Badacsonyörs Varga pincészet', '3.10', 'VARGA'),
(11, 'Badacsonyörs Varga pincészet', 'Badacsony', '5.00', 'MOZGÁSVILÁG'),
(12, 'Badacsony', 'Badacsonytördemic', '5.00', 'KORONÁS CUKOR'),
(13, 'Badacsonytördemic', 'Szigliget', '3.40', ''),
(14, 'Szigliget', 'Balatongyörök', '7.60', 'NN'),
(15, 'Balatongyörök', 'Balatongyörök 2', '2.80', 'SWISS'),
(16, 'Balatongyörök 2', 'Vonyarcvashegy', '3.40', 'BRIDGESTONE'),
(17, 'Vonyarcvashegy', 'Gyenesdiás', '2.20', 'GUKMIFLEX'),
(18, 'Gyenesdiás', 'Keszthely Bikás strand', '1.70', 'UNITED SHIPPING '),
(19, 'Keszthely Bikás strand', 'Keszthely', '3.10', 'TESCO'),
(20, 'Keszthely', 'Fenékpuszta', '4.80', ''),
(21, 'Fenékpuszta', 'Balatonberény fogadó', '4.30', 'BALATONMAN TRAINING TEAM'),
(22, 'Balatonberény fogadó', 'Balatonberény', '2.90', 'SAUCONY '),
(23, 'Balatonberény', 'Balatonmáriafürdő nyugat', '3.80', 'SPIRIT HOTEL'),
(24, 'Balatonmáriafürdő nyugat', 'Balatonmáriafürdő kelet', '5.20', 'SMARTEQ  '),
(25, 'Balatonmáriafürdő kelet', 'Balatonfenyves nyugat', '1.60', 'RÁDIÓ 1'),
(26, 'Balatonfenyves nyugat', 'Balatonfenyves', '1.80', 'TRILAK'),
(27, 'Balatonfenyves', 'Alsóbélatelep', '4.60', 'GYERMELYI'),
(28, 'Alsóbélatelep', 'Fonyód', '3.30', 'NN'),
(29, 'Fonyód', 'Fonyódliget', '3.20', 'LAVAZZA'),
(30, 'Fonyódliget', 'Balatonboglár', '5.30', 'TOYOTA'),
(31, 'Balatonboglár', 'Balatohboglár kelet', '1.90', 'FILMIO'),
(32, 'Balatohboglár kelet', 'Balatonlelle nyugat', '2.50', 'HELL'),
(33, 'Balatonlelle nyugat', 'Balatonlelle kelet', '2.00', 'BRFK'),
(34, 'Balatonlelle kelet', 'Balatonszemes', '5.20', 'ECOFAMILY'),
(35, 'Balatonszemes', 'Balatonszárszó', '5.00', 'KATASZTRÓFAVÉDELEM'),
(36, 'Balatonszárszó', 'Balatonföldvár', '3.90', ''),
(37, 'Balatonföldvár', 'Balatonföldvár strand', '1.70', 'MOM SPORT'),
(38, 'Balatonföldvár strand', 'Szántód', '1.60', 'ALDI'),
(39, 'Szántód', 'Zamárdi', '4.30', 'MOL NAGYON BALATON'),
(40, 'Zamárdi', 'Balatonszéplak', '5.30', 'ENERGOFISH'),
(41, 'Balatonszéplak', 'Siófok nyugat', '2.20', 'TESCO II'),
(42, 'Siófok nyugat', 'Siófok kelet', '6.00', 'DREHER'),
(43, 'Siófok kelet', 'Siófok-Sóstó', '4.50', 'DL'),
(44, 'Siófok-Sóstó', 'Balatonvilágos parti út', '3.30', 'MOM SPORT '),
(45, 'Balatonvilágos parti út', 'Balatonvilágos', '2.20', ''),
(46, 'Balatonvilágos', 'Balatonakarattya', '5.00', 'LIPTON '),
(47, 'Balatonakarattya', 'Balatonkenese', '6.10', 'BWT'),
(48, 'Balatonkenese', 'Balatonfűzfő', '5.50', 'KNORR BREMSE'),
(49, 'Balatonfűzfő', 'Balatonalmádi', '6.40', 'MVM'),
(50, 'Balatonalmádi', 'Balatonalmádi strand', '3.00', ''),
(51, 'Balatonalmádi strand', 'Alsóörs', '5.60', 'SAMSUNG EXPERIENCE STORE'),
(52, 'Alsóörs', 'Csopak', '4.80', 'BALATONI ÉLMÉNYPARK'),
(53, 'Csopak', 'Balatonfüred Probio', '4.10', ''),
(54, 'Balatonfüred Probio', 'Balatonfüred befutó', '3.80', 'ANNAGORA AQUAPARK');

-- --------------------------------------------------------

--
-- Table structure for table `Team`
--

CREATE TABLE `Team` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plannedStartingTime` datetime(3) DEFAULT NULL,
  `startingTime` datetime(3) DEFAULT NULL,
  `accessCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Team`
--

INSERT INTO `Team` (`id`, `name`, `contactEmail`, `plannedStartingTime`, `startingTime`, `accessCode`, `createdAt`, `updatedAt`) VALUES
(1, 'Cisco XO', 'team1@example.com', '2023-04-21 13:47:01.355', NULL, '123456789', '2023-04-21 13:47:01.363', '2023-04-21 13:47:01.363'),
(2, 'Team 2', 'team2@example.com', NULL, NULL, '987654321', '2023-04-21 13:47:11.794', '2023-04-21 13:47:11.794');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Runner`
--
ALTER TABLE `Runner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Runner_teamId_fkey` (`teamId`);

--
-- Indexes for table `RunnerStage`
--
ALTER TABLE `RunnerStage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `RunnerStage_runnerId_fkey` (`runnerId`),
  ADD KEY `RunnerStage_stageId_fkey` (`stageId`);

--
-- Indexes for table `Stage`
--
ALTER TABLE `Stage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Team`
--
ALTER TABLE `Team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_username_key` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Runner`
--
ALTER TABLE `Runner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `RunnerStage`
--
ALTER TABLE `RunnerStage`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `Stage`
--
ALTER TABLE `Stage`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `Team`
--
ALTER TABLE `Team`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Runner`
--
ALTER TABLE `Runner`
  ADD CONSTRAINT `Runner_teamId_fkey` FOREIGN KEY (`teamId`) REFERENCES `Team` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `RunnerStage`
--
ALTER TABLE `RunnerStage`
  ADD CONSTRAINT `RunnerStage_runnerId_fkey` FOREIGN KEY (`runnerId`) REFERENCES `Runner` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `RunnerStage_stageId_fkey` FOREIGN KEY (`stageId`) REFERENCES `Stage` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
