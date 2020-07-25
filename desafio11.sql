SELECT cu1.ContactName `Nome`,
cu1.Country `País`,
COUNT(*) - 1 `Número de compatriotas`
FROM w3schools.customers AS cu1
INNER JOIN w3schools.customers AS cu2
ON cu1.Country = cu2.Country
GROUP BY `Nome`
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
