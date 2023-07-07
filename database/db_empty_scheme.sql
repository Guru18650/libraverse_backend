CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `surname` varchar(70) NOT NULL,
  `city` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `gender` char(1) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `password` char(60) NOT NULL,
  `profile_photo` char(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;