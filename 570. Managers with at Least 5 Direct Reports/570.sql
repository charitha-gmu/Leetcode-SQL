SELECT name
FROM Employee E
JOIN
(
    SELECT managerId, COUNT(managerId) AS no_of_reports
    FROM Employee 
    GROUP BY managerId
    HAVING COUNT(managerId) >= 5
) AS R
ON E.id = R.managerId