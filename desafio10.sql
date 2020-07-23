SELECT ProductName AS 'Produto',
    (SELECT MIN(quantity)
    FROM w3schools.order_details
    WHERE ProductID = product.ProductID ) AS 'Mínima',
    (SELECT MAX(quantity)
    FROM w3schools.order_details
    WHERE ProductID = product.ProductID ) AS 'Máxima',
    (SELECT ROUND(AVG(quantity), 2)
    FROM w3schools.order_details
    WHERE ProductID = product.ProductID ) AS Média
FROM w3schools.products AS product
ORDER BY (SELECT ROUND(AVG(quantity), 2)
FROM w3schools.order_details
WHERE ProductID = product.ProductID ), ProductName;
