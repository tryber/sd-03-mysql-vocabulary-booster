delimiter $$
create procedure exibir_historico_completo_por_funcionario(in mail varchar(30))
begin
select nome as "Nome completo", cargo as "Cargo", departamento as "Departamento" from (select *,
(select job_title from jobs where jobs.job_id = job_history.job_id) as cargo,
(select department_name from departments where departments.department_id = job_history.department_id) as departamento,
(select concat(first_name, ' ', last_name) from employees where employees.employee_id = job_history.employee_id) as nome,
(select email from employees where employees.employee_id = job_history.employee_id) as email
from job_history) as t
where t.email = mail
order by t.cargo;
end $$
delimiter ;

call exibir_historico_completo_por_funcionario('NKOCHHAR');
