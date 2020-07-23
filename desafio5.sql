select Cargo, var as 'Variação Salarial', min as "Média mínima mensal", max as "Média máxima mensal" from (select Job_title as Cargo,
(max_salary - min_salary) as var,
round(min_salary/12, 2) as min,
round(max_salary/12, 2) as max from jobs
order by var, job_title) as f;
