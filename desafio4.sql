SELECT jobs.job_title AS 'Cargo', ROUND(AVG(employees.salary), 2) AS 'Média salarial',
CASE
WHEN employees.salary BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN employees.salary BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN employees.salary BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN employees.salary > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs
INNER JOIN hr.employees
ON jobs.job_id = employees.job_id
GROUP BY jobs.job_title;
