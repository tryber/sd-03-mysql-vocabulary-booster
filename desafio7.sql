SELECT UCASE(CONCAT(first_name, ' ', last_name)) AS 'Nome Completo',
    hire_date AS 'Data de início',
    salary AS 'Salário'
FROM hr.employees 
WHERE MONTH(hire_date) IN (1,2,3)
ORDER BY `Nome Completo`, hire_date;
