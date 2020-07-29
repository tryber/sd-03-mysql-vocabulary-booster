SELECT CONCAT(FirstName, ' ',LastName) 'Nome completo',
COUNT(ord.OrderID) 'Total de pedidos' FROM w3schools.employees e
INNER JOIN w3schools.orders o ON o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID
ORDER BY COUNT(ord.OrderID);
