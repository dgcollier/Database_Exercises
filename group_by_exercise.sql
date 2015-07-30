-- 1. use DISTINCT to find unique titles
-- 2. sort alphabetically
SELECT DISTINCT title
FROM titles
ORDER BY title;

-- 1. use GROUP BY and find unique employee last names starting with "e"
-- 2. updated to find unique first/last name combos with last name "e"
SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE '%e'
    AND last_name LIKE 'e%'
GROUP BY full_name;

-- 1. find unique last names with "q" but not "qu"
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%'
GROUP BY last_name;