CREATE DATABASE company;
USE company;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

SELECT * FROM employee;

INSERT INTO employee 
(id, name, salary)
VALUES
(1, "Adam", 25000),
(2, "Rohan", 35000),
(3, "Rohit", 40000),
(4, "Boby", 29000);

SELECT * FROM employee;