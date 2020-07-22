SELECT * FROM hr.jobs;

SELECT JOB_TITLE AS Cargo,
MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
AVG(MIN_SALARY) AS 'Média mínima mensal',
AVG(MAX_SALARY) AS 'Média máxima mensal'
from hr.jobs;
