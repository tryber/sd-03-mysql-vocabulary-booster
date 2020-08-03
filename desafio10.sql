SELECT products.ProductName AS 'Produto',
  MIN(od.Quantity) AS 'Mínima',
  MAX(od.Quantity) AS 'Máxima',
  ROUND(AVG(od.Quantity), 2) AS `Média`
FROM w3schools.products AS products
  INNER JOIN w3schools.order_details AS od ON od.ProductID = products.ProductID
GROUP BY products.ProductName
HAVING `Média` > 20.00
ORDER BY `Média` ASC,
  products.ProductName ASC;
