USE employees;


# TODO: PROBLEM 1
select departments.dept_name as Department_Name, concat(employees.first_name, ' ', employees.last_name) as Department_Manager
from dept_manager
join departments on dept_manager.dept_no = departments.dept_no
join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date > curdate();

# TODO: PROBLEM 2
select departments.dept_name as Department_Name, concat(employees.first_name, ' ', employees.last_name) as Department_Manager
from dept_manager
join departments on dept_manager.dept_no = departments.dept_no
join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date > curdate() and employees.gender = 'F';

# TODO: PROBLEM 3
select titles.title as title, count(titles.title) as total
from employees
join titles on employees.emp_no = titles.emp_no
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_emp.to_date > curdate() and titles.to_date > curdate() and departments.dept_name = 'Customer Service'
group by titles.title;

# TODO: PROBLEM 4
select departments.dept_name as Department_Name, concat(employees.first_name, ' ', employees.last_name) as Department_Manager, salaries.salary as Salary
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
join salaries on employees.emp_no = salaries.emp_no
join dept_manager on employees.emp_no = dept_manager.emp_no
where dept_manager.to_date > curdate() and salaries.to_date > curdate()
order by departments.dept_name;

