CREATE DATABASE class;
DROP DATABASE class;
USE class;

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

DROP TABLE teacher;

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY(dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO dept(id, name)
VALUES
(101, "PHYSICS"),
(102, "ENGLISH"),
(103, "MATHS"),
(104, "HISTORY"),
(105, "CHEMISTRY"),
(106, "ECONOMICS");

INSERT INTO teacher(id, name, dept_id)
VALUES
(101, "JOHN", 101),
(102, "BOB", 102),
(103, "SAM", 103),
(104, "ROHAN", 104),
(105, "ADAM", 105),
(106, "DONALD", 106);

UPDATE dept
SET id = 110
WHERE id = 106;

SELECT * FROM  dept;
SELECT * FROM teacher;
