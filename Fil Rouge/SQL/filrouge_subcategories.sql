SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories`(
   `subcat_id` VARCHAR(2) NOT NULL,
   `subcat_name` text(10) NOT NULL,
    PRIMARY KEY (`subcat_id`)
);


INSERT INTO `subcategories` (`subcat_id`, `subcat_name`) VALUES
