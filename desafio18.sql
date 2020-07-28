USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE employee_amount INT;
SELECT COUNT(*) FROM hr.employees em
WHERE MONTH(em.HIRE_DATE) = mes AND YEAR(em.HIRE_DATE) = ano INTO employee_amount;
RETURN employee_amount;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
