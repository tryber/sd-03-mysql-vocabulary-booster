USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs INT;
SELECT COUNT(JH.EMPLOYEE_ID) FROM hr.job_history AS JH
INNER JOIN hr.employees AS E ON JH.EMPLOYEE_ID=E.EMPLOYEE_ID
WHERE E.EMAIL = EMAIL
GROUP BY JH.EMPLOYEE_ID
INTO jobs;
RETURN jobs;
END $$

DELIMITER ;
