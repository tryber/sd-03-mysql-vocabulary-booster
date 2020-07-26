SELECT jobs.JOB_TITLE AS "Cargo",
ROUND(AVG(emp.SALARY), 2) AS "Média salarial",
(CASE
  WHEN AVG(emp.SALARY) >= 2000 AND AVG(emp.SALARY) <= 5800 THEN 'Júnior'
  WHEN AVG(emp.SALARY) >= 5801 AND AVG(emp.SALARY) <= 7500 THEN 'Pleno'
  WHEN AVG(emp.SALARY) >= 7501 AND AVG(emp.SALARY) <= 10500 THEN 'Sênior'
  ELSE 'CEO'
END) AS "Senioridade"
FROM hr.jobs jobs
INNER JOIN hr.employees emp
ON jobs.JOB_ID = emp.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY 2 ASC, 1 ASC;
