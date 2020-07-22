SELECT 
    ord.OrderID, cst.CustomerID, cst.ContactName, ord.ShipperID
FROM
    w3schools.orders AS ord
INNER JOIN
    w3schools.customers AS cst ON ord.CustomerID = cst.CustomerID
WHERE
    ord.ShipperID IN (1 , 2)
ORDER BY cst.CustomerID;
