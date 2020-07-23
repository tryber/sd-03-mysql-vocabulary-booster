select name as "Nome completo",count as "Total de pedidos" from (select employeeId, count(*) as count, 
(select concat(firstname, ' ', lastname) as name from employees where orders.employeeId = employees.employeeid) as name
from orders
group by employeeid
order by count) as t;
