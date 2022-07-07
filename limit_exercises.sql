USE employees;

# distinct keyword makes non duplicates show
select distinct last_name
from employees
order by last_name desc
limit 10;

select emp_no
from salaries
order by salary desc
limit 5;

select emp_no
from salaries
order by salary desc
limit 4
offset 46;

# (limit * offset) - limit = results
select emp_no
from salaries
order by salary desc
limit 5
    offset 45;