SELECT cust.ContactName AS "Nome",
cust.Country AS "País",
COUNT(c.CustomerID) AS "Número de compatriotas"
FROM w3schools.customers cust,
w3schools.customers c
WHERE cust.Country = c.Country
  AND cust.CustomerID <> c.CustomerID
GROUP BY (cust.CustomerID)
ORDER BY 1 ASC;
