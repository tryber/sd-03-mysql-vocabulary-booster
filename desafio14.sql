SELECT distinct Country FROM w3schools.customers
UNION
select distinct country from w3schools.suppliers
order by 1
limit 5;
