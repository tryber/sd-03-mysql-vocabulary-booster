SELECT prod.ProductName AS "Produto",
prod.Price AS "Preço"
FROM w3schools.products prod
INNER JOIN w3schools.order_details ord
  ON prod.ProductID = ord.ProductID
WHERE ord.Quantity > 80
ORDER BY 1 ASC;
