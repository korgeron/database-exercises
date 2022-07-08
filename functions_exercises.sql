USE employees;

# TODO: EMPLOYEES NAMES THAT STARTS / ENDS WITH 'E'
#  NOTES: adding AS (new field name) lets you name the concat () results as new field name
select concat(first_name, ' ',last_name) as full_name, emp_no
from employees
where last_name like('%e%')
order by emp_no;

# TODO: FIND ALL EMPLOYEES BORN ON CHRISTMAS — 842 rows (ADDED IN CONCAT FOR FUN / PRACTICE)
select emp_no, concat(first_name, ' ', last_name) as full_name, birth_date
from employees
where day(birth_date) = 25 and (month(birth_date) = 12);

# TODO: FIND ALL EMPLOYEES HIRED IN THE 90S AND BORN ON CHRISTMAS — 362 rows
select emp_no, concat(first_name, ' ', last_name) as full_name, birth_date
from employees
where year(hire_date) between 1990 and 1999 and month(birth_date) = 12 and day(birth_date) = 25;

# TODO: ALL EMPLOYEES HIRED IN 90S / BORN ON CHRISTMAS IN ORDER OF OLDEST EMPLOYEE HIRED THE MOST RECENT
select hire_date, concat(first_name, ' ', last_name) as full_name, birth_date
from employees
where year(hire_date) between 1990 and 1999 and month(birth_date) = 12 and day(birth_date) = 25
order by year(birth_date), year(hire_date) desc;

# TODO: ALL EMPLOYEES HIRED IN 90S / BORN ON CHRISTMAS CALCULATED TIME WORKED AT COMPANY
select
       concat(first_name, ' ', last_name) as full_name,
       datediff(curdate(), hire_date) as time_worked,
       hire_date,
       curdate() as date_now
from employees
where year(hire_date) between 1990 and 1999 and month(birth_date) = 12 and day(birth_date) = 25
limit 10;
