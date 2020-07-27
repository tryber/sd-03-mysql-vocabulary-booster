SELECT CONCAT(ea.first_name, ' ', ea.last_name) AS `Nome completo funcionário 1`,
ea.SALARY AS `Salário funcionário 1`,
ea.phone_number AS `Telefone funcionário 1`,
CONCAT(eb.first_name, ' ', eb.last_name) AS `Nome completo funcionário 2`,
eb.SALARY AS `Salário funcionário 2`,
eb.phone_number AS `Telefone funcionário 2`
FROM hr.employees AS ea, hr.employees AS eb
WHERE CONCAT(ea.first_name, ' ', ea.last_name) <> CONCAT(eb.first_name, ' ', eb.last_name) AND
ea.JOB_ID = eb.JOB_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
