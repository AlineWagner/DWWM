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


INSERT INTO (`cli_id`, `cli_ref`, `cli_surname`, `cli_name`, `cli_billaddress`, `cli_billcity`, `cli_billzip`, `cli_deliaddress`, `cli_delicity`, `cli_delizip`, `cli_phone`, `cli_mail`, `cli_password`, `cli_type`, `cli_coeff`, `cou_id`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', ''),
(2, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', ''),
(3, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', ''),
(4, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', ''),
(5, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', ''),
(6, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', ''),
(7, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', ''),
(8, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', ''),
(9, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '');