  SELECT customersa.ContactName, customersa.Country, COUNT(customersa.CustomerName) FROM w3schools.customers AS customersa,
  w3schools.customers AS customersb
  WHERE customersa.Country = customersb.Country AND customersa.CustomerName <> customersb.CustomerName
  GROUP BY customersa.Country,customersa.ContactName
  ORDER BY 1;
  