SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
  job_history.START_DATE AS `Data de início`,
  employees.SALARY AS Salário
FROM hr.employees AS employees
  INNER JOIN hr.job_history AS job_history ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
ORDER BY CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME),
  job_history.START_DATE;
