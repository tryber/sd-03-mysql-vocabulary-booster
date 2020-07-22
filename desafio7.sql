SELECT UCASE(CONCAT(employees.first_name, ' ', employees.last_name)) AS 'Nome completo',
job_history.start_date AS 'Data de início',
employees.salary AS 'Salário'
FROM hr.employees
INNER JOIN hr.job_history
ON employees.employee_id = job_history.employee_id
WHERE MONTH(job_history.start_date) IN (01, 02, 03)
ORDER BY CONCAT(employees.first_name, ' ', employees.last_name), job_history.start_date;
