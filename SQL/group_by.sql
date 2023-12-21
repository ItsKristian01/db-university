
-- 1. Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(*) as `enrolments`, YEAR(`enrolment_date`) as `year`
FROM `students`
GROUP BY YEAR(`enrolment_date`);
---

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT COUNT(*) AS `same_office`, `office_address` as `office`
FROM `teachers`
GROUP BY `office_address`
HAVING COUNT(*) > 0;
---

-- 3. Calcolare la media dei voti di ogni appello d'esame

SELECT AVG(`vote`), COUNT(*) as `exams`
FROM `exam_student`
GROUP BY `student_id`
ORDER BY AVG(`vote`) DESC;
---

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT COUNT(*) as `courses_department`
FROM `degrees`
GROUP BY `department_id`;
