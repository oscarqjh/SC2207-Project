USE TestDB
GO

-- Q6. What are the top 3 highest earning malls and restaurants?

-- What are the top 3 highest earning restaurants?
SELECT TOP 3
  restaurant_outlet_id,
  SUM(amount_spent) AS total_spent
FROM dine_record
GROUP BY restaurant_outlet_id
ORDER BY total_spent DESC;
GO

-- What are the top 3 highest earning malls?

SELECT TOP 3
  combined.mall_id,
  SUM(combined.total_spent) AS total_spent
FROM
  -- Join shop and shop_record tables to get the total amount spent in each shop
  (SELECT mall_id, SUM(amount_spent) AS total_spent
  FROM shop 
      INNER JOIN shop_record ON shop.shop_id = shop_record.shop_id
  GROUP BY mall_id
  UNION ALL -- Union the results of the two queries below to get the total amount spent in each mall
  -- Join restaurant_outlet and dine_record tables to get the total amount spent in each restaurant
  SELECT mall_id, SUM(amount_spent) AS total_spent
  FROM restaurant_outlet 
      INNER JOIN dine_record ON restaurant_outlet.restaurant_outlet_id = dine_record.restaurant_outlet_id
  GROUP BY mall_id) AS combined
GROUP BY combined.mall_id
ORDER BY total_spent DESC;

GO

