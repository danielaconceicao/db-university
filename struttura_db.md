## traccia dell'esercizio
- sono presenti diversi Dipartimenti(es.: Lettere e Filosofia, Matematica, Ingegneria ecc.)

- ogni Dipartimento offre più Corsi di Laurea(es.: Civiltà e Letterature Classiche, Ingegneria Elettronica ecc..)

- ogni Corso di Laurea prevede diversi Corsi (es.: Letteratura Latina, Sistemi Operativi 1, Analisi Matematica 2 ecc.);

- ogni Corso può essere tenuto da diversi Insegnanti

- ogni Corso prevede più appelli d'Esame

- ogni Studente è iscritto ad un solo Corso di Laurea

- ogni Studente può iscriversi a più appelli di Esame

- per ogni appello d'Esame a cui lo Studente ha partecipato, è necessario memorizzare il voto       ottenuto, anche se non sufficiente

## DIPARTIMENTI
- ID | BIGINT AUTO_INCREMENT PRIMARY_KEY
- department_name | VARCHAR(20) NOT NULL
- description | TEXT(50) NULL

## CORSO_DI_LAUREA
- ID | BIGINT AUTO_INCREMENT PRIMARY_KEY 
- degree_course_name | VARCHAR(20) NOT NULL
- description | TEXT(50) NULL
- duration_years | TINTYINT DEFAULT(4) NOT NULL

## CORSI
- ID | BIGINT AUTO_INCREMENT PRIMARY_KEY
- course_name | VARCHAR(40) NOT NULL
- description | TEXT(50) NULL
- duration_in_hours | MEDIUMINT NOT NULL

## INSEGNANTI
- ID | BIGINT AUTO_INCREMENT PRIMARY_KEY
- name | VARCHAR(40) NOT NULL
- specialization | TEXT(50) NOT NULL


## ESAME
- ID | BIGINT AUTO_INCREMENT PRIMARY_KEY
- course_id | BIGINT (UNSIGNED) NOT NULL
- student_id | BIGINT (UNSIGNED) NOT NULL
- teacher_id | BIGINT (UNSIGNED) NOT NULL
- date | DATE NOT NULL

## STUDENTE
- ID | BIGINT AUTO_INCREMENT PRIMARY_KEY
- name | VARCHAR(40) NOT NULL
- date_of_birth | DATE  NULL
- degrren_course_id | BIGINT (UNSIGNED) NOT NULL
- course_id | BIGINT (UNSIGNED) NOT NULL
- registration_number | INT NOT NULL
- email | VARCHAR(40) NOT NULL

## VOTO
- exams_id | BIGINT (UNSIGNED) NOT NULL
- student_id | BIGINT (UNSIGNED) NOT NULL
- vote | INT NOT NULL
- voting_status | BOOLEAN DEFAULT(0) NOT NULL
