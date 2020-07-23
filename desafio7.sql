-- 7. Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março. Para isso, usando o banco hr como referência, monte uma query que exiba três colunas:

-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada em CAIXA ALTA (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.
-- A terceira coluna deve possuir o alias "Salário" e exibir o salário da pessoa.

-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética. Em caso de empate no nome completo, ordene os resultados pela data de início que a pessoa iniciou seu cargo, em ordem crescente.

SELECT UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
H.START_DATE AS 'Data de início',
E.SALARY AS 'Salário'
FROM job_history AS H
INNER JOIN employees AS E ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN jobs AS J ON J.JOB_ID = E.JOB_ID
INNER JOIN departments AS D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
WHERE MONTH(H.START_DATE) < 4
ORDER BY `Nome completo`, H.START_DATE;
