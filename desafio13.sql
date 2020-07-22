SELECT ProductName AS Produto, Price AS Preço FROM w3schools.Products
WHERE ProductID IN (
	SELECT ProductID FROM orderdetails
    WHERE quantity > 80)
    ORDER BY 1;
