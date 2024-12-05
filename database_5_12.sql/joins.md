SELECT distinct `students`.`name`, `degrees`.`name`
FROM `students`
JOIN `degrees` ON `degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in economia';

SELECT `degrees`. * 
FROM `degrees`
JOIN `departments`
ON `department_id` = `departments`.`id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'
AND `level` = 'Magistrale';

SELECT `courses`. *
FROM `courses`
JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `teacher_id` = 44;

SELECT `students`.*
FROM `students`
JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id` 
JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname`, `students`.`name` ASC;

SELECT `degrees`.`name` AS 'Degree course',
`courses`.`name` AS 'Course name',
`teachers`.`name` AS 'Teacher name',
`teachers`.`surname` AS 'Teacher surname'
FROM `degrees`
JOIN `courses` ON `courses`.`degree_id` = `degrees`.`id`
JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id`