SELECT p.ProductName as "Produto", Min(od.Quantity) as "Mínima", Max(od.Quantity) as "Máxima", AVG(Quantity) as "Média" 
FROM w3schools.order_details as od
INNER JOIN w3schools.products as p
ON p.ProductID = od.ProductID
GROUP BY p.ProductID 
HAVING Média > 20
ORDER BY Média, Produto
