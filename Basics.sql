CREATE DATABASE IF NOT EXISTS university;
USE university;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student 
(rollno, name,marks, grade,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT *FROM student;

SELECT rollno, name FROM student;
SELECT DISTINCT city FROM student;
SELECT *FROM student WHERE city ="Delhi";
SELECT *FROM student WHERE marks>80;
SELECT *FROM student WHERE marks+10>100;
SELECT *FROM student WHERE marks=93;
SELECT *FROM student WHERE marks>90 OR city="Mumbai";
SELECT *FROM student WHERE marks BETWEEN 80 AND 90;
SELECT *FROM student WHERE city IN ("Delhi","Pune");
SELECT *FROM student WHERE city NOT IN ("Delhi","Pune");
SELECT *FROM student LIMIT 3;
SELECT *FROM student WHERE marks>80 LIMIT 2;
SELECT *FROM student ORDER BY city ASC;
SELECT *FROM student ORDER BY marks DESC LIMIT 3;

