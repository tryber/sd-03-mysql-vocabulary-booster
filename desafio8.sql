SELECT customers.ContactName AS 'Nome de contato',
  shippers.ShipperName AS 'Empresa que fez o envio',
  orders.OrderData AS 'Data do pedido'
FROM w3schools.orders
  INNER JOIN w3schools.shippers ON orders.ShipperID = shippers.ShipperID
  INNER JOIN w3schools.customers ON orders.CustomerID = customers.CustomerID
WHERE shippers.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY customers.ContactName,
  shippers.ShipperName,
  orders.OrderData;
