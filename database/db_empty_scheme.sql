SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `publication_date` date DEFAULT NULL,
  `isbn_10` varchar(10) DEFAULT NULL,
  `isbn_13` varchar(13) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `books_authors` (
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `countries` (
  `code` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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


ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `nationality` (`nationality`);

ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

ALTER TABLE `books_authors`
  ADD PRIMARY KEY (`book_id`,`author_id`),
  ADD KEY `author_id` (`author_id`);

ALTER TABLE `countries`
  ADD PRIMARY KEY (`code`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `nationality` (`nationality`);


ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `authors`
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`nationality`) REFERENCES `countries` (`code`);

ALTER TABLE `books_authors`
  ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `books_authors_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);

ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`nationality`) REFERENCES `countries` (`code`);