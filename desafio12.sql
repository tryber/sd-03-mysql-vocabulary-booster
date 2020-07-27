select
CONCAT(emp1.FIRST_NAME, ' ', emp1.LAST_NAME) AS `Nome completo funcionário 1`,
emp1.SALARY AS `Salário funcionário 1`,
emp1.PHONE_NUMBER  AS `Telefone funcionário 1`,
CONCAT(emp2.FIRST_NAME, ' ', emp2.LAST_NAME) AS `Nome completo funcionário 2`,
emp2.SALARY AS `Salário funcionário 2`,
emp2.PHONE_NUMBER  AS `Telefone funcionário 2`
from hr.employees emp1, hr.employees emp2
where emp1.JOB_ID = emp2.JOB_ID
and CONCAT(emp1.FIRST_NAME, ' ', emp1.LAST_NAME) <> CONCAT(emp2.FIRST_NAME, ' ', emp2.LAST_NAME)
order by
`Nome completo funcionário 1` asc,
`Nome completo funcionário 2` asc;
