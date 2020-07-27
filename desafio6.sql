SELECT
(SELECT CONCAT(first_name, ' ', last_name) FROM hr.employees WHERE employee_id = job_history.employee_id) AS 'Nome completo',
(SELECT job_title FROM hr.jobs WHERE job_id = job_history.job_id) AS Cargo,
start_date AS 'Data de início do cargo',
(SELECT department_name FROM hr.departments WHERE department_id = job_history.department_id) AS Departamento
FROM hr.job_history
ORDER BY
(SELECT CONCAT(first_name, ' ', last_name) FROM hr.employees WHERE employee_id = job_history.employee_id) DESC,
Cargo ASC LIMIT 10;
