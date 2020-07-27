SELECT Country AS País FROM
	(SELECT Country FROM w3schools.suppliers
	GROUP BY Country
	UNION
	SELECT Country FROM w3schools.customers
	GROUP BY Country
	ORDER BY Country) AS tabl
ORDER BY País
LIMIT 5;
