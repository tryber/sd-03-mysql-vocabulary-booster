USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_quantidade_pessoas_contratadas_por_mes_e_ano(
IN mes INT,
IN ano INT,
OUT quant INT
)
BEGIN
SELECT COUNT(*)
INTO quant 
FROM hr.employees
WHERE YEAR(HIRE_DATE) = ano AND MONTH(HIRE_DATE) = mes;
END $$

DELIMITER ;