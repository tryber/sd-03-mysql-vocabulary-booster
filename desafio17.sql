SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
  DATE_FORMAT(job_history.START_DATE, '%d/%m/%Y') AS `Data de início`,
  DATE_FORMAT(job_history.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
  round(datediff(job_history.END_DATE, job_history.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history AS job_history
  INNER JOIN hr.employees AS employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY `Nome completo`,
  `Anos trabalhados`;
