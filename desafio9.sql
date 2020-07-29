SELECT CONCAT(FirstName, ' ',LastName) 'Nome completo', COUNT(ord.OrderID) 'Total de pedidos' FROM w3schools.employees emp
INNER JOIN w3schools.orders ord ON ord.EmployeeID = emp.EmployeeID
GROUP BY ord.EmployeeID
ORDER BY `Total de pedidos`;
