USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(
mes INT,
ano INT
)
RETURNS INT DETERMINISTIC
BEGIN
DECLARE quant INT;
SELECT COUNT(*)
INTO quant 
FROM hr.employees
WHERE YEAR(HIRE_DATE) = ano AND MONTH(HIRE_DATE) = mes;
RETURN quant;
END $$

DELIMITER ;
