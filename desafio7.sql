SELECT UPPER(CONCAT(first_name, ' ', last_name)) AS 'Nome completo',
START_DATE 'Data de início' , SALARY 'Salário'
FROM hr.employees, hr.job_history WHERE employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID AND MONTH(START_DATE) BETWEEN '01' 
AND '03' ORDER BY 1;
