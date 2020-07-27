SELECT cust.ContactName AS 'Nome de contato', ship.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS ord
INNER JOIN w3schools.customers AS cust
ON ord.CustomerID = cust.CustomerID
INNER JOIN w3schools.shippers AS ship
ON ship.ShipperID = ord.ShipperID
WHERE ord.ShipperID IN (1, 2)
ORDER BY cust.ContactName, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
