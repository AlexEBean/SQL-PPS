SELECT OrderID
	FROM orders
    ORDER BY RAND()
	LIMIT 10;