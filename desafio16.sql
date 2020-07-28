USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT COUNT(jh.EMPLOYEE_ID) FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO total_jobs;
RETURN total_jobs;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
