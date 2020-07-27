SELECT ca.ContactName AS `Nome`, ca.Country AS `País`, COUNT(cb.Country) AS `Número de compatriotas`
FROM w3schools.customers AS ca, w3schools.customers AS cb
WHERE ca.ContactName <> cb.ContactName AND ca.Country = cb.Country
GROUP BY ca.CustomerID;
