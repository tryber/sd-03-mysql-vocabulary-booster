SELECT 
CONCAT(FIRST_NAME," ",LAST_NAME) as "Nome completo",
jb.JOB_TITLE AS "Cargo",
j.START_DATE AS "Data de início do cargo",
d.DEPARTMENT_NAME AS "Departamento"
FROM hr.employees AS e
INNER JOIN hr.job_history as j
ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.departments AS d
ON d.DEPARTMENT_ID = j.DEPARTMENT_ID
INNER JOIN hr.jobs as jb
on jb.JOB_ID = j.JOB_ID
ORDER BY `Nome completo` desc, `Cargo`
