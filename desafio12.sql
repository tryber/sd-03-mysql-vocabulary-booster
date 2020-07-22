SELECT 
	CONCAT(a.first_name, ' ', a.last_name) AS `Nome completo funcionário 1`,
    a.SALARY AS `Salário funcionário 1`,
    a.PHONE_NUMBER AS `Telefone funcionário 1`,
    CONCAT(b.first_name, ' ', b.last_name) AS `Nome completo funcionário 2`,
    b.SALARY AS `Salário funcionário 2`,
    b.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS a, hr.employees AS b
WHERE a.JOB_ID = b.JOB_ID AND CONCAT(a.first_name, ' ', a.last_name) <> CONCAT(b.first_name, ' ', b.last_name)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
