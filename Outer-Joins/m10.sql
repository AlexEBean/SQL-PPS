SELECT p.ProductID, ProductName
	FROM product p
    LEFT JOIN ProductListPriceHistory plph
		ON p.ProductID = plph.ProductID
	WHERE plph.ProductID IS NULL;