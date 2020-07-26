USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(emp.SALARY), 2) AS "Média salarial"
  FROM hr.employees emp
  INNER JOIN hr.jobs j
  ON emp.JOB_ID = j.JOB_ID
  WHERE j.JOB_TITLE = 'Programmer';
END $$

DELIMETER ;

CALL buscar_media_por_cargo('Programmer');
