-- 1)Selezionare tutti gli studenti nati nel 1990
SELECT * 
FROM `students`
WHERE YEAR(`date_of_birth`)=1990

--2)Selezionare tutti i corsi che valgono più di 10 credit
SELECT * 
FROM `courses`
WHERE `cfu` > 10

--3)Selezionare tutti gli studenti che hanno più di 30 anni
SELECT * 
FROM `students`
WHERE `date_of_birth` <= "1992-02-22"

--4)Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea
SELECT * 
FROM `courses`
WHERE `period` = "I semestre"
	AND `year` = 1;

--5)Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020
SELECT * 
FROM `exams`
WHERE `date` = "2020-06-20"
	AND `hour` > TIME("14:00:00");

--6)Selezionare tutti i corsi di laurea magistrale
SELECT * 
FROM `degrees`
WHERE `level` = "magistrale";
