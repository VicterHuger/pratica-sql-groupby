--Exercício 1

SELECT COUNT ("endDate") as "currentExperiences" FROM experiences; 

--Exercício 2

SELECT "userId" as id, COUNT(id) as educations FROM educations GROUP BY "userId";

--Exercício 3

SELECT u.name as writer, COUNT(t.id) as testimonailCount
FROM testimonials t 
JOIN users u
ON t."writerId"=u.id
WHERE u.id=435
GROUP BY u.name, u.id;

--Exercício 4

SELECT MAX(j.salary) as "maximumSalary", r.name as "role" 
FROM jobs j 
JOIN roles r
ON j."roleId"=r.id
WHERE j.active=true
GROUP BY r.name;

--Bônus

SELECT s.name as school, c.name as course, COUNT(e."userId") as "studentsCount"
FROM educations e
JOIN schools s
ON e."schoolId"=s.id
JOIN courses c
ON e."courseId"=c.id
WHERE 
(e.status='ongoing' OR e.status='finished')
GROUP BY s.name, c.name
ORDER BY "studentsCount" DESC OFFSET 0 LIMIT 3;   