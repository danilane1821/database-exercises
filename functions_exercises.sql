USE employees;

select CONCAT_WS(' ',first_name, last_name) AS display_name
FROM employees
WHERE first_name LIKE ('E%')
  AND last_name like('%E')
ORDER BY last_name DESC;

SELECT emp_no, first_name, last_name, birth_date, hire_date
FROM employees
WHERE hire_date like ('199%')
AND birth_date like ('%12-25')
ORDER BY birth_date ASC, hire_date DESC;

SELECT DATEDIFF(curdate(), hire_date)
FROM employees
WHERE hire_date like ('199%')
AND birth_date like ('%12-25')
ORDER BY birth_date, hire_date DESC;