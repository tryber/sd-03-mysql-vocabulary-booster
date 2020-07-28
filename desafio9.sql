SELECT  CONCAT(P.FirstName, ' ', P.LastName) as `Nome completo`,
COUNT(P.EmployeeID) AS  `Total de pedidos`
FROM w3schools.employees as P
INNER JOIN w3schools.orders as O
WHERE O.EmployeeID = P.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos`;
