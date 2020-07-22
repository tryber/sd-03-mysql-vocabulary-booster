SELECT
	ProductID,
    min(quantity) AS Mínimo,
    Max(quantity) AS Máximo,
    ROUND(AVG(Quantity),2) AS Média
        FROM w3schools.OrderDetails
Group BY productID
HAving AVG(Quantity) > 20
ORDER BY AVG(Quantity);
