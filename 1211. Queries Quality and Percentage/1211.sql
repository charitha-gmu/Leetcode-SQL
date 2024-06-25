-- Write your PostgreSQL query statement below
SELECT query_name,
       ROUND(SUM(rating::NUMERIC / position) / COUNT(result), 2) AS quality,
       ROUND(100.0 * COUNT(rating) FILTER ( WHERE rating < 3 ) / COUNT(rating), 2) AS  poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name