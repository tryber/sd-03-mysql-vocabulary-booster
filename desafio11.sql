select contactname as "Nome", counter2.country as "País", count -1 as "Número de compatriotas"
from customers
inner join 
(select * from (select country, count(*) count from customers
group by country having count(*) > 1) as counter) as counter2
on customers.country = counter2.country
order by contactname;
