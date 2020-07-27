USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE job_amount INT;
SELECT COUNT(*) FROM hr.job_history jh
INNER JOIN hr.employees em ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE em.EMAIL = email INTO job_amount;
RETURN job_amount;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
