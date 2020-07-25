USE hr;
DELIMITER $$

CREATE FUNCTION buscar_media_por_cargo(cargo VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE media_salario INT;
SELECT ROUND(AVG(SALARY), 2)
FROM hr.employees em
INNER JOIN hr.jobs jb
ON em.JOB_ID = jb.JOB_ID
WHERE jb.JOB_TITLE = cargo INTO media_salario;
RETURN media_salario;
END $$

DELIMITER ;

SELECT buscar_media_por_cargo('Programmer');
