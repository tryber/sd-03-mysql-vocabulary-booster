SELECT job_title AS 'Cargo', ROUND(AVG(employee.salary), 2)AS 'Média salarial'
FROM hr.jobs job
    INNER JOIN hr.employees AS employee
    ON job.job_id = employee.job_id
GROUP BY job_title
ORDER BY `Média salarial`, job_title;
