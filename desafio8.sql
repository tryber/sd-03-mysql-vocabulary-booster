SELECT O.orderDate AS 'Data do pedido',
    C.contactName  AS 'Nome de contato',
    S.shipperName AS 'Empresa que fez o envio'
FROM w3schools.customers AS C
    JOIN w3schools.orders AS O
    ON O.customerid = C.customerID
    JOIN w3schools.shippers AS S
    ON O.shipperID = S.shipperID AND 
    (S.shipperName = 'Speedy Express' OR S.shipperName = 'United Package')
ORDER BY contactName, S.shipperName, O.orderDate;
