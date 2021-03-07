-- Employees & Salary

SELECT employees.employee_num,employees.last_name,employees.first_name,employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.employee_num = salaries.emp_no

-- Employees hired in 1986

select employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31'

-- Department Managers

select employees.first_name, employees.last_name, employees.employee_num, dep_manager.department_num, dep_manager.employee_num, departments.dept_name
From employees
LEFT JOIN dep_manager
ON employees.employee_num = dep_manager.employee_num
LEFT JOIN departments
ON dep_manager.department_num = departments.dept_name

-- Department of Each Employee

select departments.dept_name,  
dep_emp.employee_num, 
dep_emp.department_num,
employees.first_name,
employees.last_name
From departments
LEFT JOIN dep_emp
ON departments.dept_no = dep_emp.department_num
LEFT JOIN employees
ON employees.employee_num = dep_emp.employee_num


-- Employees named Hercules B

select first_name, last_name, sex from employees
where first_name = 'Hercules'
AND last_name LIKE 'B%'

-- All of the Sales People

select employees.employee_num, 
employees.first_name, 
employees.last_name, 
dep_emp.department_num, 
departments.dept_name
FROM employees
LEFT JOIN dep_emp
ON employees.employee_num = dep_emp.employee_num
LEFT JOIN departments
ON dep_emp.department_num = departments.dept_no
WHERE department_num = 'd007'

-- All of the Sales and Development People

select employees.employee_num, 
employees.first_name, 
employees.last_name, 
dep_emp.department_num, 
departments.dept_name
FROM employees
LEFT JOIN dep_emp
ON employees.employee_num = dep_emp.employee_num
LEFT JOIN departments
ON dep_emp.department_num = departments.dept_no
WHERE department_num = 'd007'
OR department_num = 'd009'

-- Least Common Employee Names

