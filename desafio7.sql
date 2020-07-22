select 
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome Completo',
START_DATE AS 'Data de início',
SALARY  AS 'Salário'
FROM job_history AS H
INNER JOIN hr.employees
where MONTH(START_DATE) between 1 AND 3
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME), START_DATE;
