SELECT cust_um.*, COUNT(cust_dois.City) FROM w3schools.customers cust_um
INNER JOIN w3schools.customers cust_dois on cust_um.City = cust_dois.City
GROUP BY cust_dois.Country
HAVING COUNT(cust_dois.City)>1;
-- WHERE (SELECT CustomerName FROM w3schools.customers cust_dois WHERE cust_um.City = cust_dois.City);
