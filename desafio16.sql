USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(
    inputEmail VARCHAR(50)
)
RETURNS INT READS SQL DATA
DETERMINISTIC
BEGIN
	DECLARE qt_empregados INT;
	SELECT COUNT(job_id)
    FROM hr.employees
    WHERE job_id LIKE (
        SELECT job_id
    FROM hr.employees
    WHERE email LIKE inputEmail)INTO qt_empregados;
    RETURN qt_empregados;
END $$
DELIMITER ;