SELECT name 
FROM Customer
-- WHERE referee_id != 2 OR referee_id IS null
WHERE COALESCE(referee_id, 0) <> 2