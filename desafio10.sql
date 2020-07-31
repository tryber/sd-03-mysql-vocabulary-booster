SELECT ProductName AS Produto,
MIN(Quantity) AS Mínima,
MAX(Quantity) AS Máxima,
ROUND(AVG(Quantity), 2) AS `Média`
FROM w3schools.products AS products
INNER JOIN w3schools.order_details AS details
ON products.ProductID = details.ProductID
GROUP BY Produto
HAVING `Média` > 20.00
ORDER BY `Média` ASC, Produto;
