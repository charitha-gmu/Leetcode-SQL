-- Write your PostgreSQL query statement below
SELECT name, bonus 
FROM Employee e LEFT JOIN bonus b
ON e.empId = b.empId
WHERE bonus < 1000 OR bonus IS NULL