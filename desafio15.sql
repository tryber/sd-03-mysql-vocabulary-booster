delimiter $$
create procedure buscar_media_por_cargo(in job varchar(30))
begin
select media as "Média salarial" from (select job_id, round(avg(salary), 2) as media,
(select job_title from jobs where jobs.job_id = employees.job_id ) as name
from employees
group by job_id) as tabelademedias
where name = job;
end $$
delimiter ;

call buscar_media_por_cargo("Programmer")
