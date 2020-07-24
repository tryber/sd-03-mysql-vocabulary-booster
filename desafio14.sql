SELECT DISTINCT A.country  AS 'País'
FROM w3schools.customers A
    JOIN suppliers AS B
    ON A.country IS NOT NULL OR B.country IS NOT NULL

ORDER BY `País`
LIMIT 5;
