SELECT pr.ProductName `Produto`,
MIN(od.Quantity) `Mínima`,
MAX(od.Quantity) `Máxima`,
ROUND(AVG(od.Quantity), 2) `Média`
FROM w3schools.products AS pr
INNER JOIN w3schools.order_details AS od
ON pr.ProductID = od.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
