SELECT 
    a.ContactName AS `Nome`,
    a.Country AS `País`,
    COUNT(b.ContactName) AS `Número de compatriotas`
FROM
    w3schools.customers AS a,
    w3schools.customers AS b
WHERE
    a.ContactName <> b.ContactName
        AND a.Country = b.Country
GROUP BY a.CustomerID
ORDER BY `Nome`;
