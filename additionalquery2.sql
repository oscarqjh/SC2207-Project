USE TestDB
GO

WITH FriendPairs AS (
    SELECT user_account_id1, user_account_id2
    FROM user_relationship
    WHERE type = 'friend'
),
DiningTogether AS (
    SELECT
        fp.user_account_id1,
        fp.user_account_id2,
        sr.restaurant_outlet_id,
        sr.date_time_in
    FROM FriendPairs fp
    JOIN dine_record sr ON fp.user_account_id1 = sr.user_account_id AND sr.date_time_in >= '2023-12-01' AND sr.date_time_in < '2024-01-01'
    JOIN dine_record sr2 ON fp.user_account_id2 = sr2.user_account_id AND sr.date_time_in = sr2.date_time_in AND sr.restaurant_outlet_id = sr2.restaurant_outlet_id
),
DiningTogetherCount AS (
    SELECT
        restaurant_outlet_id,
        COUNT(*) AS count
    FROM DiningTogether
    GROUP BY restaurant_outlet_id
)
SELECT TOP 3
    *
FROM DiningTogetherCount
ORDER BY count DESC, restaurant_outlet_id;
