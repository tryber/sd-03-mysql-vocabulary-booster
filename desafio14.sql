select country as "País" from((select country from customers
group by country)
union
(select country from suppliers
group by country)) as t
group by country
having count(*) = 1
order by country limit 5;
