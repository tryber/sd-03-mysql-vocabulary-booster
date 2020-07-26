SELECT 
c.ContactName as "Nome de contato",
s.ShipperName as "Empresa que fez o envio",
o.OrderDate as "Data do pedido"
FROM w3schools.orders AS o
INNER JOIN w3schools.shippers as s
ON s.ShipperID = o.ShipperID
INNER JOIN w3schools.customers as c
ON c.CustomerID = o.CustomerID
