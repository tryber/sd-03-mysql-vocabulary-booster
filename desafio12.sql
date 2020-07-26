SELECT 
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 	AS `Nome completo funcionário 1`,
E.SALARY AS `Salário funcionário 1`,
E.PHONE_NUMBER AS `Telefone funcionário 1`,

CONCAT(A.FIRST_NAME, ' ', A.LAST_NAME) AS `Nome completo funcionário 2`,
A.SALARY  AS `Salário funcionário 2`,
A.PHONE_NUMBER  AS `Telefone funcionário 2`

FROM hr.employees AS E
INNER JOIN  hr.employees AS A 
WHERE  A.JOB_ID = E.JOB_ID
AND A.EMPLOYEE_ID <> E.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
