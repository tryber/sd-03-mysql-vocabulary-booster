  DELIMITER $$ 
  CREATE PROCEDURE buscar_media_por_cargo(IN JobTitle VARCHAR(30))
  BEGIN
    SELECT ROUND(AVG(employees.SALARY), 2) AS `Média salarial`
    FROM hr.employees AS employees
    INNER JOIN hr.jobs AS jobs ON jobs.JOBS_ID = employees.JOBS_ID
    WHERE jobs.JOB_TITLE = JobTitle
    GROUP BY jobs.JOB_TITLE;
  END $$ 
  DELIMITER;

CALL buscar_media_por_cargo('Programmer');
