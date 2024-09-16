SELECT 
    clients.username AS Klient, 
    YEAR(orders.order_date) AS Aasta,
    COUNT(orders.id) AS "Tellimuste arv",
    ROUND(SUM(books.price), 2) AS "Müükide summa"
FROM 
    d124543_bookstore.orders 
LEFT JOIN 
    d124543_bookstore.books  
    ON orders.book_id = books.id
LEFT JOIN
    d124543_bookstore.clients
    ON orders.client_id = clients.id
WHERE
    YEAR(orders.order_date) = 2017
GROUP BY 
    clients.username, YEAR(orders.order_date)