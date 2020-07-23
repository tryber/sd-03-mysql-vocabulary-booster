SELECT products.ProductName AS `Produto`,
  products.Price As 'Preço'
FROM w3schools.products AS products,
  w3schools.order_details AS order_details
WHERE products.ProductID = order_details.ProductID
  AND order_details.Quantity > 80
ORDER BY `Produto`;
