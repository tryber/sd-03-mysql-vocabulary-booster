SELECT
(SELECT ContactName FROM w3schools.customers AS c WHERE c.CustomerID = o.CustomerID) AS `Nome de Contato`,
ship.ShipperName AS "Empresa que fez o envio",
DATE_FORMAT(o.OrderDate, '%Y-%m-%d') AS "Data do Pedido"
FROM w3schools.orders AS o
INNER JOIN w3schools.shippers AS ship
ON ship.ShipperID = o.ShipperID
WHERE ship.ShipperName IN("Speedy Express", "United Package")
ORDER BY `Nome de Contato`, ship.ShipperName, o.OrderDate;
