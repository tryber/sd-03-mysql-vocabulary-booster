select name as "Nome completo", title as "Cargo", start_date as "Data de início do cargo", department as "Departamento" from (select employee_id as id, start_date, 
(select concat(first_name, ' ', last_name) from employees where job_history.employee_id = employees.employee_id) as name,
(select job_title from jobs where jobs.job_id = job_history.job_id) as title,
(select department_name from departments where departments.department_id = job_history.department_id) as department
from job_history
order by name desc, title asc) as t limit 10;
