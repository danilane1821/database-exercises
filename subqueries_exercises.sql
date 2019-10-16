use employees;

select * from employees
where emp_no = 101010;

# 1990-10-22

select concat_ws(' ',first_name,last_name) as 'first and last name', hire_date
from employees
where hire_date =(
    select hire_date from employees
    where emp_no = 101010
    );


select *
from titles
where emp_no IN (
    select emp_no
    from employees
    where first_name = 'Aamod'
);



select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from dept_manager
    where gender = 'f'
    and to_date > now()

    );

SELECT dept_name FROM departments
WHERE dept_no IN (
    select dept_no from dept_manager
    WHERE emp_no IN (
        select emp_no
        from employees
        where to_date > now()
          AND gender = 'F'
    )
);



# SELECT MAX(amount)
# FROM payments;


