SELECT 
upper(CONCAT(FIRST_NAME," ",LAST_NAME)) as "Nome completo",
START_DATE AS "Data de início",
SALARY as "Salário" 
FROM hr.employees e
inner join hr.job_history jb
on jb.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(START_DATE) < 4
ORDER BY `Nome completo`,`Data de início`;
