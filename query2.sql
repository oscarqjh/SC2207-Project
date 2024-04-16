USE TestDB
GO

WITH FamilyPairs AS (
    SELECT user_account_id1, user_account_id2
    FROM user_relationship
    WHERE type = 'family'
),
ShoppingTogether AS (
    SELECT 
        fp.user_account_id1, 
        fp.user_account_id2, 
        sr.date_time_in
    FROM FamilyPairs fp
    JOIN shop_record sr ON fp.user_account_id1 = sr.user_account_id
    JOIN shop_record sr2 ON fp.user_account_id2 = sr2.user_account_id AND sr.date_time_in = sr2.date_time_in AND sr.shop_id = sr2.shop_id
),
DiningTogether AS (
    SELECT 
        fp.user_account_id1, 
        fp.user_account_id2, 
        dr.date_time_in
    FROM FamilyPairs fp
    JOIN dine_record dr ON fp.user_account_id1 = dr.user_account_id
    JOIN dine_record dr2 ON fp.user_account_id2 = dr2.user_account_id AND dr.date_time_in = dr2.date_time_in AND dr.restaurant_outlet_id = dr2.restaurant_outlet_id
),
TogetherActivity AS (
    SELECT user_account_id1, user_account_id2, date_time_in
    FROM ShoppingTogether
    UNION
    SELECT user_account_id1, user_account_id2, date_time_in
    FROM DiningTogether
),
IndividualActivity AS (
    SELECT user_account_id, date_time_in
    FROM shop_record
    UNION
    SELECT user_account_id, date_time_in
    FROM dine_record
),
IndividualActivityCount AS (
    SELECT
        user_account_id,
        COUNT(date_time_in) AS num_times
    FROM IndividualActivity
    GROUP BY user_account_id
),
FamilyTogether AS (
    SELECT
        user_account_id1,
        user_account_id2,
        COUNT(date_time_in) AS num_times
    FROM TogetherActivity
    GROUP BY user_account_id1, user_account_id2
),
FamilyRecord AS (
    SELECT
        ft.user_account_id1,
        ft.user_account_id2,
        ft.num_times AS family_times,
        iac.num_times AS user1_times,
        iac2.num_times AS user2_times,
        ft.num_times / iac.num_times AS user1_ratio,
        ft.num_times / iac2.num_times AS user2_ratio,
        ft.num_times / (iac.num_times + iac2.num_times - ft.num_times) AS family_ratio
    FROM FamilyTogether ft
    JOIN IndividualActivityCount iac ON ft.user_account_id1 = iac.user_account_id
    JOIN IndividualActivityCount iac2 ON ft.user_account_id2 = iac2.user_account_id
)
SELECT * from DiningTogether;
