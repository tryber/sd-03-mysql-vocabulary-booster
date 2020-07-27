SELECT CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
COUNT(ord.CustomerID) AS 'Total de pedidos' FROM w3schools.orders AS ord
INNER JOIN w3schools.employees AS emp
ON emp.EmployeeID = ord.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
