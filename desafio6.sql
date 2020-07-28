SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS Cargo,
jobh.START_DATE
AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS Departamento
FROM hr.employees e
INNER JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID
INNER JOIN hr.job_history as jobh ON jobh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.departments d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, Cargo;
