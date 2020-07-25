select CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
count(o.EmployeeID) AS `Total de pedidos`
from w3schools.employees e
inner join w3schools.orders o on e.EmployeeID = o.EmployeeID
group by o.EmployeeID
order by `Total de pedidos`;
