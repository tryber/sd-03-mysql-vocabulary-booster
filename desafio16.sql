USE hr;
DELIMITER $$ 

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_total INT;
SELECT COUNT(jh.EMPLOYEE_ID)
FROM hr.job_history AS jh
  INNER JOIN hr.employees AS em ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE em.EMAIL = EMAIL
INTO jobs_total;
RETURN jobs_total;
END $$ 

DELIMITER ;

SELECT BUSCAR_QUANTIDADE_DE_EMPREGOS_POR_FUNCIONARIO('NKOCHHAR') AS total_empregos;
