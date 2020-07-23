SELECT customerName AS Nome,
    country AS País,
    COUNT(country) AS 'Número de compatriotas'
FROM w3schools.customers AS customers
GROUP BY customerName;
