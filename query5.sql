USE TestDB
GO

-- Q5. Find users who have dined in all the restaurants in some malls, but have never dined in any restaurants
-- in some other malls.

-- users who have dined in all the restaurants in some malls, A
select dr.user_account_id
from (dine_record as dr join restaurant_outlet as ro on dr.restaurant_outlet_id = ro.restaurant_outlet_id)
group by dr.user_account_id, ro.mall_id
having count(distinct ro.restaurant_outlet_id) = (select count(distinct restaurant_outlet_id)
from restaurant_outlet
where mall_id = ro.mall_id)

INTERSECT -- A n B gives the answer

-- users who have never dined in any restaurants in some other malls, B
select ua.user_account_id
from user_account as ua
where ua.user_account_id in 
    (select dr.user_account_id
    from dine_record as dr join restaurant_outlet as ro on dr.restaurant_outlet_id = ro.restaurant_outlet_id
    group by dr.user_account_id
    having count(distinct ro.mall_id) <> (select count(distinct mall_id)
    from mall))
GO





-- users who have dined in all the restaurants in some malls
    SELECT DISTINCT user_account_id
    FROM dine_record AS dr JOIN restaurant_outlet AS ro
        ON dr.restaurant_outlet_id = ro.restaurant_outlet_id
        JOIN mall AS m
        ON ro.mall_id = m.mall_id
    GROUP BY user_account_id, m.mall_id
    HAVING COUNT(DISTINCT dr.restaurant_outlet_id) = (SELECT COUNT(*)
    FROM restaurant_outlet
    WHERE mall_id = m.mall_id)
INTERSECT
    -- A n B gives the answer
    -- ALL users
    SELECT DISTINCT user_account_id
    FROM user_account
EXCEPT
    -- A\B is users who have never dined in any restaurant in some malls
    -- users who have dined in atleast 1 restaurant in all malls
    SELECT X.user_account_id
    FROM
        (SELECT DISTINCT user_account_id, m.mall_id
        FROM dine_record AS dr JOIN restaurant_outlet AS ro
            ON dr.restaurant_outlet_id = ro.restaurant_outlet_id
            JOIN mall AS m
            ON ro.mall_id = m.mall_id
        GROUP BY user_account_id, m.mall_id) AS X
    GROUP BY X.user_account_id
    HAVING COUNT(X.user_account_id) = (SELECT COUNT(*)
    FROM mall);

GO