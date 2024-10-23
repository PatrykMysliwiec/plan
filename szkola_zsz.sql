-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 23, 2024 at 07:29 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `szkola zsz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciele`
--

CREATE TABLE `nauczyciele` (
  `ID` int(11) NOT NULL,
  `Nauczyciele` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `nauczyciele`
--

INSERT INTO `nauczyciele` (`ID`, `Nauczyciele`) VALUES
(1, 'W.Szafraniec (WS)'),
(2, 'A.Iwańska (AI)'),
(3, 'G.Bogusz (GB)'),
(4, 'E.Brońska (EB)'),
(5, 'K.Flądro (KF)'),
(6, 'J.Forczek (JF)'),
(7, 'B.Forczek-Serafin (BF)'),
(8, 'J.Gagatek (GA)'),
(9, 'B.Gryzło (BG)'),
(10, 'M.Gucwa (MG)'),
(11, 'T.Gucwa (TG)'),
(12, 'J.Igielski (JI)'),
(13, 'K.Janusz (KJ)'),
(14, 'B.Jasińska (BJ)'),
(15, 'I.Kalisz (IK)'),
(16, 'P.Kruczek (PK)'),
(17, 'P.Kuk (PA)'),
(18, 'P.Łebski (PŁ)'),
(19, 'T.Magiera (TM)'),
(20, 'K.Paluch (KP)'),
(21, 'R.Pękala (RP)'),
(22, 'P.Ptaszkowski (PP)'),
(23, 'A.Skórska (SÓ)'),
(24, 'T.Skórski (SK)'),
(25, 'J.Średniawa (JŚ)'),
(26, 'R.Święs (RŚ)'),
(27, 'S.Szafraniec (SZ)'),
(28, 'S.Szczepanek (SS)'),
(29, 'P.Szura (PS)'),
(30, 'J.Wiejaczka (WI)'),
(31, 'J.Wiejaczka (JW)'),
(32, 'E.Wołkowicz (EW)'),
(33, 'J.Zborowska (JZ)');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oddzialy`
--

CREATE TABLE `oddzialy` (
  `ID` int(11) NOT NULL,
  `oddzialy` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `oddzialy`
--

INSERT INTO `oddzialy` (`ID`, `oddzialy`) VALUES
(1, '5aT'),
(2, '4aT'),
(3, '3aT'),
(4, '3bT'),
(5, '3asb'),
(6, '3bsb'),
(7, '2Ta'),
(8, '2asb'),
(9, '2bsb'),
(10, '1Ta'),
(11, '1SB');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sale`
--

CREATE TABLE `sale` (
  `ID` int(11) NOT NULL,
  `Sale` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`ID`, `Sale`) VALUES
(1, '9'),
(2, '11'),
(3, '21 inf'),
(4, '18'),
(5, '19'),
(6, '17 inf'),
(7, '24 inf'),
(8, '25'),
(9, '26'),
(10, '27'),
(11, '28'),
(12, '29'),
(13, 'gim1'),
(14, 'gim2'),
(15, '20'),
(16, '16');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `nauczyciele`
--
ALTER TABLE `nauczyciele`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `oddzialy`
--
ALTER TABLE `oddzialy`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nauczyciele`
--
ALTER TABLE `nauczyciele`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `oddzialy`
--
ALTER TABLE `oddzialy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
