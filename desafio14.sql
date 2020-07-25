(SELECT Country `País` FROM w3schools.customers
ORDER BY Country ASC)
UNION
(SELECT Country `País` FROM w3schools.suppliers
ORDER BY Country ASC)
ORDER BY `País` ASC LIMIT 5;
