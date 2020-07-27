SELECT * FROM (
SELECT contactName AS 'Nome',
    country AS 'País',
    (SELECT COUNT(country)- 1
    FROM w3schools.customers as C
    WHERE C.country = cus.country)  AS 'Número de compatriotas'
FROM w3schools.customers AS cus

) AS A
WHERE `Número de compatriotas` <> 0
ORDER BY `Nome`;
