SELECT 
    (SELECT JOB_TITLE
    FROM hr.jobs
    WHERE JOB_TITLE = employee.JOB_TITLE) AS Cargo, ROUND(AVG(salary), 2) AS 'Média salarial',
    CASE
    WHEN ROUND(AVG(salary), 2)
    BETWEEN 2000
        AND 5800 THEN
    'Júnior'
    WHEN ROUND(AVG(salary), 2)
    BETWEEN 5801
        AND 7500 THEN
    'Pleno'
    WHEN ROUND(AVG(salary), 2)
    BETWEEN 7501
        AND 10500 THEN
    'Sênior'
    WHEN ROUND(AVG(salary), 2) > 10500 THEN
    'CEO'
    END AS 'Senioridade'
FROM hr.employees AS employee
GROUP BY  JOB_TITLE
ORDER BY  ROUND(AVG(salary), 2) ASC, Cargo ASC;
