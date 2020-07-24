SELECT country FROM w3schools.customers
UNION
SELECT country FROM w3schools.suppliers
ORDER BY country ASC
LIMIT 5;
