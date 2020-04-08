--1
SELECT e.emp_no, e.last_name, e.first_name, s.salary
FROM Employees as e
JOIN Salaries as s ON e.emp_no = s.emp_no

--2
SELECT * FROM employees as e
WHERE e.hire_date LIKE '1986%'

--3
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name,
m.from_date, m.to_date
FROM departments as d
JOIN dept_manager as m ON d.dept_no = m.dept_no
JOIN employees as e ON m.emp_no = e.emp_no

--4
SELECT e.emp_no, de.dept_no, d.dept_name
FROM employees as e
JOIN dept_emp as de ON e.emp_no = de.emp_no
JOIN departments as d ON de.dept_no = d.dept_no

--5
SELECT * FROM employees as e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%'

--6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de ON e.emp_no = de.emp_no
JOIN departments as d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'

--7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de ON e.emp_no = de.emp_no
JOIN departments as d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'

--8
SELECT last_name, COUNT(last_name) as num
FROM employees
GROUP BY last_name
ORDER BY num DESC