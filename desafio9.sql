SELECT CONCAT(B.FirstName," ",B.LastName) AS "Nome completo",
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS A
JOIN w3schools.employees AS B
ON B.EmployeeID = A.EmployeeID
GROUP BY A.EmployeeID
ORDER BY `Total de pedidos`;
