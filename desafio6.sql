SELECT 
CONCAT(FIRST_NAME," ",LAST_NAME) as "Nome completo",
j.JOB_TITLE AS "Cargo",
HIRE_DATE AS "Data de início do cargo",
d.DEPARTMENT_NAME AS "Departamento"
FROM hr.employees AS e
INNER JOIN hr.jobs as j
ON j.JOB_ID = e.JOB_ID
INNER JOIN hr.departments AS d
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY `Nome completo`, Cargo
