SELECT pro.ProductName AS Produto,
MIN(qua.quantity) AS Mínima, MAX(qua.quantity) AS Máxima, ROUND(AVG(qua.Quantity),2) AS Média
FROM w3schools.order_details as qua
INNER JOIN w3schools.products as pro on pro.ProductID=qua.ProductID
GROUP BY pro.productID HAVING AVG(Quantity) > 20
ORDER BY 4, 1;
