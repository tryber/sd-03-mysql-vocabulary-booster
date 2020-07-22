SELECT 
a.ContactName AS Nome,
a.Country AS `País`,
COUNT(*) AS `Número de compatriotas`
FROM w3schools.customers AS a, w3schools.customers AS b
WHERE a.country = b.country AND a.ContactName <> b.ContactName
GROUP BY a.ContactName, a.Country
ORDER BY Nome;
