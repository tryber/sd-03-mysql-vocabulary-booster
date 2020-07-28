SELECT B.ProductName AS Produto,
MIN(A.Quantity) AS "Mínima",
MAX(A.Quantity) AS "Máxima",
ROUND(AVG(A.Quantity), 2) AS `Média`
FROM w3schools.order_details AS A
JOIN w3schools.products AS B
ON B.ProductID = A.ProductID
GROUP BY A.ProductID
HAVING `Média` > 20
ORDER BY `Média`, Produto;
