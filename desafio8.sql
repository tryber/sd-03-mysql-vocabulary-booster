SELECT customers.ContactName AS 'Nome de contato', shippers.ShipperName AS 'Empresa que fez o envio',  orders.OrderDate AS 'Data do pedido' FROM w3schools.customers
INNER JOIN w3schools.orders
INNER JOIN w3schools.shippers
ON orders.CustomerID = customers.CustomerID
AND orders.ShipperID = shippers.ShipperID
WHERE orders.ShipperID = '1' OR orders.ShipperID = '2'
ORDER BY 1,2, 3 ASC;
