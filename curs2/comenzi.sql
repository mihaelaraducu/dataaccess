CREATE TABLE `magazin`.`produse` (`idprodus` INT UNSIGNED NOT NULL AUTO_INCREMENT , `numeprodus` VARCHAR(100) NOT NULL , `cantitate` INT NOT NULL DEFAULT '0' , `idfirma` INT NOT NULL , `firma` VARCHAR(50) NOT NULL , `adresafirma` INT(100) NULL , `modelprodus` VARCHAR(50) NOT NULL , `stocproduse` INT NOT NULL DEFAULT '0' , `pret` DECIMAL(10,2) NOT NULL , `categorieprodus` VARCHAR(100) NOT NULL , `descrierep` TEXT NOT NULL , `dataadaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (`idprodus`)) ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

CREATE TABLE `magazin`.`firme` (`id` INT UNSIGNED NOT NULL AUTO_INCREMENT , `nume` VARCHAR(100) NOT NULL , `adresa` VARCHAR(200) NOT NULL , `dataadaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (`id`)) ENGINE = InnoDB;

SELECT NEW();
SELECT CURDATE();
SELECT * FROM student;
SELECT titlu_curs FROM cursuri;
SELECT nume, prenume FROM `student`;
SELECT * FROM `student` WHERE an BETWEEN 1 AND 2; -- RECOMENDAT
UPDATE student SET status = 'bursier' WHERE bursa IS NOT NULL;
SELECT nume, prenume FROM `profesor`;
SELECT nume AS "Nume profesor", prenume FROM `profesor`;
SELECT an AS An , COUNT(id) AS Nr_studenti FROM `student` ORDER BY `an` ASC;
SELECT * FROM `student` WHERE YEAR(data_nastere) >=1996;
SELECT * FROM `profesor` WHERE grad_didactic IN ('I', 'II');
EXPLAIN SELECT * FROM `profesor` WHERE grad_didactic IN ('I', 'II'); -- OPTIMIZARE
SELECT * FROM `cursuri` WHERE an =2 AND semestru = 2;
SELECT * FROM `student` WHERE prenume LIKE 'ion%';
SELECT * FROM `student` WHERE MONTH(data_nastere) = '09';
SELECT * FROM `student` WHERE MONTH(data_nastere) = '09' AND DAY(data_nastere) ='21';
SELECT * FROM `student` WHERE bursa *12 >4000;

SELECT * FROM `student`  
ORDER BY nume ASC, prenume DESC

SELECT * FROM `profesor` ORDER BY rand() LIMIT 3;
SELECT * FROM `profesor` WHERE grad_didactic= 'I' ORDER BY rand() LIMIT 3;

SELECT * FROM `student` ORDER BY nume ASC LIMIT 5;
SELECT * FROM `student` ORDER BY nume ASC LIMIT 5 OFFSET 10;

SELECT an, COUNT(id) as nr_student FROM `student` GROUP BY an HAVING nr_student >=9;
