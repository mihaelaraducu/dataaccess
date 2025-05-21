SELECT c.id_curs, c.titlu_curs, n.valoare FROM `cursuri` c NATURAL JOIN note AS n;
SELECT * FROM `cursuri` c NATURAL JOIN note n;

SELECT c.titlu_curs, COUNT(n.id_nota) AS nr_note FROM `cursuri` c NATURAL JOIN note n GROUP BY n.id_curs;
SELECT * FROM student CROSS JOIN note; -- nu este recomandat
SELECT * FROM student JOIN note; -- nu este recomandat
SELECT * FROM student INNER JOIN note; -- conditie cu ON
SELECT s.id FROM student As s CROSS JOIN note As n CROSS JOIN cursuri As c;

SELECT s.id, s.nume, s.prenume, n.valoare FROM student As s INNER JOIN note As n ON s.id = n.id_student WHERE s.id = 101;
SELECT s.id,s.nume, s.prenume, n.valoare, c.titlu_curs FROM student As s INNER JOIN note As n ON s.id = n.id_student INNER JOIN cursuri As c ON c.id_curs = n.id_curs WHERE s.id = 101;
SELECT s.id,s.nume, s.prenume, n.valoare, c.titlu_curs, c.id_curs FROM student As s LEFT JOIN note As n ON s.id = n.id_student INNER JOIN cursuri As c ON c.id_curs = n.id_curs WHERE s.id = 101;

SELECT nume, prenume, c.titlu_curs FROM `profesor`AS p LEFT JOIN didactic AS d ON p.id = d.id_prof LEFT JOIN cursuri AS c on d.id_curs = c.id_curs WHERE id = 1;
SELECT * FROM `cursuri` WHERE id_curs NOT IN (SELECT id_curs FROM didactic); --subinterogari
SELECT * FROM `student` WHERE id  NOT IN (SELECT id_student FROM note);
SELECT id_student, COUNT(id_student) as nr FROM `note` GROUP BY id_student having nr >=2;
SELECT id_student, s.nume, s.prenume, COUNT(id_student) as nr FROM `note` As n RIGHT JOIN student As s ON N.id_student = s.id GROUP BY id_student having nr >=2;
SELECT id_student, s.nume, s.prenume, COUNT(id_student) as nr FROM student AS S LEFT JOIN note AS n ON s.id = n.id_student group by id_student having nr >=2;

(SELECT nume, prenume FROM student WHERE prenume LIKE 'ion%') UNION (SELECT nume, prenume FROM profesor WHERE prenume LIKE 'ion%');
(SELECT nume, prenume, (CASE WHEN id>20 THEN 'student' END) AS type FROM student where prenume LIKE 'ion%') UNION (SELECT nume, prenume, (CASE WHEN id>20 THEN 'profesor' END) AS type FROM profesor where prenume LIKE 'ion%');

SELECT s.nume, s.prenume, FORMAT(AVG(n.valoare),1) from student s left join note n on s.id = n.id_student where s.id=101;
SELECT s.nume, s.prenume, FORMAT(AVG(n.valoare),1) AS media_totala from student AS s left join note AS n on s.id = n.id_student GROUP BY n.id_student;