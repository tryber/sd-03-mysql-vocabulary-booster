SELECT(SELECT CONCAT(FirstName, ' ', LastName) FROM w3schools.employees WHERE employeeID = ord.employeeID) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS ord
GROUP BY ord.employeeID
ORDER BY `Total de pedidos` ASC;
