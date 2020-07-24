SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo', 
c.JOB_TITLE as Cargo,
h.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS e
INNER JOIN hr.jobs c
INNER JOIN hr.departments d
INNER JOIN hr.job_history h
WHERE e.EMPLOYEE_ID = h.EMPLOYEE_ID AND c.JOB_ID = h.JOB_ID
AND d.DEPARTMENT_ID = h.DEPARTMENT_ID
ORDER BY `Nome completo`, Cargo DESC;
