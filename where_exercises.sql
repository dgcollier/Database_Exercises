-- Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN)
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Irena'
    OR first_name = 'Vidya' 
    OR first_name = 'Maya';

-- Employees whose last name starts with 'E' — 7,330 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

-- Employees hired in the 90s — 135,214 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date LIKE '199%';

-- Employees born on Christmas — 842 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';

-- Employees with a 'q' in their last name — 1,873 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';