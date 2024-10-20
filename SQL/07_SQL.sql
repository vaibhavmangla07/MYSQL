CREATE DATABASE room;
USE room;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(50)
);

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

TRUNCATE TABLE student;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM student
WHERE marks < 50;
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE student
DROP COLUMN grade;

ALTER TABLE student
CHANGE name full_name VARCHAR(50);

SELECT * FROM student;