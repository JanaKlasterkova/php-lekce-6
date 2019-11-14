Úkol 1
SELECT * FROM teacher;
SELECT name FROM subject;
SELECT year, name FROM class;

Úkol 2
SELECT name, salary FROM teacher ORDER BY salary DESC;

Úkol 3
SELECT year, name FROM class WHERE year>2;
SELECT id,year, name FROM class WHERE name IN ("A","C") ORDER BY year DESC;
SELECT name FROM teacher WHERE name IN ("Jesse", "Alice", "Larry") AND salary >40000;

Úkol 4
SELECT COUNT(*), AVG(salary) FROM teacher;
SELECT name,MIN(year), MAX(year) FROM class GROUP by name;
SELECT name,MIN(year), MAX(year) FROM class GROUP by name ORDER BY name DESC;


Úkol 5
SELECT COUNT(*) AS teacher_count,AVG(salary) AS avg_salary from teacher;

SELECT class.year,class.name, teacher.name
FROM class
JOIN teacher ON teacher.id=class.homeroom_teacher_id
ORDER BY class.year, class.name;

SELECT class.year,class.name, teacher.name
FROM class
JOIN teacher ON teacher.id=class.homeroom_teacher_id
WHERE teacher.name="Albert";

SELECT class.year, class.name, COUNT(*)
FROM class
JOIN pupil ON pupil.class_id=class.id
GROUP BY class.year, class.name;


Úkol 6
SELECT c.year,c.name, t.name
FROM class c
JOIN teacher t ON t.id=c.homeroom_teacher_id;

UPDATE class c
JOIN teacher t ON t.id=c.homeroom_teacher_id
SET c.name="C"
WHERE t.name IN ("Albert","Susan");

SELECT c.year,c.name, t.name
FROM class c
JOIN teacher t ON t.id=c.homeroom_teacher_id;

UPDATE class c
JOIN teacher t ON t.id=c.homeroom_teacher_id
SET c.name="B"
WHERE t.name IN ("Albert","Susan");

SELECT c.year,c.name, t.name
FROM class c
JOIN teacher t ON t.id=c.homeroom_teacher_id;
