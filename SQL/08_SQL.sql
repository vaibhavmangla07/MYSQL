CREATE DATABASE sub;
USE sub;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO student(id, name)
VALUES
(101, "ADAM"),
(102, "BOB"),
(103, "CASEY");

INSERT INTO course(id, course)
VALUES
(102, "ENGLSIH"),
(105, "MATH"),
(103, "SCIENCE"),
(107, "CS");

SELECT * FROM student;
SELECT * FROM course;

-- (INNER JOIN -> MEANS COMMON PART OF TWO TABLES )
SELECT * FROM 
student AS s
INNER JOIN        
course AS c  
ON s.id = c.id;


-- (LEFT JOIN -> MEANS COMMON PART OF TWO TABLES AND FULL DATA OF TABLE 1 )
SELECT * FROM 
student AS s
LEFT JOIN         
course AS c        
ON s.id = c.id;


-- (RIGHT JOIN -> MEANS COMMON PART OF TWO TABLES AND FULL DATA OF TABLE 2)
SELECT * FROM 
student AS s
RIGHT JOIN         
course AS c        
ON s.id = c.id;


-- (UNION JOIN -> MEANS COMMON PART OF TWO TABLES AND FULL DATA OF TABLE 1 AND TABLE 2)
SELECT * FROM student AS s
LEFT JOIN course AS c        
ON s.id = c.id
UNION  
SELECT * FROM student AS s
RIGHT JOIN course AS c        
ON s.id = c.id;


-- (LEFT EXCLUSIVE JOIN -> MEANS FULL DATA OF TABLE 1 NOT COMMON PART OF TWO TABLES AND)
SELECT * FROM student AS s
LEFT JOIN course AS c        
ON s.id = c.id
WHERE c.id IS NULL;


-- (RIGHT EXCLUSIVE JOIN -> MEANS FULL DATA OF TABLE 2 NOT COMMON PART OF TWO TABLES AND)
SELECT * FROM student AS s
RIGHT JOIN course AS c        
ON s.id = c.id
WHERE s.id IS NULL;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee(id, name, manager_id)
VALUES
(101, "ADAM", 103),
(102, "BOB", 104),
(103, "CASEY", NULL),
(104, "DONALD", 103);

SELECT * FROM employee;


-- (SELF JOIN -> IS A REGULAR JOIN BUT THE TABLE IS JOINED WITH ITSELF)
SELECT a.name AS manager_name, b.name
FROM employee AS a
JOIN employee AS b        
ON a.id = b.manager_id;


-- (UNION -> GIVES UNIQUE RECORD AND REMOVE THE DUPLICATES)
SELECT name FROM employee
UNION 
SELECT name FROM employee;


-- (UNION ALL -> GIVES RECORD WITH THE DUPLICATES)
SELECT name FROM employee
UNION ALL
SELECT name FROM employee;
