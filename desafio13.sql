SELECT 
    product.productName AS 'Nome',
    product.price AS 'Preço'
    FROM w3schools.order_details o
    INNER JOIN w3schools.products AS product
    ON quantity > 80 
WHERE product.productid = o.productID;
