SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories`(
   `cat_id` VARCHAR(2) NOT NULL,
   `cat_name` text(10) NOT NULL,
    PRIMARY KEY (`cat_id`)
);


INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'Guitares & Basses'),
(3, 'Claviers & Pianos'),
(11, 'Violons & Quatuor'),
(10, 'Batteries & Percussions'),
(4, 'Synthétiseurs & Sampleurs'),
(6, 'Casques'),
(7, 'Micros & HF'),
(2, 'Amplis & Effets'),
(5, 'Home Studio'),
(8, 'Espace DJ'),
(9, 'Eclairage'),
(12, 'Câbles & Accessoires'),