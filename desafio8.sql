SELECT customers.customername AS 'Nome de contato',
shippers.shippername AS 'Empresa que fez o envio',
orders.orderdate AS 'Data do pedido'
FROM w3schools.orders
INNER JOIN w3schools.shippers
ON orders.shipperid = shippers.shipperid
INNER JOIN w3schools.customers
ON orders.CustomerID = customers.CustomerID
WHERE shippers.shippername IN ('Speedy Express', 'United Package')
ORDER BY customers.customername, shippers.shippername, orders.orderdate;
