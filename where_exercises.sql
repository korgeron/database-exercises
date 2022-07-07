USE employees;
# TODO: IN CLAUSE
select first_name, last_name from employees where first_name in('irena', 'vidya', 'maya');

# TODO: LIKE CLAUSE
select first_name, last_name from employees where last_name like('e%');
select first_name, last_name from employees where last_name like ('%q%');

# TODO: UPDATE IN CLAUSE TO USE OR CLAUSE
select first_name, last_name from employees where first_name ='irena' or first_name = 'maya' or first_name = 'vidya';

# TODO: ADDING AND TO OR CLAUSE
select first_name, last_name, gender from employees where gender = 'M' and (first_name ='irena' or first_name = 'maya' or first_name = 'vidya');

# TODO: FIND LAST NAME THAT STARTS OR ENDS WITH 'E'
select first_name, last_name from employees where last_name like('e%') or last_name like('%e');

# TODO: FIND LAST NAME THAT STARTS AND ENDS WITH 'E'
select first_name, last_name from employees where last_name like('e%') and (last_name like('%e'));

# TODO: FIND ALL EMPLOYEES WITH A 'Q' IN THEIR LAST NAME BUT NOT 'QU'
select first_name, last_name from employees where last_name like ('%q%') and (last_name not like ('%qu%'));
