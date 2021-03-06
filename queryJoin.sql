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

--4)Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.*, 
        `degrees`.`name` AS "degrees_name", `degrees`.`level` AS "degrees_level",
        `departments`.`name` AS "departments_name"
FROM `students`
JOIN `degrees`
	ON `students`.`degree_id` = `degrees`.`id`
JOIN `departments`
	ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname`, `students`.`name`

--5)Selezionare tutti i corsi di laurea con i relativi corsi e insegnati
SELECT `degrees`.*,
		`courses`.`id` AS "id_course", `courses`.`name` AS "course_name", `courses`.`year`, `courses`.`period`,
        `teachers`.AS "id_teacher", `teachers`.`name` AS "teacher_name", `teachers`.`surname` AS "teacher_surname"
FROM `degrees`
JOIN `courses`
	ON `degrees`.`id` = `courses`.`degree_id`
JOIN `course_teacher`
	ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers` 
	ON `course_teacher`.`teacher_id` = `teachers`.`id`

--6)Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT DISTINCT `teachers`.*
FROM `departments`
JOIN `degrees`
	ON `departments`.`id` = `degrees`.`department_id`
JOIN `courses`
	ON `degrees`.`id` = `courses`.`degree_id`
JOIN `course_teacher`
	ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers`
	ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `departments`.`name` = 'Dipartimento di Matematica'

