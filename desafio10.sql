SELECT
p.ProductName,
min(o.quantity) AS Mínimo,
Max(o.quantity) AS Máximo,
ROUND(AVG(o.Quantity),2) AS Média
FROM w3schools.order_details as o
Inner join w3schools.products as p on p.ProductID=o.ProductID
Group BY o.productID
HAving AVG(Quantity) > 20
ORDER BY AVG(Quantity);
