SELECT j.JOB_TITLE AS 'Cargo',
MAX(e.salary)-MIN(e.salary) AS 'Variação Salarial',
ROUND(MIN(e.salary)/12,2) as 'Média mínima mensal',
ROUND(max(e.salary)/12,2) as 'Média máxima mensal'
FROM hr.jobs AS j
INNER join hr.employees as e on e.JOB_ID = j.JOB_ID 
group BY e.JOB_ID
ORDER BY 2,1;