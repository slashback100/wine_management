CREATE TABLE IF NOT EXISTS `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(100) NOT NULL,
  `password_hash` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_users_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`username`, `password_hash`) VALUES
  ('christ', 'ee10c315eba2c75b403ea99136f5b48d'),
  ('marc',   'e84c55c90d955bf1cfa2d31a1f425383')
ON DUPLICATE KEY UPDATE `password_hash` = VALUES(`password_hash`);
