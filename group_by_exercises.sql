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


# TODO: PROBLEM 5


# TODO: PROBLEM 6


