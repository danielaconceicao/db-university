SELECT `date_of_birth`
FROM `students`
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATA()) > 30;