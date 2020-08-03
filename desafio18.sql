USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month INT, year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hired_total INT;
    SELECT COUNT(*) FROM hr.employees
    WHERE MONTH(HIRE_DATE) = month AND YEAR(HIRE_DATE) = year
    INTO hired_total;
    RETURN hired_total;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
