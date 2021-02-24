SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories`(
   `cat_id` INT NOT NULL,
   `subcat_id` INT NOT NULL,
   `subcat_name` text(50) NOT NULL,
    PRIMARY KEY (`subcat_id`),
    FOREIGN KEY (`cat_id`) REFERENCES Categories (`cat_id`)
);


INSERT INTO `subcategories` (`cat_id`, `subcat_id`, `subcat_name`) VALUES

/*Guitares & Basses*/
(1, 1, 'Guitare Electrique'), (1, 2, 'Guitare Acoustique'), (1, 3, 'Guitare Classique'), (1, 4, 'Basse Electrique'), (1, 5, 'Basse Acoustique'), (1, 6, 'Basse Classique'), (1, 7, 'Autres instruments à cordes pincées'),

/*Claviers & Pianos*/
(2, 8, 'Piano numérique'), (2, 9, 'Clavier de scène'), (2, 10, 'Clavier arrangeur'), (2, 11, 'Accordéon & Melodica'), (2, 12, 'Orgue & Clavecin'),

/* Violons & Quatuor */
(3, 13, 'Violon'), (3, 14, 'Violoncelle'), (3, 15, 'Alto'), (3, 16, 'Contrebasse'),

/*Vents*/
(4, 17, 'Clarinette'), (4, 18, 'Flûte à bec'), (4, 19, 'Flûte traversière'), (4, 20, 'Harmonica, Kazoo, Sifflet'), (4, 21, 'Saxophone'), (4, 22, 'Trombone'), (4, 23, 'Trompette'),

/*Batteries & Percussions*/
(5, 24, 'Batterie Acoustique'), (5, 25, 'Batterie Electronique'), (5, 26, 'Percussions'),

/* Synthétiseurs & Sampleurs*/
(6, 27, 'Synthétiseur'), (6, 28, 'Workstation'), (6, 29, 'Sampleur / Groovebox'),

/*Casques*/
(7, 30, 'Casque Studio & DJ'), (7, 31, 'Casque Hi-Fi'),

/*Micros*/
(8, 32, 'Micro Chant'), (8, 33, 'Micro Smartphone'), (8, 34, 'Accessoires Micro'),

/*Amplis & Effets*/
(9, 35, 'Ampli Guitare Electrique'), (9, 36, 'Ampli Guitare Acoustique'), (9, 37, 'Ampli Basse'), (9, 38, 'Effets Guitare Electrique'), (9, 39, 'Effets Guitare Acoustique'), (9, 40, 'Effets Basse'),

/*Home Studio*/
(10, 41, 'Enceinte'), (10, 42, 'Enregistreur'), (10, 43, 'Carte son & interface audio'),

/*Espace DJ*/
(11, 44, 'Contrôleur & Logiciel DJ'), (11, 45, 'Mixeur & Effets DJ'), (11, 46, 'Accessoires DJ'),

/*Eclairage*/
(12, 47, 'Jeux de lumière'), (12, 48, 'Projecteur'), (12, 49, 'Laser'), (12, 50, 'Eclairage de Scène'),

/*Câbles & Accessoires*/
(13, 51, 'Accordeur / Métronome / Pupitre'), (13, 52, 'Alimentation & Stockage'), (13, 53, 'Câblerie'), (13, 54, 'Outillage'), (13, 55, 'Entretien des instruments');