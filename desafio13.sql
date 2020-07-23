SELECT 
    ProductName AS Produto, Price AS Preço
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS OD
WHERE
    P.ProductID = OD.ProductID
GROUP BY Produto
HAVING MAX(OD.Quantity) > 80
ORDER BY Produto;
