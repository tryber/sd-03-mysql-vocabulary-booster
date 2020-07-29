SELECT (
SELECT ProductName FROM  w3schools.products p where p.ProductID = o.ProductID
) Produto,
(
SELECT Price FROM  w3schools.products p where p.ProductID = o.ProductID
) Preço
FROM w3schools.order_details o
WHERE o.Quantity > 80
ORDER BY Produto;
