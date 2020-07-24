select p.ProductName as 'Produto',
p.Price as 'Preço'
from w3schools.order_details as o
join w3schools.products as p
on o.ProductID = p.ProductID
where o.Quantity > 80
order by `Produto`
