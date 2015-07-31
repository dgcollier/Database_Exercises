-- name/title of all current employees with title starts with
-- "Senior". 167,963 results
SELECT concat(e.first_name, ' ', e.last_name) AS full_name, t.title
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
WHERE t.to_date >= now() 
AND t.title LIKE 'Senior%';

-- dept/mgr name where manager is female
-- four results: dev, finance, hr, research
SELECT concat(e.first_name, ' ', e.last_name), d.dept_name
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments d ON dm.dept_no = d.dept_no
WHERE e.gender = 'F'
AND dm.to_date >= now();

-- current salaries of all current managers
SELECT concat(e.first_name, ' ', e.last_name), s.salary
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date >= now()
AND s.to_date >= now();

-- current average salary of each title
SELECT t.title AS "Title", AVG(s.salary) AS "Avg. Salary"
FROM titles t
LEFT JOIN employees e ON t.emp_no = e.emp_no
LEFT JOIN salaries s ON e.emp_no = s.emp_no
WHERE t.to_date >= now()
AND s.to_date >=now()
GROUP BY t.title;

-- every current employee's first/last, dept., current mgr - 240,124
SELECT concat(e.first_name, ' ', e.last_name) AS full_name, d.dept_name AS current_dept, concat(me.first_name, ' ', me.last_name) AS current_mgr
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no
LEFT JOIN dept_manager dm ON d.dept_no = dm.dept_no
LEFT JOIN employees me ON dm.emp_no = me.emp_no
WHERE de.to_date >= now()
AND dm.to_date >= now()
ORDER BY d.dept_name, e.last_name, e.first_name;
