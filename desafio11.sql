SELECT 
    ContactName AS Nome,
    Country AS País,
    (SELECT 
            COUNT(Country)
        FROM
            w3schools.customers AS T2
        WHERE
            T1.Country = T2.Country
                AND T1.ContactName <> T2.ContactName) AS `Número de compatriotas`
FROM
    w3schools.customers AS T1
ORDER BY Nome;
