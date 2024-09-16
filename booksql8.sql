SELECT 
    b.title,
    ROUND(SUM(b.price), 2) AS total_sales,
    COUNT(o.id) AS number_of_sales
FROM 
    d124543_bookstore.orders o
JOIN 
    d124543_bookstore.books b 
    ON o.book_id = b.id
WHERE 
    YEAR(o.order_date) = 2017
GROUP BY 
    b.title
ORDER BY 
    number_of_sales DESC
LIMIT 10;