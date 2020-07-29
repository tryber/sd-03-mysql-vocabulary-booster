SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
e.SALARY Salário FROM hr.employees e
INNER JOIN hr.job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID AND MONTH(jh.START_DATE) IN ('01','02','03')
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME), jh.START_DATE;
