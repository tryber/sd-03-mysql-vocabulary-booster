DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailin VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE quant INT;
    SELECT COUNT(*) FROM hr.job_history WHERE EMPLOYEE_ID = (SELECT EMPLOYEE_ID FROM hr.employees WHERE EMAIL = emailin) INTO quant;
    RETURN quant;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('ASDASDAS');