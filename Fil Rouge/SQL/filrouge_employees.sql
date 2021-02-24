SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees`(
   `emp_id` INT NOT NULL,
   `pos_id` INT NOT NULL,
   `emp_ref` VARCHAR(10) NOT NULL,
   `emp_surname` VARCHAR(50) NOT NULL,
   `emp_name` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`subcat_id`),
    FOREIGN KEY `pos_id` REFERENCES Positions (`pos_id`)
);


INSERT INTO `employees` (`emp_id`, `pos_id`, `emp_ref`, `emp_surname`, `emp_name`) VALUES
(1, '', '', '', ''),
