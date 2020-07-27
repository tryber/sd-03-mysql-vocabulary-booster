USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(
email_to VARCHAR(255)
)
RETURNS INT DETERMINISTIC
BEGIN
DECLARE count_out INT;
SELECT COUNT(*)
INTO count_out
FROM hr.job_history AS JB
INNER JOIN hr.employees AS E
ON E.EMPLOYEE_ID = JB.EMPLOYEE_ID
WHERE EMAIL = email_to;
RETURN count_out;
END $$

DELIMITER ;
