SELECT Country AS País FROM w3schools.customers GROUP BY País
UNION
SELECT Country AS País FROM w3schools.suppliers GROUP BY País
ORDER BY País
LIMIT 5
