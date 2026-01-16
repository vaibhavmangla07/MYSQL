CREATE DATABASE company;
USE company;

CREATE TABLE employee1(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(10),
    salary INT
);

INSERT INTO employee1(id, name, dept, salary)
VALUES
(1, "A", "IT", 60000),
(2, "B", "IT", 50000),
(3, "C", "IT", 50000),
(4, "D", "HR", 45000),
(5, "E", "HR", 40000);

SELECT * FROM employee1;

-- CTE

WITH high_salary AS(
	SELECT * FROM employee1
    WHERE salary > 50000
)
SELECT * FROM high_salary;

-- CTE with Calculation

WITH dept_avg AS(
	SELECT dept, AVG(salary) AS avg_salary FROM employee1
    GROUP BY dept
)
SELECT * FROM dept_avg;
    

CREATE TABLE employee2(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee2(id, name, manager_id)
VALUES
(1, "CEO", NULL),
(2, "M1", 1),
(3, "M2", 1),
(4, "D1", 2),
(5, "D2", 2);

SELECT * FROM employee2;

-- Recursive CTE

WITH RECURSIVE emp_tree AS (
    -- Anchor member
    SELECT id, name, manager_id, 1 AS level
    FROM employee2
    WHERE manager_id IS NULL

    UNION ALL

    -- Recursive member
    SELECT e.id, e.name, e.manager_id, et.level + 1
    FROM employee2 e
    JOIN emp_tree et
	ON e.manager_id = et.id
)
SELECT * FROM emp_tree;




