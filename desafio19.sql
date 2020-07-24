-- 19. Toda pessoa funcionária no banco hr possui um histórico completo de cargos. Logo, crie uma procedure chamada exibir_historico_completo_por_funcionario que, dado o e-mail de uma pessoa funcionária, retorna todos os cargos em seu histórico. Sua procedure deve retornar três colunas:

-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Departamento" e exibir o departamento que a pessoa já fez parte.
-- A terceira coluna deve possuir o alias "Cargo" e exibir cargo que a pessoa já ocupou.

-- Os resultados devem estar ordenados pelo nome do departamento em ordem alfabética. Em caso de empate no nome do departamento, ordene os resultados pelo nome do cargo em ordem alfabética.
-- Confirme a execução correta da procedure, chamando-a e passando o email "NKOCHHAR":
-- CALL exibir_historico_completo_por_funcionario('NKOCHHAR');

-- Chamando-a dessa forma, sua procedure deve mostrar que a pessoa funcionária Neena Kochhar teve dois cargos em seu histórico: um como Accounting Manager no departamento Accounting e o outro como Public Accountant no departamento Accounting, nessa ordem.

USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN input_email VARCHAR(25))
BEGIN
SELECT
(SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) FROM employees WHERE EMAIL = input_email) AS `Nome completo`,
(SELECT DEPARTMENT_NAME FROM departments WHERE departments.DEPARTMENT_ID = job_history.DEPARTMENT_ID) AS Departamento,
(SELECT JOB_TITLE FROM jobs WHERE jobs.JOB_ID = job_history.JOB_ID) AS Cargo
FROM job_history
WHERE EMPLOYEE_ID = (SELECT EMPLOYEE_ID FROM employees WHERE EMAIL = input_email)
ORDER BY Departamento;
END $$
SET DELIMITER ;

-- CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
