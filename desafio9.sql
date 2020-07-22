SELECT CONCAT(employees.firstname, ' ', employees.lastname) AS 'Nome completo', 
SUM(orders.employeeid) AS 'Total de pedidos'
FROM w3schools.employees
INNER JOIN w3schools.orders
ON employees.EmployeeID = orders.employeeid
GROUP BY orders.employeeid
ORDER BY SUM(orders.employeeid);
