  SELECT ProductName AS Produto, 
  products.Price AS Preço
  FROM w3schools.products
  INNER JOIN w3schools.order_details
  ON order_details.ProductID = products.ProductID
  WHERE w3schools.order_details.Quantity > 80.00
  GROUP BY products.ProductName, products.Price
  ORDER BY 1;
