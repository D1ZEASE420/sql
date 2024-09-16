SELECT 
    language AS Keel,
    COUNT(*) AS RaamatuteHulk
FROM 
    d124543_bookstore.books
GROUP BY 
    language
ORDER BY 
    RaamatuteHulk DESC
LIMIT 3;