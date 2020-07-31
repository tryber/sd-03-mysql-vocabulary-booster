DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(30))
BEGIN
  SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
  FROM hr.employees AS emp
  INNER JOIN hr.jobs AS job ON job.JOB_ID = emp.JOB_ID
  WHERE job.JOB_TITLE = cargo
  GROUP BY job.JOB_TITLE;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
