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
select titles.title as title, count(title) as total
from employees
join titles on employees.emp_no = titles.emp_no
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_emp.to_date > curdate() and titles.to_date > curdate() and departments.dept_name = 'Customer Service'
group by titles.title;

# TODO: PROBLEM 4 NOTES: TO GET FIELD AS DEPARTMENT NAME AND NOT DEPARTMENT_NAME USE AS 'Department Name'
select departments.dept_name as Department_Name, concat(employees.first_name, ' ', employees.last_name) as Department_Manager, concat('$',salaries.salary) as Salary
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
join salaries on employees.emp_no = salaries.emp_no
join dept_manager on employees.emp_no = dept_manager.emp_no
where dept_manager.to_date > curdate() and salaries.to_date > curdate()
order by departments.dept_name;

# TODO: BONUS <-- UNSURE ON HOW TO GET MANAGER NAME!
select concat(employees.first_name, ' ', employees.last_name) as Employee, departments.dept_name as Department
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_emp.to_date > curdate();

# TODO: WALKTHROUGH FOR BONUS
#  SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(e2.first_name, ' ', e2.last_name) as Manager
#  FROM employees AS e
#  JOIN dept_emp AS de ON e.emp_no = de.emp_no
#  JOIN departments AS d ON de.dept_no = d.dept_no
#  JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
#  JOIN employees AS e2 ON dm.emp_no = e2.emp_no
#  WHERE YEAR(de.to_date) = 9999 AND YEAR(dm.to_date) = 9999
#  ORDER BY d.dept_name, e.emp_no;


select concat(e.first_name, ' ', e.last_name) as Employee, d.dept_name as Department, concat(e2.first_name, ' ', e2.last_name) as Manager
from employees as e
join dept_emp as de on e.emp_no = de.emp_no
join departments as d on de.dept_no = d.dept_no
join dept_manager as dm on d.dept_no = dm.dept_no
join employees as e2 on e2.emp_no = dm.emp_no
where year(de.to_date) = 9999 and year(dm.to_date) = 9999
order by d.dept_name, e.emp_no;