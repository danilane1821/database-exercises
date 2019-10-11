USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name = 'Irena') Or (first_name = 'Vidya') Or (first_name = 'Maya');


ELECT emp_no, first_name, last_name, GENDER
FROM employees
WHERE gender = 'M' AND (first_name = 'Irena') Or Gender = 'M' AND (first_name = 'Vidya') Or Gender = 'M' AND (first_name = 'Maya');



SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('E%');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('E%')
OR last_name like('%E');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('E%')
AND last_name like('%E');



SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date like ('199%');
AND birth_date like ('%12-25');



SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date like ('%12-25');



SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like ('%q%')
AND last_name NOT LIKE ('%qu%');