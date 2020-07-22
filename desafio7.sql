SELECT 
UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
    jh.START_DATE AS `Data de início do cargo`,
    e.SALARY AS `Salário`
FROM hr.employees AS e
JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.start_date) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início do cargo`;
