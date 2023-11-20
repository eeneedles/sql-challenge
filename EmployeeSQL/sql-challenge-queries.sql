--List the employee number, last name, first name, sex, and salary of each employee.
SELECT emp_no, last_name, first_name, sex, salary
FROM Employees;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date < '1987-01-01'
	AND hire_date > '1985-12-31';
	
	
--List the manager of each department along with their department number, department
--name, employee number, last name, and first name.
SELECT dept_no, dept_name, emp_no, last_name, first_name
FROM


--List the department number for each employee along with that employee’s employee 
--number, last name, first name, and department name.
SELECT dept_no, emp_no, last_name, first_name, dept_name
FROM

--List first name, last name, and sex of each employee whose first name is Hercules
--and whose last name begins with the letter B.
SELECT first_name, last_name, sex FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number,
--last name, and first name.
SELECT emp_no, last_name, first_name
FROM Departments
WHERE dept_name = sales;


--List each employee in the Sales and Development departments, including their
--employee number, last name, first name, and department name.
SELECT emp_no, last_name, first_name, dept_name
FROM
WHERE dept_name = Sales
AND dept_name = Development;

--List the frequency counts, in descending order, of all the employee last names
--(that is, how many employees share each last name).
