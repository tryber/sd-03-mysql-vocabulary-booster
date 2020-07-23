select contact as "Nome de contato", shipper as "Empresa que fez o envio", orderdate as "Data do pedido" from (select *,
(select contactname from customers where customers.customerId = orders.customerId) as contact,
(select shippername from shippers where orders.shipperid = shippers.shipperid) as shipper
from orders
order by contact, shipper, orderdate asc) as t
where shipper = "Speedy Express" or shipper = "United Package";
