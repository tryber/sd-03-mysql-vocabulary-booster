SELECT customers.ContactName AS `Nome do contato`,
shippers.ShipperName AS `Empresa que faz o envio`,
orders.OrderDate AS `Data do pedido`
FROM w3schools.orders AS orders
INNER JOIN w3schools.customers AS customers
ON orders.CustomerID = customers.CustomerID
INNER JOIN w3schools.shippers AS shippers
ON orders.ShipperID = shippers.ShipperID
WHERE shippers.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome do contato`, `Empresa que faz o envio`, `Data do pedido`;
