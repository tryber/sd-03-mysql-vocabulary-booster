SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo', 
c.JOB_TITLE as Cargo,
HIRE_DATE AS 'Data de início do cargo',
DEPARTMENT_ID AS Departamento
FROM hr.employees
INNER JOIN hr.jobs c
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME), Cargo DESC;
