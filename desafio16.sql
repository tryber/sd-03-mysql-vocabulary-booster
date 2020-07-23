-- 16. Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico. Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".

USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(input_email VARCHAR(25))
RETURNS INT(2)
BEGIN
DECLARE contagem INT(2);
SELECT COUNT(*) FROM job_history WHERE EMPLOYEE_ID = (SELECT EMPLOYEE_ID FROM employees WHERE EMAIL = input_email)
INTO contagem;
RETURN contagem;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('JWHALEN');
