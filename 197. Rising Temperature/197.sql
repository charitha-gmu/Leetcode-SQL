
SELECT w1.id
FROM Weather w1
INNER JOIN Weather w2 ON w1.recordDate = w2.recordDate + INTERVAL '1 DAY'
WHERE w1.temperature > w2.temperature;


SELECT w2.id FROM Weather AS w1, Weather AS w2
WHERE w2.recordDate - w1.recordDate = 1
AND w2.temperature > w1.temperature;