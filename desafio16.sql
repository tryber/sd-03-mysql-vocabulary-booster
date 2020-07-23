USE hr;
DELIMITER $$ 

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_total INT;
SELECT COUNT(job_history.EMPLOYEE_ID)
FROM hr.job_history AS job_history
  INNER JOIN hr.employees AS employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE employees.EMAIL = EMAIL
INTO jobs_total;
RETURN jobs_total;
END $$ 

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR") AS total_empregos;
