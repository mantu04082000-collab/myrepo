CREATE TABLE compnay(
id INT PRIMARY KEY,
name VARCHAR(50),
maneger_id INT
);

USE amzone;


insert INTO compnay
(id, name, maneger_id)
VALUES 
(101,"adam", 103),
(102,"bob", 104),
(103,"casey", NULL),
(104,"donald", 103);

SELECT * FROM compnay;

SELECT *
FROM compnay as a
JOIN compnay as b
ON a.id = b.maneger_id;

SELECT a.name, b.name
FROM compnay as a
JOIN compnay as b 
ON a.id = b.maneger_id;

SELECT a.name AS maneger_name, b.name
FROM compnay as a
JOIN compnay as b 
ON a.id = b.maneger_id;