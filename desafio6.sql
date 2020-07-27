SELECT
CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME) AS `Nome completo`,
jobs.JOB_TITLE AS `Cargo`,
history.START_DATE `Data de início do cargo`,
departments.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS history
JOIN
hr.employees AS employees
ON
history.EMPLOYEE_ID = employees.EMPLOYEE_ID
JOIN
hr.jobs AS jobs
ON
history.JOB_ID = jobs.JOB_ID
JOIN 
hr.departments AS departments
ON
history.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY `Nome completo` desc, `Cargo`;
