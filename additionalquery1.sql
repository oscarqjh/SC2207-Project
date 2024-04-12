-- select the top3 mall_id with the highest number of complaints filed in the last month
select
    top 3
    C.mall_id,
    count(*) as totalcomplaint
from
    complaint C
WHERE
    C.filed_date_time >= CAST(DATEADD (MONTH, -1, Getdate()) AS DATE)
GROUP BY
    C.mall_id
ORDER BY
    totalcomplaint DESC

-- select the shop_id and the average amount spent in each shop
SELECT
    s.shop_id,
    AVG(sr.amount_spent) AS average_amount_spent
FROM
    shop s
    JOIN shop_record sr ON s.shop_id = sr.shop_id
GROUP BY 
    s.shop_id;
