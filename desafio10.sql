SELECT *
FROM
( SELECT
  P.ProductName AS 'Produto',
  MIN(D.Quantity) AS 'Mínima',
  MAX(D.Quantity) AS 'Máxima',
  ROUND(AVG(D.Quantity),2) AS 'Média'
  FROM
  w3schools.products AS P, w3schools.order_details AS D
  WHERE
  P.ProductID = D.ProductID
  GROUP BY
  D.ProductID) AS filter1
WHERE
Média > 20.00
ORDER BY
Média ASC,
Produto ASC;
