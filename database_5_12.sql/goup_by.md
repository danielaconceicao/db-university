SELECT COUNT(id), enrolment_date FROM students GROUP BY enrolment_date

SELECT COUNT(*) AS `total_theacher`, `office_address`
FROM `teachers`
GROUP BY `office_address`;


SELECT AVG(`vote`) AS `averege_vote`, `exam_id`
FROM `exam_student`
GROUP BY `exam_id`;


SELECT COUNT(`degrees`.`id`) AS `degree_count`,
`departments`.`name`
FROM `departments`
JOIN `degrees`
ON `departments`.`id` = `degrees`.`department_id`
GROUP BY `departments`.`id`, `departments`.`name`;