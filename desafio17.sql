select nome as "Nome completo", 
concat(if(day1<10, concat(0,day1), day1),'/', if(month1 < 10, concat(0, month1), month1),'/', year1) as "Data de início", 
concat(if(day2<10, concat(0,day2), day2),'/', if(month2 < 10, concat(0, month2), month2),'/', year2) as "Data de rescisão", 
anos as "Anos trabalhados" 
from (select employee_id, 
day(start_date) as day1, 
month(start_date) as month1,
year(start_date) as year1,
day(end_date) as day2, 
month(end_date) as month2,
year(end_date) as year2,
round((datediff(end_date, start_date)/365),2) as anos,
(select concat(first_name, ' ', last_name) from employees where employees.employee_id = job_history.employee_id) as nome
from job_history
where employee_id <> 0) as t
order by nome, anos;
