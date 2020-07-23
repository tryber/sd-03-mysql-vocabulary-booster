select Cargo, media as 'Média salarial', case
when media between 2000 and 5800 then 'Júnior'
when media between 5801 and 7500 then 'Pleno'
when media between 7501 and 10500 then 'Sênior'
else 'CEO'
end as Senioridade
 from (select job_title as Cargo, round(average,2) as media
from jobs
inner join (select job_id, avg(salary) as average from employees group by job_id) as media
on jobs.job_id = media.job_id) as primeira
order by media, Cargo;
