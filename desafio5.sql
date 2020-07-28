SELECT JOB_TITLE AS 'Cargo',
(MAX_SALARY / 12) - (MIN_SALARY / 12) AS 'Variação Salarial',
ROUND(MIN_SALARY / 12, 2) AS 'Média mínima mensal',
ROUND(MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY `Variação Salarial`, JOB_TITLE;
