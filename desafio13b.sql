select name as "Produto", price as "Preço" from (select *,
(select productname from products where products.productid = order_details.productid) as name,
(select price from products where products.productid = order_details.productid) as price
from order_details
where quantity > 80
order by name) as t;
