SELECT
p.ProductName AS Produto,
p.Price AS `Preço`
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS Q
WHERE p.ProductID = Q.ProductID AND Q.Quantity > 80 
ORDER BY Produto ;
