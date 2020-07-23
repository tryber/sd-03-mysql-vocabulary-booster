SELECT cust1.ContactName AS Nome, cust1.Country AS País, COUNT(cust2.Country) AS "Número de compatriotas"
FROM w3schools.customers AS cust1, w3schools.customers AS cust2
WHERE cust1.Country = cust2.Country AND cust1.CustomerID <> cust2.CustomerID
GROUP BY cust1.ContactName, cust1.Country 
ORDER BY cust1.ContactName;
