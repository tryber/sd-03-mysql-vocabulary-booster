DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(entry VARCHAR(200))	
RETURNS INT READS SQL DATA
BEGIN
DECLARE COUNTER INT;
SELECT COUNT(A.EMPLOYEE_ID)
FROM hr.employees AS A
JOIN hr.job_history AS B
ON B.EMPLOYEE_ID = A.EMPLOYEE_ID
WHERE A.EMAIL = entry	
INTO COUNTER;
RETURN COUNTER;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR") AS Amount;
