-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 31. 20:32
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `ub2023`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `runners`
--

CREATE TABLE `runners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `speed` time NOT NULL,
  `token` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `teamId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `runners`
--

INSERT INTO `runners` (`id`, `firstName`, `lastName`, `speed`, `token`, `isAdmin`, `teamId`, `created_at`, `updated_at`) VALUES
(1, 'Zoltán', 'Sisák', '06:00:00', '111111111', 1, 1, '2023-03-31 07:28:33', '2023-03-31 07:28:33'),
(2, 'Zoltán', 'Szepesi', '06:10:00', '222222222', 0, 1, '2023-03-31 07:28:33', '2023-03-31 07:28:33'),
(3, 'Tibor', 'Nagy', '06:00:00', '333333333', 0, 1, '2023-03-31 07:28:33', '2023-03-31 07:28:33'),
(4, 'Balázs', 'Acenet', '06:00:00', '444444444', 0, 1, '2023-03-31 07:28:33', '2023-03-31 07:28:33'),
(5, 'Ottó', 'Dalos', '06:20:00', '555555555', 0, 1, '2023-03-31 07:28:33', '2023-03-31 07:28:33'),
(6, 'Lajos', 'Vlasics', '05:30:00', '666666666', 0, 1, '2023-03-31 07:28:33', '2023-03-31 07:28:33'),
(7, 'Edit', 'Bodnár', '06:00:00', '777777777', 0, 1, '2023-03-31 07:28:33', '2023-03-31 07:28:33'),
(8, 'Attila', 'Kirsch', '06:10:00', '888888888', 0, 1, '2023-03-31 07:28:33', '2023-03-31 07:28:33'),
(9, 'Benjámin', 'Darvas', '06:00:00', '999999999', 0, 1, '2023-03-31 07:28:33', '2023-03-31 07:28:33'),
(10, 'József', 'Kovács', '06:00:00', '000000000', 0, 1, '2023-03-31 07:28:33', '2023-03-31 07:28:33');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `runner_stage`
--

CREATE TABLE `runner_stage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `runner_id` bigint(20) UNSIGNED NOT NULL,
  `stage_id` bigint(20) UNSIGNED NOT NULL,
  `handoverTime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `runner_stage`
--

INSERT INTO `runner_stage` (`id`, `runner_id`, `stage_id`, `handoverTime`) VALUES
(163, 1, 6, NULL),
(164, 1, 8, NULL),
(165, 1, 13, NULL),
(166, 1, 29, NULL),
(167, 1, 52, NULL),
(168, 2, 17, NULL),
(169, 2, 40, NULL),
(170, 2, 53, NULL),
(171, 2, 54, NULL),
(172, 3, 5, NULL),
(173, 3, 16, NULL),
(174, 3, 32, NULL),
(175, 3, 47, NULL),
(176, 3, 51, NULL),
(177, 4, 2, NULL),
(178, 4, 3, NULL),
(179, 4, 12, NULL),
(180, 4, 23, NULL),
(181, 4, 45, NULL),
(182, 5, 14, NULL),
(183, 5, 22, NULL),
(184, 5, 31, NULL),
(185, 5, 48, NULL),
(186, 5, 49, NULL),
(187, 6, 21, NULL),
(188, 6, 25, NULL),
(189, 6, 28, NULL),
(190, 6, 30, NULL),
(191, 6, 50, NULL),
(192, 7, 10, NULL),
(193, 7, 20, NULL),
(194, 7, 34, NULL),
(195, 7, 41, NULL),
(196, 7, 42, NULL),
(197, 8, 27, NULL),
(198, 8, 33, NULL),
(199, 8, 35, NULL),
(200, 8, 38, NULL),
(201, 8, 39, NULL),
(202, 9, 4, NULL),
(203, 9, 9, NULL),
(204, 9, 18, NULL),
(205, 9, 24, NULL),
(206, 9, 43, NULL),
(207, 10, 7, NULL),
(208, 10, 19, NULL),
(209, 10, 26, NULL),
(210, 10, 36, NULL),
(211, 10, 37, NULL),
(212, 1, 11, NULL),
(213, 1, 15, NULL),
(214, 1, 44, NULL),
(215, 1, 46, NULL),
(216, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `stages`
--

CREATE TABLE `stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startingLocation` varchar(255) NOT NULL,
  `arrivalLocation` varchar(255) NOT NULL,
  `distance` double(8,2) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `stages`
--

INSERT INTO `stages` (`id`, `startingLocation`, `arrivalLocation`, `distance`, `name`) VALUES
(1, 'Balatonfüred', 'Aszófő', 7.00, 'NHKV'),
(2, 'Aszófő', 'Fövenyes', 4.50, 'MARKET'),
(3, 'Fövenyes', 'Balatonalakli', 4.50, ''),
(4, 'Balatonalakli', 'Zánka Unk', 3.70, 'BOROTALCO '),
(5, 'Zánka Unk', 'Zánka', 2.90, 'SUZUKI'),
(6, 'Zánka', 'Balatonszepezd', 3.70, 'PRIMAVERA'),
(7, 'Balatonszepezd', 'Révfülöp kelet', 3.10, 'NICOFLEX'),
(8, 'Révfülöp kelet', 'Révfülöp nyugat', 1.80, 'OTP MOBIL'),
(9, 'Révfülöp nyugat', 'Ábrahámhegy ', 5.30, 'MEDVE SAJT'),
(10, 'Ábrahámhegy ', 'Badacsonyörs Varga pincészet', 3.10, 'VARGA'),
(11, 'Badacsonyörs Varga pincészet', 'Badacsony', 5.00, 'MOZGÁSVILÁG'),
(12, 'Badacsony', 'Badacsonytördemic', 5.00, 'KORONÁS CUKOR'),
(13, 'Badacsonytördemic', 'Szigliget', 3.40, ''),
(14, 'Szigliget', 'Balatongyörök', 7.60, 'NN'),
(15, 'Balatongyörök', 'Balatongyörök 2', 2.80, 'SWISS'),
(16, 'Balatongyörök 2', 'Vonyarcvashegy', 3.40, 'BRIDGESTONE'),
(17, 'Vonyarcvashegy', 'Gyenesdiás', 2.20, 'GUKMIFLEX'),
(18, 'Gyenesdiás', 'Keszthely Bikás strand', 1.70, 'UNITED SHIPPING '),
(19, 'Keszthely Bikás strand', 'Keszthely', 3.10, 'TESCO'),
(20, 'Keszthely', 'Fenékpuszta', 4.80, ''),
(21, 'Fenékpuszta', 'Balatonberény fogadó', 4.30, 'BALATONMAN TRAINING TEAM'),
(22, 'Balatonberény fogadó', 'Balatonberény', 2.90, 'SAUCONY '),
(23, 'Balatonberény', 'Balatonmáriafürdő nyugat', 3.80, 'SPIRIT HOTEL'),
(24, 'Balatonmáriafürdő nyugat', 'Balatonmáriafürdő kelet', 5.20, 'SMARTEQ  '),
(25, 'Balatonmáriafürdő kelet', 'Balatonfenyves nyugat', 1.60, 'RÁDIÓ 1'),
(26, 'Balatonfenyves nyugat', 'Balatonfenyves', 1.80, 'TRILAK'),
(27, 'Balatonfenyves', 'Alsóbélatelep', 4.60, 'GYERMELYI'),
(28, 'Alsóbélatelep', 'Fonyód', 3.30, 'NN'),
(29, 'Fonyód', 'Fonyódliget', 3.20, 'LAVAZZA'),
(30, 'Fonyódliget', 'Balatonboglár', 5.30, 'TOYOTA'),
(31, 'Balatonboglár', 'Balatohboglár kelet', 1.90, 'FILMIO'),
(32, 'Balatohboglár kelet', 'Balatonlelle nyugat', 2.50, 'HELL'),
(33, 'Balatonlelle nyugat', 'Balatonlelle kelet', 2.00, 'BRFK'),
(34, 'Balatonlelle kelet', 'Balatonszemes', 5.20, 'ECOFAMILY'),
(35, 'Balatonszemes', 'Balatonszárszó', 5.00, 'KATASZTRÓFAVÉDELEM'),
(36, 'Balatonszárszó', 'Balatonföldvár', 3.90, ''),
(37, 'Balatonföldvár', 'Balatonföldvár strand', 1.70, 'MOM SPORT'),
(38, 'Balatonföldvár strand', 'Szántód', 1.60, 'ALDI'),
(39, 'Szántód', 'Zamárdi', 4.30, 'MOL NAGYON BALATON'),
(40, 'Zamárdi', 'Balatonszéplak', 5.30, 'ENERGOFISH'),
(41, 'Balatonszéplak', 'Siófok nyugat', 2.20, 'TESCO II'),
(42, 'Siófok nyugat', 'Siófok kelet', 6.00, 'DREHER'),
(43, 'Siófok kelet', 'Siófok-Sóstó', 4.50, 'DL'),
(44, 'Siófok-Sóstó', 'Balatonvilágos parti út', 3.30, 'MOM SPORT '),
(45, 'Balatonvilágos parti út', 'Balatonvilágos', 2.20, ''),
(46, 'Balatonvilágos', 'Balatonakarattya', 5.00, 'LIPTON '),
(47, 'Balatonakarattya', 'Balatonkenese', 6.10, 'BWT'),
(48, 'Balatonkenese', 'Balatonfűzfő', 5.50, 'KNORR BREMSE'),
(49, 'Balatonfűzfő', 'Balatonalmádi', 6.40, 'MVM'),
(50, 'Balatonalmádi', 'Balatonalmádi strand', 3.00, ''),
(51, 'Balatonalmádi strand', 'Alsóörs', 5.60, 'SAMSUNG EXPERIENCE STORE'),
(52, 'Alsóörs', 'Csopak', 4.80, 'BALATONI ÉLMÉNYPARK'),
(53, 'Csopak', 'Balatonfüred Probio', 4.10, ''),
(54, 'Balatonfüred Probio', 'Balatonfüred befutó', 3.80, 'ANNAGORA AQUAPARK');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `contactEmail` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `plannedStartingTime` datetime NOT NULL,
  `startingTime` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `teams`
--

INSERT INTO `teams` (`id`, `name`, `contactEmail`, `location`, `plannedStartingTime`, `startingTime`, `created_at`, `updated_at`) VALUES
(1, 'Cisco XO', 'odalos@cisco.com', 'Budapest', '2023-04-20 16:24:43', NULL, '2023-03-31 15:48:12', '2023-03-31 15:48:12'),
(2, 'MagicRunners', 'cgusikowski@gmail.com', 'Cegléd', '2023-04-03 04:52:37', NULL, '2023-03-31 15:48:12', '2023-03-31 15:48:12');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `runners`
--
ALTER TABLE `runners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `runners_token_unique` (`token`);

--
-- A tábla indexei `runner_stage`
--
ALTER TABLE `runner_stage`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `runners`
--
ALTER TABLE `runners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `runner_stage`
--
ALTER TABLE `runner_stage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT a táblához `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT a táblához `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
