USE employees;
# TODO: Problem 1
select first_name, last_name
from employees
where first_name in('irena', 'vidya', 'maya')
order by first_name, emp_no desc;

# TODO: Problem 2
select first_name, last_name
from employees
where first_name in('irena', 'vidya', 'maya')
order by first_name, last_name;

# TODO: Problem 3
select first_name, last_name
from employees
where first_name in('irena', 'vidya', 'maya')
order by last_name, first_name;

# TODO: Problem 4
select first_name, last_name, emp_no
from employees
where last_name like('%e%')
order by emp_no;

