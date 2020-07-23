USE hr;
SELECT UCASE(CONCAT(first_name, ' ', last_name)) AS 'Nome Completo',
    hire_date AS 'Data de início',
    salary AS 'Salário'
FROM employees
WHERE MONTH(hire_date) IN (1, 2, 3)
GROUP BY first_name , last_name
ORDER BY first_name , last_name, hire_date;
