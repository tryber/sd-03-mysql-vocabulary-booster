USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN CARGO VARCHAR(200))

BEGIN
	SELECT ROUND(AVG(E.SALARY),2) as `Média salarial`
    FROM hr.jobs AS J
    INNER JOIN hr.employees AS E 
    ON J.JOB_ID = E.JOB_ID AND J.JOB_TITLE = CARGO 
    GROUP BY J.JOB_TITLE;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
