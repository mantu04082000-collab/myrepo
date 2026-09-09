CREATE DATABASE company;

USE company ;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR (50)

 );
 
 INSERT INTO employee 
 (id,name)
 VALUES
 (101,"Mantu"),
 (102,"Pankaj"),
 (103,"Ganu");
 
 SELECT * FROM employee;
 
 CREATE TABLE course(
 id INT PRIMARY KEY,
 course VARCHAR(50)
 );
 
 SELECT * FROM course;
 
 DROP TABLE course;
 
 INSERT INTO course 
 (id, course)
 VALUES
 (102,"english"),
 (105,"math"),
 (111,"computer science"),
 (103,"science");
 
SELECT * FROM employee;
 SELECT * FROM course;
 
 SELECT * 
 FROM employee
 INNER JOIN course
 ON employee.id = course.id;
 
 SELECT *
 FROM employee as e
 INNER JOIN course as c
 ON e.id = c.id;
 
 SELECT * 
 FROM employee as e
 LEFT JOIN course as c
 ON e.id = c.id;
 
 SELECT *
 FROM employee as e
 RIGHT JOIN course as c
 ON e.id = c.id;
 
 SELECT *
 FROM employee as e
 LEFT JOIN course as c
 ON e.id = c.id
 UNION 
 
 SELECT * 
 FROM employee as e
 RIGHT JOIN course as c
 ON e.id = c.id;
 
 SELECT *
 FROM employee as e 
 LEFT JOIN course as c 
 ON e.id = c.id
 WHERE c.id IS NULL;
 
 SELECT *
 FROM employee as e
 RIGHT JOIN course as c
 ON e.id = c.id
 WHERE e.id IS NULL;
 