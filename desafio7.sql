select UCASE(concat(e.first_name, ' ', e.last_name)) as 'Nome completo',
jh.start_date as 'Data de início',
e.salary as Salário
FROM hr.employees as e
inner join hr.job_history as jh on jh.EMPLOYEE_ID=e.EMPLOYEE_ID
Inner join hr.jobs as j on jh.JOB_ID = j.JOB_ID
WHERE month(jh.start_date) IN (1,2,3)
order by 1, 2;
