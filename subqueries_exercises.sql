USE employees;

# TODO: PROBLEM 1
select concat(e.first_name, ' ', e.last_name) as Employee
from employees as e
where hire_date in (
    select hire_date
    from employees
    where emp_no in (
        select emp_no
        from employees
        where emp_no = 101010
        )
    );

# TODO: PROBLEM 2
select title
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name in (
        select first_name
        from employees
        where first_name = 'Aamod'
        )
    );

# TODO: PROBLEM 3
select concat(e.first_name, ' ', e.last_name) as 'Female Manager'
from employees as e
where gender = 'F' and emp_no in (
    select emp_no
    from dept_manager as dm
    where dm.emp_no = e.emp_no and dm.to_date > curdate()
    );