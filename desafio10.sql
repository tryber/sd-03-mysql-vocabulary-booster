SELECT (
    SELECT products.ProductName
    FROM w3schools.products AS products
    WHERE products.ProductID = details.ProductID
  ) AS `Produto`,
  MIN(details.Quantity) AS `Mínima`,
  MAX(details.Quantity) AS `Máxima`,
  ROUND(AVG(details.Quantity), 2) AS `Média`
FROM w3schools.order_details AS details
GROUP BY `Produto`
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
