use employees;
#Question 1: Write SQL Code to count the number of employees
SELECT COUNT(*) FROM employees.employees; 
#300,024 employees

#Question 2: Write SQL Code to output the current name of all of the departments
SELECT dept_name FROM employees.departments; 
#Customer Service, Development, Finance, Human Resources, Marketing, Production, Quality Management, Research, Sales

#Question 3: How many employees are in Finance?
# Easier method: SELECT COUNT(*) FROM employees.dept_emp WHERE dept_emp.dept_no = 'd002';
# Below method finds the department number from the input 'Finance'
SELECT COUNT(*) FROM(
SELECT dept_emp.emp_no, departments.dept_name, dept_emp.dept_no
FROM departments
INNER JOIN dept_emp ON dept_emp.dept_no=departments.dept_no WHERE departments.dept_name = 'Finance') as count_finance;
#17,346 employees

#Question 4: How many women work in development?
SELECT COUNT(*) FROM(
SELECT employees.emp_no, employees.gender, dept_emp.dept_no, departments.dept_name
FROM dept_emp INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no WHERE employees.gender = 'F' AND departments.dept_name = 'Development') as count_f_development;
#34,258 women

#Question 5: What is the top salary in the company?
#As a result, the top salary is shown at the top of a data frame of all employee salaries. 
SELECT salary FROM salaries ORDER BY salary DESC;
#$158,220

#Question 6: What is the average salary for Marketing?
SELECT AVG(salary) FROM(
SELECT dept_emp.emp_no, dept_emp.dept_no, departments.dept_name, salaries.salary
FROM dept_emp INNER JOIN salaries ON dept_emp.emp_no = salaries.emp_no 
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no WHERE departments.dept_name = 'Marketing') as avg_mark_salary;
#$71,913.20

#Question 7: What is the lowest salary in the company, who is it and what is their title and department?
#Represented in a chart of salary values below.
SELECT salaries.salary, employees.emp_no, employees.first_name, employees.last_name, titles.title
FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no
INNER JOIN titles ON employees.emp_no = titles.emp_no ORDER BY salary ASC;
#$38,623, Olivera Baek, Technique Leader

#Question 8: Who is the oldest person at the company and what is their age?
SELECT *, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), birth_date)), '%Y') + 0 AS age
FROM employees ORDER BY birth_date ASC;
#Six employees tie for the oldest employee (71) and have the exact same birthday (1952-02-01). The names of the men are found below. 





