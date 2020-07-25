SELECT c.ContactName
  AS "Nome de contato",
s.ShipperName
  AS "Empresa que fez o envio",
DATE_FORMAT(o.OrderDate, '%Y-%m-%d')
  AS "Data do pedido"
FROM w3schools.orders o
INNER JOIN w3schools.customers c
  ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers s
  ON o.ShipperID = s.ShipperID
WHERE o.ShipperID = 1
  OR o.ShipperID = 2
ORDER BY 1 ASC, 2 ASC, 3 ASC;
