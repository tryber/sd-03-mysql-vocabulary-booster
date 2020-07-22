SELECT 
    EmployeeId, COUNT(EmployeeID) AS `Total de pedidos`
FROM
    w3schools.orders
GROUP BY EmployeeId
ORDER BY `Total de pedidos`;
