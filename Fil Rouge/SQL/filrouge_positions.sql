SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `positions`;
CREATE TABLE IF NOT EXISTS `positions`(
   `pos_id` INT NOT NULL,
   `pos_name` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`pos_id`)
);


INSERT INTO `positions` (`pos_id`, `pos_name`) VALUES
(1, 'Web Admin'),
(2, 'Directeur'),
(3, 'Service Comptable'),
(4, 'Ressources Humaines'),
(5, 'Fonction Production et Développement'),
(6, 'Fonction Marketing'),
(7, 'Fonction Communication'),
(8, 'Vendeur'),
(9, 'Truc Muche'),
(10, 'Machin Chouette');
