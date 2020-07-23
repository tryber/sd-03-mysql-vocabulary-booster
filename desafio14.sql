-- 14. Sabemos que tanto as pessoas consumidoras quanto as empresas fornecedoras de produtos possuem países cadastrados. Logo, considerando o conjunto formado por essas pessoas e empresas, queremos saber quais são os cinco primeiros países distintos, em ordem alfabética, presentes nesse conjunto. Usando o banco w3schools como referência, monte uma query que exiba uma coluna, com o alias "País", que deve mostrar o nome do país.
(SELECT DISTINCT Country FROM customers)
UNION
(SELECT DISTINCT Country FROM suppliers)
ORDER BY Country
LIMIT 5;
