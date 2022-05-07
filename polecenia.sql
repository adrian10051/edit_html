-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Maj 2022, 16:49
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `polecenia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `argumenty`
--

CREATE TABLE `argumenty` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_polish_ci NOT NULL,
  `value` text COLLATE utf8mb4_polish_ci NOT NULL,
  `arg` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `argumenty`
--

INSERT INTO `argumenty` (`id`, `name`, `value`, `arg`) VALUES
(1, 'br', '<br>', '<br>'),
(2, 'h1', '<h1>', '<h1></h1>'),
(3, 'h2', '<h2>', '<h2></h2>'),
(4, 'h3', '<h3>', '<h3></h3>'),
(5, 'h4', '<h4>', '<h4></h4>'),
(6, 'h5', '<h5>', '<h5></h5>'),
(7, 'h6', '<h6>', '<h6></h6>'),
(8, 'section', '<section>', '<section></section>'),
(9, 'article', '<article>', '<article></article>'),
(10, 'aside', '<aside>', '<aside></aside>'),
(11, 'header', '<header>', '<header></header>'),
(12, 'footer', '<footer>', '<footer></footer>'),
(13, 'details', '<details>', '<details></details>'),
(14, 'nav', '<nav>', '<nav></nav>'),
(15, 'main', '<main>', '<main></main>'),
(17, 'p', '<p>', '<p></p>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `argumenty01`
--

CREATE TABLE `argumenty01` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_polish_ci NOT NULL,
  `value` text COLLATE utf8mb4_polish_ci NOT NULL,
  `arg` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `argumenty01`
--

INSERT INTO `argumenty01` (`id`, `name`, `value`, `arg`) VALUES
(1, 'html', '<HTML>', 'struktura'),
(2, 'link', '<link>', 'link'),
(3, 'table', '<table>', 'table'),
(4, 'form', '<form>', 'formularz');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `argumenty`
--
ALTER TABLE `argumenty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `argumenty01`
--
ALTER TABLE `argumenty01`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `argumenty`
--
ALTER TABLE `argumenty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `argumenty01`
--
ALTER TABLE `argumenty01`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
