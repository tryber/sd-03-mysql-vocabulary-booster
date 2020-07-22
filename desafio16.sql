DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN emailin VARCHAR(100))
BEGIN
    SELECT COUNT(*) FROM hr.job_history WHERE EMPLOYEE_ID = (SELECT EMPLOYEE_ID FROM hr.employees WHERE EMAIL = emailin);
END $$
DELIMITER ;

CALL buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');