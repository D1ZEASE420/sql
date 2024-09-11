SELECT 
YEAR(order_date) AS Aasta,
COUNT(*) AS Tellimuste_arv
FROM
d124543_bookstore.orders
WHERE
status = 'sent'
GROUP BY
YEAR(order_date)
ORDER BY
Aasta;