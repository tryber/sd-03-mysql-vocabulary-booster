SELECT CONCAT(employees.FirstName, " ", employees.Lastname) AS 'Nome Completo',
detail.Quantity AS `Total de pedidos`
FROM w3schools.employees AS employees
INNER JOIN w3schools.order_details AS detail
ON employees.EmployeeID = detail.OrderDetailID
ORDER BY `Total de pedidos`;
