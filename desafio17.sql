SELECT 
concat(FIRST_NAME, " ", LAST_NAME) AS "Nome Completo",
date_format(START_DATE, "%d/%m/%Y") as "Data de Inicío",
date_format(END_DATE, "%d/%m/%Y") AS "Data de rescisão",
round(datediff(END_DATE, START_DATE)/365,2) "Anos trabalhados"
FROM hr.job_history as jh
inner join hr.employees as e
on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
order by `Nome Completo`,`Anos trabalhados`
