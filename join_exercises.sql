use employees;

SELECT departments.dept_name AS 'Department Name', CONCAT_WS(' ',e.first_name, e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager ON e.emp_no = dept_manager.emp_no
JOIN departments on dept_manager.dept_no = departments.dept_no
WHERE to_date > now()
ORDER BY dept_name;

SELECT departments.dept_name AS 'Department Name', CONCAT_WS(' ',e.first_name, e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager ON e.emp_no = dept_manager.emp_no
JOIN departments on dept_manager.dept_no = departments.dept_no
WHERE to_date > now()
AND gender ='f'
ORDER BY dept_name;

SELECT titles.title, count(*)
from employees
join titles
on titles.emp_no =employees.emp_no
join dept_emp
on employees.emp_no = dept_emp.emp_no
WHERE titles.to_date > now() and dept_no = 'd009'
group by titles.title;



SELECT departments.dept_name AS 'Department Name', CONCAT_WS(' ',e.first_name, e.last_name) AS 'Department Manager',salaries.salary as 'Salary'
FROM employees as e
JOIN dept_manager ON e.emp_no = dept_manager.emp_no
JOIN departments on dept_manager.dept_no = departments.dept_no
JOIN salaries on salaries.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > now() and salaries.to_date > now()
ORDER BY dept_name;


