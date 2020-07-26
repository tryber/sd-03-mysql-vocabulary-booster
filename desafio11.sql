SELECT b.ContactName AS Nome, a.Country AS País,  count(a.CustomerName) - 1 AS "Número de compatriotas"
FROM w3schools.customers as a, w3schools.customers as b
where a.Country = b.Country
GROUP BY b.ContactName,a.Country
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`
