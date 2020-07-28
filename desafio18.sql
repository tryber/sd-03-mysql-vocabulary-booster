DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month_entrie INT, year_entrie INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hiring_total INT;
SELECT COUNT(*) FROM hr.employees
WHERE MONTH(HIRE_DATE) = month_entrie AND YEAR(HIRE_DATE) = year_entrie
INTO hiring_total;
RETURN hiring_total;
END $$
DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS "total of hiring";
