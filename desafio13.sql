SELECT p.ProductName AS `Produto`, p.Price AS `Preço`
FROM w3schools.products AS p
WHERE ProductID IN (
SELECT ProductID
FROM w3schools.order_details
WHERE quantity > 80
)
ORDER BY `Produto`;
