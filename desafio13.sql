SELECT 
    product.productName AS 'Produto', product.price AS 'Preço'
FROM
    w3schools.order_details AS a
        INNER JOIN
    w3schools.products AS product ON quantity > 80
WHERE
    product.productid = a.productID
ORDER BY product.productName;
