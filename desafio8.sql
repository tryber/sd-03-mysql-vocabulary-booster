SELECT
    C.ContactName AS `Nome de contato`,
    S.ShipperName AS `Empresa que fez o envio`,
    O.OrderDate AS `Data do pedido`
FROM
    w3schools.orders AS O
        INNER JOIN
    w3schools.customers AS C
        INNER JOIN
    w3schools.shippers AS S
WHERE
    O.CustomerID = C.CustomerID
        AND O.ShipperID = S.ShipperID
        AND S.ShipperID IN (1 , 2)
ORDER BY C.ContactName ASC , S.ShipperName ASC , O.OrderDate ASC;
