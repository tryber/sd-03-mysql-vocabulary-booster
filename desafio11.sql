SELECT cu1.ContactName `Nome`,
cu1.Country `País`,
COUNT(*) - 1 `Número de compatriotas`
FROM w3schools.customers AS cu1, w3schools.customers AS cu2
WHERE cu1.Country = cu2.Country
GROUP BY `Nome`, `País`
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
