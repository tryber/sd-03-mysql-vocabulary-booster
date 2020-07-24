SELECT
    C1.ContactName AS Nome,
    C1.Country AS País,
    (SELECT
            COUNT(Country) - 1
        FROM
            w3schools.customers AS C2
        WHERE
            C2.Country = C1.Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS C1
WHERE
    (SELECT
            COUNT(Country) - 1
        FROM
            w3schools.customers AS C2
        WHERE
            C2.Country = C1.Country) <> 0
ORDER BY ContactName ASC;
