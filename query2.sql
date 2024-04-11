USE TestDB
GO

WITH FamilyPairs AS (
    SELECT user_account_id1, user_account_id2
    FROM user_relationship
    WHERE type = 'family'
),
FamilyActivities AS (
    SELECT 
        fp.user_account_id1, 
        fp.user_account_id2, 
        COUNT(DISTINCT sr.date_time_in) AS shop_count,
        COUNT(DISTINCT dr.date_time_in) AS dine_count,
        COUNT(DISTINCT dp.day_package_id) AS package_count,
        COUNT(*) OVER() AS total_activities
    FROM FamilyPairs fp
    LEFT JOIN shop_record sr ON fp.user_account_id1 = sr.user_account_id OR fp.user_account_id2 = sr.user_account_id
    LEFT JOIN dine_record dr ON fp.user_account_id1 = dr.user_account_id OR fp.user_account_id2 = dr.user_account_id
    LEFT JOIN day_package dp ON fp.user_account_id1 = dp.user_account_id OR fp.user_account_id2 = dp.user_account_id
    GROUP BY fp.user_account_id1, fp.user_account_id2
),
FrequentFamilyActivities AS (
    SELECT 
        user_account_id1, 
        user_account_id2, 
        shop_count, 
        dine_count, 
        package_count,
        CASE 
            WHEN package_count > 0 THEN 'Yes'
            ELSE 'No'
        END AS uses_day_package,
        (CAST(shop_count + dine_count AS FLOAT) / total_activities) * 100 AS activity_percentage
    FROM FamilyActivities
)
SELECT 
    user_account_id1, 
    user_account_id2, 
    uses_day_package
FROM FrequentFamilyActivities
WHERE activity_percentage >= 50;
