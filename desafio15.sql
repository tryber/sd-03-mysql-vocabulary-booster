USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job_name VARCHAR(100), OUT media_wage DOUBLE)
BEGIN
SELECT
ROUND(AVG(e.SALARY), 2) AS 'Média salarial' INTO media_wage
FROM hr.employees AS e
JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE= job_name;
END $$
DELIMITER ;
CALL buscar_media_por_cargo('Programmer', @media_wage_return);
SELECT @media_wage_return;
