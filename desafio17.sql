SELECT CONCAT(emp.FIRST_NAME, ' ',emp.LAST_NAME) "Nome completo",
DATE_FORMAT(jobh.START_DATE, '%d/%m/%Y') "Data de início",
DATE_FORMAT(jobh.END_DATE, '%d/%m/%Y') "Data de rescisão",
ROUND(DATEDIFF(jobh.END_DATE, jobh.START_DATE) / 365, 2) "Anos trabalhados"
FROM hr.employees emp, hr.job_history jobh
WHERE emp.EMPLOYEE_ID = jobh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
