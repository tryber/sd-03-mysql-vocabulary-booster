SELECT customerName AS 'Nome',
    country AS 'País',
    (SELECT COUNT(country)
    FROM w3schools.customers as C
    WHERE C.country = cus.country)  AS 'Número de compatriotas'
FROM w3schools.customers AS cus
GROUP BY customerName;