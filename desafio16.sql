USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE job_total INT;
SELECT
COUNT(e.EMAIL) AS total_jobs
FROM hr.job_history AS jh
JOIN hr.employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email INTO job_total;
RETURN job_total;
END $$
DELIMITER ;
