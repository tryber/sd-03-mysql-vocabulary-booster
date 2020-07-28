SELECT
   CONCAT(EN.FirstName, ' ', EN.LastName) AS 'Nome completo',
   COUNT(DO.EmployeeID) AS 'Total de pedidos' 
FROM
   w3schools.employees AS EN,
   w3schools.orders AS DO 
WHERE
   EN.EmployeeID = DO.EmployeeID 
GROUP BY
   CONCAT(EN.FirstName, ' ', EN.LastName) 
ORDER BY
   2;