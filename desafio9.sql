SELECT 
    CONCAT(firstName, ' ', lastName) AS 'Nome completo',
    (SELECT 
            COUNT(employeeID)
        FROM
            w3schools.orders
        WHERE
            EmployeeID = employee.EmployeeID) AS 'Total de pedidos'
FROM
    w3schools.employees AS employee
ORDER BY `Total de pedidos`