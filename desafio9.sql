SELECT *
FROM (
SELECT
        CONCAT(firstName, ' ', lastName) AS 'Nome completo',
        (SELECT
            COUNT(employeeID)
        FROM
            w3schools.orders orders
        WHERE
            EmployeeID = employee.EmployeeID ) AS 'Total de pedidos'
    FROM
        w3schools.employees AS employee
) as A
WHERE `Total de pedidos` <> 0
ORDER BY `Total de pedidos`;
