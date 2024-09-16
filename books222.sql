SELECT
    ROUND(MIN(price), 2) AS odavaim,
    ROUND(MAX(price), 2) AS kallim,
    ROUND(AVG(price), 2) AS keskmine
FROM d124543_bookstore.books;
