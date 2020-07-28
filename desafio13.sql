SELECT pr.ProductName `Produto`,
pr.Price `Preço`
FROM w3schools.products AS pr
INNER JOIN w3schools.order_details AS od
ON pr.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY `Produto`;
