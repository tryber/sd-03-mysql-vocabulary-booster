SELECT prod.ProductName AS "Produto", prod.Price AS Preço
FROM w3schools.order_details AS ordDet
INNER JOIN w3schools.products AS prod
ON ordDet.ProductID = prod.ProductID
WHERE ordDet.Quantity > 80
ORDER BY prod.ProductName;
