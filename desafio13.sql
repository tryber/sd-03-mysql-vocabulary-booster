SELECT
P.ProductName AS 'Produto', P.Price AS 'Preço'
FROM
w3schools.order_details AS D, w3schools.products AS P
WHERE
(D.ProductID = P.ProductID) AND
(D.Quantity > 80)
ORDER BY
P.ProductName ASC;
