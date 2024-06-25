-- Write your PostgreSQL query statement below
SELECT * 
FROM Cinema C
WHERE C.description NOT LIKE '%boring%' AND C.id % 2 != 0
ORDER BY rating DESC