USE w3schools;
SELECT customerName  AS 'Nome de contato',
    S.shipperName AS 'Empresa que fez o envio'
FROM customers AS C
    JOIN orders AS O
    ON O.customerid = C.customerID
    RIGHT JOIN shippers AS S
    ON O.shipperID = S.shipperID AND (S.shipperName = 'Speedy Express' OR S.shipperName = 'United Package')
order BY customerName, S.shipperName, O.orderDate;
