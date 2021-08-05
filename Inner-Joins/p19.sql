SELECT o.OrderID, o.OrderDate, s.CompanyName AS Supplier
	FROM Orders o
    JOIN Shippers s
    ON o.ShipVia = s.ShipperID
    ORDER BY OrderID;