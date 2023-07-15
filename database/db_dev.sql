-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Lip 2023, 14:02
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `libraverse_dev`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `nationality` char(2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `profile_image` char(128) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `authors`
--

INSERT INTO `authors` (`author_id`, `first_name`, `last_name`, `nationality`, `description`, `profile_image`, `created_at`, `updated_at`) VALUES
(1, 'Rick', 'Riordan', 'US', 'stary typ', 'none', '2023-07-09 22:08:26', '2023-07-09 22:08:26');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `publication_date` date DEFAULT NULL,
  `isbn_10` varchar(10) DEFAULT NULL,
  `isbn_13` varchar(13) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `publisher` varchar(250) NOT NULL,
  `author` varchar(250) NOT NULL,
  `length` int(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `books`
--

INSERT INTO `books` (`book_id`, `title`, `publication_date`, `isbn_10`, `isbn_13`, `description`, `cover_image`, `publisher`, `author`, `length`, `created_at`, `updated_at`) VALUES
(109, 'Angielski i francuski slownik obrazkowy', '0000-00-00', '', '8370013279', '', '0', 'Wydawnictwa \'Alfa\'', 'Jean-Claude Corbeil', 927, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'DOM', '0000-00-00', '', '4056489303978', '', '0', 'Lidl', 'Lidl', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'The Hobbit', '0000-00-00', '', '9780007458424', '', '8458080', 'HarperCollins Publishers', 'J.R.R. Tolkien', 365, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'The Subtle Art of Not Giving a Fuck', '0000-00-00', '', '9780062457714', '', '12832270', 'HarperOne', 'Mark Manson', 206, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Immune', '0000-00-00', '', '9781529360684', '', '12749538', 'Hodder & Stoughton', 'Philipp Dettmer', 368, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Żart', '0000-00-00', '', '9788306026306', '', '8015633', 'Gazeta Wyborcza ', 'Milan Kundera', 250, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Marzenia i tajemnice', '0000-00-00', '', '9788308048368', '', '11677350', 'Wydawn. Literackie', 'Danuta Wałęsa', 546, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Bajki robotow', '0000-00-00', '', '9788308048894', '', '13314717', 'Wydawnictwo Literackie', 'Stanisław Lem', 224, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Niezwyciężony', '0000-00-00', '', '9788308060377', '', '8287287', 'Wydawnictwo Literackie', 'Stanisław Lem', 257, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Eden', '0000-00-00', '', '9788308061749', '', '13314729', 'Wydawnictwo Literackie', 'Stanisław Lem', 424, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Powrót z gwiazd', '0000-00-00', '', '9788308061756', '', '13314749', 'Wydawnictwo Literackie', 'Stanisław Lem', 400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Szpital Przemienienia', '0000-00-00', '', '9788308063514', '', '13314759', 'Wydawnictwo Literackie', 'Stanisław Lem', 292, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Wysoki Zamek', '0000-00-00', '', '9788308070161', '', '13314790', 'Wydawnictwo Literackie', 'Stanisław Lem', 208, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Dzienniki gwiazdowe', '0000-00-00', '', '9788308070307', '', '13314777', 'Wydawnictwo Literackie', 'Stanisław Lem', 388, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Kongres futurologiczny', '0000-00-00', '', '9788308070314', '', '13270026', 'Wydawnictwo Literackie', 'Stanisław Lem', 202, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Opowieści o pilocie Pirxie', '0000-00-00', '', '9788308070543', '', '13314772', 'Wydawnictwo Literackie', 'Stanisław Lem', 515, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Głos Pana', '0000-00-00', '', '9788308073155', '', '13314814', 'Wydawnictwo Literackie', 'Stanisław Lem', 344, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Wizja lokalna', '0000-00-00', '', '9788308073162', '', '13314721', 'Wydawnictwo Literackie', 'Stanisław Lem', 476, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Golem XIV', '0000-00-00', '', '9788308073957', '', '13314806', 'Wydawnictwo Literackie', 'Stanisław Lem', 208, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Solaris', '0000-00-00', '', '9788308075197', '', '13314708', 'Wydawnictwo Literackie', 'Stanisław Lem', 340, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Pokój na Ziemi', '0000-00-00', '', '9788308075593', '', '13314788', 'Wydawnictwo Literackie', 'Stanisław Lem', 376, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Zycie niebywale', '0000-00-00', '', '9788324031832', '', '13332587', 'Znak', 'Horowitz Ryszard', 460, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Magia polskich ziół', '0000-00-00', '', '9788324071876', '', '13332825', 'Znak Literanova', 'Patrycja Machałek', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Wladca Pierscieni tom 2 Dwie Wieze', '0000-00-00', '', '9788324144259', '', '13332782', 'Amber', 'J.R.R. Tolkien', 368, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Photoshop CS4', '0000-00-00', '', '9788324622436', '', '0', 'Helion', 'Anna Owcarz-Dadan', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Sekrety Mistrza Fotografii Cyfrowej', '0000-00-00', '', '9788324631735', '', '0', 'Helion', 'Scott Kelby', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Sztuka rysowania Ludzie', '0000-00-00', '', '9788327125231', '', '13332398', 'Publicat', 'Zbiorowy Autor', 240, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Mara Dyer Tajemnica', '0000-00-00', '', '9788328009745', '', '13332848', 'Ya!', 'Michelle Hodkn', 412, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Mara Dyer Przemiana', '0000-00-00', '', '9788328014749', '', '13332854', 'YA! / GW Foksal', 'Michelle Hodkin', 544, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Wypowiedz jej imię', '0000-00-00', '', '9788328020740', '', '0', 'Grupa Wydawnicza Foksal', 'James Dawson', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Mara Dyer Zemsta', '0000-00-00', '', '9788328020757', '', '13332856', 'YA! / GW Foksal', 'Michelle Hodkin', 464, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Blackout', '0000-00-00', '', '9788328052239', '', '13330857', 'W.A.B.', 'Marc Elsberg', 784, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Sprawa prezydenta', '0000-00-00', '', '9788328089044', '', '13314902', 'W.A.B.', 'Marc Elsberg', 608, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Zero', '0000-00-00', '', '9788328092945', '', '13314901', 'W.A.B.', 'Marc Elsberg', 496, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Blackout', '0000-00-00', '', '9788328092952', '', '13314898', 'W.A.B.', 'Marc Elsberg', 784, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Wowa', '0000-00-00', '', '9788328098091', '', 'Hardcover', 'Władimir', 'Wołodia', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Success and Change', '0000-00-00', '', '9788328334885', '', '13332508', 'Helion', 'Mateusz Grzesiak', 248, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Klan Wilczycy', '0000-00-00', '', '9788360010655', '', '0', 'Jaguar', 'Maite Carranza', 382, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Bez rak bez nog bez ograniczen', '0000-00-00', '', '9788361097228', '', '11137834', 'Aetos Media', 'Nick Vujicic', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Angelfall', '0000-00-00', '', '9788363622152', '', '11137892', 'Filia', 'Ee Susan', 315, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Wyklęta', '0000-00-00', '', '9788364379901', '', '13332748', 'Akapit Press', 'Joss Stirling', 400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Metro 2033', '0000-00-00', '', '9788365315014', '', '8413178', 'Insignis', 'Dmitry Glukhovsky ', 580, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Metro 2034', '0000-00-00', '', '9788365315038', '', '8413211', 'Insignis', 'Dmitry Glukhovsky ', 390, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Metro 2035', '0000-00-00', '', '9788365315052', '', '8413262', 'Insignis', 'Dmitry Glukhovsky ', 550, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Znak Kruka. Ksiega 2. Zew kruka', '0000-00-00', '', '9788366065192', '', '13332300', 'MAG', 'Ed McDonald', 384, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Swiat wedlug Clarksona. Czy da sie to przyspieszyc?', '0000-00-00', '', '9788366873346', '', '/books/OL46845274M', 'Insignis', 'Jeremy Clarkson', 378, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Aston Martin. Made in Britain', '0000-00-00', '', '9788366873353', '', '13332377', 'Insignis', 'Ben Collins', 397, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Atlas mineralow', '0000-00-00', '', '9788370738457', '', '13332728', 'Multico', 'Jan Parafiniuk', 304, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Zioła i Owoce Leśne ', '0000-00-00', '', '9788371292743', '', '0', 'Świat Książki ', 'Jürke Grau', 286, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'Dym i lustra', '0000-00-00', '', '9788374808965', '', '13332556', 'Mag', 'Neil Gaiman', 480, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Znak Kruka. Ksiega 1. Czarnoskrzydly', '0000-00-00', '', '9788374809177', '', '13332312', 'MAG', 'Ed McDonald', 384, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Niebezpieczne kłamstwa', '0000-00-00', '', '9788375153576', '', '8447627', 'Wydawnictwo Otwarte', 'Becca Fitzpatrick ', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Dotyk Julii. Trylogia', '0000-00-00', '', '9788375153736', '', '9160053', 'Wydawnictwo Otwarte', 'Tahereh Mafi', 939, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Chata', '0000-00-00', '', '9788375340419', '', '10867732', 'Nowa proza', 'William P. Young', 300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Yellow bahama w prazki', '0000-00-00', '', '9788375549430', '', '13332659', 'Ateneum', 'Nowak Ewa', 208, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Rzeźnik drzew', '0000-00-00', '', '9788375749373', '', '10114411', 'Fabryka Słów', 'Andrzej Pilipiuk ', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Wiedźmin. Ostatnie zyczenie', '0000-00-00', '', '9788375780284', '', '13332181', 'superNOWA', 'Andrzej Sapkowski', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Wiedźmin Miecz przeznaczenia', '0000-00-00', '', '9788375780291', '', '0', 'superNOWA', 'Andrzej Sapkowski', 344, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Cmętarz zwieżąt', '0000-00-00', '', '9788376486086', '', '8289856', 'Prószyński i S- ka', 'Stephen King', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Misery', '0000-00-00', '', '9788376486130', '', '13332746', 'Prószynski', 'Stephen King', 366, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Władca Pierścieni', '0000-00-00', '', '9788377582558', '', '8174273', 'MUZA', 'J.R.R. Tolkien', 1280, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Grzyby. Spotkania z przyroda', '0000-00-00', '', '9788377635131', '', '13332707', 'Multico', 'Grażyna Maternicka', 304, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Empezar de nuevo Hiszpanski kryminal z cwiczeniami', '0000-00-00', '', '9788377887554', '', '13332537', 'Edgard', 'Cristina S. Baixauli', 224, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Starter', '0000-00-00', '', '9788378856788', '', '9318521', 'Wydawnictwo Albatros', 'Lissa Price', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Rose Madder', '0000-00-00', '', '9788378859826', '', '11074496', 'Albatros', 'Stephen King', 448, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Sztywny', '0000-00-00', '', '9788379640645', '', '9163603', 'Fabryka Słów', 'Michał Gołkowski', 360, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Angelfall t.2 Penryn i swiat po', '0000-00-00', '', '9788379880232', '', '11137876', 'Filia', 'Ee Susan', 356, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Harry Potter i Kamień Filozoficzny', '0000-00-00', '', '9788380082120', '', '8108734', 'Media Rodzina', 'J.K. Rowling', 328, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Harry Potter i Komnata Tajemnic', '0000-00-00', '', '9788380082144', '', '13239789', 'Media Rodzina', 'J.K. Rowling', 355, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Harry Potter i więzień Azkabanu', '0000-00-00', '', '9788380082168', '', '8108731', 'Media Rodzina', 'J.K. Rowling', 456, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Harry Potter i Czara Ognia', '0000-00-00', '', '9788380082182', '', '8108730', 'Media Rodzina', 'J.K.Rowling', 768, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Harry Potter i Zakon Feniksa', '0000-00-00', '', '9788380082205', '', '8108729', 'Media Rodzina', 'J.K.Rowling', 960, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Harry Potter i Książę Półkrwi', '0000-00-00', '', '9788380082229', '', '8108725', 'Media Rodzina', 'J.K.Rowling', 704, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Harry Potter i Insygnia Śmierci', '0000-00-00', '', '9788380082243', '', '8108721', 'Media Rodzina', 'J.K.Rowling', 784, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Mężczyzna', '0000-00-00', '', '9788380150492', '', '/books/OL27929889M', 'David Lagercrantz', 'który gonił swój cień', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Dziewczyna z pociągu', '0000-00-00', '', '9788380316904', '', '12785541', 'Świat Książki', 'Paula Hawkins', 326, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Zapisane w wodzie', '0000-00-00', '', '9788380318113', '', '13332735', 'Swiat Ksiazki', 'Paula Hawkins', 368, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Angelfall Penryn i kres dni', '0000-00-00', '', '9788380750227', '', '11137880', 'Filia', 'Susan Ee', 368, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Sedno sprawy ', '0000-00-00', '', '9788389641731', '', '0', 'Gazeta Wyborcza ', 'Graham Greene', 250, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Kocia Kołyska ', '0000-00-00', '', '9788389651631', '', '0', 'Gazeta Wyborcza ', 'Kurt Vonnegut ', 188, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Gra w Klasy ', '0000-00-00', '', '9788389651648', '', '0', 'Gazeta Wyborcza ', 'Julio Cortázar', 543, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Zniewolony Umysł ', '0000-00-00', '', '9788389651655', '', '0', 'Gazeta Wyborcza ', 'Czesław Miłosz ', 190, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Dżuma', '0000-00-00', '', '9788389651662', '', '0', 'Gazeta Wyborcza ', 'Albert Camus ', 191, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Miasto i psy', '0000-00-00', '', '9788389651679', '', '12524452', 'Gazeta Wyborcza ', 'Mario Vargas Llosa', 320, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Rok 1984', '0000-00-00', '', '9788389651686', '', '0', 'Gazeta Wyborcza ', 'George Orwell', 256, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Kroniki Marsjańskie ', '0000-00-00', '', '9788389651693', '', '0', 'Gazeta Wyborcza ', 'Ray Bradbury', 216, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Opowiadania', '0000-00-00', '', '9788389651709', '', '0', 'Gazeta Wyborcza ', 'Jarosław Iwaszkiewicz ', 246, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Absalomie', '0000-00-00', '', '9788389651716', '', '', 'William Faulkner ', 'Absalomie...', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Proces ', '0000-00-00', '', '9788389651723', '', '0', 'Gazeta Wyborcza ', 'Franz Kafka', 185, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Cesarz', '0000-00-00', '', '9788389651747', '', '0', 'Gazeta Wyborcza ', 'Ryszard Kapuściński ', 120, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Obietnica poranka', '0000-00-00', '', '9788389651754', '', '0', 'Gazeta Wyborcza ', 'Romain Gary', 280, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Pociągi pod specjalnym nadzorem ', '0000-00-00', '', '9788389651761', '', '0', 'Gazeta Wyborcza ', 'Bohumil Hrabal', 157, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Oddział chorych na raka', '0000-00-00', '', '9788389651778', '', '0', 'Gazeta Wyborcza ', 'Aleksander Sołżenicyn', 445, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Władcy Much', '0000-00-00', '', '9788389651785', '', '0', 'Gazeta Wyborcza ', 'William Golding ', 180, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Sto lat samotności ', '0000-00-00', '', '9788389651792', '', '0', 'Gazeta Wyborcza', 'García Márquez', 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Solaris', '0000-00-00', '', '9788389651808', '', '0', 'Gazeta Wyborcza ', 'Stanisław Lem', 185, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Utracona Cześć Katarzyny Blum', '0000-00-00', '', '9788389651815', '', '0', 'Gazeta Wyborcza ', 'Henrich Böll', 120, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'Mała Apokalipsa ', '0000-00-00', '', '9788389651822', '', '0', 'Gazeta Wyborcza ', 'Tadeusz Konwicki ', 189, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'Stąd do wieczności ', '0000-00-00', '', '9788389651839', '', '0', 'Gazeta Wyborcza ', 'James Jones ', 701, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'Tajny Agent ', '0000-00-00', '', '9788389651846', '', '0', 'Gazeta Wyborcza ', 'Joseph Conrad', 222, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Ojciec Chrzestny ', '0000-00-00', '', '9788389651853', '', '0', 'Gazeta Wyborcza ', 'Mario Puzo', 479, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Trans-Atlantyk', '0000-00-00', '', '9788389651860', '', '0', 'Gazeta Wyborcza ', 'Witold Gombrowicz ', 96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Paragraf 22', '0000-00-00', '', '9788389651877', '', '0', 'Gazeta Wyborcza', 'Joseph Heller', 475, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Wilk Stepowy ', '0000-00-00', '', '9788389651884', '', '0', 'Gazeta Wyborcza ', 'Hermann Hesse ', 160, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Desde el infierno', '0000-00-00', '', '9788416159475', '', '0', 'Última Línea', 'Enrique Laso', 202, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books_authors`
--

CREATE TABLE `books_authors` (
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `countries`
--

CREATE TABLE `countries` (
  `code` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `countries`
--

INSERT INTO `countries` (`code`, `name`) VALUES
('AD', 'Andorra'),
('AE', 'United Arab Emirates'),
('AF', 'Afghanistan'),
('AG', 'Antigua and Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albania'),
('AM', 'Armenia'),
('AN', 'Netherlands Antilles'),
('AO', 'Angola'),
('AQ', 'Antarctica'),
('AR', 'Argentina'),
('AS', 'American Samoa'),
('AT', 'Austria'),
('AU', 'Australia'),
('AW', 'Aruba'),
('AX', 'Aland Islands'),
('AZ', 'Azerbaijan'),
('BA', 'Bosnia and Herzegovina'),
('BB', 'Barbados'),
('BD', 'Bangladesh'),
('BE', 'Belgium'),
('BF', 'Burkina Faso'),
('BG', 'Bulgaria'),
('BH', 'Bahrain'),
('BI', 'Burundi'),
('BJ', 'Benin'),
('BL', 'Saint Barthelemy'),
('BM', 'Bermuda'),
('BN', 'Brunei Darussalam'),
('BO', 'Bolivia'),
('BQ', 'Bonaire, Sint Eustatius and Saba'),
('BR', 'Brazil'),
('BS', 'Bahamas'),
('BT', 'Bhutan'),
('BV', 'Bouvet Island'),
('BW', 'Botswana'),
('BY', 'Belarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Cocos (Keeling) Islands'),
('CD', 'Congo, Democratic Republic of the Congo'),
('CF', 'Central African Republic'),
('CG', 'Congo'),
('CH', 'Switzerland'),
('CI', 'Cote D\'Ivoire'),
('CK', 'Cook Islands'),
('CL', 'Chile'),
('CM', 'Cameroon'),
('CN', 'China'),
('CO', 'Colombia'),
('CR', 'Costa Rica'),
('CS', 'Serbia and Montenegro'),
('CU', 'Cuba'),
('CV', 'Cape Verde'),
('CW', 'Curacao'),
('CX', 'Christmas Island'),
('CY', 'Cyprus'),
('CZ', 'Czech Republic'),
('DE', 'Germany'),
('DJ', 'Djibouti'),
('DK', 'Denmark'),
('DM', 'Dominica'),
('DO', 'Dominican Republic'),
('DZ', 'Algeria'),
('EC', 'Ecuador'),
('EE', 'Estonia'),
('EG', 'Egypt'),
('EH', 'Western Sahara'),
('ER', 'Eritrea'),
('ES', 'Spain'),
('ET', 'Ethiopia'),
('FI', 'Finland'),
('FJ', 'Fiji'),
('FK', 'Falkland Islands (Malvinas)'),
('FM', 'Micronesia, Federated States of'),
('FO', 'Faroe Islands'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'United Kingdom'),
('GD', 'Grenada'),
('GE', 'Georgia'),
('GF', 'French Guiana'),
('GG', 'Guernsey'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Greenland'),
('GM', 'Gambia'),
('GN', 'Guinea'),
('GP', 'Guadeloupe'),
('GQ', 'Equatorial Guinea'),
('GR', 'Greece'),
('GS', 'South Georgia and the South Sandwich Islands'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinea-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong Kong'),
('HM', 'Heard Island and Mcdonald Islands'),
('HN', 'Honduras'),
('HR', 'Croatia'),
('HT', 'Haiti'),
('HU', 'Hungary'),
('ID', 'Indonesia'),
('IE', 'Ireland'),
('IL', 'Israel'),
('IM', 'Isle of Man'),
('IN', 'India'),
('IO', 'British Indian Ocean Territory'),
('IQ', 'Iraq'),
('IR', 'Iran, Islamic Republic of'),
('IS', 'Iceland'),
('IT', 'Italy'),
('JE', 'Jersey'),
('JM', 'Jamaica'),
('JO', 'Jordan'),
('JP', 'Japan'),
('KE', 'Kenya'),
('KG', 'Kyrgyzstan'),
('KH', 'Cambodia'),
('KI', 'Kiribati'),
('KM', 'Comoros'),
('KN', 'Saint Kitts and Nevis'),
('KP', 'Korea, Democratic People\'s Republic of'),
('KR', 'Korea, Republic of'),
('KW', 'Kuwait'),
('KY', 'Cayman Islands'),
('KZ', 'Kazakhstan'),
('LA', 'Lao People\'s Democratic Republic'),
('LB', 'Lebanon'),
('LC', 'Saint Lucia'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Liberia'),
('LS', 'Lesotho'),
('LT', 'Lithuania'),
('LU', 'Luxembourg'),
('LV', 'Latvia'),
('LY', 'Libyan Arab Jamahiriya'),
('MA', 'Morocco'),
('MC', 'Monaco'),
('MD', 'Moldova, Republic of'),
('ME', 'Montenegro'),
('MF', 'Saint Martin'),
('MG', 'Madagascar'),
('MH', 'Marshall Islands'),
('MK', 'Macedonia, the Former Yugoslav Republic of'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolia'),
('MO', 'Macao'),
('MP', 'Northern Mariana Islands'),
('MQ', 'Martinique'),
('MR', 'Mauritania'),
('MS', 'Montserrat'),
('MT', 'Malta'),
('MU', 'Mauritius'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexico'),
('MY', 'Malaysia'),
('MZ', 'Mozambique'),
('NA', 'Namibia'),
('NC', 'New Caledonia'),
('NE', 'Niger'),
('NF', 'Norfolk Island'),
('NG', 'Nigeria'),
('NI', 'Nicaragua'),
('NL', 'Netherlands'),
('NO', 'Norway'),
('NP', 'Nepal'),
('NR', 'Nauru'),
('NS', 'Not set'),
('NU', 'Niue'),
('NZ', 'New Zealand'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Peru'),
('PF', 'French Polynesia'),
('PG', 'Papua New Guinea'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Poland'),
('PM', 'Saint Pierre and Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Puerto Rico'),
('PS', 'Palestinian Territory, Occupied'),
('PT', 'Portugal'),
('PW', 'Palau'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Reunion'),
('RO', 'Romania'),
('RS', 'Serbia'),
('RU', 'Russian Federation'),
('RW', 'Rwanda'),
('SA', 'Saudi Arabia'),
('SB', 'Solomon Islands'),
('SC', 'Seychelles'),
('SD', 'Sudan'),
('SE', 'Sweden'),
('SG', 'Singapore'),
('SH', 'Saint Helena'),
('SI', 'Slovenia'),
('SJ', 'Svalbard and Jan Mayen'),
('SK', 'Slovakia'),
('SL', 'Sierra Leone'),
('SM', 'San Marino'),
('SN', 'Senegal'),
('SO', 'Somalia'),
('SR', 'Suriname'),
('SS', 'South Sudan'),
('ST', 'Sao Tome and Principe'),
('SV', 'El Salvador'),
('SX', 'Sint Maarten'),
('SY', 'Syrian Arab Republic'),
('SZ', 'Swaziland'),
('TC', 'Turks and Caicos Islands'),
('TD', 'Chad'),
('TF', 'French Southern Territories'),
('TG', 'Togo'),
('TH', 'Thailand'),
('TJ', 'Tajikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkmenistan'),
('TN', 'Tunisia'),
('TO', 'Tonga'),
('TR', 'Turkey'),
('TT', 'Trinidad and Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taiwan, Province of China'),
('TZ', 'Tanzania, United Republic of'),
('UA', 'Ukraine'),
('UG', 'Uganda'),
('UM', 'United States Minor Outlying Islands'),
('US', 'United States'),
('UY', 'Uruguay'),
('UZ', 'Uzbekistan'),
('VA', 'Holy See (Vatican City State)'),
('VC', 'Saint Vincent and the Grenadines'),
('VE', 'Venezuela'),
('VG', 'Virgin Islands, British'),
('VI', 'Virgin Islands, U.s.'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis and Futuna'),
('WS', 'Samoa'),
('XK', 'Kosovo'),
('YE', 'Yemen'),
('YT', 'Mayotte'),
('ZA', 'South Africa'),
('ZM', 'Zambia'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(320) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` char(60) NOT NULL,
  `first_name` varchar(35) NOT NULL,
  `last_name` varchar(70) NOT NULL,
  `gender` char(1) NOT NULL,
  `birthday` date NOT NULL,
  `nationality` char(2) NOT NULL DEFAULT 'NS',
  `description` varchar(2000) NOT NULL,
  `profile_image` char(128) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`user_id`, `email`, `username`, `password`, `first_name`, `last_name`, `gender`, `birthday`, `nationality`, `description`, `profile_image`, `created_at`, `updated_at`) VALUES
(1, '123@123', 'testse', '$2b$12$7lmMPM3dlGBb.XJMB5Vo/./FxcSZVW/xzbFuCxfw8/KB4dUmF1LR2', 'test', '123', 'a', '2023-07-11', 'NS', 'test', 'test', '2023-07-07', '2023-07-09 20:14:45'),
(2, '', 'test', 'test', 'test', 'test', 'a', '2023-07-07', 'NS', 'test', 'test', '2023-07-07', '2023-07-09 20:14:45'),
(3, '', 'test', 'test', 'test', 'test', 'a', '2023-07-07', 'NS', 'test', 'test', '2023-07-07', '2023-07-09 20:14:45'),
(5, '123@1233', 'testsee', '$2b$12$ocErXJXrOk92VLlL5/tG6uUS3ngLcJIGQouPkJNxU2ES9xefEGedO', '', '', '', '0000-00-00', 'NS', '', '', '2023-07-09', '2023-07-09 20:14:45');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `nationality` (`nationality`);

--
-- Indeksy dla tabeli `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indeksy dla tabeli `books_authors`
--
ALTER TABLE `books_authors`
  ADD PRIMARY KEY (`book_id`,`author_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indeksy dla tabeli `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`code`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `nationality` (`nationality`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`nationality`) REFERENCES `countries` (`code`);

--
-- Ograniczenia dla tabeli `books_authors`
--
ALTER TABLE `books_authors`
  ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `books_authors_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);

--
-- Ograniczenia dla tabeli `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`nationality`) REFERENCES `countries` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
