CREATE DATABASE school;
USE school;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);
SELECT * FROM student;

INSERT INTO student
(rollno, name)
VALUES
(1, "ABCD"),
(2, "MNOP"),
(3, "WXYZ");

SELECT * FROM student;