use hr;
delimiter $$

create function buscar_quantidade_de_empregos_por_funcionario(emailparam varchar(50))
returns int reads sql data
begin
declare history_jobs int;
select count(*)
from hr.job_history as jh
join hr.employees as e
on e.employee_id = jh.employee_id and e.email = emailparam
into history_jobs;
return history_jobs;
end $$

delimiter ;

select buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
