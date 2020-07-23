SELECT
C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
D.OrderDate AS 'Data do pedido'
FROM
w3schools.customers AS C,
w3schools.orders AS D,
w3schools.shippers AS S
WHERE
(D.CustomerID = C.CustomerID) AND
(D.ShipperID = S.ShipperID) AND
(S.ShipperName = 'Speedy Express' OR S.ShipperName = 'United Package')
ORDER BY
C.ContactName ASC,
S.ShipperName ASC,
D.OrderDate ASC;
