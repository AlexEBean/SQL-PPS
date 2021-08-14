-- This is a prerequisite for p39, which is why I did p38 first, even though it wasn't listed

SELECT OrderID
	FROM OrderDetails
	WHERE Quantity >= 60
    GROUP BY OrderID, Quantity
	HAVING count(*) > 1
    ORDER BY OrderID;