select 
UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome Completo',
H.START_DATE AS 'Data de início',
E.SALARY  AS 'Salário'
FROM hr.job_history AS H
INNER JOIN hr.employees AS E
WHERE E.EMPLOYEE_ID = H.EMPLOYEE_ID AND MONTH(START_DATE) IN(01,02,03)
ORDER BY `Nome Completo`, H.START_DATE;
