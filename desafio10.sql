select (
select ProductName
from w3schools.products
where ProductID = od.ProductID
) as 'Produto',
min(od.Quantity) as 'Mínima',
max(od.Quantity) as 'Máxima',
round(avg(od.Quantity), 2) as 'Média'
from w3schools.order_details as od
group by `Produto`
having `Média` > 20.00
order by `Média`, `Produto`;
