SELECT customers1.ContactName AS Nome,
  customers1.Country AS País,
  COUNT(customers1.ContactName) AS `Número de compatriotas`
FROM w3schools.customers AS customers1,
  w3schools.customers AS customers2
WHERE customers1.Country = customers2.Country AND customers1.ContactName <> customers2.ContactName
GROUP BY customers1.ContactName, customers1.Country
ORDER BY customers1.ContactName ASC;
