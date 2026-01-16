CREATE DATABASE window_functions_db;
USE window_functions_db;

CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(20),
    salary INT
);

INSERT INTO employee (id, name, dept, salary) VALUES
(1, 'A', 'IT', 60000),
(2, 'B', 'IT', 50000),
(3, 'C', 'IT', 50000),
(4, 'D', 'HR', 45000),
(5, 'E', 'HR', 40000);


-- BASIC WINDOW FUNCTION

SELECT *,
	RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employee;


-- PARTITION BY 

SELECT *,
	DENSE_RANK() OVER (PARTITION BY dept ORDER BY salary DESC) AS dept_rank
FROM employee;


-- RUNNING TOTAL (SUM)

SELECT *,
	SUM(salary) OVER (ORDER BY salary) AS running_total
FROM employee;


-- --------------------------------
-- 1. RANKING WINDOW FUNCTION TYPES
-- --------------------------------

-- ROW_NUMBER()
SELECT *,
	ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
FROM employee;

-- RANK()
SELECT *,
	RANK() OVER (ORDER BY salary DESC) AS rnk
FROM employee;

-- DENSE_RANK()
SELECT *,
	DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rnk
FROM employee;

-- NTILE(n)
SELECT *,
	NTILE(3) OVER (ORDER BY salary DESC) AS bucket
FROM employee;


-- -------------------------------
-- 2. AGGREGATE WINDOW FUNCTIONS
-- -------------------------------

SELECT *,
       SUM(salary) OVER (PARTITION BY dept) AS dept_total_salary,
       AVG(salary) OVER (PARTITION BY dept) AS dept_avg_salary,
       COUNT(*) OVER (PARTITION BY dept) AS dept_emp_count,
       MIN(salary) OVER (PARTITION BY dept) AS dept_min_salary,
       MAX(salary) OVER (PARTITION BY dept) AS dept_max_salary
FROM employee;


-- --------------------------
-- VALUE / OFFSET FUNCTIONS
-- --------------------------

-- LAG()
SELECT *,
       LAG(salary) OVER (ORDER BY salary) AS prev_salary
FROM employee;

-- LEAD()
SELECT *,
       LEAD(salary) OVER (ORDER BY salary) AS next_salary
FROM employee;

-- FIRST_VALUE()
SELECT *,
       FIRST_VALUE(salary) OVER (ORDER BY salary DESC) AS highest_salary
FROM employee;

-- LAST_VALUE (Frame required for correct result)

SELECT *,
       LAST_VALUE(salary) OVER (ORDER BY salary DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS lowest_salary
FROM employee;


-- -----------------------------
-- FRAME-BASED WINDOW FUNCTION
-- MOVING AVERAGE
-- -----------------------------
SELECT *,
       AVG(salary) OVER (
           ORDER BY salary
           ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
       ) AS moving_avg
FROM employee;
