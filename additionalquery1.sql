USE TestDB
GO

-- select the shop_id and the average amount spent in each shop
SELECT
    s.shop_id,
    AVG(sr.amount_spent) AS average_amount_spent
FROM
    shop s
    JOIN shop_record sr ON s.shop_id = sr.shop_id
GROUP BY 
    s.shop_id;
GO

SELECT TOP 3
    shop_record.shop_id,
    COUNT(complaints_on_shop.shop_id) AS totalcomplaint,
    SUM(shop_record.amount_spent) AS total_spent
FROM shop_record
    INNER JOIN complaints_on_shop ON shop_record.shop_id = complaints_on_shop.shop_id
GROUP BY shop_record.shop_id
ORDER BY totalcomplaint DESC;

SELECT TOP 3
    shop_record.shop_id,
    COUNT(complaints_on_shop.shop_id) AS totalcomplaint,
    SUM(shop_record.amount_spent) AS total_spent
FROM shop_record
    INNER JOIN complaints_on_shop ON shop_record.shop_id = complaints_on_shop.shop_id
GROUP BY shop_record.shop_id
ORDER BY totalcomplaint ASC;