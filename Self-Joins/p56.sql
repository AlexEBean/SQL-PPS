SELECT o.CustomerID, o.OrderID AS InitialOrderID, DATE(o.orderDate) AS InitialOrderDate, od.OrderID AS NextOrderID, DATE(od.OrderDate) AS NextOrderDate, DATEDIFF(od.OrderDate, o.OrderDate) AS DaysBetweenOrders
	FROM  customers c
    JOIN orders o
		ON c.CustomerID = o.CustomerID
	JOIN orders od
		ON DATEDIFF(od.OrderDate, o.OrderDate) BETWEEN 1 AND 5 AND o.CustomerID = od.CustomerID
	ORDER BY c.CustomerID;