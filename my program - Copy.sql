
CREATE DATABASE collage;

USE collage;

CREATE TABLE students;

CREATE TABLE students(

rollno INT PRIMARY KEY,
name VARCHAR (50),
marks INT NOT NULL,
grade VARCHAR (1),
city VARCHAR (20) 
);

INSERT INTO students
(rollno,name,marks,grade,city)

VALUES 
(101,"anil",78,"C","Patna"),
(102,"sunil",81,"A","Pune"),
(103,"ram",90,"B","Patna"),
(104,"raja",65,"F","Delhi"),
(105,"Puja",98,"A","Patna"),
(106,"ankit",55,"D","Up"),
(107,"Biku",87,"B","Pune"),
(108,"Pankaj",68,"C","Nagpur"),
(109,"hinda",45,"D","Mumbi");

SELECT * FROM students;

SELECT name, marks FROM students;

SELECT name, marks, city FROM students;

SELECT name, marks, city, grade,rollno FROM students;

select * from students;

SELECT DISTINCT city FROM students;

SELECT DISTINCT grade FROM students;

SELECT DISTINCT name FROM students;

SELECT DISTINCT rollno FROM students;

SELECT DISTINCT city FROM students;

SELECT * FROM students WHERE marks > 80;

SELECT * FROM students

SELECT * FROM students WHERE city = "patna";

SELECT * FROM students WHERE gared = "A";

SELECT * FROM students WHERE marks > 80 AND city = "Patna";

SELECT * FROM students WHERE marks+10 > 80;

SELECT * FROM students WHERE marks+10 > 100;

SELECT * FROM students WHERE marks-10 > 70;


SELECT * FROM students WHERE marks= 96;

SELECT * FROM students WHERE marks= 90;

SELECT * FROM students WHERE marks > 90 AND city = "Patna";

SELECT * FROM students WHERE marks > 90 OR city = "Patna";

SELECT * FROM students WHERE marks BETWEEN 80 AND 90;

SELECT * FROM students WHERE city IN ("Patna","Delhi","Pune");

SELECT * FROM students WHERE city NOT IN ("Patna","Delhi","Pune");

SELECT * FROM students  LIMIT  2;

SELECT * FROM students  LIMIT  8;

SELECT * FROM students  LIMIT  0;

SELECT * FROM students  LIMIT  4;

SELECT * FROM students WHERE marks > 75  LIMIT 3;

SELECT * FROM students WHERE MARKS > 70 LIMIT 5;

SELECT * FROM students ORDER BY city ASC;

SELECT * FROM students ORDER BY name ASC;

SELECT * FROM students ORDER BY grade ASC;

SELECT * FROM students ORDER BY marks ASC;

SELECT * FROM students ORDER BY city DESC;

SELECT * FROM students ORDER BY name DESC;

SELECT * FROM students ORDER BY rollno ASC;

SELECT * FROM  students ORDER BY marks ASC LIMIT 3;

SELECT * FROM students ORDER BY  marks DESC LIMIT 3;

SELECT * FROM students ORDER BY city DESC LIMIT  3;

SELECT * FROM students ORDER BY marks ASC;


SELECT marks  FROM students;

SELECT MAX(marks) FROM students;

SELECT MIN(marks) FROM students;

SELECT AVG(marks) FROM students;

SELECT count(marks) FROM students;

SELECT SUM(marks) FROM students;

SELECT count(rollno) FROM students;

SELECT sum(mark) FROM students;

SELECT city FROM students GROUP BY city;

SELECT city, count(rollno) FROM students GROUP BY city;

SELECT city, name, count(rollno) FROM students GROUP BY city,name;

SELECT city, MAX(marks) FROM students GROUP BY city;

SELECT city, AVG(marks) FROM students GROUP BY city ORDER BY city;

SELECT city, AVG(marks) FROM students GROUP BY city  ORDER BY AVG(marks) DESC;

SELECT city, AVG(marks) FROM students GROUP BY city ORDER BY AVG(marks) DESC;

SELECT grade FROM students GROUP BY grade;

SELECT grade FROM students GROUP BY grade ORDER BY grade;

SELECT grade FROM students GROUP BY grade ORDER BY grade DESC;

SELECT grade, COUNT(rollno) FROM students GROUP BY grade ORDER BY grade;

SELECT city FROM students GROUP BY city;

SELECT city, count(rollno) FROM students GROUP BY city HAVING max(marks) > 86;

SELECT city FROM students WHERE grade = "A+" GROUP BY city;

SELECT city FROM students WHERE grade = "A+" GROUP BY city HAVING max(marks) > 80;

SELECT city FROM students WHERE grade = "A+" GROUP BY city HAVING max(marks) >= 80;

SELECT city FROM students WHERE grade = "A+" GROUP BY city HAVING max(marks) >=80 ORDER BY city Asc;

SELECT city FROM students WHERE grade = "A+" GROUP BY city HAVING max(marks) >=80 ORDER BY city DESC;

SET SQL_SAFE_UPDATES = 0;

UPDATE students SET grade = "A+" WHERE grade = "O";

SELECT * FROM students;


