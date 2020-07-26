SELECT ProductName AS Produto, Price as "Preço"
FROM (
SELECT ProductName, p.Price, Quantity
FROM w3schools.order_details as od
INNER JOIN w3schools.products as p
ON p.ProductID = od.ProductID
HAVING Quantity > 80
) t
ORDER BY ProductName
