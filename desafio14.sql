SELECT Country País FROM ((SELECT Country FROM w3schools.customers
GROUP BY Country)
UNION
(SELECT Country FROM w3schools.suppliers GROUP BY Country)) Country
ORDER BY País
LIMIT 5;
