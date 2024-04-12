use TestDB
GO

-- Q4. Compulsive shoppers are those who have visited a certain mall more than 5 times within a certain
-- period of time. Find the youngest compulsive shoppers and the amount they spent in total during
-- December 2023.

GO
SELECT X.user_account_id, X.total_spent, user_account.dob -- Show all compulsive shopppers in Dec 2023
FROM user_account INNER JOIN
(SELECT visits.user_account_id, SUM(visits.amount_spent) AS total_spent
  FROM  (SELECT user_account_id, amount_spent
        FROM shop_record
        WHERE shop_record.date_time_in BETWEEN '2023-12-01' AND '2023-12-31'
        ) AS visits
  GROUP BY visits.user_account_id
  HAVING COUNT(*) > 5) AS X
ON user_account.user_account_id = X.user_account_id;

GO
SELECT TOP 3 X.user_account_id, X.total_spent, user_account.dob -- Show youngest 3 compulsive shoppers in Dec 2023
FROM user_account INNER JOIN
(SELECT visits.user_account_id, SUM(visits.amount_spent) AS total_spent
  FROM  (SELECT user_account_id, amount_spent
        FROM shop_record
        WHERE shop_record.date_time_in BETWEEN '2023-12-01' AND '2023-12-31'
        ) AS visits
  GROUP BY visits.user_account_id
  HAVING COUNT(*) > 5) AS X
ON user_account.user_account_id = X.user_account_id
ORDER BY user_account.dob DESC;

GO
