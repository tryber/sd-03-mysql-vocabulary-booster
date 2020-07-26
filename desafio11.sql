SELECT ContactName AS "Nome",
Country AS "País",
(
  SELECT COUNT(CustomerID)
  FROM w3schools.customers c
  WHERE cust.Country = c.Country
  AND cust.CustomerID <> c.CustomerID
) AS "Número de compatriotas"
FROM w3schools.customers cust
ORDER BY 1 ASC;
