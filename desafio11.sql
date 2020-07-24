SELECT
*
FROM
(
  SELECT CustomerName AS 'Nome', Country AS 'País',
  (
    SELECT
    COUNT(*)-1
    FROM
    w3schools.customers AS D
    WHERE
    C.Country = D.Country
  ) AS 'Número de compatriotas'
  FROM
  w3schools.customers AS C
) AS E
WHERE
`Número de compatriotas` > 0
ORDER BY
Nome ASC;
