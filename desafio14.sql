SELECT country AS `País` 
FROM (
	SELECT country FROM w3schools.suppliers
	UNION
	SELECT country FROM w3schools.customers
) AS c
ORDER BY `País`
LIMIT 5;