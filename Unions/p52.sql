SELECT DISTINCT Country
	FROM  customers
UNION
SELECT DISTINCT Country
	FROM suppliers
ORDER BY Country;