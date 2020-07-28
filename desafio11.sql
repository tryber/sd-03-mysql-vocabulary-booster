SELECT
   comp.ContactName AS Nome,
   comp.Country AS País,
   COUNT(compB.Country) AS 'Número de compatriotas' 
FROM
   w3schools.customers AS comp,
   w3schools.customers AS compB 
WHERE
   comp.Country = compB.Country 
   AND comp.CustomerID <> compB.CustomerID 
GROUP BY
   comp.ContactName,
   comp.Country 
ORDER BY
   comp.ContactName;