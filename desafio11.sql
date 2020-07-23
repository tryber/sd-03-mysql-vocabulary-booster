SELECT customerName AS Nome,
 country AS País,
 (SELECT COUNT(country) AS 'Número de compatriotas'