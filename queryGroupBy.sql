--1)Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`) AS 'enrolment_year', COUNT(*) AS 'enrolled_students' 
FROM `students`
GROUP BY YEAR(`enrolment_date`)


--2)Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT `office_address`, COUNT(*) AS 'n_teachers'
FROM `teachers`
GROUP BY `office_address`


--3)Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, AVG(`vote`) AS 'avarage_vote'
FROM `exam_student`
GROUP BY `exam_id`;


--4)Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`, COUNT(*) AS 'n_degrees'
FROM `degrees`
GROUP BY `department_id;`