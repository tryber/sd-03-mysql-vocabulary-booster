SELECT 
    P.ProductName AS Produto,
    MIN(OD.Quantity) AS Mínima,
    MAX(OD.Quantity) AS Máxima,
    ROUND(AVG(OD.Quantity), 2) AS Média
FROM
    w3schools.order_details AS OD
        INNER JOIN
    w3schools.products AS P
WHERE
    P.ProductID = OD.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média ASC , Produto ASC;
