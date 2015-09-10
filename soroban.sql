-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Wrz 2015, 01:51
-- Wersja serwera: 5.6.24
-- Wersja PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `soroban`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klucz`
--

CREATE TABLE IF NOT EXISTS `klucz` (
  `zestaw` int(11) NOT NULL,
  `nr_pyt` int(11) DEFAULT NULL,
  `nr_odp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `klucz`
--

INSERT INTO `klucz` (`zestaw`, `nr_pyt`, `nr_odp`) VALUES
(1, 1, 'B'),
(1, 2, 'A'),
(1, 3, 'A'),
(1, 4, 'D'),
(1, 5, 'B'),
(1, 6, 'B'),
(1, 7, 'C'),
(1, 8, 'B'),
(1, 9, 'D'),
(1, 10, 'C'),
(1, 1, 'B'),
(1, 2, 'A'),
(1, 3, 'A'),
(1, 4, 'D'),
(1, 5, 'B'),
(1, 6, 'B'),
(1, 7, 'C'),
(1, 8, 'B'),
(1, 9, 'D'),
(1, 10, 'C');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odpowiedzi`
--

CREATE TABLE IF NOT EXISTS `odpowiedzi` (
  `id_odp` int(11) NOT NULL,
  `nr_odp` int(11) NOT NULL,
  `nr_pyt` int(11) DEFAULT NULL,
  `tresc` varchar(255) DEFAULT NULL,
  `zestaw` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `odpowiedzi`
--

INSERT INTO `odpowiedzi` (`id_odp`, `nr_odp`, `nr_pyt`, `tresc`, `zestaw`) VALUES
(1, 1, 1, '57', 1),
(2, 2, 1, '61', 1),
(3, 3, 1, '51', 1),
(4, 4, 1, '41', 1),
(5, 1, 2, '7', 1),
(6, 2, 2, '6', 1),
(7, 3, 2, '5', 1),
(8, 4, 2, '8', 1),
(9, 1, 3, '60466176', 1),
(10, 2, 3, '827739', 1),
(11, 3, 3, '19288392', 1),
(12, 4, 3, '3884910', 1),
(13, 1, 4, '19', 1),
(14, 2, 4, '21', 1),
(15, 3, 4, '15', 1),
(16, 4, 4, '17', 1),
(17, 1, 5, 'Królowi Salomonowi', 1),
(18, 2, 5, 'Pitagorasowi', 1),
(19, 3, 5, 'Św. Hieronimowi', 1),
(20, 4, 5, 'Pascalowi', 1),
(21, 1, 6, '1,5 kg', 1),
(22, 2, 6, '2 kg', 1),
(23, 3, 6, '1 kg	', 1),
(24, 4, 6, '2,5 kg', 1),
(25, 1, 7, 'Blaise Pascal', 1),
(26, 2, 7, 'Stefan Banach', 1),
(27, 3, 7, 'Albert Einstein', 1),
(28, 4, 7, 'Isaac Newton', 1),
(29, 1, 8, '31 grudnia 1999', 1),
(30, 2, 8, '31 grudnia 2000	', 1),
(31, 3, 8, '31 grudnia 2001', 1),
(32, 4, 8, '31 grudnia 1899', 1),
(33, 1, 9, '1213', 1),
(34, 2, 9, '1203', 1),
(35, 3, 9, '1313', 1),
(36, 4, 9, '1303', 1),
(37, 1, 10, 'pryliard', 1),
(38, 2, 10, 'prymol', 1),
(39, 3, 10, 'googol', 1),
(40, 4, 10, 'prymol pryliardów', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podanaodp`
--

CREATE TABLE IF NOT EXISTS `podanaodp` (
  `id_pod` int(11) NOT NULL,
  `podana` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `podanaodp`
--

INSERT INTO `podanaodp` (`id_pod`, `podana`) VALUES
(1, 'B');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE IF NOT EXISTS `pytania` (
  `id_pyt` int(11) NOT NULL,
  `zestaw` int(11) NOT NULL,
  `nr_pyt` int(11) NOT NULL,
  `tresc` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pytania`
--

INSERT INTO `pytania` (`id_pyt`, `zestaw`, `nr_pyt`, `tresc`) VALUES
(1, 1, 1, '1. Ile wynosi 17 razy 3?'),
(2, 1, 2, '2. Ile wynosi suma oczek na przeciwległych ściankach typowej kostki do gry?'),
(3, 1, 3, '3. Ile wynosi sze?? do pot?gi dziesi?tej?'),
(4, 1, 4, '4. Jaka b?dzie nast?pna liczba w tym ci?gu: 2,3,5,7,11,13?'),
(5, 1, 5, '5. Komu przypisywane jest autorstwo tabliczki mno?enia?'),
(6, 1, 6, '6. Jedna ceg?a wa?y kilogram i pó? ceg?y. Ile wa?y ceg?a?'),
(7, 1, 7, '7. Który znany uczony urodzi? si? w dzie? liczby Pi? (14 Marca)'),
(8, 1, 8, '8. Który dzie? by? ostatnim dniem XX wieku?'),
(9, 1, 9, '9. Ile wynosi suma 738 + 565?'),
(10, 1, 10, '10. Jak nazywa się dziesięć do potęgi setnej?');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tabe_wynikow`
--

CREATE TABLE IF NOT EXISTS `tabe_wynikow` (
  `id_druzyny` int(11) NOT NULL,
  `nazwa_druzyny` varchar(255) DEFAULT NULL,
  `pkt` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tabe_wynikow`
--

INSERT INTO `tabe_wynikow` (`id_druzyny`, `nazwa_druzyny`, `pkt`) VALUES
(1, NULL, 2),
(2, NULL, 1),
(3, NULL, 1),
(4, NULL, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  ADD PRIMARY KEY (`id_odp`);

--
-- Indexes for table `podanaodp`
--
ALTER TABLE `podanaodp`
  ADD PRIMARY KEY (`id_pod`);

--
-- Indexes for table `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`id_pyt`);

--
-- Indexes for table `tabe_wynikow`
--
ALTER TABLE `tabe_wynikow`
  ADD PRIMARY KEY (`id_druzyny`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  MODIFY `id_odp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT dla tabeli `podanaodp`
--
ALTER TABLE `podanaodp`
  MODIFY `id_pod` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id_pyt` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `tabe_wynikow`
--
ALTER TABLE `tabe_wynikow`
  MODIFY `id_druzyny` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
