select nome as "Produto", min as "Mínima", max as "Máxima" , media as "Média" from (select productid, round(avg(quantity),2) as media, min(quantity) as min, max(quantity) as max,
(select productname from products where products.productid = tabelamedias.productid) as nome
from order_details as tabelamedias
group by productid
having media > 20
order by media, nome)as t;
