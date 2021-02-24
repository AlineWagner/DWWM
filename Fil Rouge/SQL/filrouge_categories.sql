SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories`(
   `cat_id` INT NOT NULL,
   `cat_name` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`cat_id`)
);


INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'Guitares & Basses'),
(2, 'Claviers & Pianos'),
(3, 'Violons & Quatuor'),
(4, 'Vents'),
(5, 'Batteries & Percussions'),
(6, 'Synthétiseurs & Sampleurs'),
(7, 'Casques'),
(8, 'Micros'),
(9, 'Amplis & Effets'),
(10, 'Home Studio'),
(11, 'Espace DJ'),
(12, 'Eclairage'),
(13, 'Câbles & Accessoires');
