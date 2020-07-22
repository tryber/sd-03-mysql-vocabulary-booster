SELECT b.ContactName AS Nome, b.Country AS País,
(
SELECT COUNT(COUNTRY)-1 FROM w3schools.customers as a
where a.country = b.country
) as 'Número de Compatriotas'
FROM w3schools.customers as b
ORDER By Nome;
