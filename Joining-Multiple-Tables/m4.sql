SELECT d.ProductID, ProductName, DATE(MIN(OrderDate)) AS FirstOrder, DATE(MAX(OrderDate)) AS LastOrder
	FROM SalesOrderDetail d
    JOIN SalesOrderHeader h
		ON d.SalesOrderID = h.SalesOrderID
	JOIN product p
		ON d.ProductID = p.ProductID
	GROUP BY ProductID
    ORDER BY ProductID;