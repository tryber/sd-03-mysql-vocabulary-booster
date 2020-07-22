SELECT concat(e.firstName, ' ',e.lastname) AS 'Nome completo', 
COUNT(o.EmployeeID) AS 'Total de pedidos' 
FROM w3schools.orders as o
Inner join w3schools.employees as e on o.EmployeeID=e.EmployeeID
GROUP BY o.EmployeeID
ORDER BY COUNT(o.EmployeeID);
