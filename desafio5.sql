SELECT
JOB_TITLE AS Cargo,
ROUND(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
ROUND(AVG(MIN_SALARY)/12, 2) AS 'Média mínima mensal',
ROUND(AVG(MAX_SALARY)/12, 2) AS 'Média máxima mensal'
FROM hr.jobs GROUP BY Cargo ORDER BY ROUND(MAX_SALARY - MIN_SALARY), Cargo;