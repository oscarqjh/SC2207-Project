USE TestDB
GO

-- Q8. Find shops that received the most complaints in Decemer 2023

SELECT TOP 1 WITH TIES 
    complaints_on_shop.shop_id, 
    COUNT(*) AS totalcomplaint
FROM complaints_on_shop
    INNER JOIN complaint ON complaint.complaint_id = complaints_on_shop.complaint_id
WHERE complaint.filed_date_time BETWEEN '2023-12-01' AND '2023-12-31'
GROUP BY complaints_on_shop.shop_id
ORDER BY totalcomplaint DESC;

GO