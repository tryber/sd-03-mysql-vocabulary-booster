-- 6. Faça um relatório que mostra o histórico de cargos das pessoas empregadas. Para isso, usando o banco hr como referência, monte uma query que exiba quatro colunas:

-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.
-- A terceira coluna deve possuir o alias "Data de início do cargo" e exibir a data que a pessoa iniciou o cargo.
-- A quarta coluna deve possuir o alias "Departamento" e mostrar o nome do departamento em que a pessoa exerceu seu cargo.

-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente. Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética.

SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
J.JOB_TITLE AS Cargo,
H.START_DATE AS `Data de início do cargo`,
D.DEPARTMENT_NAME AS `Departamento`
FROM job_history AS H
INNER JOIN jobs AS J ON H.JOB_ID = J.JOB_ID
INNER JOIN departments AS D ON D.DEPARTMENT_ID = H.DEPARTMENT_ID
INNER JOIN employees AS E ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
ORDER BY `Nome completo` DESC, Cargo;
