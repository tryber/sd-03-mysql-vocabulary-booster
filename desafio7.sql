USE hr;
SELECT UCASE(CONCAT(first_name, ' ', last_name)) AS 'Nome Completo',
hire_date AS 'Data de início',
salary AS 'Salário'
FROM employees
WHERE hire_date LIKE '%-01-%' OR '%-02-%' OR '%-03-%'
GROUP BY first_name , last_name
ORDER BY first_name , last_name, hire_date;
