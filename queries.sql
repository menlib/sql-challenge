--List the employee number, last name, first name, sex, and salary of each employee.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, slr.salary
FROM employees as emp
LEFT JOIN salaries as slr ON (emp.emp_no  =  slr.emp_no)
ORDER BY emp.emp_no;

----List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date >= '1/1/1986' and hire_date <= '12/31/1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager.dept_no, dept_name, emp.emp_no, last_name, first_name
FROM employees as emp
JOIN dept_manager
ON emp.emp_no = dept_manager.emp_no
JOIN departments
ON dept_manager.dept_no = departments.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT dept_emp.dept_no, emp.emp_no, last_name, first_name, dept_name
FROM employees as emp
JOIN dept_emp
ON emp.emp_no = dept_emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%' ;

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT emp.emp_no, last_name, first_name, dept_name
FROM employees as emp
JOIN dept_emp
ON emp.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, last_name, first_name, dept_name
FROM employees as emp
JOIN dept_emp
ON emp.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name , COUNT (*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;





