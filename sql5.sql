SELECT 
    YEAR(o.order_date) AS Aasta,
    COUNT(o.id) AS "Tellimuste arv",
    ROUND(COALESCE(SUM(b.price), 0), 2) AS "Müükide summa"
FROM 
    d124543_bookstore.orders o
LEFT JOIN 
    d124543	_bookstore.books b 
    ON o.book_id = b.id
GROUP BY 
    YEAR(o.order_date)
ORDER BY 
    Aasta