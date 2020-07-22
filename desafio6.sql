SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Nome completo',
jobs.job_title AS 'Cargo',
job_history.start_date AS 'Data de início do cargo',
departments.department_name AS 'Departamento'
FROM hr.employees
INNER JOIN hr.jobs
ON employees.job_id = jobs.job_id
INNER JOIN hr.job_history
ON employees.employee_id = job_history.employee_id
INNER JOIN hr.departments
ON employees.department_id = departments.department_id
ORDER BY CONCAT(employees.first_name, ' ', employees.last_name) DESC, jobs.job_title;