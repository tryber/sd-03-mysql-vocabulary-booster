SELECT customers.ContactName AS `Nome`,
customers.Country AS `País`,
COUNT(customers_B.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS customers,
w3schools.customers AS customers_B
WHERE customers.Country = customers_B.Country AND customers.CustomerID <> customers_B.CustomerID
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
