SELECT 
    job_title                 AS Cargo, 
    max_salary - min_salary   AS 'Variação Salarial', 
    Round(min_salary / 12, 2) AS 'Média mínima mensal', 
    Round(max_salary / 12, 2) AS 'Média máxima mensal' 
FROM   
    hr.jobs 
ORDER  BY 2, 1; 