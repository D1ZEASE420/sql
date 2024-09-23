SELECT
title AS "raamatu_pealkiri",
price AS "hind"
FROM
d124543_bookstore.books
WHERE
price > (select avg(price) from d124543_bookstore.books)