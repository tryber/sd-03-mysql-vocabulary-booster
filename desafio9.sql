SELECT concat(e.FirstName, " ", e.LastName) as "Nome completo", count(ShipperID) as "Total de pedidos" 
FROM w3schools.orders as o
INNER JOIN w3schools.employees as e
ON o.EmployeeID = e.EmployeeID
group by e.EmployeeID
ORDER BY `Total de pedidos`
