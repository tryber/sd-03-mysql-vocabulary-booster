SELECT
p.ProductName AS Produto,
min(o.quantity) AS Mínima,
Max(o.quantity) AS Máxima,
ROUND(AVG(o.Quantity),2) AS Média
FROM w3schools.order_details as o
Inner join w3schools.products as p on p.ProductID=o.ProductID
Group BY o.productID
HAving AVG(Quantity) > 20
ORDER BY 4, 1;
