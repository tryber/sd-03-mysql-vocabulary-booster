select
*
from
(
select
c.ContactName AS `Nome`, c.Country AS `País`,
(select
count(cs.Country) - 1
from w3schools.customers cs
where
c.Country = cs.Country
group by
cs.Country) AS `Número de compatriotas`
from
w3schools.customers c) AS `contador`
where `Número de compatriotas` <> 0
order by `Nome`;
