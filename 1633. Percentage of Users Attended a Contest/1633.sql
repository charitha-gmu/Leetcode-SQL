SELECT R.contest_id,
    ROUND(COUNT(R.user_id)*100/(SELECT count(*) FROM Users)::decimal,2) AS percentage 
from Register R
JOIN Users U
ON R.user_id=U.user_id
GROUP BY
    R.contest_id
ORDER BY
    percentage DESC,
    R.contest_id
