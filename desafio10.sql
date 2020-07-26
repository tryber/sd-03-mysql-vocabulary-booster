SELECT prod.ProductName AS "Produto",
MIN(ord.Quantity) AS "Mínima",
MAX(ord.Quantity) AS "Máxima",
FORMAT(AVG(ord.Quantity), 2) AS "Média"
FROM w3schools.products prod
INNER JOIN w3schools.order_details ord
  ON prod.ProductID = ord.ProductID
GROUP BY prod.ProductID
HAVING AVG(ord.Quantity) > 20.00
ORDER BY 4 ASC, 1 ASC;
