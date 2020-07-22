select concat(e.first_name, ' ', e.last_name) as 'Nome completo',
j.job_title as Cargo,
e.Hire_date as 'Data de início do cargo',
d.DEPARTMENT_NAME as Departamento
FROM hr.employees as e
Inner join hr.jobs as j on j.job_id=e.job_id
inner join hr.departments as d on d.department_ID=e.department_ID
order by 1 desc, 2;
