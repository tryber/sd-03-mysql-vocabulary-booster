select Country from w3schools.customers
union
select Country from w3schools.suppliers
order by Country
limit 5;
