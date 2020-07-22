select c.ContactName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do Pedido'
FROM w3schools.customers AS c
inner join w3schools.orders as o on c.CustomerID = o.CustomerID
Inner join w3schools.shippers as s on s.shipperID = o.shipperID
WHERE s.ShipperName <> 'Federal Shipping'
ORDER BY 1,2,3;
