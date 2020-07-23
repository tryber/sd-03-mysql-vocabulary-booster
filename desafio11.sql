SELECT customerName AS Nome,
    country AS País,
    (SELECT COUNT(country) FROM w3school.customers
     WHERE country = customers.country) AS 'Número de compatriotas'
FROM w3school.customers AS customers;
