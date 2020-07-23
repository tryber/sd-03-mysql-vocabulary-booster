select country_name as 'País' , (select if (region_id = (select region_id from regions
where region_name = 'Europe'), 'incluído', 'não incluído') ) as 'Status Inclusão'
from countries
order by country_name;
