SELECT
(
  SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) FROM hr.employees AS emp
  WHERE emp.employee_id = jh.EMPLOYEE_ID
) AS `Nome completo`,
DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') AS "Data de início",
DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS "Data de rescisão",
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history AS jh
WHERE jh.employee_id <> 0
ORDER BY `Nome completo`, `Anos trabalhados`;
