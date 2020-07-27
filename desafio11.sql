SELECT cust1.ContactName AS Nome, cust1.Country AS País, COUNT(cust1.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS cust1
INNER JOIN w3schools.customers AS cust2
ON cust1.Country = cust2.Country
GROUP BY cust1.ContactName, País
HAVING `Número de compatriotas` <> 0
ORDER BY Nome;
