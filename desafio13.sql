SELECT
PN.ProductName AS 'Produto', PN.Price AS 'Preço'
FROM
w3schools.order_details AS OD, w3schools.products AS PN
WHERE (OD.ProductID = PN.ProductID) AND (OD.Quantity > 80)
ORDER BY 1;
