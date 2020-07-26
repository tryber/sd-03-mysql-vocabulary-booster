SELECT JOB_TITLE AS "Cargo",
MAX(MAX_SALARY) - MIN(MIN_SALARY) AS "Variação Salarial",
AVG(MIN_SALARY) as "Média mínima mensal",
AVG(MAX_SALARY) as "Média máxima mensal"
FROM hr.jobs GROUP BY JOB_TITLE ORDER BY `Variação Salarial`, Cargo;
