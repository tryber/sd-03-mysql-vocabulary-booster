(
  SELECT Country AS 'País'
  FROM w3schools.customers
  ORDER BY 1
  LIMIT 5
)
UNION
(
  SELECT Country
  FROM w3schools.suppliers
  ORDER BY 1
  LIMIT 5
);
