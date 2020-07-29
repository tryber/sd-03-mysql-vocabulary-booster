SELECT ProductName AS `Produto`, (
SELECT MIN(Quantity)
FROM w3schools.order_details
WHERE products.ProductID = order_details.ProductID
) AS `Mínima`, (
SELECT MAX(Quantity)
FROM w3schools.order_details
WHERE products.ProductID = order_details.ProductID
) AS `Máxima`, (
SELECT ROUND(AVG(Quantity), 2)
FROM w3schools.order_details
WHERE products.ProductID = order_details.ProductID
) AS `Média`
FROM w3schools.products
GROUP BY ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;

-- SELECT p.ProductName AS `Produto`,
-- MIN(od.Quantity) AS `Mínima`,
-- MAX(od.Quantity) AS `Máxima`,
-- ROUND(AVG(od.Quantity), 2) AS `Média`
-- FROM w3schools.products AS p
-- INNER JOIN w3schools.order_details AS od
-- ON p.ProductID = od.ProductID
-- GROUP BY od.ProductID
-- HAVING `Média` > 20
-- ORDER BY `Média`, `Produto`;
