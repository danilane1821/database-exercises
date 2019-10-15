use employees;

SELECT DISTINCT title
FROM titles;


SELECT last_name
FROM employees
WHERE last_name LIKE ('E%E')
group by last_name;


SELECT last_name, first_name
FROM employees
WHERE last_name LIKE ('E%E')
group by last_name, first_name;


SELECT last_name
FROM employees
WHERE last_name like ('%q%')
AND last_name NOT LIKE ('%qu%')
group by last_name;


SELECT last_name, count(*)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
group by last_name
ORDER BY COUNT(*);


SELECT COUNT(FIRST_NAME), gender
FROM employees
WHERE (first_name = 'Irena') Or (first_name = 'Vidya') Or (first_name = 'Maya')
group by gender;
