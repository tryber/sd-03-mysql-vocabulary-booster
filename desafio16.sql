USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(
	IN email_to VARCHAR(255),
    out count_out INT
)
BEGIN
SELECT COUNT(*)
INTO count_out
FROM hr.job_history AS JB
INNER JOIN hr.employees AS E
ON E.EMPLOYEE_ID = JB.EMPLOYEE_ID
WHERE EMAIL = email_to;
END $$

DELIMITER ;
