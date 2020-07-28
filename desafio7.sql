SELECT UCASE(CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)) `Nome completo`,
jh.START_DATE `Data de início`,
em.SALARY 'Salário'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS em ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) = 01
OR MONTH(jh.START_DATE) = 02
OR MONTH(jh.START_DATE) = 03
ORDER BY `Nome completo`, `Data de início`;
