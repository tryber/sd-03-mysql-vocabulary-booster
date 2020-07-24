SELECT ProductName AS 'Produto',
    (SELECT MAX(quantity)
    FROM w3schools.order_details
    WHERE ProductID = product.ProductID ) AS 'Máxima',
    (SELECT ROUND(AVG(quantity), 2) AS media
    FROM w3schools.order_details
    WHERE ProductID = product.ProductID) AS 'Média',
    (SELECT MIN(quantity)
    FROM w3schools.order_details
    WHERE ProductID = product.ProductID ) AS 'Mínima'
FROM w3schools.products AS product
HAVING `Média` > 20
ORDER BY `Média`, ProductName;
