SELECT products.ProductName AS `Produto`,
  products.Price As 'Preço'
FROM w3schools.products AS products
WHERE (
    SELECT order_details.Quantity
    FROM w3schools.order_details as order_details
    WHERE order_details.ProductID = products.ProductID
      AND order_details.Quantity > 80
  )
ORDER BY `Produto`;
