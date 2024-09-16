SELECT 
    YEAR(orders.order_date) AS Aasta,
    COUNT(orders.id) AS "Tellimuste arv",
    ROUND(SUM(books.price), 2) AS "Müükide summa"
FROM 
    d124543_bookstore.orders 
LEFT JOIN 
    d124543_bookstore.books  
    ON orders.book_id = books.id
WHERE
	year(orders.order_date) = 2017
GROUP BY 
    Aasta