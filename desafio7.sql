SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
jobh.START_DATE AS 'Data de início',
e.SALARY Salário FROM hr.employees e
INNER JOIN hr.job_history as jobh ON jobh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME), jobh.START_DATE;
