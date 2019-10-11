USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;



SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('E%')
ORDER BY emp_no;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('E%')
OR last_name like('%E')
ORDER BY emp_no;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('E%')
AND last_name like('%E')
ORDER BY emp_no;



SELECT emp_no, first_name, last_name, birth_date, hire_date
FROM employees
WHERE hire_date like ('199%')
  AND birth_date like ('%12-25')
ORDER BY birth_date ASC, hire_date DESC;

