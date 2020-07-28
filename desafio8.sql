SELECT 
a.ContactName AS `Nome de contato`,
b.ShipperName AS `Empresa que fez o envio`,
c.OrderDate AS `Data do pedido`
FROM
w3schools.customers AS a
INNER JOIN
w3schools.shippers AS b
INNER JOIN
w3schools.orders AS c
WHERE
c.CustomerID = a.CustomerID
AND b.ShipperID = c.ShipperID
AND b.ShipperID IN (1 , 2)
ORDER BY `Nome de contato` ASC , `Empresa que fez o envio` ASC , `Data do pedido` ASC;
