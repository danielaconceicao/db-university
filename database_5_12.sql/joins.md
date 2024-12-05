SELECT distinct `students`.`name`, `degrees`.`name`
FROM `students`
JOIN `degrees` ON `degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in economia' 


SELECT `degrees`. * 
FROM `degrees`
JOIN `departments`
ON `department_id` = `departments`.`id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'
AND `level` = 'Magistrale'