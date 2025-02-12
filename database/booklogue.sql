-- Database: `booklogue` and php web application user
DROP DATABASE IF EXISTS booklogue;
CREATE DATABASE booklogue;
GRANT USAGE ON *.* TO 'appuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON booklogue.* TO 'appuser'@'localhost';
FLUSH PRIVILEGES;

USE booklogue;

-- Table structure for table `users`
CREATE TABLE IF NOT EXISTS `users` (
    `id` int(8) NOT NULL AUTO_INCREMENT,
    `username` varchar(40) NOT NULL,
    `email` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);

-- Table structure for table `books`
CREATE TABLE IF NOT EXISTS `books` (
    `id` int(8) NOT NULL AUTO_INCREMENT,
    `title` varchar(255) NOT NULL,
    `author` varchar(255),
    `genre` varchar(255),
    `description` TEXT,
    `comment` TEXT,
    PRIMARY KEY (`id`)
);

-- insert some test data for two tables
INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'test', 'test@gmail.com', 'pass1');

INSERT INTO `books` (`id`, `title`, `author`, `genre`, `description`,`comment`) VALUES
(1, 'testbook', 'testauthor', 'romance', 'It is a romance book.','I like this book a lot!');
