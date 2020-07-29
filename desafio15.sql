USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job_name VARCHAR(100))
BEGIN
SELECT
ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS e
JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = job_name
END $$
DELIMITER ;
