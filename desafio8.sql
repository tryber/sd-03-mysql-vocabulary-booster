SELECT customers.ContactName AS `Nome do contato`,
shippers.ShipperName AS `Empresa que faz o envio`,
orders.OrderDate AS `Data do pedido`
FROM w3schools.orders AS orders
INNER JOIN w3schools.customers AS customers
ON customers.CustomerID = orders.CustomerID
INNER JOIN w3schools.shippers AS shippers
ON orders.ShipperID = shippers.ShipperID
WHERE shippers.ShipperName = 'Speedy Express' OR shippers.ShipperName = 'United Package'
ORDER BY `Nome do contato`, `Empresa que faz o envio`, `Data do pedido`;
