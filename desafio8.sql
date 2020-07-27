SELECT C.ContactName AS "Nome de contato",
B.ShipperName AS "Empresa que fez o envio",
A.OrderDate AS "Data do pedido"
FROM w3schools.orders AS A
JOIN w3schools.shippers AS B
ON B.ShipperID = A.ShipperID
JOIN w3schools.customers AS C
ON C.CustomerID = A.CustomerID
WHERE A.CustomerID <> 3
ORDER BY C.ContactName, B.ShipperName, A.OrderDate;
