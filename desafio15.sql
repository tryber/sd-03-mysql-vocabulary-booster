use hr;
delimiter $$

drop procedure if exists buscar_media_por_cargo$$
create procedure buscar_media_por_cargo(in cargo varchar(40))
begin
	select round(avg(salary), 2) as 'Média salarial'
  from hr.employees as e
  join hr.jobs as j
  on j.JOB_ID = e.JOB_ID
  where j.JOB_TITLE = cargo;
end $$

delimiter ;

call buscar_media_por_cargo('Programmer');
