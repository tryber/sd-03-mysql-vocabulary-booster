SELECT (
SELECT ProductName FROM  w3schools.products p where p.ProductID = od.ProductID
) Produto,
(
SELECT Price FROM  w3schools.products p where p.ProductID = od.ProductID
) Preço
FROM w3schools.order_details od
WHERE od.Quantity > 80
ORDER BY Produto;
