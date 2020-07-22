SELECT 
	CONCAT(e.firstname, ' ', e.lastname) AS `Nome completo`,
    COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS o
JOIN w3schools.employees AS e
ON o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;