--1)Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.* 
FROM `students`
JOIN `degrees`
	ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia'

--1)Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.* 
FROM  `degrees`
JOIN `departments`
	ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'
