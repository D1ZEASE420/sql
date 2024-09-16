SELECT 
    title,
    release_date
FROM 
    d124543_bookstore.books
WHERE 
    release_date % 2 = 0;