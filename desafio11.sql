select a.ContactName as 'Nome',
a.Country as 'País',
(select count(*) from customers where a.Country = Country and a.ContactName <> ContactName) as 'Número de compatriotas'
from w3schools.customers as a
order by a.ContactName;
