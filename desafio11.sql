SELECT
    CustomerName,
    Country,
    (SELECT
            COUNT(Country)
        FROM
            w3schools.customers AS C2
        WHERE
            C1.Country = C2.Country)
FROM
    w3schools.customers AS C1
GROUP BY CustomerName;
