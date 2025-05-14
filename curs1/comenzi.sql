CREATE DATABASE demo;
USE demo;

CREATE TABLE `demo`.`students` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `last name` VARCHAR(100) NOT NULL , 
    `first name` VARCHAR(100) NOT NULL , 
    `phone` CHAR(10) NOT NULL , 
    `email` VARCHAR(200) NOT NULL , 
    `date_added` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`)
    ) 
    
    ENGINE = InnoDB 
    CHARSET=utf8 COLLATE

    ALTER TABLE `students` CHANGE `email` `email` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

    ALTER TABLE `demo`.`students` ADD UNIQUE `email_unic` (`email`);

    INSERT INTO `users` (`id`, `last name`, `first name`, `email`, `phone`, `data_nastere`, `data_adaugare`) 
    VALUES (NULL, 'Raducu', 'Mihaela', 'raducu@mihaela.ro', '0722222222', current_timestamp(), current_timestamp());

    UPDATE `users` SET `first name` = 'Ana' WHERE `users`.`id` = 1;
    UPDATE `users` SET `last name` = 'Popescu' WHERE `users`.`id` = 2;



