SELECT
(SELECT prod.ProductName FROM w3schools.products AS prod WHERE prod.ProductID = ordDet.ProductID) AS `Produto`,
MAX(ordDet.Quantity) AS `Mínima`,
MIN(ordDet.Quantity) AS `Máxima`,
ROUND(AVG(ordDet.Quantity)) AS `Média`
FROM  w3schools.order_details AS ordDet
GROUP BY `Produto`
HAVING `Média` > 20.00;