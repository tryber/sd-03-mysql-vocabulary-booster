SELECT job_title AS 'Cargo',
CASE
WHEN MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
WHEN MAX_SALARY BETWEEN 10000 AND 20000 THEN 'Médio'
WHEN MAX_SALARY BETWEEN 20000 AND 30000 THEN 'Alto'
ELSE 'Altíssimo'
END AS 'Nível'
FROM hr.jobs ORDER BY job_title;
