-- SELECT s.machine_id, round(avg(e.timestamp - s.timestamp)::NUMERIC, 3) AS processing_time
-- FROM activity s, activity e
-- WHERE s.machine_id = e.machine_id
-- AND   s.process_id = e.process_id
-- AND   s.activity_type = 'start'
-- AND   e.activity_type = 'end'
-- GROUP BY s.machine_id;


SELECT s.machine_id, round(avg(e.timestamp - s.timestamp)::NUMERIC, 3) AS processing_time
FROM activity s JOIN activity e
ON s.machine_id = e.machine_id
AND   s.process_id = e.process_id
AND   s.activity_type = 'start'
AND   e.activity_type = 'end'
GROUP BY s.machine_id;