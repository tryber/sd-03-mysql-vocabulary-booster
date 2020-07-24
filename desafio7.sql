SELECT UCASE(CONCAT(first_name, ' ', last_name)) AS 'Nome Completo',
    hire_date AS 'Data de início',
    salary AS 'Salário'
FROM hr.employees 
WHERE hire_date LIKE '%-01-%' OR '%-02-%' OR '%-03-%'
ORDER BY `Nome Completo`, hire_date;
