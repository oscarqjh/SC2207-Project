USE TestDB
GO

-- Q3. What are the most popular recommendations from the app regarding malls?
SELECT recommendation_id, mall_id
FROM recommendation
WHERE mall_id = (SELECT most_popular_mall.mall_id
                FROM (SELECT TOP 1
                        recommendation.mall_id, COUNT(recommendation.recommendation_id) AS total_recommendations
                      FROM recommendation
                      INNER JOIN user_use_recommendation 
                      ON recommendation.recommendation_id = user_use_recommendation.recommendation_id
                      GROUP BY recommendation.mall_id
                      ORDER BY total_recommendations DESC) AS most_popular_mall);

GO
