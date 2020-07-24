select concat(e.first_name, ' ', e.last_name) as 'Nome completo',
date_format(jb.start_date, '%d/%m/%Y') as 'Data de início',
date_format(jb.end_date, '%d/%m/%Y') as 'Data de rescisão',
round(datediff(jb.end_date, jb.start_date) / 365, 2) as 'Anos trabalhados'
from hr.job_history as jb
join hr.employees as e
on jb.EMPLOYEE_ID = e.EMPLOYEE_ID
order by `Nome completo`, `Anos trabalhados`;
