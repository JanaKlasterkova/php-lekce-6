ukol 1
SELECT teacher.name
FROM teacher
LEFT JOIN class_subject ON class_subject.teacher_id=teacher.id
WHERE class_subject.subject_id IS NULL;

ukol 2
SELECT pupil.name, COUNT(pupil_subject.grade)
FROM pupil
JOIN pupil_subject ON pupil_subject.pupil_id=pupil.id
WHERE pupil_subject.grade=5
GROUP BY pupil.name;

ukol 3
SELECT c.id, AVG(ps.grade)
FROM pupil p
JOIN  class c ON c.id=p.class_id
JOIN pupil_subject ps ON p.id=ps.pupil_id
GROUP BY c.id;

ukol 4
SELECT c.year, AVG(ps.grade)
FROM pupil p
JOIN  class c ON c.id=p.class_id
JOIN pupil_subject ps ON p.id=ps.pupil_id
GROUP BY c.year;


ukol 5
SELECT teacher.name,COUNT(class_subject.class_id)
FROM class_subject
JOIN class ON class_subject.teacher_id=class.homeroom_teacher_id
JOIN teacher ON class_subject.teacher_id=teacher.id
WHERE class.homeroom_teacher_id=class_subject.teacher_id AND class.id=class_subject.class_id
GROUP BY teacher.name;

ukol 6
SELECT s.name,c.year, AVG(ps.grade)
FROM pupil p
JOIN class c ON c.id=p.class_id
JOIN pupil_subject ps ON p.id=ps.pupil_id
JOIN subject s ON ps.subject_id=s.id
GROUP BY s.name, c.year;

ukol 7
SELECT t.name as lidumil,AVG (ps.grade) as avg_grade
FROM class_subject cs
JOIN pupil_subject ps ON ps.subject_id=cs.subject_id
JOIN teacher t ON cs.teacher_id=t.id
GROUP BY t.name
ORDER BY avg_grade
LIMIT 5;

SELECT t.name as drsňák,AVG (ps.grade) as avg_grade
FROM class_subject cs
JOIN pupil_subject ps ON ps.subject_id=cs.subject_id
JOIN teacher t ON cs.teacher_id=t.id
GROUP BY t.name
ORDER BY avg_grade DESC
LIMIT 5;
