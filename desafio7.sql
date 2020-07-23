select ucase(name) as "Nome completo", start_date as "Data de início", salary as "Salário" from (select * ,
(select concat(first_name, ' ', last_name) from employees where employees.employee_id = job_history.employee_id) as name,
(select salary from employees where job_history.employee_id = employees.employee_id) as salary
from job_history
where month(start_date) in ('01', '02', '03')
order by name, start_date) as t;
