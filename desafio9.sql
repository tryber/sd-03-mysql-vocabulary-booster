-- 9. Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos. Usando o banco w3schools como referência, monte uma query que exiba duas colunas:

-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
-- A segundo coluna deve possuir o alias "Total de pedidos" e exibir a quantidade total de pedidos feitos pela pessoa.

-- Ordene seus resultados pelo total de pedidos em ordem crescente.
SELECT 
(SELECT CONCAT(FirstName, ' ', LastName) FROM employees WHERE employees.EmployeeID = orders.EmployeeID) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM orders
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
