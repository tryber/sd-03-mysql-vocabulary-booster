SELECT job_title AS 'Cargo',
ROUND(AVG(employee.salary), 2) AS 'Média salarial',
CASE 
    WHEN ROUND(AVG(employee.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN ROUND(AVG(employee.salary), 2) BETWEEN 5800 AND 7500 THEN 'Pleno'
    WHEN ROUND(AVG(employee.salary), 2) BETWEEN 7500 AND 10500 THEN 'Sênior'
	ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs job
    INNER JOIN hr.employees AS employee
    ON job.job_id = employee.job_id
GROUP BY job_title
ORDER BY `Média salarial`, job_title;
