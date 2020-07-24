use hr;
delimiter $$

drop procedure if exists exibir_historico_completo_por_funcionario;
create procedure exibir_historico_completo_por_funcionario(in email varchar(40))
begin
select concat(e.first_name, ' ', e.last_name) as 'Nome completo',
d.department_name as 'Departamento',
j.job_title as 'Cargo'
from hr.employees as e
join hr.job_history as jh on jh.employee_id = e.employee_id
join hr.departments as d on jh.department_id = d.department_id
join hr.jobs as j on jh.job_id = j.job_id
where e.email = email
order by `Departamento`, `Cargo`;
end $$

delimiter ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
