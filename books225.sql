SELECT
	title,
    ROUND(price, 2),
    type
FROM d124543_bookstore.books
WHERE
	type = "used" AND price > (SELECT AVG(price) FROM d124543_bookstore.books WHERE type = "new")