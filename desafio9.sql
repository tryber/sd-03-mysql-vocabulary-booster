SELECT CONCAT(employees.firstname, ' ', employees.lastname) AS 'Nome completo', 
COUNT(orders.employeeid) AS 'Total de pedidos'
FROM w3schools.employees
INNER JOIN w3schools.orders
ON orders.employeeid = employees.employeeid
GROUP BY orders.employeeid
ORDER BY COUNT(orders.employeeid);
