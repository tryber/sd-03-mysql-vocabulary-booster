select
p.ProductName AS `Produto`,
MIN(od.Quantity) AS `Mínima`,
MAX(od.Quantity) AS `Máxima`,
ROUND(AVG(od.Quantity), 2) AS `Média`
from
w3schools.products p
inner join w3schools.order_details od on
p.ProductID = od.ProductID
GROUP BY p.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
