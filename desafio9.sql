SELECT EmployeeID AS 'Nome completo', COUNT(EmployeeID) AS 'Total de pedidos' FROM orders
GROUP BY EmployeeID
ORDER BY COUNT(EmployeeID);
