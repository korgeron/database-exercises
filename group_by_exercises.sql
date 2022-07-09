USE employees;

# TODO: PROBLEM 1
select distinct title
from titles;

# TODO: PROBLEM 2
select last_name
from employees
where last_name like('e%e')
group by last_name
order by last_name;

# TODO: PROBLEM 3
select concat(first_name, ' ', last_name) as full_name
from employees
where last_name like ('e%e')
group by first_name, last_name
order by last_name;

# TODO: PROBLEM 4
select distinct last_name
from employees
where last_name like('%q%') and last_name not like ('%qu%');

# TODO: PROBLEM 5
select distinct last_name, count(last_name) as similar_name
from employees
where last_name like ('%q%') and last_name not like ('%qu%')
group by last_name;

# TODO: PROBLEM 6
select gender, count(gender) as count
from employees
where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya'
group by gender;

