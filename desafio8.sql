SELECT cu.ContactName `Nome de contato`,
sh.ShipperName `Empresa que fez o envio`,
os.OrderDate `Data do pedido`
FROM w3schools.orders AS os
INNER JOIN w3schools.customers AS cu ON os.CustomerID = cu.CustomerID
INNER JOIN w3schools.shippers AS sh ON os.ShipperID = sh.ShipperID
WHERE sh.ShipperName = 'Speedy Express' OR sh.ShipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
