 delimiter $$
 create function buscar_quantidade_de_empregos_por_funcionario(mail varchar(30))
 returns int reads sql data
 begin
 declare jobs int;
 select count from (select count(*) as count, 
 (select email from employees where employees.employee_id = job_history.employee_id) as email
 from job_history
 group by employee_id
 having employee_id <> 0) as t
 where email = mail into jobs;
 return jobs;
 end$$
 delimiter ;

select buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
