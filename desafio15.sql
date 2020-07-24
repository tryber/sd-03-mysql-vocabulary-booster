USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT
ROUND(AVG(E.SALARY),2) AS 'Média Salarial' 
FROM
hr.employees AS E, hr.jobs AS F
WHERE
(E.JOB_ID = F.JOB_ID) AND
(F.JOB_TITLE = cargo)
GROUP BY
E.JOB_ID;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
