SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients`(
   `cli_id` INT NOT NULL auto_increment,
   `cli_ref` VARCHAR(10) NOT NULL,
   `cli_surname` VARCHAR(50) NOT NULL,
   `cli_name` VARCHAR(50) NOT NULL,
   `cli_billaddress` VARCHAR(50) NOT NULL,
   `cli_billcity` VARCHAR(50) NOT NULL,
   `cli_billzip` VARCHAR(10) NOT NULL,
   `cli_deliaddress` VARCHAR(50) NOT NULL,
   `cli_delicity` VARCHAR(50) NOT NULL,
   `cli_delizip` VARCHAR(10) NOT NULL,
   `cli_phone` VARCHAR(20) NOT NULL,
   `cli_mail` VARCHAR(50) NOT NULL,
   `cli_password` VARCHAR(50) NOT NULL,
   `cli_type` TINYINT NOT NULL,
   `cli_coeff` INT NOT NULL,
   `cou_id` VARCHAR(2) NOT NULL,
   PRIMARY KEY (`cli_id`),
   FOREIGN KEY (cou_id) REFERENCES Countries (`cou_id`)
);


INSERT INTO `clients` (`cli_id`, `cli_ref`, `cli_surname`, `cli_name`, `cli_billaddress`, `cli_billcity`, `cli_billzip`, `cli_deliaddress`, `cli_delicity`, `cli_delizip`, `cli_phone`, `cli_mail`, `cli_password`, `cli_type`, `cli_coeff`, `cou_id`) VALUES
(1, "MonHil", "Monroe", "Hilel", "893-6638 Semper Street", "Dedovsk", "K4J 8G3", "413-8805 Ornare, St.", "Châlons-en-Champagne", "29091", "06 12 00 74 64", "vehicula@scelerisquenequesed.net", "123", 0, 6, "FR"),
(2, "SchYeo", "Schultz", "Yeo", "243-4607 Donec Rd.", "Evesham", "488559", "P.O. Box 573, 5273 Egestas. Rd.", "Granada", "84611-911", "1-928-416-1550", "ipsum.Suspendisse.non@condimentumeget.net", "123", 1, 8, "FR"),
(3, "ClaOrl", "Clark", "Orla", "Ap #794-120 Pharetra Street", "Timaru", "71364", "P.O. Box 420, 316 Aliquet Road", "Mellet", "49456", "1-276-172-6119", "orci@leo.ca", "123", 0, 5, "FR"),
(4, "WilKat", "Williamson", "Katell", "845-2637 Feugiat St.", "Itajaí", "71009", "Ap #604-2250 Vulputate, Street", "Zeist", "3326", "825-3895", "consequat.purus@tristique.com", "123", 0, 2, "FR"),
(5, "RayDeb", "Raymond", "Deborah", "P.O. Box 136, 8191 Eros. Road", "Verrès", "81073", "Ap #861-943 Volutpat. Road", "Chelsea", "96390-71081", "483-3851", "vel.turpis.Aliquam@augueSedmolestie.co.uk", "123", 0, 6, "FR"),
(6, "CerEda", "Cervantes", "Edan", "P.O. Box 987, 6195 Amet Ave", "Straubing", "942041", "947-3836 Suscipit, St.", "Alessandria", "528919", "609-5334", "conubia.nostra@inmagnaPhasellus.edu", "123", 1, 8, "FR"),
(7, "BadDan", "Bass", "Dane", "821-4470 Vitae St.", "Qualicum Beach", "B54 2LZ", "P.O. Box 153, 717 Dolor Rd.", "Ilbono", "448118", "960-0922", "Sed@eu.edu", "123", 1, 2, "FR"),
(8, "WooEli", "Woodward", "Elijah", "1691 Urna St.", "Terme", "HC59 8GA", "2993 Ut St.", "Liberia", "805666", "1-519-996-2042", "quam.a@metusfacilisis.edu", "123", 1, 5, "FR"),
(9, "MccHoy", "Mccoy", "Hoyt", "Ap #354-8937 Lacus. Street", "Cunco", "290401", "483-2989 Arcu. Rd.", "Piła", "354454", "590-5875", "malesuada.vel@DonecegestasAliquam.net", "123", 1, 9, "FR"),
(10, "ConHan", "Conner", "Hannah", "Ap #126-9648 Fringilla. Av.", "Arbroath", "09510", "6545 Aliquet Ave", "Thionville", "05204-33331", "548-7849", "pharetra.Nam.ac@odioauctor.com", "123", 0, 9, "FR");