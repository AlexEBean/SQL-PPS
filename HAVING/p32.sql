SELECT c.CustomerID, c.CompanyName, o.OrderID, SUM(od.unitPrice * od.Quantity) AS TotalOrderAmount
	FROM Customers c
    JOIN Orders o
    ON c.CustomerID = o.CustomerID
    JOIN OrderDetails od
    ON o.OrderID = od.OrderID
    WHERE OrderDate LIKE '2016%'
    GROUP BY o.OrderID
    HAVING (TotalOrderAmount >= 10000)
    ORDER BY TotalOrderAmount DESC;