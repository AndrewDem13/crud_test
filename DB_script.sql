CREATE SCHEMA `test` DEFAULT CHARACTER SET utf8;

CREATE TABLE `test`.`user` (
  `id` INT(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(25) NOT NULL,
  `age` INT NOT NULL,
  `isAdmin` BIT(1) NOT NULL DEFAULT false,
  `createdDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

INSERT INTO `test`.`user` (`name`, `age`) VALUES ('Mike', '25');
INSERT INTO `test`.`user` (`name`, `age`) VALUES ('Alex', '23');
INSERT INTO `test`.`user` (`name`, `age`) VALUES ('Tom', '16');
INSERT INTO `test`.`user` (`name`, `age`) VALUES ('Mark', '45');
INSERT INTO `test`.`user` (`name`, `age`) VALUES ('Alex', '23');
INSERT INTO `test`.`user` (`name`, `age`) VALUES ('Paul', '20');