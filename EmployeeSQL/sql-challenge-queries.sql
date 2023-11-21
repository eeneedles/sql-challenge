--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees AS e
	JOIN Salaries AS s
	ON (s.emp_no = e.emp_no)
	GROUP BY e.emp_no, s.salary;


--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date < '1987-01-01'
	AND hire_date > '1985-12-31';
	
	
--List the manager of each department along with their department number, department
--name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM Dept_manager AS dm
	JOIN Departments AS d
	ON (dm.dept_no = d.dept_no)
		JOIN Employees AS e
		ON (dm.emp_no = e.emp_no)
		GROUP BY dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name;
		
		
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
SELECT d.dept_name, de.emp_no, de.dept_no, e.last_name, e.first_name
FROM Employees AS e
	JOIN Dept_emp AS de
	ON (e.emp_no = de.emp_no)
		JOIN Departments AS d
		ON (de.dept_no = d.dept_no)
			WHERE d.dept_no = 'd007'
			GROUP BY d.dept_name, de.emp_no, de.dept_no, e.last_name, e.first_name;


--List each employee in the Sales and Development departments, including their
--employee number, last name, first name, and department name.
SELECT d.dept_name, de.emp_no, de.dept_no, e.last_name, e.first_name
FROM Employees AS e
	JOIN Dept_emp AS de
	ON (e.emp_no = de.emp_no)
		JOIN Departments AS d
		ON(de.dept_no = d.dept_no)
			WHERE d.dept_name = 'd007' OR d.dept_no = 'd005'
			GROUP BY d.dept_name, de.emp_no, de.dept_no, e.last_name, e.first_name;


--List the frequency counts, in descending order, of all the employee last names
--(that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS COUNT
FROM Employees
GROUP BY last_name
ORDER BY COUNT DESC;