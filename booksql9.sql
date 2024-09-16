SELECT
    title,
    ROUND(price, 2) AS price
FROM d124543_bookstore.books
WHERE price > (SELECT AVG(price) FROM d124543_bookstore.books);