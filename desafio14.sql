(SELECT 
    COUNTRY AS 'País'
FROM
    w3schools.suppliers) UNION (SELECT 
    COUNTRY
FROM
    w3schools.customers) ORDER BY `País` LIMIT 5;
