SELECT 
    ContactName AS Nome,
    Country AS País,
    (SELECT 
            COUNT(Country ) - 1
        FROM
            w3schools.customers AS T2
        WHERE
            T1.Country = T2.Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS T1
ORDER BY Nome;
