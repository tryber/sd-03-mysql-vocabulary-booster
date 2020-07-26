SELECT 
concat(a.FIRST_NAME, " ", a.LAST_NAME) AS "Nome completo funcionário 1",
a.SALARY as "Salário funcionário 1",
a.PHONE_NUMBER as "Telefone funcionário 1",
concat(b.FIRST_NAME, " ", b.LAST_NAME) AS "Nome completo funcionário 2",
b.SALARY as "Salário funcionário 2",
b.PHONE_NUMBER as "Telefone funcionário 2" 
FROM hr.employees AS a, hr.employees AS b
WHERE a.JOB_ID = b.JOB_ID
HAVING NOT `Nome completo funcionário 1` = `Nome completo funcionário 2`
ORDER BY `Nome completo funcionário 1`,`Nome completo funcionário 2`
