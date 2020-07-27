SELECT (SELECT JOB_TITLE FROM hr.jobs WHERE JOB_ID = employees.JOB_ID) AS Cargo, ROUND(AVG(SALARY), 2) AS 'Média salarial',
CASE
WHEN AVG(SALARY)>=2000 AND AVG(SALARY)<=5800 THEN 'Júnior'
WHEN AVG(SALARY)>5800 AND AVG(SALARY)<7501 THEN 'Pleno'
WHEN AVG(SALARY)>7500 AND AVG(SALARY)<10501 THEN 'Sênior'
WHEN AVG(SALARY)>10500 THEN 'CEO' END AS 'Senioridade'
FROM hr.employees GROUP BY JOB_ID ORDER BY 2, 1;
