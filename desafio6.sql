SELECT 
CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
j.JOB_TITLE AS Cargo,
jh.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS e
JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
JOIN hr.departments AS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
JOIN hr.job_history as jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome Completo` DESC, Cargo;
