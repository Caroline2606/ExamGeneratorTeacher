-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Maj 2022, 17:53
-- Wersja serwera: 10.4.18-MariaDB
-- Wersja PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `exam_generator`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `apk_str`
--

CREATE TABLE `apk_str` (
  `ID` int(11) NOT NULL,
  `Zadanie` varchar(500) NOT NULL,
  `Odpowiedz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `apk_str_student_odp`
--

CREATE TABLE `apk_str_student_odp` (
  `ID` int(11) NOT NULL,
  `Odpowiedz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bazy_danych`
--

CREATE TABLE `bazy_danych` (
  `ID` int(11) NOT NULL,
  `Zadanie` varchar(500) NOT NULL,
  `Odpowiedz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bazy_danych_student_odp`
--

CREATE TABLE `bazy_danych_student_odp` (
  `ID` int(11) NOT NULL,
  `Odpowiedz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia`
--

CREATE TABLE `historia` (
  `ID` int(11) NOT NULL,
  `Zadanie` varchar(500) NOT NULL,
  `Odpowiedz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia_student_odp`
--

CREATE TABLE `historia_student_odp` (
  `ID` int(11) NOT NULL,
  `Odpowiedz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inf02`
--

CREATE TABLE `inf02` (
  `ID` int(11) NOT NULL,
  `Zadanie` varchar(500) NOT NULL,
  `Odpowiedz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inf02_student_odp`
--

CREATE TABLE `inf02_student_odp` (
  `ID` int(11) NOT NULL,
  `Odpowiedz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `matematyka`
--

CREATE TABLE `matematyka` (
  `ID` int(11) NOT NULL,
  `Zadanie` varchar(500) NOT NULL,
  `Odpowiedz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `matematyka_student_odp`
--

CREATE TABLE `matematyka_student_odp` (
  `ID` int(11) NOT NULL,
  `Odpowiedz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `polski`
--

CREATE TABLE `polski` (
  `ID` int(11) NOT NULL,
  `Zadanie` varchar(500) NOT NULL,
  `Odpowiedz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `polski_student_odp`
--

CREATE TABLE `polski_student_odp` (
  `ID` int(11) NOT NULL,
  `Odpowiedz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `apk_str`
--
ALTER TABLE `apk_str`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `apk_str_student_odp`
--
ALTER TABLE `apk_str_student_odp`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `bazy_danych`
--
ALTER TABLE `bazy_danych`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `bazy_danych_student_odp`
--
ALTER TABLE `bazy_danych_student_odp`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `historia_student_odp`
--
ALTER TABLE `historia_student_odp`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `inf02`
--
ALTER TABLE `inf02`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `inf02_student_odp`
--
ALTER TABLE `inf02_student_odp`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `matematyka`
--
ALTER TABLE `matematyka`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `matematyka_student_odp`
--
ALTER TABLE `matematyka_student_odp`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `polski`
--
ALTER TABLE `polski`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `polski_student_odp`
--
ALTER TABLE `polski_student_odp`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `apk_str`
--
ALTER TABLE `apk_str`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `apk_str_student_odp`
--
ALTER TABLE `apk_str_student_odp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `bazy_danych`
--
ALTER TABLE `bazy_danych`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `bazy_danych_student_odp`
--
ALTER TABLE `bazy_danych_student_odp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `historia`
--
ALTER TABLE `historia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `historia_student_odp`
--
ALTER TABLE `historia_student_odp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `inf02`
--
ALTER TABLE `inf02`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `inf02_student_odp`
--
ALTER TABLE `inf02_student_odp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `matematyka`
--
ALTER TABLE `matematyka`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `matematyka_student_odp`
--
ALTER TABLE `matematyka_student_odp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `polski`
--
ALTER TABLE `polski`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `polski_student_odp`
--
ALTER TABLE `polski_student_odp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
