--1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name`, `students`.`surname`, `students`.`degree_id`, 
	`degrees`.name
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.id = 53;

--2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT *
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.id
WHERE `level` = "magistrale";

--3.Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)