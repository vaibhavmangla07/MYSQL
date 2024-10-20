CREATE DATABASE college;
USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);
INSERT INTO student VALUES(1, "ABCD", 19);
INSERT INTO student VALUES(2, "XYZ", 20);

SELECT * FROM student;