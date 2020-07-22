SELECT distinct Country AS País FROM w3schools.customers
UNION
select distinct country AS País from w3schools.suppliers
order by 1
limit 5;
