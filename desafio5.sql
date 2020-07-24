SELECT JOB_TITLE AS 'Cargo',
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
ROUND(MIN_SALARY/12, 2) AS 'Média Mínima Mensal',
round(MAX_SALARY/12, 2) AS 'Média Máxima Mensal' 
FROM hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY), JOB_TITLE;
