--1)Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.* 
FROM `students`
JOIN `degrees`
	ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia'

--2)Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.* 
FROM  `degrees`
JOIN `departments`
	ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'

--3)Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.*
FROM `courses`
JOIN `course_teacher`
	ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
	ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `course_teacher`.`teacher_id` = 44