-- 18. Crie uma função chamada exibir_quantidade_pessoas_contratadas_por_mes_e_ano no banco de dados hr que, dados o mês e ano como parâmetros nessa ordem, retorna a quantidade de pessoas funcionárias que foram contratadas nesse mês e ano. Confirme que sua função retorna o valor 14 ao ser chamada passando os números 6 e 1987 para mês e ano, respectivamente.
SELECT * FROM hr.employees;
USE hr;
SET DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes TINYINT(2), ano INT(4))
RETURNS TINYINT(2)
BEGIN
	DECLARE contagem TINYINT(2);
	SELECT COUNT(*) FROM employees
    WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
    INTO contagem;
    RETURN contagem;
END $$
SET DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(7, 1987);
