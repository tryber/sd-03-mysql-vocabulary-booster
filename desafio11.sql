SELECT b.ContactName AS Nome, b.Country AS País,
(
SELECT COUNT(COUNTRY)-1 FROM w3schools.customers as a
where a.country = b.country
) as 'Número de compatriotas'
FROM w3schools.customers as b
ORDER By 1;
