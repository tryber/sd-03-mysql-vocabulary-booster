SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo', job.JOB_TITLE AS Cargo,
his.START_DATE AS `Data de início do cargo`, dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS his
INNER JOIN hr.employees AS emp
ON his.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS job
ON job.JOB_ID = his.JOB_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = his.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
