SELECT
p.ProductName AS 'Produto',
p.Price AS 'Preço',
od.Quantity
FROM w3schools.order_details AS od
JOIN w3schools.products AS p
ON od.ProductID = p.ProductID
HAVING od.Quantity > 80;
