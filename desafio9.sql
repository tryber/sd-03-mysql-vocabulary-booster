SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS `Nome completo`,
COUNT(orders.EmployeeID) AS `Total de pedidos`
FROM w3schools.employees as employees
INNER JOIN w3schools.orders AS orders ON employees.EmployeeID = orders.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY `Total de pedidos` ASC;
