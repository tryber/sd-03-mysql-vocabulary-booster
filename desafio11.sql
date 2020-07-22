SELECT b.CustomerID, b.CustomerName AS Nome, b.Country AS País,
	(
    SELECT COUNT(COUNTRY)-1 FROM w3schools.Customers as a
    where a.country = b.country
    ) as 'Número de Compatriotas'
FROM w3schools.Customers as b
ORDER By Nome;
