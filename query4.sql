use TestDB

-- Q4. Compulsive shoppers are those who have visited a certain mall more than 5 times within a certain
-- period of time. Find the youngest compulsive shoppers and the amount they spent in total during
-- December 2023.

-- Old query
/*
SELECT TOP 3 X.user_account_id, X.total_spent, user_account.dob
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
*/

-- Show all shopping records and the malls visited in Dec 2023
SELECT X.user_account_id, SUM(X.amount_spent) AS total_spent, shop.mall_id, COUNT(*) AS times_visited
FROM shop INNER JOIN (
  SELECT user_account_id, amount_spent, shop_id
  FROM shop_record
  WHERE shop_record.date_time_in BETWEEN '2023-12-01' AND '2023-12-31'
) AS X
ON shop.shop_id = X.shop_id
GROUP BY X.user_account_id, shop.mall_id
ORDER BY X.user_account_id, shop.mall_id;

GO
-- Find all compulsive shoppers in Dec 2023
SELECT Y.user_account_id, SUM(Y.total_spent) AS total_spent, user_account.dob
FROM user_account INNER JOIN (
  SELECT X.user_account_id, SUM(X.amount_spent) AS total_spent, shop.mall_id
  FROM shop INNER JOIN (
    SELECT user_account_id, amount_spent, shop_id
    FROM shop_record
    WHERE shop_record.date_time_in BETWEEN '2023-12-01' AND '2023-12-31'
  ) AS X
  ON shop.shop_id = X.shop_id
  GROUP BY X.user_account_id, shop.mall_id
  HAVING COUNT(*) > 5
) AS Y
ON user_account.user_account_id = Y.user_account_id
GROUP BY Y.user_account_id, user_account.dob
ORDER BY user_account.dob DESC;

GO
