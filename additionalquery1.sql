-- select the top3 mall_id with the highest number of complaints filed in the last month
select top 3
    res.mall_id,
    count(*) as totalcomplaint
from
    (                        (
                select --- id and # complaint of the highest & lowest 3 shops
            top 3
            C1.shop_id,
            count(*) as totalcomplaint
        from
            complaints_on_shop C1
        WHERE
    C1.filed_date_time >= CAST(DATEADD (MONTH, -1, Getdate()) AS DATE)
        GROUP BY
    C1.shop_id
        ORDER BY
    totalcomplaint DESC
        )
    Union
        (select
            top 3
            C2.shop_id,
            count(*) as totalcomplaint
        from
            complaints_on_shop C2
        WHERE
    C2.filed_date_time >= CAST(DATEADD (MONTH, -1, Getdate()) AS DATE)
        GROUP BY
    C2.mall_id
        ORDER BY
    totalcomplaint)) as combined INNER JOIN shop_record ON shop.shop_id = shop_record.shop_id



-- select the shop_id and the average amount spent in each shop
SELECT
    s.shop_id,
    AVG(sr.amount_spent) AS average_amount_spent
FROM
    shop s
    JOIN shop_record sr ON s.shop_id = sr.shop_id
GROUP BY 
    s.shop_id;
