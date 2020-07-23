select concat(a.first_name, ' ',a.last_name) as 'Nome completo funcionário 1', 
a.SALARY as 'Salário funcionário 1', a.PHONE_NUMBER as 'Telefone funcionário 1',
concat(b.first_name, ' ',b.last_name) as 'Nome completo funcionário 2', 
b.SALARY 'Salário funcionário 2', b.PHONE_NUMBER as 'Telefone funcionário 2'
from employees as a, employees as b
where a.JOB_ID=b.JOB_ID AND a.EMPLOYEE_ID<>b.EMPLOYEE_ID
order by 1,4;
