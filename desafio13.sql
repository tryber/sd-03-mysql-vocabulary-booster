select productname as "Produto", price as "Preço"
from products
inner join (
select * from (select * from order_details
where quantity > 80) as t) as t2
on t2.productid = products.productid
order by products.productname;
