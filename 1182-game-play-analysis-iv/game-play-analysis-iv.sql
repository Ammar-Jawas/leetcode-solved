# Write your MySQL query statement below
-- Write your PostgreSQL query statement below

 WITH cte AS
 (SELECT player_id, MIN(event_date) as first_login
 FROM Activity 
 GROUP BY player_id)

SELECT ROUND((SELECT COUNT(DISTINCT player_id)
 FROM Activity
 WHERE (player_id, event_date) IN 
(SELECT player_id, DATE_ADD(first_login, INTERVAL 1 DAY)
FROM cte))
/(SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction