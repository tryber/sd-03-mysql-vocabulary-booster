select concat(e.first_name, ' ', e.last_name) as 'Nome completo',
j.job_title as Cargo,
jh.start_date as 'Data de início do cargo',
d.DEPARTMENT_NAME as Departamento
FROM hr.employees as e
inner join hr.job_history as jh on jh.EMPLOYEE_ID=e.EMPLOYEE_ID
Inner join hr.jobs as j on jh.JOB_ID = j.JOB_ID
inner join hr.departments as d on d.department_ID=jh.department_ID
order by 1 desc, 2;
