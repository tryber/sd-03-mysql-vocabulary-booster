SELECT
P.ProductName AS 'Produto', P.Price AS 'Preço'
FROM
w3schools.order_details AS D, w3schools.products AS P
WHERE
D.Quantity > 80 AND
D.ProductID = P.ProductID
ORDER BY
P.ProductName ASC;
