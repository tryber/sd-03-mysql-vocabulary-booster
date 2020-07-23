SELECT JOB_TITLE AS Cargo, (MAX_SALARY - MIN_SALARY ) AS 'Variação Salarial',
(SELECT ROUND(AVG(MIN_SALARY / 12),2) FROM hr.jobs WHERE hr.employees.JOB_ID = jobs.JOB_ID) AS 'Média mínima mensal',
(SELECT ROUND(AVG(MAX_SALARY / 12),2) FROM hr.jobs WHERE hr.employees.JOB_ID = jobs.JOB_ID) AS 'Média máxima mensal'
FROM hr.jobs, hr.employees 
WHERE jobs.JOB_ID = employees.JOB_ID group by employees.JOB_ID, Cargo, hr.jobs.MAX_SALARY, hr.jobs.MIN_SALARY,'Média mínima mensal', 'Média máxima mensal' 
ORDER BY (MAX_SALARY - MIN_SALARY ) ASC, Cargo;
