-- 13. Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80. Usando o banco w3schools como referência, monte uma query que exiba duas colunas:

-- A primeira coluna deve possuir o alias "Produto" e exibir o nome do produto.
-- A segunda coluna deve possuir o alias "Preço" e exibir o preço desse produto.

-- Os resultados devem estar ordenados pelo nome do produto em ordem alfabética.

SELECT
(SELECT ProductName FROM products WHERE products.ProductID = order_details.ProductID) AS Produto,
(SELECT Price FROM products WHERE products.ProductID = order_details.ProductID) AS Preço
FROM order_details
WHERE Quantity > 80
ORDER BY Produto ASC;
