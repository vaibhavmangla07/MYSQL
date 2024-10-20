CREATE DATABASE classs;
USE classs;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(50)
);
SELECT * FROM student;

INSERT INTO student (rollno, name, marks, grade, city)
VALUES
(101, "ABCD", 70, "C", "PUNE"),
(102, "MNOP", 82, "B", "CHANDIGARH"),
(103, "WXYZ", 90, "A", "CHANDIGARH"),
(104, "IKJL", 98, "A", "PUNE"),
(105, "GHIJ", 60, "D", "KOLKATA"),
(106, "QRST", 78, "C", "PUNE"),
(107, "ASDF", 84, "B", "KOLKATA"),
(108, "QWER", 88, "B", "DELHI"), 
(109, "ASDF", 20, "F", "DELHI");

SELECT * FROM student;

SELECT city FROM student;
SELECT DISTINCT city From student;

SELECT name, marks FROM student;

SELECT * FROM student 
WHERE marks > 80;

SELECT * FROM student 
WHERE city = "PUNE";

SELECT * FROM student 
WHERE city NOT IN ("PUNE", "DELHI");

SELECT * FROM student 
WHERE marks > 80 AND city = "PUNE";

SELECT * FROM student 
WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student LIMIT 3;

SELECT * FROM student 
ORDER BY marks ASC;

SELECT * FROM student 
ORDER BY marks DESC;

SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(rollno) FROM student;

SELECT city, COUNT(rollno) 
FROM student 
GROUP BY city;

SELECT city, AVG(marks) 
FROM student 
GROUP BY city 
ORDER BY AVG(marks);

SELECT city, AVG(marks) 
FROM student 
GROUP BY city 
ORDER BY AVG(marks) DESC;

SELECT grade, COUNT(rollno) 
FROM student 
GROUP BY grade 
ORDER BY grade;

SELECT city, COUNT(rollno) 
FROM student 
GROUP BY city 
HAVING MAX(marks) > 90; 

SELECT city, COUNT(rollno) 
FROM student 
WHERE grade = 'A'
GROUP BY city 
HAVING MAX(marks) > 90; 

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET marks = 97
WHERE rollno = 103;

SELECT * FROM student;