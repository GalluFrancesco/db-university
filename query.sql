-- 1)Selezionare tutti gli studenti nati nel 1990 (160)
SELECT * 
FROM `students`
WHERE YEAR(`date_of_birth`)=1990

--2)Selezionare tutti i corsi che valgono più di 10 credit
SELECT * 
FROM `courses`
WHERE `cfu` > 10