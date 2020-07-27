USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN param VARCHAR(50))
BEGIN 
SELECT ROUND(AVG(employees.SALARY), 2) AS 'Média salarial'
FROM hr.jobs
JOIN hr.employees
ON jobs.JOB_ID = employees.JOB_ID AND jobs.JOB_TITLE = param
GROUP BY jobs.JOB_TITLE
ORDER BY ROUND(AVG(employees.SALARY), 2), jobs.JOB_TITLE;
END $$
DELIMITER ;
