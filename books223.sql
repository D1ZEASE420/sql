SELECT ROUND(MAX(price), 2) AS kallim_hind
FROM d124543_bookstore.books
WHERE type = 'used';