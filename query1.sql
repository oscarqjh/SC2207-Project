USE TestDB
GO

-- Q1. What is the most popular day packages where all participants are related to one another as either family members or members of the same club?
SELECT TOP 1 dp.description, COUNT(*) AS popularity
FROM day_package dp
WHERE EXISTS (
    SELECT 1
    FROM day_package dp1
    JOIN day_package dp2 ON dp1.description = dp2.description AND dp1.day_package_id <> dp2.day_package_id
    JOIN user_relationship ur ON (ur.user_account_id1 = dp1.user_account_id AND ur.user_account_id2 = dp2.user_account_id)
    WHERE dp1.description = dp.description AND ur.type IN ('family', 'same club')
    GROUP BY dp1.description
)
GROUP BY dp.description
ORDER BY popularity DESC;
