SELECT
	CASE
		WHEN type = "new" THEN "Uus"
		WHEN type = "used" THEN "Kasutatud"
		WHEN type = "ebook" THEN "eraamat"
		ELSE "MUU"
	END AS "Raamatu tüüp",
	ROUND(AVG(books.price), 2) AS "Keskmine hind",
	COUNT(books.stock_saldo) AS Kogus
FROM
	d124543_bookstore.books
GROUP BY
	books.type