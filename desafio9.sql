SELECT CONCAT(ep.FirstName, ' ', ep.LastName) `Nome completo`,
COUNT(os.EmployeeID) `Total de pedidos`
FROM w3schools.orders AS os
INNER JOIN w3schools.employees AS ep ON os.EmployeeID = ep.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
