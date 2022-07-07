USE employees;

-- # TODO: IN CLAUSE WHERE FIRST NAME CONTAINS 'irena', 'vidya', 'maya' -709 rows
select first_name, last_name
from employees
where first_name in('irena', 'vidya', 'maya');

-- # TODO: LIKE CLAUSE WHERE LAST NAME STARTS WITH 'E' -7,330 / WHERE LAST NAME CONTAINS 'Q' rows -1,873 rows
select first_name, last_name
from employees
where last_name like('e%');

select first_name, last_name
from employees
where last_name like ('%q%');

-- # TODO: UPDATE IN CLAUSE TO USE OR CLAUSE -709 rows
select first_name, last_name
from employees
where first_name ='irena' or first_name = 'maya' or first_name = 'vidya';

-- # TODO: ADDING AND TO OR CLAUSE -441 rows
select first_name, last_name, gender
from employees
where gender = 'M' and (first_name ='irena' or first_name = 'maya' or first_name = 'vidya');

-- # TODO: FIND LAST NAME THAT STARTS OR ENDS WITH 'E' -30,723 rows
select first_name, last_name
from employees
where last_name like('e%') or last_name like('%e');

-- # TODO: FIND LAST NAME THAT STARTS AND ENDS WITH 'E' -899 rows
select first_name, last_name
from employees
where last_name like('e%') and (last_name like('%e'));

-- # TODO: FIND ALL EMPLOYEES WITH A 'Q' IN THEIR LAST NAME BUT NOT 'QU' -547 rows
select first_name, last_name
from employees
where last_name like ('%q%') and (last_name not like ('%qu%'));
