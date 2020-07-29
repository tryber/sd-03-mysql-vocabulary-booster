SELECT c.ContactName as 'Nome de contato',
s.ShipperName as 'Empresa que fez o envio',
o.OrderDate as 'Data do pedido'  FROM w3schools.orders o
INNER JOIN w3schools.customers c ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers s ON o.ShipperID = s.ShipperID
WHERE o.ShipperID IN(1,2)
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
