SELECT
CONCAT(E.FirstName,' ',E.LastName) AS 'Nome completo',
COUNT(D.EmployeeID) AS 'Total de pedidos'
FROM
w3schools.employees AS E,
w3schools.orders AS D
WHERE
E.EmployeeID = D.EmployeeID
GROUP BY
CONCAT(E.FirstName,' ',E.LastName)
ORDER BY
COUNT(D.EmployeeID) ASC;
