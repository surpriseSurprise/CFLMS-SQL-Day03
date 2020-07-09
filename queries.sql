select count(*) from employees;
SELECT * FROM `employees` WHERE first_name = "Mark";
select * from employees where first_name = 'Eric' and last_name LIKE 'a%';
SELECT * FROM `employees` WHERE hire_date like '1985%';
SELECT * FROM `employees` WHERE hire_date between "1990-01-01" and "1997-12-31";
SELECT salaries.salary, employees.first_name, employees.last_name FROM salaries INNER JOIN employees ON salaries.emp_no = employees.emp_no WHERE salaries.salary > "70000";
SELECT `departments`.`dept_name`, `dept_emp`.*, `employees`.`hire_date`, `employees`.`last_name` FROM `departments` INNER JOIN `dept_emp` ON `dept_emp`.`dept_no` = `departments`.`dept_no` INNER JOIN `employees` ON `dept_emp`.`emp_no` = `employees`.`emp_no` WHERE departments.dept_name = "research" and employees.hire_date LIKE "1992%";
SELECT departments.dept_name, salaries.salary, employees.hire_date, employees.first_name, employees.last_name FROM departments, salaries INNER JOIN employees ON salaries.emp_no = employees.emp_no WHERE departments.dept_name = "finance" and employees.hire_date BETWEEN "1985-01-01" and "2020-07-09" and salaries.salary > "75000";
SELECT salaries.salary, salaries.to_date, titles.title, employees.first_name, employees.last_name, employees.birth_date, employees.gender, employees.hire_date
FROM employees
INNER JOIN titles on titles.emp_no = employees.emp_no
INNER JOIN salaries on salaries.emp_no = employees.emp_no
WHERE salaries.to_date > CURRENT_DATE()
GROUP by employees.emp_no;