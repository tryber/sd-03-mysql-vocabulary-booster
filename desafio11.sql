SELECT cust_um.ContactName Nome, cust_um.Country País, COUNT(cust_dois.Country) `Número de compatriotas`
FROM w3schools.customers cust_um, w3schools.customers cust_dois 
WHERE cust_um.Country = cust_dois.Country AND cust_um.CustomerID <> cust_dois.CustomerID
GROUP BY cust_um.ContactName, cust_um.Country
ORDER BY cust_um.ContactName;
