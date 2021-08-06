SELECT EmployeeID, OrderID, OrderDate
	FROM orders
    WHERE OrderDate = LAST_DAY(SUBSTRING(OrderDate, 1, 10))
    ORDER BY EmployeeID;