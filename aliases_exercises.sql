use employees;

SELECT CONCAT(LAST_name, ' ', FIRST_name) AS full_name
FROM employees
LIMIT 10;

SELECT CONCAT(LAST_name, ' ', FIRST_name) AS full_name
FROM employees
LIMIT 10;

SELECT CONCAT_WS(' ',emp_no,LAST_name,FIRST_name) AS "full_name", birth_date AS "DOB"
FROM employees
LIMIT 10;
