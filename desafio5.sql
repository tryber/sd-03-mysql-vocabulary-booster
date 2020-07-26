SELECT JOB_TITLE AS "Cargo",
MAX(MAX_SALARY) - MIN(MIN_SALARY) AS "Variação Salarial",
ROUND(AVG(MIN_SALARY)/12,2) as "Média mínima mensal",
ROUND(AVG(MAX_SALARY)/12,2) as "Média máxima mensal"
FROM hr.jobs GROUP BY JOB_TITLE ORDER BY `Variação Salarial`, Cargo;
