CREATE DATABASE school;

USE school;

CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50),
marks INT,
course VARCHAR(50)

);

INSERT INTO students
(student_id, name, city, marks, course)
VALUES
(101, "Rahul", "Delhi", 85, "SQL"),
(102,"Amit", "Mumbai", 92, "Python"),
(103,"Priya", "Delhi", 78, "Java"),
(104,"Neha", "Patna", 95, "C++"),
(105,"Rohit", "Mumbai", 92, "Python"),
(106,"Pooja", "Delhi", 73, "SQL"),
(107,"Ankit", "Patna", 91, "Python"),
(108,"Sneha", "Mumbai", 88, "C++"),
(109,"Karan", "Patna", 96, "SQL"),
(110,"Riya", "Delhi", 82, "Python");

SELECT * FROM students;

SELECT name, marks
FROM students;

SELECT * FROM students 
WHERE marks > 90;

SELECT * FROM students
ORDER BY marks ASC;

SELECT * FROM students
ORDER BY marks DESC;

SELECT * FROM students
ORDER BY city ASC;

SELECT * FROM students
ORDER BY city DESC;

SELECT * FROM students 
LIMIT 5;

SELECT * FROM students WHERE marks > 90
LIMIT 5;

SELECT city, count(name)
FROM students
GROUP BY city;

SELECT AVG(marks)
FROM students;

SELECT marks, MAX(marks)
FROM students
GROUP BY  city;

SELECT marks, AVG(marks)
FROM students
GROUP BY marks;

SELECT name, city 
FROM students;

SELECT * FROM stuents
WHERE marks > 80;

SELECT city, max(marks) FROM students
where city = "Delhi";

SELECT name, marks, course
FROM students
WHERE marks > 90;

SELECT * FROM students WHERE marks > 90 AND city = "Mumbai";

SELECT * FROM students WHERE marks > 90 OR  city  = "Mumbai";

SELECT * FROM students WHERE marks BETWEEN 90 AND 96;

SELECT * FROM students WHERE city IN ("Delhi", "Patna");

SELECT * FROM students WHERE city NOT IN ("Delhi", "Patna");

SELECT  city, count(name)
FROM students
GROUP BY city 
HAVING max(marks) > 90;

SELECT city,  count(name)
FROM students
GROUP BY city 
HAVING count(name) > 3;

SELECT * FROM students;

UPDATE students
SET marks = 78
WHERE student_id = 103;

DELETE FROM students
WHERE marks < 33;

SELECT city, count(name)
 FROM students 
 GROUP BY city 
 HAVING AVG(marks) > 90;

DROP DATABASE IF EXISTS filipcart;

SHOW DATABASES;

SHOW TABLES;