USE TestDB
GO

-- Q2: Find families who frequently shopped and dined together, with or without day packages. As part of your output, indicate whether these families use day packages or not. "frequently" means at least 50% of the time.


WITH FamilyPairs AS (
    SELECT user_account_id1, user_account_id2
    FROM user_relationship
    WHERE type = 'family'
),
ShoppingTogether AS (
    SELECT
        fp.user_account_id1,
        fp.user_account_id2,
        sr.date_time_in,
        COUNT(DISTINCT uudp.day_package_id) as num_day_packages
    FROM FamilyPairs fp
    JOIN shop_record sr ON fp.user_account_id1 = sr.user_account_id
    JOIN shop_record sr2 ON fp.user_account_id2 = sr2.user_account_id AND sr.date_time_in = sr2.date_time_in AND sr.shop_id = sr2.shop_id
    LEFT JOIN user_use_day_package uudp ON (fp.user_account_id1 = uudp.user_account_id OR fp.user_account_id2 = uudp.user_account_id) AND sr.date_time_in = uudp.date_time_in
    GROUP BY fp.user_account_id1, fp.user_account_id2, sr.date_time_in
),
DiningTogether AS (
    SELECT
        fp.user_account_id1,
        fp.user_account_id2,
        dr.date_time_in,
        COUNT(DISTINCT uudp.day_package_id) as num_day_packages
    FROM FamilyPairs fp
    JOIN dine_record dr ON fp.user_account_id1 = dr.user_account_id
    JOIN dine_record dr2 ON fp.user_account_id2 = dr2.user_account_id AND dr.date_time_in = dr2.date_time_in AND dr.restaurant_outlet_id = dr2.restaurant_outlet_id
    LEFT JOIN user_use_day_package uudp ON (fp.user_account_id1 = uudp.user_account_id OR fp.user_account_id2 = uudp.user_account_id) AND dr.date_time_in = uudp.date_time_in
    GROUP BY fp.user_account_id1, fp.user_account_id2, dr.date_time_in
),
TogetherActivity AS (
    SELECT
        user_account_id1,
        user_account_id2,
        date_time_in,
        SUM(num_day_packages) AS num_day_packages
    FROM (
        SELECT
            user_account_id1,
            user_account_id2,
            date_time_in,
            num_day_packages
        FROM ShoppingTogether
        UNION
        SELECT
            user_account_id1,
            user_account_id2,
            date_time_in,
            num_day_packages
        FROM DiningTogether
    ) AS CombinedActivities
    GROUP BY user_account_id1, user_account_id2, date_time_in
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
        SUM(num_day_packages) AS num_day_packages,
        COUNT(date_time_in) AS num_times
    FROM TogetherActivity
    GROUP BY user_account_id1, user_account_id2
),
FamilyRecord AS (
    SELECT
        ft.user_account_id1,
        ft.user_account_id2,
        ft.num_day_packages,
        ft.num_times AS family_times,
        iac.num_times AS user1_times,
        iac2.num_times AS user2_times,
        CAST(ft.num_times AS FLOAT) / iac.num_times * 100 AS user1_percentage,
        CAST(ft.num_times AS FLOAT) / iac2.num_times * 100 AS user2_percentage,
        CAST(ft.num_times AS FLOAT) / (iac.num_times + iac2.num_times - ft.num_times) * 100 AS family_percentage
    FROM FamilyTogether ft
    JOIN IndividualActivityCount iac ON ft.user_account_id1 = iac.user_account_id
    JOIN IndividualActivityCount iac2 ON ft.user_account_id2 = iac2.user_account_id
)
SELECT
    user_account_id1,
    user_account_id2,
    CASE
        WHEN num_day_packages > 0 THEN 'Yes'
        ELSE 'No'
    END AS use_day_package,
    family_percentage AS frequency
FROM FamilyRecord
WHERE family_percentage > 50;
