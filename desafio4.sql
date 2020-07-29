SELECT JOB_TITLE AS Cargo,
ROUND((MIN_SALARY + MAX_SALARY)/2, 2) AS 'Média salarial',
CASE
WHEN (MIN_SALARY + MAX_SALARY)/2 BETWEEN 2000 AND 5800 THEN   'Júnior'
WHEN (MIN_SALARY + MAX_SALARY)/2 BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN (MIN_SALARY + MAX_SALARY)/2 BETWEEN 7501 AND 10500 THEN 'Senior'
ELSE 'CEO'
END AS Senioridade
FROM hr.jobs
ORDER BY (MIN_SALARY + MAX_SALARY)/2, JOB_TITLE;
