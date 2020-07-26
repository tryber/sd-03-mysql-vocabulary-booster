SELECT b.CustomerName AS Nome, a.Country AS País,  count(a.CustomerName) AS "Número de compatriotas"
FROM w3schools.customers as a, w3schools.customers as b
where a.Country = b.Country
GROUP BY b.CustomerName,a.Country
ORDER BY "Nome"
