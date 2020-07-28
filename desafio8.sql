SELECT 
    C.contactname AS 'Nome de contato', 
    S.shippername AS 'Empresa que fez o envio', 
    D.orderdate   AS 'Data do pedido' 
FROM
    w3schools.customers AS C, 
    w3schools.orders AS D, 
    w3schools.shippers AS S 
WHERE  
    ( D.customerid = C.customerid ) 
    AND ( D.shipperid = S.shipperid ) 
    AND ( ( S.shippername = 'Speedy Express' ) 
    OR ( S.shippername = 'United Package' ) ) 
ORDER  BY 
    C.contactname ASC, 
    S.shippername ASC, 
    D.orderdate   ASC;
