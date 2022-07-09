USE employees;

# TODO: RETURN 10 EMPLOYEES WITH EMPLOYEE NUMBER / FULL NAME / DOB FIELDS
select concat(emp_no, ' - ', last_name, ', ', first_name) as full_name, birth_date as DOB
from employees
limit 10;