SELECT
 CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
 jh.START_DATE AS 'Data de início',
 e.SALARY AS 'Salário'
 FROM hr.job_history AS jh
 JOIN hr.employees AS e
 ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
 WHERE MONTH(START_DATE) BETWEEN 1 AND 3
 ORDER BY `Nome completo`, `Data de início`;
 