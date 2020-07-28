SELECT B.ProductName AS Produto,
B.Price AS Preço
FROM w3schools.order_details AS A
JOIN w3schools.products AS B
ON B.ProductID = A.ProductID
WHERE A.Quantity > 80
ORDER BY B.ProductName;
