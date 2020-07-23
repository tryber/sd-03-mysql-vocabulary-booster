select (
select concat(FirstName, ' ', LastName)
from w3schools.employees
where EmployeeID = o.EmployeeID
) as 'Nome completo',
count(*) as 'Total de pedidos'
from w3schools.orders as o
group by `Nome completo`
order by `Total de pedidos`;
